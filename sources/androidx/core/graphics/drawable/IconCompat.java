package androidx.core.graphics.drawable;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.annotation.ax;
import androidx.annotation.k;
import androidx.annotation.q;
import androidx.annotation.w;
import androidx.core.n.af;
import androidx.versionedparcelable.CustomVersionedParcelable;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;

/* loaded from: /home/user/work/dex/classes.dex */
public class IconCompat extends CustomVersionedParcelable {
    private static final String A = "obj";
    private static final String B = "int1";
    private static final String C = "int2";
    private static final String D = "tint_list";
    private static final String E = "tint_mode";

    /* renamed from: a, reason: collision with root package name */
    public static final int f425a = -1;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    public static final int e = 4;
    public static final int f = 5;
    public static final int g = 6;
    static final PorterDuff.Mode o = PorterDuff.Mode.SRC_IN;
    private static final String r = "IconCompat";
    private static final float s = 0.25f;
    private static final float t = 0.6666667f;
    private static final float u = 0.9166667f;
    private static final float v = 0.010416667f;
    private static final float w = 0.020833334f;
    private static final int x = 61;
    private static final int y = 30;
    private static final String z = "type";

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public int h;
    Object i;

    @ap(a = {ap.a.LIBRARY})
    public byte[] j;

    @ap(a = {ap.a.LIBRARY})
    public Parcelable k;

    @ap(a = {ap.a.LIBRARY})
    public int l;

    @ap(a = {ap.a.LIBRARY})
    public int m;

    @ap(a = {ap.a.LIBRARY})
    public ColorStateList n;
    PorterDuff.Mode p;

    @ap(a = {ap.a.LIBRARY})
    public String q;

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface a {
    }

    private static String b(int i) {
        switch (i) {
            case 1:
                return "BITMAP";
            case 2:
                return "RESOURCE";
            case 3:
                return "DATA";
            case 4:
                return "URI";
            case 5:
                return "BITMAP_MASKABLE";
            case 6:
                return "URI_MASKABLE";
            default:
                return "UNKNOWN";
        }
    }

    public static IconCompat a(Context context, @q int i) {
        if (context == null) {
            throw new IllegalArgumentException("Context must not be null.");
        }
        return a(context.getResources(), context.getPackageName(), i);
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static IconCompat a(Resources resources, String str, @q int i) {
        if (str == null) {
            throw new IllegalArgumentException("Package must not be null.");
        }
        if (i == 0) {
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
        IconCompat iconCompat = new IconCompat(2);
        iconCompat.l = i;
        if (resources != null) {
            try {
                iconCompat.i = resources.getResourceName(i);
            } catch (Resources.NotFoundException unused) {
                throw new IllegalArgumentException("Icon resource cannot be found");
            }
        } else {
            iconCompat.i = str;
        }
        return iconCompat;
    }

    public static IconCompat a(Bitmap bitmap) {
        if (bitmap == null) {
            throw new IllegalArgumentException("Bitmap must not be null.");
        }
        IconCompat iconCompat = new IconCompat(1);
        iconCompat.i = bitmap;
        return iconCompat;
    }

    public static IconCompat b(Bitmap bitmap) {
        if (bitmap == null) {
            throw new IllegalArgumentException("Bitmap must not be null.");
        }
        IconCompat iconCompat = new IconCompat(5);
        iconCompat.i = bitmap;
        return iconCompat;
    }

    public static IconCompat a(byte[] bArr, int i, int i2) {
        if (bArr == null) {
            throw new IllegalArgumentException("Data must not be null.");
        }
        IconCompat iconCompat = new IconCompat(3);
        iconCompat.i = bArr;
        iconCompat.l = i;
        iconCompat.m = i2;
        return iconCompat;
    }

    public static IconCompat a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Uri must not be null.");
        }
        IconCompat iconCompat = new IconCompat(4);
        iconCompat.i = str;
        return iconCompat;
    }

    public static IconCompat a(Uri uri) {
        if (uri == null) {
            throw new IllegalArgumentException("Uri must not be null.");
        }
        return a(uri.toString());
    }

    @ah
    public static IconCompat b(@ah String str) {
        if (str == null) {
            throw new IllegalArgumentException("Uri must not be null.");
        }
        IconCompat iconCompat = new IconCompat(6);
        iconCompat.i = str;
        return iconCompat;
    }

    @ah
    public static IconCompat b(@ah Uri uri) {
        if (uri == null) {
            throw new IllegalArgumentException("Uri must not be null.");
        }
        return b(uri.toString());
    }

    @ap(a = {ap.a.LIBRARY})
    public IconCompat() {
        this.h = -1;
        this.j = null;
        this.k = null;
        this.l = 0;
        this.m = 0;
        this.n = null;
        this.p = o;
        this.q = null;
    }

    private IconCompat(int i) {
        this.h = -1;
        this.j = null;
        this.k = null;
        this.l = 0;
        this.m = 0;
        this.n = null;
        this.p = o;
        this.q = null;
        this.h = i;
    }

    public int a() {
        if (this.h == -1 && Build.VERSION.SDK_INT >= 23) {
            return c((Icon) this.i);
        }
        return this.h;
    }

    @ah
    public String b() {
        if (this.h == -1 && Build.VERSION.SDK_INT >= 23) {
            return d((Icon) this.i);
        }
        if (this.h != 2) {
            throw new IllegalStateException("called getResPackage() on " + this);
        }
        return ((String) this.i).split(":", -1)[0];
    }

    @w
    public int c() {
        if (this.h == -1 && Build.VERSION.SDK_INT >= 23) {
            return e((Icon) this.i);
        }
        if (this.h != 2) {
            throw new IllegalStateException("called getResId() on " + this);
        }
        return this.l;
    }

    @ai
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public Bitmap d() {
        if (this.h == -1 && Build.VERSION.SDK_INT >= 23) {
            if (this.i instanceof Bitmap) {
                return (Bitmap) this.i;
            }
            return null;
        }
        if (this.h == 1) {
            return (Bitmap) this.i;
        }
        if (this.h == 5) {
            return a((Bitmap) this.i, true);
        }
        throw new IllegalStateException("called getBitmap() on " + this);
    }

    @ah
    public Uri e() {
        if (this.h == -1 && Build.VERSION.SDK_INT >= 23) {
            return f((Icon) this.i);
        }
        if (this.h != 4 && this.h != 6) {
            throw new IllegalStateException("called getUri() on " + this);
        }
        return Uri.parse((String) this.i);
    }

    public IconCompat a(@k int i) {
        return a(ColorStateList.valueOf(i));
    }

    public IconCompat a(ColorStateList colorStateList) {
        this.n = colorStateList;
        return this;
    }

    public IconCompat a(PorterDuff.Mode mode) {
        this.p = mode;
        return this;
    }

    @am(a = 23)
    @ah
    @Deprecated
    public Icon f() {
        return a((Context) null);
    }

    @am(a = 23)
    @ah
    public Icon a(@ai Context context) {
        Icon createWithBitmap;
        int i = this.h;
        if (i == -1) {
            return (Icon) this.i;
        }
        switch (i) {
            case 1:
                createWithBitmap = Icon.createWithBitmap((Bitmap) this.i);
                break;
            case 2:
                createWithBitmap = Icon.createWithResource(b(), this.l);
                break;
            case 3:
                createWithBitmap = Icon.createWithData((byte[]) this.i, this.l, this.m);
                break;
            case 4:
                createWithBitmap = Icon.createWithContentUri((String) this.i);
                break;
            case 5:
                if (Build.VERSION.SDK_INT >= 26) {
                    createWithBitmap = Icon.createWithAdaptiveBitmap((Bitmap) this.i);
                    break;
                } else {
                    createWithBitmap = Icon.createWithBitmap(a((Bitmap) this.i, false));
                    break;
                }
            case 6:
                if (context == null) {
                    throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + e());
                }
                InputStream e2 = e(context);
                if (e2 == null) {
                    throw new IllegalStateException("Cannot load adaptive icon from uri: " + e());
                }
                if (Build.VERSION.SDK_INT >= 26) {
                    createWithBitmap = Icon.createWithAdaptiveBitmap(BitmapFactory.decodeStream(e2));
                    break;
                } else {
                    createWithBitmap = Icon.createWithBitmap(a(BitmapFactory.decodeStream(e2), false));
                    break;
                }
            default:
                throw new IllegalArgumentException("Unknown type");
        }
        if (this.n != null) {
            createWithBitmap.setTintList(this.n);
        }
        if (this.p != o) {
            createWithBitmap.setTintMode(this.p);
        }
        return createWithBitmap;
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void b(@ah Context context) {
        if (this.h == 2) {
            String str = (String) this.i;
            if (str.contains(":")) {
                String str2 = str.split(":", -1)[1];
                String str3 = str2.split("/", -1)[0];
                String str4 = str2.split("/", -1)[1];
                String str5 = str.split(":", -1)[0];
                int identifier = a(context, str5).getIdentifier(str4, str3, str5);
                if (this.l != identifier) {
                    Log.i(r, "Id has changed for " + str5 + "/" + str4);
                    this.l = identifier;
                }
            }
        }
    }

    @ai
    public Drawable c(@ah Context context) {
        b(context);
        if (Build.VERSION.SDK_INT >= 23) {
            return a(context).loadDrawable(context);
        }
        Drawable d2 = d(context);
        if (d2 != null && (this.n != null || this.p != o)) {
            d2.mutate();
            androidx.core.graphics.drawable.a.a(d2, this.n);
            androidx.core.graphics.drawable.a.a(d2, this.p);
        }
        return d2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private Drawable d(Context context) {
        switch (this.h) {
            case 1:
                return new BitmapDrawable(context.getResources(), (Bitmap) this.i);
            case 2:
                String b2 = b();
                if (TextUtils.isEmpty(b2)) {
                    b2 = context.getPackageName();
                }
                try {
                    return androidx.core.b.b.g.a(a(context, b2), this.l, context.getTheme());
                } catch (RuntimeException e2) {
                    Log.e(r, String.format("Unable to load resource 0x%08x from pkg=%s", Integer.valueOf(this.l), this.i), e2);
                    break;
                }
            case 3:
                return new BitmapDrawable(context.getResources(), BitmapFactory.decodeByteArray((byte[]) this.i, this.l, this.m));
            case 4:
                InputStream e3 = e(context);
                if (e3 != null) {
                    return new BitmapDrawable(context.getResources(), BitmapFactory.decodeStream(e3));
                }
                return null;
            case 5:
                return new BitmapDrawable(context.getResources(), a((Bitmap) this.i, false));
            case 6:
                InputStream e4 = e(context);
                if (e4 != null) {
                    if (Build.VERSION.SDK_INT >= 26) {
                        return new AdaptiveIconDrawable(null, new BitmapDrawable(context.getResources(), BitmapFactory.decodeStream(e4)));
                    }
                    return new BitmapDrawable(context.getResources(), a(BitmapFactory.decodeStream(e4), false));
                }
                return null;
            default:
                return null;
        }
    }

    private InputStream e(Context context) {
        Uri e2 = e();
        String scheme = e2.getScheme();
        if ("content".equals(scheme) || "file".equals(scheme)) {
            try {
                return context.getContentResolver().openInputStream(e2);
            } catch (Exception e3) {
                Log.w(r, "Unable to load image from URI: " + e2, e3);
                return null;
            }
        }
        try {
            return new FileInputStream(new File((String) this.i));
        } catch (FileNotFoundException e4) {
            Log.w(r, "Unable to load image from path: " + e2, e4);
            return null;
        }
    }

    private static Resources a(Context context, String str) {
        if ("android".equals(str)) {
            return Resources.getSystem();
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 8192);
            if (applicationInfo != null) {
                return packageManager.getResourcesForApplication(applicationInfo);
            }
            return null;
        } catch (PackageManager.NameNotFoundException e2) {
            Log.e(r, String.format("Unable to find pkg=%s for icon", str), e2);
            return null;
        }
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void a(@ah Intent intent, @ai Drawable drawable, @ah Context context) {
        Bitmap a2;
        b(context);
        int i = this.h;
        if (i != 5) {
            switch (i) {
                case 1:
                    a2 = (Bitmap) this.i;
                    if (drawable != null) {
                        a2 = a2.copy(a2.getConfig(), true);
                        break;
                    }
                    break;
                case 2:
                    try {
                        Context createPackageContext = context.createPackageContext(b(), 0);
                        if (drawable == null) {
                            intent.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(createPackageContext, this.l));
                            return;
                        }
                        Drawable a3 = androidx.core.b.c.a(createPackageContext, this.l);
                        if (a3.getIntrinsicWidth() > 0 && a3.getIntrinsicHeight() > 0) {
                            a2 = Bitmap.createBitmap(a3.getIntrinsicWidth(), a3.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                            a3.setBounds(0, 0, a2.getWidth(), a2.getHeight());
                            a3.draw(new Canvas(a2));
                            break;
                        }
                        int launcherLargeIconSize = ((ActivityManager) createPackageContext.getSystemService("activity")).getLauncherLargeIconSize();
                        a2 = Bitmap.createBitmap(launcherLargeIconSize, launcherLargeIconSize, Bitmap.Config.ARGB_8888);
                        a3.setBounds(0, 0, a2.getWidth(), a2.getHeight());
                        a3.draw(new Canvas(a2));
                    } catch (PackageManager.NameNotFoundException e2) {
                        throw new IllegalArgumentException("Can't find package " + this.i, e2);
                    }
                    break;
                default:
                    throw new IllegalArgumentException("Icon type not supported for intent shortcuts");
            }
        } else {
            a2 = a((Bitmap) this.i, true);
        }
        if (drawable != null) {
            int width = a2.getWidth();
            int height = a2.getHeight();
            drawable.setBounds(width / 2, height / 2, width, height);
            drawable.draw(new Canvas(a2));
        }
        intent.putExtra("android.intent.extra.shortcut.ICON", a2);
    }

    public Bundle g() {
        Bundle bundle = new Bundle();
        int i = this.h;
        if (i != -1) {
            switch (i) {
                case 1:
                case 5:
                    bundle.putParcelable(A, (Bitmap) this.i);
                    break;
                case 2:
                case 4:
                case 6:
                    bundle.putString(A, (String) this.i);
                    break;
                case 3:
                    bundle.putByteArray(A, (byte[]) this.i);
                    break;
                default:
                    throw new IllegalArgumentException("Invalid icon");
            }
        } else {
            bundle.putParcelable(A, (Parcelable) this.i);
        }
        bundle.putInt(z, this.h);
        bundle.putInt(B, this.l);
        bundle.putInt(C, this.m);
        if (this.n != null) {
            bundle.putParcelable(D, this.n);
        }
        if (this.p != o) {
            bundle.putString(E, this.p.name());
        }
        return bundle;
    }

    @ah
    public String toString() {
        if (this.h == -1) {
            return String.valueOf(this.i);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        sb.append(b(this.h));
        switch (this.h) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.i).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.i).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(b());
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(c())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.l);
                if (this.m != 0) {
                    sb.append(" off=");
                    sb.append(this.m);
                    break;
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.i);
                break;
        }
        if (this.n != null) {
            sb.append(" tint=");
            sb.append(this.n);
        }
        if (this.p != o) {
            sb.append(" mode=");
            sb.append(this.p);
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public void a(boolean z2) {
        this.q = this.p.name();
        int i = this.h;
        if (i == -1) {
            if (z2) {
                throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
            }
            this.k = (Parcelable) this.i;
            return;
        }
        switch (i) {
            case 1:
            case 5:
                if (z2) {
                    Bitmap bitmap = (Bitmap) this.i;
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                    this.j = byteArrayOutputStream.toByteArray();
                    return;
                }
                this.k = (Parcelable) this.i;
                return;
            case 2:
                this.j = ((String) this.i).getBytes(Charset.forName("UTF-16"));
                return;
            case 3:
                this.j = (byte[]) this.i;
                return;
            case 4:
            case 6:
                this.j = this.i.toString().getBytes(Charset.forName("UTF-16"));
                return;
            default:
                return;
        }
    }

    @Override // androidx.versionedparcelable.CustomVersionedParcelable
    public void h() {
        this.p = PorterDuff.Mode.valueOf(this.q);
        int i = this.h;
        if (i == -1) {
            if (this.k != null) {
                this.i = this.k;
                return;
            }
            throw new IllegalArgumentException("Invalid icon");
        }
        switch (i) {
            case 1:
            case 5:
                if (this.k != null) {
                    this.i = this.k;
                    return;
                }
                this.i = this.j;
                this.h = 3;
                this.l = 0;
                this.m = this.j.length;
                return;
            case 2:
            case 4:
            case 6:
                this.i = new String(this.j, Charset.forName("UTF-16"));
                return;
            case 3:
                this.i = this.j;
                return;
            default:
                return;
        }
    }

    @ai
    public static IconCompat a(@ah Bundle bundle) {
        int i = bundle.getInt(z);
        IconCompat iconCompat = new IconCompat(i);
        iconCompat.l = bundle.getInt(B);
        iconCompat.m = bundle.getInt(C);
        if (bundle.containsKey(D)) {
            iconCompat.n = (ColorStateList) bundle.getParcelable(D);
        }
        if (bundle.containsKey(E)) {
            iconCompat.p = PorterDuff.Mode.valueOf(bundle.getString(E));
        }
        if (i != -1) {
            switch (i) {
                case 1:
                case 5:
                    break;
                case 2:
                case 4:
                case 6:
                    iconCompat.i = bundle.getString(A);
                    return iconCompat;
                case 3:
                    iconCompat.i = bundle.getByteArray(A);
                    return iconCompat;
                default:
                    Log.w(r, "Unknown type " + i);
                    return null;
            }
        }
        iconCompat.i = bundle.getParcelable(A);
        return iconCompat;
    }

    @ai
    @am(a = 23)
    public static IconCompat a(@ah Context context, @ah Icon icon) {
        androidx.core.m.i.a(icon);
        int c2 = c(icon);
        if (c2 == 2) {
            String d2 = d(icon);
            try {
                return a(a(context, d2), d2, e(icon));
            } catch (Resources.NotFoundException unused) {
                throw new IllegalArgumentException("Icon resource cannot be found");
            }
        }
        if (c2 == 4) {
            return a(f(icon));
        }
        if (c2 == 6) {
            return b(f(icon));
        }
        IconCompat iconCompat = new IconCompat(-1);
        iconCompat.i = icon;
        return iconCompat;
    }

    @ai
    @am(a = 23)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static IconCompat a(@ah Icon icon) {
        androidx.core.m.i.a(icon);
        int c2 = c(icon);
        if (c2 == 2) {
            return a((Resources) null, d(icon), e(icon));
        }
        if (c2 == 4) {
            return a(f(icon));
        }
        if (c2 == 6) {
            return b(f(icon));
        }
        IconCompat iconCompat = new IconCompat(-1);
        iconCompat.i = icon;
        return iconCompat;
    }

    @ai
    @am(a = 23)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public static IconCompat b(@ah Icon icon) {
        if (c(icon) == 2 && e(icon) == 0) {
            return null;
        }
        return a(icon);
    }

    @am(a = 23)
    private static int c(@ah Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getType();
        }
        try {
            return ((Integer) icon.getClass().getMethod("getType", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException e2) {
            Log.e(r, "Unable to get icon type " + icon, e2);
            return -1;
        } catch (NoSuchMethodException e3) {
            Log.e(r, "Unable to get icon type " + icon, e3);
            return -1;
        } catch (InvocationTargetException e4) {
            Log.e(r, "Unable to get icon type " + icon, e4);
            return -1;
        }
    }

    @ai
    @am(a = 23)
    private static String d(@ah Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResPackage();
        }
        try {
            return (String) icon.getClass().getMethod("getResPackage", new Class[0]).invoke(icon, new Object[0]);
        } catch (IllegalAccessException e2) {
            Log.e(r, "Unable to get icon package", e2);
            return null;
        } catch (NoSuchMethodException e3) {
            Log.e(r, "Unable to get icon package", e3);
            return null;
        } catch (InvocationTargetException e4) {
            Log.e(r, "Unable to get icon package", e4);
            return null;
        }
    }

    @am(a = 23)
    @q
    @w
    private static int e(@ah Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getResId();
        }
        try {
            return ((Integer) icon.getClass().getMethod("getResId", new Class[0]).invoke(icon, new Object[0])).intValue();
        } catch (IllegalAccessException e2) {
            Log.e(r, "Unable to get icon resource", e2);
            return 0;
        } catch (NoSuchMethodException e3) {
            Log.e(r, "Unable to get icon resource", e3);
            return 0;
        } catch (InvocationTargetException e4) {
            Log.e(r, "Unable to get icon resource", e4);
            return 0;
        }
    }

    @ai
    @am(a = 23)
    private static Uri f(@ah Icon icon) {
        if (Build.VERSION.SDK_INT >= 28) {
            return icon.getUri();
        }
        try {
            return (Uri) icon.getClass().getMethod("getUri", new Class[0]).invoke(icon, new Object[0]);
        } catch (IllegalAccessException e2) {
            Log.e(r, "Unable to get icon uri", e2);
            return null;
        } catch (NoSuchMethodException e3) {
            Log.e(r, "Unable to get icon uri", e3);
            return null;
        } catch (InvocationTargetException e4) {
            Log.e(r, "Unable to get icon uri", e4);
            return null;
        }
    }

    @ax
    static Bitmap a(Bitmap bitmap, boolean z2) {
        int min = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * t);
        Bitmap createBitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(3);
        float f2 = min;
        float f3 = 0.5f * f2;
        float f4 = u * f3;
        if (z2) {
            float f5 = v * f2;
            paint.setColor(0);
            paint.setShadowLayer(f5, 0.0f, f2 * w, 1023410176);
            canvas.drawCircle(f3, f3, f4, paint);
            paint.setShadowLayer(f5, 0.0f, 0.0f, 503316480);
            canvas.drawCircle(f3, f3, f4, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(af.s);
        BitmapShader bitmapShader = new BitmapShader(bitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - min)) / 2, (-(bitmap.getHeight() - min)) / 2);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f3, f3, f4, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }
}
