package androidx.core.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.text.Html;
import android.text.Spanned;
import android.util.Log;
import android.view.ActionProvider;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.ShareActionProvider;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.as;
import java.util.ArrayList;

/* loaded from: /home/user/work/dex/classes.dex */
public final class y {

    /* renamed from: a, reason: collision with root package name */
    public static final String f389a = "androidx.core.app.EXTRA_CALLING_PACKAGE";
    public static final String b = "android.support.v4.app.EXTRA_CALLING_PACKAGE";
    public static final String c = "androidx.core.app.EXTRA_CALLING_ACTIVITY";
    public static final String d = "android.support.v4.app.EXTRA_CALLING_ACTIVITY";
    private static final String e = ".sharecompat_";

    private y() {
    }

    @ai
    public static String a(@ah Activity activity) {
        Intent intent = activity.getIntent();
        String callingPackage = activity.getCallingPackage();
        return (callingPackage != null || intent == null) ? callingPackage : a(intent);
    }

    @ai
    static String a(@ah Intent intent) {
        String stringExtra = intent.getStringExtra(f389a);
        return stringExtra == null ? intent.getStringExtra(b) : stringExtra;
    }

    @ai
    public static ComponentName b(@ah Activity activity) {
        Intent intent = activity.getIntent();
        ComponentName callingActivity = activity.getCallingActivity();
        return callingActivity == null ? b(intent) : callingActivity;
    }

    @ai
    static ComponentName b(@ah Intent intent) {
        ComponentName componentName = (ComponentName) intent.getParcelableExtra(c);
        return componentName == null ? (ComponentName) intent.getParcelableExtra(d) : componentName;
    }

    public static void a(@ah MenuItem menuItem, @ah a aVar) {
        ShareActionProvider shareActionProvider;
        ActionProvider actionProvider = menuItem.getActionProvider();
        if (!(actionProvider instanceof ShareActionProvider)) {
            shareActionProvider = new ShareActionProvider(aVar.b());
        } else {
            shareActionProvider = (ShareActionProvider) actionProvider;
        }
        shareActionProvider.setShareHistoryFileName(e + aVar.b().getClass().getName());
        shareActionProvider.setShareIntent(aVar.a());
        menuItem.setActionProvider(shareActionProvider);
        if (Build.VERSION.SDK_INT >= 16 || menuItem.hasSubMenu()) {
            return;
        }
        menuItem.setIntent(aVar.c());
    }

    public static void a(@ah Menu menu, @androidx.annotation.w int i, @ah a aVar) {
        MenuItem findItem = menu.findItem(i);
        if (findItem == null) {
            throw new IllegalArgumentException("Could not find menu item with id " + i + " in the supplied menu");
        }
        a(findItem, aVar);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        @ah
        private final Context f390a;

        @ah
        private final Intent b = new Intent().setAction("android.intent.action.SEND");

        @ai
        private CharSequence c;

        @ai
        private ArrayList<String> d;

        @ai
        private ArrayList<String> e;

        @ai
        private ArrayList<String> f;

        @ai
        private ArrayList<Uri> g;

        @ah
        public static a a(@ah Activity activity) {
            return a((Context) androidx.core.m.i.a(activity), activity.getComponentName());
        }

        @ah
        private static a a(@ah Context context, @ai ComponentName componentName) {
            return new a(context, componentName);
        }

        private a(@ah Context context, @ai ComponentName componentName) {
            this.f390a = (Context) androidx.core.m.i.a(context);
            this.b.putExtra(y.f389a, context.getPackageName());
            this.b.putExtra(y.b, context.getPackageName());
            this.b.putExtra(y.c, componentName);
            this.b.putExtra(y.d, componentName);
            this.b.addFlags(524288);
        }

        @ah
        public Intent a() {
            if (this.d != null) {
                a("android.intent.extra.EMAIL", this.d);
                this.d = null;
            }
            if (this.e != null) {
                a("android.intent.extra.CC", this.e);
                this.e = null;
            }
            if (this.f != null) {
                a("android.intent.extra.BCC", this.f);
                this.f = null;
            }
            boolean z = this.g != null && this.g.size() > 1;
            boolean equals = "android.intent.action.SEND_MULTIPLE".equals(this.b.getAction());
            if (!z && equals) {
                this.b.setAction("android.intent.action.SEND");
                if (this.g != null && !this.g.isEmpty()) {
                    this.b.putExtra("android.intent.extra.STREAM", this.g.get(0));
                } else {
                    this.b.removeExtra("android.intent.extra.STREAM");
                }
                this.g = null;
            }
            if (z && !equals) {
                this.b.setAction("android.intent.action.SEND_MULTIPLE");
                if (this.g != null && !this.g.isEmpty()) {
                    this.b.putParcelableArrayListExtra("android.intent.extra.STREAM", this.g);
                } else {
                    this.b.removeExtra("android.intent.extra.STREAM");
                }
            }
            return this.b;
        }

        @ah
        Context b() {
            return this.f390a;
        }

        private void a(String str, ArrayList<String> arrayList) {
            String[] stringArrayExtra = this.b.getStringArrayExtra(str);
            int length = stringArrayExtra != null ? stringArrayExtra.length : 0;
            String[] strArr = new String[arrayList.size() + length];
            arrayList.toArray(strArr);
            if (stringArrayExtra != null) {
                System.arraycopy(stringArrayExtra, 0, strArr, arrayList.size(), length);
            }
            this.b.putExtra(str, strArr);
        }

        private void a(@ai String str, @ah String[] strArr) {
            Intent a2 = a();
            String[] stringArrayExtra = a2.getStringArrayExtra(str);
            int length = stringArrayExtra != null ? stringArrayExtra.length : 0;
            String[] strArr2 = new String[strArr.length + length];
            if (stringArrayExtra != null) {
                System.arraycopy(stringArrayExtra, 0, strArr2, 0, length);
            }
            System.arraycopy(strArr, 0, strArr2, length, strArr.length);
            a2.putExtra(str, strArr2);
        }

        @ah
        public Intent c() {
            return Intent.createChooser(a(), this.c);
        }

        public void d() {
            this.f390a.startActivity(c());
        }

        @ah
        public a a(@ai CharSequence charSequence) {
            this.c = charSequence;
            return this;
        }

        @ah
        public a a(@as int i) {
            return a(this.f390a.getText(i));
        }

        @ah
        public a a(@ai String str) {
            this.b.setType(str);
            return this;
        }

        @ah
        public a b(@ai CharSequence charSequence) {
            this.b.putExtra("android.intent.extra.TEXT", charSequence);
            return this;
        }

        @ah
        public a b(@ai String str) {
            this.b.putExtra(androidx.core.b.e.f415a, str);
            if (!this.b.hasExtra("android.intent.extra.TEXT")) {
                b(Html.fromHtml(str));
            }
            return this;
        }

        @ah
        public a a(@ai Uri uri) {
            if (!"android.intent.action.SEND".equals(this.b.getAction())) {
                this.b.setAction("android.intent.action.SEND");
            }
            this.g = null;
            this.b.putExtra("android.intent.extra.STREAM", uri);
            return this;
        }

        @ah
        public a b(@ah Uri uri) {
            Uri uri2 = (Uri) this.b.getParcelableExtra("android.intent.extra.STREAM");
            if (this.g == null && uri2 == null) {
                return a(uri);
            }
            if (this.g == null) {
                this.g = new ArrayList<>();
            }
            if (uri2 != null) {
                this.b.removeExtra("android.intent.extra.STREAM");
                this.g.add(uri2);
            }
            this.g.add(uri);
            return this;
        }

        @ah
        public a a(@ai String[] strArr) {
            if (this.d != null) {
                this.d = null;
            }
            this.b.putExtra("android.intent.extra.EMAIL", strArr);
            return this;
        }

        @ah
        public a c(@ah String str) {
            if (this.d == null) {
                this.d = new ArrayList<>();
            }
            this.d.add(str);
            return this;
        }

        @ah
        public a b(@ah String[] strArr) {
            a("android.intent.extra.EMAIL", strArr);
            return this;
        }

        @ah
        public a c(@ai String[] strArr) {
            this.b.putExtra("android.intent.extra.CC", strArr);
            return this;
        }

        @ah
        public a d(@ah String str) {
            if (this.e == null) {
                this.e = new ArrayList<>();
            }
            this.e.add(str);
            return this;
        }

        @ah
        public a d(@ah String[] strArr) {
            a("android.intent.extra.CC", strArr);
            return this;
        }

        @ah
        public a e(@ai String[] strArr) {
            this.b.putExtra("android.intent.extra.BCC", strArr);
            return this;
        }

        @ah
        public a e(@ah String str) {
            if (this.f == null) {
                this.f = new ArrayList<>();
            }
            this.f.add(str);
            return this;
        }

        @ah
        public a f(@ah String[] strArr) {
            a("android.intent.extra.BCC", strArr);
            return this;
        }

        @ah
        public a f(@ai String str) {
            this.b.putExtra("android.intent.extra.SUBJECT", str);
            return this;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        private static final String f391a = "IntentReader";

        @ah
        private final Context b;

        @ah
        private final Intent c;

        @ai
        private final String d;

        @ai
        private final ComponentName e;

        @ai
        private ArrayList<Uri> f;

        @ah
        public static b a(@ah Activity activity) {
            return a((Context) androidx.core.m.i.a(activity), activity.getIntent());
        }

        @ah
        private static b a(@ah Context context, @ah Intent intent) {
            return new b(context, intent);
        }

        private b(@ah Context context, @ah Intent intent) {
            this.b = (Context) androidx.core.m.i.a(context);
            this.c = (Intent) androidx.core.m.i.a(intent);
            this.d = y.a(intent);
            this.e = y.b(intent);
        }

        public boolean a() {
            String action = this.c.getAction();
            return "android.intent.action.SEND".equals(action) || "android.intent.action.SEND_MULTIPLE".equals(action);
        }

        public boolean b() {
            return "android.intent.action.SEND".equals(this.c.getAction());
        }

        public boolean c() {
            return "android.intent.action.SEND_MULTIPLE".equals(this.c.getAction());
        }

        @ai
        public String d() {
            return this.c.getType();
        }

        @ai
        public CharSequence e() {
            return this.c.getCharSequenceExtra("android.intent.extra.TEXT");
        }

        @ai
        public String f() {
            String stringExtra = this.c.getStringExtra(androidx.core.b.e.f415a);
            if (stringExtra != null) {
                return stringExtra;
            }
            CharSequence e = e();
            if (e instanceof Spanned) {
                return Html.toHtml((Spanned) e);
            }
            if (e == null) {
                return stringExtra;
            }
            if (Build.VERSION.SDK_INT >= 16) {
                return Html.escapeHtml(e);
            }
            StringBuilder sb = new StringBuilder();
            a(sb, e, 0, e.length());
            return sb.toString();
        }

        private static void a(StringBuilder sb, CharSequence charSequence, int i, int i2) {
            while (i < i2) {
                char charAt = charSequence.charAt(i);
                if (charAt == '<') {
                    sb.append("&lt;");
                } else if (charAt == '>') {
                    sb.append("&gt;");
                } else if (charAt == '&') {
                    sb.append("&amp;");
                } else if (charAt > '~' || charAt < ' ') {
                    sb.append("&#");
                    sb.append((int) charAt);
                    sb.append(";");
                } else if (charAt == ' ') {
                    while (true) {
                        int i3 = i + 1;
                        if (i3 >= i2 || charSequence.charAt(i3) != ' ') {
                            break;
                        }
                        sb.append("&nbsp;");
                        i = i3;
                    }
                    sb.append(' ');
                } else {
                    sb.append(charAt);
                }
                i++;
            }
        }

        @ai
        public Uri g() {
            return (Uri) this.c.getParcelableExtra("android.intent.extra.STREAM");
        }

        @ai
        public Uri a(int i) {
            if (this.f == null && c()) {
                this.f = this.c.getParcelableArrayListExtra("android.intent.extra.STREAM");
            }
            if (this.f != null) {
                return this.f.get(i);
            }
            if (i == 0) {
                return (Uri) this.c.getParcelableExtra("android.intent.extra.STREAM");
            }
            throw new IndexOutOfBoundsException("Stream items available: " + h() + " index requested: " + i);
        }

        public int h() {
            if (this.f == null && c()) {
                this.f = this.c.getParcelableArrayListExtra("android.intent.extra.STREAM");
            }
            if (this.f != null) {
                return this.f.size();
            }
            return this.c.hasExtra("android.intent.extra.STREAM") ? 1 : 0;
        }

        @ai
        public String[] i() {
            return this.c.getStringArrayExtra("android.intent.extra.EMAIL");
        }

        @ai
        public String[] j() {
            return this.c.getStringArrayExtra("android.intent.extra.CC");
        }

        @ai
        public String[] k() {
            return this.c.getStringArrayExtra("android.intent.extra.BCC");
        }

        @ai
        public String l() {
            return this.c.getStringExtra("android.intent.extra.SUBJECT");
        }

        @ai
        public String m() {
            return this.d;
        }

        @ai
        public ComponentName n() {
            return this.e;
        }

        @ai
        public Drawable o() {
            if (this.e == null) {
                return null;
            }
            try {
                return this.b.getPackageManager().getActivityIcon(this.e);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e(f391a, "Could not retrieve icon for calling activity", e);
                return null;
            }
        }

        @ai
        public Drawable p() {
            if (this.d == null) {
                return null;
            }
            try {
                return this.b.getPackageManager().getApplicationIcon(this.d);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e(f391a, "Could not retrieve icon for calling application", e);
                return null;
            }
        }

        @ai
        public CharSequence q() {
            if (this.d == null) {
                return null;
            }
            PackageManager packageManager = this.b.getPackageManager();
            try {
                return packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.d, 0));
            } catch (PackageManager.NameNotFoundException e) {
                Log.e(f391a, "Could not retrieve label for calling application", e);
                return null;
            }
        }
    }
}
