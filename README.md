# GAC_com.yftech.service.upgrade.apk

Full Java-readable decompilation of **`com.yftech.service.upgrade.apk`**, the the OTA / firmware upgrade service — MCU, DSP, screen and screen-MCU flashing from the [yftech-apks](https://github.com/ammisaidkaidi/yftech-apks) collection.

> Source APK: [com.yftech.service.upgrade.apk](https://github.com/ammisaidkaidi/yftech-apks/blob/main/com.yftech.service.upgrade.apk)  
> SHA-256: `f49d00d9f12daaa27dc4ec53bc6c88edf1c1eea49e1502c97f4e371fd193d8c5`  
> Size: 4.7 MB  
> Decompiled with **jadx 1.5.0** (Java sources) + **apktool 3.0.3** (smali / resources)  
> Generated: 2026-10-18

---

## 1. What this app is, what it does, and what it is for

`com.yftech.service.upgrade` is the **firmware upgrade service** of the YF Tech (GAC) head-unit. It is the component that actually flashes the device: it holds the `android.permission.RECOVERY` permission (one of only two permissions in the whole manifest) and can therefore write the recovery/system partitions. It runs as `android.uid.system`, `persistent=true`, is started at boot by `CarBootReceiver` (`BOOT_COMPLETED`), and exports the binder action **`com.yftech.action.upgradeservice.start`** implementing `com.yftech.car.upgrade.ICarUpgradeService`. It upgrades **four independent modules** — the **MCU** (microcontroller), the **DSP** (audio processor), the **screen** (display controller) and the **screen-MCU** — each through its own adapter interface (`IMCUAdapter`, `IDspAdapter`, `IScreenAdapter`, `IScreenMcuAdapter`) with per-project implementations (`CarMcuAdapterDefault`, `CarDspAdapterDefault`, `CarScreenAdapterA58`, `CarScreenAdapterCar1105`, `CarScreenMcuAdapterA58`).

**Purpose / why it exists on the device:**

A head-unit is really several computers: an Android SoC, an MCU that talks to the car's CAN bus, an audio DSP, and one or more display controllers with their own MCUs. All of them need field updates — some over-the-air through the T-Box, some from a USB stick in the workshop, some pushed from the engineering-mode app. This APK is the single, privileged place where those flash sequences live, so that no other app needs `RECOVERY` or direct partition access. It reports progress and state back to whoever asked (Settings, engineering mode, OTA client) through `ICarUpgradeCallback` registered in a `RemoteCallbackList`, and it notifies the MCU over JNI when an upgrade starts and ends.

**How it works (runtime flow):**

1. `CarApplication.onCreate()` joins the YF Tech permission framework via `CarPermission.initAsync("UpgradeService", …)`.
2. `CarBootReceiver` catches `BOOT_COMPLETED` and starts `CarUpgradeService` (action `com.yftech.action.upgradeservice.start`).
3. `CarUpgradeService` keeps a `HashMap<Integer, b>` of per-module upgrade runners and an `ArrayList<a>` of pending requests, plus a `RemoteCallbackList<ICarUpgradeCallback>` for progress subscribers. Its `b.a` callback translates runner events into `CarUpgradeInfo.setState(i)` / `setProgress(i)` and broadcasts them per module.
4. Each module's work is delegated to an adapter chosen per vehicle project. `adapter/{mcu,dsp,screen,screenmcu}/project/` holds the concrete implementations (`CarMcuAdapterDefault`, `CarDspAdapterDefault`, `CarScreenAdapterA58`, `CarScreenAdapterCar1105`, `CarScreenMcuAdapterA58`) behind the four `I*Adapter` interfaces, each exposing `a(String[])` / `b(String[])` (the two flash phases — e.g. erase/write or prepare/commit) plus `onUpgradeStateChanged(int)` / `onUpgradeProgressChanged(int)`.
5. The MCU path goes through **JNI**: `jni/McuCommJni` declares `notifyMcuUpgradeStart()` and `notifyMcuUpgradeEnd()`, and the service loads the native library **`UpgradeService`** (`System.loadLibrary("UpgradeService")`, plus `initJni()`). That native side drives the MCU bootloader over the same serial/CAN link the AVM service uses.
6. `MainActivity` is the local UI that shows upgrade progress (theme `Theme.UpgradeService`), fed by `CarUpgradeManager` / `CarUpgradeInfo` from the vendor framework.
7. Files to flash are handed in as `String[]` paths; MD5 is used to verify image integrity before writing.

**Notable findings:**

- **This is the only APK in the collection that holds `android.permission.RECOVERY`** — i.e. the only one that can write the system/recovery partitions. Combined with `sharedUserId=android.uid.system` this is the most security-sensitive package here.
- Native dependency: **`libUpgradeService.so`** (JNI methods `initJni()`, `notifyMcuUpgradeStart()`, `notifyMcuUpgradeEnd()`), which drives the MCU bootloader directly.
- Depends on the vendor upgrade framework which is **absent from the APK**: `com.yftech.car.upgrade.CarUpgradeManager`, `CarUpgradeInfo`, `ICarUpgradeService`, `ICarUpgradeCallback`, `com.yftech.car.permission.CarPermission`.
- It **declares its own signature permission** `com.yftech.permission.service.upgrade.upgrade` — note that `com.yftech.engineeringmode` requests exactly this permission, so the factory app can trigger upgrades.
- Reflection targets are hidden framework internals: `android.app.ActivityThread`, `android.os.SystemProperties`, `android.app.Notification$Action`, `android.view.GhostView`, `android.content.res.ThemedResourceCache` (the rest come from the bundled AndroidX).
- The class tree is heavily obfuscated — the real logic is in single-letter classes (`com.yftech.service.upgrade.b`, `.c`, `.d`, `.e`, `.f`, `.g`), while only the adapter interfaces and project implementations keep readable names.
- 1072 Java files, but only ~45 classes are YF Tech code; the rest is AndroidX / Material Components (text fields, appcompat, recyclerview, fragment).
- Only 2 permissions total (`RECOVERY` + `RECEIVE_BOOT_COMPLETED`) — the app deliberately asks for as little as possible while doing the most dangerous thing.
- No network endpoints, no SQL. MD5 is used for image integrity.

## 2. APK metadata

| Property | Value |
|---|---|
| Package name | `com.yftech.service.upgrade` |
| Version name / code | `1.0` / `1` |
| minSdk / targetSdk / maxSdk | `26` / `29` / `None` |
| sharedUserId | `android.uid.system` |
| `<application>` attributes | `name=com.yftech.service.upgrade.CarApplication`, `label=@string/app_name`, `icon=@mipmap/ic_launcher`, `theme=@style/Theme.UpgradeService`, `allowBackup=true`, `persistent=true` |
| Java classes decompiled | **1072** files / 1072 top-level types |
| Smali files | **2753** |
| Total Java lines | ~249,388 |
| Total methods | ~50,606 |
| Permissions requested | **2** |
| Declared (custom) permissions | **1** |
| Activities / Services / Receivers / Providers | 1 / 1 / 1 / 0 |

## 3. Repository layout

```
.
├── README.md                  <- this file (full class/function catalogue + analysis)
├── sources/                   <- jadx: decompiled JAVA sources (.java)  **start here**
│   └── <package path>/<Class>.java
├── resources/                 <- jadx: decoded manifest + resources + assets
│   ├── AndroidManifest.xml
│   ├── res/                   <- layouts, drawables, values (near-original form)
│   └── assets/                <- raw asset files (config .properties, etc.)
├── smali/                     <- apktool: disassembled Dalvik bytecode (.smali)
│   └── <package path>/<Class>.smali
├── smali_classes2..N/         <- apktool: extra dex files (when present)
├── original/                  <- apktool: files that could not be decoded (META-INF, …)
├── AndroidManifest.apktool.xml<- apktool copy of the manifest (raw attribute order)
└── apktool.yml                <- apktool build metadata
```

`sources/` is the Java-readable tree — this is what you want to read. `smali/` is the same code in Dalvik assembly (useful when jadx output is ambiguous).

## 4. Permissions

### Custom permissions declared by this app

| Permission | Protection level | Group |
|---|---|---|
| `com.yftech.permission.service.upgrade.upgrade` | `preinstalled|signature` | `com.yftech.permissions` |

### Requested permissions

| Permission |
|---|
| `android.permission.RECOVERY` |
| `android.permission.RECEIVE_BOOT_COMPLETED` |

## 5. Declared components

### Activities (1)

| Class | Exported | Enabled | Guarded by | Intent actions |
|---|---|---|---|---|
| `com.yftech.service.upgrade.MainActivity` | — | — | — | `android.intent.action.MAIN` |

### Services (1)

| Class | Exported | Enabled | Guarded by | Intent actions |
|---|---|---|---|---|
| `com.yftech.service.upgrade.CarUpgradeService` | true | — | — | `com.yftech.action.upgradeservice.start` |

### Broadcast receivers (1)

| Class | Exported | Enabled | Guarded by | Intent actions |
|---|---|---|---|---|
| `com.yftech.service.upgrade.receiver.CarBootReceiver` | — | — | — | `android.intent.action.BOOT_COMPLETED` |

### Content providers (0)

_none_

## 6. Package map

| Package | Classes | Methods | Lines |
|---|---:|---:|---:|
| `androidx.appcompat.widget` | 74 | 4834 | 21,751 |
| `androidx.recyclerview.widget` | 38 | 5129 | 20,710 |
| `androidx.d.b.b` | 27 | 2155 | 12,000 |
| `androidx.d.e` | 15 | 1452 | 10,800 |
| `androidx.fragment.app` | 25 | 2374 | 10,072 |
| `androidx.appcompat.app` | 18 | 1827 | 8,159 |
| `androidx.j` | 62 | 1582 | 8,127 |
| `androidx.core.app` | 30 | 1595 | 7,924 |
| `androidx.d.c.b` | 14 | 1364 | 7,083 |
| `androidx.core.n` | 41 | 1399 | 6,226 |
| `com.yftech.service.upgrade` | 7 | 259 | 5,838 |
| `androidx.appcompat.view.menu` | 23 | 1251 | 5,644 |
| `androidx.d.c.b.a` | 16 | 1075 | 4,576 |
| `com.google.android.material.textfield` | 11 | 1050 | 4,229 |
| `com.google.android.material.internal` | 31 | 877 | 4,050 |
| `com.google.android.material.chip` | 3 | 1130 | 3,699 |
| `com.google.android.material` | 1 | 17 | 3,623 |
| `androidx.k.b.a` | 9 | 686 | 3,558 |
| `androidx.core.widget` | 17 | 777 | 3,336 |
| `com.google.android.material.datepicker` | 27 | 574 | 3,312 |
| `androidx.d.c` | 10 | 679 | 3,144 |
| `com.google.android.material.floatingactionbutton` | 8 | 710 | 3,094 |
| `androidx.l.a` | 4 | 691 | 3,077 |
| `com.google.android.material.appbar` | 8 | 706 | 3,067 |
| `androidx.c` | 10 | 779 | 2,928 |
| `com.google.android.material.t` | 20 | 577 | 2,801 |
| `androidx.core.graphics` | 18 | 412 | 2,748 |
| `androidx.appcompat.b.a` | 5 | 546 | 2,677 |
| `androidx.core.n.a` | 8 | 637 | 2,650 |
| `com.google.android.material.x` | 3 | 609 | 2,421 |
| `com.google.android.material.u` | 7 | 462 | 2,293 |
| `com.google.android.material.z.a` | 23 | 409 | 2,292 |
| `androidx.coordinatorlayout.widget` | 3 | 542 | 2,266 |
| `androidx.versionedparcelable` | 11 | 586 | 2,075 |
| `androidx.core.graphics.drawable` | 11 | 452 | 2,037 |
| `com.google.android.material.z` | 22 | 368 | 2,036 |
| `androidx.viewpager2.a` | 8 | 432 | 1,910 |
| `androidx.lifecycle` | 30 | 380 | 1,818 |
| `androidx.appcompat` | 1 | 14 | 1,758 |
| `androidx.g.a` | 1 | 421 | 1,735 |
| `androidx.d.b.a` | 9 | 335 | 1,708 |
| `com.google.android.material.bottomsheet` | 3 | 389 | 1,687 |
| `androidx.f.b` | 3 | 458 | 1,686 |
| `com.google.android.material.c` | 6 | 377 | 1,647 |
| `com.google.android.material.snackbar` | 5 | 317 | 1,633 |
| `com.google.android.material.button` | 3 | 398 | 1,566 |
| `androidx.appcompat.view` | 9 | 264 | 1,402 |
| `androidx.core.l` | 7 | 282 | 1,392 |
| `androidx.core.b.b` | 8 | 251 | 1,283 |
| `androidx.d.c.a` | 5 | 226 | 1,250 |
| `androidx.b.a` | 8 | 244 | 1,073 |
| `androidx.core.i` | 16 | 227 | 1,029 |
| `androidx.i.b` | 4 | 209 | 973 |
| `androidx.core.b` | 8 | 193 | 954 |
| `androidx.d.d.a` | 4 | 188 | 940 |
| `com.google.android.material.e` | 2 | 196 | 925 |
| `com.google.android.material.bottomappbar` | 2 | 194 | 919 |
| `androidx.annotation` | 53 | 44 | 887 |
| `com.yftech.service.upgrade.g` | 4 | 149 | 869 |
| `com.google.android.material.transformation` | 7 | 166 | 868 |
| `com.google.android.material.g` | 7 | 160 | 857 |
| `androidx.core.j` | 3 | 131 | 797 |
| `androidx.activity` | 7 | 95 | 736 |
| `androidx.core.m` | 12 | 137 | 712 |
| `androidx.core.b.a` | 6 | 118 | 645 |
| `com.google.android.material.b` | 2 | 136 | 639 |
| `androidx.core.l.a` | 2 | 129 | 586 |
| `androidx.viewpager2.adapter` | 3 | 147 | 579 |
| `androidx.d.a.a` | 2 | 123 | 565 |
| `androidx.e.a` | 4 | 121 | 548 |
| `androidx.i.a` | 2 | 114 | 533 |
| `com.google.android.material.a` | 11 | 84 | 531 |
| `com.google.android.material.i` | 3 | 101 | 489 |
| `androidx.d.c.a.a` | 7 | 87 | 478 |
| `com.google.android.material.o` | 1 | 101 | 459 |
| `com.google.android.material.behavior` | 2 | 87 | 442 |
| `a.a` | 6 | 110 | 435 |
| `com.google.android.material.s` | 3 | 66 | 433 |
| `com.google.android.material.q` | 6 | 77 | 422 |
| `androidx.core.n.c` | 3 | 74 | 417 |
| `androidx.a.a.b` | 2 | 75 | 388 |
| `com.yftech.service.upgrade.adapter.screen.project` | 3 | 88 | 328 |
| `androidx.core.h` | 4 | 62 | 297 |
| `androidx.savedstate` | 5 | 52 | 285 |
| `androidx.viewpager2` | 1 | 11 | 284 |
| `com.google.android.material.y` | 1 | 68 | 283 |
| `androidx.recyclerview` | 1 | 11 | 282 |
| `androidx.coordinatorlayout` | 1 | 11 | 280 |
| `androidx.appcompat.c` | 1 | 11 | 277 |
| `com.google.android.material.r` | 2 | 38 | 255 |
| `androidx.k` | 1 | 11 | 252 |
| `androidx.k.a` | 1 | 11 | 252 |
| `androidx.fragment` | 1 | 11 | 252 |
| `androidx.core` | 1 | 11 | 252 |
| `android.support.v4.a` | 2 | 43 | 241 |
| `com.yftech.service.upgrade.adapter` | 7 | 53 | 239 |
| `com.yftech.service.upgrade.adapter.screenmcu.project` | 2 | 57 | 220 |
| `com.yftech.service.upgrade.adapter.mcu.project` | 1 | 54 | 214 |
| `androidx.g` | 1 | 11 | 212 |
| `androidx.i` | 1 | 11 | 212 |
| `androidx.f` | 1 | 11 | 212 |
| `androidx.l` | 1 | 11 | 212 |
| `com.yftech.service.upgrade.adapter.dsp.project` | 1 | 54 | 207 |
| `android.support.v4.app` | 2 | 36 | 201 |
| `androidx.core.d.b` | 1 | 42 | 197 |
| `com.google.android.material.m` | 1 | 38 | 190 |
| `com.yftech.service.upgrade.adapter.a.b` | 1 | 41 | 173 |
| `androidx.a.a.a` | 3 | 27 | 163 |
| `androidx.appcompat.a.a` | 1 | 20 | 128 |
| `androidx.core.e.a` | 3 | 26 | 116 |
| `androidx.core.a` | 1 | 20 | 116 |
| `androidx.core.n.b` | 2 | 27 | 115 |
| `com.google.android.material.w` | 1 | 23 | 107 |
| `com.google.android.material.g.b` | 1 | 18 | 98 |
| `com.google.android.material.g.a` | 1 | 18 | 97 |
| `com.google.android.material.k` | 1 | 20 | 95 |
| `com.google.android.material.l` | 3 | 17 | 92 |
| `com.google.android.material.textview` | 1 | 22 | 87 |
| `androidx.h.a.a` | 4 | 10 | 84 |
| `androidx.b` | 1 | 6 | 83 |
| `com.yftech.service.upgrade.d` | 1 | 12 | 83 |
| `com.yftech.service.upgrade.c` | 1 | 12 | 83 |
| `com.yftech.service.upgrade.b` | 1 | 12 | 83 |
| `com.google.android.material.p` | 1 | 15 | 81 |
| `com.yftech.service.upgrade.e` | 1 | 12 | 81 |
| `com.yftech.service.upgrade.f` | 1 | 12 | 81 |
| `com.google.android.material.f` | 1 | 15 | 80 |
| `com.yftech.service.upgrade.a` | 1 | 16 | 80 |
| `com.google.android.material.v` | 1 | 13 | 78 |
| `com.google.android.material.j` | 1 | 13 | 76 |
| `androidx.f.a` | 1 | 16 | 75 |
| `com.google.android.material.h` | 1 | 14 | 74 |
| `androidx.core.d.a` | 1 | 15 | 68 |
| `com.yftech.service.upgrade.adapter.screen.a` | 2 | 9 | 58 |
| `com.yftech.service.upgrade.adapter.screenmcu.a` | 2 | 9 | 58 |
| `androidx.core.c` | 2 | 13 | 57 |
| `com.google.android.material.theme.a` | 1 | 6 | 56 |
| `com.google.android.material.theme` | 1 | 8 | 49 |
| `com.google.android.material.n` | 1 | 14 | 49 |
| `androidx.core.k.a` | 1 | 6 | 45 |
| `androidx.annotation.a` | 3 | 2 | 44 |
| `com.yftech.service.upgrade.adapter.a.a` | 1 | 6 | 35 |
| `com.yftech.service.upgrade.adapter.mcu.a` | 1 | 6 | 35 |
| `com.yftech.service.upgrade.adapter.dsp.a` | 1 | 6 | 35 |
| `androidx.appcompat.d` | 1 | 4 | 33 |
| `com.google.android.material.d` | 1 | 5 | 30 |
| `androidx.core.g` | 1 | 5 | 24 |
| `com.yftech.service.upgrade.receiver` | 1 | 2 | 22 |
| `androidx.core.f` | 1 | 3 | 19 |
| `android.support.v4.graphics.drawable` | 1 | 2 | 18 |
| `androidx.core.c.a` | 1 | 3 | 18 |
| `com.yftech.service.upgrade.jni` | 1 | 2 | 9 |
| `androidx.e` | 1 | 1 | 8 |
| `androidx.h` | 1 | 1 | 8 |
| `androidx.a.a` | 1 | 1 | 8 |
| `androidx.lifecycle.a` | 1 | 1 | 8 |
| `androidx.lifecycle.a.a` | 1 | 1 | 8 |
| `androidx.lifecycle.b` | 1 | 1 | 8 |
| `androidx.a.a.c` | 1 | 1 | 7 |
| **TOTAL** | **1072** | **50,606** | **249,388** |

## 7. Class and function catalogue

Every decompiled class with its declared functions. Methods are listed by name; see the `.java` files under `sources/` for full signatures and bodies.

### Package `com.yftech.service.upgrade`  (7 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `CarApplication` | class | Application | 26 | 3 |
| `CarUpgradeService` | class | Service | 821 | 158 |
| `MainActivity` | class | e implements View.OnClickListener, CompoundButton.OnCheckedChangeListener | 411 | 91 |
| `a` | class | — | 14 | 0 |
| `b` | class | — | 28 | 7 |
| `c` | class | — | 13 | 0 |
| `d` | class | — | 4,525 | 0 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade</code></b> (click to expand)</summary>

- **`CarApplication`** — 3 function(s): `onCreate()`, `run()`, `onTerminate()`
- **`CarUpgradeService`** — 27 function(s): `a()`, `if()`, `for()`, `b()`, `initJni()`, `onBind()`, `onCreate()`, `while()`, `onDestroy()`, `synchronized()`, `Thread()`, `c()`, `d()`, `run()`, `onUpgradeState()`, `switch()`, `registerListener()`, `SecurityException()`, `unregisterListener()`, `checkUpgradeFile()`, `addUpgradeModule()`, `removeUpgradeModule()`, `startUpgrade()`, `getCurUpgradeingInfo()`, `getHasAddUpgradeModule()`, `getVersion()`, `dump()`
- **`MainActivity`** — 20 function(s): `onCreate()`, `setContentView()`, `s()`, `t()`, `u()`, `d()`, `v()`, `if()`, `while()`, `switch()`, `a()`, `g()`, `f()`, `h()`, `i()`, `b()`, `onClick()`, `onCheckedChanged()`, `onUpgradeProgress()`, `onUpgradeState()`
- **`b`** — 2 function(s): `a()`, `b()`

</details>

### Package `com.yftech.service.upgrade.a`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 80 | 16 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade.a</code></b> (click to expand)</summary>

- **`a`** — 6 function(s): `a()`, `if()`, `synchronized()`, `while()`, `b()`, `c()`

</details>

### Package `com.yftech.service.upgrade.adapter`  (7 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `IDspAdapter` | class | b | 23 | 7 |
| `IMCUAdapter` | class | b | 23 | 7 |
| `IScreenAdapter` | class | b | 23 | 7 |
| `IScreenMcuAdapter` | class | b | 23 | 7 |
| `a` | class | — | 113 | 15 |
| `b` | class | — | 11 | 3 |
| `c` | class | b | 23 | 7 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade.adapter</code></b> (click to expand)</summary>

- **`IDspAdapter`** — 4 function(s): `a()`, `b()`, `onUpgradeProgressChanged()`, `onUpgradeStateChanged()`
- **`IMCUAdapter`** — 4 function(s): `a()`, `b()`, `onUpgradeProgressChanged()`, `onUpgradeStateChanged()`
- **`IScreenAdapter`** — 4 function(s): `a()`, `b()`, `onUpgradeProgressChanged()`, `onUpgradeStateChanged()`
- **`IScreenMcuAdapter`** — 4 function(s): `a()`, `b()`, `onUpgradeProgressChanged()`, `onUpgradeStateChanged()`
- **`a`** — 8 function(s): `a()`, `switch()`, `if()`, `synchronized()`, `b()`, `c()`, `d()`, `e()`
- **`b`** — 3 function(s): `a()`, `b()`, `c()`
- **`c`** — 3 function(s): `a()`, `b()`, `a_()`

</details>

### Package `com.yftech.service.upgrade.adapter.a.a`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | c | 35 | 6 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade.adapter.a.a</code></b> (click to expand)</summary>

- **`a`** — 5 function(s): `c()`, `a()`, `a_()`, `if()`, `b()`

</details>

### Package `com.yftech.service.upgrade.adapter.a.b`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | com.yftech.service.upgrade.adapter.a.a.a implements a.InterfaceC0100a | 173 | 41 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade.adapter.a.b</code></b> (click to expand)</summary>

- **`a`** — 7 function(s): `a()`, `b()`, `c()`, `a_()`, `if()`, `onProgress()`, `for()`

</details>

### Package `com.yftech.service.upgrade.adapter.dsp.a`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | IDspAdapter | 35 | 6 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade.adapter.dsp.a</code></b> (click to expand)</summary>

- **`a`** — 5 function(s): `c()`, `a()`, `onUpgradeStateChanged()`, `if()`, `onUpgradeProgressChanged()`

</details>

### Package `com.yftech.service.upgrade.adapter.dsp.project`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `CarDspAdapterDefault` | class | a implements a.InterfaceC0100a | 207 | 54 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade.adapter.dsp.project</code></b> (click to expand)</summary>

- **`CarDspAdapterDefault`** — 10 function(s): `a()`, `b()`, `nativeStartUpgrade()`, `c()`, `onUpgradeStateChanged()`, `if()`, `onUpgradeProgressChanged()`, `while()`, `synchronized()`, `for()`

</details>

### Package `com.yftech.service.upgrade.adapter.mcu.a`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | IMCUAdapter | 35 | 6 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade.adapter.mcu.a</code></b> (click to expand)</summary>

- **`a`** — 5 function(s): `c()`, `a()`, `onUpgradeStateChanged()`, `if()`, `onUpgradeProgressChanged()`

</details>

### Package `com.yftech.service.upgrade.adapter.mcu.project`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `CarMcuAdapterDefault` | class | a implements a.InterfaceC0100a | 214 | 54 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade.adapter.mcu.project</code></b> (click to expand)</summary>

- **`CarMcuAdapterDefault`** — 10 function(s): `a()`, `b()`, `nativeStartUpgrade()`, `c()`, `onUpgradeStateChanged()`, `if()`, `onUpgradeProgressChanged()`, `while()`, `synchronized()`, `for()`

</details>

### Package `com.yftech.service.upgrade.adapter.screen.a`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | IScreenAdapter | 35 | 6 |
| `b` | class | a | 23 | 3 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade.adapter.screen.a</code></b> (click to expand)</summary>

- **`a`** — 5 function(s): `c()`, `a()`, `onUpgradeStateChanged()`, `if()`, `onUpgradeProgressChanged()`
- **`b`** — 3 function(s): `a()`, `c()`, `if()`

</details>

### Package `com.yftech.service.upgrade.adapter.screen.project`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `CarScreenAdapterA58` | class | b implements a.InterfaceC0100a | 176 | 49 |
| `CarScreenAdapterCar1105` | class | b implements a.InterfaceC0100a | 108 | 31 |
| `a` | class | IScreenAdapter | 44 | 8 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade.adapter.screen.project</code></b> (click to expand)</summary>

- **`CarScreenAdapterA58`** — 10 function(s): `nativeStartUpgrade()`, `b()`, `a()`, `c()`, `onUpgradeStateChanged()`, `if()`, `onUpgradeProgressChanged()`, `while()`, `synchronized()`, `for()`
- **`CarScreenAdapterCar1105`** — 8 function(s): `nativeStartUpgrade()`, `b()`, `a()`, `for()`, `if()`, `onUpgradeStateChanged()`, `onUpgradeProgressChanged()`, `c()`
- **`a`** — 5 function(s): `a()`, `b()`, `onUpgradeProgressChanged()`, `onUpgradeStateChanged()`, `c()`

</details>

### Package `com.yftech.service.upgrade.adapter.screenmcu.a`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | IScreenMcuAdapter | 35 | 6 |
| `b` | class | a | 23 | 3 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade.adapter.screenmcu.a</code></b> (click to expand)</summary>

- **`a`** — 5 function(s): `c()`, `a()`, `onUpgradeStateChanged()`, `if()`, `onUpgradeProgressChanged()`
- **`b`** — 3 function(s): `a()`, `c()`, `if()`

</details>

### Package `com.yftech.service.upgrade.adapter.screenmcu.project`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `CarScreenMcuAdapterA58` | class | b implements a.InterfaceC0100a | 176 | 49 |
| `a` | class | IScreenMcuAdapter | 44 | 8 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade.adapter.screenmcu.project</code></b> (click to expand)</summary>

- **`CarScreenMcuAdapterA58`** — 10 function(s): `nativeStartUpgrade()`, `b()`, `a()`, `c()`, `onUpgradeStateChanged()`, `if()`, `onUpgradeProgressChanged()`, `while()`, `synchronized()`, `for()`
- **`a`** — 5 function(s): `a()`, `b()`, `c()`, `onUpgradeProgressChanged()`, `onUpgradeStateChanged()`

</details>

### Package `com.yftech.service.upgrade.b`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | IDspAdapter.a, b | 83 | 12 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade.b</code></b> (click to expand)</summary>

- **`a`** — 3 function(s): `a()`, `if()`, `b()`

</details>

### Package `com.yftech.service.upgrade.c`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | IMCUAdapter.a, b | 83 | 12 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade.c</code></b> (click to expand)</summary>

- **`a`** — 3 function(s): `a()`, `if()`, `b()`

</details>

### Package `com.yftech.service.upgrade.d`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | c.a, b | 83 | 12 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade.d</code></b> (click to expand)</summary>

- **`a`** — 3 function(s): `a()`, `if()`, `b()`

</details>

### Package `com.yftech.service.upgrade.e`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | IScreenAdapter.a, b | 81 | 12 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade.e</code></b> (click to expand)</summary>

- **`a`** — 3 function(s): `a()`, `if()`, `b()`

</details>

### Package `com.yftech.service.upgrade.f`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | IScreenMcuAdapter.a, b | 81 | 12 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade.f</code></b> (click to expand)</summary>

- **`a`** — 3 function(s): `a()`, `if()`, `b()`

</details>

### Package `com.yftech.service.upgrade.g`  (4 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 284 | 53 |
| `b` | class | — | 226 | 43 |
| `c` | class | — | 307 | 40 |
| `d` | class | — | 52 | 13 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade.g</code></b> (click to expand)</summary>

- **`a`** — 6 function(s): `a()`, `if()`, `for()`, `while()`, `b()`, `c()`
- **`b`** — 7 function(s): `if()`, `b()`, `a()`, `c()`, `d()`, `e()`, `SimpleDateFormat()`
- **`c`** — 8 function(s): `a()`, `c()`, `b()`, `if()`, `String()`, `for()`, `d()`, `while()`
- **`d`** — 5 function(s): `a()`, `if()`, `HashMap()`, `for()`, `while()`

</details>

### Package `com.yftech.service.upgrade.jni`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `McuCommJni` | class | — | 9 | 2 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade.jni</code></b> (click to expand)</summary>

- **`McuCommJni`** — 2 function(s): `notifyMcuUpgradeEnd()`, `notifyMcuUpgradeStart()`

</details>

### Package `com.yftech.service.upgrade.receiver`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `CarBootReceiver` | class | BroadcastReceiver | 22 | 2 |

<details>
<summary><b>Function list for <code>com.yftech.service.upgrade.receiver</code></b> (click to expand)</summary>

- **`CarBootReceiver`** — 2 function(s): `onReceive()`, `if()`

</details>

### Package `android.support.v4.a`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | IInterface | 125 | 24 |
| `b` | class | Parcelable | 116 | 19 |

<details>
<summary><b>Function list for <code>android.support.v4.a</code></b> (click to expand)</summary>

- **`a`** — 8 function(s): `a()`, `asBinder()`, `b()`, `attachInterface()`, `if()`, `return()`, `C0001a()`, `onTransact()`
- **`b`** — 10 function(s): `createFromParcel()`, `b()`, `newArray()`, `describeContents()`, `RunnableC0002b()`, `run()`, `a()`, `if()`, `writeToParcel()`, `synchronized()`

</details>

### Package `android.support.v4.app`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `RemoteActionCompatParcelizer` | class | androidx.core.app.RemoteActionCompatParcelizer | 18 | 2 |
| `a` | class | IInterface | 183 | 34 |

<details>
<summary><b>Function list for <code>android.support.v4.app</code></b> (click to expand)</summary>

- **`RemoteActionCompatParcelizer`** — 2 function(s): `read()`, `write()`
- **`a`** — 9 function(s): `a()`, `asBinder()`, `b()`, `attachInterface()`, `if()`, `return()`, `C0004a()`, `onTransact()`, `switch()`

</details>

### Package `android.support.v4.graphics.drawable`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `IconCompatParcelizer` | class | androidx.core.graphics.drawable.IconCompatParcelizer | 18 | 2 |

<details>
<summary><b>Function list for <code>android.support.v4.graphics.drawable</code></b> (click to expand)</summary>

- **`IconCompatParcelizer`** — 2 function(s): `read()`, `write()`

</details>

### Package `androidx.a.a`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 8 | 1 |

<details>
<summary><b>Function list for <code>androidx.a.a</code></b> (click to expand)</summary>

- **`a`** — 1 function(s): `a()`

</details>

### Package `androidx.a.a.a`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | c | 85 | 14 |
| `b` | class | c | 55 | 7 |
| `c` | class | — | 23 | 6 |

<details>
<summary><b>Function list for <code>androidx.a.a.a</code></b> (click to expand)</summary>

- **`a`** — 7 function(s): `execute()`, `a()`, `if()`, `synchronized()`, `b()`, `c()`, `d()`
- **`b`** — 6 function(s): `newThread()`, `a()`, `b()`, `if()`, `synchronized()`, `d()`
- **`c`** — 5 function(s): `a()`, `b()`, `d()`, `c()`, `if()`

</details>

### Package `androidx.a.a.b`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | b<K, V> | 47 | 7 |
| `b` | class | Iterable<Map.Entry<K, V>> | 341 | 68 |

<details>
<summary><b>Function list for <code>androidx.a.a.b</code></b> (click to expand)</summary>

- **`a`** — 5 function(s): `a()`, `if()`, `b()`, `c()`, `d()`
- **`b`** — 21 function(s): `a_()`, `a()`, `while()`, `if()`, `b()`, `iterator()`, `c()`, `d()`, `e()`, `equals()`, `return()`, `hashCode()`, `toString()`, `hasNext()`, `next()`, `super()`, `C0005b()`, `getKey()`, `getValue()`, `setValue()`, `UnsupportedOperationException()`

</details>

### Package `androidx.a.a.c`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 7 | 1 |

<details>
<summary><b>Function list for <code>androidx.a.a.c</code></b> (click to expand)</summary>

- **`a`** — 1 function(s): `a()`

</details>

### Package `androidx.activity`  (7 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ImmLeaksCleaner` | class | h | 90 | 11 |
| `OnBackPressedDispatcher` | class | androidx.activity.a | 135 | 25 |
| `a` | class | — | 7 | 1 |
| `b` | class | j implements d, androidx.lifecycle.j, y, androidx.savedstate.d | 191 | 38 |
| `c` | class | — | 50 | 8 |
| `d` | class | j | 11 | 1 |
| `e` | class | — | 252 | 11 |

<details>
<summary><b>Function list for <code>androidx.activity</code></b> (click to expand)</summary>

- **`ImmLeaksCleaner`** — 4 function(s): `ImmLeaksCleaner()`, `a()`, `if()`, `synchronized()`
- **`OnBackPressedDispatcher`** — 7 function(s): `OnBackPressedDispatcher()`, `this()`, `a()`, `b()`, `if()`, `while()`, `LifecycleOnBackPressedCancellable()`
- **`a`** — 1 function(s): `a()`
- **`b`** — 16 function(s): `a_()`, `a()`, `b()`, `run()`, `if()`, `IllegalStateException()`, `c()`, `this()`, `onCreate()`, `setContentView()`, `onSaveInstanceState()`, `onRetainNonConfigurationInstance()`, `d()`, `onBackPressed()`, `e()`, `f()`
- **`c`** — 4 function(s): `c()`, `a()`, `b()`, `while()`
- **`d`** — 1 function(s): `e()`
- **`e`** — 11 function(s): `e()`, `a()`, `b()`, `c()`, `d()`, `C0006e()`, `f()`, `g()`, `h()`, `i()`, `j()`

</details>

### Package `androidx.annotation`  (53 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `Keep` | class | — | 13 | 0 |
| `a` | class | — | 15 | 0 |
| `aa` | class | — | 15 | 0 |
| `ab` | class | — | 15 | 0 |
| `ac` | class | — | 15 | 0 |
| `ad` | class | — | 18 | 3 |
| `ae` | class | — | 15 | 0 |
| `af` | class | — | 15 | 0 |
| `ag` | class | — | 15 | 0 |
| `ah` | class | — | 15 | 0 |
| `ai` | class | — | 15 | 0 |
| `aj` | class | — | 15 | 0 |
| `ak` | class | — | 16 | 0 |
| `al` | class | — | 15 | 0 |
| `am` | class | — | 18 | 2 |
| `an` | class | — | 16 | 2 |
| `ao` | class | — | 33 | 6 |
| `ap` | class | — | 25 | 1 |
| `aq` | class | — | 20 | 4 |
| `ar` | class | — | 16 | 2 |
| `as` | class | — | 15 | 0 |
| `at` | class | — | 15 | 0 |
| `au` | class | — | 15 | 0 |
| `av` | class | — | 15 | 0 |
| `aw` | class | — | 15 | 0 |
| `ax` | class | — | 18 | 1 |
| `ay` | class | — | 15 | 0 |
| `az` | class | — | 15 | 0 |
| `b` | class | — | 15 | 0 |
| `c` | class | — | 15 | 0 |
| `d` | class | — | 15 | 0 |
| `e` | class | — | 15 | 0 |
| `f` | class | — | 15 | 0 |
| `g` | class | — | 15 | 0 |
| `h` | class | — | 15 | 0 |
| `i` | class | — | 15 | 0 |
| `j` | class | — | 16 | 1 |
| `k` | class | — | 13 | 0 |
| `l` | class | — | 13 | 0 |
| `m` | class | — | 15 | 0 |
| `n` | class | — | 13 | 0 |
| `o` | class | — | 15 | 0 |
| `p` | class | — | 22 | 1 |
| `q` | class | — | 15 | 0 |
| `r` | class | — | 20 | 4 |
| `s` | class | — | 15 | 0 |
| `t` | class | — | 15 | 0 |
| `u` | class | — | 14 | 1 |
| `v` | class | — | 13 | 0 |
| `w` | class | — | 15 | 0 |
| `x` | class | — | 56 | 11 |
| `y` | class | — | 18 | 3 |
| `z` | class | — | 16 | 2 |

<details>
<summary><b>Function list for <code>androidx.annotation</code></b> (click to expand)</summary>

- **`ad`** — 3 function(s): `a()`, `b()`, `c()`
- **`am`** — 2 function(s): `a()`, `b()`
- **`an`** — 2 function(s): `a()`, `b()`
- **`ao`** — 4 function(s): `a()`, `b()`, `c()`, `d()`
- **`ap`** — 1 function(s): `a()`
- **`aq`** — 4 function(s): `a()`, `b()`, `c()`, `d()`
- **`ar`** — 2 function(s): `a()`, `b()`
- **`ax`** — 1 function(s): `a()`
- **`j`** — 1 function(s): `a()`
- **`p`** — 1 function(s): `a()`
- **`r`** — 4 function(s): `a()`, `b()`, `c()`, `d()`
- **`u`** — 1 function(s): `a()`
- **`x`** — 6 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `f()`
- **`y`** — 3 function(s): `a()`, `b()`, `c()`
- **`z`** — 2 function(s): `a()`, `b()`

</details>

### Package `androidx.annotation.a`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 22 | 1 |
| `b` | class | — | 8 | 1 |
| `c` | class | — | 14 | 0 |

<details>
<summary><b>Function list for <code>androidx.annotation.a</code></b> (click to expand)</summary>

- **`a`** — 1 function(s): `a()`
- **`b`** — 1 function(s): `b()`

</details>

### Package `androidx.appcompat`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 1,758 | 14 |

<details>
<summary><b>Function list for <code>androidx.appcompat</code></b> (click to expand)</summary>

- **`a`** — 14 function(s): `a()`, `C0008a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`, `k()`, `l()`, `m()`

</details>

### Package `androidx.appcompat.a.a`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 128 | 20 |

<details>
<summary><b>Function list for <code>androidx.appcompat.a.a</code></b> (click to expand)</summary>

- **`a`** — 8 function(s): `a()`, `if()`, `b()`, `c()`, `d()`, `synchronized()`, `e()`, `C0009a()`

</details>

### Package `androidx.appcompat.app`  (18 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AlertController` | class | Handler | 859 | 159 |
| `a` | class | ViewGroup.MarginLayoutParams | 397 | 116 |
| `b` | class | a.c | 361 | 89 |
| `c` | class | — | 98 | 12 |
| `d` | class | i implements DialogInterface | 425 | 76 |
| `e` | class | androidx.fragment.app.e implements b.InterfaceC0012b, f, aa.a | 351 | 95 |
| `f` | class | — | 15 | 3 |
| `g` | class | — | 229 | 62 |
| `h` | class | androidx.appcompat.app.g implements LayoutInflater.Factory2, g.a | 2,586 | 591 |
| `i` | class | Dialog implements f | 165 | 44 |
| `j` | class | androidx.fragment.app.c | 38 | 5 |
| `k` | class | View.OnClickListener | 408 | 86 |
| `l` | class | AdapterView.OnItemSelectedListener | 28 | 4 |
| `m` | class | — | 195 | 32 |
| `n` | class | androidx.appcompat.app.a | 554 | 130 |
| `o` | class | — | 62 | 6 |
| `p` | class | — | 127 | 16 |
| `q` | class | androidx.appcompat.app.a implements ActionBarOverlayLayout.a | 1,261 | 301 |

<details>
<summary><b>Function list for <code>androidx.appcompat.app</code></b> (click to expand)</summary>

- **`AlertController`** — 26 function(s): `onClick()`, `if()`, `b()`, `handleMessage()`, `switch()`, `a()`, `AlertController()`, `while()`, `d()`, `c()`, `IllegalArgumentException()`, `e()`, `return()`, `run()`, `onScrollStateChanged()`, `onScroll()`, `RecycleListView()`, `this()`, `super()`, `setPadding()`, `getView()`, `bindView()`, `newView()`, `onItemClick()`, `getItemId()`, `hasStableIds()`
- **`a`** — 30 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`, `k()`, `l()`, `m()`, `n()`, `o()`, `p()`, `q()`, `r()`, `s()`, `t()`, `u()`, `v()`, `w()`, `x()`, `y()`, `z()`, `if()`, `UnsupportedOperationException()`, `super()`, `this()`
- **`b`** — 11 function(s): `a()`, `b()`, `c()`, `this()`, `if()`, `onClick()`, `d()`, `e()`, `f()`, `g()`, `return()`
- **`c`** — 3 function(s): `a()`, `if()`, `c()`
- **`d`** — 15 function(s): `d()`, `this()`, `super()`, `setCancelable()`, `setOnCancelListener()`, `a()`, `if()`, `setTitle()`, `b()`, `c()`, `getContext()`, `onCreate()`, `onKeyDown()`, `onKeyUp()`, `e()`
- **`e`** — 39 function(s): `a()`, `b()`, `c()`, `k()`, `e()`, `super()`, `attachBaseContext()`, `onCreate()`, `setTheme()`, `l()`, `onPostCreate()`, `g()`, `getMenuInflater()`, `setContentView()`, `addContentView()`, `onConfigurationChanged()`, `if()`, `onPostResume()`, `onStart()`, `onStop()`, `findViewById()`, `return()`, `onMenuItemSelected()`, `i()`, `onDestroy()`, `onTitleChanged()`, `h()`, `invalidateOptionsMenu()`, `finish()`, `j()`, `onContentChanged()`, `onMenuOpened()`, `onPanelClosed()`, `onSaveInstanceState()`, `dispatchKeyEvent()`, `getResources()`, `onKeyDown()`, `openOptionsMenu()`, `closeOptionsMenu()`
- **`f`** — 2 function(s): `a()`, `b()`
- **`g`** — 19 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`, `k()`, `l()`, `switch()`, `if()`, `o()`, `m()`, `n()`, `synchronized()`, `while()`
- **`h`** — 66 function(s): `a()`, `c()`, `if()`, `uncaughtException()`, `h()`, `this()`, `run()`, `b()`, `RuntimeException()`, `k()`, `d()`, `A()`, `B()`, `y()`, `o()`, `p()`, `IllegalStateException()`, `f()`, `q()`, `return()`, `e()`, `g()`, `z()`, `D()`, `l()`, `C()`, `IllegalArgumentException()`, `while()`, `switch()`, `F()`, `r()`, `i()`, `t()`, `s()`, `j()`, `u()`, `onCreateView()`, `E()`, `for()`, `AndroidRuntimeException()`, `m()`, `v()`, `w()`, `G()`, `x()`, `H()`, `n()`, `createFromParcel()`, `newArray()`, `describeContents()`, `writeToParcel()`, `super()`, `dispatchKeyEvent()`, `onInterceptTouchEvent()`, `setBackgroundResource()`, `setBackgroundDrawable()`, `onContentChanged()`, `dispatchKeyShortcutEvent()`, `onCreatePanelMenu()`, `onPreparePanel()`, `onMenuOpened()`, `onPanelClosed()`, `onWindowStartingActionMode()`, `onProvideKeyboardShortcuts()`, `onReceive()`, `C0013h()`
- **`i`** — 18 function(s): `a()`, `b()`, `i()`, `this()`, `super()`, `onCreate()`, `c()`, `setContentView()`, `findViewById()`, `return()`, `setTitle()`, `addContentView()`, `onStop()`, `dismiss()`, `e()`, `invalidateOptionsMenu()`, `if()`, `dispatchKeyEvent()`
- **`j`** — 4 function(s): `a()`, `i()`, `if()`, `switch()`
- **`k`** — 26 function(s): `a()`, `if()`, `switch()`, `aa()`, `b()`, `c()`, `d()`, `e()`, `x()`, `f()`, `g()`, `h()`, `t()`, `i()`, `j()`, `k()`, `l()`, `u()`, `m()`, `v()`, `n()`, `ac()`, `IllegalStateException()`, `for()`, `onClick()`, `while()`
- **`l`** — 4 function(s): `onNothingSelected()`, `l()`, `onItemSelected()`, `if()`
- **`m`** — 6 function(s): `a()`, `if()`, `d()`, `c()`, `b()`, `m()`
- **`n`** — 37 function(s): `run()`, `a()`, `b()`, `d()`, `e()`, `f()`, `h()`, `i()`, `k()`, `n()`, `A()`, `if()`, `c()`, `t()`, `p()`, `q()`, `l()`, `IllegalStateException()`, `y()`, `g()`, `IllegalArgumentException()`, `UnsupportedOperationException()`, `j()`, `m()`, `o()`, `u()`, `v()`, `w()`, `x()`, `B()`, `z()`, `for()`, `super()`, `onPreparePanel()`, `onCreatePanelView()`, `View()`, `C()`
- **`o`** — 2 function(s): `a()`, `if()`
- **`p`** — 6 function(s): `a()`, `if()`, `p()`, `b()`, `return()`, `c()`
- **`q`** — 40 function(s): `b()`, `if()`, `a()`, `return()`, `E()`, `e()`, `q()`, `IllegalStateException()`, `f()`, `o()`, `g()`, `c()`, `t()`, `H()`, `A()`, `n()`, `i()`, `j()`, `for()`, `d()`, `switch()`, `I()`, `y()`, `while()`, `h()`, `l()`, `k()`, `m()`, `p()`, `J()`, `B()`, `K()`, `C()`, `r()`, `s()`, `L()`, `D()`, `x()`, `F()`, `G()`

</details>

### Package `androidx.appcompat.b.a`  (5 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | androidx.appcompat.b.a.e implements androidx.core.graphics.drawable.e | 822 | 130 |
| `b` | class | Drawable implements Drawable.Callback | 1,097 | 253 |
| `c` | class | Drawable implements Drawable.Callback | 197 | 41 |
| `d` | class | Drawable | 263 | 60 |
| `e` | class | b | 298 | 62 |

<details>
<summary><b>Function list for <code>androidx.appcompat.b.a</code></b> (click to expand)</summary>

- **`a`** — 25 function(s): `isStateful()`, `a()`, `this()`, `super()`, `onStateChange()`, `jumpToCurrentState()`, `if()`, `XmlPullParserException()`, `b()`, `setVisible()`, `c()`, `g()`, `IllegalArgumentException()`, `d()`, `f()`, `C0014a()`, `setDither()`, `while()`, `e()`, `mutate()`, `clearMutated()`, `return()`, `newDrawable()`, `for()`, `getInterpolation()`
- **`b`** — 63 function(s): `draw()`, `if()`, `getChangingConfigurations()`, `a()`, `getPadding()`, `getOutline()`, `setAlpha()`, `getAlpha()`, `setDither()`, `setColorFilter()`, `setTintList()`, `setTintMode()`, `b()`, `onBoundsChange()`, `isStateful()`, `setAutoMirrored()`, `isAutoMirrored()`, `jumpToCurrentState()`, `invalidateSelf()`, `setHotspot()`, `setHotspotBounds()`, `getHotspotBounds()`, `onStateChange()`, `onLevelChange()`, `onLayoutDirectionChanged()`, `getIntrinsicWidth()`, `getIntrinsicHeight()`, `getMinimumWidth()`, `getMinimumHeight()`, `invalidateDrawable()`, `getCallback()`, `scheduleDrawable()`, `unscheduleDrawable()`, `setVisible()`, `getOpacity()`, `c()`, `d()`, `run()`, `unscheduleSelf()`, `scheduleSelf()`, `getCurrent()`, `applyTheme()`, `canApplyTheme()`, `getConstantState()`, `mutate()`, `clearMutated()`, `AbstractC0015b()`, `for()`, `e()`, `r()`, `f()`, `g()`, `h()`, `l()`, `i()`, `j()`, `k()`, `m()`, `n()`, `o()`, `p()`, `while()`, `q()`
- **`c`** — 38 function(s): `c()`, `a()`, `draw()`, `onBoundsChange()`, `setChangingConfigurations()`, `getChangingConfigurations()`, `setDither()`, `setFilterBitmap()`, `setAlpha()`, `setColorFilter()`, `isStateful()`, `setState()`, `getState()`, `jumpToCurrentState()`, `getCurrent()`, `setVisible()`, `getOpacity()`, `getTransparentRegion()`, `getIntrinsicWidth()`, `getIntrinsicHeight()`, `getMinimumWidth()`, `getMinimumHeight()`, `getPadding()`, `invalidateDrawable()`, `invalidateSelf()`, `scheduleDrawable()`, `scheduleSelf()`, `unscheduleDrawable()`, `unscheduleSelf()`, `onLevelChange()`, `setAutoMirrored()`, `isAutoMirrored()`, `setTint()`, `setTintList()`, `setTintMode()`, `setHotspot()`, `setHotspotBounds()`, `if()`
- **`d`** — 19 function(s): `a()`, `getOpacity()`, `d()`, `e()`, `if()`, `invalidateSelf()`, `b()`, `c()`, `f()`, `g()`, `h()`, `draw()`, `switch()`, `setAlpha()`, `setColorFilter()`, `getIntrinsicHeight()`, `getIntrinsicWidth()`, `i()`, `j()`
- **`e`** — 18 function(s): `isStateful()`, `this()`, `a()`, `if()`, `onStateChange()`, `d()`, `b()`, `setVisible()`, `while()`, `for()`, `e()`, `f()`, `mutate()`, `c()`, `clearMutated()`, `super()`, `newDrawable()`, `applyTheme()`

</details>

### Package `androidx.appcompat.c`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 277 | 11 |

<details>
<summary><b>Function list for <code>androidx.appcompat.c</code></b> (click to expand)</summary>

- **`a`** — 11 function(s): `a()`, `C0016a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`

</details>

### Package `androidx.appcompat.d`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | TransformationMethod | 33 | 4 |

<details>
<summary><b>Function list for <code>androidx.appcompat.d</code></b> (click to expand)</summary>

- **`a`** — 4 function(s): `onFocusChanged()`, `a()`, `getTransformation()`, `if()`

</details>

### Package `androidx.appcompat.view`  (9 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 86 | 18 |
| `b` | class | — | 76 | 22 |
| `c` | class | — | 10 | 2 |
| `d` | class | ContextWrapper | 129 | 36 |
| `e` | class | b implements g.a | 149 | 29 |
| `f` | class | ActionMode | 172 | 29 |
| `g` | class | MenuInflater | 491 | 72 |
| `h` | class | — | 126 | 27 |
| `i` | class | Window.Callback | 163 | 29 |

<details>
<summary><b>Function list for <code>androidx.appcompat.view</code></b> (click to expand)</summary>

- **`a`** — 8 function(s): `a()`, `if()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`
- **`b`** — 11 function(s): `a()`, `b()`, `c()`, `d()`, `f()`, `g()`, `h()`, `i()`, `l()`, `j()`, `k()`
- **`c`** — 2 function(s): `a()`, `b()`
- **`d`** — 14 function(s): `d()`, `super()`, `attachBaseContext()`, `a()`, `if()`, `IllegalStateException()`, `getResources()`, `setTheme()`, `b()`, `getThemeResId()`, `getTheme()`, `getSystemService()`, `getBaseContext()`, `getAssets()`
- **`e`** — 12 function(s): `a()`, `b()`, `e()`, `h()`, `d()`, `c()`, `if()`, `f()`, `g()`, `i()`, `m()`, `l()`
- **`f`** — 21 function(s): `f()`, `getTag()`, `setTag()`, `setTitle()`, `setSubtitle()`, `invalidate()`, `finish()`, `getMenu()`, `p()`, `getTitle()`, `getSubtitle()`, `getCustomView()`, `setCustomView()`, `getMenuInflater()`, `getTitleOptionalHint()`, `setTitleOptionalHint()`, `isTitleOptional()`, `a()`, `b()`, `if()`, `for()`
- **`g`** — 15 function(s): `g()`, `super()`, `inflate()`, `if()`, `a()`, `InflateException()`, `switch()`, `while()`, `RuntimeException()`, `return()`, `onMenuItemClick()`, `b()`, `IllegalStateException()`, `c()`, `d()`
- **`h`** — 5 function(s): `a()`, `if()`, `b()`, `while()`, `c()`
- **`i`** — 27 function(s): `i()`, `if()`, `IllegalArgumentException()`, `dispatchKeyEvent()`, `dispatchKeyShortcutEvent()`, `dispatchTouchEvent()`, `dispatchTrackballEvent()`, `dispatchGenericMotionEvent()`, `dispatchPopulateAccessibilityEvent()`, `onCreatePanelView()`, `onCreatePanelMenu()`, `onPreparePanel()`, `onMenuOpened()`, `onMenuItemSelected()`, `onWindowAttributesChanged()`, `onContentChanged()`, `onWindowFocusChanged()`, `onAttachedToWindow()`, `onDetachedFromWindow()`, `onPanelClosed()`, `onSearchRequested()`, `onWindowStartingActionMode()`, `onActionModeStarted()`, `onActionModeFinished()`, `onProvideKeyboardShortcuts()`, `onPointerCaptureChanged()`, `a()`

</details>

### Package `androidx.appcompat.view.menu`  (23 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ActionMenuItemView` | class | aa implements View.OnClickListener, o.a, ActionMenuView.a | 274 | 66 |
| `ExpandedMenuView` | class | ListView implements AdapterView.OnItemClickListener, g.b, o | 65 | 16 |
| `ListMenuItemView` | class | LinearLayout implements AbsListView.SelectionBoundsAdjuster, o.a | 292 | 75 |
| `a` | class | androidx.core.e.a.b | 415 | 83 |
| `b` | class | n | 181 | 38 |
| `c` | class | — | 95 | 20 |
| `d` | class | l implements View.OnKeyListener, PopupWindow.OnDismissListener, n | 567 | 103 |
| `e` | class | AdapterView.OnItemClickListener, n | 251 | 54 |
| `f` | class | BaseAdapter | 105 | 19 |
| `g` | class | androidx.core.e.a.a | 969 | 266 |
| `h` | class | DialogInterface.OnClickListener, DialogInterface.OnDismissListener, DialogInterface.OnK... | 114 | 19 |
| `i` | class | — | 11 | 2 |
| `j` | class | androidx.core.e.a.b | 714 | 152 |
| `k` | class | androidx.appcompat.view.menu.c implements MenuItem | 505 | 95 |
| `l` | class | AdapterView.OnItemClickListener, n, q | 132 | 32 |
| `m` | class | i | 202 | 45 |
| `n` | class | — | 44 | 14 |
| `o` | class | — | 37 | 12 |
| `p` | class | c implements Menu | 156 | 43 |
| `q` | class | — | 17 | 4 |
| `r` | class | l implements View.OnKeyListener, AdapterView.OnItemClickListener, PopupWindow.OnDismiss... | 288 | 52 |
| `s` | class | g implements SubMenu | 136 | 29 |
| `t` | class | p implements SubMenu | 74 | 12 |

<details>
<summary><b>Function list for <code>androidx.appcompat.view.menu</code></b> (click to expand)</summary>

- **`ActionMenuItemView`** — 33 function(s): `a()`, `c()`, `setCheckable()`, `setChecked()`, `ActionMenuItemView()`, `this()`, `super()`, `setOnClickListener()`, `setSaveEnabled()`, `onConfigurationChanged()`, `g()`, `f()`, `setPadding()`, `getItemData()`, `setIcon()`, `setTitle()`, `setId()`, `setVisibility()`, `setEnabled()`, `if()`, `onTouchEvent()`, `onClick()`, `setItemInvoker()`, `setPopupCallback()`, `setExpandedFormat()`, `setText()`, `setContentDescription()`, `setCompoundDrawables()`, `b()`, `d()`, `e()`, `onMeasure()`, `onRestoreInstanceState()`
- **`ExpandedMenuView`** — 12 function(s): `ExpandedMenuView()`, `this()`, `super()`, `setOnItemClickListener()`, `if()`, `setBackgroundDrawable()`, `setDivider()`, `a()`, `onDetachedFromWindow()`, `setChildrenDrawingCacheEnabled()`, `onItemClick()`, `getWindowAnimations()`
- **`ListMenuItemView`** — 25 function(s): `a()`, `ListMenuItemView()`, `this()`, `super()`, `onFinishInflate()`, `if()`, `setVisibility()`, `setTitle()`, `setCheckable()`, `setIcon()`, `setEnabled()`, `setSubMenuArrowVisible()`, `setContentDescription()`, `addView()`, `setForceShowIcon()`, `getItemData()`, `d()`, `e()`, `setChecked()`, `b()`, `onMeasure()`, `c()`, `getInflater()`, `setGroupDividerEnabled()`, `adjustListItemSelectionBounds()`
- **`a`** — 56 function(s): `b()`, `collapseActionView()`, `expandActionView()`, `getActionView()`, `getMenuInfo()`, `getSubMenu()`, `hasSubMenu()`, `isActionViewExpanded()`, `requiresActionButton()`, `requiresOverflow()`, `setShowAsAction()`, `a()`, `getAlphabeticShortcut()`, `getAlphabeticModifiers()`, `getGroupId()`, `getIcon()`, `getIntent()`, `getItemId()`, `getNumericShortcut()`, `getNumericModifiers()`, `getOrder()`, `getTitle()`, `getTitleCondensed()`, `isCheckable()`, `return()`, `isChecked()`, `isEnabled()`, `isVisible()`, `setAlphabeticShortcut()`, `setCheckable()`, `setChecked()`, `setEnabled()`, `setIcon()`, `c()`, `setIntent()`, `setNumericShortcut()`, `setOnMenuItemClickListener()`, `setShortcut()`, `setTitle()`, `setTitleCondensed()`, `setVisible()`, `if()`, `setActionView()`, `UnsupportedOperationException()`, `setActionProvider()`, `getActionProvider()`, `setShowAsActionFlags()`, `setOnActionExpandListener()`, `setContentDescription()`, `getContentDescription()`, `setTooltipText()`, `getTooltipText()`, `setIconTintList()`, `getIconTintList()`, `setIconTintMode()`, `getIconTintMode()`
- **`b`** — 7 function(s): `a()`, `b()`, `if()`, `for()`, `while()`, `return()`, `c()`
- **`c`** — 6 function(s): `c()`, `a()`, `if()`, `while()`, `b()`, `for()`
- **`d`** — 20 function(s): `onGlobalLayout()`, `if()`, `while()`, `onViewAttachedToWindow()`, `onViewDetachedFromWindow()`, `a()`, `b()`, `run()`, `f()`, `h()`, `d()`, `j()`, `b_()`, `c()`, `for()`, `onKey()`, `k()`, `e()`, `onDismiss()`, `c_()`
- **`e`** — 16 function(s): `a()`, `b()`, `e()`, `this()`, `if()`, `h()`, `d()`, `onItemClick()`, `c()`, `f()`, `getItemId()`, `getCount()`, `getItem()`, `getView()`, `for()`, `notifyDataSetChanged()`
- **`f`** — 11 function(s): `getItemId()`, `f()`, `c()`, `a()`, `getCount()`, `if()`, `b()`, `getItem()`, `getView()`, `for()`, `notifyDataSetChanged()`
- **`g`** — 45 function(s): `a()`, `r()`, `g()`, `b()`, `while()`, `if()`, `f()`, `i()`, `j()`, `e()`, `c()`, `for()`, `d()`, `add()`, `addSubMenu()`, `setGroupDividerEnabled()`, `addIntentOptions()`, `removeGroup()`, `removeItem()`, `clear()`, `clearHeader()`, `setGroupCheckable()`, `setGroupVisible()`, `setGroupEnabled()`, `hasVisibleItems()`, `findItem()`, `size()`, `getItem()`, `isShortcutKey()`, `setQwertyMode()`, `IllegalArgumentException()`, `return()`, `h()`, `performShortcut()`, `performIdentifierAction()`, `close()`, `k()`, `l()`, `m()`, `n()`, `o()`, `p()`, `q()`, `s()`, `t()`
- **`h`** — 6 function(s): `h()`, `a()`, `if()`, `onKey()`, `onDismiss()`, `onClick()`
- **`i`** — 1 function(s): `a()`
- **`j`** — 70 function(s): `j()`, `a()`, `if()`, `isEnabled()`, `return()`, `setEnabled()`, `getGroupId()`, `getItemId()`, `getOrder()`, `c()`, `getIntent()`, `setIntent()`, `d()`, `getAlphabeticShortcut()`, `setAlphabeticShortcut()`, `getAlphabeticModifiers()`, `getNumericShortcut()`, `getNumericModifiers()`, `setNumericShortcut()`, `setShortcut()`, `e()`, `f()`, `g()`, `getSubMenu()`, `hasSubMenu()`, `getTitle()`, `getTitleCondensed()`, `setTitle()`, `setTitleCondensed()`, `getIcon()`, `setIcon()`, `setIconTintList()`, `getIconTintList()`, `setIconTintMode()`, `getIconTintMode()`, `isCheckable()`, `setCheckable()`, `h()`, `isChecked()`, `setChecked()`, `b()`, `isVisible()`, `setVisible()`, `setOnMenuItemClickListener()`, `toString()`, `getMenuInfo()`, `i()`, `k()`, `l()`, `requiresActionButton()`, `requiresOverflow()`, `m()`, `setShowAsAction()`, `switch()`, `IllegalArgumentException()`, `setActionView()`, `getActionView()`, `setActionProvider()`, `UnsupportedOperationException()`, `getActionProvider()`, `setShowAsActionFlags()`, `expandActionView()`, `collapseActionView()`, `n()`, `isActionViewExpanded()`, `setOnActionExpandListener()`, `setContentDescription()`, `getContentDescription()`, `setTooltipText()`, `getTooltipText()`
- **`k`** — 64 function(s): `k()`, `super()`, `if()`, `IllegalArgumentException()`, `getItemId()`, `getGroupId()`, `getOrder()`, `setTitle()`, `getTitle()`, `setTitleCondensed()`, `getTitleCondensed()`, `setIcon()`, `getIcon()`, `setIntent()`, `getIntent()`, `setShortcut()`, `setNumericShortcut()`, `getNumericShortcut()`, `getNumericModifiers()`, `setAlphabeticShortcut()`, `getAlphabeticShortcut()`, `getAlphabeticModifiers()`, `setCheckable()`, `isCheckable()`, `setChecked()`, `isChecked()`, `setVisible()`, `isVisible()`, `setEnabled()`, `isEnabled()`, `hasSubMenu()`, `getSubMenu()`, `a()`, `setOnMenuItemClickListener()`, `getMenuInfo()`, `setShowAsAction()`, `setShowAsActionFlags()`, `setActionView()`, `getActionView()`, `setActionProvider()`, `getActionProvider()`, `return()`, `expandActionView()`, `collapseActionView()`, `isActionViewExpanded()`, `setOnActionExpandListener()`, `setContentDescription()`, `getContentDescription()`, `setTooltipText()`, `getTooltipText()`, `setIconTintList()`, `getIconTintList()`, `setIconTintMode()`, `getIconTintMode()`, `e()`, `onMenuItemClick()`, `d()`, `onMenuItemActionExpand()`, `onMenuItemActionCollapse()`, `b()`, `c()`, `f()`, `onActionProviderVisibilityChanged()`, `addView()`
- **`l`** — 10 function(s): `a()`, `b()`, `c()`, `h()`, `i()`, `UnsupportedOperationException()`, `onItemClick()`, `for()`, `if()`, `return()`
- **`m`** — 14 function(s): `m()`, `this()`, `onDismiss()`, `a()`, `if()`, `b()`, `c()`, `IllegalStateException()`, `d()`, `e()`, `i()`, `f()`, `g()`, `h()`
- **`n`** — 4 function(s): `a()`, `b()`, `c()`, `f()`
- **`o`** — 9 function(s): `a()`, `c()`, `getItemData()`, `setCheckable()`, `setChecked()`, `setEnabled()`, `setIcon()`, `setTitle()`, `getWindowAnimations()`
- **`p`** — 25 function(s): `p()`, `super()`, `if()`, `IllegalArgumentException()`, `add()`, `a()`, `addSubMenu()`, `addIntentOptions()`, `for()`, `removeItem()`, `b()`, `removeGroup()`, `clear()`, `setGroupCheckable()`, `setGroupVisible()`, `setGroupEnabled()`, `hasVisibleItems()`, `findItem()`, `size()`, `getItem()`, `close()`, `performShortcut()`, `isShortcutKey()`, `performIdentifierAction()`, `setQwertyMode()`
- **`q`** — 4 function(s): `b_()`, `c_()`, `d()`, `e()`
- **`r`** — 17 function(s): `onGlobalLayout()`, `if()`, `onViewAttachedToWindow()`, `onViewDetachedFromWindow()`, `a()`, `b()`, `f()`, `r()`, `j()`, `b_()`, `IllegalStateException()`, `d()`, `e()`, `onDismiss()`, `onKey()`, `c_()`, `c()`
- **`s`** — 18 function(s): `s()`, `super()`, `setQwertyMode()`, `d()`, `a()`, `e()`, `u()`, `getItem()`, `r()`, `setIcon()`, `setHeaderIcon()`, `return()`, `setHeaderTitle()`, `setHeaderView()`, `c()`, `if()`, `setGroupDividerEnabled()`, `b()`
- **`t`** — 9 function(s): `t()`, `super()`, `setHeaderTitle()`, `setHeaderIcon()`, `setHeaderView()`, `clearHeader()`, `setIcon()`, `getItem()`, `a()`

</details>

### Package `androidx.appcompat.widget`  (74 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ActionBarContainer` | class | FrameLayout | 304 | 83 |
| `ActionBarContextView` | class | a | 377 | 82 |
| `ActionBarOverlayLayout` | class | ViewGroup implements ad, androidx.core.n.u, androidx.core.n.v, androidx.core.n.w | 733 | 199 |
| `ActionMenuView` | class | aj implements g.b, androidx.appcompat.view.menu.o | 762 | 137 |
| `ActivityChooserView` | class | ViewGroup implements d.a | 593 | 128 |
| `AlertDialogLayout` | class | aj | 203 | 41 |
| `ButtonBarLayout` | class | LinearLayout | 122 | 33 |
| `ContentFrameLayout` | class | FrameLayout | 225 | 54 |
| `DialogTitle` | class | aa | 46 | 12 |
| `FitWindowsFrameLayout` | class | FrameLayout implements ah | 38 | 7 |
| `FitWindowsLinearLayout` | class | LinearLayout implements ah | 38 | 7 |
| `SearchView` | class | aj implements androidx.appcompat.view.c | 1,371 | 333 |
| `Toolbar` | class | ViewGroup | 1,801 | 455 |
| `ViewStubCompat` | class | View | 140 | 34 |
| `a` | class | ViewGroup | 259 | 60 |
| `aa` | class | TextView implements androidx.core.n.ad, androidx.core.widget.b, androidx.core.widget.o | 437 | 95 |
| `ab` | class | a | 542 | 124 |
| `ac` | class | ToggleButton | 29 | 6 |
| `ad` | class | — | 54 | 20 |
| `ae` | class | — | 134 | 57 |
| `af` | class | — | 205 | 44 |
| `ag` | class | ListView | 497 | 115 |
| `ah` | class | — | 17 | 2 |
| `ai` | class | View.OnAttachStateChangeListener, View.OnTouchListener | 203 | 38 |
| `aj` | class | ViewGroup | 1,417 | 267 |
| `ak` | class | androidx.appcompat.view.menu.q | 854 | 176 |
| `al` | class | — | 13 | 2 |
| `am` | class | ak implements al | 223 | 35 |
| `an` | class | — | 144 | 29 |
| `ao` | class | androidx.c.g<Integer, PorterDuffColorFilter> | 436 | 104 |
| `ap` | class | Resources | 255 | 47 |
| `aq` | class | — | 84 | 16 |
| `ar` | class | HorizontalScrollView implements AdapterView.OnItemSelectedListener | 532 | 134 |
| `as` | class | androidx.core.n.b | 155 | 30 |
| `at` | class | androidx.e.a.c implements View.OnClickListener | 511 | 100 |
| `au` | class | CompoundButton | 925 | 207 |
| `av` | class | — | 96 | 13 |
| `aw` | class | SpinnerAdapter | 52 | 8 |
| `ax` | class | ContextWrapper | 93 | 18 |
| `ay` | class | — | 25 | 1 |
| `az` | class | ap | 29 | 4 |
| `b` | class | Drawable | 60 | 12 |
| `ba` | class | — | 195 | 46 |
| `bb` | class | ae | 619 | 147 |
| `bc` | class | — | 19 | 3 |
| `bd` | class | View.OnAttachStateChangeListener, View.OnHoverListener, View.OnLongClickListener | 182 | 42 |
| `be` | class | — | 141 | 21 |
| `bf` | class | Resources | 50 | 9 |
| `bg` | class | — | 68 | 9 |
| `bh` | class | — | 11 | 1 |
| `c` | class | androidx.appcompat.view.menu.b implements b.a | 738 | 149 |
| `d` | class | DataSetObservable | 568 | 128 |
| `e` | class | AutoCompleteTextView implements androidx.core.n.ad | 133 | 29 |
| `f` | class | — | 157 | 37 |
| `g` | class | Button implements androidx.core.n.ad, androidx.core.widget.b, androidx.core.widget.o | 282 | 59 |
| `h` | class | CheckBox implements androidx.core.n.ad, androidx.core.widget.n | 158 | 34 |
| `i` | class | CheckedTextView | 68 | 15 |
| `j` | class | — | 130 | 26 |
| `k` | class | — | 274 | 72 |
| `l` | class | EditText implements androidx.core.n.ad | 155 | 31 |
| `m` | class | — | 31 | 6 |
| `n` | class | ImageButton implements androidx.core.n.ad, androidx.core.widget.p | 171 | 37 |
| `o` | class | — | 164 | 36 |
| `p` | class | ImageView implements androidx.core.n.ad, androidx.core.widget.p | 172 | 38 |
| `q` | class | MultiAutoCompleteTextView implements androidx.core.n.ad | 127 | 28 |
| `r` | class | PopupWindow | 72 | 18 |
| `s` | class | — | 109 | 18 |
| `t` | class | RadioButton implements androidx.core.n.ad, androidx.core.widget.n | 157 | 34 |
| `u` | class | RatingBar | 40 | 9 |
| `v` | class | SeekBar | 48 | 9 |
| `w` | class | s | 152 | 34 |
| `x` | class | Spinner implements androidx.core.n.ad | 909 | 205 |
| `y` | class | — | 40 | 5 |
| `z` | class | — | 577 | 130 |

<details>
<summary><b>Function list for <code>androidx.appcompat.widget</code></b> (click to expand)</summary>

- **`ActionBarContainer`** — 32 function(s): `startActionModeForChild()`, `ActionBarContainer()`, `this()`, `super()`, `if()`, `setWillNotDraw()`, `onFinishInflate()`, `setPrimaryBackground()`, `unscheduleDrawable()`, `invalidate()`, `invalidateOutline()`, `setStackedBackground()`, `setSplitBackground()`, `setVisibility()`, `verifyDrawable()`, `return()`, `drawableStateChanged()`, `jumpDrawablesToCurrentState()`, `setTransitioning()`, `setDescendantFocusability()`, `onInterceptTouchEvent()`, `onTouchEvent()`, `onHoverEvent()`, `setTabContainer()`, `removeView()`, `addView()`, `getTabContainer()`, `a()`, `b()`, `onMeasure()`, `setMeasuredDimension()`, `onLayout()`
- **`ActionBarContextView`** — 33 function(s): `shouldDelayChildPressedState()`, `ActionBarContextView()`, `this()`, `super()`, `onDetachedFromWindow()`, `if()`, `setContentHeight()`, `setCustomView()`, `removeView()`, `addView()`, `requestLayout()`, `setTitle()`, `l()`, `setSubtitle()`, `getTitle()`, `getSubtitle()`, `a()`, `onClick()`, `i()`, `j()`, `removeAllViews()`, `c()`, `d()`, `generateDefaultLayoutParams()`, `generateLayoutParams()`, `onMeasure()`, `IllegalStateException()`, `for()`, `setMeasuredDimension()`, `onLayout()`, `onInitializeAccessibilityEvent()`, `setTitleOptional()`, `k()`
- **`ActionBarOverlayLayout`** — 72 function(s): `B()`, `C()`, `D()`, `E()`, `k()`, `n()`, `onNestedPreFling()`, `onNestedPreScroll()`, `setShowingForActionMode()`, `setUiOptions()`, `shouldDelayChildPressedState()`, `ActionBarOverlayLayout()`, `this()`, `super()`, `onAnimationEnd()`, `onAnimationCancel()`, `run()`, `a()`, `setWillNotDraw()`, `onDetachedFromWindow()`, `e()`, `setActionBarVisibilityCallback()`, `if()`, `onWindowSystemUiVisibilityChanged()`, `setOverlayMode()`, `setHasNonEmbeddedTabs()`, `onConfigurationChanged()`, `c()`, `onWindowVisibilityChanged()`, `fitSystemWindows()`, `requestLayout()`, `onApplyWindowInsets()`, `generateDefaultLayoutParams()`, `b()`, `generateLayoutParams()`, `checkLayoutParams()`, `onMeasure()`, `measureChildWithMargins()`, `setMeasuredDimension()`, `onLayout()`, `for()`, `draw()`, `onNestedScrollAccepted()`, `onStopNestedScroll()`, `onNestedScroll()`, `onStartNestedScroll()`, `setActionBarHideOffset()`, `o()`, `p()`, `onNestedFling()`, `r()`, `q()`, `getNestedScrollAxes()`, `return()`, `IllegalStateException()`, `setHideOnContentScrollEnabled()`, `d()`, `getActionBarHideOffset()`, `removeCallbacks()`, `postDelayed()`, `setWindowCallback()`, `setWindowTitle()`, `getTitle()`, `f()`, `g()`, `setIcon()`, `setLogo()`, `h()`, `i()`, `j()`, `l()`, `m()`
- **`ActionMenuView`** — 36 function(s): `d()`, `e()`, `a()`, `dispatchPopulateAccessibilityEvent()`, `getWindowAnimations()`, `ActionMenuView()`, `this()`, `super()`, `setBaselineAligned()`, `setPopupTheme()`, `if()`, `getPopupTheme()`, `setPresenter()`, `onConfigurationChanged()`, `setOnMenuItemClickListener()`, `onMeasure()`, `c()`, `for()`, `setMeasuredDimension()`, `while()`, `onLayout()`, `onDetachedFromWindow()`, `i()`, `setOverflowIcon()`, `getMenu()`, `getOverflowIcon()`, `setOverflowReserved()`, `generateDefaultLayoutParams()`, `generateLayoutParams()`, `checkLayoutParams()`, `f()`, `g()`, `h()`, `return()`, `setExpandedActionViewsExclusive()`, `b()`
- **`ActivityChooserView`** — 48 function(s): `ActivityChooserView()`, `this()`, `super()`, `onChanged()`, `onInvalidated()`, `onGlobalLayout()`, `if()`, `onInitializeAccessibilityNodeInfo()`, `a()`, `b()`, `c()`, `setActivityChooserModel()`, `setExpandActivityOverflowButtonDrawable()`, `setExpandActivityOverflowButtonContentDescription()`, `setProvider()`, `IllegalStateException()`, `getViewTreeObserver()`, `getListPopupWindow()`, `onAttachedToWindow()`, `onDetachedFromWindow()`, `onMeasure()`, `measureChild()`, `setMeasuredDimension()`, `onLayout()`, `getDataModel()`, `setOnDismissListener()`, `setInitialActivityCount()`, `setDefaultActionButtonContentDescription()`, `d()`, `onItemClick()`, `switch()`, `IllegalArgumentException()`, `onClick()`, `onLongClick()`, `onDismiss()`, `getItemId()`, `getViewTypeCount()`, `notifyDataSetChanged()`, `getItemViewType()`, `return()`, `getCount()`, `getItem()`, `getView()`, `for()`, `e()`, `f()`, `InnerLayout()`, `setBackgroundDrawable()`
- **`AlertDialogLayout`** — 11 function(s): `AlertDialogLayout()`, `super()`, `onMeasure()`, `if()`, `c()`, `for()`, `setMeasuredDimension()`, `d()`, `measureChildWithMargins()`, `onLayout()`, `a()`
- **`ButtonBarLayout`** — 16 function(s): `ButtonBarLayout()`, `super()`, `setAllowStacking()`, `if()`, `setStacked()`, `requestLayout()`, `onMeasure()`, `setMinimumHeight()`, `a()`, `while()`, `getMinimumHeight()`, `setOrientation()`, `setGravity()`, `for()`, `bringChildToFront()`, `getOrientation()`
- **`ContentFrameLayout`** — 18 function(s): `a()`, `b()`, `ContentFrameLayout()`, `this()`, `super()`, `fitSystemWindows()`, `setAttachListener()`, `if()`, `requestLayout()`, `onMeasure()`, `getMinWidthMajor()`, `getMinWidthMinor()`, `getFixedWidthMajor()`, `getFixedWidthMinor()`, `getFixedHeightMajor()`, `getFixedHeightMinor()`, `onAttachedToWindow()`, `onDetachedFromWindow()`
- **`DialogTitle`** — 7 function(s): `DialogTitle()`, `super()`, `onMeasure()`, `if()`, `setSingleLine()`, `setMaxLines()`, `setTextSize()`
- **`FitWindowsFrameLayout`** — 5 function(s): `FitWindowsFrameLayout()`, `super()`, `setOnFitSystemWindowsListener()`, `fitSystemWindows()`, `if()`
- **`FitWindowsLinearLayout`** — 5 function(s): `FitWindowsLinearLayout()`, `super()`, `setOnFitSystemWindowsListener()`, `fitSystemWindows()`, `if()`
- **`SearchView`** — 104 function(s): `a()`, `b()`, `SearchView()`, `this()`, `super()`, `run()`, `if()`, `onClick()`, `onKey()`, `onEditorAction()`, `onItemClick()`, `onNothingSelected()`, `onItemSelected()`, `afterTextChanged()`, `beforeTextChanged()`, `onTextChanged()`, `onFocusChange()`, `setIconifiedByDefault()`, `setMaxWidth()`, `setImeOptions()`, `setInputType()`, `setFocusable()`, `onLayoutChange()`, `w()`, `getSuggestionRowLayout()`, `getSuggestionCommitIconResId()`, `setSearchableInfo()`, `x()`, `setAppSearchData()`, `getImeOptions()`, `getInputType()`, `requestFocus()`, `clearFocus()`, `setOnQueryTextListener()`, `setOnCloseListener()`, `setOnQueryTextFocusChangeListener()`, `setOnSuggestionListener()`, `setOnSearchClickListener()`, `getQuery()`, `h()`, `setQueryHint()`, `getQueryHint()`, `getContext()`, `c()`, `setIconified()`, `i()`, `m()`, `d()`, `setSubmitButtonEnabled()`, `e()`, `setQueryRefinementEnabled()`, `f()`, `setSuggestionsAdapter()`, `getSuggestionsAdapter()`, `requestLayout()`, `getMaxWidth()`, `onMeasure()`, `onLayout()`, `setTouchDelegate()`, `getLocationInWindow()`, `getPreferredWidth()`, `getPreferredHeight()`, `u()`, `t()`, `r()`, `return()`, `s()`, `v()`, `post()`, `g()`, `invalidate()`, `onDetachedFromWindow()`, `removeCallbacks()`, `setQuery()`, `y()`, `n()`, `o()`, `q()`, `onWindowFocusChanged()`, `createFromParcel()`, `newArray()`, `writeToParcel()`, `toString()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `p()`, `onTouchEvent()`, `switch()`, `performCompletion()`, `replaceText()`, `SearchAutoComplete()`, `onFinishInflate()`, `setMinWidth()`, `setSearchView()`, `setThreshold()`, `onFocusChanged()`, `enoughToFilter()`, `onKeyPreIme()`, `setImeVisibility()`, `getSearchViewTextMinWidthDp()`, `onCreateInputConnection()`, `setInputMethodMode()`, `showDropDown()`, `UnsupportedClassVersionError()`
- **`Toolbar`** — 103 function(s): `a()`, `Toolbar()`, `this()`, `super()`, `if()`, `run()`, `t()`, `setTitle()`, `setSubtitle()`, `setPopupTheme()`, `setNavigationIcon()`, `setNavigationContentDescription()`, `setLogo()`, `setLogoDescription()`, `setTitleTextColor()`, `setSubtitleTextColor()`, `getPopupTheme()`, `requestLayout()`, `getTitleMarginStart()`, `setTitleMarginStart()`, `getTitleMarginTop()`, `setTitleMarginTop()`, `getTitleMarginEnd()`, `setTitleMarginEnd()`, `getTitleMarginBottom()`, `setTitleMarginBottom()`, `onRtlPropertiesChanged()`, `getVisibility()`, `b()`, `c()`, `d()`, `e()`, `p()`, `f()`, `g()`, `for()`, `n()`, `removeView()`, `getLogo()`, `getLogoDescription()`, `h()`, `return()`, `i()`, `getTitle()`, `getSubtitle()`, `getNavigationContentDescription()`, `q()`, `getNavigationIcon()`, `setNavigationOnClickListener()`, `getCollapseContentDescription()`, `setCollapseContentDescription()`, `j()`, `getCollapseIcon()`, `setCollapseIcon()`, `getMenu()`, `o()`, `setOverflowIcon()`, `getOverflowIcon()`, `getMenuInflater()`, `setOnMenuItemClickListener()`, `getContentInsetStart()`, `getContentInsetEnd()`, `getContentInsetLeft()`, `getContentInsetRight()`, `getContentInsetStartWithNavigation()`, `setContentInsetStartWithNavigation()`, `getContentInsetEndWithActions()`, `setContentInsetEndWithActions()`, `getCurrentContentInsetStart()`, `getCurrentContentInsetEnd()`, `getCurrentContentInsetLeft()`, `getCurrentContentInsetRight()`, `onClick()`, `addView()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `r()`, `removeCallbacks()`, `post()`, `onDetachedFromWindow()`, `onTouchEvent()`, `onHoverEvent()`, `s()`, `onMeasure()`, `setMeasuredDimension()`, `onLayout()`, `while()`, `getPaddingTop()`, `generateLayoutParams()`, `generateDefaultLayoutParams()`, `checkLayoutParams()`, `getWrapper()`, `l()`, `removeViewAt()`, `m()`, `setCollapsible()`, `getTitleTextView()`, `getSubtitleTextView()`, `getOuterActionMenuPresenter()`, `getPopupContext()`, `createFromParcel()`, `newArray()`, `writeToParcel()`
- **`ViewStubCompat`** — 21 function(s): `a()`, `dispatchDraw()`, `draw()`, `ViewStubCompat()`, `this()`, `super()`, `setId()`, `setVisibility()`, `setWillNotDraw()`, `getInflatedId()`, `setInflatedId()`, `getLayoutResource()`, `setLayoutResource()`, `setLayoutInflater()`, `getLayoutInflater()`, `onMeasure()`, `setMeasuredDimension()`, `if()`, `IllegalStateException()`, `IllegalArgumentException()`, `setOnInflateListener()`
- **`a`** — 24 function(s): `a()`, `this()`, `super()`, `if()`, `onConfigurationChanged()`, `setContentHeight()`, `onTouchEvent()`, `onHoverEvent()`, `requestLayout()`, `getContentHeight()`, `getAnimatedVisibility()`, `getVisibility()`, `setAlpha()`, `setVisibility()`, `b()`, `post()`, `run()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `C0017a()`
- **`aa`** — 49 function(s): `aa()`, `this()`, `super()`, `setBackgroundResource()`, `if()`, `setBackgroundDrawable()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `setTextAppearance()`, `drawableStateChanged()`, `onLayout()`, `setTextSize()`, `onTextChanged()`, `setAutoSizeTextTypeWithDefaults()`, `setAutoSizeTextTypeUniformWithConfiguration()`, `setAutoSizeTextTypeUniformWithPresetSizes()`, `getAutoSizeTextType()`, `getAutoSizeStepGranularity()`, `getAutoSizeMinTextSize()`, `getAutoSizeMaxTextSize()`, `getAutoSizeTextAvailableSizes()`, `onCreateInputConnection()`, `setFirstBaselineToTopHeight()`, `setLastBaselineToBottomHeight()`, `getFirstBaselineToTopHeight()`, `getLastBaselineToBottomHeight()`, `setLineHeight()`, `setCustomSelectionActionModeCallback()`, `getTextMetricsParamsCompat()`, `setTextMetricsParamsCompat()`, `setPrecomputedText()`, `a()`, `getText()`, `setTextClassifier()`, `getTextClassifier()`, `setTextFuture()`, `requestLayout()`, `onMeasure()`, `setCompoundDrawables()`, `setCompoundDrawablesRelative()`, `setCompoundDrawablesWithIntrinsicBounds()`, `setCompoundDrawablesRelativeWithIntrinsicBounds()`, `getSupportCompoundDrawablesTintList()`, `setSupportCompoundDrawablesTintList()`, `getSupportCompoundDrawablesTintMode()`, `setSupportCompoundDrawablesTintMode()`, `setTypeface()`
- **`ab`** — 21 function(s): `a()`, `return()`, `b()`, `c()`, `ab()`, `if()`, `i()`, `switch()`, `j()`, `f()`, `IllegalArgumentException()`, `for()`, `d()`, `e()`, `h()`, `synchronized()`, `IllegalStateException()`, `while()`, `StaticLayout()`, `g()`, `k()`
- **`ac`** — 3 function(s): `ac()`, `this()`, `super()`
- **`ad`** — 17 function(s): `a()`, `b()`, `f()`, `g()`, `getTitle()`, `h()`, `i()`, `j()`, `k()`, `l()`, `m()`, `n()`, `setIcon()`, `setLogo()`, `setUiOptions()`, `setWindowCallback()`, `setWindowTitle()`
- **`ae`** — 27 function(s): `A()`, `a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`, `k()`, `l()`, `m()`, `n()`, `o()`, `p()`, `q()`, `r()`, `s()`, `t()`, `u()`, `v()`, `w()`, `x()`, `y()`, `z()`
- **`af`** — 8 function(s): `if()`, `af()`, `a()`, `for()`, `switch()`, `b()`, `d()`, `c()`
- **`ag`** — 35 function(s): `ag()`, `super()`, `setCacheColorHint()`, `isInTouchMode()`, `return()`, `hasWindowFocus()`, `isFocused()`, `hasFocus()`, `setSelector()`, `if()`, `drawableStateChanged()`, `setSelectorEnabled()`, `a()`, `dispatchDraw()`, `onTouchEvent()`, `while()`, `setState()`, `draw()`, `setHotspot()`, `setHotspotBounds()`, `setVisible()`, `onHoverEvent()`, `setSelectionFromTop()`, `setSelection()`, `onDetachedFromWindow()`, `switch()`, `b()`, `performItemClick()`, `setListSelectionHidden()`, `refreshDrawableState()`, `setPressed()`, `drawableHotspotChanged()`, `layoutChildren()`, `c()`, `run()`
- **`ah`** — 2 function(s): `a()`, `setOnFitSystemWindowsListener()`
- **`ai`** — 12 function(s): `a()`, `onViewAttachedToWindow()`, `ai()`, `onTouch()`, `if()`, `onViewDetachedFromWindow()`, `b()`, `c()`, `switch()`, `e()`, `d()`, `run()`
- **`aj`** — 51 function(s): `a()`, `b()`, `d()`, `shouldDelayChildPressedState()`, `aj()`, `this()`, `super()`, `if()`, `setOrientation()`, `setGravity()`, `setBaselineAligned()`, `setDividerDrawable()`, `setShowDividers()`, `requestLayout()`, `getShowDividers()`, `getDividerDrawable()`, `setWillNotDraw()`, `setDividerPadding()`, `getDividerPadding()`, `getDividerWidth()`, `onDraw()`, `for()`, `k()`, `l()`, `setMeasureWithLargestChildEnabled()`, `getBaseline()`, `RuntimeException()`, `getBaselineAlignedChildIndex()`, `setBaselineAlignedChildIndex()`, `IllegalArgumentException()`, `getChildAt()`, `getVirtualChildCount()`, `getChildCount()`, `getWeightSum()`, `setWeightSum()`, `onMeasure()`, `c()`, `return()`, `while()`, `setMeasuredDimension()`, `measureChildWithMargins()`, `onLayout()`, `getOrientation()`, `getGravity()`, `setHorizontalGravity()`, `setVerticalGravity()`, `generateLayoutParams()`, `generateDefaultLayoutParams()`, `checkLayoutParams()`, `onInitializeAccessibilityEvent()`, `onInitializeAccessibilityNodeInfo()`
- **`ak`** — 45 function(s): `c()`, `if()`, `ak()`, `this()`, `a()`, `d()`, `i()`, `j()`, `b()`, `k()`, `e()`, `l()`, `f()`, `m()`, `n()`, `o()`, `Rect()`, `g()`, `p()`, `h()`, `q()`, `IllegalArgumentException()`, `b_()`, `r()`, `t()`, `s()`, `u()`, `v()`, `w()`, `x()`, `y()`, `c_()`, `ag()`, `switch()`, `ai()`, `z()`, `run()`, `onNothingSelected()`, `onItemSelected()`, `onChanged()`, `onInvalidated()`, `onTouch()`, `onScroll()`, `onScrollStateChanged()`, `return()`
- **`al`** — 2 function(s): `a()`, `b()`
- **`am`** — 11 function(s): `if()`, `am()`, `super()`, `a()`, `b()`, `e()`, `setHoverListener()`, `setSelection()`, `onKeyDown()`, `performItemClick()`, `onHoverEvent()`
- **`an`** — 11 function(s): `a()`, `an()`, `this()`, `if()`, `onDismiss()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`
- **`ao`** — 12 function(s): `a()`, `b()`, `synchronized()`, `if()`, `return()`, `c()`, `d()`, `XmlPullParserException()`, `e()`, `super()`, `IllegalStateException()`, `f()`
- **`ap`** — 40 function(s): `ap()`, `super()`, `getText()`, `getQuantityText()`, `getString()`, `getQuantityString()`, `getTextArray()`, `getStringArray()`, `getIntArray()`, `obtainTypedArray()`, `getDimension()`, `getDimensionPixelOffset()`, `getDimensionPixelSize()`, `getFraction()`, `getDrawable()`, `getDrawableForDensity()`, `getMovie()`, `getColor()`, `getColorStateList()`, `getBoolean()`, `getInteger()`, `getLayout()`, `getAnimation()`, `getXml()`, `openRawResource()`, `openRawResourceFd()`, `getValue()`, `getValueForDensity()`, `obtainAttributes()`, `updateConfiguration()`, `if()`, `getDisplayMetrics()`, `getConfiguration()`, `getIdentifier()`, `getResourceName()`, `getResourcePackageName()`, `getResourceTypeName()`, `getResourceEntryName()`, `parseBundleExtras()`, `parseBundleExtra()`
- **`aq`** — 5 function(s): `a()`, `b()`, `c()`, `d()`, `if()`
- **`ar`** — 44 function(s): `onNothingSelected()`, `ar()`, `super()`, `setHorizontalScrollBarEnabled()`, `setContentHeight()`, `addView()`, `onMeasure()`, `setFillViewport()`, `if()`, `c()`, `d()`, `setTabSelected()`, `b()`, `setAllowCollapse()`, `removeView()`, `removeCallbacks()`, `while()`, `requestLayout()`, `e()`, `f()`, `onConfigurationChanged()`, `a()`, `setAlpha()`, `run()`, `post()`, `onAttachedToWindow()`, `onDetachedFromWindow()`, `onItemSelected()`, `setBackgroundDrawable()`, `setGravity()`, `setSelected()`, `sendAccessibilityEvent()`, `onInitializeAccessibilityEvent()`, `onInitializeAccessibilityNodeInfo()`, `getItemId()`, `getCount()`, `getItem()`, `return()`, `getView()`, `onClick()`, `for()`, `onAnimationStart()`, `onAnimationEnd()`, `onAnimationCancel()`
- **`as`** — 9 function(s): `a()`, `c()`, `as()`, `super()`, `i()`, `if()`, `for()`, `b()`, `onMenuItemClick()`
- **`at`** — 15 function(s): `hasStableIds()`, `at()`, `super()`, `a()`, `if()`, `b()`, `notifyDataSetChanged()`, `d()`, `notifyDataSetInvalidated()`, `onClick()`, `e()`, `f()`, `getView()`, `getDropDownView()`, `FileNotFoundException()`
- **`au`** — 70 function(s): `get()`, `set()`, `a()`, `au()`, `this()`, `super()`, `if()`, `b()`, `refreshDrawableState()`, `setChecked()`, `requestLayout()`, `switch()`, `setSwitchTypeface()`, `invalidate()`, `setSwitchPadding()`, `getSwitchPadding()`, `setSwitchMinWidth()`, `getSwitchMinWidth()`, `setThumbTextPadding()`, `getThumbTextPadding()`, `setTrackDrawable()`, `setTrackResource()`, `getTrackDrawable()`, `setTrackTintList()`, `getTrackTintList()`, `setTrackTintMode()`, `getTrackTintMode()`, `setThumbDrawable()`, `setThumbResource()`, `getThumbDrawable()`, `setThumbTintList()`, `getThumbTintList()`, `setThumbTintMode()`, `getThumbTintMode()`, `setSplitTrack()`, `getSplitTrack()`, `getTextOn()`, `setTextOn()`, `getTextOff()`, `setTextOff()`, `setShowText()`, `getShowText()`, `onMeasure()`, `setMeasuredDimension()`, `onPopulateAccessibilityEvent()`, `StaticLayout()`, `onTouchEvent()`, `getParent()`, `setThumbPosition()`, `playSoundEffect()`, `c()`, `getTargetCheckedState()`, `toggle()`, `onLayout()`, `draw()`, `onDraw()`, `getCompoundPaddingLeft()`, `getCompoundPaddingRight()`, `getThumbOffset()`, `return()`, `getThumbScrollRange()`, `onCreateDrawableState()`, `mergeDrawableStates()`, `drawableStateChanged()`, `drawableHotspotChanged()`, `verifyDrawable()`, `jumpDrawablesToCurrentState()`, `onInitializeAccessibilityEvent()`, `onInitializeAccessibilityNodeInfo()`, `setCustomSelectionActionModeCallback()`
- **`av`** — 6 function(s): `a()`, `ColorStateList()`, `b()`, `c()`, `if()`, `av()`
- **`aw`** — 3 function(s): `a()`, `if()`, `b()`
- **`ax`** — 11 function(s): `a()`, `if()`, `synchronized()`, `for()`, `b()`, `ax()`, `super()`, `getTheme()`, `setTheme()`, `getResources()`, `getAssets()`
- **`ay`** — 1 function(s): `a()`
- **`az`** — 4 function(s): `az()`, `super()`, `getDrawable()`, `if()`
- **`b`** — 7 function(s): `getOpacity()`, `setAlpha()`, `setColorFilter()`, `b()`, `draw()`, `if()`, `getOutline()`
- **`ba`** — 14 function(s): `a()`, `ba()`, `if()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `return()`, `h()`, `i()`, `j()`, `k()`
- **`bb`** — 39 function(s): `b()`, `bb()`, `this()`, `if()`, `c()`, `a()`, `i()`, `onClick()`, `h()`, `B()`, `d()`, `e()`, `f()`, `g()`, `j()`, `C()`, `k()`, `l()`, `m()`, `n()`, `o()`, `p()`, `q()`, `r()`, `F()`, `E()`, `s()`, `t()`, `u()`, `switch()`, `D()`, `IllegalArgumentException()`, `IllegalStateException()`, `v()`, `w()`, `x()`, `y()`, `z()`, `A()`
- **`bc`** — 3 function(s): `a()`, `if()`, `bc()`
- **`bd`** — 11 function(s): `run()`, `onViewAttachedToWindow()`, `a()`, `if()`, `bd()`, `d()`, `onLongClick()`, `onHover()`, `onViewDetachedFromWindow()`, `b()`, `c()`
- **`be`** — 6 function(s): `be()`, `a()`, `if()`, `b()`, `for()`, `return()`
- **`bf`** — 6 function(s): `a()`, `b()`, `bf()`, `super()`, `getDrawable()`, `if()`
- **`bg`** — 4 function(s): `if()`, `bg()`, `a()`, `b()`
- **`bh`** — 1 function(s): `a()`
- **`c`** — 30 function(s): `c()`, `super()`, `a()`, `if()`, `b()`, `d()`, `for()`, `while()`, `e()`, `g()`, `h()`, `i()`, `j()`, `k()`, `l()`, `f()`, `createFromParcel()`, `newArray()`, `describeContents()`, `writeToParcel()`, `setClickable()`, `setFocusable()`, `setVisibility()`, `setEnabled()`, `setOnTouchListener()`, `performClick()`, `playSoundEffect()`, `setFrame()`, `RunnableC0018c()`, `run()`
- **`d`** — 28 function(s): `setActivityChooserModel()`, `a()`, `synchronized()`, `if()`, `d()`, `g()`, `b()`, `for()`, `c()`, `f()`, `IllegalStateException()`, `notifyChanged()`, `k()`, `e()`, `h()`, `i()`, `j()`, `l()`, `this()`, `hashCode()`, `return()`, `equals()`, `toString()`, `compareTo()`, `C0019d()`, `XmlPullParserException()`, `while()`, `doInBackground()`
- **`e`** — 16 function(s): `e()`, `this()`, `super()`, `if()`, `setDropDownBackgroundDrawable()`, `setDropDownBackgroundResource()`, `setBackgroundResource()`, `setBackgroundDrawable()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `drawableStateChanged()`, `setTextAppearance()`, `onCreateInputConnection()`, `setCustomSelectionActionModeCallback()`
- **`f`** — 6 function(s): `f()`, `a()`, `if()`, `b()`, `c()`, `d()`
- **`g`** — 31 function(s): `g()`, `this()`, `super()`, `setBackgroundResource()`, `if()`, `setBackgroundDrawable()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `drawableStateChanged()`, `setTextAppearance()`, `onInitializeAccessibilityEvent()`, `onInitializeAccessibilityNodeInfo()`, `onLayout()`, `setTextSize()`, `onTextChanged()`, `setAutoSizeTextTypeWithDefaults()`, `setAutoSizeTextTypeUniformWithConfiguration()`, `setAutoSizeTextTypeUniformWithPresetSizes()`, `getAutoSizeTextType()`, `getAutoSizeStepGranularity()`, `getAutoSizeMinTextSize()`, `getAutoSizeMaxTextSize()`, `getAutoSizeTextAvailableSizes()`, `setSupportAllCaps()`, `setCustomSelectionActionModeCallback()`, `setSupportCompoundDrawablesTintList()`, `getSupportCompoundDrawablesTintList()`, `setSupportCompoundDrawablesTintMode()`, `getSupportCompoundDrawablesTintMode()`
- **`h`** — 17 function(s): `h()`, `this()`, `super()`, `setButtonDrawable()`, `if()`, `getCompoundPaddingLeft()`, `setSupportButtonTintList()`, `getSupportButtonTintList()`, `setSupportButtonTintMode()`, `getSupportButtonTintMode()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `setBackgroundDrawable()`, `setBackgroundResource()`, `drawableStateChanged()`
- **`i`** — 9 function(s): `i()`, `this()`, `super()`, `setCheckMarkDrawable()`, `setTextAppearance()`, `if()`, `drawableStateChanged()`, `onCreateInputConnection()`, `setCustomSelectionActionModeCallback()`
- **`j`** — 7 function(s): `j()`, `a()`, `if()`, `d()`, `b()`, `c()`, `return()`
- **`k`** — 9 function(s): `a()`, `synchronized()`, `if()`, `b()`, `c()`, `ColorStateList()`, `d()`, `LayerDrawable()`, `for()`
- **`l`** — 17 function(s): `l()`, `this()`, `super()`, `getText()`, `if()`, `setBackgroundResource()`, `setBackgroundDrawable()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `drawableStateChanged()`, `setTextAppearance()`, `onCreateInputConnection()`, `setCustomSelectionActionModeCallback()`, `setTextClassifier()`, `getTextClassifier()`
- **`m`** — 4 function(s): `a()`, `if()`, `while()`, `m()`
- **`n`** — 20 function(s): `n()`, `this()`, `super()`, `setImageResource()`, `setImageDrawable()`, `if()`, `setImageBitmap()`, `setImageURI()`, `setBackgroundResource()`, `setBackgroundDrawable()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `setSupportImageTintList()`, `getSupportImageTintList()`, `setSupportImageTintMode()`, `getSupportImageTintMode()`, `drawableStateChanged()`, `hasOverlappingRendering()`
- **`o`** — 7 function(s): `o()`, `a()`, `if()`, `d()`, `b()`, `c()`, `e()`
- **`p`** — 20 function(s): `p()`, `this()`, `super()`, `setImageResource()`, `if()`, `setImageDrawable()`, `setImageBitmap()`, `setImageURI()`, `setBackgroundResource()`, `setBackgroundDrawable()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `setSupportImageTintList()`, `getSupportImageTintList()`, `setSupportImageTintMode()`, `getSupportImageTintMode()`, `drawableStateChanged()`, `hasOverlappingRendering()`
- **`q`** — 15 function(s): `q()`, `this()`, `super()`, `if()`, `setDropDownBackgroundDrawable()`, `setDropDownBackgroundResource()`, `setBackgroundResource()`, `setBackgroundDrawable()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `drawableStateChanged()`, `setTextAppearance()`, `onCreateInputConnection()`
- **`r`** — 7 function(s): `r()`, `super()`, `a()`, `if()`, `setBackgroundDrawable()`, `showAsDropDown()`, `update()`
- **`s`** — 6 function(s): `s()`, `a()`, `if()`, `for()`, `b()`, `RoundRectShape()`
- **`t`** — 17 function(s): `t()`, `this()`, `super()`, `setButtonDrawable()`, `if()`, `getCompoundPaddingLeft()`, `setSupportButtonTintList()`, `getSupportButtonTintList()`, `setSupportButtonTintMode()`, `getSupportButtonTintMode()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `setBackgroundDrawable()`, `setBackgroundResource()`, `drawableStateChanged()`
- **`u`** — 6 function(s): `u()`, `this()`, `super()`, `onMeasure()`, `if()`, `setMeasuredDimension()`
- **`v`** — 6 function(s): `v()`, `this()`, `super()`, `onDraw()`, `drawableStateChanged()`, `jumpDrawablesToCurrentState()`
- **`w`** — 11 function(s): `w()`, `super()`, `a()`, `if()`, `g()`, `b()`, `c()`, `d()`, `e()`, `f()`, `for()`
- **`x`** — 65 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `x()`, `this()`, `if()`, `super()`, `switch()`, `setAdapter()`, `getPopupContext()`, `setPopupBackgroundDrawable()`, `setPopupBackgroundResource()`, `getPopupBackground()`, `setDropDownVerticalOffset()`, `getDropDownVerticalOffset()`, `setDropDownHorizontalOffset()`, `getDropDownHorizontalOffset()`, `setDropDownWidth()`, `getDropDownWidth()`, `onDetachedFromWindow()`, `onTouchEvent()`, `onMeasure()`, `setMeasuredDimension()`, `performClick()`, `setPrompt()`, `getPrompt()`, `setBackgroundResource()`, `setBackgroundDrawable()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `drawableStateChanged()`, `for()`, `getInternalPopup()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `onGlobalLayout()`, `createFromParcel()`, `newArray()`, `writeToParcel()`, `getItemViewType()`, `getViewTypeCount()`, `getCount()`, `getItem()`, `getItemId()`, `getView()`, `getDropDownView()`, `hasStableIds()`, `registerDataSetObserver()`, `unregisterDataSetObserver()`, `areAllItemsEnabled()`, `isEnabled()`, `isEmpty()`, `onClick()`, `onItemClick()`, `h()`, `i()`, `l()`, `m()`, `onDismiss()`
- **`y`** — 3 function(s): `y()`, `a()`, `if()`
- **`z`** — 15 function(s): `z()`, `a()`, `if()`, `switch()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`, `l()`, `k()`

</details>

### Package `androidx.b`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 83 | 6 |

<details>
<summary><b>Function list for <code>androidx.b</code></b> (click to expand)</summary>

- **`a`** — 6 function(s): `a()`, `C0020a()`, `b()`, `c()`, `d()`, `e()`

</details>

### Package `androidx.b.a`  (8 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | FrameLayout | 260 | 46 |
| `b` | class | d | 22 | 2 |
| `c` | class | f | 104 | 30 |
| `d` | class | f | 137 | 37 |
| `e` | class | — | 22 | 7 |
| `f` | class | — | 39 | 15 |
| `g` | class | Drawable | 183 | 42 |
| `h` | class | Drawable | 306 | 65 |

<details>
<summary><b>Function list for <code>androidx.b.a</code></b> (click to expand)</summary>

- **`a`** — 28 function(s): `setPadding()`, `setPaddingRelative()`, `if()`, `a()`, `this()`, `super()`, `b()`, `c()`, `d()`, `getUseCompatPadding()`, `setUseCompatPadding()`, `onMeasure()`, `setMinimumWidth()`, `setMinimumHeight()`, `setCardBackgroundColor()`, `getCardBackgroundColor()`, `getContentPaddingLeft()`, `getContentPaddingRight()`, `getContentPaddingTop()`, `getContentPaddingBottom()`, `setRadius()`, `getRadius()`, `setCardElevation()`, `getCardElevation()`, `setMaxCardElevation()`, `getMaxCardElevation()`, `getPreventCornerOverlap()`, `setPreventCornerOverlap()`
- **`b`** — 1 function(s): `a()`
- **`c`** — 12 function(s): `a()`, `b()`, `j()`, `f()`, `d()`, `c()`, `e()`, `if()`, `g()`, `h()`, `i()`, `return()`
- **`d`** — 12 function(s): `g()`, `a()`, `if()`, `f()`, `h()`, `j()`, `i()`, `d()`, `c()`, `e()`, `b()`, `return()`
- **`e`** — 4 function(s): `a()`, `b()`, `c()`, `d()`
- **`f`** — 9 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`
- **`g`** — 18 function(s): `getOpacity()`, `g()`, `b()`, `if()`, `a()`, `invalidateSelf()`, `draw()`, `onBoundsChange()`, `getOutline()`, `setAlpha()`, `setColorFilter()`, `c()`, `setTintList()`, `setTintMode()`, `onStateChange()`, `isStateful()`, `return()`, `PorterDuffColorFilter()`
- **`h`** — 20 function(s): `a()`, `getOpacity()`, `h()`, `b()`, `if()`, `d()`, `invalidateSelf()`, `setAlpha()`, `onBoundsChange()`, `IllegalArgumentException()`, `getPadding()`, `onStateChange()`, `isStateful()`, `return()`, `setColorFilter()`, `draw()`, `g()`, `c()`, `e()`, `f()`

</details>

### Package `androidx.c`  (10 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | i<K, V> implements Map<K, V> | 114 | 29 |
| `b` | class | Collection<E>, Set<E> | 516 | 130 |
| `c` | class | — | 163 | 50 |
| `d` | class | — | 132 | 42 |
| `e` | class | — | 74 | 17 |
| `f` | class | Cloneable | 298 | 82 |
| `g` | class | — | 206 | 58 |
| `h` | class | Iterator<T> | 573 | 148 |
| `i` | class | — | 546 | 138 |
| `j` | class | Cloneable | 306 | 85 |

<details>
<summary><b>Function list for <code>androidx.c</code></b> (click to expand)</summary>

- **`a`** — 11 function(s): `a()`, `super()`, `b()`, `if()`, `c()`, `putAll()`, `for()`, `put()`, `entrySet()`, `keySet()`, `values()`
- **`b`** — 26 function(s): `a()`, `if()`, `while()`, `for()`, `d()`, `synchronized()`, `b()`, `this()`, `addAll()`, `clear()`, `contains()`, `return()`, `isEmpty()`, `add()`, `remove()`, `c()`, `size()`, `toArray()`, `equals()`, `hashCode()`, `toString()`, `UnsupportedOperationException()`, `iterator()`, `containsAll()`, `removeAll()`, `retainAll()`
- **`c`** — 14 function(s): `h()`, `if()`, `RuntimeException()`, `c()`, `this()`, `IllegalArgumentException()`, `a()`, `b()`, `ArrayIndexOutOfBoundsException()`, `for()`, `d()`, `e()`, `f()`, `g()`
- **`d`** — 13 function(s): `h()`, `if()`, `RuntimeException()`, `d()`, `this()`, `IllegalArgumentException()`, `a()`, `b()`, `ArrayIndexOutOfBoundsException()`, `c()`, `e()`, `f()`, `g()`
- **`e`** — 7 function(s): `c()`, `for()`, `if()`, `a()`, `b()`, `while()`, `e()`
- **`f`** — 13 function(s): `f()`, `this()`, `if()`, `clone()`, `AssertionError()`, `a()`, `return()`, `b()`, `c()`, `e()`, `for()`, `d()`, `toString()`
- **`g`** — 17 function(s): `a()`, `b()`, `c()`, `g()`, `if()`, `IllegalArgumentException()`, `synchronized()`, `NullPointerException()`, `while()`, `IllegalStateException()`, `d()`, `e()`, `f()`, `h()`, `i()`, `LinkedHashMap()`, `toString()`
- **`h`** — 33 function(s): `a()`, `b()`, `c()`, `hasNext()`, `next()`, `if()`, `NoSuchElementException()`, `remove()`, `IllegalStateException()`, `d()`, `getKey()`, `return()`, `getValue()`, `setValue()`, `equals()`, `hashCode()`, `toString()`, `add()`, `UnsupportedOperationException()`, `addAll()`, `for()`, `clear()`, `contains()`, `containsAll()`, `while()`, `isEmpty()`, `iterator()`, `removeAll()`, `retainAll()`, `size()`, `toArray()`, `e()`, `f()`
- **`i`** — 27 function(s): `a()`, `ConcurrentModificationException()`, `if()`, `while()`, `for()`, `e()`, `synchronized()`, `i()`, `this()`, `clear()`, `containsKey()`, `b()`, `containsValue()`, `get()`, `getOrDefault()`, `return()`, `c()`, `isEmpty()`, `put()`, `putIfAbsent()`, `remove()`, `d()`, `replace()`, `size()`, `equals()`, `hashCode()`, `toString()`
- **`j`** — 17 function(s): `j()`, `this()`, `if()`, `clone()`, `AssertionError()`, `a()`, `return()`, `b()`, `c()`, `d()`, `while()`, `e()`, `for()`, `f()`, `g()`, `h()`, `toString()`

</details>

### Package `androidx.coordinatorlayout`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 280 | 11 |

<details>
<summary><b>Function list for <code>androidx.coordinatorlayout</code></b> (click to expand)</summary>

- **`a`** — 11 function(s): `a()`, `C0021a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`

</details>

### Package `androidx.coordinatorlayout.widget`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `CoordinatorLayout` | class | ViewGroup implements v, w | 2,074 | 499 |
| `a` | class | — | 133 | 32 |
| `b` | class | — | 59 | 11 |

<details>
<summary><b>Function list for <code>androidx.coordinatorlayout.widget</code></b> (click to expand)</summary>

- **`CoordinatorLayout`** — 74 function(s): `getBehavior()`, `a()`, `c()`, `if()`, `return()`, `d()`, `e()`, `CoordinatorLayout()`, `this()`, `super()`, `saveAttributeDataForStyleable()`, `for()`, `g()`, `setOnHierarchyChangeListener()`, `onAttachedToWindow()`, `getViewTreeObserver()`, `onDetachedFromWindow()`, `onStopNestedScroll()`, `setStatusBarBackground()`, `getStatusBarBackground()`, `drawableStateChanged()`, `invalidate()`, `verifyDrawable()`, `setVisibility()`, `setStatusBarBackgroundResource()`, `setStatusBarBackgroundColor()`, `setWillNotDraw()`, `requestLayout()`, `getLastWindowInsets()`, `switch()`, `onInterceptTouchEvent()`, `onTouchEvent()`, `requestDisallowInterceptTouchEvent()`, `b()`, `RuntimeException()`, `f()`, `getSuggestedMinimumWidth()`, `getSuggestedMinimumHeight()`, `measureChildWithMargins()`, `onMeasure()`, `h_()`, `while()`, `setMeasuredDimension()`, `IllegalStateException()`, `onLayout()`, `onDraw()`, `setFitsSystemWindows()`, `drawChild()`, `IllegalArgumentException()`, `getDependencySortedChildren()`, `i_()`, `generateLayoutParams()`, `generateDefaultLayoutParams()`, `checkLayoutParams()`, `onStartNestedScroll()`, `onNestedScrollAccepted()`, `onNestedScroll()`, `onNestedPreScroll()`, `onNestedFling()`, `onNestedPreFling()`, `getNestedScrollAxes()`, `onPreDraw()`, `i()`, `compare()`, `h()`, `onChildViewAdded()`, `onChildViewRemoved()`, `onRestoreInstanceState()`, `onSaveInstanceState()`, `requestChildRectangleOnScreen()`, `setSystemUiVisibility()`, `createFromParcel()`, `newArray()`, `writeToParcel()`
- **`a`** — 9 function(s): `a()`, `if()`, `b()`, `IllegalArgumentException()`, `c()`, `d()`, `for()`, `e()`, `RuntimeException()`
- **`b`** — 3 function(s): `a()`, `if()`, `b()`

</details>

### Package `androidx.core`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 252 | 11 |

<details>
<summary><b>Function list for <code>androidx.core</code></b> (click to expand)</summary>

- **`a`** — 11 function(s): `a()`, `C0022a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`

</details>

### Package `androidx.core.a`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 116 | 20 |

<details>
<summary><b>Function list for <code>androidx.core.a</code></b> (click to expand)</summary>

- **`a`** — 6 function(s): `b()`, `if()`, `switch()`, `c()`, `a()`, `while()`

</details>

### Package `androidx.core.app`  (30 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `CoreComponentFactory` | class | AppComponentFactory | 62 | 13 |
| `RemoteActionCompat` | class | androidx.versionedparcelable.h | 115 | 15 |
| `RemoteActionCompatParcelizer` | class | — | 31 | 2 |
| `a` | class | androidx.core.b.c | 257 | 55 |
| `aa` | class | Iterable<Intent> | 171 | 43 |
| `b` | class | — | 19 | 3 |
| `c` | class | c | 162 | 49 |
| `d` | class | Application.ActivityLifecycleCallbacks | 240 | 34 |
| `e` | class | — | 45 | 11 |
| `f` | class | AppComponentFactory | 93 | 25 |
| `g` | class | — | 35 | 5 |
| `h` | class | — | 57 | 15 |
| `i` | class | — | 89 | 13 |
| `j` | class | Activity implements j.a, androidx.lifecycle.j | 86 | 11 |
| `k` | class | — | 25 | 5 |
| `l` | class | b | 230 | 42 |
| `m` | class | Service | 465 | 103 |
| `n` | class | — | 132 | 31 |
| `o` | class | — | 11 | 1 |
| `p` | class | o | 3,063 | 611 |
| `q` | class | o | 323 | 84 |
| `r` | class | — | 17 | 1 |
| `s` | class | — | 293 | 48 |
| `t` | class | Service | 74 | 17 |
| `u` | class | ServiceConnection, Handler.Callback | 563 | 122 |
| `v` | class | — | 202 | 27 |
| `w` | class | — | 341 | 73 |
| `x` | class | — | 35 | 3 |
| `y` | class | — | 548 | 112 |
| `z` | class | — | 140 | 21 |

<details>
<summary><b>Function list for <code>androidx.core.app</code></b> (click to expand)</summary>

- **`CoreComponentFactory`** — 8 function(s): `a()`, `instantiateActivity()`, `return()`, `instantiateApplication()`, `instantiateReceiver()`, `instantiateProvider()`, `instantiateService()`, `checkCompatWrapper()`
- **`RemoteActionCompat`** — 9 function(s): `RemoteActionCompat()`, `a()`, `if()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`
- **`RemoteActionCompatParcelizer`** — 2 function(s): `read()`, `write()`
- **`a`** — 21 function(s): `onRequestPermissionsResult()`, `a()`, `d()`, `if()`, `b()`, `c()`, `return()`, `IllegalArgumentException()`, `e()`, `f()`, `Handler()`, `run()`, `for()`, `g()`, `onSharedElementStart()`, `onSharedElementEnd()`, `onRejectSharedElements()`, `onMapSharedElements()`, `onCaptureSharedElementSnapshot()`, `onCreateSnapshotView()`, `onSharedElementsArrived()`
- **`aa`** — 11 function(s): `j()`, `aa()`, `a()`, `b()`, `if()`, `while()`, `IllegalArgumentException()`, `iterator()`, `IllegalStateException()`, `c()`, `for()`
- **`b`** — 3 function(s): `b()`, `a()`, `if()`
- **`c`** — 6 function(s): `a()`, `c()`, `d()`, `if()`, `b()`, `for()`
- **`d`** — 13 function(s): `d()`, `a()`, `if()`, `run()`, `onActivityCreated()`, `onActivityResumed()`, `onActivitySaveInstanceState()`, `onActivityStopped()`, `onActivityStarted()`, `onActivityPaused()`, `onActivityDestroyed()`, `b()`, `c()`
- **`e`** — 5 function(s): `a()`, `if()`, `b()`, `c()`, `e()`
- **`f`** — 10 function(s): `instantiateActivity()`, `return()`, `instantiateApplication()`, `instantiateReceiver()`, `instantiateProvider()`, `instantiateService()`, `a()`, `RuntimeException()`, `b()`, `c()`
- **`g`** — 3 function(s): `a()`, `if()`, `g()`
- **`h`** — 5 function(s): `h()`, `a()`, `if()`, `return()`, `b()`
- **`i`** — 4 function(s): `a()`, `if()`, `return()`, `i()`
- **`j`** — 8 function(s): `a()`, `onCreate()`, `onSaveInstanceState()`, `return()`, `c()`, `dispatchKeyShortcutEvent()`, `if()`, `dispatchKeyEvent()`
- **`k`** — 4 function(s): `k()`, `a()`, `if()`, `IllegalArgumentException()`
- **`l`** — 9 function(s): `l()`, `this()`, `if()`, `a()`, `b()`, `c()`, `onFrameMetricsAvailable()`, `for()`, `while()`
- **`m`** — 24 function(s): `a()`, `b()`, `c()`, `h()`, `if()`, `IllegalArgumentException()`, `super()`, `synchronized()`, `f()`, `getBinder()`, `onStartJob()`, `onStopJob()`, `g()`, `d()`, `doInBackground()`, `while()`, `onCancelled()`, `onPostExecute()`, `m()`, `onCreate()`, `onStartCommand()`, `onBind()`, `onDestroy()`, `e()`
- **`n`** — 8 function(s): `a()`, `if()`, `return()`, `IllegalArgumentException()`, `b()`, `Intent()`, `c()`, `n()`
- **`o`** — 1 function(s): `a()`
- **`p`** — 36 function(s): `a()`, `f()`, `this()`, `b()`, `c()`, `d()`, `e()`, `if()`, `g()`, `h()`, `i()`, `j()`, `q()`, `return()`, `k()`, `l()`, `IllegalArgumentException()`, `for()`, `TextAppearanceSpan()`, `while()`, `C0024a()`, `NullPointerException()`, `clone()`, `C0026p()`, `m()`, `n()`, `o()`, `p()`, `r()`, `s()`, `t()`, `u()`, `v()`, `w()`, `C0025a()`, `IllegalStateException()`
- **`q`** — 7 function(s): `q()`, `if()`, `while()`, `a()`, `for()`, `b()`, `c()`
- **`r`** — 1 function(s): `r()`
- **`s`** — 10 function(s): `a()`, `for()`, `if()`, `synchronized()`, `b()`, `c()`, `return()`, `while()`, `w()`, `s()`
- **`t`** — 6 function(s): `a()`, `onBind()`, `if()`, `restoreCallingIdentity()`, `for()`, `SecurityException()`
- **`u`** — 16 function(s): `a()`, `u()`, `if()`, `b()`, `return()`, `c()`, `d()`, `for()`, `e()`, `synchronized()`, `handleMessage()`, `switch()`, `onServiceConnected()`, `onServiceDisconnected()`, `while()`, `toString()`
- **`v`** — 11 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`, `v()`
- **`w`** — 13 function(s): `w()`, `if()`, `IllegalArgumentException()`, `a()`, `b()`, `c()`, `d()`, `e()`, `return()`, `f()`, `g()`, `h()`, `for()`
- **`x`** — 3 function(s): `x()`, `a()`, `if()`
- **`y`** — 23 function(s): `y()`, `a()`, `return()`, `b()`, `if()`, `IllegalArgumentException()`, `c()`, `d()`, `e()`, `f()`, `while()`, `g()`, `IndexOutOfBoundsException()`, `h()`, `i()`, `j()`, `k()`, `l()`, `m()`, `n()`, `o()`, `p()`, `q()`
- **`z`** — 4 function(s): `a()`, `b()`, `if()`, `return()`

</details>

### Package `androidx.core.b`  (8 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 21 | 4 |
| `b` | class | — | 39 | 7 |
| `c` | class | Executor | 356 | 65 |
| `d` | class | ContentProvider | 317 | 70 |
| `e` | class | — | 28 | 3 |
| `f` | class | — | 78 | 24 |
| `g` | class | — | 62 | 13 |
| `h` | class | — | 53 | 7 |

<details>
<summary><b>Function list for <code>androidx.core.b</code></b> (click to expand)</summary>

- **`a`** — 3 function(s): `a()`, `if()`, `IllegalStateException()`
- **`b`** — 4 function(s): `b()`, `a()`, `if()`, `k()`
- **`c`** — 15 function(s): `a()`, `if()`, `File()`, `b()`, `c()`, `synchronized()`, `IllegalArgumentException()`, `d()`, `e()`, `f()`, `g()`, `h()`, `execute()`, `RejectedExecutionException()`, `return()`
- **`d`** — 17 function(s): `a()`, `onCreate()`, `attachInfo()`, `if()`, `SecurityException()`, `query()`, `for()`, `getType()`, `insert()`, `UnsupportedOperationException()`, `update()`, `delete()`, `openFile()`, `synchronized()`, `IllegalArgumentException()`, `b()`, `while()`
- **`e`** — 3 function(s): `e()`, `a()`, `if()`
- **`f`** — 7 function(s): `f()`, `a()`, `if()`, `IllegalArgumentException()`, `for()`, `b()`, `return()`
- **`g`** — 4 function(s): `g()`, `a()`, `if()`, `b()`
- **`h`** — 4 function(s): `C0029a()`, `a()`, `if()`, `h()`

</details>

### Package `androidx.core.b.a`  (6 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 14 | 1 |
| `b` | class | — | 19 | 3 |
| `c` | class | — | 46 | 5 |
| `d` | class | — | 348 | 59 |
| `e` | class | e<Void> | 48 | 8 |
| `f` | class | — | 170 | 42 |

<details>
<summary><b>Function list for <code>androidx.core.b.a</code></b> (click to expand)</summary>

- **`a`** — 1 function(s): `a()`
- **`b`** — 3 function(s): `a()`, `if()`, `b()`
- **`c`** — 4 function(s): `c()`, `a()`, `if()`, `b()`
- **`d`** — 17 function(s): `a()`, `if()`, `for()`, `l()`, `while()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `return()`, `i()`, `j()`, `k()`, `IllegalArgumentException()`
- **`e`** — 3 function(s): `a()`, `b()`, `ArrayList()`
- **`f`** — 11 function(s): `f()`, `a()`, `if()`, `return()`, `while()`, `onReceive()`, `e()`, `b()`, `c()`, `ArrayList()`, `d()`

</details>

### Package `androidx.core.b.b`  (8 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 125 | 25 |
| `b` | class | — | 132 | 29 |
| `c` | class | — | 19 | 3 |
| `d` | class | a | 299 | 56 |
| `e` | class | — | 171 | 33 |
| `f` | class | — | 111 | 19 |
| `g` | class | — | 270 | 54 |
| `h` | class | — | 156 | 32 |

<details>
<summary><b>Function list for <code>androidx.core.b.b</code></b> (click to expand)</summary>

- **`a`** — 8 function(s): `a()`, `if()`, `XmlPullParserException()`, `b()`, `while()`, `for()`, `ColorStateList()`, `return()`
- **`b`** — 8 function(s): `b()`, `a()`, `c()`, `d()`, `if()`, `e()`, `XmlPullParserException()`, `switch()`
- **`c`** — 3 function(s): `c()`, `a()`, `if()`
- **`d`** — 12 function(s): `e()`, `a()`, `b()`, `c()`, `C0027d()`, `d()`, `f()`, `if()`, `XmlPullParserException()`, `while()`, `for()`, `switch()`
- **`e`** — 11 function(s): `e()`, `a()`, `if()`, `XmlPullParserException()`, `switch()`, `RadialGradient()`, `SweepGradient()`, `LinearGradient()`, `b()`, `while()`, `for()`
- **`f`** — 3 function(s): `a()`, `if()`, `f()`
- **`g`** — 8 function(s): `a()`, `if()`, `b()`, `c()`, `run()`, `g()`, `C0028b()`, `synchronized()`
- **`h`** — 7 function(s): `a()`, `b()`, `if()`, `UnsupportedOperationException()`, `c()`, `d()`, `h()`

</details>

### Package `androidx.core.c`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 24 | 7 |
| `b` | class | — | 33 | 6 |

<details>
<summary><b>Function list for <code>androidx.core.c</code></b> (click to expand)</summary>

- **`a`** — 3 function(s): `a()`, `if()`, `CursorWindow()`
- **`b`** — 3 function(s): `b()`, `a()`, `if()`

</details>

### Package `androidx.core.c.a`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 18 | 3 |

<details>
<summary><b>Function list for <code>androidx.core.c.a</code></b> (click to expand)</summary>

- **`a`** — 2 function(s): `a()`, `if()`

</details>

### Package `androidx.core.d.a`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 68 | 15 |

<details>
<summary><b>Function list for <code>androidx.core.d.a</code></b> (click to expand)</summary>

- **`a`** — 4 function(s): `a()`, `synchronized()`, `if()`, `return()`

</details>

### Package `androidx.core.d.b`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 197 | 42 |

<details>
<summary><b>Function list for <code>androidx.core.d.b</code></b> (click to expand)</summary>

- **`a`** — 9 function(s): `a()`, `b()`, `if()`, `return()`, `c()`, `onAuthenticationError()`, `onAuthenticationHelp()`, `onAuthenticationSucceeded()`, `onAuthenticationFailed()`

</details>

### Package `androidx.core.e.a`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | Menu | 19 | 1 |
| `b` | class | MenuItem | 87 | 25 |
| `c` | class | SubMenu, a | 10 | 0 |

<details>
<summary><b>Function list for <code>androidx.core.e.a</code></b> (click to expand)</summary>

- **`a`** — 1 function(s): `setGroupDividerEnabled()`
- **`b`** — 22 function(s): `a()`, `b()`, `collapseActionView()`, `expandActionView()`, `getActionView()`, `getAlphabeticModifiers()`, `getContentDescription()`, `getIconTintList()`, `getIconTintMode()`, `getNumericModifiers()`, `getTooltipText()`, `isActionViewExpanded()`, `requiresActionButton()`, `requiresOverflow()`, `setActionView()`, `setAlphabeticShortcut()`, `setIconTintList()`, `setIconTintMode()`, `setNumericShortcut()`, `setShortcut()`, `setShowAsAction()`, `setShowAsActionFlags()`

</details>

### Package `androidx.core.f`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 19 | 3 |

<details>
<summary><b>Function list for <code>androidx.core.f</code></b> (click to expand)</summary>

- **`a`** — 2 function(s): `a()`, `if()`

</details>

### Package `androidx.core.g`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 24 | 5 |

<details>
<summary><b>Function list for <code>androidx.core.g</code></b> (click to expand)</summary>

- **`a`** — 1 function(s): `a()`

</details>

### Package `androidx.core.graphics`  (18 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 32 | 7 |
| `b` | class | — | 33 | 7 |
| `c` | class | — | 35 | 0 |
| `d` | class | — | 130 | 6 |
| `e` | class | — | 337 | 72 |
| `f` | class | — | 79 | 17 |
| `g` | class | — | 86 | 15 |
| `h` | class | — | 682 | 83 |
| `i` | class | — | 59 | 11 |
| `j` | class | — | 43 | 6 |
| `k` | class | — | 116 | 19 |
| `l` | class | q | 180 | 29 |
| `m` | class | q | 135 | 18 |
| `n` | class | l | 268 | 47 |
| `o` | class | n | 36 | 4 |
| `p` | class | q | 112 | 15 |
| `q` | class | — | 195 | 31 |
| `r` | class | — | 190 | 25 |

<details>
<summary><b>Function list for <code>androidx.core.graphics</code></b> (click to expand)</summary>

- **`a`** — 3 function(s): `a()`, `if()`, `b()`
- **`b`** — 5 function(s): `a()`, `if()`, `BlendModeColorFilter()`, `PorterDuffColorFilter()`, `b()`
- **`d`** — 5 function(s): `a()`, `switch()`, `b()`, `if()`, `d()`
- **`e`** — 10 function(s): `a()`, `b()`, `e()`, `if()`, `IllegalArgumentException()`, `for()`, `d()`, `return()`, `switch()`, `c()`
- **`f`** — 8 function(s): `f()`, `a()`, `if()`, `equals()`, `hashCode()`, `return()`, `toString()`, `b()`
- **`g`** — 4 function(s): `a()`, `if()`, `while()`, `g()`
- **`h`** — 12 function(s): `a()`, `if()`, `IllegalArgumentException()`, `ArrayIndexOutOfBoundsException()`, `RuntimeException()`, `b()`, `while()`, `return()`, `for()`, `c()`, `switch()`, `h()`
- **`i`** — 10 function(s): `i()`, `a()`, `b()`, `c()`, `d()`, `equals()`, `if()`, `hashCode()`, `return()`, `toString()`
- **`j`** — 4 function(s): `a()`, `for()`, `if()`, `j()`
- **`k`** — 6 function(s): `if()`, `k()`, `a()`, `b()`, `return()`, `IllegalArgumentException()`
- **`l`** — 7 function(s): `a()`, `if()`, `File()`, `b()`, `RuntimeException()`, `return()`, `for()`
- **`m`** — 5 function(s): `a()`, `if()`, `b()`, `return()`, `for()`
- **`n`** — 10 function(s): `n()`, `b()`, `if()`, `c()`, `a()`, `return()`, `for()`, `d()`, `e()`, `f()`
- **`o`** — 4 function(s): `a()`, `return()`, `RuntimeException()`, `f()`
- **`p`** — 4 function(s): `a()`, `RuntimeException()`, `for()`, `if()`
- **`q`** — 5 function(s): `a()`, `b()`, `for()`, `if()`, `return()`
- **`r`** — 5 function(s): `r()`, `a()`, `if()`, `for()`, `while()`

</details>

### Package `androidx.core.graphics.drawable`  (11 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `IconCompat` | class | CustomVersionedParcelable | 888 | 183 |
| `IconCompatParcelizer` | class | — | 48 | 9 |
| `a` | class | — | 220 | 50 |
| `b` | class | Drawable | 263 | 71 |
| `c` | class | b | 43 | 9 |
| `d` | class | b | 74 | 16 |
| `e` | class | — | 17 | 3 |
| `f` | class | — | 13 | 2 |
| `g` | class | Drawable implements Drawable.Callback, e, f | 287 | 71 |
| `h` | class | g | 126 | 27 |
| `i` | class | Drawable.ConstantState | 58 | 11 |

<details>
<summary><b>Function list for <code>androidx.core.graphics.drawable</code></b> (click to expand)</summary>

- **`IconCompat`** — 18 function(s): `b()`, `switch()`, `a()`, `if()`, `IllegalArgumentException()`, `IconCompat()`, `c()`, `d()`, `IllegalStateException()`, `return()`, `e()`, `f()`, `BitmapDrawable()`, `AdaptiveIconDrawable()`, `FileInputStream()`, `g()`, `toString()`, `h()`
- **`IconCompatParcelizer`** — 3 function(s): `read()`, `write()`, `if()`
- **`a`** — 12 function(s): `a()`, `if()`, `b()`, `c()`, `d()`, `e()`, `f()`, `for()`, `g()`, `h()`, `i()`, `return()`
- **`b`** — 25 function(s): `b()`, `a()`, `i()`, `if()`, `invalidateSelf()`, `c()`, `UnsupportedOperationException()`, `d()`, `e()`, `setFilterBitmap()`, `setDither()`, `f()`, `draw()`, `setAlpha()`, `getAlpha()`, `setColorFilter()`, `getColorFilter()`, `j()`, `g()`, `onBoundsChange()`, `h()`, `getIntrinsicWidth()`, `getIntrinsicHeight()`, `getOpacity()`, `return()`
- **`c`** — 8 function(s): `c()`, `super()`, `getOutline()`, `f()`, `a()`, `if()`, `invalidateSelf()`, `d()`
- **`d`** — 6 function(s): `a()`, `super()`, `if()`, `invalidateSelf()`, `d()`, `c()`
- **`e`** — 3 function(s): `setTint()`, `setTintList()`, `setTintMode()`
- **`f`** — 1 function(s): `a()`
- **`g`** — 45 function(s): `b()`, `g()`, `a()`, `if()`, `jumpToCurrentState()`, `draw()`, `onBoundsChange()`, `setChangingConfigurations()`, `getChangingConfigurations()`, `setDither()`, `setFilterBitmap()`, `setAlpha()`, `setColorFilter()`, `isStateful()`, `return()`, `setState()`, `getState()`, `getCurrent()`, `setVisible()`, `getOpacity()`, `getTransparentRegion()`, `getIntrinsicWidth()`, `getIntrinsicHeight()`, `getMinimumWidth()`, `getMinimumHeight()`, `getPadding()`, `setAutoMirrored()`, `isAutoMirrored()`, `getConstantState()`, `mutate()`, `c()`, `i()`, `invalidateDrawable()`, `invalidateSelf()`, `scheduleDrawable()`, `scheduleSelf()`, `unscheduleDrawable()`, `unscheduleSelf()`, `onLevelChange()`, `setTint()`, `setTintList()`, `setTintMode()`, `clearColorFilter()`, `setLevel()`, `setBounds()`
- **`h`** — 16 function(s): `h()`, `super()`, `c()`, `setHotspot()`, `setHotspotBounds()`, `getOutline()`, `getDirtyBounds()`, `setTintList()`, `if()`, `setTint()`, `setTintMode()`, `setState()`, `invalidateSelf()`, `b()`, `return()`, `isProjected()`
- **`i`** — 8 function(s): `i()`, `if()`, `newDrawable()`, `h()`, `g()`, `getChangingConfigurations()`, `return()`, `a()`

</details>

### Package `androidx.core.h`  (4 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 78 | 9 |
| `b` | class | Socket | 97 | 31 |
| `c` | class | — | 70 | 12 |
| `d` | class | — | 52 | 10 |

<details>
<summary><b>Function list for <code>androidx.core.h</code></b> (click to expand)</summary>

- **`a`** — 4 function(s): `a()`, `if()`, `switch()`, `b()`
- **`b`** — 16 function(s): `b()`, `super()`, `a()`, `accept()`, `UnsupportedOperationException()`, `available()`, `bind()`, `close()`, `connect()`, `create()`, `getInputStream()`, `getOutputStream()`, `listen()`, `sendUrgentData()`, `getOption()`, `setOption()`
- **`c`** — 4 function(s): `a()`, `b()`, `if()`, `c()`
- **`d`** — 4 function(s): `d()`, `a()`, `if()`, `for()`

</details>

### Package `androidx.core.i`  (16 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 44 | 8 |
| `b` | class | — | 105 | 28 |
| `c` | class | — | 17 | 2 |
| `d` | class | — | 36 | 4 |
| `e` | class | — | 78 | 23 |
| `f` | class | — | 156 | 45 |
| `g` | class | h | 237 | 56 |
| `h` | class | — | 29 | 7 |
| `i` | class | h | 69 | 11 |
| `j` | class | — | 49 | 7 |
| `k` | class | RuntimeException | 15 | 4 |
| `l` | class | — | 19 | 3 |
| `m` | class | Parcelable.ClassLoaderCreator<T> | 43 | 7 |
| `n` | class | — | 12 | 2 |
| `o` | class | — | 100 | 16 |
| `p` | class | — | 20 | 4 |

<details>
<summary><b>Function list for <code>androidx.core.i</code></b> (click to expand)</summary>

- **`a`** — 7 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`
- **`b`** — 11 function(s): `a()`, `synchronized()`, `b()`, `if()`, `k()`, `c()`, `notifyAll()`, `e()`, `d()`, `while()`, `wait()`
- **`c`** — 2 function(s): `c()`, `a()`
- **`d`** — 3 function(s): `a()`, `if()`, `d()`
- **`e`** — 7 function(s): `a()`, `if()`, `return()`, `throw()`, `RuntimeException()`, `Handler()`, `e()`
- **`f`** — 15 function(s): `f()`, `a()`, `if()`, `b()`, `c()`, `d()`, `e()`, `for()`, `Locale()`, `IllegalArgumentException()`, `g()`, `equals()`, `return()`, `hashCode()`, `toString()`
- **`g`** — 14 function(s): `a()`, `if()`, `b()`, `c()`, `for()`, `equals()`, `hashCode()`, `toString()`, `d()`, `g()`, `NullPointerException()`, `IllegalArgumentException()`, `return()`, `while()`
- **`h`** — 4 function(s): `a()`, `b()`, `c()`, `d()`
- **`i`** — 8 function(s): `i()`, `a()`, `b()`, `c()`, `equals()`, `hashCode()`, `toString()`, `d()`
- **`j`** — 3 function(s): `a()`, `if()`, `j()`
- **`k`** — 3 function(s): `k()`, `this()`, `super()`
- **`l`** — 2 function(s): `a()`, `l()`
- **`m`** — 4 function(s): `a()`, `createFromParcel()`, `newArray()`, `m()`
- **`n`** — 1 function(s): `a()`
- **`o`** — 6 function(s): `if()`, `a()`, `return()`, `b()`, `c()`, `o()`
- **`p`** — 4 function(s): `p()`, `a()`, `if()`, `return()`

</details>

### Package `androidx.core.j`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 89 | 11 |
| `b` | class | BaseColumns | 532 | 92 |
| `c` | class | — | 176 | 28 |

<details>
<summary><b>Function list for <code>androidx.core.j</code></b> (click to expand)</summary>

- **`a`** — 8 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `toString()`, `for()`
- **`b`** — 15 function(s): `compare()`, `if()`, `for()`, `a()`, `b()`, `e()`, `call()`, `return()`, `synchronized()`, `c()`, `d()`, `C0033b()`, `run()`, `switch()`, `while()`
- **`c`** — 10 function(s): `handleMessage()`, `switch()`, `a()`, `c()`, `synchronized()`, `b()`, `if()`, `run()`, `return()`, `InterruptedException()`

</details>

### Package `androidx.core.k.a`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 45 | 6 |

<details>
<summary><b>Function list for <code>androidx.core.k.a</code></b> (click to expand)</summary>

- **`a`** — 3 function(s): `a()`, `if()`, `while()`

</details>

### Package `androidx.core.l`  (7 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 501 | 122 |
| `b` | class | — | 54 | 7 |
| `c` | class | — | 98 | 17 |
| `d` | class | Spannable | 450 | 82 |
| `e` | class | — | 9 | 2 |
| `f` | class | androidx.core.l.e | 201 | 36 |
| `g` | class | — | 79 | 16 |

<details>
<summary><b>Function list for <code>androidx.core.l</code></b> (click to expand)</summary>

- **`a`** — 14 function(s): `C0034a()`, `b()`, `a()`, `if()`, `c()`, `return()`, `d()`, `for()`, `while()`, `switch()`, `e()`, `f()`, `g()`, `h()`
- **`b`** — 3 function(s): `a()`, `if()`, `b()`
- **`c`** — 6 function(s): `if()`, `IllegalStateException()`, `a()`, `return()`, `b()`, `c()`
- **`d`** — 27 function(s): `C0037a()`, `if()`, `a()`, `b()`, `c()`, `d()`, `equals()`, `hashCode()`, `toString()`, `while()`, `for()`, `StaticLayout()`, `return()`, `call()`, `super()`, `synchronized()`, `setSpan()`, `IllegalArgumentException()`, `removeSpan()`, `getSpans()`, `getSpanStart()`, `getSpanEnd()`, `getSpanFlags()`, `nextSpanTransition()`, `length()`, `charAt()`, `subSequence()`
- **`e`** — 1 function(s): `a()`
- **`f`** — 11 function(s): `a()`, `switch()`, `b()`, `d()`, `if()`, `IllegalArgumentException()`, `e()`, `super()`, `while()`, `C0038f()`, `f()`
- **`g`** — 7 function(s): `a()`, `if()`, `for()`, `switch()`, `b()`, `return()`, `g()`

</details>

### Package `androidx.core.l.a`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 252 | 50 |
| `b` | class | — | 334 | 79 |

<details>
<summary><b>Function list for <code>androidx.core.l.a</code></b> (click to expand)</summary>

- **`a`** — 10 function(s): `C0035a()`, `a()`, `return()`, `d()`, `for()`, `if()`, `switch()`, `b()`, `while()`, `c()`
- **`b`** — 6 function(s): `compare()`, `if()`, `a()`, `for()`, `b()`, `while()`

</details>

### Package `androidx.core.m`  (12 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 126 | 26 |
| `b` | class | — | 7 | 1 |
| `c` | class | — | 26 | 4 |
| `d` | class | Writer | 49 | 11 |
| `e` | class | — | 34 | 7 |
| `f` | class | — | 43 | 7 |
| `g` | class | — | 70 | 1 |
| `h` | class | a<T> | 99 | 21 |
| `i` | class | — | 80 | 29 |
| `j` | class | — | 10 | 1 |
| `k` | class | — | 7 | 1 |
| `l` | class | — | 161 | 28 |

<details>
<summary><b>Function list for <code>androidx.core.m</code></b> (click to expand)</summary>

- **`a`** — 10 function(s): `a()`, `b()`, `c()`, `if()`, `FileOutputStream()`, `IOException()`, `d()`, `FileInputStream()`, `e()`, `while()`
- **`b`** — 1 function(s): `a()`
- **`c`** — 3 function(s): `a()`, `if()`, `c()`
- **`d`** — 7 function(s): `d()`, `close()`, `a()`, `flush()`, `write()`, `for()`, `if()`
- **`e`** — 3 function(s): `e()`, `a()`, `if()`
- **`f`** — 7 function(s): `f()`, `equals()`, `if()`, `hashCode()`, `return()`, `toString()`, `a()`
- **`g`** — 1 function(s): `g()`
- **`h`** — 10 function(s): `a()`, `h()`, `b()`, `if()`, `IllegalArgumentException()`, `IllegalStateException()`, `for()`, `c()`, `super()`, `synchronized()`
- **`i`** — 7 function(s): `a()`, `if()`, `IllegalArgumentException()`, `NullPointerException()`, `IllegalStateException()`, `b()`, `i()`
- **`j`** — 1 function(s): `a()`
- **`k`** — 1 function(s): `a()`
- **`l`** — 6 function(s): `a()`, `if()`, `while()`, `for()`, `synchronized()`, `l()`

</details>

### Package `androidx.core.n`  (41 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | View.AccessibilityDelegate | 202 | 40 |
| `aa` | class | — | 69 | 14 |
| `ab` | class | — | 34 | 9 |
| `ac` | class | — | 17 | 6 |
| `ad` | class | — | 18 | 4 |
| `ae` | class | — | 21 | 3 |
| `af` | class | View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener | 2,064 | 519 |
| `ag` | class | — | 87 | 18 |
| `ah` | class | — | 69 | 16 |
| `ai` | class | — | 205 | 54 |
| `aj` | class | ak | 431 | 103 |
| `ak` | class | — | 13 | 3 |
| `al` | class | ak | 19 | 3 |
| `am` | class | — | 9 | 1 |
| `an` | class | — | 30 | 6 |
| `ao` | class | e | 726 | 161 |
| `b` | class | — | 96 | 20 |
| `c` | class | — | 166 | 35 |
| `d` | class | — | 96 | 30 |
| `e` | class | — | 35 | 6 |
| `f` | class | — | 83 | 11 |
| `g` | class | a | 438 | 75 |
| `h` | class | — | 47 | 8 |
| `i` | class | — | 32 | 1 |
| `j` | class | — | 125 | 28 |
| `k` | class | LayoutInflater.Factory2 | 104 | 22 |
| `l` | class | — | 12 | 1 |
| `m` | class | — | 68 | 17 |
| `n` | class | — | 27 | 4 |
| `o` | class | — | 223 | 57 |
| `p` | class | — | 230 | 14 |
| `q` | class | — | 23 | 9 |
| `r` | class | q | 15 | 5 |
| `s` | class | r | 7 | 1 |
| `t` | class | — | 223 | 57 |
| `u` | class | — | 23 | 8 |
| `v` | class | u | 17 | 5 |
| `w` | class | v | 9 | 1 |
| `x` | class | — | 44 | 10 |
| `y` | class | — | 9 | 1 |
| `z` | class | View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener | 60 | 13 |

<details>
<summary><b>Function list for <code>androidx.core.n</code></b> (click to expand)</summary>

- **`a`** — 19 function(s): `C0039a()`, `dispatchPopulateAccessibilityEvent()`, `onInitializeAccessibilityEvent()`, `onInitializeAccessibilityNodeInfo()`, `for()`, `onPopulateAccessibilityEvent()`, `onRequestSendAccessibilityEvent()`, `sendAccessibilityEvent()`, `sendAccessibilityEventUnchecked()`, `getAccessibilityNodeProvider()`, `if()`, `return()`, `performAccessibilityAction()`, `a()`, `this()`, `b()`, `c()`, `d()`, `while()`
- **`aa`** — 3 function(s): `aa()`, `a()`, `if()`
- **`ab`** — 3 function(s): `ab()`, `a()`, `if()`
- **`ac`** — 6 function(s): `computeHorizontalScrollExtent()`, `computeHorizontalScrollOffset()`, `computeHorizontalScrollRange()`, `computeVerticalScrollExtent()`, `computeVerticalScrollOffset()`, `computeVerticalScrollRange()`
- **`ad`** — 4 function(s): `getSupportBackgroundTintList()`, `getSupportBackgroundTintMode()`, `setSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`
- **`ae`** — 3 function(s): `a()`, `b()`, `ae()`
- **`af`** — 92 function(s): `a()`, `b()`, `if()`, `c()`, `d()`, `ax()`, `e()`, `return()`, `f()`, `ay()`, `g()`, `h()`, `i()`, `j()`, `az()`, `for()`, `aA()`, `r()`, `k()`, `l()`, `m()`, `n()`, `o()`, `p()`, `q()`, `IllegalArgumentException()`, `s()`, `t()`, `u()`, `v()`, `w()`, `x()`, `y()`, `z()`, `A()`, `B()`, `C()`, `D()`, `E()`, `F()`, `G()`, `H()`, `I()`, `J()`, `K()`, `L()`, `M()`, `N()`, `O()`, `P()`, `Q()`, `R()`, `S()`, `T()`, `U()`, `V()`, `onApplyWindowInsets()`, `W()`, `X()`, `Y()`, `Z()`, `aa()`, `ab()`, `ac()`, `ad()`, `ae()`, `af()`, `ag()`, `ah()`, `ai()`, `aB()`, `aj()`, `ak()`, `al()`, `am()`, `an()`, `ao()`, `ap()`, `aq()`, `ar()`, `as()`, `at()`, `onUnhandledKeyEvent()`, `au()`, `av()`, `aw()`, `this()`, `onViewDetachedFromWindow()`, `onGlobalLayout()`, `onViewAttachedToWindow()`, `synchronized()`, `while()`
- **`ag`** — 7 function(s): `if()`, `a()`, `b()`, `d()`, `return()`, `c()`, `ag()`
- **`ah`** — 6 function(s): `ah()`, `a()`, `if()`, `b()`, `return()`, `c()`
- **`ai`** — 6 function(s): `ai()`, `a()`, `b()`, `if()`, `return()`, `c()`
- **`aj`** — 31 function(s): `aj()`, `a()`, `if()`, `b()`, `c()`, `d()`, `return()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`, `k()`, `l()`, `m()`, `n()`, `o()`, `p()`, `q()`, `r()`, `s()`, `t()`, `u()`, `v()`, `w()`, `x()`, `onAnimationCancel()`, `onAnimationEnd()`, `onAnimationStart()`, `onAnimationUpdate()`
- **`ak`** — 3 function(s): `a()`, `b()`, `c()`
- **`al`** — 3 function(s): `a()`, `b()`, `c()`
- **`am`** — 1 function(s): `a()`
- **`an`** — 5 function(s): `an()`, `a()`, `if()`, `return()`, `IllegalArgumentException()`
- **`ao`** — 31 function(s): `ao()`, `if()`, `a()`, `r()`, `b()`, `c()`, `d()`, `e()`, `f()`, `return()`, `g()`, `h()`, `i()`, `j()`, `s()`, `k()`, `l()`, `m()`, `n()`, `o()`, `p()`, `q()`, `t()`, `u()`, `v()`, `equals()`, `hashCode()`, `w()`, `super()`, `this()`, `WindowInsets()`
- **`b`** — 9 function(s): `d()`, `a()`, `b()`, `c()`, `e()`, `g()`, `f()`, `if()`, `h()`
- **`c`** — 9 function(s): `c()`, `a()`, `if()`, `for()`, `return()`, `Point()`, `NumberFormatException()`, `b()`, `d()`
- **`d`** — 12 function(s): `d()`, `this()`, `a()`, `if()`, `return()`, `b()`, `c()`, `e()`, `equals()`, `hashCode()`, `toString()`, `f()`
- **`e`** — 3 function(s): `e()`, `a()`, `if()`
- **`f`** — 7 function(s): `onLongClick()`, `onTouch()`, `a()`, `f()`, `b()`, `switch()`, `if()`
- **`g`** — 14 function(s): `a()`, `super()`, `handleMessage()`, `switch()`, `if()`, `RuntimeException()`, `b()`, `IllegalArgumentException()`, `for()`, `c()`, `d()`, `return()`, `g()`, `this()`
- **`h`** — 3 function(s): `a()`, `if()`, `h()`
- **`i`** — 1 function(s): `i()`
- **`j`** — 4 function(s): `a()`, `j()`, `if()`, `return()`
- **`k`** — 8 function(s): `a()`, `onCreateView()`, `toString()`, `getClass()`, `b()`, `if()`, `k()`, `return()`
- **`l`** — 1 function(s): `a()`
- **`m`** — 6 function(s): `a()`, `if()`, `b()`, `c()`, `d()`, `m()`
- **`n`** — 3 function(s): `a()`, `if()`, `n()`
- **`o`** — 16 function(s): `a()`, `b()`, `if()`, `return()`, `c()`, `d()`, `e()`, `onMenuItemActionExpand()`, `onMenuItemActionCollapse()`, `f()`, `g()`, `h()`, `i()`, `j()`, `k()`, `o()`
- **`p`** — 8 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `return()`, `f()`, `p()`
- **`q`** — 9 function(s): `dispatchNestedFling()`, `dispatchNestedPreFling()`, `dispatchNestedPreScroll()`, `dispatchNestedScroll()`, `hasNestedScrollingParent()`, `isNestedScrollingEnabled()`, `setNestedScrollingEnabled()`, `startNestedScroll()`, `stopNestedScroll()`
- **`r`** — 2 function(s): `a()`, `b()`
- **`s`** — 1 function(s): `a()`
- **`t`** — 10 function(s): `t()`, `a()`, `if()`, `b()`, `d()`, `for()`, `c()`, `return()`, `switch()`, `e()`
- **`u`** — 8 function(s): `getNestedScrollAxes()`, `onNestedFling()`, `onNestedPreFling()`, `onNestedPreScroll()`, `onNestedScroll()`, `onNestedScrollAccepted()`, `onStartNestedScroll()`, `onStopNestedScroll()`
- **`v`** — 2 function(s): `a()`, `b()`
- **`w`** — 1 function(s): `a()`
- **`x`** — 3 function(s): `x()`, `a()`, `if()`
- **`y`** — 1 function(s): `a()`
- **`z`** — 7 function(s): `z()`, `a()`, `if()`, `NullPointerException()`, `onPreDraw()`, `onViewAttachedToWindow()`, `onViewDetachedFromWindow()`

</details>

### Package `androidx.core.n.a`  (8 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | ClickableSpan | 33 | 2 |
| `b` | class | — | 113 | 19 |
| `c` | class | a | 140 | 26 |
| `d` | class | — | 1,637 | 427 |
| `e` | class | AccessibilityNodeProvider | 113 | 19 |
| `f` | class | — | 315 | 72 |
| `g` | class | a | 91 | 13 |
| `h` | class | — | 208 | 59 |

<details>
<summary><b>Function list for <code>androidx.core.n.a</code></b> (click to expand)</summary>

- **`a`** — 2 function(s): `a()`, `onClick()`
- **`b`** — 7 function(s): `b()`, `a()`, `f()`, `if()`, `c()`, `d()`, `e()`
- **`c`** — 10 function(s): `a()`, `if()`, `b()`, `AccessibilityManagerAccessibilityStateChangeListenerC0040c()`, `hashCode()`, `equals()`, `onAccessibilityStateChanged()`, `e()`, `onTouchExplorationStateChanged()`, `c()`
- **`d`** — 74 function(s): `l()`, `switch()`, `a()`, `this()`, `if()`, `return()`, `b()`, `hashCode()`, `equals()`, `c()`, `d()`, `e()`, `f()`, `C0041d()`, `ArrayList()`, `g()`, `for()`, `h()`, `i()`, `j()`, `k()`, `m()`, `n()`, `o()`, `p()`, `q()`, `r()`, `s()`, `t()`, `u()`, `v()`, `w()`, `x()`, `aj()`, `O()`, `ai()`, `y()`, `z()`, `A()`, `B()`, `C()`, `D()`, `E()`, `F()`, `G()`, `H()`, `I()`, `J()`, `K()`, `L()`, `M()`, `N()`, `while()`, `Bundle()`, `P()`, `Q()`, `R()`, `S()`, `T()`, `U()`, `V()`, `W()`, `X()`, `Y()`, `Z()`, `aa()`, `ab()`, `ac()`, `ad()`, `ae()`, `af()`, `ag()`, `ah()`, `toString()`
- **`e`** — 10 function(s): `a()`, `b()`, `createAccessibilityNodeInfo()`, `if()`, `findAccessibilityNodeInfosByText()`, `for()`, `performAction()`, `super()`, `findFocus()`, `e()`
- **`f`** — 28 function(s): `f()`, `a()`, `b()`, `if()`, `c()`, `d()`, `e()`, `g()`, `h()`, `i()`, `j()`, `k()`, `l()`, `m()`, `n()`, `o()`, `p()`, `q()`, `r()`, `s()`, `t()`, `u()`, `v()`, `w()`, `x()`, `y()`, `hashCode()`, `equals()`
- **`g`** — 2 function(s): `a()`, `b()`
- **`h`** — 19 function(s): `b()`, `switch()`, `a()`, `if()`, `h()`, `return()`, `c()`, `d()`, `e()`, `f()`, `g()`, `i()`, `j()`, `k()`, `l()`, `m()`, `hashCode()`, `equals()`, `toString()`

</details>

### Package `androidx.core.n.b`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | Interpolator | 81 | 14 |
| `b` | class | — | 34 | 13 |

<details>
<summary><b>Function list for <code>androidx.core.n.b</code></b> (click to expand)</summary>

- **`a`** — 6 function(s): `a()`, `for()`, `this()`, `getInterpolation()`, `if()`, `while()`
- **`b`** — 4 function(s): `b()`, `a()`, `if()`, `PathInterpolator()`

</details>

### Package `androidx.core.n.c`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 70 | 13 |
| `b` | class | — | 159 | 28 |
| `c` | class | InterfaceC0044c | 188 | 33 |

<details>
<summary><b>Function list for <code>androidx.core.n.c</code></b> (click to expand)</summary>

- **`a`** — 3 function(s): `a()`, `if()`, `b()`
- **`b`** — 9 function(s): `a()`, `if()`, `while()`, `switch()`, `IllegalArgumentException()`, `InputConnectionWrapper()`, `commitContent()`, `performPrivateCommand()`, `b()`
- **`c`** — 7 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `if()`

</details>

### Package `androidx.core.widget`  (17 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `NestedScrollView` | class | FrameLayout implements ac, s, w | 1,497 | 387 |
| `a` | class | View.OnTouchListener | 417 | 89 |
| `b` | class | — | 34 | 8 |
| `c` | class | — | 91 | 18 |
| `d` | class | ProgressBar | 95 | 24 |
| `e` | class | — | 72 | 12 |
| `f` | class | — | 78 | 19 |
| `g` | class | — | 27 | 5 |
| `h` | class | a | 50 | 10 |
| `i` | class | — | 41 | 8 |
| `j` | class | — | 22 | 4 |
| `k` | class | — | 132 | 24 |
| `l` | class | — | 108 | 20 |
| `m` | class | ActionMode.Callback | 613 | 137 |
| `n` | class | — | 19 | 4 |
| `o` | class | — | 19 | 4 |
| `p` | class | — | 21 | 4 |

<details>
<summary><b>Function list for <code>androidx.core.widget</code></b> (click to expand)</summary>

- **`NestedScrollView`** — 83 function(s): `a()`, `d()`, `if()`, `return()`, `shouldDelayChildPressedState()`, `NestedScrollView()`, `this()`, `super()`, `c()`, `setFillViewport()`, `setNestedScrollingEnabled()`, `b()`, `isNestedScrollingEnabled()`, `startNestedScroll()`, `stopNestedScroll()`, `hasNestedScrollingParent()`, `dispatchNestedScroll()`, `dispatchNestedPreScroll()`, `dispatchNestedFling()`, `dispatchNestedPreFling()`, `scrollBy()`, `onStartNestedScroll()`, `onNestedScrollAccepted()`, `onStopNestedScroll()`, `onNestedScroll()`, `onNestedPreScroll()`, `onNestedFling()`, `f()`, `onNestedPreFling()`, `getNestedScrollAxes()`, `getTopFadingEdgeStrength()`, `getBottomFadingEdgeStrength()`, `getMaxScrollAmount()`, `setFocusable()`, `setDescendantFocusability()`, `setWillNotDraw()`, `addView()`, `IllegalStateException()`, `setOnScrollChangeListener()`, `requestLayout()`, `setSmoothScrollingEnabled()`, `onScrollChanged()`, `onMeasure()`, `dispatchKeyEvent()`, `switch()`, `e()`, `g()`, `requestDisallowInterceptTouchEvent()`, `onInterceptTouchEvent()`, `onTouchEvent()`, `h()`, `i()`, `j()`, `onGenericMotionEvent()`, `getVerticalScrollFactorCompat()`, `onOverScrolled()`, `getScrollRange()`, `for()`, `offsetDescendantRectToMyCoords()`, `requestFocus()`, `computeVerticalScrollRange()`, `computeVerticalScrollOffset()`, `computeVerticalScrollExtent()`, `computeHorizontalScrollRange()`, `computeHorizontalScrollOffset()`, `computeHorizontalScrollExtent()`, `measureChild()`, `measureChildWithMargins()`, `computeScroll()`, `requestChildFocus()`, `onRequestFocusInDescendants()`, `requestChildRectangleOnScreen()`, `onLayout()`, `scrollTo()`, `onAttachedToWindow()`, `onSizeChanged()`, `draw()`, `onRestoreInstanceState()`, `onSaveInstanceState()`, `createFromParcel()`, `newArray()`, `writeToParcel()`, `toString()`
- **`a`** — 15 function(s): `a()`, `e()`, `f()`, `b()`, `d()`, `c()`, `if()`, `onTouch()`, `switch()`, `return()`, `run()`, `C0045a()`, `RuntimeException()`, `g()`, `h()`
- **`b`** — 8 function(s): `getAutoSizeMaxTextSize()`, `getAutoSizeMinTextSize()`, `getAutoSizeStepGranularity()`, `getAutoSizeTextAvailableSizes()`, `getAutoSizeTextType()`, `setAutoSizeTextTypeUniformWithConfiguration()`, `setAutoSizeTextTypeUniformWithPresetSizes()`, `setAutoSizeTextTypeWithDefaults()`
- **`c`** — 5 function(s): `c()`, `a()`, `if()`, `return()`, `b()`
- **`d`** — 13 function(s): `d()`, `this()`, `super()`, `run()`, `if()`, `onAttachedToWindow()`, `c()`, `onDetachedFromWindow()`, `removeCallbacks()`, `a()`, `postDelayed()`, `setVisibility()`, `b()`
- **`e`** — 5 function(s): `e()`, `a()`, `b()`, `if()`, `c()`
- **`f`** — 5 function(s): `a()`, `if()`, `return()`, `b()`, `f()`
- **`g`** — 3 function(s): `g()`, `a()`, `if()`
- **`h`** — 6 function(s): `e()`, `h()`, `super()`, `a()`, `f()`, `if()`
- **`i`** — 4 function(s): `a()`, `if()`, `b()`, `i()`
- **`j`** — 4 function(s): `j()`, `a()`, `if()`, `return()`
- **`k`** — 5 function(s): `k()`, `a()`, `if()`, `return()`, `b()`
- **`l`** — 10 function(s): `a()`, `l()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`
- **`m`** — 24 function(s): `m()`, `a()`, `if()`, `b()`, `c()`, `d()`, `return()`, `e()`, `f()`, `g()`, `h()`, `onCreateActionMode()`, `onPrepareActionMode()`, `onActionItemClicked()`, `onDestroyActionMode()`, `for()`, `Intent()`, `i()`, `j()`, `k()`, `IllegalArgumentException()`, `n()`, `switch()`, `l()`
- **`n`** — 4 function(s): `getSupportButtonTintList()`, `getSupportButtonTintMode()`, `setSupportButtonTintList()`, `setSupportButtonTintMode()`
- **`o`** — 4 function(s): `getSupportCompoundDrawablesTintList()`, `getSupportCompoundDrawablesTintMode()`, `setSupportCompoundDrawablesTintList()`, `setSupportCompoundDrawablesTintMode()`
- **`p`** — 4 function(s): `getSupportImageTintList()`, `getSupportImageTintMode()`, `setSupportImageTintList()`, `setSupportImageTintMode()`

</details>

### Package `androidx.d.a.a`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | o | 263 | 63 |
| `b` | class | c | 302 | 60 |

<details>
<summary><b>Function list for <code>androidx.d.a.a</code></b> (click to expand)</summary>

- **`a`** — 28 function(s): `a()`, `super()`, `onMeasure()`, `if()`, `setMeasuredDimension()`, `for()`, `c()`, `setOrientation()`, `requestLayout()`, `setPadding()`, `setPaddingLeft()`, `setPaddingTop()`, `setPaddingRight()`, `setPaddingBottom()`, `setWrapMode()`, `setHorizontalStyle()`, `setVerticalStyle()`, `setHorizontalBias()`, `setVerticalBias()`, `setFirstHorizontalStyle()`, `setFirstVerticalStyle()`, `setFirstHorizontalBias()`, `setFirstVerticalBias()`, `setHorizontalAlign()`, `setVerticalAlign()`, `setHorizontalGap()`, `setVerticalGap()`, `setMaxElementsWrap()`
- **`b`** — 18 function(s): `b()`, `super()`, `a()`, `if()`, `for()`, `onAttachedToWindow()`, `setRotation()`, `e()`, `setScaleX()`, `setScaleY()`, `setPivotX()`, `setPivotY()`, `setTranslationX()`, `setTranslationY()`, `setVisibility()`, `d()`, `setElevation()`, `layout()`

</details>

### Package `androidx.d.b.a`  (9 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | b | 340 | 59 |
| `b` | class | b | 85 | 23 |
| `c` | class | c | 166 | 36 |
| `d` | class | — | 196 | 36 |
| `e` | class | b | 231 | 50 |
| `f` | class | b | 232 | 50 |
| `g` | class | — | 141 | 27 |
| `h` | class | r | 222 | 35 |
| `i` | class | — | 95 | 19 |

<details>
<summary><b>Function list for <code>androidx.d.b.a</code></b> (click to expand)</summary>

- **`a`** — 11 function(s): `a()`, `if()`, `for()`, `b()`, `while()`, `switch()`, `C0046a()`, `c()`, `d()`, `e()`, `f()`
- **`b`** — 6 function(s): `a()`, `b()`, `if()`, `f()`, `e()`, `for()`
- **`c`** — 11 function(s): `a()`, `b()`, `if()`, `switch()`, `toString()`, `c()`, `return()`, `d()`, `e()`, `f()`, `while()`
- **`d`** — 7 function(s): `d()`, `a()`, `for()`, `while()`, `b()`, `if()`, `return()`
- **`e`** — 7 function(s): `e()`, `if()`, `while()`, `a()`, `for()`, `return()`, `b()`
- **`f`** — 7 function(s): `a()`, `return()`, `b()`, `f()`, `for()`, `while()`, `if()`
- **`g`** — 9 function(s): `toString()`, `a()`, `if()`, `for()`, `b()`, `switch()`, `return()`, `c()`, `d()`
- **`h`** — 5 function(s): `a()`, `if()`, `b()`, `return()`, `getInterpolation()`
- **`i`** — 3 function(s): `a()`, `if()`, `b()`

</details>

### Package `androidx.d.b.b`  (27 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 9 | 2 |
| `aa` | class | — | 37 | 10 |
| `b` | class | — | 11 | 3 |
| `c` | class | — | 175 | 27 |
| `d` | class | v | 437 | 98 |
| `e` | class | — | 73 | 10 |
| `f` | class | e | 688 | 99 |
| `g` | class | — | 54 | 8 |
| `h` | class | e | 697 | 81 |
| `i` | class | i | 644 | 120 |
| `j` | class | — | 120 | 17 |
| `k` | class | l | 394 | 48 |
| `l` | class | e | 28 | 6 |
| `m` | class | e | 630 | 90 |
| `n` | class | e | 308 | 41 |
| `o` | class | Comparable<o> | 379 | 62 |
| `p` | class | — | 1,053 | 196 |
| `q` | class | androidx.d.e.c implements a, s.g | 114 | 27 |
| `r` | class | Interpolator | 12 | 2 |
| `s` | class | androidx.d.e.d implements androidx.core.n.w | 2,720 | 594 |
| `t` | class | Comparable<t> | 460 | 55 |
| `u` | class | View.OnClickListener | 1,368 | 284 |
| `v` | class | — | 23 | 9 |
| `w` | class | w | 533 | 106 |
| `x` | class | x | 608 | 92 |
| `y` | class | — | 402 | 64 |
| `z` | class | s.g | 23 | 4 |

<details>
<summary><b>Function list for <code>androidx.d.b.b</code></b> (click to expand)</summary>

- **`a`** — 2 function(s): `getProgress()`, `setProgress()`
- **`aa`** — 3 function(s): `a()`, `if()`, `RuntimeException()`
- **`b`** — 1 function(s): `a()`
- **`c`** — 6 function(s): `a()`, `for()`, `if()`, `while()`, `b()`, `c()`
- **`d`** — 9 function(s): `d()`, `a()`, `if()`, `return()`, `b()`, `c()`, `e()`, `f()`, `switch()`
- **`e`** — 4 function(s): `a()`, `b()`, `if()`, `c()`
- **`f`** — 7 function(s): `f()`, `a()`, `if()`, `while()`, `b()`, `switch()`, `for()`
- **`g`** — 2 function(s): `a()`, `if()`
- **`h`** — 8 function(s): `h()`, `a()`, `if()`, `while()`, `c()`, `for()`, `b()`, `switch()`
- **`i`** — 25 function(s): `a()`, `q()`, `toString()`, `while()`, `return()`, `b()`, `if()`, `switch()`, `d()`, `C0047i()`, `j()`, `k()`, `g()`, `l()`, `m()`, `n()`, `o()`, `p()`, `h()`, `c()`, `compare()`, `e()`, `f()`, `IllegalArgumentException()`, `for()`
- **`j`** — 5 function(s): `a()`, `if()`, `j()`, `while()`, `switch()`
- **`k`** — 6 function(s): `a()`, `k()`, `switch()`, `b()`, `if()`, `for()`
- **`l`** — 2 function(s): `a()`, `b()`
- **`m`** — 9 function(s): `m()`, `a()`, `if()`, `while()`, `b()`, `IllegalArgumentException()`, `c()`, `switch()`, `for()`
- **`n`** — 5 function(s): `a()`, `n()`, `if()`, `for()`, `switch()`
- **`o`** — 8 function(s): `a()`, `return()`, `if()`, `for()`, `b()`, `while()`, `compareTo()`, `switch()`
- **`p`** — 15 function(s): `a()`, `p()`, `b()`, `c()`, `d()`, `while()`, `if()`, `for()`, `g()`, `switch()`, `return()`, `HashSet()`, `toString()`, `e()`, `f()`
- **`q`** — 9 function(s): `a()`, `q()`, `super()`, `if()`, `for()`, `b()`, `getProgress()`, `setProgress()`, `while()`
- **`r`** — 2 function(s): `a()`, `getInterpolation()`
- **`s`** — 67 function(s): `a()`, `b()`, `c()`, `d()`, `if()`, `onNestedFling()`, `onNestedPreFling()`, `s()`, `super()`, `getNanoTime()`, `while()`, `setState()`, `q()`, `switch()`, `e()`, `g()`, `setTransition()`, `setProgress()`, `IllegalArgumentException()`, `isAttachedToWindow()`, `getWindowToken()`, `setInterpolatedProgress()`, `f()`, `setTransitionState()`, `getTransitionState()`, `invalidate()`, `l()`, `for()`, `getInterpolation()`, `return()`, `m()`, `getVelocity()`, `requestLayout()`, `toString()`, `onMeasure()`, `r()`, `setMeasuredDimension()`, `o()`, `run()`, `n()`, `dispatchDraw()`, `onLayout()`, `p()`, `setScene()`, `setDebugMode()`, `onInterceptTouchEvent()`, `onTouchEvent()`, `onAttachedToWindow()`, `onRtlPropertiesChanged()`, `getCurrentState()`, `getProgress()`, `getTransitionTimeMs()`, `setTransitionListener()`, `getDesignTool()`, `onViewAdded()`, `onViewRemoved()`, `setOnShow()`, `setOnHide()`, `getConstraintSetIds()`, `h()`, `getDefinedTransitions()`, `getStartState()`, `getEndState()`, `getTargetPosition()`, `setTransitionDuration()`, `setInteractionEnabled()`, `i()`
- **`t`** — 10 function(s): `a()`, `return()`, `b()`, `t()`, `if()`, `switch()`, `for()`, `c()`, `while()`, `compareTo()`
- **`u`** — 30 function(s): `a()`, `b()`, `if()`, `while()`, `d()`, `IllegalArgumentException()`, `for()`, `c()`, `g()`, `return()`, `n()`, `e()`, `f()`, `h()`, `i()`, `j()`, `k()`, `l()`, `ViewOnClickListenerC0048a()`, `onClick()`, `u()`, `switch()`, `Interpolator()`, `getInterpolation()`, `AccelerateDecelerateInterpolator()`, `AccelerateInterpolator()`, `DecelerateInterpolator()`, `AnticipateInterpolator()`, `BounceInterpolator()`, `m()`
- **`v`** — 2 function(s): `a()`, `f()`
- **`w`** — 23 function(s): `a()`, `toString()`, `for()`, `return()`, `b()`, `switch()`, `if()`, `c()`, `h()`, `i()`, `j()`, `e()`, `f()`, `d()`, `k()`, `l()`, `n()`, `o()`, `p()`, `g()`, `RuntimeException()`, `m()`, `while()`
- **`x`** — 21 function(s): `a()`, `toString()`, `for()`, `if()`, `switch()`, `return()`, `b()`, `c()`, `f()`, `g()`, `h()`, `d()`, `i()`, `j()`, `l()`, `m()`, `n()`, `RuntimeException()`, `e()`, `k()`, `while()`
- **`y`** — 15 function(s): `y()`, `a()`, `if()`, `for()`, `switch()`, `b()`, `c()`, `return()`, `d()`, `e()`, `onTouch()`, `f()`, `g()`, `toString()`, `h()`
- **`z`** — 1 function(s): `a()`

</details>

### Package `androidx.d.c`  (10 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | b.a | 458 | 100 |
| `b` | class | e.a | 567 | 117 |
| `c` | class | — | 14 | 0 |
| `d` | class | b | 15 | 3 |
| `e` | class | androidx.d.c.b | 976 | 247 |
| `f` | class | — | 92 | 2 |
| `g` | class | a<T> | 82 | 18 |
| `h` | class | b | 256 | 59 |
| `i` | class | — | 275 | 36 |
| `j` | class | b.a | 409 | 97 |

<details>
<summary><b>Function list for <code>androidx.d.c</code></b> (click to expand)</summary>

- **`a`** — 13 function(s): `a()`, `if()`, `for()`, `while()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `return()`, `h()`, `toString()`
- **`b`** — 13 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `g()`, `h()`, `toString()`, `if()`, `for()`, `return()`, `f()`, `while()`
- **`d`** — 2 function(s): `d()`, `super()`
- **`e`** — 24 function(s): `a()`, `c()`, `d()`, `f()`, `g()`, `h()`, `b()`, `e()`, `q()`, `if()`, `p()`, `while()`, `for()`, `return()`, `r()`, `s()`, `t()`, `i()`, `j()`, `k()`, `l()`, `m()`, `n()`, `o()`
- **`f`** — 2 function(s): `toString()`, `a()`
- **`g`** — 6 function(s): `a()`, `g()`, `b()`, `if()`, `IllegalArgumentException()`, `for()`
- **`h`** — 15 function(s): `a()`, `if()`, `for()`, `b()`, `c()`, `compareTo()`, `toString()`, `g()`, `h()`, `super()`, `f()`, `d()`, `e()`, `compare()`, `while()`
- **`i`** — 12 function(s): `a()`, `b()`, `if()`, `switch()`, `AssertionError()`, `i()`, `for()`, `c()`, `while()`, `d()`, `e()`, `toString()`
- **`j`** — 13 function(s): `g()`, `j()`, `a()`, `e()`, `d()`, `if()`, `for()`, `b()`, `while()`, `c()`, `h()`, `toString()`, `f()`

</details>

### Package `androidx.d.c.a`  (5 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | d | 668 | 115 |
| `b` | class | — | 243 | 47 |
| `c` | class | — | 43 | 7 |
| `d` | class | — | 15 | 5 |
| `e` | class | — | 281 | 52 |

<details>
<summary><b>Function list for <code>androidx.d.c.a</code></b> (click to expand)</summary>

- **`a`** — 24 function(s): `a()`, `b()`, `if()`, `c()`, `d()`, `toString()`, `e()`, `s()`, `f()`, `g()`, `m()`, `o()`, `n()`, `h()`, `k()`, `l()`, `i()`, `j()`, `t()`, `p()`, `q()`, `r()`, `switch()`, `return()`
- **`b`** — 8 function(s): `a()`, `b()`, `c()`, `if()`, `d()`, `e()`, `f()`, `g()`
- **`c`** — 4 function(s): `c()`, `a()`, `for()`, `b()`
- **`d`** — 3 function(s): `a()`, `c()`, `s()`
- **`e`** — 11 function(s): `e()`, `a()`, `if()`, `return()`, `b()`, `c()`, `d()`, `switch()`, `f()`, `for()`, `while()`

</details>

### Package `androidx.d.c.a.a`  (7 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | androidx.d.c.a.c | 65 | 12 |
| `b` | class | androidx.d.c.a.c | 65 | 12 |
| `c` | class | androidx.d.c.a.c | 56 | 11 |
| `d` | class | androidx.d.c.a.c | 32 | 6 |
| `e` | class | androidx.d.c.a.d | 86 | 14 |
| `f` | class | d | 87 | 16 |
| `g` | class | d | 87 | 16 |

<details>
<summary><b>Function list for <code>androidx.d.c.a.a</code></b> (click to expand)</summary>

- **`a`** — 7 function(s): `a()`, `super()`, `c()`, `while()`, `if()`, `b()`, `d()`
- **`b`** — 7 function(s): `b()`, `super()`, `c()`, `while()`, `if()`, `a()`, `d()`
- **`c`** — 6 function(s): `c()`, `super()`, `a()`, `b()`, `if()`, `switch()`
- **`d`** — 4 function(s): `d()`, `super()`, `a()`, `e()`
- **`e`** — 6 function(s): `a()`, `e()`, `b()`, `c()`, `s()`, `if()`
- **`f`** — 9 function(s): `f()`, `super()`, `c()`, `while()`, `if()`, `switch()`, `a()`, `b()`, `d()`
- **`g`** — 9 function(s): `g()`, `super()`, `c()`, `while()`, `if()`, `switch()`, `a()`, `b()`, `d()`

</details>

### Package `androidx.d.c.b`  (14 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | j | 242 | 48 |
| `b` | class | — | 614 | 101 |
| `c` | class | — | 185 | 36 |
| `d` | class | — | 352 | 75 |
| `e` | class | — | 3,036 | 552 |
| `f` | class | n | 781 | 160 |
| `g` | class | m | 1,125 | 228 |
| `h` | class | e | 285 | 72 |
| `i` | class | — | 11 | 3 |
| `j` | class | e implements i | 68 | 15 |
| `k` | class | — | 62 | 6 |
| `l` | class | — | 42 | 8 |
| `m` | class | j | 180 | 35 |
| `n` | class | e | 100 | 25 |

<details>
<summary><b>Function list for <code>androidx.d.c.b</code></b> (click to expand)</summary>

- **`a`** — 13 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `toString()`, `for()`, `if()`, `f()`, `i()`, `g()`, `h()`, `switch()`
- **`b`** — 4 function(s): `a()`, `if()`, `for()`, `while()`
- **`c`** — 12 function(s): `c()`, `a()`, `j()`, `while()`, `if()`, `b()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`
- **`d`** — 23 function(s): `a()`, `if()`, `while()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`, `k()`, `l()`, `m()`, `switch()`, `return()`, `AssertionError()`, `n()`, `o()`, `toString()`, `for()`, `p()`
- **`e`** — 78 function(s): `c()`, `if()`, `a()`, `u()`, `d()`, `e()`, `b()`, `f()`, `d_()`, `for()`, `k()`, `l()`, `g()`, `return()`, `m()`, `n()`, `o()`, `h()`, `i()`, `p()`, `q()`, `r()`, `s()`, `t()`, `v()`, `w()`, `j()`, `x()`, `this()`, `y()`, `z()`, `A()`, `a_()`, `B()`, `C()`, `D()`, `E()`, `F()`, `toString()`, `G()`, `H()`, `I()`, `J()`, `K()`, `L()`, `M()`, `N()`, `O()`, `P()`, `Q()`, `R()`, `S()`, `T()`, `U()`, `V()`, `W()`, `X()`, `Y()`, `Z()`, `aa()`, `ab()`, `switch()`, `ac()`, `ad()`, `ae()`, `af()`, `ag()`, `ah()`, `ai()`, `AssertionError()`, `aj()`, `ak()`, `al()`, `am()`, `while()`, `an()`, `ao()`, `ap()`
- **`f`** — 27 function(s): `D()`, `au()`, `b()`, `c()`, `a()`, `h()`, `f()`, `g()`, `super()`, `i()`, `return()`, `w()`, `aq()`, `ar()`, `if()`, `d()`, `e()`, `for()`, `while()`, `as()`, `at()`, `p()`, `q()`, `aB()`, `av()`, `aw()`, `ax()`
- **`g`** — 29 function(s): `a()`, `b()`, `B()`, `C()`, `D()`, `E()`, `F()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`, `G()`, `H()`, `I()`, `J()`, `K()`, `L()`, `if()`, `return()`, `k()`, `for()`, `switch()`, `c()`, `p()`, `q()`, `while()`, `d()`
- **`h`** — 26 function(s): `D()`, `a()`, `h()`, `for()`, `b()`, `if()`, `c()`, `f()`, `switch()`, `AssertionError()`, `B()`, `e()`, `C()`, `g()`, `i()`, `E()`, `d()`, `n()`, `o()`, `q()`, `p()`, `aq()`, `ar()`, `as()`, `at()`, `au()`
- **`i`** — 2 function(s): `a()`, `j()`
- **`j`** — 5 function(s): `a()`, `if()`, `for()`, `j()`, `M()`
- **`k`** — 3 function(s): `a()`, `return()`, `if()`
- **`l`** — 3 function(s): `a()`, `b()`, `return()`
- **`m`** — 21 function(s): `b()`, `N()`, `O()`, `P()`, `Q()`, `a()`, `if()`, `R()`, `S()`, `T()`, `c()`, `f()`, `g()`, `h()`, `i()`, `for()`, `aq()`, `ar()`, `k()`, `as()`, `while()`
- **`n`** — 14 function(s): `n()`, `super()`, `w()`, `b()`, `if()`, `a()`, `for()`, `c()`, `ay()`, `az()`, `while()`, `e()`, `at()`, `aA()`

</details>

### Package `androidx.d.c.b.a`  (16 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | g | 14 | 3 |
| `b` | class | — | 374 | 65 |
| `c` | class | p | 554 | 117 |
| `d` | class | — | 7 | 1 |
| `e` | class | — | 819 | 209 |
| `f` | class | d | 132 | 22 |
| `g` | class | f | 31 | 6 |
| `h` | class | — | 630 | 172 |
| `i` | class | — | 359 | 98 |
| `j` | class | p | 94 | 18 |
| `k` | class | p | 143 | 33 |
| `l` | class | p | 436 | 93 |
| `m` | class | — | 173 | 46 |
| `n` | class | p | 337 | 96 |
| `o` | class | — | 212 | 44 |
| `p` | class | d | 261 | 52 |

<details>
<summary><b>Function list for <code>androidx.d.c.b.a</code></b> (click to expand)</summary>

- **`a`** — 2 function(s): `a()`, `super()`
- **`b`** — 5 function(s): `a()`, `for()`, `if()`, `b()`, `while()`
- **`c`** — 14 function(s): `c()`, `super()`, `j()`, `toString()`, `while()`, `a()`, `for()`, `if()`, `b()`, `d()`, `e()`, `k()`, `l()`, `f()`
- **`d`** — 1 function(s): `a()`
- **`e`** — 9 function(s): `e()`, `a()`, `for()`, `return()`, `if()`, `d()`, `while()`, `b()`, `c()`
- **`f`** — 7 function(s): `f()`, `toString()`, `a()`, `if()`, `for()`, `while()`, `b()`
- **`g`** — 5 function(s): `g()`, `super()`, `if()`, `a()`, `for()`
- **`h`** — 4 function(s): `a()`, `for()`, `if()`, `while()`
- **`i`** — 5 function(s): `a()`, `return()`, `for()`, `if()`, `while()`
- **`j`** — 8 function(s): `a()`, `j()`, `super()`, `c()`, `d()`, `if()`, `f()`, `e()`
- **`k`** — 10 function(s): `a()`, `k()`, `super()`, `c()`, `d()`, `f()`, `if()`, `switch()`, `while()`, `e()`
- **`l`** — 11 function(s): `l()`, `super()`, `toString()`, `c()`, `d()`, `a()`, `f()`, `if()`, `switch()`, `b()`, `e()`
- **`m`** — 7 function(s): `m()`, `a()`, `if()`, `for()`, `b()`, `return()`, `while()`
- **`n`** — 11 function(s): `n()`, `super()`, `toString()`, `c()`, `d()`, `a()`, `switch()`, `b()`, `if()`, `f()`, `e()`
- **`o`** — 12 function(s): `o()`, `a()`, `b()`, `if()`, `c()`, `g()`, `toString()`, `while()`, `d()`, `for()`, `e()`, `f()`
- **`p`** — 13 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `p()`, `g()`, `h()`, `for()`, `if()`, `switch()`, `i()`

</details>

### Package `androidx.d.d.a`  (4 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | n | 260 | 66 |
| `b` | class | p | 415 | 81 |
| `c` | class | View | 143 | 17 |
| `d` | class | c | 122 | 24 |

<details>
<summary><b>Function list for <code>androidx.d.d.a</code></b> (click to expand)</summary>

- **`a`** — 24 function(s): `a()`, `super()`, `setPadding()`, `if()`, `for()`, `setWarmth()`, `setSaturation()`, `setContrast()`, `setRound()`, `setRoundPercent()`, `setOverlay()`, `getSaturation()`, `getContrast()`, `getWarmth()`, `setCrossfade()`, `getCrossfade()`, `setBrightness()`, `getOutline()`, `setOutlineProvider()`, `setClipToOutline()`, `invalidateOutline()`, `getRoundPercent()`, `getRound()`, `draw()`
- **`b`** — 26 function(s): `a()`, `b()`, `if()`, `c()`, `super()`, `for()`, `setWarmth()`, `setSaturation()`, `setContrast()`, `setRound()`, `setRoundPercent()`, `setOverlay()`, `getSaturation()`, `getContrast()`, `getWarmth()`, `setCrossfade()`, `getCrossfade()`, `setBrightness()`, `getBrightness()`, `getOutline()`, `setOutlineProvider()`, `setClipToOutline()`, `invalidateOutline()`, `getRoundPercent()`, `getRound()`, `draw()`
- **`c`** — 6 function(s): `c()`, `super()`, `a()`, `if()`, `for()`, `onDraw()`
- **`d`** — 12 function(s): `d()`, `super()`, `a()`, `if()`, `for()`, `onAttachedToWindow()`, `setText()`, `requestLayout()`, `onLayout()`, `postInvalidate()`, `onDraw()`, `getMatrix()`

</details>

### Package `androidx.d.e`  (15 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | c | 132 | 29 |
| `b` | class | — | 400 | 45 |
| `c` | class | View | 435 | 118 |
| `d` | class | ViewGroup | 2,355 | 337 |
| `e` | class | — | 331 | 55 |
| `f` | class | — | 759 | 162 |
| `g` | class | — | 2,946 | 515 |
| `h` | class | ViewGroup | 172 | 26 |
| `i` | class | — | 11 | 2 |
| `j` | class | c | 53 | 14 |
| `k` | class | View | 62 | 18 |
| `l` | class | View | 149 | 34 |
| `m` | class | — | 2,596 | 14 |
| `n` | class | — | 313 | 62 |
| `o` | class | c | 86 | 21 |

<details>
<summary><b>Function list for <code>androidx.d.e</code></b> (click to expand)</summary>

- **`a`** — 11 function(s): `a()`, `super()`, `getType()`, `setType()`, `if()`, `for()`, `c()`, `setAllowsGoneWidget()`, `setDpMargin()`, `getMargin()`, `setMargin()`
- **`b`** — 8 function(s): `c()`, `return()`, `a()`, `b()`, `switch()`, `RuntimeException()`, `if()`, `for()`
- **`c`** — 21 function(s): `a()`, `b()`, `f()`, `g()`, `onDraw()`, `c()`, `super()`, `if()`, `for()`, `setIds()`, `setReferenceTags()`, `onAttachedToWindow()`, `requestLayout()`, `while()`, `getReferencedIds()`, `setReferencedIds()`, `onMeasure()`, `setMeasuredDimension()`, `d()`, `e()`, `setTag()`
- **`d`** — 42 function(s): `shouldDelayChildPressedState()`, `a()`, `if()`, `d()`, `super()`, `setId()`, `b()`, `switch()`, `for()`, `c()`, `addView()`, `onViewAdded()`, `removeView()`, `onViewRemoved()`, `setMinWidth()`, `requestLayout()`, `setMinHeight()`, `getMinWidth()`, `getMinHeight()`, `setMaxWidth()`, `setMaxHeight()`, `getMaxWidth()`, `getMaxHeight()`, `while()`, `return()`, `setMeasuredDimension()`, `onMeasure()`, `j()`, `getPaddingWidth()`, `onLayout()`, `setOptimizationLevel()`, `getOptimizationLevel()`, `generateLayoutParams()`, `generateDefaultLayoutParams()`, `checkLayoutParams()`, `setConstraintSet()`, `g()`, `dispatchDraw()`, `setOnConstraintsChanged()`, `C0051a()`, `resolveLayoutDirection()`, `forceLayout()`
- **`e`** — 8 function(s): `e()`, `a()`, `if()`, `return()`, `b()`, `for()`, `while()`, `switch()`
- **`f`** — 20 function(s): `p()`, `switch()`, `c()`, `i()`, `a()`, `if()`, `IllegalArgumentException()`, `b()`, `d()`, `e()`, `f()`, `g()`, `h()`, `j()`, `k()`, `l()`, `m()`, `n()`, `o()`, `RuntimeException()`
- **`g`** — 30 function(s): `m()`, `switch()`, `a()`, `l()`, `for()`, `if()`, `RuntimeException()`, `IllegalArgumentException()`, `b()`, `clone()`, `c()`, `d()`, `e()`, `while()`, `f()`, `g()`, `h()`, `i()`, `j()`, `k()`, `n()`, `o()`, `p()`, `q()`, `r()`, `s()`, `t()`, `u()`, `v()`, `return()`
- **`h`** — 10 function(s): `onLayout()`, `h()`, `super()`, `b()`, `generateLayoutParams()`, `a()`, `for()`, `if()`, `generateDefaultLayoutParams()`, `getConstraintSet()`
- **`i`** — 2 function(s): `a()`, `b()`
- **`j`** — 8 function(s): `j()`, `super()`, `a()`, `onAttachedToWindow()`, `d()`, `setVisibility()`, `setElevation()`, `b()`
- **`k`** — 10 function(s): `draw()`, `setVisibility()`, `k()`, `super()`, `onMeasure()`, `setMeasuredDimension()`, `setGuidelineBegin()`, `setLayoutParams()`, `setGuidelineEnd()`, `setGuidelinePercent()`
- **`l`** — 12 function(s): `l()`, `super()`, `a()`, `if()`, `for()`, `setEmptyVisibility()`, `getEmptyVisibility()`, `getContent()`, `onDraw()`, `setVisibility()`, `setContentId()`, `b()`
- **`m`** — 14 function(s): `m()`, `a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`, `k()`, `l()`, `C0052m()`
- **`n`** — 8 function(s): `n()`, `a()`, `for()`, `if()`, `while()`, `switch()`, `return()`, `b()`
- **`o`** — 9 function(s): `a()`, `o()`, `super()`, `if()`, `for()`, `onAttachedToWindow()`, `setVisibility()`, `d()`, `setElevation()`

</details>

### Package `androidx.e`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 8 | 1 |

<details>
<summary><b>Function list for <code>androidx.e</code></b> (click to expand)</summary>

- **`a`** — 1 function(s): `a()`

</details>

### Package `androidx.e.a`  (4 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | BaseAdapter implements Filterable, b.a | 280 | 65 |
| `b` | class | Filter | 56 | 10 |
| `c` | class | a | 58 | 10 |
| `d` | class | c | 154 | 36 |

<details>
<summary><b>Function list for <code>androidx.e.a</code></b> (click to expand)</summary>

- **`a`** — 22 function(s): `a()`, `hasStableIds()`, `if()`, `c()`, `getCount()`, `getItem()`, `getItemId()`, `getView()`, `IllegalStateException()`, `getDropDownView()`, `b()`, `notifyDataSetChanged()`, `notifyDataSetInvalidated()`, `getFilter()`, `d()`, `e()`, `deliverSelfNotifications()`, `C0053a()`, `super()`, `onChange()`, `onChanged()`, `onInvalidated()`
- **`b`** — 7 function(s): `a()`, `b()`, `c()`, `convertResultToString()`, `performFiltering()`, `if()`, `publishResults()`
- **`c`** — 4 function(s): `c()`, `super()`, `a()`, `b()`
- **`d`** — 9 function(s): `a()`, `d()`, `super()`, `for()`, `if()`, `IllegalStateException()`, `b()`, `f()`, `c()`

</details>

### Package `androidx.f`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 212 | 11 |

<details>
<summary><b>Function list for <code>androidx.f</code></b> (click to expand)</summary>

- **`a`** — 11 function(s): `a()`, `C0054a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`

</details>

### Package `androidx.f.a`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | Parcelable | 75 | 16 |

<details>
<summary><b>Function list for <code>androidx.f.a</code></b> (click to expand)</summary>

- **`a`** — 9 function(s): `createFromParcel()`, `if()`, `IllegalStateException()`, `newArray()`, `describeContents()`, `a()`, `IllegalArgumentException()`, `this()`, `writeToParcel()`

</details>

### Package `androidx.f.b`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | androidx.core.n.a | 555 | 160 |
| `b` | class | Comparator<T> | 269 | 81 |
| `c` | class | — | 862 | 217 |

<details>
<summary><b>Function list for <code>androidx.f.b</code></b> (click to expand)</summary>

- **`a`** — 17 function(s): `a()`, `e()`, `switch()`, `b()`, `if()`, `IllegalArgumentException()`, `f()`, `while()`, `g()`, `d()`, `c()`, `for()`, `RuntimeException()`, `h()`, `i()`, `j()`, `C0055a()`
- **`b`** — 13 function(s): `a()`, `return()`, `for()`, `switch()`, `IllegalArgumentException()`, `if()`, `b()`, `c()`, `compare()`, `d()`, `e()`, `f()`, `g()`
- **`c`** — 19 function(s): `getInterpolation()`, `return()`, `run()`, `a()`, `b()`, `c()`, `if()`, `IllegalArgumentException()`, `d()`, `e()`, `f()`, `g()`, `i()`, `h()`, `IllegalStateException()`, `for()`, `switch()`, `j()`, `while()`

</details>

### Package `androidx.fragment`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 252 | 11 |

<details>
<summary><b>Function list for <code>androidx.fragment</code></b> (click to expand)</summary>

- **`a`** — 11 function(s): `a()`, `C0057a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`

</details>

### Package `androidx.fragment.app`  (25 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | s implements j.a, k.e | 635 | 123 |
| `b` | class | Parcelable | 180 | 14 |
| `c` | class | d implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener | 324 | 73 |
| `d` | class | ComponentCallbacks, View.OnCreateContextMenuListener, androidx.lifecycle.j, androidx.li... | 1,633 | 413 |
| `e` | class | androidx.activity.b implements a.InterfaceC0023a, a.c | 619 | 126 |
| `f` | class | — | 22 | 3 |
| `g` | class | — | 220 | 49 |
| `h` | class | — | 59 | 5 |
| `i` | class | f | 133 | 27 |
| `j` | class | — | 172 | 51 |
| `k` | class | j implements LayoutInflater.Factory2 | 2,947 | 826 |
| `l` | class | — | 53 | 6 |
| `m` | class | Parcelable | 60 | 7 |
| `n` | class | androidx.lifecycle.v | 221 | 46 |
| `o` | class | androidx.l.a.a | 143 | 30 |
| `p` | class | Parcelable | 164 | 19 |
| `q` | class | androidx.l.a.a | 198 | 42 |
| `r` | class | TabHost implements TabHost.OnTabChangeListener | 322 | 64 |
| `s` | class | — | 332 | 78 |
| `t` | class | — | 857 | 185 |
| `u` | class | v | 270 | 66 |
| `v` | class | — | 217 | 59 |
| `w` | class | androidx.lifecycle.j | 37 | 6 |
| `x` | class | d | 243 | 54 |
| `y` | class | AndroidRuntimeException | 11 | 2 |

<details>
<summary><b>Function list for <code>androidx.fragment.app</code></b> (click to expand)</summary>

- **`a`** — 23 function(s): `toString()`, `if()`, `a()`, `for()`, `switch()`, `b()`, `c()`, `d()`, `e()`, `IllegalStateException()`, `IllegalArgumentException()`, `f()`, `g()`, `h()`, `i()`, `p()`, `j()`, `k()`, `while()`, `l()`, `return()`, `m()`, `n()`
- **`b`** — 9 function(s): `createFromParcel()`, `b()`, `newArray()`, `describeContents()`, `if()`, `IllegalStateException()`, `while()`, `a()`, `writeToParcel()`
- **`c`** — 22 function(s): `run()`, `if()`, `onCancel()`, `a()`, `b()`, `onDismiss()`, `G()`, `e()`, `g()`, `IllegalStateException()`, `h()`, `i()`, `j()`, `k()`, `c()`, `return()`, `switch()`, `Dialog()`, `d()`, `l()`, `m()`, `n()`
- **`d`** — 107 function(s): `a()`, `b()`, `ad()`, `c()`, `e()`, `h()`, `i()`, `j()`, `o()`, `if()`, `IllegalStateException()`, `p()`, `d()`, `f()`, `createFromParcel()`, `C0058d()`, `newArray()`, `describeContents()`, `writeToParcel()`, `super()`, `run()`, `this()`, `k()`, `y()`, `q()`, `equals()`, `hashCode()`, `toString()`, `r()`, `s()`, `g()`, `t()`, `u()`, `v()`, `IllegalArgumentException()`, `for()`, `w()`, `x()`, `z()`, `A()`, `return()`, `B()`, `C()`, `D()`, `E()`, `F()`, `G()`, `H()`, `I()`, `J()`, `K()`, `L()`, `M()`, `N()`, `O()`, `P()`, `Q()`, `R()`, `S()`, `T()`, `U()`, `V()`, `W()`, `X()`, `Y()`, `l()`, `Z()`, `onConfigurationChanged()`, `aa()`, `m()`, `onLowMemory()`, `n()`, `ab()`, `ac()`, `onCreateContextMenu()`, `ae()`, `af()`, `ag()`, `ah()`, `ai()`, `aj()`, `ak()`, `al()`, `am()`, `an()`, `ao()`, `ap()`, `aq()`, `ar()`, `as()`, `at()`, `au()`, `av()`, `aw()`, `ax()`, `ay()`, `az()`, `aA()`, `aB()`, `aC()`, `aD()`, `aE()`, `aF()`, `aG()`, `aH()`, `aI()`, `aJ()`
- **`e`** — 47 function(s): `a()`, `e()`, `super()`, `onActivityResult()`, `if()`, `m()`, `b()`, `n()`, `o()`, `onMultiWindowModeChanged()`, `onPictureInPictureModeChanged()`, `onConfigurationChanged()`, `onCreate()`, `for()`, `onCreatePanelMenu()`, `onCreateView()`, `onDestroy()`, `onLowMemory()`, `onMenuItemSelected()`, `onPanelClosed()`, `onPause()`, `onNewIntent()`, `onStateNotSaved()`, `onResume()`, `onPostResume()`, `p()`, `onPreparePanel()`, `onSaveInstanceState()`, `g()`, `onStart()`, `onStop()`, `h()`, `invalidateOptionsMenu()`, `dump()`, `q()`, `r()`, `startActivityForResult()`, `startIntentSenderForResult()`, `IllegalArgumentException()`, `d()`, `onRequestPermissionsResult()`, `IllegalStateException()`, `while()`, `c()`, `j()`, `i()`, `return()`
- **`f`** — 1 function(s): `a()`
- **`g`** — 27 function(s): `a()`, `c()`, `n()`, `s()`, `t()`, `u()`, `v()`, `w()`, `g()`, `b()`, `UnsupportedOperationException()`, `d()`, `e()`, `if()`, `IllegalStateException()`, `f()`, `ArrayList()`, `h()`, `i()`, `j()`, `k()`, `l()`, `m()`, `o()`, `p()`, `q()`, `r()`
- **`h`** — 5 function(s): `if()`, `a()`, `d()`, `c()`, `b()`
- **`i`** — 12 function(s): `a()`, `b()`, `g()`, `h()`, `j()`, `i()`, `this()`, `if()`, `IllegalStateException()`, `k()`, `l()`, `m()`
- **`j`** — 13 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `m()`, `f()`, `g()`, `h()`, `i()`, `k()`, `j()`, `if()`
- **`k`** — 58 function(s): `c()`, `run()`, `a()`, `b()`, `if()`, `e()`, `H()`, `L()`, `I()`, `l()`, `q()`, `d()`, `J()`, `IllegalArgumentException()`, `K()`, `r()`, `N()`, `f()`, `g()`, `synchronized()`, `m()`, `ArrayList()`, `n()`, `h()`, `toString()`, `for()`, `switch()`, `IllegalStateException()`, `i()`, `s()`, `onAnimationRepeat()`, `onAnimationStart()`, `onAnimationEnd()`, `j()`, `k()`, `o()`, `p()`, `while()`, `v()`, `M()`, `t()`, `u()`, `w()`, `x()`, `y()`, `z()`, `A()`, `B()`, `C()`, `D()`, `E()`, `F()`, `G()`, `return()`, `onCreateView()`, `super()`, `addAnimation()`, `getTransformation()`
- **`l`** — 5 function(s): `l()`, `a()`, `if()`, `b()`, `c()`
- **`m`** — 5 function(s): `createFromParcel()`, `m()`, `newArray()`, `describeContents()`, `writeToParcel()`
- **`n`** — 15 function(s): `a()`, `n()`, `return()`, `if()`, `b()`, `c()`, `d()`, `e()`, `f()`, `for()`, `l()`, `equals()`, `hashCode()`, `toString()`, `while()`
- **`o`** — 7 function(s): `a()`, `b()`, `o()`, `this()`, `if()`, `IllegalStateException()`, `return()`
- **`p`** — 8 function(s): `createFromParcel()`, `p()`, `newArray()`, `describeContents()`, `a()`, `if()`, `toString()`, `writeToParcel()`
- **`q`** — 9 function(s): `a()`, `q()`, `this()`, `if()`, `IllegalStateException()`, `while()`, `b()`, `return()`, `for()`
- **`r`** — 24 function(s): `c()`, `a()`, `createTabContent()`, `createFromParcel()`, `b()`, `newArray()`, `super()`, `writeToParcel()`, `toString()`, `r()`, `if()`, `addView()`, `setup()`, `IllegalStateException()`, `setId()`, `setOnTabChangedListener()`, `addTab()`, `onAttachedToWindow()`, `for()`, `onDetachedFromWindow()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `setCurrentTabByTag()`, `onTabChanged()`
- **`s`** — 16 function(s): `g()`, `h()`, `i()`, `j()`, `a()`, `if()`, `IllegalStateException()`, `IllegalArgumentException()`, `b()`, `c()`, `d()`, `f()`, `e()`, `n()`, `o()`, `p()`
- **`t`** — 9 function(s): `b()`, `return()`, `a()`, `if()`, `for()`, `run()`, `IllegalArgumentException()`, `switch()`, `t()`
- **`u`** — 13 function(s): `a()`, `b()`, `if()`, `return()`, `c()`, `for()`, `onGetEpicenter()`, `while()`, `onTransitionCancel()`, `onTransitionPause()`, `onTransitionResume()`, `onTransitionStart()`, `onTransitionEnd()`
- **`v`** — 7 function(s): `a()`, `b()`, `c()`, `for()`, `if()`, `while()`, `run()`
- **`w`** — 4 function(s): `a()`, `if()`, `b()`, `c()`
- **`x`** — 12 function(s): `run()`, `onItemClick()`, `a()`, `i()`, `n()`, `if()`, `e()`, `b()`, `IllegalStateException()`, `g()`, `h()`, `RuntimeException()`
- **`y`** — 2 function(s): `y()`, `super()`

</details>

### Package `androidx.g`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 212 | 11 |

<details>
<summary><b>Function list for <code>androidx.g</code></b> (click to expand)</summary>

- **`a`** — 11 function(s): `a()`, `C0059a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`

</details>

### Package `androidx.g.a`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | ViewGroup | 1,735 | 421 |

<details>
<summary><b>Function list for <code>androidx.g.a</code></b> (click to expand)</summary>

- **`a`** — 68 function(s): `a()`, `b()`, `if()`, `this()`, `super()`, `setDescendantFocusability()`, `setFocusableInTouchMode()`, `setMotionEventSplittingEnabled()`, `setOnApplyWindowInsetsListener()`, `onApplyWindowInsets()`, `setSystemUiVisibility()`, `setDrawerElevation()`, `for()`, `getDrawerElevation()`, `setWillNotDraw()`, `requestLayout()`, `e()`, `invalidate()`, `setScrimColor()`, `setDrawerListener()`, `setDrawerLockMode()`, `switch()`, `i()`, `h()`, `IllegalArgumentException()`, `c()`, `sendAccessibilityEvent()`, `d()`, `return()`, `onDetachedFromWindow()`, `onAttachedToWindow()`, `onMeasure()`, `setMeasuredDimension()`, `while()`, `IllegalStateException()`, `f()`, `g()`, `onLayout()`, `computeScroll()`, `m()`, `setStatusBarBackground()`, `getStatusBarBackgroundDrawable()`, `setStatusBarBackgroundColor()`, `onRtlPropertiesChanged()`, `onDraw()`, `drawChild()`, `onInterceptTouchEvent()`, `dispatchGenericMotionEvent()`, `onTouchEvent()`, `requestDisallowInterceptTouchEvent()`, `j()`, `k()`, `generateDefaultLayoutParams()`, `generateLayoutParams()`, `checkLayoutParams()`, `addFocusables()`, `getChildAt()`, `onKeyDown()`, `onKeyUp()`, `onRestoreInstanceState()`, `onSaveInstanceState()`, `addView()`, `l()`, `createFromParcel()`, `newArray()`, `writeToParcel()`, `run()`, `C0060a()`

</details>

### Package `androidx.h`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 8 | 1 |

<details>
<summary><b>Function list for <code>androidx.h</code></b> (click to expand)</summary>

- **`a`** — 1 function(s): `a()`

</details>

### Package `androidx.h.a.a`  (4 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | d | 18 | 2 |
| `b` | class | d | 18 | 2 |
| `c` | class | d | 18 | 2 |
| `d` | class | Interpolator | 30 | 4 |

<details>
<summary><b>Function list for <code>androidx.h.a.a</code></b> (click to expand)</summary>

- **`a`** — 2 function(s): `a()`, `super()`
- **`b`** — 2 function(s): `b()`, `super()`
- **`c`** — 2 function(s): `c()`, `super()`
- **`d`** — 3 function(s): `d()`, `getInterpolation()`, `if()`

</details>

### Package `androidx.i`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 212 | 11 |

<details>
<summary><b>Function list for <code>androidx.i</code></b> (click to expand)</summary>

- **`a`** — 11 function(s): `a()`, `C0061a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`

</details>

### Package `androidx.i.a`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 62 | 13 |
| `b` | class | androidx.i.a.a | 471 | 101 |

<details>
<summary><b>Function list for <code>androidx.i.a</code></b> (click to expand)</summary>

- **`a`** — 2 function(s): `a()`, `b()`
- **`b`** — 15 function(s): `a()`, `g()`, `if()`, `d()`, `b()`, `h()`, `i()`, `return()`, `toString()`, `C0063b()`, `c()`, `f()`, `for()`, `IllegalArgumentException()`, `IllegalStateException()`

</details>

### Package `androidx.i.b`  (4 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | c<D> | 239 | 54 |
| `b` | class | a<Cursor> | 210 | 42 |
| `c` | class | ContentObserver | 265 | 63 |
| `d` | class | Handler | 259 | 50 |

<details>
<summary><b>Function list for <code>androidx.i.b</code></b> (click to expand)</summary>

- **`a`** — 18 function(s): `a()`, `d()`, `f()`, `RunnableC0064a()`, `return()`, `if()`, `b()`, `run()`, `this()`, `super()`, `y()`, `c()`, `G()`, `r()`, `F()`, `e()`, `g()`, `h()`
- **`b`** — 17 function(s): `d()`, `synchronized()`, `if()`, `k()`, `f()`, `b()`, `super()`, `j()`, `z()`, `y()`, `a()`, `l()`, `m()`, `n()`, `o()`, `p()`, `q()`
- **`c`** — 30 function(s): `a()`, `C()`, `b()`, `j()`, `k()`, `l()`, `deliverSelfNotifications()`, `super()`, `onChange()`, `c()`, `if()`, `r()`, `s()`, `t()`, `IllegalStateException()`, `IllegalArgumentException()`, `u()`, `v()`, `w()`, `x()`, `y()`, `z()`, `A()`, `B()`, `D()`, `E()`, `F()`, `G()`, `H()`, `toString()`
- **`d`** — 18 function(s): `newThread()`, `Thread()`, `call()`, `done()`, `RuntimeException()`, `a()`, `b()`, `c()`, `d()`, `synchronized()`, `if()`, `e()`, `f()`, `switch()`, `IllegalStateException()`, `super()`, `handleMessage()`, `AbstractCallableC0066d()`

</details>

### Package `androidx.j`  (62 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 65 | 15 |
| `aa` | class | — | 221 | 11 |
| `ab` | class | TypeEvaluator<Rect> | 35 | 5 |
| `ac` | class | — | 105 | 21 |
| `ad` | class | bg | 113 | 24 |
| `ae` | class | bf | 193 | 35 |
| `af` | class | — | 174 | 1 |
| `ag` | class | Cloneable | 1,314 | 322 |
| `ah` | class | — | 281 | 62 |
| `ai` | class | ag.e | 27 | 5 |
| `aj` | class | View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener | 221 | 51 |
| `ak` | class | — | 13 | 3 |
| `al` | class | ag | 543 | 121 |
| `am` | class | TypeEvaluator<Matrix> | 144 | 15 |
| `an` | class | — | 44 | 8 |
| `ao` | class | — | 16 | 0 |
| `ap` | class | AnimatorListenerAdapter implements ag.e | 123 | 15 |
| `aq` | class | av implements as | 30 | 6 |
| `ar` | class | as | 40 | 5 |
| `as` | class | ax | 11 | 2 |
| `at` | class | — | 73 | 14 |
| `au` | class | — | 123 | 19 |
| `av` | class | ax | 236 | 56 |
| `aw` | class | ax | 29 | 3 |
| `ax` | class | — | 11 | 2 |
| `ay` | class | — | 125 | 22 |
| `az` | class | be | 48 | 6 |
| `b` | class | w | 137 | 22 |
| `ba` | class | az | 52 | 6 |
| `bb` | class | ba | 25 | 2 |
| `bc` | class | bb | 28 | 2 |
| `bd` | class | bc | 44 | 7 |
| `be` | class | — | 161 | 29 |
| `bf` | class | ag | 429 | 94 |
| `bg` | class | ak | 58 | 11 |
| `bh` | class | bj | 24 | 4 |
| `bi` | class | bj | 26 | 4 |
| `bj` | class | — | 6 | 0 |
| `c` | class | al | 22 | 8 |
| `d` | class | — | 65 | 12 |
| `e` | class | ag | 419 | 65 |
| `f` | class | ag | 89 | 18 |
| `g` | class | ag | 181 | 33 |
| `h` | class | ag | 72 | 13 |
| `i` | class | ag | 416 | 73 |
| `j` | class | bg | 59 | 10 |
| `k` | class | bf | 131 | 24 |
| `l` | class | bf | 108 | 22 |
| `m` | class | — | 30 | 4 |
| `n` | class | androidx.fragment.app.v | 260 | 64 |
| `o` | class | — | 12 | 2 |
| `p` | class | FrameLayout | 132 | 35 |
| `q` | class | o | 104 | 20 |
| `r` | class | ViewGroup implements o | 170 | 36 |
| `s` | class | — | 31 | 5 |
| `t` | class | — | 90 | 16 |
| `u` | class | — | 193 | 65 |
| `v` | class | — | 23 | 3 |
| `w` | class | — | 17 | 3 |
| `x` | class | Property<T, Float> | 45 | 4 |
| `y` | class | w | 87 | 14 |
| `z` | class | — | 23 | 3 |

<details>
<summary><b>Function list for <code>androidx.j</code></b> (click to expand)</summary>

- **`a`** — 6 function(s): `onAnimationPause()`, `onAnimationResume()`, `a()`, `if()`, `for()`, `b()`
- **`aa`** — 11 function(s): `aa()`, `a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`
- **`ab`** — 4 function(s): `ab()`, `evaluate()`, `if()`, `Rect()`
- **`ac`** — 7 function(s): `a()`, `if()`, `ac()`, `b()`, `c()`, `return()`, `d()`
- **`ad`** — 4 function(s): `a()`, `if()`, `IllegalArgumentException()`, `return()`
- **`ae`** — 8 function(s): `a()`, `if()`, `b()`, `c()`, `ae()`, `super()`, `e()`, `IllegalArgumentException()`
- **`af`** — 1 function(s): `af()`
- **`ag`** — 30 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `ag()`, `if()`, `while()`, `InflateException()`, `f()`, `for()`, `IllegalArgumentException()`, `switch()`, `g()`, `l()`, `m()`, `onAnimationStart()`, `onAnimationEnd()`, `h()`, `i()`, `j()`, `return()`, `n()`, `o()`, `p()`, `q()`, `r()`, `toString()`, `clone()`, `t()`
- **`ah`** — 8 function(s): `ah()`, `a()`, `InflateException()`, `while()`, `if()`, `b()`, `RuntimeException()`, `synchronized()`
- **`ai`** — 5 function(s): `a()`, `b()`, `c()`, `d()`, `e()`
- **`aj`** — 9 function(s): `a()`, `if()`, `c()`, `b()`, `onViewAttachedToWindow()`, `onViewDetachedFromWindow()`, `while()`, `onPreDraw()`, `for()`
- **`ak`** — 1 function(s): `a()`
- **`al`** — 20 function(s): `c()`, `d()`, `al()`, `super()`, `a()`, `switch()`, `AndroidRuntimeException()`, `b()`, `if()`, `for()`, `return()`, `u()`, `while()`, `e()`, `g()`, `l()`, `m()`, `f()`, `n()`, `clone()`
- **`am`** — 5 function(s): `a()`, `if()`, `evaluate()`, `for()`, `am()`
- **`an`** — 7 function(s): `an()`, `equals()`, `if()`, `hashCode()`, `return()`, `toString()`, `for()`
- **`ap`** — 10 function(s): `a()`, `if()`, `c()`, `d()`, `e()`, `onAnimationCancel()`, `onAnimationPause()`, `onAnimationResume()`, `b()`, `ap()`
- **`aq`** — 5 function(s): `aq()`, `super()`, `a()`, `return()`, `b()`
- **`ar`** — 3 function(s): `ar()`, `a()`, `b()`
- **`as`** — 2 function(s): `a()`, `b()`
- **`at`** — 6 function(s): `a()`, `if()`, `ar()`, `b()`, `return()`, `at()`
- **`au`** — 4 function(s): `a()`, `if()`, `isChangingLayout()`, `au()`
- **`av`** — 21 function(s): `av()`, `c()`, `while()`, `if()`, `return()`, `d()`, `for()`, `aq()`, `a()`, `b()`, `dispatchTouchEvent()`, `onLayout()`, `super()`, `setRight()`, `setBottom()`, `invalidate()`, `verifyDrawable()`, `IllegalStateException()`, `invalidateDrawable()`, `dispatchDraw()`, `invalidateChildInParent()`
- **`aw`** — 3 function(s): `aw()`, `a()`, `b()`
- **`ax`** — 2 function(s): `a()`, `b()`
- **`ay`** — 12 function(s): `if()`, `get()`, `set()`, `a()`, `aw()`, `b()`, `bi()`, `bh()`, `c()`, `d()`, `e()`, `ay()`
- **`az`** — 4 function(s): `b()`, `c()`, `a()`, `if()`
- **`b`** — 8 function(s): `b()`, `super()`, `a()`, `c()`, `d()`, `if()`, `IllegalArgumentException()`, `return()`
- **`ba`** — 4 function(s): `a()`, `if()`, `b()`, `c()`
- **`bb`** — 2 function(s): `a()`, `if()`
- **`bc`** — 2 function(s): `a()`, `if()`
- **`bd`** — 3 function(s): `a()`, `b()`, `c()`
- **`be`** — 5 function(s): `a()`, `if()`, `b()`, `c()`, `RuntimeException()`
- **`bf`** — 16 function(s): `a()`, `b()`, `c()`, `bf()`, `super()`, `if()`, `d()`, `IllegalArgumentException()`, `e()`, `return()`, `onAnimationRepeat()`, `onAnimationStart()`, `onAnimationPause()`, `onAnimationResume()`, `onAnimationCancel()`, `onAnimationEnd()`
- **`bg`** — 5 function(s): `a()`, `if()`, `b()`, `c()`, `d()`
- **`bh`** — 4 function(s): `bh()`, `equals()`, `return()`, `hashCode()`
- **`bi`** — 4 function(s): `bi()`, `equals()`, `return()`, `hashCode()`
- **`c`** — 4 function(s): `c()`, `u()`, `super()`, `a()`
- **`d`** — 5 function(s): `a()`, `if()`, `IllegalStateException()`, `RuntimeException()`, `d()`
- **`e`** — 12 function(s): `set()`, `get()`, `PointF()`, `e()`, `super()`, `a()`, `b()`, `d()`, `if()`, `onAnimationCancel()`, `onAnimationEnd()`, `c()`
- **`f`** — 7 function(s): `a()`, `f()`, `super()`, `d()`, `if()`, `b()`, `onAnimationEnd()`
- **`g`** — 12 function(s): `evaluate()`, `get()`, `set()`, `g()`, `super()`, `d()`, `if()`, `a()`, `b()`, `switch()`, `c()`, `Matrix()`
- **`h`** — 6 function(s): `h()`, `super()`, `a()`, `d()`, `b()`, `if()`
- **`i`** — 17 function(s): `get()`, `set()`, `i()`, `super()`, `b()`, `a()`, `c()`, `d()`, `if()`, `onAnimationCancel()`, `onAnimationEnd()`, `onAnimationPause()`, `onAnimationResume()`, `while()`, `equals()`, `hashCode()`, `return()`
- **`j`** — 4 function(s): `a()`, `if()`, `IllegalArgumentException()`, `return()`
- **`k`** — 7 function(s): `k()`, `a()`, `super()`, `e()`, `b()`, `if()`, `return()`
- **`l`** — 9 function(s): `l()`, `d()`, `super()`, `a()`, `if()`, `b()`, `return()`, `onAnimationStart()`, `onAnimationEnd()`
- **`m`** — 4 function(s): `m()`, `evaluate()`, `if()`, `for()`
- **`n`** — 9 function(s): `a()`, `b()`, `if()`, `return()`, `c()`, `for()`, `while()`, `d()`, `e()`
- **`o`** — 2 function(s): `a()`, `setVisibility()`
- **`p`** — 12 function(s): `p()`, `super()`, `setClipChildren()`, `onViewAdded()`, `if()`, `IllegalStateException()`, `onViewRemoved()`, `a()`, `return()`, `addView()`, `while()`, `for()`
- **`q`** — 7 function(s): `a()`, `b()`, `if()`, `q()`, `RuntimeException()`, `c()`, `setVisibility()`
- **`r`** — 15 function(s): `onLayout()`, `super()`, `onPreDraw()`, `if()`, `setWillNotDraw()`, `setLayerType()`, `setVisibility()`, `a()`, `onAttachedToWindow()`, `onDetachedFromWindow()`, `onDraw()`, `drawChild()`, `return()`, `b()`, `IllegalArgumentException()`
- **`s`** — 3 function(s): `a()`, `if()`, `s()`
- **`t`** — 4 function(s): `a()`, `if()`, `b()`, `t()`
- **`u`** — 24 function(s): `a()`, `IllegalStateException()`, `set()`, `reset()`, `setTranslate()`, `setScale()`, `setRotate()`, `setSinCos()`, `setSkew()`, `setConcat()`, `preTranslate()`, `preScale()`, `preRotate()`, `preSkew()`, `preConcat()`, `postTranslate()`, `postScale()`, `postRotate()`, `postSkew()`, `postConcat()`, `setRectToRect()`, `setPolyToPoly()`, `setValues()`, `u()`
- **`v`** — 3 function(s): `a()`, `if()`, `v()`
- **`w`** — 2 function(s): `a()`, `w()`
- **`x`** — 4 function(s): `x()`, `super()`, `get()`, `set()`
- **`y`** — 6 function(s): `y()`, `if()`, `RuntimeException()`, `a()`, `IllegalArgumentException()`, `return()`
- **`z`** — 3 function(s): `a()`, `if()`, `z()`

</details>

### Package `androidx.k`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 252 | 11 |

<details>
<summary><b>Function list for <code>androidx.k</code></b> (click to expand)</summary>

- **`a`** — 11 function(s): `a()`, `C0068a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`

</details>

### Package `androidx.k.a`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 252 | 11 |

<details>
<summary><b>Function list for <code>androidx.k.a</code></b> (click to expand)</summary>

- **`a`** — 11 function(s): `a()`, `C0069a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`

</details>

### Package `androidx.k.b.a`  (9 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 96 | 1 |
| `b` | class | Animatable | 49 | 9 |
| `c` | class | h implements androidx.k.b.a.b | 731 | 154 |
| `d` | class | — | 130 | 15 |
| `e` | class | — | 628 | 126 |
| `f` | class | TypeEvaluator | 34 | 2 |
| `g` | class | Interpolator | 156 | 40 |
| `h` | class | Drawable implements androidx.core.graphics.drawable.e | 148 | 34 |
| `i` | class | androidx.k.b.a.h | 1,586 | 305 |

<details>
<summary><b>Function list for <code>androidx.k.b.a</code></b> (click to expand)</summary>

- **`a`** — 1 function(s): `a()`
- **`b`** — 5 function(s): `a()`, `b()`, `if()`, `onAnimationStart()`, `onAnimationEnd()`
- **`c`** — 44 function(s): `this()`, `c()`, `invalidateDrawable()`, `scheduleDrawable()`, `unscheduleDrawable()`, `if()`, `mutate()`, `a()`, `XmlPullParserException()`, `getConstantState()`, `b()`, `getChangingConfigurations()`, `draw()`, `invalidateSelf()`, `onBoundsChange()`, `onStateChange()`, `onLevelChange()`, `getAlpha()`, `setAlpha()`, `setColorFilter()`, `getColorFilter()`, `setTint()`, `setTintList()`, `setTintMode()`, `setVisible()`, `isStateful()`, `getOpacity()`, `getIntrinsicWidth()`, `getIntrinsicHeight()`, `isAutoMirrored()`, `setAutoMirrored()`, `inflate()`, `while()`, `IllegalStateException()`, `applyTheme()`, `canApplyTheme()`, `newDrawable()`, `for()`, `isRunning()`, `return()`, `start()`, `stop()`, `onAnimationStart()`, `onAnimationEnd()`
- **`d`** — 5 function(s): `a()`, `if()`, `while()`, `RuntimeException()`, `d()`
- **`e`** — 11 function(s): `a()`, `if()`, `evaluate()`, `IllegalArgumentException()`, `for()`, `InflateException()`, `while()`, `RuntimeException()`, `return()`, `switch()`, `e()`
- **`f`** — 2 function(s): `a()`, `evaluate()`
- **`g`** — 9 function(s): `g()`, `this()`, `a()`, `if()`, `InflateException()`, `IllegalArgumentException()`, `for()`, `while()`, `getInterpolation()`
- **`h`** — 18 function(s): `setColorFilter()`, `if()`, `onLevelChange()`, `onBoundsChange()`, `setHotspot()`, `setHotspotBounds()`, `setFilterBitmap()`, `jumpToCurrentState()`, `applyTheme()`, `clearColorFilter()`, `getCurrent()`, `getMinimumWidth()`, `getMinimumHeight()`, `getPadding()`, `getState()`, `getTransparentRegion()`, `setChangingConfigurations()`, `setState()`
- **`i`** — 82 function(s): `mutate()`, `if()`, `a()`, `getConstantState()`, `h()`, `draw()`, `copyBounds()`, `getAlpha()`, `setAlpha()`, `invalidateSelf()`, `setColorFilter()`, `getColorFilter()`, `PorterDuffColorFilter()`, `setTint()`, `setTintList()`, `setTintMode()`, `isStateful()`, `onStateChange()`, `getOpacity()`, `getIntrinsicWidth()`, `return()`, `getIntrinsicHeight()`, `canApplyTheme()`, `isAutoMirrored()`, `setAutoMirrored()`, `XmlPullParserException()`, `inflate()`, `b()`, `switch()`, `while()`, `for()`, `onBoundsChange()`, `getChangingConfigurations()`, `scheduleSelf()`, `setVisible()`, `unscheduleSelf()`, `newDrawable()`, `g()`, `c()`, `i()`, `d()`, `f()`, `setRootAlpha()`, `getRootAlpha()`, `super()`, `IllegalStateException()`, `getGroupName()`, `getLocalMatrix()`, `getRotation()`, `setRotation()`, `getPivotX()`, `setPivotX()`, `getPivotY()`, `setPivotY()`, `getScaleX()`, `setScaleX()`, `getScaleY()`, `setScaleY()`, `getTranslateX()`, `setTranslateX()`, `getTranslateY()`, `setTranslateY()`, `e()`, `getPathName()`, `getPathData()`, `setPathData()`, `getStrokeColor()`, `setStrokeColor()`, `getStrokeWidth()`, `setStrokeWidth()`, `getStrokeAlpha()`, `setStrokeAlpha()`, `getFillColor()`, `setFillColor()`, `getFillAlpha()`, `setFillAlpha()`, `getTrimPathStart()`, `setTrimPathStart()`, `getTrimPathEnd()`, `setTrimPathEnd()`, `getTrimPathOffset()`, `setTrimPathOffset()`

</details>

### Package `androidx.l`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 212 | 11 |

<details>
<summary><b>Function list for <code>androidx.l</code></b> (click to expand)</summary>

- **`a`** — 11 function(s): `a()`, `C0070a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`

</details>

### Package `androidx.l.a`  (4 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 113 | 31 |
| `b` | class | c | 229 | 39 |
| `c` | class | ViewGroup | 383 | 71 |
| `d` | class | ViewGroup | 2,352 | 550 |

<details>
<summary><b>Function list for <code>androidx.l.a</code></b> (click to expand)</summary>

- **`a`** — 7 function(s): `a()`, `b()`, `c()`, `d()`, `UnsupportedOperationException()`, `synchronized()`, `if()`
- **`b`** — 22 function(s): `b()`, `this()`, `super()`, `setPadding()`, `setTextSpacing()`, `setWillNotDraw()`, `onClick()`, `if()`, `setTabIndicatorColor()`, `invalidate()`, `setTabIndicatorColorResource()`, `getTabIndicatorColor()`, `setBackgroundDrawable()`, `setBackgroundColor()`, `setBackgroundResource()`, `setDrawFullUnderline()`, `getDrawFullUnderline()`, `getMinHeight()`, `onTouchEvent()`, `switch()`, `onDraw()`, `a()`
- **`c`** — 23 function(s): `b()`, `getTransformation()`, `if()`, `setSingleLineAllCaps()`, `c()`, `this()`, `super()`, `addView()`, `a()`, `setNonPrimaryAlpha()`, `setTextSpacing()`, `requestLayout()`, `getTextSpacing()`, `setTextColor()`, `setGravity()`, `onAttachedToWindow()`, `IllegalStateException()`, `onDetachedFromWindow()`, `onMeasure()`, `setMeasuredDimension()`, `onLayout()`, `getMinHeight()`, `onChanged()`
- **`d`** — 85 function(s): `compare()`, `getInterpolation()`, `return()`, `a()`, `b()`, `d()`, `super()`, `run()`, `setWillNotDraw()`, `setDescendantFocusability()`, `setFocusable()`, `if()`, `for()`, `onDetachedFromWindow()`, `removeCallbacks()`, `setScrollState()`, `f()`, `setAdapter()`, `j()`, `scrollTo()`, `requestLayout()`, `while()`, `removeViewAt()`, `getAdapter()`, `getClientWidth()`, `setCurrentItem()`, `getCurrentItem()`, `setScrollingCacheEnabled()`, `e()`, `setOnPageChangeListener()`, `setChildrenDrawingOrderEnabled()`, `getChildDrawingOrder()`, `c()`, `getOffscreenPageLimit()`, `setOffscreenPageLimit()`, `setPageMargin()`, `getPageMargin()`, `setPageMarginDrawable()`, `refreshDrawableState()`, `invalidate()`, `verifyDrawable()`, `drawableStateChanged()`, `k()`, `IllegalStateException()`, `createFromParcel()`, `i()`, `newArray()`, `writeToParcel()`, `toString()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `addView()`, `addViewInLayout()`, `removeView()`, `removeViewInLayout()`, `onAttachedToWindow()`, `onMeasure()`, `setMeasuredDimension()`, `onSizeChanged()`, `onLayout()`, `computeScroll()`, `getChildAt()`, `onInterceptTouchEvent()`, `l()`, `onTouchEvent()`, `switch()`, `n()`, `m()`, `draw()`, `onDraw()`, `g()`, `canScrollHorizontally()`, `dispatchKeyEvent()`, `h()`, `playSoundEffect()`, `addFocusables()`, `addTouchables()`, `onRequestFocusInDescendants()`, `dispatchPopulateAccessibilityEvent()`, `generateDefaultLayoutParams()`, `generateLayoutParams()`, `checkLayoutParams()`, `C0071d()`, `onChanged()`, `onInvalidated()`

</details>

### Package `androidx.lifecycle`  (30 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `CompositeGeneratedAdaptersObserver` | class | h | 28 | 4 |
| `FullLifecycleObserverAdapter` | class | h | 48 | 5 |
| `LiveData` | class | LiveData<T>.b implements f | 273 | 68 |
| `ReflectiveGenericLifecycleObserver` | class | h | 25 | 2 |
| `SingleGeneratedAdapterObserver` | class | h | 23 | 2 |
| `a` | class | v | 23 | 3 |
| `b` | class | — | 210 | 50 |
| `c` | class | — | 95 | 14 |
| `d` | class | i | 17 | 6 |
| `e` | class | — | 11 | 1 |
| `f` | class | h | 10 | 0 |
| `g` | class | — | 50 | 5 |
| `h` | class | i | 10 | 1 |
| `i` | class | — | 6 | 0 |
| `j` | class | — | 10 | 1 |
| `k` | class | g | 234 | 61 |
| `l` | class | j | 11 | 1 |
| `m` | class | — | 162 | 40 |
| `n` | class | p<T> | 83 | 15 |
| `o` | class | — | 23 | 1 |
| `p` | class | LiveData<T> | 15 | 2 |
| `q` | class | — | 7 | 1 |
| `r` | class | — | 15 | 1 |
| `s` | class | — | 8 | 1 |
| `t` | class | Fragment | 115 | 32 |
| `u` | class | — | 55 | 9 |
| `v` | class | — | 74 | 18 |
| `w` | class | b | 128 | 28 |
| `x` | class | — | 39 | 7 |
| `y` | class | — | 10 | 1 |

<details>
<summary><b>Function list for <code>androidx.lifecycle</code></b> (click to expand)</summary>

- **`CompositeGeneratedAdaptersObserver`** — 3 function(s): `CompositeGeneratedAdaptersObserver()`, `a()`, `for()`
- **`FullLifecycleObserverAdapter`** — 5 function(s): `FullLifecycleObserverAdapter()`, `a()`, `switch()`, `IllegalArgumentException()`, `if()`
- **`LiveData`** — 14 function(s): `run()`, `synchronized()`, `a()`, `d()`, `b()`, `if()`, `while()`, `IllegalArgumentException()`, `c()`, `e()`, `f()`, `LifecycleBoundObserver()`, `super()`, `IllegalStateException()`
- **`ReflectiveGenericLifecycleObserver`** — 2 function(s): `ReflectiveGenericLifecycleObserver()`, `a()`
- **`SingleGeneratedAdapterObserver`** — 2 function(s): `SingleGeneratedAdapterObserver()`, `a()`
- **`a`** — 3 function(s): `a()`, `b()`, `return()`
- **`b`** — 12 function(s): `a()`, `if()`, `for()`, `c()`, `IllegalArgumentException()`, `b()`, `C0072b()`, `switch()`, `RuntimeException()`, `equals()`, `hashCode()`, `return()`
- **`c`** — 7 function(s): `c()`, `this()`, `run()`, `if()`, `while()`, `a()`, `b()`
- **`d`** — 6 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `f()`
- **`e`** — 1 function(s): `a()`
- **`g`** — 3 function(s): `a()`, `b()`, `compareTo()`
- **`h`** — 1 function(s): `a()`
- **`j`** — 1 function(s): `c()`
- **`k`** — 13 function(s): `k()`, `a()`, `b()`, `c()`, `if()`, `e()`, `while()`, `d()`, `switch()`, `IllegalArgumentException()`, `f()`, `IllegalStateException()`, `return()`
- **`l`** — 1 function(s): `a()`
- **`m`** — 14 function(s): `a()`, `f()`, `b()`, `if()`, `FullLifecycleObserverAdapter()`, `return()`, `SingleGeneratedAdapterObserver()`, `for()`, `CompositeGeneratedAdaptersObserver()`, `ReflectiveGenericLifecycleObserver()`, `RuntimeException()`, `c()`, `d()`, `m()`
- **`n`** — 6 function(s): `a()`, `if()`, `IllegalArgumentException()`, `while()`, `d()`, `b()`
- **`o`** — 1 function(s): `a()`
- **`p`** — 2 function(s): `a()`, `b()`
- **`q`** — 1 function(s): `a()`
- **`r`** — 1 function(s): `a()`
- **`s`** — 1 function(s): `s()`
- **`t`** — 12 function(s): `a()`, `b()`, `c()`, `if()`, `return()`, `d()`, `onActivityCreated()`, `onStart()`, `onResume()`, `onPause()`, `onStop()`, `onDestroy()`
- **`u`** — 4 function(s): `u()`, `a()`, `b()`, `if()`
- **`v`** — 6 function(s): `a()`, `e()`, `if()`, `synchronized()`, `while()`, `RuntimeException()`
- **`w`** — 9 function(s): `a()`, `c()`, `UnsupportedOperationException()`, `w()`, `this()`, `if()`, `IllegalArgumentException()`, `return()`, `RuntimeException()`
- **`x`** — 5 function(s): `a()`, `if()`, `HashSet()`, `b()`, `while()`
- **`y`** — 1 function(s): `d()`

</details>

### Package `androidx.lifecycle.a`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 8 | 1 |

<details>
<summary><b>Function list for <code>androidx.lifecycle.a</code></b> (click to expand)</summary>

- **`a`** — 1 function(s): `a()`

</details>

### Package `androidx.lifecycle.a.a`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 8 | 1 |

<details>
<summary><b>Function list for <code>androidx.lifecycle.a.a</code></b> (click to expand)</summary>

- **`a`** — 1 function(s): `a()`

</details>

### Package `androidx.lifecycle.b`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 8 | 1 |

<details>
<summary><b>Function list for <code>androidx.lifecycle.b</code></b> (click to expand)</summary>

- **`a`** — 1 function(s): `a()`

</details>

### Package `androidx.recyclerview`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 282 | 11 |

<details>
<summary><b>Function list for <code>androidx.recyclerview</code></b> (click to expand)</summary>

- **`a`** — 11 function(s): `a()`, `C0073a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`

</details>

### Package `androidx.recyclerview.widget`  (38 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `GridLayoutManager` | class | LinearLayoutManager | 1,128 | 252 |
| `LinearLayoutManager` | class | RecyclerView.i implements RecyclerView.v.b, m.e | 1,576 | 428 |
| `RecyclerView` | class | ViewGroup implements androidx.core.n.ac, androidx.core.n.r, androidx.core.n.s | 7,123 | 1918 |
| `StaggeredGridLayoutManager` | class | RecyclerView.i implements RecyclerView.v.b | 2,553 | 686 |
| `a` | class | v.a | 652 | 164 |
| `aa` | class | RecyclerView.f | 144 | 50 |
| `ab` | class | RecyclerView.l | 149 | 36 |
| `ac` | class | t, Comparator<T2> | 578 | 156 |
| `ad` | class | ac.b<T2> | 41 | 6 |
| `ae` | class | — | 32 | 9 |
| `af` | class | — | 86 | 15 |
| `ag` | class | — | 148 | 26 |
| `ah` | class | — | 244 | 46 |
| `b` | class | t | 36 | 5 |
| `c` | class | — | 86 | 10 |
| `d` | class | Executor | 193 | 38 |
| `e` | class | — | 334 | 68 |
| `f` | class | t | 88 | 15 |
| `g` | class | — | 364 | 102 |
| `h` | class | aa | 575 | 135 |
| `i` | class | — | 599 | 111 |
| `j` | class | RecyclerView.h | 124 | 23 |
| `k` | class | RecyclerView.h implements RecyclerView.m | 486 | 98 |
| `l` | class | Runnable | 310 | 66 |
| `m` | class | RecyclerView.h implements RecyclerView.k | 1,327 | 297 |
| `n` | class | — | 16 | 4 |
| `o` | class | n | 65 | 11 |
| `p` | class | — | 41 | 3 |
| `q` | class | RecyclerView.v | 166 | 38 |
| `r` | class | ab | 170 | 38 |
| `s` | class | RecyclerView.z> extends RecyclerView.a<VH> | 58 | 9 |
| `t` | class | — | 15 | 4 |
| `u` | class | ae<T> | 298 | 57 |
| `v` | class | — | 222 | 50 |
| `w` | class | — | 246 | 62 |
| `x` | class | ab | 189 | 44 |
| `y` | class | androidx.core.n.a | 195 | 37 |
| `z` | class | — | 53 | 12 |

<details>
<summary><b>Function list for <code>androidx.recyclerview.widget</code></b> (click to expand)</summary>

- **`GridLayoutManager`** — 23 function(s): `GridLayoutManager()`, `super()`, `a()`, `if()`, `UnsupportedOperationException()`, `b()`, `c()`, `ad()`, `ac()`, `for()`, `ae()`, `n()`, `g()`, `af()`, `while()`, `o()`, `IllegalArgumentException()`, `z()`, `d()`, `i()`, `j()`, `e()`, `return()`
- **`LinearLayoutManager`** — 47 function(s): `a()`, `f()`, `LinearLayoutManager()`, `this()`, `b()`, `d()`, `g()`, `c()`, `if()`, `h()`, `o()`, `z()`, `i()`, `j()`, `k()`, `l()`, `IllegalArgumentException()`, `m()`, `PointF()`, `for()`, `n()`, `E()`, `p()`, `e()`, `q()`, `r()`, `s()`, `while()`, `t()`, `return()`, `switch()`, `ac()`, `ad()`, `ae()`, `af()`, `u()`, `v()`, `w()`, `x()`, `ag()`, `y()`, `RuntimeException()`, `createFromParcel()`, `newArray()`, `describeContents()`, `writeToParcel()`, `toString()`
- **`RecyclerView`** — 175 function(s): `a()`, `b()`, `getAccessibilityClassName()`, `i()`, `j()`, `k()`, `m()`, `getInterpolation()`, `return()`, `RecyclerView()`, `this()`, `super()`, `run()`, `if()`, `c()`, `setScrollContainer()`, `setFocusableInTouchMode()`, `setWillNotDraw()`, `F()`, `E()`, `setAccessibilityDelegateCompat()`, `saveAttributeDataForStyleable()`, `setDescendantFocusability()`, `setNestedScrollingEnabled()`, `getCompatAccessibilityDelegate()`, `IllegalStateException()`, `setLayoutManager()`, `for()`, `IllegalArgumentException()`, `d()`, `switch()`, `setHasFixedSize()`, `setClipToPadding()`, `o()`, `requestLayout()`, `getClipToPadding()`, `setScrollingTouchSlop()`, `setLayoutFrozen()`, `setAdapter()`, `getAdapter()`, `setRecyclerListener()`, `getBaseline()`, `e()`, `setOnFlingListener()`, `getOnFlingListener()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `dispatchSaveInstanceState()`, `dispatchFreezeSelfOnly()`, `dispatchRestoreInstanceState()`, `dispatchThawSelfOnly()`, `h()`, `getLayoutManager()`, `getRecycledViewPool()`, `setRecycledViewPool()`, `setViewCacheExtension()`, `setItemViewCacheSize()`, `getScrollState()`, `setScrollState()`, `H()`, `n()`, `v()`, `IndexOutOfBoundsException()`, `getItemDecorationCount()`, `setChildDrawingOrderCallback()`, `setChildrenDrawingOrderEnabled()`, `setOnScrollListener()`, `f()`, `awakenScrollBars()`, `g()`, `scrollTo()`, `scrollBy()`, `p()`, `C()`, `q()`, `u()`, `G()`, `invalidate()`, `computeHorizontalScrollOffset()`, `computeHorizontalScrollExtent()`, `computeHorizontalScrollRange()`, `computeVerticalScrollOffset()`, `computeVerticalScrollExtent()`, `computeVerticalScrollRange()`, `suppressLayout()`, `onTouchEvent()`, `isLayoutSuppressed()`, `setLayoutTransition()`, `dispatchNestedFling()`, `getMinFlingVelocity()`, `getMaxFlingVelocity()`, `l()`, `I()`, `setEdgeEffectFactory()`, `getEdgeEffectFactory()`, `focusSearch()`, `offsetDescendantRectToMyCoords()`, `requestChildFocus()`, `offsetRectIntoDescendantCoords()`, `requestChildRectangleOnScreen()`, `addFocusables()`, `onRequestFocusInDescendants()`, `onAttachedToWindow()`, `onDetachedFromWindow()`, `removeCallbacks()`, `isAttachedToWindow()`, `onInterceptTouchEvent()`, `K()`, `getParent()`, `requestDisallowInterceptTouchEvent()`, `J()`, `onGenericMotionEvent()`, `onMeasure()`, `S()`, `T()`, `N()`, `setMeasuredDimension()`, `onSizeChanged()`, `setItemAnimator()`, `L()`, `D()`, `r()`, `sendAccessibilityEventUnchecked()`, `s()`, `dispatchPopulateAccessibilityEvent()`, `onPopulateAccessibilityEvent()`, `getItemAnimator()`, `t()`, `M()`, `U()`, `O()`, `P()`, `Q()`, `R()`, `requestFocus()`, `while()`, `x()`, `y()`, `removeDetachedView()`, `onLayout()`, `draw()`, `onDraw()`, `checkLayoutParams()`, `generateDefaultLayoutParams()`, `generateLayoutParams()`, `w()`, `z()`, `A()`, `getPreserveFocusAfterLayout()`, `setPreserveFocusAfterLayout()`, `drawChild()`, `onScrollChanged()`, `B()`, `EdgeEffect()`, `getNanoTime()`, `V()`, `W()`, `X()`, `Y()`, `Z()`, `aa()`, `ab()`, `toString()`, `getScrollingChildHelper()`, `isNestedScrollingEnabled()`, `startNestedScroll()`, `stopNestedScroll()`, `hasNestedScrollingParent()`, `dispatchNestedScroll()`, `dispatchNestedPreScroll()`, `dispatchNestedPreFling()`, `createFromParcel()`, `newArray()`, `writeToParcel()`, `getChildDrawingOrder()`
- **`StaggeredGridLayoutManager`** — 42 function(s): `run()`, `StaggeredGridLayoutManager()`, `b()`, `a()`, `u()`, `f()`, `if()`, `aa()`, `z()`, `m()`, `for()`, `c()`, `while()`, `k()`, `IllegalArgumentException()`, `e()`, `g()`, `v()`, `l()`, `E()`, `n()`, `w()`, `d()`, `i()`, `h()`, `j()`, `return()`, `switch()`, `o()`, `p()`, `x()`, `q()`, `r()`, `s()`, `t()`, `y()`, `super()`, `createFromParcel()`, `newArray()`, `describeContents()`, `writeToParcel()`, `toString()`
- **`a`** — 17 function(s): `a()`, `b()`, `c()`, `d()`, `this()`, `for()`, `if()`, `switch()`, `f()`, `g()`, `while()`, `e()`, `IllegalArgumentException()`, `return()`, `toString()`, `equals()`, `hashCode()`
- **`aa`** — 19 function(s): `a()`, `b()`, `c()`, `d()`, `q()`, `r()`, `s()`, `t()`, `u()`, `v()`, `k()`, `j()`, `if()`, `l()`, `f()`, `m()`, `n()`, `o()`, `p()`
- **`ab`** — 7 function(s): `a()`, `if()`, `return()`, `c()`, `b()`, `IllegalStateException()`, `q()`
- **`ac`** — 15 function(s): `ac()`, `this()`, `a()`, `f()`, `if()`, `c()`, `b()`, `d()`, `while()`, `e()`, `for()`, `IllegalStateException()`, `IndexOutOfBoundsException()`, `return()`, `compare()`
- **`ad`** — 5 function(s): `ad()`, `a()`, `b()`, `c()`, `d()`
- **`ae`** — 2 function(s): `a()`, `b()`
- **`af`** — 5 function(s): `af()`, `a()`, `if()`, `b()`, `c()`
- **`ag`** — 6 function(s): `a()`, `b()`, `ag()`, `if()`, `return()`, `while()`
- **`ah`** — 13 function(s): `a()`, `b()`, `c()`, `if()`, `return()`, `IllegalArgumentException()`, `d()`, `e()`, `f()`, `for()`, `g()`, `while()`, `h()`
- **`b`** — 3 function(s): `b()`, `a()`, `c()`
- **`c`** — 5 function(s): `a()`, `b()`, `c()`, `if()`, `synchronized()`
- **`d`** — 10 function(s): `a()`, `b()`, `execute()`, `d()`, `this()`, `if()`, `run()`, `AssertionError()`, `c()`, `while()`
- **`e`** — 9 function(s): `a()`, `if()`, `while()`, `b()`, `for()`, `e()`, `c()`, `d()`, `IndexOutOfBoundsException()`
- **`f`** — 6 function(s): `f()`, `a()`, `if()`, `switch()`, `b()`, `c()`
- **`g`** — 15 function(s): `a()`, `b()`, `c()`, `d()`, `g()`, `h()`, `if()`, `f()`, `while()`, `for()`, `e()`, `IllegalArgumentException()`, `RuntimeException()`, `toString()`, `return()`
- **`h`** — 20 function(s): `b()`, `a()`, `this()`, `toString()`, `if()`, `while()`, `w()`, `run()`, `x()`, `onAnimationStart()`, `onAnimationEnd()`, `c()`, `onAnimationCancel()`, `l()`, `for()`, `d()`, `k()`, `m()`, `return()`, `i()`
- **`i`** — 13 function(s): `compare()`, `a()`, `b()`, `c()`, `i()`, `while()`, `if()`, `for()`, `IllegalStateException()`, `f()`, `e()`, `IndexOutOfBoundsException()`, `d()`
- **`j`** — 7 function(s): `j()`, `if()`, `a()`, `IllegalArgumentException()`, `c()`, `d()`, `for()`
- **`k`** — 20 function(s): `run()`, `a()`, `k()`, `if()`, `j()`, `i()`, `l()`, `d()`, `c()`, `b()`, `switch()`, `e()`, `f()`, `g()`, `h()`, `m()`, `n()`, `onAnimationEnd()`, `onAnimationCancel()`, `onAnimationUpdate()`
- **`l`** — 7 function(s): `compare()`, `if()`, `b()`, `a()`, `IllegalArgumentException()`, `for()`, `run()`
- **`m`** — 25 function(s): `run()`, `if()`, `a()`, `b()`, `switch()`, `m()`, `e()`, `d()`, `f()`, `for()`, `h()`, `g()`, `IllegalArgumentException()`, `i()`, `onAnimationEnd()`, `c()`, `while()`, `return()`, `getInterpolation()`, `onDown()`, `onLongPress()`, `onAnimationRepeat()`, `onAnimationStart()`, `onAnimationUpdate()`, `onAnimationCancel()`
- **`n`** — 2 function(s): `a()`, `b()`
- **`o`** — 4 function(s): `b()`, `a()`, `if()`, `for()`
- **`p`** — 2 function(s): `a()`, `toString()`
- **`q`** — 11 function(s): `b()`, `if()`, `a()`, `q()`, `f()`, `k()`, `return()`, `c()`, `d()`, `switch()`, `IllegalArgumentException()`
- **`r`** — 7 function(s): `a()`, `if()`, `return()`, `for()`, `b()`, `d()`, `e()`
- **`s`** — 3 function(s): `a()`, `s()`, `b()`
- **`t`** — 3 function(s): `a()`, `b()`, `c()`
- **`u`** — 9 function(s): `run()`, `while()`, `switch()`, `AnonymousClass1()`, `a()`, `b()`, `if()`, `AnonymousClass2()`, `synchronized()`
- **`v`** — 8 function(s): `a()`, `v()`, `while()`, `if()`, `switch()`, `c()`, `b()`, `for()`
- **`w`** — 15 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`, `w()`, `if()`, `switch()`, `IllegalArgumentException()`, `return()`
- **`x`** — 10 function(s): `a()`, `if()`, `for()`, `b()`, `d()`, `q()`, `return()`, `e()`, `f()`, `g()`
- **`y`** — 6 function(s): `y()`, `if()`, `b()`, `a()`, `d()`, `c()`
- **`z`** — 5 function(s): `a()`, `if()`, `b()`, `return()`, `z()`

</details>

### Package `androidx.savedstate`  (5 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `Recreator` | class | f | 94 | 16 |
| `a` | class | — | 8 | 1 |
| `b` | class | — | 127 | 26 |
| `c` | class | — | 45 | 8 |
| `d` | class | j | 11 | 1 |

<details>
<summary><b>Function list for <code>androidx.savedstate</code></b> (click to expand)</summary>

- **`Recreator`** — 7 function(s): `Recreator()`, `a()`, `if()`, `AssertionError()`, `IllegalStateException()`, `while()`, `RuntimeException()`
- **`a`** — 1 function(s): `a()`
- **`b`** — 6 function(s): `a()`, `if()`, `IllegalStateException()`, `IllegalArgumentException()`, `b()`, `while()`
- **`c`** — 5 function(s): `c()`, `a()`, `if()`, `IllegalStateException()`, `b()`
- **`d`** — 1 function(s): `f()`

</details>

### Package `androidx.versionedparcelable`  (11 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `CustomVersionedParcelable` | class | h | 16 | 2 |
| `ParcelImpl` | class | Parcelable | 51 | 10 |
| `a` | class | — | 15 | 0 |
| `b` | class | — | 18 | 2 |
| `c` | class | — | 98 | 19 |
| `d` | class | — | 8 | 1 |
| `e` | class | RuntimeException | 1,065 | 377 |
| `f` | class | e | 223 | 45 |
| `g` | class | e | 549 | 124 |
| `h` | class | — | 6 | 0 |
| `i` | class | — | 26 | 6 |

<details>
<summary><b>Function list for <code>androidx.versionedparcelable</code></b> (click to expand)</summary>

- **`CustomVersionedParcelable`** — 2 function(s): `a()`, `h()`
- **`ParcelImpl`** — 8 function(s): `createFromParcel()`, `ParcelImpl()`, `newArray()`, `describeContents()`, `a()`, `return()`, `writeToParcel()`, `f()`
- **`b`** — 2 function(s): `a()`, `b()`
- **`c`** — 8 function(s): `c()`, `a()`, `ParcelImpl()`, `if()`, `IllegalArgumentException()`, `return()`, `while()`, `b()`
- **`d`** — 1 function(s): `d()`
- **`e`** — 40 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`, `k()`, `l()`, `m()`, `n()`, `if()`, `for()`, `o()`, `p()`, `q()`, `r()`, `s()`, `switch()`, `while()`, `IllegalArgumentException()`, `RuntimeException()`, `t()`, `throw()`, `return()`, `w()`, `UnsupportedOperationException()`, `NetworkOnMainThreadException()`, `IllegalStateException()`, `NullPointerException()`, `BadParcelableException()`, `SecurityException()`, `Size()`, `SizeF()`, `u()`, `v()`, `super()`
- **`f`** — 19 function(s): `f()`, `this()`, `super()`, `b()`, `while()`, `if()`, `c()`, `a()`, `k()`, `return()`, `d()`, `e()`, `g()`, `h()`, `i()`, `j()`, `l()`, `m()`, `n()`
- **`g`** — 26 function(s): `a()`, `i()`, `k()`, `l()`, `g()`, `this()`, `super()`, `read()`, `if()`, `IOException()`, `skip()`, `RuntimeException()`, `b()`, `c()`, `while()`, `d()`, `e()`, `f()`, `h()`, `String()`, `j()`, `n()`, `for()`, `m()`, `IllegalArgumentException()`, `switch()`
- **`i`** — 6 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `f()`

</details>

### Package `androidx.viewpager2`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 284 | 11 |

<details>
<summary><b>Function list for <code>androidx.viewpager2</code></b> (click to expand)</summary>

- **`a`** — 11 function(s): `a()`, `C0078a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`

</details>

### Package `androidx.viewpager2.a`  (8 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 115 | 22 |
| `b` | class | h.f | 73 | 14 |
| `c` | class | h.i | 32 | 4 |
| `d` | class | — | 106 | 17 |
| `e` | class | h.i | 45 | 8 |
| `f` | class | h.f | 54 | 10 |
| `g` | class | RecyclerView.n | 325 | 87 |
| `h` | class | ViewGroup | 1,160 | 270 |

<details>
<summary><b>Function list for <code>androidx.viewpager2.a</code></b> (click to expand)</summary>

- **`a`** — 8 function(s): `a()`, `return()`, `b()`, `if()`, `for()`, `IllegalStateException()`, `compare()`, `c()`
- **`b`** — 4 function(s): `b()`, `a()`, `while()`, `IllegalStateException()`
- **`c`** — 3 function(s): `a()`, `b()`, `while()`
- **`d`** — 5 function(s): `d()`, `a()`, `b()`, `if()`, `c()`
- **`e`** — 5 function(s): `e()`, `a()`, `if()`, `return()`, `IllegalStateException()`
- **`f`** — 6 function(s): `a()`, `b()`, `f()`, `if()`, `for()`, `IllegalStateException()`
- **`g`** — 14 function(s): `g()`, `i()`, `a()`, `if()`, `j()`, `b()`, `IllegalStateException()`, `c()`, `d()`, `e()`, `f()`, `k()`, `h()`, `l()`
- **`h`** — 55 function(s): `a()`, `b()`, `h()`, `super()`, `if()`, `attachViewToParent()`, `j()`, `IllegalStateException()`, `getAccessibilityClassName()`, `saveAttributeDataForStyleable()`, `setOrientation()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `k()`, `dispatchRestoreInstanceState()`, `createFromParcel()`, `newArray()`, `l()`, `writeToParcel()`, `setAdapter()`, `getAdapter()`, `onViewAdded()`, `onMeasure()`, `measureChild()`, `setMeasuredDimension()`, `onLayout()`, `getPageSize()`, `return()`, `getOrientation()`, `setCurrentItem()`, `getCurrentItem()`, `getScrollState()`, `c()`, `d()`, `e()`, `f()`, `setUserInputEnabled()`, `g()`, `setOffscreenPageLimit()`, `IllegalArgumentException()`, `getOffscreenPageLimit()`, `canScrollHorizontally()`, `canScrollVertically()`, `setPageTransformer()`, `setLayoutDirection()`, `onInitializeAccessibilityNodeInfo()`, `performAccessibilityAction()`, `onInitializeAccessibilityEvent()`, `onTouchEvent()`, `onInterceptTouchEvent()`, `n()`, `run()`, `getItemDecorationCount()`, `i()`, `C0079h()`

</details>

### Package `androidx.viewpager2.adapter`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | RecyclerView.a<androidx.viewpager2.adapter.b> implements c | 535 | 139 |
| `b` | class | RecyclerView.z | 31 | 6 |
| `c` | class | — | 13 | 2 |

<details>
<summary><b>Function list for <code>androidx.viewpager2.adapter</code></b> (click to expand)</summary>

- **`a`** — 18 function(s): `a()`, `c()`, `b()`, `this()`, `if()`, `h()`, `IllegalStateException()`, `onLayoutChange()`, `for()`, `while()`, `return()`, `g()`, `b2()`, `f()`, `UnsupportedOperationException()`, `IllegalArgumentException()`, `run()`, `AbstractC0080a()`
- **`b`** — 5 function(s): `b()`, `super()`, `a()`, `D()`, `return()`
- **`c`** — 2 function(s): `a()`, `g()`

</details>

### Package `a.a`  (6 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | e | 106 | 17 |
| `b` | class | f | 47 | 5 |
| `c` | class | IOException | 11 | 2 |
| `d` | class | IOException | 8 | 0 |
| `e` | class | — | 97 | 31 |
| `f` | class | — | 166 | 55 |

<details>
<summary><b>Function list for <code>a.a</code></b> (click to expand)</summary>

- **`a`** — 8 function(s): `a()`, `b()`, `for()`, `if()`, `c()`, `while()`, `d()`, `switch()`
- **`b`** — 3 function(s): `a()`, `b()`, `if()`
- **`c`** — 2 function(s): `c()`, `super()`
- **`e`** — 7 function(s): `a()`, `b()`, `d()`, `c()`, `for()`, `if()`, `while()`
- **`f`** — 7 function(s): `a()`, `b()`, `c()`, `for()`, `if()`, `while()`, `Error()`

</details>

### Package `com.google.android.material`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 3,623 | 17 |

<details>
<summary><b>Function list for <code>com.google.android.material</code></b> (click to expand)</summary>

- **`a`** — 17 function(s): `a()`, `C0081a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`, `k()`, `l()`, `m()`, `n()`, `o()`, `p()`

</details>

### Package `com.google.android.material.a`  (11 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 27 | 2 |
| `b` | class | — | 26 | 2 |
| `c` | class | TypeEvaluator<Integer> | 36 | 2 |
| `d` | class | Property<ViewGroup, Float> | 37 | 5 |
| `e` | class | Property<Drawable, Integer> | 44 | 7 |
| `f` | class | Property<ImageView, Matrix> | 33 | 4 |
| `g` | class | TypeEvaluator<Matrix> | 28 | 2 |
| `h` | class | — | 152 | 36 |
| `i` | class | — | 120 | 21 |
| `j` | class | — | 17 | 1 |
| `k` | class | View> | 11 | 2 |

<details>
<summary><b>Function list for <code>com.google.android.material.a</code></b> (click to expand)</summary>

- **`a`** — 1 function(s): `a()`
- **`b`** — 2 function(s): `a()`, `for()`
- **`c`** — 2 function(s): `a()`, `evaluate()`
- **`d`** — 5 function(s): `d()`, `super()`, `get()`, `set()`, `for()`
- **`e`** — 5 function(s): `e()`, `super()`, `get()`, `if()`, `set()`
- **`f`** — 4 function(s): `f()`, `super()`, `set()`, `get()`
- **`g`** — 2 function(s): `evaluate()`, `for()`
- **`h`** — 10 function(s): `a()`, `b()`, `if()`, `IllegalArgumentException()`, `c()`, `d()`, `for()`, `equals()`, `hashCode()`, `toString()`
- **`i`** — 11 function(s): `i()`, `a()`, `if()`, `b()`, `c()`, `d()`, `e()`, `equals()`, `hashCode()`, `return()`, `toString()`
- **`j`** — 1 function(s): `j()`
- **`k`** — 2 function(s): `a()`, `b()`

</details>

### Package `com.google.android.material.appbar`  (8 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `AppBarLayout` | class | LinearLayout implements CoordinatorLayout.a | 1,574 | 364 |
| `MaterialToolbar` | class | Toolbar | 58 | 11 |
| `a` | class | FrameLayout | 815 | 212 |
| `b` | class | View> extends d<V> | 247 | 54 |
| `c` | class | d<View> | 130 | 21 |
| `d` | class | View> extends CoordinatorLayout.b<V> | 103 | 23 |
| `e` | class | — | 84 | 17 |
| `f` | class | — | 56 | 4 |

<details>
<summary><b>Function list for <code>com.google.android.material.appbar</code></b> (click to expand)</summary>

- **`AppBarLayout`** — 67 function(s): `a()`, `getTargetElevation()`, `AppBarLayout()`, `this()`, `super()`, `setOrientation()`, `if()`, `setKeyboardNavigationCluster()`, `setTouchscreenBlocksFocus()`, `setStatusBarForeground()`, `b()`, `f()`, `setStatusBarForegroundColor()`, `setStatusBarForegroundResource()`, `getStatusBarForeground()`, `draw()`, `drawableStateChanged()`, `invalidateDrawable()`, `verifyDrawable()`, `setVisibility()`, `onMeasure()`, `setMeasuredDimension()`, `i()`, `onLayout()`, `for()`, `while()`, `d()`, `setWillNotDraw()`, `g()`, `h()`, `IllegalArgumentException()`, `onAttachedToWindow()`, `getBehavior()`, `Behavior()`, `setElevation()`, `setExpanded()`, `requestLayout()`, `checkLayoutParams()`, `generateDefaultLayoutParams()`, `generateLayoutParams()`, `onDetachedFromWindow()`, `j()`, `getTotalScrollRange()`, `c()`, `getUpNestedPreScrollRange()`, `getDownNestedPreScrollRange()`, `getDownNestedScrollRange()`, `getMinimumHeightForVisibleOverlappingContent()`, `return()`, `onCreateDrawableState()`, `mergeDrawableStates()`, `refreshDrawableState()`, `onAnimationUpdate()`, `setLiftOnScroll()`, `setLiftOnScrollTargetViewId()`, `getLiftOnScrollTargetViewId()`, `setTargetElevation()`, `getPendingAction()`, `e()`, `getTopInset()`, `k()`, `BaseBehavior()`, `a_()`, `createFromParcel()`, `newArray()`, `writeToParcel()`, `ScrollingViewBehavior()`
- **`MaterialToolbar`** — 7 function(s): `MaterialToolbar()`, `this()`, `super()`, `a()`, `onAttachedToWindow()`, `setElevation()`, `if()`
- **`a`** — 75 function(s): `a()`, `this()`, `super()`, `if()`, `setTitle()`, `setContentScrim()`, `setStatusBarScrim()`, `setWillNotDraw()`, `onAttachedToWindow()`, `onDetachedFromWindow()`, `requestLayout()`, `draw()`, `d()`, `drawChild()`, `onSizeChanged()`, `while()`, `e()`, `c()`, `for()`, `onMeasure()`, `onLayout()`, `setMinimumHeight()`, `f()`, `getTitle()`, `setTitleEnabled()`, `setScrimsShown()`, `setScrimAlpha()`, `onAnimationUpdate()`, `getScrimAlpha()`, `setContentScrimColor()`, `setContentScrimResource()`, `getContentScrim()`, `drawableStateChanged()`, `invalidate()`, `verifyDrawable()`, `setVisibility()`, `setStatusBarScrimColor()`, `setStatusBarScrimResource()`, `getStatusBarScrim()`, `setCollapsedTitleTextAppearance()`, `setCollapsedTitleTextColor()`, `setCollapsedTitleGravity()`, `getCollapsedTitleGravity()`, `setExpandedTitleTextAppearance()`, `setExpandedTitleColor()`, `setExpandedTitleTextColor()`, `setExpandedTitleGravity()`, `getExpandedTitleGravity()`, `setCollapsedTitleTypeface()`, `getCollapsedTitleTypeface()`, `setExpandedTitleTypeface()`, `getExpandedTitleTypeface()`, `getExpandedTitleMarginStart()`, `setExpandedTitleMarginStart()`, `getExpandedTitleMarginTop()`, `setExpandedTitleMarginTop()`, `getExpandedTitleMarginEnd()`, `setExpandedTitleMarginEnd()`, `getExpandedTitleMarginBottom()`, `setExpandedTitleMarginBottom()`, `setMaxLines()`, `getMaxLines()`, `setScrimVisibleHeightTrigger()`, `getScrimVisibleHeightTrigger()`, `getHeight()`, `setScrimAnimationDuration()`, `getScrimAnimationDuration()`, `checkLayoutParams()`, `generateDefaultLayoutParams()`, `C0082a()`, `generateLayoutParams()`, `b()`, `return()`, `setContentDescription()`, `switch()`
- **`b`** — 11 function(s): `d()`, `e()`, `b()`, `super()`, `a()`, `if()`, `switch()`, `a_()`, `c()`, `g()`, `run()`
- **`c`** — 7 function(s): `d()`, `b()`, `c()`, `super()`, `a()`, `if()`, `h()`
- **`d`** — 8 function(s): `d()`, `super()`, `a()`, `b()`, `if()`, `g()`, `f()`, `e()`
- **`e`** — 9 function(s): `e()`, `a()`, `b()`, `if()`, `c()`, `d()`, `f()`, `g()`, `h()`
- **`f`** — 2 function(s): `a()`, `if()`

</details>

### Package `com.google.android.material.b`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | Drawable implements q.a | 551 | 119 |
| `b` | class | — | 88 | 17 |

<details>
<summary><b>Function list for <code>com.google.android.material.b</code></b> (click to expand)</summary>

- **`a`** — 31 function(s): `getOpacity()`, `isStateful()`, `setColorFilter()`, `createFromParcel()`, `b()`, `newArray()`, `describeContents()`, `writeToParcel()`, `a()`, `if()`, `setVisible()`, `d()`, `c()`, `e()`, `h()`, `i()`, `j()`, `m()`, `invalidateSelf()`, `f()`, `g()`, `o()`, `getAlpha()`, `setAlpha()`, `getIntrinsicHeight()`, `getIntrinsicWidth()`, `draw()`, `onStateChange()`, `k()`, `l()`, `n()`
- **`b`** — 6 function(s): `b()`, `a()`, `c()`, `if()`, `for()`, `IllegalArgumentException()`

</details>

### Package `com.google.android.material.behavior`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `HideBottomViewOnScrollBehavior` | class | View> extends CoordinatorLayout.b<V> | 105 | 21 |
| `SwipeDismissBehavior` | class | View> extends CoordinatorLayout.b<V> | 337 | 66 |

<details>
<summary><b>Function list for <code>com.google.android.material.behavior</code></b> (click to expand)</summary>

- **`HideBottomViewOnScrollBehavior`** — 7 function(s): `a()`, `HideBottomViewOnScrollBehavior()`, `super()`, `if()`, `c()`, `b()`, `onAnimationEnd()`
- **`SwipeDismissBehavior`** — 8 function(s): `b()`, `return()`, `a()`, `if()`, `c()`, `d()`, `switch()`, `run()`

</details>

### Package `com.google.android.material.bottomappbar`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `BottomAppBar` | class | Toolbar implements CoordinatorLayout.a | 807 | 177 |
| `a` | class | g implements Cloneable | 112 | 17 |

<details>
<summary><b>Function list for <code>com.google.android.material.bottomappbar</code></b> (click to expand)</summary>

- **`BottomAppBar`** — 60 function(s): `a()`, `b()`, `setSubtitle()`, `setTitle()`, `BottomAppBar()`, `this()`, `super()`, `onAnimationStart()`, `if()`, `setElevation()`, `getFabAlignmentMode()`, `setFabAlignmentMode()`, `d()`, `getFabAnimationMode()`, `setFabAnimationMode()`, `setBackgroundTint()`, `getBackgroundTint()`, `getFabCradleMargin()`, `getTopEdgeTreatment()`, `setFabCradleMargin()`, `getFabCradleRoundedCornerRadius()`, `setFabCradleRoundedCornerRadius()`, `getCradleVerticalOffset()`, `setCradleVerticalOffset()`, `v()`, `getHideOnScroll()`, `setHideOnScroll()`, `n()`, `getBehavior()`, `o()`, `getMenu()`, `p()`, `while()`, `q()`, `c()`, `onAnimationEnd()`, `r()`, `return()`, `s()`, `for()`, `t()`, `onAnimationCancel()`, `getFabTranslationY()`, `e()`, `getFabTranslationX()`, `getActionMenuView()`, `u()`, `onLayout()`, `w()`, `getBottomInset()`, `getRightInset()`, `getLeftInset()`, `onAttachedToWindow()`, `Behavior()`, `onLayoutChange()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `createFromParcel()`, `newArray()`, `writeToParcel()`
- **`a`** — 7 function(s): `a()`, `c()`, `if()`, `b()`, `IllegalArgumentException()`, `d()`, `e()`

</details>

### Package `com.google.android.material.bottomsheet`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `BottomSheetBehavior` | class | View> extends CoordinatorLayout.b<V> | 1,340 | 317 |
| `a` | class | i | 255 | 53 |
| `b` | class | j | 92 | 19 |

<details>
<summary><b>Function list for <code>com.google.android.material.bottomsheet</code></b> (click to expand)</summary>

- **`BottomSheetBehavior`** — 33 function(s): `a()`, `BottomSheetBehavior()`, `b()`, `if()`, `c()`, `super()`, `r()`, `e()`, `d()`, `t()`, `p()`, `o()`, `q()`, `switch()`, `return()`, `f()`, `g()`, `IllegalArgumentException()`, `h()`, `i()`, `j()`, `run()`, `k()`, `for()`, `n()`, `onAnimationUpdate()`, `s()`, `l()`, `m()`, `createFromParcel()`, `newArray()`, `this()`, `writeToParcel()`
- **`a`** — 16 function(s): `a()`, `this()`, `super()`, `if()`, `e()`, `setContentView()`, `onCreate()`, `setCancelable()`, `onStart()`, `cancel()`, `setCanceledOnTouchOutside()`, `g()`, `d()`, `onClick()`, `onTouch()`, `f()`
- **`b`** — 5 function(s): `a()`, `if()`, `b()`, `p()`, `aK()`

</details>

### Package `com.google.android.material.button`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `MaterialButton` | class | g implements Checkable, s | 686 | 180 |
| `a` | class | — | 336 | 76 |
| `b` | class | LinearLayout | 544 | 142 |

<details>
<summary><b>Function list for <code>com.google.android.material.button</code></b> (click to expand)</summary>

- **`MaterialButton`** — 81 function(s): `a()`, `MaterialButton()`, `this()`, `super()`, `setCompoundDrawablePadding()`, `getA11yClassName()`, `return()`, `onInitializeAccessibilityNodeInfo()`, `onInitializeAccessibilityEvent()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `if()`, `setChecked()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `setBackgroundTintList()`, `getBackgroundTintList()`, `setBackgroundTintMode()`, `getBackgroundTintMode()`, `setBackgroundColor()`, `setBackground()`, `setBackgroundDrawable()`, `setBackgroundResource()`, `getBackground()`, `onLayout()`, `onMeasure()`, `c()`, `onTextChanged()`, `onAttachedToWindow()`, `setElevation()`, `d()`, `setInternalBackground()`, `setIconPadding()`, `getIconPadding()`, `setIconSize()`, `IllegalArgumentException()`, `getIconSize()`, `setIcon()`, `setIconResource()`, `getIcon()`, `setIconTint()`, `setIconTintResource()`, `getIconTint()`, `setIconTintMode()`, `getIconTintMode()`, `b()`, `setRippleColor()`, `setRippleColorResource()`, `getRippleColor()`, `setStrokeColor()`, `setStrokeColorResource()`, `getStrokeColor()`, `setStrokeWidth()`, `setStrokeWidthResource()`, `getStrokeWidth()`, `setCornerRadius()`, `setCornerRadiusResource()`, `getCornerRadius()`, `getIconGravity()`, `setIconGravity()`, `onCreateDrawableState()`, `mergeDrawableStates()`, `refreshDrawableState()`, `while()`, `isChecked()`, `toggle()`, `performClick()`, `setCheckable()`, `setShapeAppearanceModel()`, `IllegalStateException()`, `getShapeAppearanceModel()`, `setOnPressedChangeListenerInternal()`, `setPressed()`, `e()`, `setShouldDrawSurfaceColorStroke()`, `createFromParcel()`, `newArray()`, `getClass()`, `writeToParcel()`
- **`a`** — 18 function(s): `a()`, `if()`, `b()`, `InsetDrawable()`, `c()`, `d()`, `n()`, `m()`, `i()`, `e()`, `f()`, `g()`, `h()`, `return()`, `j()`, `o()`, `k()`, `l()`
- **`b`** — 35 function(s): `a()`, `b()`, `this()`, `super()`, `compare()`, `if()`, `setSingleSelection()`, `setChildrenDrawingOrderEnabled()`, `onFinishInflate()`, `f()`, `dispatchDraw()`, `g()`, `addView()`, `setGeneratedIdIfNeeded()`, `setupButtonChild()`, `setCheckedId()`, `onViewRemoved()`, `e()`, `onMeasure()`, `getAccessibilityClassName()`, `onInitializeAccessibilityNodeInfo()`, `c()`, `for()`, `getCheckedButtonId()`, `getCheckedButtonIds()`, `setSelectionRequired()`, `d()`, `return()`, `getFirstVisibleChildIndex()`, `getLastVisibleChildIndex()`, `getChildAt()`, `getVisibleButtonCount()`, `while()`, `getChildDrawingOrder()`, `C0084b()`

</details>

### Package `com.google.android.material.c`  (6 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | FrameLayout implements o.a | 425 | 124 |
| `b` | class | g | 41 | 10 |
| `c` | class | ViewGroup implements o | 569 | 121 |
| `d` | class | n | 158 | 25 |
| `e` | class | FrameLayout | 438 | 97 |
| `f` | class | — | 16 | 0 |

<details>
<summary><b>Function list for <code>com.google.android.material.c</code></b> (click to expand)</summary>

- **`a`** — 40 function(s): `a()`, `c()`, `this()`, `super()`, `setBackgroundResource()`, `setFocusable()`, `if()`, `onLayoutChange()`, `setCheckable()`, `setChecked()`, `setEnabled()`, `setIcon()`, `setTitle()`, `setId()`, `setContentDescription()`, `setVisibility()`, `setItemPosition()`, `getItemPosition()`, `setShifting()`, `setLabelVisibilityMode()`, `getItemData()`, `refreshDrawableState()`, `switch()`, `setSelected()`, `onInitializeAccessibilityNodeInfo()`, `onCreateDrawableState()`, `mergeDrawableStates()`, `setIconTintList()`, `setIconSize()`, `setTextAppearanceInactive()`, `setTextAppearanceActive()`, `setTextColor()`, `setItemBackground()`, `setBadge()`, `b()`, `getBadge()`, `d()`, `setClipChildren()`, `setClipToPadding()`, `return()`
- **`b`** — 9 function(s): `b()`, `super()`, `addSubMenu()`, `UnsupportedOperationException()`, `a()`, `if()`, `IllegalArgumentException()`, `i()`, `j()`
- **`c`** — 46 function(s): `a()`, `if()`, `g()`, `getWindowAnimations()`, `c()`, `this()`, `super()`, `onClick()`, `onMeasure()`, `while()`, `for()`, `setMeasuredDimension()`, `onLayout()`, `onInitializeAccessibilityNodeInfo()`, `setIconTintList()`, `getIconTintList()`, `setItemIconSize()`, `getItemIconSize()`, `setItemTextColor()`, `getItemTextColor()`, `setItemTextAppearanceInactive()`, `getItemTextAppearanceInactive()`, `setItemTextAppearanceActive()`, `getItemTextAppearanceActive()`, `setItemBackgroundRes()`, `getItemBackgroundRes()`, `setItemBackground()`, `getItemBackground()`, `setLabelVisibilityMode()`, `getLabelVisibilityMode()`, `setItemHorizontalTranslationEnabled()`, `ColorStateList()`, `setPresenter()`, `b()`, `removeAllViews()`, `d()`, `setBadgeIfNeeded()`, `addView()`, `getNewItem()`, `getSelectedItemId()`, `getBadgeDrawables()`, `setBadgeDrawables()`, `h()`, `e()`, `f()`, `IllegalArgumentException()`
- **`d`** — 9 function(s): `a()`, `b()`, `if()`, `c()`, `f()`, `createFromParcel()`, `newArray()`, `describeContents()`, `writeToParcel()`
- **`e`** — 44 function(s): `a()`, `getMaxItemCount()`, `e()`, `this()`, `super()`, `if()`, `setItemIconSize()`, `setItemTextAppearanceInactive()`, `setItemTextAppearanceActive()`, `setItemTextColor()`, `setLabelVisibilityMode()`, `setItemHorizontalTranslationEnabled()`, `setItemRippleColor()`, `addView()`, `b()`, `return()`, `onAttachedToWindow()`, `setElevation()`, `setOnNavigationItemSelectedListener()`, `setOnNavigationItemReselectedListener()`, `getMenu()`, `getMenuInflater()`, `getItemIconTintList()`, `setItemIconTintList()`, `setItemIconSizeRes()`, `getItemIconSize()`, `getItemTextColor()`, `getItemBackgroundResource()`, `setItemBackgroundResource()`, `getItemBackground()`, `setItemBackground()`, `getItemRippleColor()`, `getSelectedItemId()`, `setSelectedItemId()`, `getLabelVisibilityMode()`, `getItemTextAppearanceInactive()`, `getItemTextAppearanceActive()`, `c()`, `d()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `createFromParcel()`, `newArray()`, `writeToParcel()`

</details>

### Package `com.google.android.material.chip`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `Chip` | class | h implements a.InterfaceC0085a, s | 1,623 | 486 |
| `ChipGroup` | class | e | 435 | 129 |
| `a` | class | j implements Drawable.Callback, e, q.a | 1,641 | 515 |

<details>
<summary><b>Function list for <code>com.google.android.material.chip</code></b> (click to expand)</summary>

- **`Chip`** — 177 function(s): `Chip()`, `this()`, `super()`, `a()`, `setChipDrawable()`, `if()`, `setTextColor()`, `l()`, `n()`, `setChecked()`, `setText()`, `setEllipsize()`, `t()`, `setLines()`, `setHorizontallyScrolling()`, `setGravity()`, `m()`, `setMinHeight()`, `onAttachedToWindow()`, `setElevation()`, `onInitializeAccessibilityNodeInfo()`, `onRtlPropertiesChanged()`, `UnsupportedOperationException()`, `setOutlineProvider()`, `getOutline()`, `getChipDrawable()`, `b()`, `o()`, `q()`, `p()`, `getBackgroundDrawable()`, `onCreateDrawableState()`, `mergeDrawableStates()`, `setBackgroundTintList()`, `setBackgroundTintMode()`, `setBackgroundColor()`, `setBackgroundResource()`, `setBackground()`, `setBackgroundDrawable()`, `setCompoundDrawables()`, `setCompoundDrawablesWithIntrinsicBounds()`, `setCompoundDrawablesRelative()`, `setCompoundDrawablesRelativeWithIntrinsicBounds()`, `getEllipsize()`, `setSingleLine()`, `setMinLines()`, `setMaxLines()`, `setMaxWidth()`, `requestLayout()`, `invalidateOutline()`, `setOnCheckedChangeListenerInternal()`, `setOnCloseIconClickListener()`, `playSoundEffect()`, `onTouchEvent()`, `switch()`, `setCloseIconPressed()`, `onHoverEvent()`, `setCloseIconHovered()`, `dispatchHoverEvent()`, `dispatchKeyEvent()`, `onFocusChanged()`, `getFocusedRect()`, `refreshDrawableState()`, `drawableStateChanged()`, `invalidate()`, `r()`, `s()`, `return()`, `getCloseIconTouchBounds()`, `getCloseIconTouchBoundsInt()`, `onResolvePointerIcon()`, `getChipBackgroundColor()`, `setChipBackgroundColorResource()`, `setChipBackgroundColor()`, `getChipMinHeight()`, `setChipMinHeightResource()`, `setChipMinHeight()`, `getChipCornerRadius()`, `setChipCornerRadiusResource()`, `setShapeAppearanceModel()`, `getShapeAppearanceModel()`, `setChipCornerRadius()`, `getChipStrokeColor()`, `setChipStrokeColorResource()`, `setChipStrokeColor()`, `getChipStrokeWidth()`, `setChipStrokeWidthResource()`, `setChipStrokeWidth()`, `getRippleColor()`, `setRippleColorResource()`, `setRippleColor()`, `getChipText()`, `getText()`, `setLayoutDirection()`, `setChipTextResource()`, `setChipText()`, `setTextAppearanceResource()`, `setTextAppearance()`, `getTextAppearance()`, `c()`, `d()`, `setChipIconVisible()`, `setChipIconEnabledResource()`, `setChipIconEnabled()`, `getChipIcon()`, `setChipIconResource()`, `setChipIcon()`, `getChipIconTint()`, `setChipIconTintResource()`, `setChipIconTint()`, `getChipIconSize()`, `setChipIconSizeResource()`, `setChipIconSize()`, `e()`, `f()`, `setCloseIconVisible()`, `setCloseIconEnabledResource()`, `setCloseIconEnabled()`, `getCloseIcon()`, `setCloseIconResource()`, `setCloseIcon()`, `getCloseIconTint()`, `setCloseIconTintResource()`, `setCloseIconTint()`, `getCloseIconSize()`, `setCloseIconSizeResource()`, `setCloseIconSize()`, `setCloseIconContentDescription()`, `getCloseIconContentDescription()`, `g()`, `setCheckableResource()`, `setCheckable()`, `h()`, `i()`, `setCheckedIconVisible()`, `setCheckedIconEnabledResource()`, `setCheckedIconEnabled()`, `getCheckedIcon()`, `setCheckedIconResource()`, `setCheckedIcon()`, `getCheckedIconTint()`, `setCheckedIconTintResource()`, `setCheckedIconTint()`, `getShowMotionSpec()`, `setShowMotionSpecResource()`, `setShowMotionSpec()`, `getHideMotionSpec()`, `setHideMotionSpecResource()`, `setHideMotionSpec()`, `getChipStartPadding()`, `setChipStartPaddingResource()`, `setChipStartPadding()`, `getIconStartPadding()`, `setIconStartPaddingResource()`, `setIconStartPadding()`, `getIconEndPadding()`, `setIconEndPaddingResource()`, `setIconEndPadding()`, `getTextStartPadding()`, `setTextStartPaddingResource()`, `setTextStartPadding()`, `getTextEndPadding()`, `setTextEndPaddingResource()`, `setTextEndPadding()`, `getCloseIconStartPadding()`, `setCloseIconStartPaddingResource()`, `setCloseIconStartPadding()`, `getCloseIconEndPadding()`, `setCloseIconEndPaddingResource()`, `setCloseIconEndPadding()`, `getChipEndPadding()`, `setChipEndPaddingResource()`, `setChipEndPadding()`, `j()`, `setEnsureMinTouchTargetSize()`, `u()`, `setMinWidth()`
- **`ChipGroup`** — 44 function(s): `a()`, `b()`, `super()`, `ChipGroup()`, `this()`, `setChipSpacingHorizontal()`, `setChipSpacingVertical()`, `setSingleLine()`, `setSingleSelection()`, `setSelectionRequired()`, `if()`, `onInitializeAccessibilityNodeInfo()`, `generateLayoutParams()`, `generateDefaultLayoutParams()`, `checkLayoutParams()`, `setOnHierarchyChangeListener()`, `onFinishInflate()`, `setCheckedId()`, `addView()`, `setDividerDrawableHorizontal()`, `UnsupportedOperationException()`, `setDividerDrawableVertical()`, `setShowDividerHorizontal()`, `setShowDividerVertical()`, `setFlexWrap()`, `getCheckedChipId()`, `getCheckedChipIds()`, `for()`, `setOnCheckedChangeListener()`, `getChipCount()`, `setChipSpacing()`, `setChipSpacingResource()`, `getChipSpacingHorizontal()`, `setItemSpacing()`, `requestLayout()`, `setChipSpacingHorizontalResource()`, `getChipSpacingVertical()`, `setLineSpacing()`, `setChipSpacingVerticalResource()`, `c()`, `d()`, `onCheckedChanged()`, `onChildViewAdded()`, `onChildViewRemoved()`
- **`a`** — 80 function(s): `a()`, `getOpacity()`, `if()`, `super()`, `b()`, `setState()`, `k()`, `c()`, `switch()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`, `l()`, `m()`, `H()`, `aD()`, `onStateChange()`, `getIntrinsicWidth()`, `getIntrinsicHeight()`, `return()`, `ax()`, `ay()`, `az()`, `aA()`, `draw()`, `aB()`, `isStateful()`, `invalidateSelf()`, `onLayoutDirectionChanged()`, `onLevelChange()`, `setVisible()`, `setAlpha()`, `getAlpha()`, `setColorFilter()`, `getColorFilter()`, `setTintList()`, `setTintMode()`, `getOutline()`, `invalidateDrawable()`, `scheduleDrawable()`, `unscheduleDrawable()`, `aC()`, `for()`, `setShapeAppearanceModel()`, `n()`, `o()`, `p()`, `q()`, `r()`, `s()`, `t()`, `u()`, `v()`, `w()`, `x()`, `y()`, `aE()`, `z()`, `A()`, `B()`, `C()`, `D()`, `E()`, `F()`, `G()`, `I()`, `J()`, `K()`, `L()`, `M()`, `N()`, `O()`, `P()`, `Q()`, `R()`, `S()`

</details>

### Package `com.google.android.material.d`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 30 | 5 |

<details>
<summary><b>Function list for <code>com.google.android.material.d</code></b> (click to expand)</summary>

- **`a`** — 2 function(s): `a()`, `if()`

</details>

### Package `com.google.android.material.datepicker`  (27 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `MaterialCalendarGridView` | class | GridView | 179 | 42 |
| `a` | class | Parcelable | 202 | 34 |
| `b` | class | — | 86 | 8 |
| `c` | class | — | 55 | 1 |
| `d` | class | a.b | 74 | 15 |
| `e` | class | TextWatcher | 74 | 12 |
| `f` | class | Parcelable | 46 | 10 |
| `g` | class | — | 112 | 33 |
| `h` | class | a.b | 70 | 15 |
| `i` | class | a.b | 70 | 15 |
| `j` | class | BaseAdapter | 70 | 7 |
| `k` | class | t<S> | 395 | 61 |
| `l` | class | androidx.fragment.app.c | 485 | 71 |
| `m` | class | — | 7 | 1 |
| `n` | class | DatePickerDialog | 66 | 12 |
| `o` | class | t<S> | 86 | 12 |
| `p` | class | Parcelable, Comparable<p> | 148 | 26 |
| `q` | class | BaseAdapter | 148 | 29 |
| `r` | class | RecyclerView.a<a> | 124 | 23 |
| `s` | class | — | 13 | 2 |
| `t` | class | androidx.fragment.app.d | 26 | 4 |
| `u` | class | f<androidx.core.m.f<Long, Long>> | 243 | 40 |
| `v` | class | f<Long> | 152 | 23 |
| `w` | class | LinearLayoutManager | 32 | 5 |
| `x` | class | — | 50 | 10 |
| `y` | class | — | 210 | 50 |
| `z` | class | RecyclerView.a<a> | 89 | 13 |

<details>
<summary><b>Function list for <code>com.google.android.material.datepicker</code></b> (click to expand)</summary>

- **`MaterialCalendarGridView`** — 19 function(s): `MaterialCalendarGridView()`, `this()`, `super()`, `if()`, `setNextFocusLeftId()`, `setNextFocusRightId()`, `a()`, `onAttachedToWindow()`, `getAdapter()`, `setSelection()`, `onKeyDown()`, `getAdapter2()`, `return()`, `setAdapter()`, `IllegalArgumentException()`, `onDraw()`, `for()`, `while()`, `onFocusChanged()`
- **`a`** — 15 function(s): `createFromParcel()`, `a()`, `newArray()`, `describeContents()`, `if()`, `IllegalArgumentException()`, `b()`, `c()`, `d()`, `e()`, `f()`, `equals()`, `hashCode()`, `writeToParcel()`, `C0086a()`
- **`b`** — 4 function(s): `b()`, `a()`, `c()`, `d()`
- **`c`** — 1 function(s): `c()`
- **`d`** — 10 function(s): `createFromParcel()`, `d()`, `newArray()`, `describeContents()`, `a()`, `for()`, `if()`, `writeToParcel()`, `equals()`, `hashCode()`
- **`e`** — 6 function(s): `a()`, `afterTextChanged()`, `beforeTextChanged()`, `e()`, `onTextChanged()`, `if()`
- **`f`** — 5 function(s): `a()`, `b()`, `c()`, `d()`, `e()`
- **`g`** — 7 function(s): `g()`, `a()`, `if()`, `b()`, `c()`, `d()`, `e()`
- **`h`** — 11 function(s): `createFromParcel()`, `h()`, `newArray()`, `describeContents()`, `b()`, `a()`, `writeToParcel()`, `equals()`, `if()`, `return()`, `hashCode()`
- **`i`** — 11 function(s): `createFromParcel()`, `i()`, `newArray()`, `describeContents()`, `b()`, `a()`, `writeToParcel()`, `equals()`, `if()`, `return()`, `hashCode()`
- **`j`** — 6 function(s): `getItemId()`, `getItem()`, `if()`, `getCount()`, `getView()`, `b()`
- **`k`** — 13 function(s): `a()`, `e()`, `b()`, `if()`, `while()`, `aK()`, `for()`, `g()`, `h()`, `onClick()`, `run()`, `i()`, `return()`
- **`l`** — 25 function(s): `aK()`, `aL()`, `aM()`, `a()`, `e()`, `if()`, `b()`, `c()`, `d()`, `onClick()`, `while()`, `l()`, `aT()`, `m()`, `onCancel()`, `onDismiss()`, `aN()`, `aS()`, `f()`, `g()`, `return()`, `aO()`, `aP()`, `aQ()`, `aR()`
- **`m`** — 1 function(s): `a()`
- **`n`** — 6 function(s): `n()`, `this()`, `super()`, `if()`, `onCreate()`, `getWindow()`
- **`o`** — 6 function(s): `a()`, `e()`, `b()`, `if()`, `while()`, `IllegalStateException()`
- **`p`** — 15 function(s): `createFromParcel()`, `newArray()`, `describeContents()`, `p()`, `a()`, `b()`, `equals()`, `if()`, `hashCode()`, `compareTo()`, `return()`, `IllegalArgumentException()`, `c()`, `d()`, `writeToParcel()`
- **`q`** — 15 function(s): `hasStableIds()`, `q()`, `getItem()`, `if()`, `getItemId()`, `getCount()`, `getView()`, `a()`, `while()`, `b()`, `return()`, `c()`, `d()`, `e()`, `f()`
- **`r`** — 8 function(s): `r()`, `if()`, `IllegalArgumentException()`, `a()`, `super()`, `onItemClick()`, `c()`, `g()`
- **`s`** — 1 function(s): `a()`
- **`t`** — 4 function(s): `e()`, `a()`, `b()`, `j()`
- **`u`** — 12 function(s): `createFromParcel()`, `newArray()`, `a()`, `describeContents()`, `if()`, `b()`, `return()`, `d()`, `ArrayList()`, `c()`, `e()`, `writeToParcel()`
- **`v`** — 12 function(s): `createFromParcel()`, `newArray()`, `describeContents()`, `a()`, `g()`, `b()`, `d()`, `ArrayList()`, `c()`, `if()`, `e()`, `writeToParcel()`
- **`w`** — 3 function(s): `w()`, `super()`, `a()`
- **`x`** — 4 function(s): `x()`, `a()`, `b()`, `if()`
- **`y`** — 13 function(s): `a()`, `y()`, `i()`, `j()`, `b()`, `c()`, `if()`, `d()`, `e()`, `f()`, `g()`, `h()`, `while()`
- **`z`** — 8 function(s): `a()`, `super()`, `z()`, `while()`, `if()`, `h()`, `onClick()`, `g()`

</details>

### Package `com.google.android.material.e`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | androidx.b.a.a implements Checkable, s | 385 | 85 |
| `b` | class | — | 540 | 111 |

<details>
<summary><b>Function list for <code>com.google.android.material.e</code></b> (click to expand)</summary>

- **`a`** — 60 function(s): `a()`, `this()`, `super()`, `onInitializeAccessibilityNodeInfo()`, `onInitializeAccessibilityEvent()`, `onMeasure()`, `setStrokeColor()`, `getStrokeColor()`, `getStrokeColorStateList()`, `setStrokeWidth()`, `getStrokeWidth()`, `setRadius()`, `getRadius()`, `getCardViewRadius()`, `setProgress()`, `getProgress()`, `b()`, `getContentPaddingLeft()`, `getContentPaddingTop()`, `getContentPaddingRight()`, `getContentPaddingBottom()`, `setCardBackgroundColor()`, `getCardBackgroundColor()`, `setCardForegroundColor()`, `getCardForegroundColor()`, `setClickable()`, `if()`, `onAttachedToWindow()`, `setCardElevation()`, `setMaxCardElevation()`, `setUseCompatPadding()`, `setPreventCornerOverlap()`, `setBackground()`, `setBackgroundDrawable()`, `setBackgroundInternal()`, `isChecked()`, `setChecked()`, `toggle()`, `setDragged()`, `refreshDrawableState()`, `c()`, `invalidate()`, `e_()`, `f_()`, `setCheckable()`, `onCreateDrawableState()`, `mergeDrawableStates()`, `setOnCheckedChangeListener()`, `setRippleColor()`, `setRippleColorResource()`, `getRippleColor()`, `getCheckedIcon()`, `setCheckedIconResource()`, `setCheckedIcon()`, `getCheckedIconTint()`, `setCheckedIconTint()`, `getBoundsAsRectF()`, `setShapeAppearanceModel()`, `setClipToOutline()`, `getShapeAppearanceModel()`
- **`b`** — 41 function(s): `b()`, `if()`, `a()`, `c()`, `F()`, `l()`, `n()`, `d()`, `e()`, `f()`, `g()`, `o()`, `h()`, `i()`, `m()`, `j()`, `k()`, `p()`, `q()`, `r()`, `s()`, `t()`, `u()`, `InsetDrawable()`, `getMinimumHeight()`, `getMinimumWidth()`, `getPadding()`, `v()`, `return()`, `w()`, `x()`, `y()`, `z()`, `A()`, `B()`, `C()`, `D()`, `RippleDrawable()`, `E()`, `G()`, `H()`

</details>

### Package `com.google.android.material.f`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | h | 80 | 15 |

<details>
<summary><b>Function list for <code>com.google.android.material.f</code></b> (click to expand)</summary>

- **`a`** — 7 function(s): `a()`, `this()`, `super()`, `if()`, `onAttachedToWindow()`, `setUseMaterialThemeColors()`, `getMaterialThemeColorsTintList()`

</details>

### Package `com.google.android.material.floatingactionbutton`  (8 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ExtendedFloatingActionButton` | class | MaterialButton implements CoordinatorLayout.a | 714 | 162 |
| `FloatingActionButton` | class | aa implements CoordinatorLayout.a, ad, p, com.google.android.material.l.a, s | 981 | 272 |
| `a` | class | — | 28 | 5 |
| `b` | class | f | 122 | 20 |
| `c` | class | Drawable | 221 | 41 |
| `d` | class | AnimatorListenerAdapter implements ValueAnimator.AnimatorUpdateListener | 789 | 164 |
| `e` | class | d | 195 | 32 |
| `f` | class | — | 44 | 14 |

<details>
<summary><b>Function list for <code>com.google.android.material.floatingactionbutton</code></b> (click to expand)</summary>

- **`ExtendedFloatingActionButton`** — 42 function(s): `set()`, `get()`, `a()`, `b()`, `c()`, `d()`, `ExtendedFloatingActionButton()`, `this()`, `super()`, `setShapeAppearanceModel()`, `onAttachedToWindow()`, `if()`, `getBehavior()`, `setExtended()`, `e()`, `f()`, `g()`, `h()`, `getShowMotionSpec()`, `setShowMotionSpec()`, `setShowMotionSpecResource()`, `getHideMotionSpec()`, `setHideMotionSpec()`, `setHideMotionSpecResource()`, `getExtendMotionSpec()`, `setExtendMotionSpec()`, `setExtendMotionSpecResource()`, `getShrinkMotionSpec()`, `setShrinkMotionSpec()`, `setShrinkMotionSpecResource()`, `measure()`, `onAnimationStart()`, `onAnimationCancel()`, `onAnimationEnd()`, `while()`, `getVisibility()`, `i()`, `j()`, `getCollapsedSize()`, `return()`, `ExtendedFloatingActionButtonBehavior()`, `for()`
- **`FloatingActionButton`** — 90 function(s): `a()`, `b()`, `FloatingActionButton()`, `this()`, `super()`, `setEnabled()`, `getImpl()`, `setScaleType()`, `onMeasure()`, `setMeasuredDimension()`, `getRippleColor()`, `if()`, `getRippleColorStateList()`, `setRippleColor()`, `getBehavior()`, `Behavior()`, `getBackgroundTintList()`, `setBackgroundTintList()`, `getBackgroundTintMode()`, `setBackgroundTintMode()`, `setSupportBackgroundTintList()`, `getSupportBackgroundTintList()`, `setSupportBackgroundTintMode()`, `getSupportBackgroundTintMode()`, `setSupportImageTintList()`, `h()`, `getSupportImageTintList()`, `setSupportImageTintMode()`, `getSupportImageTintMode()`, `setBackgroundDrawable()`, `setBackgroundResource()`, `setBackgroundColor()`, `setImageResource()`, `setImageDrawable()`, `setShapeAppearanceModel()`, `getShapeAppearanceModel()`, `return()`, `setEnsureMinTouchTargetSize()`, `requestLayout()`, `setVisibility()`, `c()`, `d()`, `setExpandedComponentIdHint()`, `getExpandedComponentIdHint()`, `setUseCompatPadding()`, `getUseCompatPadding()`, `setSize()`, `getSize()`, `e()`, `f()`, `setCustomSize()`, `IllegalArgumentException()`, `getCustomSize()`, `g()`, `getSizeDimension()`, `onAttachedToWindow()`, `onDetachedFromWindow()`, `drawableStateChanged()`, `jumpDrawablesToCurrentState()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `getContentBackground()`, `onTouchEvent()`, `BaseBehavior()`, `for()`, `setElevation()`, `getCompatElevation()`, `setCompatElevation()`, `setCompatElevationResource()`, `getCompatHoveredFocusedTranslationZ()`, `setCompatHoveredFocusedTranslationZ()`, `setCompatHoveredFocusedTranslationZResource()`, `getCompatPressedTranslationZ()`, `setCompatPressedTranslationZ()`, `setCompatPressedTranslationZResource()`, `getShowMotionSpec()`, `setShowMotionSpec()`, `setShowMotionSpecResource()`, `getHideMotionSpec()`, `setHideMotionSpec()`, `setHideMotionSpecResource()`, `equals()`, `hashCode()`, `setTranslationX()`, `setTranslationY()`, `setTranslationZ()`, `setScaleX()`, `setScaleY()`, `setShadowPaddingEnabled()`, `i()`
- **`a`** — 3 function(s): `a()`, `if()`, `b()`
- **`b`** — 8 function(s): `b()`, `a()`, `if()`, `return()`, `c()`, `d()`, `e()`, `f()`
- **`c`** — 20 function(s): `c()`, `a()`, `if()`, `invalidateSelf()`, `setColorFilter()`, `draw()`, `copyBounds()`, `getOutline()`, `getPadding()`, `b()`, `setAlpha()`, `getOpacity()`, `onBoundsChange()`, `isStateful()`, `return()`, `onStateChange()`, `LinearGradient()`, `getConstantState()`, `getChangingConfigurations()`, `newDrawable()`
- **`d`** — 38 function(s): `a()`, `b()`, `n()`, `p()`, `s()`, `d()`, `if()`, `c()`, `e()`, `f()`, `g()`, `h()`, `i()`, `o()`, `j()`, `onAnimationStart()`, `onAnimationCancel()`, `onAnimationEnd()`, `while()`, `y()`, `return()`, `z()`, `evaluate()`, `k()`, `l()`, `m()`, `q()`, `r()`, `t()`, `x()`, `A()`, `onPreDraw()`, `u()`, `v()`, `w()`, `onAnimationUpdate()`, `super()`, `B()`
- **`e`** — 13 function(s): `j()`, `s()`, `x()`, `e()`, `super()`, `a()`, `if()`, `b()`, `o()`, `n()`, `p()`, `u()`, `isStateful()`
- **`f`** — 9 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`

</details>

### Package `com.google.android.material.g`  (7 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 65 | 11 |
| `b` | class | FrameLayout implements g | 100 | 18 |
| `c` | class | GridLayout implements g | 98 | 18 |
| `d` | class | — | 260 | 50 |
| `e` | class | LinearLayout implements g | 98 | 18 |
| `f` | class | RelativeLayout implements g | 98 | 18 |
| `g` | class | d.a | 138 | 27 |

<details>
<summary><b>Function list for <code>com.google.android.material.g</code></b> (click to expand)</summary>

- **`a`** — 6 function(s): `a()`, `if()`, `IllegalStateException()`, `AnimatorListenerAdapter()`, `onAnimationStart()`, `onAnimationEnd()`
- **`b`** — 15 function(s): `b()`, `this()`, `super()`, `a()`, `g_()`, `getRevealInfo()`, `setRevealInfo()`, `getCircularRevealScrimColor()`, `setCircularRevealScrimColor()`, `getCircularRevealOverlayDrawable()`, `setCircularRevealOverlayDrawable()`, `draw()`, `if()`, `isOpaque()`, `c()`
- **`c`** — 14 function(s): `c()`, `this()`, `super()`, `a()`, `g_()`, `getRevealInfo()`, `setRevealInfo()`, `getCircularRevealScrimColor()`, `setCircularRevealScrimColor()`, `getCircularRevealOverlayDrawable()`, `setCircularRevealOverlayDrawable()`, `draw()`, `if()`, `isOpaque()`
- **`d`** — 14 function(s): `a()`, `c()`, `if()`, `d()`, `b()`, `g()`, `e()`, `switch()`, `IllegalStateException()`, `f()`, `h()`, `i()`, `return()`, `j()`
- **`e`** — 15 function(s): `e()`, `this()`, `super()`, `a()`, `g_()`, `getRevealInfo()`, `setRevealInfo()`, `getCircularRevealScrimColor()`, `setCircularRevealScrimColor()`, `getCircularRevealOverlayDrawable()`, `setCircularRevealOverlayDrawable()`, `draw()`, `if()`, `isOpaque()`, `c()`
- **`f`** — 15 function(s): `f()`, `this()`, `super()`, `a()`, `g_()`, `getRevealInfo()`, `setRevealInfo()`, `getCircularRevealScrimColor()`, `setCircularRevealScrimColor()`, `getCircularRevealOverlayDrawable()`, `setCircularRevealOverlayDrawable()`, `draw()`, `if()`, `isOpaque()`, `c()`
- **`g`** — 18 function(s): `a()`, `draw()`, `g_()`, `getCircularRevealOverlayDrawable()`, `getCircularRevealScrimColor()`, `getRevealInfo()`, `isOpaque()`, `setCircularRevealOverlayDrawable()`, `setCircularRevealScrimColor()`, `setRevealInfo()`, `d()`, `this()`, `b()`, `super()`, `get()`, `set()`, `evaluate()`, `c()`

</details>

### Package `com.google.android.material.g.a`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | com.google.android.material.e.a implements g | 97 | 18 |

<details>
<summary><b>Function list for <code>com.google.android.material.g.a</code></b> (click to expand)</summary>

- **`a`** — 14 function(s): `a()`, `this()`, `super()`, `g_()`, `setRevealInfo()`, `getRevealInfo()`, `setCircularRevealScrimColor()`, `getCircularRevealScrimColor()`, `getCircularRevealOverlayDrawable()`, `setCircularRevealOverlayDrawable()`, `draw()`, `if()`, `isOpaque()`, `c()`

</details>

### Package `com.google.android.material.g.b`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | CoordinatorLayout implements g | 98 | 18 |

<details>
<summary><b>Function list for <code>com.google.android.material.g.b</code></b> (click to expand)</summary>

- **`a`** — 14 function(s): `a()`, `this()`, `super()`, `g_()`, `setRevealInfo()`, `getRevealInfo()`, `setCircularRevealScrimColor()`, `getCircularRevealScrimColor()`, `getCircularRevealOverlayDrawable()`, `setCircularRevealOverlayDrawable()`, `draw()`, `if()`, `isOpaque()`, `c()`

</details>

### Package `com.google.android.material.h`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 74 | 14 |

<details>
<summary><b>Function list for <code>com.google.android.material.h</code></b> (click to expand)</summary>

- **`a`** — 2 function(s): `a()`, `b()`

</details>

### Package `com.google.android.material.i`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | View.OnTouchListener | 52 | 5 |
| `b` | class | d.a | 395 | 90 |
| `c` | class | — | 42 | 6 |

<details>
<summary><b>Function list for <code>com.google.android.material.i</code></b> (click to expand)</summary>

- **`a`** — 3 function(s): `a()`, `onTouch()`, `if()`
- **`b`** — 13 function(s): `a()`, `if()`, `b()`, `this()`, `super()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `return()`, `c()`
- **`c`** — 5 function(s): `c()`, `a()`, `InsetDrawable()`, `if()`, `Rect()`

</details>

### Package `com.google.android.material.internal`  (31 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `BaselineLayout` | class | ViewGroup | 81 | 17 |
| `CheckableImageButton` | class | androidx.appcompat.widget.n implements Checkable | 176 | 42 |
| `NavigationMenuItemView` | class | f implements o.a | 249 | 64 |
| `NavigationMenuView` | class | RecyclerView implements androidx.appcompat.view.menu.o | 34 | 9 |
| `a` | class | — | 729 | 184 |
| `aa` | class | ImageButton | 46 | 11 |
| `b` | class | — | 23 | 4 |
| `c` | class | — | 57 | 10 |
| `d` | class | — | 17 | 1 |
| `e` | class | ViewGroup | 202 | 39 |
| `f` | class | aj | 179 | 40 |
| `g` | class | — | 35 | 6 |
| `h` | class | androidx.appcompat.view.menu.g | 24 | 3 |
| `i` | class | androidx.appcompat.view.menu.n | 718 | 162 |
| `j` | class | androidx.appcompat.view.menu.s | 19 | 3 |
| `k` | class | SparseArray<Parcelable> implements Parcelable | 68 | 12 |
| `l` | class | SparseBooleanArray implements Parcelable | 69 | 13 |
| `m` | class | SparseIntArray implements Parcelable | 68 | 12 |
| `n` | class | FrameLayout | 124 | 21 |
| `o` | class | — | 99 | 18 |
| `p` | class | Exception | 164 | 25 |
| `q` | class | — | 124 | 25 |
| `r` | class | ag | 62 | 10 |
| `s` | class | — | 119 | 34 |
| `t` | class | w implements v | 30 | 6 |
| `u` | class | v | 41 | 4 |
| `v` | class | y | 12 | 2 |
| `w` | class | y | 228 | 51 |
| `x` | class | y | 31 | 3 |
| `y` | class | — | 14 | 2 |
| `z` | class | — | 208 | 44 |

<details>
<summary><b>Function list for <code>com.google.android.material.internal</code></b> (click to expand)</summary>

- **`BaselineLayout`** — 9 function(s): `BaselineLayout()`, `super()`, `onMeasure()`, `for()`, `if()`, `measureChild()`, `setMeasuredDimension()`, `onLayout()`, `getBaseline()`
- **`CheckableImageButton`** — 22 function(s): `CheckableImageButton()`, `this()`, `super()`, `d()`, `a()`, `setChecked()`, `if()`, `refreshDrawableState()`, `sendAccessibilityEvent()`, `isChecked()`, `toggle()`, `setPressed()`, `onCreateDrawableState()`, `mergeDrawableStates()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `setCheckable()`, `setPressable()`, `b()`, `createFromParcel()`, `newArray()`, `writeToParcel()`
- **`NavigationMenuItemView`** — 33 function(s): `a()`, `c()`, `NavigationMenuItemView()`, `this()`, `super()`, `setOrientation()`, `setIconSize()`, `if()`, `setId()`, `setVisibility()`, `setCheckable()`, `setChecked()`, `setEnabled()`, `setTitle()`, `setIcon()`, `setActionView()`, `setContentDescription()`, `e()`, `d()`, `b()`, `f()`, `getItemData()`, `refreshDrawableState()`, `onCreateDrawableState()`, `mergeDrawableStates()`, `setIconTintList()`, `setTextAppearance()`, `setTextColor()`, `setNeedsEmptyIcon()`, `setHorizontalPadding()`, `setPadding()`, `setIconPadding()`, `setMaxLines()`
- **`NavigationMenuView`** — 6 function(s): `a()`, `getWindowAnimations()`, `NavigationMenuView()`, `this()`, `super()`, `setLayoutManager()`
- **`a`** — 27 function(s): `if()`, `a()`, `n()`, `b()`, `d()`, `return()`, `c()`, `e()`, `f()`, `g()`, `h()`, `s()`, `i()`, `j()`, `k()`, `l()`, `t()`, `m()`, `u()`, `y()`, `v()`, `w()`, `x()`, `o()`, `p()`, `q()`, `r()`
- **`aa`** — 7 function(s): `aa()`, `this()`, `super()`, `setVisibility()`, `a()`, `if()`, `getUserSetVisibility()`
- **`b`** — 4 function(s): `a()`, `while()`, `if()`, `return()`
- **`c`** — 3 function(s): `a()`, `if()`, `b()`
- **`d`** — 1 function(s): `a()`
- **`e`** — 18 function(s): `e()`, `this()`, `super()`, `a()`, `getLineSpacing()`, `setLineSpacing()`, `getItemSpacing()`, `setItemSpacing()`, `b()`, `setSingleLine()`, `onMeasure()`, `for()`, `if()`, `measureChild()`, `setMeasuredDimension()`, `onLayout()`, `getRowCount()`, `return()`
- **`f`** — 19 function(s): `f()`, `this()`, `super()`, `if()`, `setForeground()`, `getForegroundGravity()`, `setForegroundGravity()`, `requestLayout()`, `verifyDrawable()`, `jumpDrawablesToCurrentState()`, `drawableStateChanged()`, `unscheduleDrawable()`, `setWillNotDraw()`, `invalidate()`, `getForeground()`, `onLayout()`, `onSizeChanged()`, `draw()`, `drawableHotspotChanged()`
- **`g`** — 5 function(s): `g()`, `a()`, `b()`, `c()`, `d()`
- **`h`** — 3 function(s): `h()`, `super()`, `addSubMenu()`
- **`i`** — 22 function(s): `onClick()`, `if()`, `a()`, `b()`, `c()`, `f()`, `d()`, `e()`, `g()`, `h()`, `i()`, `j()`, `k()`, `m()`, `l()`, `super()`, `C0089i()`, `return()`, `RuntimeException()`, `switch()`, `while()`, `for()`
- **`j`** — 3 function(s): `j()`, `super()`, `c()`
- **`k`** — 7 function(s): `createFromParcel()`, `k()`, `newArray()`, `describeContents()`, `for()`, `put()`, `writeToParcel()`
- **`l`** — 8 function(s): `createFromParcel()`, `for()`, `newArray()`, `describeContents()`, `l()`, `super()`, `put()`, `writeToParcel()`
- **`m`** — 8 function(s): `createFromParcel()`, `for()`, `newArray()`, `describeContents()`, `m()`, `super()`, `put()`, `writeToParcel()`
- **`n`** — 12 function(s): `a()`, `n()`, `this()`, `super()`, `setWillNotDraw()`, `if()`, `setScrimInsetForeground()`, `setDrawTopInsetForeground()`, `setDrawBottomInsetForeground()`, `draw()`, `onAttachedToWindow()`, `onDetachedFromWindow()`
- **`o`** — 5 function(s): `onAnimationEnd()`, `if()`, `a()`, `while()`, `b()`
- **`p`** — 7 function(s): `p()`, `a()`, `b()`, `c()`, `if()`, `return()`, `super()`
- **`q`** — 8 function(s): `a()`, `if()`, `getState()`, `i()`, `onStateChange()`, `q()`, `b()`, `c()`
- **`r`** — 5 function(s): `a()`, `d()`, `b()`, `if()`, `onAnimationUpdate()`
- **`s`** — 8 function(s): `s()`, `a()`, `c()`, `b()`, `if()`, `IllegalArgumentException()`, `d()`, `for()`
- **`t`** — 5 function(s): `t()`, `super()`, `a()`, `return()`, `b()`
- **`u`** — 2 function(s): `a()`, `b()`
- **`v`** — 2 function(s): `a()`, `b()`
- **`w`** — 19 function(s): `w()`, `c()`, `if()`, `for()`, `return()`, `t()`, `a()`, `b()`, `dispatchTouchEvent()`, `onLayout()`, `super()`, `setRight()`, `setBottom()`, `invalidate()`, `verifyDrawable()`, `IllegalStateException()`, `invalidateDrawable()`, `dispatchDraw()`, `invalidateChildInParent()`
- **`x`** — 3 function(s): `x()`, `a()`, `b()`
- **`y`** — 2 function(s): `a()`, `b()`
- **`z`** — 16 function(s): `a()`, `z()`, `if()`, `switch()`, `b()`, `run()`, `c()`, `onViewDetachedFromWindow()`, `onViewAttachedToWindow()`, `d()`, `for()`, `e()`, `x()`, `f()`, `return()`, `g()`

</details>

### Package `com.google.android.material.j`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 76 | 13 |

<details>
<summary><b>Function list for <code>com.google.android.material.j</code></b> (click to expand)</summary>

- **`a`** — 5 function(s): `a()`, `if()`, `PorterDuffColorFilter()`, `XmlPullParserException()`, `IllegalStateException()`

</details>

### Package `com.google.android.material.k`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 95 | 20 |

<details>
<summary><b>Function list for <code>com.google.android.material.k</code></b> (click to expand)</summary>

- **`a`** — 5 function(s): `a()`, `return()`, `b()`, `c()`, `if()`

</details>

### Package `com.google.android.material.l`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | b | 12 | 2 |
| `b` | class | — | 9 | 2 |
| `c` | class | — | 71 | 13 |

<details>
<summary><b>Function list for <code>com.google.android.material.l</code></b> (click to expand)</summary>

- **`a`** — 2 function(s): `getExpandedComponentIdHint()`, `setExpandedComponentIdHint()`
- **`b`** — 1 function(s): `a()`
- **`c`** — 5 function(s): `c()`, `a()`, `if()`, `d()`, `b()`

</details>

### Package `com.google.android.material.m`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | p implements s | 190 | 38 |

<details>
<summary><b>Function list for <code>com.google.android.material.m</code></b> (click to expand)</summary>

- **`a`** — 21 function(s): `a()`, `this()`, `super()`, `if()`, `setOutlineProvider()`, `onDetachedFromWindow()`, `setLayerType()`, `onAttachedToWindow()`, `onDraw()`, `onSizeChanged()`, `setShapeAppearanceModel()`, `invalidate()`, `getShapeAppearanceModel()`, `setStrokeColorResource()`, `setStrokeColor()`, `getStrokeColor()`, `setStrokeWidth()`, `setStrokeWidthResource()`, `getStrokeWidth()`, `C0090a()`, `getOutline()`

</details>

### Package `com.google.android.material.n`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 49 | 14 |

<details>
<summary><b>Function list for <code>com.google.android.material.n</code></b> (click to expand)</summary>

- **`a`** — 4 function(s): `a()`, `return()`, `b()`, `if()`

</details>

### Package `com.google.android.material.o`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | n | 459 | 101 |

<details>
<summary><b>Function list for <code>com.google.android.material.o</code></b> (click to expand)</summary>

- **`a`** — 47 function(s): `a()`, `this()`, `super()`, `if()`, `setElevation()`, `setFitsSystemWindows()`, `setItemIconSize()`, `setItemMaxLines()`, `addView()`, `b()`, `setOverScrollMode()`, `onAttachedToWindow()`, `InsetDrawable()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `setNavigationItemSelectedListener()`, `onMeasure()`, `getMenuInflater()`, `getMenu()`, `getHeaderCount()`, `c()`, `getItemIconTintList()`, `setItemIconTintList()`, `getItemTextColor()`, `setItemTextColor()`, `getItemBackground()`, `setItemBackgroundResource()`, `setItemBackground()`, `getItemHorizontalPadding()`, `setItemHorizontalPadding()`, `setItemHorizontalPaddingResource()`, `getItemIconPadding()`, `setItemIconPadding()`, `setItemIconPaddingResource()`, `setCheckedItem()`, `IllegalArgumentException()`, `getCheckedItem()`, `setItemTextAppearance()`, `getItemMaxLines()`, `d()`, `ColorStateList()`, `onDetachedFromWindow()`, `getViewTreeObserver()`, `onGlobalLayout()`, `createFromParcel()`, `newArray()`, `writeToParcel()`

</details>

### Package `com.google.android.material.p`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | t | 81 | 15 |

<details>
<summary><b>Function list for <code>com.google.android.material.p</code></b> (click to expand)</summary>

- **`a`** — 7 function(s): `a()`, `this()`, `super()`, `if()`, `onAttachedToWindow()`, `setUseMaterialThemeColors()`, `getMaterialThemeColorsTintList()`

</details>

### Package `com.google.android.material.q`  (6 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | f | 47 | 9 |
| `b` | class | — | 60 | 17 |
| `c` | class | — | 82 | 15 |
| `d` | class | — | 203 | 32 |
| `e` | class | — | 17 | 2 |
| `f` | class | — | 13 | 2 |

<details>
<summary><b>Function list for <code>com.google.android.material.q</code></b> (click to expand)</summary>

- **`a`** — 2 function(s): `a()`, `if()`
- **`b`** — 5 function(s): `a()`, `if()`, `IllegalArgumentException()`, `b()`, `return()`
- **`c`** — 6 function(s): `c()`, `a()`, `if()`, `b()`, `return()`, `d()`
- **`d`** — 6 function(s): `d()`, `a()`, `if()`, `b()`, `switch()`, `c()`
- **`e`** — 1 function(s): `a()`
- **`f`** — 1 function(s): `a()`

</details>

### Package `com.google.android.material.r`  (2 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | Drawable implements e, s | 153 | 25 |
| `b` | class | — | 102 | 13 |

<details>
<summary><b>Function list for <code>com.google.android.material.r</code></b> (click to expand)</summary>

- **`a`** — 20 function(s): `isStateful()`, `a()`, `this()`, `setTint()`, `setTintMode()`, `setTintList()`, `setShapeAppearanceModel()`, `getShapeAppearanceModel()`, `onStateChange()`, `if()`, `draw()`, `onBoundsChange()`, `getConstantState()`, `mutate()`, `setAlpha()`, `setColorFilter()`, `getOpacity()`, `getChangingConfigurations()`, `C0093a()`, `newDrawable()`
- **`b`** — 5 function(s): `b()`, `a()`, `if()`, `ColorStateList()`, `for()`

</details>

### Package `com.google.android.material.s`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | androidx.appcompat.b.a.c | 294 | 51 |
| `b` | class | — | 123 | 11 |
| `c` | class | — | 16 | 4 |

<details>
<summary><b>Function list for <code>com.google.android.material.s</code></b> (click to expand)</summary>

- **`a`** — 17 function(s): `getOpacity()`, `a()`, `super()`, `e()`, `invalidateSelf()`, `setAlpha()`, `onBoundsChange()`, `if()`, `IllegalArgumentException()`, `b()`, `getPadding()`, `draw()`, `c()`, `g()`, `d()`, `return()`, `f()`
- **`b`** — 4 function(s): `b()`, `this()`, `a()`, `if()`
- **`c`** — 2 function(s): `a()`, `b()`

</details>

### Package `com.google.android.material.snackbar`  (5 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `BaseTransientBottomBar` | class | BaseTransientBottomBar<B>> | 967 | 176 |
| `Snackbar` | class | BaseTransientBottomBar<Snackbar> | 294 | 56 |
| `SnackbarContentLayout` | class | LinearLayout implements a | 147 | 28 |
| `a` | class | — | 9 | 2 |
| `b` | class | — | 216 | 55 |

<details>
<summary><b>Function list for <code>com.google.android.material.snackbar</code></b> (click to expand)</summary>

- **`BaseTransientBottomBar`** — 58 function(s): `run()`, `if()`, `a()`, `b()`, `handleMessage()`, `switch()`, `BaseTransientBottomBar()`, `IllegalArgumentException()`, `u()`, `v()`, `w()`, `return()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`, `k()`, `l()`, `m()`, `Behavior()`, `o()`, `x()`, `p()`, `q()`, `y()`, `z()`, `A()`, `B()`, `onAnimationEnd()`, `onAnimationUpdate()`, `C()`, `onAnimationStart()`, `D()`, `for()`, `r()`, `onTouch()`, `this()`, `super()`, `setBackgroundTintList()`, `setBackgroundTintMode()`, `setOnTouchListener()`, `setFocusable()`, `setBackground()`, `setBackgroundDrawable()`, `setOnClickListener()`, `onLayout()`, `onAttachedToWindow()`, `onDetachedFromWindow()`, `setOnLayoutChangeListener()`, `setOnAttachStateChangeListener()`, `getAnimationMode()`, `setAnimationMode()`, `getBackgroundOverlayColorAlpha()`, `getActionTextColorAlpha()`
- **`Snackbar`** — 19 function(s): `a()`, `Snackbar()`, `super()`, `j()`, `k()`, `l()`, `if()`, `IllegalArgumentException()`, `b()`, `return()`, `while()`, `g()`, `onClick()`, `c()`, `h()`, `i()`, `SnackbarLayout()`, `onMeasure()`, `for()`
- **`SnackbarContentLayout`** — 12 function(s): `SnackbarContentLayout()`, `this()`, `super()`, `onFinishInflate()`, `getMessageView()`, `getActionView()`, `a()`, `if()`, `onMeasure()`, `setOrientation()`, `b()`, `setMaxInlineActionWidth()`
- **`a`** — 2 function(s): `a()`, `b()`
- **`b`** — 12 function(s): `handleMessage()`, `if()`, `a()`, `b()`, `synchronized()`, `c()`, `d()`, `e()`, `f()`, `C0094b()`, `g()`, `h()`

</details>

### Package `com.google.android.material.t`  (20 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | d | 37 | 7 |
| `b` | class | d | 45 | 7 |
| `c` | class | — | 14 | 0 |
| `d` | class | — | 10 | 1 |
| `e` | class | — | 20 | 5 |
| `f` | class | e | 29 | 3 |
| `g` | class | — | 21 | 4 |
| `h` | class | — | 72 | 12 |
| `i` | class | g | 30 | 3 |
| `j` | class | Drawable implements androidx.core.graphics.drawable.e, s | 966 | 234 |
| `k` | class | — | 58 | 17 |
| `l` | class | g | 28 | 3 |
| `m` | class | d | 38 | 7 |
| `n` | class | e | 28 | 3 |
| `o` | class | — | 502 | 101 |
| `p` | class | — | 252 | 40 |
| `q` | class | h | 536 | 114 |
| `r` | class | o | 78 | 12 |
| `s` | class | — | 12 | 2 |
| `t` | class | g | 25 | 2 |

<details>
<summary><b>Function list for <code>com.google.android.material.t</code></b> (click to expand)</summary>

- **`a`** — 5 function(s): `a()`, `equals()`, `if()`, `return()`, `hashCode()`
- **`b`** — 6 function(s): `b()`, `while()`, `a()`, `equals()`, `if()`, `hashCode()`
- **`d`** — 1 function(s): `a()`
- **`e`** — 1 function(s): `a()`
- **`f`** — 2 function(s): `f()`, `a()`
- **`g`** — 2 function(s): `f()`, `a()`
- **`h`** — 6 function(s): `onScrollChanged()`, `h()`, `a()`, `b()`, `if()`, `IllegalStateException()`
- **`i`** — 3 function(s): `f()`, `i()`, `a()`
- **`j`** — 84 function(s): `b()`, `return()`, `getOpacity()`, `a()`, `j()`, `this()`, `g()`, `getConstantState()`, `mutate()`, `setShapeAppearanceModel()`, `invalidateSelf()`, `getShapeAppearanceModel()`, `T()`, `if()`, `onStateChange()`, `U()`, `h()`, `V()`, `setTintMode()`, `setTintList()`, `W()`, `X()`, `setTint()`, `i()`, `I()`, `n()`, `Y()`, `setAlpha()`, `setColorFilter()`, `getTransparentRegion()`, `Z()`, `o()`, `aa()`, `getPadding()`, `J()`, `ab()`, `ac()`, `ad()`, `ae()`, `p()`, `af()`, `q()`, `ag()`, `r()`, `ah()`, `s()`, `ai()`, `t()`, `aj()`, `K()`, `ak()`, `k()`, `l()`, `L()`, `al()`, `M()`, `am()`, `N()`, `an()`, `ao()`, `u()`, `m()`, `O()`, `ap()`, `c()`, `d()`, `e()`, `onBoundsChange()`, `draw()`, `f()`, `IllegalStateException()`, `for()`, `aq()`, `ar()`, `getOutline()`, `PorterDuffColorFilter()`, `isStateful()`, `as()`, `at()`, `au()`, `av()`, `aw()`, `getChangingConfigurations()`, `newDrawable()`
- **`k`** — 8 function(s): `k()`, `a()`, `switch()`, `n()`, `f()`, `b()`, `g()`, `if()`
- **`l`** — 3 function(s): `l()`, `a()`, `f()`
- **`m`** — 6 function(s): `m()`, `a()`, `equals()`, `if()`, `return()`, `hashCode()`
- **`n`** — 2 function(s): `n()`, `a()`
- **`o`** — 17 function(s): `a()`, `b()`, `c()`, `d()`, `e()`, `if()`, `f()`, `return()`, `o()`, `g()`, `h()`, `i()`, `j()`, `k()`, `l()`, `m()`, `n()`
- **`p`** — 8 function(s): `a()`, `b()`, `return()`, `p()`, `for()`, `c()`, `if()`, `switch()`
- **`q`** — 13 function(s): `a()`, `q()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `if()`, `for()`, `h()`, `while()`, `return()`
- **`r`** — 5 function(s): `a()`, `b()`, `c()`, `d()`, `e()`
- **`s`** — 2 function(s): `getShapeAppearanceModel()`, `setShapeAppearanceModel()`
- **`t`** — 2 function(s): `t()`, `a()`

</details>

### Package `com.google.android.material.textfield`  (11 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `TextInputEditText` | class | l | 183 | 34 |
| `TextInputLayout` | class | LinearLayout | 2,521 | 709 |
| `a` | class | e | 181 | 30 |
| `b` | class | e | 20 | 3 |
| `c` | class | j | 107 | 25 |
| `d` | class | e | 369 | 60 |
| `e` | class | — | 40 | 5 |
| `f` | class | — | 510 | 127 |
| `g` | class | androidx.appcompat.widget.e | 175 | 38 |
| `h` | class | e | 22 | 3 |
| `i` | class | e | 101 | 16 |

<details>
<summary><b>Function list for <code>com.google.android.material.textfield</code></b> (click to expand)</summary>

- **`TextInputEditText`** — 18 function(s): `TextInputEditText()`, `this()`, `super()`, `setTextInputLayoutFocusedRectEnabled()`, `onAttachedToWindow()`, `if()`, `setHint()`, `getHint()`, `onCreateInputConnection()`, `getTextInputLayout()`, `for()`, `return()`, `getHintFromLayout()`, `a()`, `getFocusedRect()`, `getGlobalVisibleRect()`, `requestRectangleOnScreen()`, `onInitializeAccessibilityNodeInfo()`
- **`TextInputLayout`** — 213 function(s): `a()`, `TextInputLayout()`, `this()`, `super()`, `setOrientation()`, `setWillNotDraw()`, `setAddStatesFromChildren()`, `addView()`, `setHint()`, `if()`, `setBoxStrokeColorStateList()`, `setBoxStrokeErrorColor()`, `setHintTextAppearance()`, `setErrorIconDrawable()`, `setErrorIconTintList()`, `setErrorIconTintMode()`, `setCounterMaxLength()`, `setStartIconOnClickListener()`, `setStartIconOnLongClickListener()`, `setStartIconDrawable()`, `setStartIconContentDescription()`, `setStartIconCheckable()`, `setStartIconTintList()`, `setStartIconTintMode()`, `setBoxBackgroundMode()`, `setEndIconMode()`, `setEndIconDrawable()`, `setEndIconContentDescription()`, `setEndIconCheckable()`, `setEndIconTintList()`, `setEndIconTintMode()`, `setHelperTextEnabled()`, `setHelperText()`, `setHelperTextTextAppearance()`, `setErrorEnabled()`, `setErrorTextAppearance()`, `setErrorContentDescription()`, `setCounterTextAppearance()`, `setCounterOverflowTextAppearance()`, `setPlaceholderText()`, `setPlaceholderTextAppearance()`, `setPrefixText()`, `setPrefixTextAppearance()`, `setSuffixText()`, `setSuffixTextAppearance()`, `setErrorTextColor()`, `setHelperTextColor()`, `setHintTextColor()`, `setCounterTextColor()`, `setCounterOverflowTextColor()`, `setPlaceholderTextColor()`, `setPrefixTextColor()`, `setSuffixTextColor()`, `setCounterEnabled()`, `setEnabled()`, `w()`, `setEditText()`, `getBoxBackground()`, `IllegalStateException()`, `s()`, `getBoxBackgroundMode()`, `t()`, `u()`, `p()`, `switch()`, `IllegalArgumentException()`, `v()`, `return()`, `setBoxStrokeWidthResource()`, `setBoxStrokeWidth()`, `getBoxStrokeWidth()`, `setBoxStrokeWidthFocusedResource()`, `setBoxStrokeWidthFocused()`, `getBoxStrokeWidthFocused()`, `setBoxStrokeColor()`, `getBoxStrokeColor()`, `getBoxStrokeErrorColor()`, `setBoxBackgroundColorResource()`, `setBoxBackgroundColor()`, `L()`, `setBoxBackgroundColorStateList()`, `getBoxBackgroundColor()`, `getBoxCornerRadiusTopStart()`, `getBoxCornerRadiusTopEnd()`, `getBoxCornerRadiusBottomEnd()`, `getBoxCornerRadiusBottomStart()`, `setTypeface()`, `getTypeface()`, `dispatchProvideAutofillStructure()`, `setTextInputAccessibilityDelegate()`, `beforeTextChanged()`, `onTextChanged()`, `afterTextChanged()`, `f()`, `R()`, `E()`, `G()`, `getBaseline()`, `d()`, `e()`, `getEditText()`, `setHintInternal()`, `sendAccessibilityEvent()`, `Z()`, `getHint()`, `setHintEnabled()`, `b()`, `getHintTextColor()`, `setDefaultHintTextColor()`, `getDefaultHintTextColor()`, `getErrorCurrentTextColors()`, `c()`, `getHelperTextCurrentTextColor()`, `getErrorContentDescription()`, `setError()`, `setErrorIconVisible()`, `getErrorIconDrawable()`, `H()`, `x()`, `getCounterTextColor()`, `getCounterOverflowTextColor()`, `setPlaceholderTextEnabled()`, `y()`, `getPlaceholderText()`, `B()`, `C()`, `z()`, `A()`, `getPlaceholderTextColor()`, `getPlaceholderTextAppearance()`, `D()`, `getPrefixText()`, `getPrefixTextView()`, `V()`, `getPrefixTextColor()`, `F()`, `getSuffixText()`, `getSuffixTextView()`, `getEndIconDelegate()`, `getSuffixTextColor()`, `for()`, `getCounterMaxLength()`, `getCounterOverflowDescription()`, `I()`, `J()`, `K()`, `M()`, `invalidate()`, `N()`, `O()`, `createFromParcel()`, `newArray()`, `writeToParcel()`, `toString()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `run()`, `requestLayout()`, `dispatchRestoreInstanceState()`, `getError()`, `getHelperText()`, `g()`, `setHintAnimationEnabled()`, `onMeasure()`, `Q()`, `P()`, `setStartIconVisible()`, `S()`, `getStartIconDrawable()`, `h()`, `i()`, `getStartIconContentDescription()`, `setEndIconVisible()`, `U()`, `getEndIconMode()`, `setEndIconOnClickListener()`, `setErrorIconOnClickListener()`, `setEndIconOnLongClickListener()`, `setErrorIconOnLongClickListener()`, `j()`, `setEndIconActivated()`, `k()`, `getEndIconDrawable()`, `getEndIconContentDescription()`, `l()`, `m()`, `setPasswordVisibilityToggleDrawable()`, `setPasswordVisibilityToggleContentDescription()`, `getPasswordVisibilityToggleDrawable()`, `getPasswordVisibilityToggleContentDescription()`, `n()`, `setPasswordVisibilityToggleEnabled()`, `setPasswordVisibilityToggleTintList()`, `setPasswordVisibilityToggleTintMode()`, `getEndIconView()`, `while()`, `T()`, `W()`, `X()`, `getEndIconToUpdateDummyDrawable()`, `onLayout()`, `draw()`, `Y()`, `aa()`, `o()`, `drawableStateChanged()`, `ab()`, `onAnimationUpdate()`, `q()`, `r()`, `getHintCurrentCollapsedTextColor()`, `getHintCollapsedTextHeight()`, `getErrorTextCurrentColor()`
- **`a`** — 14 function(s): `a()`, `super()`, `beforeTextChanged()`, `onTextChanged()`, `afterTextChanged()`, `if()`, `onFocusChange()`, `onClick()`, `c()`, `b()`, `onAnimationStart()`, `onAnimationEnd()`, `onAnimationUpdate()`, `d()`
- **`b`** — 3 function(s): `b()`, `super()`, `a()`
- **`c`** — 8 function(s): `this()`, `c()`, `super()`, `a()`, `if()`, `invalidateSelf()`, `b()`, `draw()`
- **`d`** — 19 function(s): `a()`, `b()`, `d()`, `super()`, `beforeTextChanged()`, `onTextChanged()`, `afterTextChanged()`, `run()`, `onFocusChange()`, `if()`, `c()`, `onClick()`, `e()`, `onTouch()`, `onDismiss()`, `RuntimeException()`, `return()`, `onAnimationEnd()`, `onAnimationUpdate()`
- **`e`** — 3 function(s): `a()`, `b()`, `e()`
- **`f`** — 23 function(s): `a()`, `f()`, `c()`, `if()`, `b()`, `onAnimationEnd()`, `onAnimationStart()`, `d()`, `switch()`, `r()`, `return()`, `e()`, `g()`, `h()`, `i()`, `j()`, `k()`, `l()`, `m()`, `n()`, `o()`, `p()`, `q()`
- **`g`** — 18 function(s): `g()`, `this()`, `super()`, `if()`, `setKeyListener()`, `onItemClick()`, `showDropDown()`, `setAdapter()`, `onAttachedToWindow()`, `setHint()`, `getHint()`, `onMeasure()`, `setMeasuredDimension()`, `a()`, `for()`, `b()`, `return()`, `setText()`
- **`h`** — 3 function(s): `h()`, `super()`, `a()`
- **`i`** — 9 function(s): `i()`, `super()`, `afterTextChanged()`, `onTextChanged()`, `beforeTextChanged()`, `a()`, `if()`, `onClick()`, `c()`

</details>

### Package `com.google.android.material.textview`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `MaterialTextView` | class | aa | 87 | 22 |

<details>
<summary><b>Function list for <code>com.google.android.material.textview</code></b> (click to expand)</summary>

- **`MaterialTextView`** — 8 function(s): `MaterialTextView()`, `this()`, `super()`, `if()`, `a()`, `setTextAppearance()`, `setLineHeight()`, `for()`

</details>

### Package `com.google.android.material.theme`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `MaterialComponentsViewInflater` | class | k | 49 | 8 |

<details>
<summary><b>Function list for <code>com.google.android.material.theme</code></b> (click to expand)</summary>

- **`MaterialComponentsViewInflater`** — 7 function(s): `c()`, `MaterialButton()`, `g()`, `a()`, `h()`, `MaterialTextView()`, `j()`

</details>

### Package `com.google.android.material.theme.a`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 56 | 6 |

<details>
<summary><b>Function list for <code>com.google.android.material.theme.a</code></b> (click to expand)</summary>

- **`a`** — 3 function(s): `a()`, `if()`, `b()`

</details>

### Package `com.google.android.material.transformation`  (7 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `ExpandableBehavior` | class | CoordinatorLayout.b<View> | 104 | 22 |
| `ExpandableTransformationBehavior` | class | ExpandableBehavior | 53 | 8 |
| `FabTransformationBehavior` | class | ExpandableTransformationBehavior | 493 | 98 |
| `FabTransformationScrimBehavior` | class | ExpandableTransformationBehavior | 93 | 14 |
| `FabTransformationSheetBehavior` | class | FabTransformationBehavior | 89 | 16 |
| `a` | class | com.google.android.material.g.a.a | 17 | 4 |
| `b` | class | com.google.android.material.g.b | 19 | 4 |

<details>
<summary><b>Function list for <code>com.google.android.material.transformation</code></b> (click to expand)</summary>

- **`ExpandableBehavior`** — 10 function(s): `a()`, `ExpandableBehavior()`, `super()`, `if()`, `onPreDraw()`, `b()`, `e()`, `for()`, `return()`, `IllegalArgumentException()`
- **`ExpandableTransformationBehavior`** — 6 function(s): `b()`, `ExpandableTransformationBehavior()`, `super()`, `a()`, `if()`, `onAnimationEnd()`
- **`FabTransformationBehavior`** — 13 function(s): `a()`, `FabTransformationBehavior()`, `super()`, `if()`, `IllegalStateException()`, `b()`, `c()`, `d()`, `onAnimationStart()`, `onAnimationEnd()`, `for()`, `onAnimationUpdate()`, `return()`
- **`FabTransformationScrimBehavior`** — 7 function(s): `FabTransformationScrimBehavior()`, `super()`, `a()`, `b()`, `onAnimationStart()`, `if()`, `onAnimationEnd()`
- **`FabTransformationSheetBehavior`** — 5 function(s): `FabTransformationSheetBehavior()`, `super()`, `a()`, `if()`, `for()`
- **`a`** — 3 function(s): `a()`, `this()`, `super()`
- **`b`** — 3 function(s): `b()`, `this()`, `super()`

</details>

### Package `com.google.android.material.u`  (7 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 11 | 1 |
| `b` | class | — | 13 | 2 |
| `c` | class | c<S, L, T>, L extends com.google.android.material.u.a<S>, T extends com.google.android.... | 1,564 | 429 |
| `d` | class | e | 19 | 1 |
| `e` | class | — | 16 | 1 |
| `f` | class | c<f, a, b> | 339 | 13 |
| `g` | class | c<g, a, b> | 331 | 15 |

<details>
<summary><b>Function list for <code>com.google.android.material.u</code></b> (click to expand)</summary>

- **`a`** — 1 function(s): `a()`
- **`b`** — 2 function(s): `a()`, `b()`
- **`c`** — 116 function(s): `a()`, `c()`, `this()`, `super()`, `setFocusable()`, `setClickable()`, `setValues()`, `if()`, `setTrackInactiveTintList()`, `setTrackActiveTintList()`, `setHaloTintList()`, `setTickInactiveTintList()`, `setTickActiveTintList()`, `setThumbRadius()`, `setHaloRadius()`, `setThumbElevation()`, `setTrackHeight()`, `setEnabled()`, `b()`, `g()`, `IllegalStateException()`, `h()`, `i()`, `j()`, `while()`, `k()`, `l()`, `getValueFrom()`, `setValueFrom()`, `postInvalidate()`, `getValueTo()`, `setValueTo()`, `getValues()`, `ArrayList()`, `setValuesInternal()`, `IllegalArgumentException()`, `o()`, `m()`, `v()`, `for()`, `getStepSize()`, `setStepSize()`, `getFocusedThumbIndex()`, `setFocusedThumbIndex()`, `setActiveThumbIndex()`, `getActiveThumbIndex()`, `setLabelFormatter()`, `getThumbElevation()`, `setThumbElevationResource()`, `getThumbRadius()`, `setThumbRadiusResource()`, `getHaloRadius()`, `setHaloRadiusResource()`, `getLabelBehavior()`, `setLabelBehavior()`, `requestLayout()`, `getTrackSidePadding()`, `getTrackWidth()`, `getTrackHeight()`, `t()`, `getHaloTintList()`, `invalidate()`, `getThumbTintList()`, `setThumbTintList()`, `getTickTintList()`, `setTickTintList()`, `getTickActiveTintList()`, `getTickInactiveTintList()`, `getTrackTintList()`, `setTrackTintList()`, `getTrackActiveTintList()`, `getTrackInactiveTintList()`, `setLayerType()`, `onAttachedToWindow()`, `onDetachedFromWindow()`, `removeCallbacks()`, `onMeasure()`, `onSizeChanged()`, `n()`, `p()`, `onDraw()`, `d()`, `s()`, `getActiveRange()`, `e()`, `q()`, `onTouchEvent()`, `switch()`, `getParent()`, `requestFocus()`, `r()`, `w()`, `x()`, `setPressed()`, `getValueOfTouchPositionAbsolute()`, `return()`, `getValueOfTouchPosition()`, `f()`, `u()`, `drawableStateChanged()`, `onKeyDown()`, `onKeyUp()`, `y()`, `onFocusChanged()`, `getAccessibilityFocusedVirtualViewId()`, `getAccessibilityClassName()`, `dispatchHoverEvent()`, `dispatchKeyEvent()`, `postDelayed()`, `run()`, `onSaveInstanceState()`, `onRestoreInstanceState()`, `createFromParcel()`, `C0096c()`, `newArray()`, `writeToParcel()`
- **`d`** — 1 function(s): `a()`
- **`e`** — 1 function(s): `a()`
- **`f`** — 8 function(s): `f()`, `this()`, `super()`, `if()`, `setValues()`, `getValues()`, `a()`, `for()`
- **`g`** — 10 function(s): `g()`, `this()`, `super()`, `if()`, `setValue()`, `getValue()`, `getValues()`, `setValues()`, `d()`, `setActiveThumbIndex()`

</details>

### Package `com.google.android.material.v`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | androidx.f.a.a | 78 | 13 |

<details>
<summary><b>Function list for <code>com.google.android.material.v</code></b> (click to expand)</summary>

- **`a`** — 7 function(s): `createFromParcel()`, `a()`, `newArray()`, `super()`, `for()`, `writeToParcel()`, `toString()`

</details>

### Package `com.google.android.material.w`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | au | 107 | 23 |

<details>
<summary><b>Function list for <code>com.google.android.material.w</code></b> (click to expand)</summary>

- **`a`** — 10 function(s): `a()`, `this()`, `super()`, `onAttachedToWindow()`, `if()`, `setThumbTintList()`, `setTrackTintList()`, `setUseMaterialThemeColors()`, `getMaterialThemeColorsThumbTintList()`, `getMaterialThemeColorsTrackTintList()`

</details>

### Package `com.google.android.material.x`  (3 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | View | 31 | 4 |
| `b` | class | HorizontalScrollView | 2,175 | 566 |
| `c` | class | h.f | 215 | 39 |

<details>
<summary><b>Function list for <code>com.google.android.material.x</code></b> (click to expand)</summary>

- **`a`** — 3 function(s): `a()`, `this()`, `super()`
- **`b`** — 101 function(s): `a()`, `b()`, `c()`, `this()`, `super()`, `setHorizontalScrollBarEnabled()`, `if()`, `setSelectedTabIndicator()`, `setSelectedTabIndicatorGravity()`, `setTabIndicatorFullWidth()`, `l()`, `setSelectedTabIndicatorColor()`, `setSelectedTabIndicatorHeight()`, `scrollTo()`, `setSelectedTabView()`, `IllegalArgumentException()`, `f()`, `setOnTabSelectedListener()`, `getTabCount()`, `getSelectedTabPosition()`, `for()`, `d()`, `while()`, `setTabMode()`, `getTabMode()`, `setTabGravity()`, `getTabGravity()`, `getTabIndicatorGravity()`, `e()`, `setInlineLabel()`, `setInlineLabelResource()`, `setUnboundedRipple()`, `setUnboundedRippleResource()`, `g()`, `setTabTextColors()`, `i()`, `getTabTextColors()`, `setTabIconTint()`, `setTabIconTintResource()`, `getTabIconTint()`, `getTabRippleColor()`, `setTabRippleColor()`, `setTabRippleColorResource()`, `getTabSelectedIndicator()`, `setupWithViewPager()`, `setTabsFromPagerAdapter()`, `shouldDelayChildPressedState()`, `getTabScrollRange()`, `onAttachedToWindow()`, `onDetachedFromWindow()`, `h()`, `addView()`, `j()`, `setElevation()`, `onInitializeAccessibilityNodeInfo()`, `onDraw()`, `onMeasure()`, `getChildAt()`, `switch()`, `requestLayout()`, `k()`, `onAnimationUpdate()`, `setScrollAnimatorListener()`, `m()`, `n()`, `setGravity()`, `setOrientation()`, `setClickable()`, `drawableStateChanged()`, `invalidate()`, `performClick()`, `playSoundEffect()`, `setSelected()`, `sendAccessibilityEvent()`, `setTab()`, `removeView()`, `setContentDescription()`, `getOrCreateBadge()`, `IllegalStateException()`, `getBadge()`, `onLayoutChange()`, `setClipChildren()`, `setClipToPadding()`, `setVisibility()`, `return()`, `getContentWidth()`, `getTab()`, `setWillNotDraw()`, `onRtlPropertiesChanged()`, `onLayout()`, `onAnimationStart()`, `onAnimationEnd()`, `draw()`, `ColorStateList()`, `getDefaultHeight()`, `getTabMinWidth()`, `generateLayoutParams()`, `generateDefaultLayoutParams()`, `getTabMaxWidth()`, `onChanged()`, `onInvalidated()`
- **`c`** — 9 function(s): `a()`, `c()`, `this()`, `if()`, `IllegalStateException()`, `b()`, `for()`, `C0098c()`, `d()`

</details>

### Package `com.google.android.material.y`  (1 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | j implements q.a | 283 | 68 |

<details>
<summary><b>Function list for <code>com.google.android.material.y</code></b> (click to expand)</summary>

- **`a`** — 23 function(s): `a()`, `c()`, `super()`, `onLayoutChange()`, `setShapeAppearanceModel()`, `g()`, `h()`, `if()`, `invalidateSelf()`, `b()`, `d()`, `e()`, `f()`, `getIntrinsicWidth()`, `return()`, `getIntrinsicHeight()`, `draw()`, `onBoundsChange()`, `onStateChange()`, `i()`, `l()`, `j()`, `k()`

</details>

### Package `com.google.android.material.z`  (22 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 8 | 1 |
| `b` | class | — | 52 | 8 |
| `c` | class | — | 27 | 5 |
| `d` | class | v | 47 | 8 |
| `e` | class | v | 39 | 6 |
| `f` | class | — | 14 | 3 |
| `g` | class | — | 84 | 16 |
| `h` | class | — | 24 | 1 |
| `i` | class | bf | 26 | 2 |
| `j` | class | — | 50 | 6 |
| `k` | class | w | 27 | 5 |
| `l` | class | ag | 848 | 149 |
| `m` | class | q<r> | 57 | 6 |
| `n` | class | q<d> | 54 | 4 |
| `o` | class | q<e> | 51 | 5 |
| `p` | class | q<v> | 87 | 12 |
| `q` | class | v> extends bf | 81 | 15 |
| `r` | class | v | 109 | 25 |
| `s` | class | v | 134 | 44 |
| `t` | class | ag.e | 27 | 5 |
| `u` | class | — | 173 | 40 |
| `v` | class | — | 17 | 2 |

<details>
<summary><b>Function list for <code>com.google.android.material.z</code></b> (click to expand)</summary>

- **`a`** — 1 function(s): `a()`
- **`b`** — 4 function(s): `a()`, `switch()`, `IllegalArgumentException()`, `b()`
- **`c`** — 3 function(s): `a()`, `c()`, `b()`
- **`d`** — 3 function(s): `a()`, `b()`, `onAnimationUpdate()`
- **`e`** — 3 function(s): `a()`, `b()`, `onAnimationUpdate()`
- **`f`** — 1 function(s): `a()`
- **`g`** — 6 function(s): `a()`, `h()`, `switch()`, `IllegalArgumentException()`, `if()`, `g()`
- **`h`** — 1 function(s): `h()`
- **`i`** — 2 function(s): `a()`, `b()`
- **`j`** — 3 function(s): `a()`, `if()`, `b()`
- **`k`** — 4 function(s): `a()`, `b()`, `if()`, `PointF()`
- **`l`** — 47 function(s): `l()`, `a()`, `b()`, `c()`, `d()`, `u()`, `v()`, `g()`, `w()`, `x()`, `y()`, `z()`, `A()`, `B()`, `e()`, `C()`, `f()`, `D()`, `E()`, `h()`, `i()`, `F()`, `j()`, `G()`, `k()`, `H()`, `I()`, `m()`, `J()`, `K()`, `L()`, `M()`, `N()`, `O()`, `if()`, `return()`, `onAnimationUpdate()`, `RectF()`, `switch()`, `IllegalArgumentException()`, `getOpacity()`, `draw()`, `setAlpha()`, `UnsupportedOperationException()`, `setColorFilter()`, `invalidateSelf()`, `PointF()`
- **`m`** — 6 function(s): `m()`, `super()`, `b()`, `a()`, `v()`, `d()`
- **`n`** — 4 function(s): `n()`, `super()`, `b()`, `v()`
- **`o`** — 5 function(s): `o()`, `super()`, `b()`, `e()`, `v()`
- **`p`** — 11 function(s): `p()`, `super()`, `b()`, `v()`, `c()`, `switch()`, `s()`, `r()`, `IllegalArgumentException()`, `x()`, `e()`
- **`q`** — 6 function(s): `q()`, `a()`, `w()`, `u()`, `b()`, `if()`
- **`r`** — 9 function(s): `r()`, `this()`, `a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `if()`
- **`s`** — 5 function(s): `s()`, `a()`, `b()`, `if()`, `IllegalArgumentException()`
- **`t`** — 5 function(s): `a()`, `b()`, `c()`, `d()`, `e()`
- **`u`** — 11 function(s): `a()`, `u()`, `return()`, `b()`, `LinearGradient()`, `while()`, `if()`, `IllegalArgumentException()`, `RectF()`, `Rect()`, `c()`
- **`v`** — 2 function(s): `a()`, `b()`

</details>

### Package `com.google.android.material.z.a`  (23 classes)

| Class | Kind | Extends / Implements | Lines | Methods |
|---|---|---|---:|---|
| `a` | class | — | 11 | 1 |
| `b` | class | — | 55 | 8 |
| `c` | class | — | 30 | 5 |
| `d` | class | w | 49 | 8 |
| `e` | class | w | 41 | 6 |
| `f` | class | — | 16 | 3 |
| `g` | class | — | 86 | 16 |
| `h` | class | — | 27 | 1 |
| `i` | class | Visibility | 28 | 2 |
| `j` | class | — | 52 | 6 |
| `k` | class | PathMotion | 29 | 5 |
| `l` | class | Transition | 851 | 149 |
| `m` | class | SharedElementCallback | 207 | 41 |
| `n` | class | r<s> | 59 | 6 |
| `o` | class | r<d> | 56 | 4 |
| `p` | class | r<e> | 53 | 5 |
| `q` | class | r<w> | 89 | 12 |
| `r` | class | w> extends Visibility | 83 | 15 |
| `s` | class | w | 111 | 25 |
| `t` | class | w | 136 | 44 |
| `u` | class | Transition.TransitionListener | 29 | 5 |
| `v` | class | — | 175 | 40 |
| `w` | class | — | 19 | 2 |

<details>
<summary><b>Function list for <code>com.google.android.material.z.a</code></b> (click to expand)</summary>

- **`a`** — 1 function(s): `a()`
- **`b`** — 4 function(s): `a()`, `switch()`, `IllegalArgumentException()`, `b()`
- **`c`** — 3 function(s): `a()`, `c()`, `b()`
- **`d`** — 3 function(s): `a()`, `b()`, `onAnimationUpdate()`
- **`e`** — 3 function(s): `a()`, `b()`, `onAnimationUpdate()`
- **`f`** — 1 function(s): `a()`
- **`g`** — 6 function(s): `a()`, `h()`, `switch()`, `IllegalArgumentException()`, `if()`, `g()`
- **`h`** — 1 function(s): `h()`
- **`i`** — 2 function(s): `onAppear()`, `onDisappear()`
- **`j`** — 3 function(s): `a()`, `if()`, `b()`
- **`k`** — 4 function(s): `getPath()`, `a()`, `if()`, `PointF()`
- **`l`** — 44 function(s): `l()`, `setInterpolator()`, `a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `g()`, `h()`, `i()`, `j()`, `k()`, `m()`, `n()`, `o()`, `p()`, `q()`, `r()`, `s()`, `t()`, `u()`, `v()`, `w()`, `getTransitionProperties()`, `captureStartValues()`, `captureEndValues()`, `if()`, `return()`, `createAnimator()`, `onAnimationUpdate()`, `addListener()`, `onTransitionStart()`, `onTransitionEnd()`, `RectF()`, `switch()`, `IllegalArgumentException()`, `getOpacity()`, `draw()`, `setAlpha()`, `UnsupportedOperationException()`, `setColorFilter()`, `invalidateSelf()`, `PointF()`
- **`m`** — 14 function(s): `a()`, `if()`, `return()`, `onCaptureSharedElementSnapshot()`, `onCreateSnapshotView()`, `onMapSharedElements()`, `c()`, `onSharedElementStart()`, `onSharedElementEnd()`, `b()`, `onTransitionStart()`, `onTransitionEnd()`, `d()`, `e()`
- **`n`** — 5 function(s): `n()`, `super()`, `a()`, `c()`, `d()`
- **`o`** — 4 function(s): `o()`, `super()`, `a()`, `c()`
- **`p`** — 5 function(s): `p()`, `super()`, `a()`, `e()`, `c()`
- **`q`** — 9 function(s): `q()`, `super()`, `a()`, `c()`, `switch()`, `t()`, `s()`, `IllegalArgumentException()`, `e()`
- **`r`** — 8 function(s): `r()`, `setInterpolator()`, `d()`, `b()`, `a()`, `onAppear()`, `onDisappear()`, `if()`
- **`s`** — 9 function(s): `s()`, `this()`, `a()`, `b()`, `c()`, `d()`, `e()`, `f()`, `if()`
- **`t`** — 5 function(s): `t()`, `a()`, `b()`, `if()`, `IllegalArgumentException()`
- **`u`** — 5 function(s): `onTransitionCancel()`, `onTransitionEnd()`, `onTransitionPause()`, `onTransitionResume()`, `onTransitionStart()`
- **`v`** — 11 function(s): `a()`, `v()`, `return()`, `b()`, `LinearGradient()`, `while()`, `if()`, `IllegalArgumentException()`, `RectF()`, `Rect()`, `c()`
- **`w`** — 2 function(s): `a()`, `b()`

</details>

## 8. Notable constants, endpoints and data

### Network endpoints and schemes

- `http://schemas.android.com/apk/res-auto` — referenced in a.java
- `http://schemas.android.com/apk/res/android` — referenced in Chip.java, h.java

### Native libraries (`System.loadLibrary`)

`UpgradeService`

### Reflection targets (`Class.forName`)

`android.app.ActivityThread`, `android.app.Notification$Action`, `android.content.res.ThemedResourceCache`, `android.graphics.Insets`, `android.os.SystemProperties`, `android.view.GhostView`, `androidx.j.n`, `androidx.sharetarget.ShortcutInfoCompatSaverImpl`, `com.android.internal.view.menu.MenuBuilder`, `libcore.icu.ICU`

### Cryptography used

`MD5`

### SQL statements

_none found_

### Other notable literals

- `"com.yftech.action.upgradeservice.start"  (service action)`
- `"com.yftech.permission.service.upgrade.upgrade"  (declared signature permission)`
- `"UpgradeService"  (native library)`
- `"notifyMcuUpgradeStart" / "notifyMcuUpgradeEnd"  (JNI methods)`
- `Modules: MCU, DSP, Screen, ScreenMCU  (per-project adapters A58 / CA1105)`

## 9. Resource inventory

| Extension | Count |
|---|---:|
| `.xml` | 476 |
| `.png` | 254 |
| `.version` | 27 |
| `.so` | 2 |
| `.properties` | 2 |
| `.dex` | 1 |
| `.mf` | 1 |
| `.rsa` | 1 |
| `.sf` | 1 |
| `.pro` | 1 |

## 10. How this was produced

```bash
# 1. fetch the single APK file (no repo clone)
curl -L -o com.yftech.service.upgrade.apk \
  https://github.com/ammisaidkaidi/yftech-apks/raw/main/com.yftech.service.upgrade.apk

# 2. Java-readable decompilation
jadx -d sources -j 2 --show-bad-code com.yftech.service.upgrade.apk

# 3. smali + resource decoding
apktool d -f -o smali com.yftech.service.upgrade.apk
```

## License / disclaimer

This repository is an automatically generated, human-readable decompilation of a system application for research and interoperability purposes. All code remains the property of its original author(s). No original source code was published by the vendor.
