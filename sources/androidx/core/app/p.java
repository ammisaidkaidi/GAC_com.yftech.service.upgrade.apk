package androidx.core.app;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.Person;
import android.app.RemoteInput;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.media.AudioAttributes;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.SparseArray;
import android.widget.RemoteViews;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import androidx.core.a;
import androidx.core.app.v;
import androidx.core.graphics.drawable.IconCompat;
import androidx.core.n.af;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class p {
    public static final String A = "android.infoText";
    public static final String B = "android.summaryText";
    public static final String C = "android.bigText";
    public static final String D = "android.icon";
    public static final String E = "android.largeIcon";
    public static final String F = "android.largeIcon.big";
    public static final String G = "android.progress";
    public static final String H = "android.progressMax";
    public static final String I = "android.progressIndeterminate";
    public static final String J = "android.showChronometer";
    public static final String K = "android.chronometerCountDown";
    public static final String L = "android.showWhen";
    public static final String M = "android.picture";
    public static final String N = "android.textLines";
    public static final String O = "android.template";
    public static final String P = "android.people";
    public static final String Q = "android.backgroundImageUri";
    public static final String R = "android.mediaSession";
    public static final String S = "android.compactActions";
    public static final String T = "android.selfDisplayName";
    public static final String U = "android.messagingStyleUser";
    public static final String V = "android.conversationTitle";
    public static final String W = "android.messages";
    public static final String X = "android.isGroupConversation";
    public static final String Y = "android.hiddenConversationTitle";
    public static final String Z = "android.audioContents";

    /* renamed from: a, reason: collision with root package name */
    public static final int f358a = -1;
    public static final String aA = "silent";

    @androidx.annotation.k
    public static final int aa = 0;
    public static final int ab = 1;
    public static final int ac = 0;
    public static final int ad = -1;
    public static final String ae = "call";
    public static final String af = "navigation";
    public static final String ag = "msg";
    public static final String ah = "email";
    public static final String ai = "event";
    public static final String aj = "promo";
    public static final String ak = "alarm";
    public static final String al = "progress";
    public static final String am = "social";
    public static final String an = "err";
    public static final String ao = "transport";
    public static final String ap = "sys";
    public static final String aq = "service";
    public static final String ar = "reminder";
    public static final String as = "recommendation";
    public static final String at = "status";
    public static final int au = 0;
    public static final int av = 1;
    public static final int aw = 2;
    public static final int ax = 0;
    public static final int ay = 1;
    public static final int az = 2;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 4;
    public static final int e = -1;
    public static final int f = 1;
    public static final int g = 2;
    public static final int h = 4;
    public static final int i = 8;
    public static final int j = 16;
    public static final int k = 32;
    public static final int l = 64;

    @Deprecated
    public static final int m = 128;
    public static final int n = 256;
    public static final int o = 512;
    public static final int p = 4096;
    public static final int q = 0;
    public static final int r = -1;
    public static final int s = -2;
    public static final int t = 1;
    public static final int u = 2;
    public static final String v = "android.title";
    public static final String w = "android.title.big";
    public static final String x = "android.text";
    public static final String y = "android.subText";
    public static final String z = "android.remoteInputHistory";

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface b {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface i {
        f a(f fVar);
    }

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface j {
    }

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface m {
    }

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface n {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class f {
        private static final int T = 5120;
        boolean A;
        String B;
        Bundle C;
        int D;
        int E;
        Notification F;
        RemoteViews G;
        RemoteViews H;
        RemoteViews I;
        String J;
        int K;
        String L;
        long M;
        int N;
        boolean O;
        e P;
        Notification Q;
        boolean R;

        @Deprecated
        public ArrayList<String> S;

        /* renamed from: a, reason: collision with root package name */
        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public Context f366a;

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public ArrayList<a> b;
        ArrayList<a> c;
        CharSequence d;
        CharSequence e;
        PendingIntent f;
        PendingIntent g;
        RemoteViews h;
        Bitmap i;
        CharSequence j;
        int k;
        int l;
        boolean m;
        boolean n;
        boolean o;
        o p;
        CharSequence q;
        CharSequence[] r;
        int s;
        int t;
        boolean u;
        String v;
        boolean w;
        String x;
        boolean y;
        boolean z;

        public f(@ah Context context, @ah String str) {
            this.b = new ArrayList<>();
            this.c = new ArrayList<>();
            this.m = true;
            this.y = false;
            this.D = 0;
            this.E = 0;
            this.K = 0;
            this.N = 0;
            this.Q = new Notification();
            this.f366a = context;
            this.J = str;
            this.Q.when = System.currentTimeMillis();
            this.Q.audioStreamType = -1;
            this.l = 0;
            this.S = new ArrayList<>();
            this.O = true;
        }

        @Deprecated
        public f(Context context) {
            this(context, null);
        }

        public f a(long j) {
            this.Q.when = j;
            return this;
        }

        public f a(boolean z) {
            this.m = z;
            return this;
        }

        public f b(boolean z) {
            this.n = z;
            return this;
        }

        @am(a = 24)
        @ah
        public f c(boolean z) {
            this.o = z;
            this.C.putBoolean(p.K, z);
            return this;
        }

        public f a(int i) {
            this.Q.icon = i;
            return this;
        }

        public f a(int i, int i2) {
            this.Q.icon = i;
            this.Q.iconLevel = i2;
            return this;
        }

        @ah
        public f a() {
            this.R = true;
            return this;
        }

        public f a(CharSequence charSequence) {
            this.d = f(charSequence);
            return this;
        }

        public f b(CharSequence charSequence) {
            this.e = f(charSequence);
            return this;
        }

        public f c(CharSequence charSequence) {
            this.q = f(charSequence);
            return this;
        }

        public f a(CharSequence[] charSequenceArr) {
            this.r = charSequenceArr;
            return this;
        }

        public f b(int i) {
            this.k = i;
            return this;
        }

        public f d(CharSequence charSequence) {
            this.j = f(charSequence);
            return this;
        }

        public f a(int i, int i2, boolean z) {
            this.s = i;
            this.t = i2;
            this.u = z;
            return this;
        }

        public f a(RemoteViews remoteViews) {
            this.Q.contentView = remoteViews;
            return this;
        }

        public f a(PendingIntent pendingIntent) {
            this.f = pendingIntent;
            return this;
        }

        public f b(PendingIntent pendingIntent) {
            this.Q.deleteIntent = pendingIntent;
            return this;
        }

        public f a(PendingIntent pendingIntent, boolean z) {
            this.g = pendingIntent;
            a(128, z);
            return this;
        }

        public f e(CharSequence charSequence) {
            this.Q.tickerText = f(charSequence);
            return this;
        }

        public f a(CharSequence charSequence, RemoteViews remoteViews) {
            this.Q.tickerText = f(charSequence);
            this.h = remoteViews;
            return this;
        }

        public f a(Bitmap bitmap) {
            this.i = b(bitmap);
            return this;
        }

        private Bitmap b(Bitmap bitmap) {
            if (bitmap == null || Build.VERSION.SDK_INT >= 27) {
                return bitmap;
            }
            Resources resources = this.f366a.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(a.c.compat_notification_large_icon_max_width);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(a.c.compat_notification_large_icon_max_height);
            if (bitmap.getWidth() <= dimensionPixelSize && bitmap.getHeight() <= dimensionPixelSize2) {
                return bitmap;
            }
            double min = Math.min(dimensionPixelSize / Math.max(1, bitmap.getWidth()), dimensionPixelSize2 / Math.max(1, bitmap.getHeight()));
            return Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(bitmap.getWidth() * min), (int) Math.ceil(bitmap.getHeight() * min), true);
        }

        public f a(Uri uri) {
            this.Q.sound = uri;
            this.Q.audioStreamType = -1;
            if (Build.VERSION.SDK_INT >= 21) {
                this.Q.audioAttributes = new AudioAttributes.Builder().setContentType(4).setUsage(5).build();
            }
            return this;
        }

        public f a(Uri uri, int i) {
            this.Q.sound = uri;
            this.Q.audioStreamType = i;
            if (Build.VERSION.SDK_INT >= 21) {
                this.Q.audioAttributes = new AudioAttributes.Builder().setContentType(4).setLegacyStreamType(i).build();
            }
            return this;
        }

        public f a(long[] jArr) {
            this.Q.vibrate = jArr;
            return this;
        }

        public f a(@androidx.annotation.k int i, int i2, int i3) {
            this.Q.ledARGB = i;
            this.Q.ledOnMS = i2;
            this.Q.ledOffMS = i3;
            this.Q.flags = ((this.Q.ledOnMS == 0 || this.Q.ledOffMS == 0) ? 0 : 1) | (this.Q.flags & (-2));
            return this;
        }

        public f d(boolean z) {
            a(2, z);
            return this;
        }

        public f e(boolean z) {
            this.z = z;
            this.A = true;
            return this;
        }

        public f f(boolean z) {
            a(8, z);
            return this;
        }

        public f g(boolean z) {
            a(16, z);
            return this;
        }

        public f h(boolean z) {
            this.y = z;
            return this;
        }

        public f a(String str) {
            this.B = str;
            return this;
        }

        public f c(int i) {
            this.Q.defaults = i;
            if ((i & 4) != 0) {
                this.Q.flags |= 1;
            }
            return this;
        }

        private void a(int i, boolean z) {
            if (z) {
                Notification notification = this.Q;
                notification.flags = i | notification.flags;
            } else {
                Notification notification2 = this.Q;
                notification2.flags = (~i) & notification2.flags;
            }
        }

        public f d(int i) {
            this.l = i;
            return this;
        }

        public f b(String str) {
            this.S.add(str);
            return this;
        }

        public f c(String str) {
            this.v = str;
            return this;
        }

        public f i(boolean z) {
            this.w = z;
            return this;
        }

        public f d(String str) {
            this.x = str;
            return this;
        }

        public f a(Bundle bundle) {
            if (bundle != null) {
                if (this.C == null) {
                    this.C = new Bundle(bundle);
                } else {
                    this.C.putAll(bundle);
                }
            }
            return this;
        }

        public f b(Bundle bundle) {
            this.C = bundle;
            return this;
        }

        public Bundle b() {
            if (this.C == null) {
                this.C = new Bundle();
            }
            return this.C;
        }

        public f a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            this.b.add(new a(i, charSequence, pendingIntent));
            return this;
        }

        public f a(a aVar) {
            this.b.add(aVar);
            return this;
        }

        @am(a = 21)
        public f b(int i, CharSequence charSequence, PendingIntent pendingIntent) {
            return b(new a(i, charSequence, pendingIntent));
        }

        @am(a = 21)
        public f b(a aVar) {
            this.c.add(aVar);
            return this;
        }

        public f a(o oVar) {
            if (this.p != oVar) {
                this.p = oVar;
                if (this.p != null) {
                    this.p.a(this);
                }
            }
            return this;
        }

        public f e(@androidx.annotation.k int i) {
            this.D = i;
            return this;
        }

        public f f(int i) {
            this.E = i;
            return this;
        }

        public f a(Notification notification) {
            this.F = notification;
            return this;
        }

        public f b(RemoteViews remoteViews) {
            this.G = remoteViews;
            return this;
        }

        public f c(RemoteViews remoteViews) {
            this.H = remoteViews;
            return this;
        }

        public f d(RemoteViews remoteViews) {
            this.I = remoteViews;
            return this;
        }

        public f e(@ah String str) {
            this.J = str;
            return this;
        }

        public f b(long j) {
            this.M = j;
            return this;
        }

        public f f(String str) {
            this.L = str;
            return this;
        }

        public f g(int i) {
            this.K = i;
            return this;
        }

        public f h(int i) {
            this.N = i;
            return this;
        }

        @ah
        public f a(@ai e eVar) {
            this.P = eVar;
            return this;
        }

        public f a(i iVar) {
            iVar.a(this);
            return this;
        }

        @ah
        public f j(boolean z) {
            this.O = z;
            return this;
        }

        @Deprecated
        public Notification c() {
            return d();
        }

        public Notification d() {
            return new q(this).b();
        }

        protected static CharSequence f(CharSequence charSequence) {
            return (charSequence != null && charSequence.length() > T) ? charSequence.subSequence(0, T) : charSequence;
        }

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public RemoteViews e() {
            return this.G;
        }

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public RemoteViews f() {
            return this.H;
        }

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public RemoteViews g() {
            return this.I;
        }

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public long h() {
            if (this.m) {
                return this.Q.when;
            }
            return 0L;
        }

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public int i() {
            return this.l;
        }

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public int j() {
            return this.D;
        }

        @ai
        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public e k() {
            return this.P;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class o {

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        protected f b;
        CharSequence c;
        CharSequence d;
        boolean e = false;

        private static float a(float f, float f2, float f3) {
            return f < f2 ? f2 : f > f3 ? f3 : f;
        }

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public void a(Bundle bundle) {
        }

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public void a(androidx.core.app.o oVar) {
        }

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public RemoteViews b(androidx.core.app.o oVar) {
            return null;
        }

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        protected void b(Bundle bundle) {
        }

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public RemoteViews c(androidx.core.app.o oVar) {
            return null;
        }

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public RemoteViews d(androidx.core.app.o oVar) {
            return null;
        }

        public void a(f fVar) {
            if (this.b != fVar) {
                this.b = fVar;
                if (this.b != null) {
                    this.b.a(this);
                }
            }
        }

        public Notification f() {
            if (this.b != null) {
                return this.b.d();
            }
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:45:0x01a3  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x01bb  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x01c1  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x01e3  */
        /* JADX WARN: Removed duplicated region for block: B:67:0x023d  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x0248  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x023f  */
        /* JADX WARN: Removed duplicated region for block: B:75:0x01b3  */
        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public RemoteViews a(boolean z, int i, boolean z2) {
            boolean z3;
            boolean z4;
            Resources resources = this.b.f366a.getResources();
            RemoteViews remoteViews = new RemoteViews(this.b.f366a.getPackageName(), i);
            boolean z5 = this.b.i() < -1;
            if (Build.VERSION.SDK_INT >= 16 && Build.VERSION.SDK_INT < 21) {
                if (z5) {
                    remoteViews.setInt(a.e.notification_background, "setBackgroundResource", a.d.notification_bg_low);
                    remoteViews.setInt(a.e.icon, "setBackgroundResource", a.d.notification_template_icon_low_bg);
                } else {
                    remoteViews.setInt(a.e.notification_background, "setBackgroundResource", a.d.notification_bg);
                    remoteViews.setInt(a.e.icon, "setBackgroundResource", a.d.notification_template_icon_bg);
                }
            }
            if (this.b.i != null) {
                if (Build.VERSION.SDK_INT >= 16) {
                    remoteViews.setViewVisibility(a.e.icon, 0);
                    remoteViews.setImageViewBitmap(a.e.icon, this.b.i);
                } else {
                    remoteViews.setViewVisibility(a.e.icon, 8);
                }
                if (z && this.b.Q.icon != 0) {
                    int dimensionPixelSize = resources.getDimensionPixelSize(a.c.notification_right_icon_size);
                    int dimensionPixelSize2 = dimensionPixelSize - (resources.getDimensionPixelSize(a.c.notification_small_icon_background_padding) * 2);
                    if (Build.VERSION.SDK_INT >= 21) {
                        remoteViews.setImageViewBitmap(a.e.right_icon, a(this.b.Q.icon, dimensionPixelSize, dimensionPixelSize2, this.b.j()));
                    } else {
                        remoteViews.setImageViewBitmap(a.e.right_icon, a(this.b.Q.icon, -1));
                    }
                    remoteViews.setViewVisibility(a.e.right_icon, 0);
                }
            } else if (z && this.b.Q.icon != 0) {
                remoteViews.setViewVisibility(a.e.icon, 0);
                if (Build.VERSION.SDK_INT >= 21) {
                    remoteViews.setImageViewBitmap(a.e.icon, a(this.b.Q.icon, resources.getDimensionPixelSize(a.c.notification_large_icon_width) - resources.getDimensionPixelSize(a.c.notification_big_circle_margin), resources.getDimensionPixelSize(a.c.notification_small_icon_size_as_large), this.b.j()));
                } else {
                    remoteViews.setImageViewBitmap(a.e.icon, a(this.b.Q.icon, -1));
                }
            }
            if (this.b.d != null) {
                remoteViews.setTextViewText(a.e.title, this.b.d);
            }
            if (this.b.e != null) {
                remoteViews.setTextViewText(a.e.text, this.b.e);
                z3 = true;
            } else {
                z3 = false;
            }
            boolean z6 = Build.VERSION.SDK_INT < 21 && this.b.i != null;
            if (this.b.j != null) {
                remoteViews.setTextViewText(a.e.info, this.b.j);
                remoteViews.setViewVisibility(a.e.info, 0);
            } else if (this.b.k > 0) {
                if (this.b.k > resources.getInteger(a.f.status_bar_notification_info_maxnum)) {
                    remoteViews.setTextViewText(a.e.info, resources.getString(a.h.status_bar_notification_info_overflow));
                } else {
                    remoteViews.setTextViewText(a.e.info, NumberFormat.getIntegerInstance().format(this.b.k));
                }
                remoteViews.setViewVisibility(a.e.info, 0);
            } else {
                remoteViews.setViewVisibility(a.e.info, 8);
                if (this.b.q != null && Build.VERSION.SDK_INT >= 16) {
                    remoteViews.setTextViewText(a.e.text, this.b.q);
                    if (this.b.e == null) {
                        remoteViews.setTextViewText(a.e.text2, this.b.e);
                        remoteViews.setViewVisibility(a.e.text2, 0);
                        z4 = true;
                        if (z4 && Build.VERSION.SDK_INT >= 16) {
                            if (z2) {
                                remoteViews.setTextViewTextSize(a.e.text, 0, resources.getDimensionPixelSize(a.c.notification_subtext_size));
                            }
                            remoteViews.setViewPadding(a.e.line1, 0, 0, 0, 0);
                        }
                        if (this.b.h() != 0) {
                            if (this.b.n && Build.VERSION.SDK_INT >= 16) {
                                remoteViews.setViewVisibility(a.e.chronometer, 0);
                                remoteViews.setLong(a.e.chronometer, "setBase", this.b.h() + (SystemClock.elapsedRealtime() - System.currentTimeMillis()));
                                remoteViews.setBoolean(a.e.chronometer, "setStarted", true);
                                if (this.b.o && Build.VERSION.SDK_INT >= 24) {
                                    remoteViews.setChronometerCountDown(a.e.chronometer, this.b.o);
                                }
                            } else {
                                remoteViews.setViewVisibility(a.e.time, 0);
                                remoteViews.setLong(a.e.time, "setTime", this.b.h());
                            }
                            z6 = true;
                        }
                        remoteViews.setViewVisibility(a.e.right_side, z6 ? 0 : 8);
                        remoteViews.setViewVisibility(a.e.line3, z3 ? 0 : 8);
                        return remoteViews;
                    }
                    remoteViews.setViewVisibility(a.e.text2, 8);
                }
                z4 = false;
                if (z4) {
                    if (z2) {
                    }
                    remoteViews.setViewPadding(a.e.line1, 0, 0, 0, 0);
                }
                if (this.b.h() != 0) {
                }
                remoteViews.setViewVisibility(a.e.right_side, z6 ? 0 : 8);
                remoteViews.setViewVisibility(a.e.line3, z3 ? 0 : 8);
                return remoteViews;
            }
            z3 = true;
            z6 = true;
            if (this.b.q != null) {
                remoteViews.setTextViewText(a.e.text, this.b.q);
                if (this.b.e == null) {
                }
            }
            z4 = false;
            if (z4) {
            }
            if (this.b.h() != 0) {
            }
            remoteViews.setViewVisibility(a.e.right_side, z6 ? 0 : 8);
            remoteViews.setViewVisibility(a.e.line3, z3 ? 0 : 8);
            return remoteViews;
        }

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public Bitmap a(int i, int i2) {
            return a(i, i2, 0);
        }

        Bitmap a(IconCompat iconCompat, int i) {
            return a(iconCompat, i, 0);
        }

        private Bitmap a(int i, int i2, int i3) {
            return a(IconCompat.a(this.b.f366a, i), i2, i3);
        }

        private Bitmap a(IconCompat iconCompat, int i, int i2) {
            Drawable c = iconCompat.c(this.b.f366a);
            int intrinsicWidth = i2 == 0 ? c.getIntrinsicWidth() : i2;
            if (i2 == 0) {
                i2 = c.getIntrinsicHeight();
            }
            Bitmap createBitmap = Bitmap.createBitmap(intrinsicWidth, i2, Bitmap.Config.ARGB_8888);
            c.setBounds(0, 0, intrinsicWidth, i2);
            if (i != 0) {
                c.mutate().setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
            }
            c.draw(new Canvas(createBitmap));
            return createBitmap;
        }

        private Bitmap a(int i, int i2, int i3, int i4) {
            int i5 = a.d.notification_icon_background;
            if (i4 == 0) {
                i4 = 0;
            }
            Bitmap a2 = a(i5, i4, i2);
            Canvas canvas = new Canvas(a2);
            Drawable mutate = this.b.f366a.getResources().getDrawable(i).mutate();
            mutate.setFilterBitmap(true);
            int i6 = (i2 - i3) / 2;
            int i7 = i3 + i6;
            mutate.setBounds(i6, i6, i7, i7);
            mutate.setColorFilter(new PorterDuffColorFilter(-1, PorterDuff.Mode.SRC_ATOP));
            mutate.draw(canvas);
            return a2;
        }

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public void a(RemoteViews remoteViews, RemoteViews remoteViews2) {
            a(remoteViews);
            remoteViews.removeAllViews(a.e.notification_main_column);
            remoteViews.addView(a.e.notification_main_column, remoteViews2.clone());
            remoteViews.setViewVisibility(a.e.notification_main_column, 0);
            if (Build.VERSION.SDK_INT >= 21) {
                remoteViews.setViewPadding(a.e.notification_main_column_container, 0, a(), 0, 0);
            }
        }

        private void a(RemoteViews remoteViews) {
            remoteViews.setViewVisibility(a.e.title, 8);
            remoteViews.setViewVisibility(a.e.text2, 8);
            remoteViews.setViewVisibility(a.e.text, 8);
        }

        private int a() {
            Resources resources = this.b.f366a.getResources();
            int dimensionPixelSize = resources.getDimensionPixelSize(a.c.notification_top_pad);
            int dimensionPixelSize2 = resources.getDimensionPixelSize(a.c.notification_top_pad_large_text);
            float a2 = (a(resources.getConfiguration().fontScale, 1.0f, 1.3f) - 1.0f) / 0.29999995f;
            return Math.round(((1.0f - a2) * dimensionPixelSize) + (a2 * dimensionPixelSize2));
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c extends o {

        /* renamed from: a, reason: collision with root package name */
        private Bitmap f362a;
        private Bitmap f;
        private boolean g;

        public c() {
        }

        public c(f fVar) {
            a(fVar);
        }

        public c a(CharSequence charSequence) {
            this.c = f.f(charSequence);
            return this;
        }

        public c b(CharSequence charSequence) {
            this.d = f.f(charSequence);
            this.e = true;
            return this;
        }

        public c a(Bitmap bitmap) {
            this.f362a = bitmap;
            return this;
        }

        public c b(Bitmap bitmap) {
            this.f = bitmap;
            this.g = true;
            return this;
        }

        @Override // androidx.core.app.p.o
        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public void a(androidx.core.app.o oVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigPictureStyle bigPicture = new Notification.BigPictureStyle(oVar.a()).setBigContentTitle(this.c).bigPicture(this.f362a);
                if (this.g) {
                    bigPicture.bigLargeIcon(this.f);
                }
                if (this.e) {
                    bigPicture.setSummaryText(this.d);
                }
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class d extends o {

        /* renamed from: a, reason: collision with root package name */
        private CharSequence f363a;

        public d() {
        }

        public d(f fVar) {
            a(fVar);
        }

        public d a(CharSequence charSequence) {
            this.c = f.f(charSequence);
            return this;
        }

        public d b(CharSequence charSequence) {
            this.d = f.f(charSequence);
            this.e = true;
            return this;
        }

        public d c(CharSequence charSequence) {
            this.f363a = f.f(charSequence);
            return this;
        }

        @Override // androidx.core.app.p.o
        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public void a(androidx.core.app.o oVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.BigTextStyle bigText = new Notification.BigTextStyle(oVar.a()).setBigContentTitle(this.c).bigText(this.f363a);
                if (this.e) {
                    bigText.setSummaryText(this.d);
                }
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class l extends o {

        /* renamed from: a, reason: collision with root package name */
        public static final int f372a = 25;
        private final List<a> f = new ArrayList();
        private v g;

        @ai
        private CharSequence h;

        @ai
        private Boolean i;

        private l() {
        }

        @Deprecated
        public l(@ah CharSequence charSequence) {
            this.g = new v.a().a(charSequence).a();
        }

        public l(@ah v vVar) {
            if (TextUtils.isEmpty(vVar.e())) {
                throw new IllegalArgumentException("User's name must not be empty.");
            }
            this.g = vVar;
        }

        @Deprecated
        public CharSequence a() {
            return this.g.e();
        }

        public v b() {
            return this.g;
        }

        public l a(@ai CharSequence charSequence) {
            this.h = charSequence;
            return this;
        }

        @ai
        public CharSequence c() {
            return this.h;
        }

        @Deprecated
        public l a(CharSequence charSequence, long j, CharSequence charSequence2) {
            this.f.add(new a(charSequence, j, new v.a().a(charSequence2).a()));
            if (this.f.size() > 25) {
                this.f.remove(0);
            }
            return this;
        }

        public l a(CharSequence charSequence, long j, v vVar) {
            a(new a(charSequence, j, vVar));
            return this;
        }

        public l a(a aVar) {
            this.f.add(aVar);
            if (this.f.size() > 25) {
                this.f.remove(0);
            }
            return this;
        }

        public List<a> d() {
            return this.f;
        }

        public l a(boolean z) {
            this.i = Boolean.valueOf(z);
            return this;
        }

        public boolean e() {
            if (this.b != null && this.b.f366a.getApplicationInfo().targetSdkVersion < 28 && this.i == null) {
                return this.h != null;
            }
            if (this.i != null) {
                return this.i.booleanValue();
            }
            return false;
        }

        @ai
        public static l a(Notification notification) {
            Bundle a2 = p.a(notification);
            if (a2 != null && !a2.containsKey(p.T) && !a2.containsKey(p.U)) {
                return null;
            }
            try {
                l lVar = new l();
                lVar.b(a2);
                return lVar;
            } catch (ClassCastException unused) {
                return null;
            }
        }

        @Override // androidx.core.app.p.o
        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public void a(androidx.core.app.o oVar) {
            CharSequence a2;
            Notification.MessagingStyle messagingStyle;
            Notification.MessagingStyle.Message message;
            a(e());
            if (Build.VERSION.SDK_INT >= 24) {
                if (Build.VERSION.SDK_INT >= 28) {
                    messagingStyle = new Notification.MessagingStyle(this.g.d());
                } else {
                    messagingStyle = new Notification.MessagingStyle(this.g.e());
                }
                if (this.i.booleanValue() || Build.VERSION.SDK_INT >= 28) {
                    messagingStyle.setConversationTitle(this.h);
                }
                if (Build.VERSION.SDK_INT >= 28) {
                    messagingStyle.setGroupConversation(this.i.booleanValue());
                }
                for (a aVar : this.f) {
                    if (Build.VERSION.SDK_INT >= 28) {
                        v e = aVar.e();
                        message = new Notification.MessagingStyle.Message(aVar.a(), aVar.b(), e == null ? null : e.d());
                    } else {
                        message = new Notification.MessagingStyle.Message(aVar.a(), aVar.b(), aVar.e() != null ? aVar.e().e() : null);
                    }
                    if (aVar.f() != null) {
                        message.setData(aVar.f(), aVar.g());
                    }
                    messagingStyle.addMessage(message);
                }
                messagingStyle.setBuilder(oVar.a());
                return;
            }
            a g = g();
            if (this.h != null && this.i.booleanValue()) {
                oVar.a().setContentTitle(this.h);
            } else if (g != null) {
                oVar.a().setContentTitle(com.yftech.service.upgrade.a.d);
                if (g.e() != null) {
                    oVar.a().setContentTitle(g.e().e());
                }
            }
            if (g != null) {
                Notification.Builder a3 = oVar.a();
                if (this.h != null) {
                    a2 = b(g);
                } else {
                    a2 = g.a();
                }
                a3.setContentText(a2);
            }
            if (Build.VERSION.SDK_INT >= 16) {
                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                boolean z = this.h != null || h();
                for (int size = this.f.size() - 1; size >= 0; size--) {
                    a aVar2 = this.f.get(size);
                    CharSequence b = z ? b(aVar2) : aVar2.a();
                    if (size != this.f.size() - 1) {
                        spannableStringBuilder.insert(0, (CharSequence) "\n");
                    }
                    spannableStringBuilder.insert(0, b);
                }
                new Notification.BigTextStyle(oVar.a()).setBigContentTitle(null).bigText(spannableStringBuilder);
            }
        }

        @ai
        private a g() {
            for (int size = this.f.size() - 1; size >= 0; size--) {
                a aVar = this.f.get(size);
                if (aVar.e() != null && !TextUtils.isEmpty(aVar.e().e())) {
                    return aVar;
                }
            }
            if (this.f.isEmpty()) {
                return null;
            }
            return this.f.get(this.f.size() - 1);
        }

        private boolean h() {
            for (int size = this.f.size() - 1; size >= 0; size--) {
                a aVar = this.f.get(size);
                if (aVar.e() != null && aVar.e().e() == null) {
                    return true;
                }
            }
            return false;
        }

        private CharSequence b(a aVar) {
            androidx.core.l.a a2 = androidx.core.l.a.a();
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            boolean z = Build.VERSION.SDK_INT >= 21;
            int i = z ? af.s : -1;
            CharSequence e = aVar.e() == null ? com.yftech.service.upgrade.a.d : aVar.e().e();
            if (TextUtils.isEmpty(e)) {
                e = this.g.e();
                if (z && this.b.j() != 0) {
                    i = this.b.j();
                }
            }
            CharSequence b = a2.b(e);
            spannableStringBuilder.append(b);
            spannableStringBuilder.setSpan(a(i), spannableStringBuilder.length() - b.length(), spannableStringBuilder.length(), 33);
            spannableStringBuilder.append((CharSequence) "  ").append(a2.b(aVar.a() == null ? com.yftech.service.upgrade.a.d : aVar.a()));
            return spannableStringBuilder;
        }

        @ah
        private TextAppearanceSpan a(int i) {
            return new TextAppearanceSpan(null, 0, 0, ColorStateList.valueOf(i), null);
        }

        @Override // androidx.core.app.p.o
        public void a(Bundle bundle) {
            super.a(bundle);
            bundle.putCharSequence(p.T, this.g.e());
            bundle.putBundle(p.U, this.g.a());
            bundle.putCharSequence(p.Y, this.h);
            if (this.h != null && this.i.booleanValue()) {
                bundle.putCharSequence(p.V, this.h);
            }
            if (!this.f.isEmpty()) {
                bundle.putParcelableArray(p.W, a.a(this.f));
            }
            if (this.i != null) {
                bundle.putBoolean(p.X, this.i.booleanValue());
            }
        }

        @Override // androidx.core.app.p.o
        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        protected void b(Bundle bundle) {
            this.f.clear();
            if (bundle.containsKey(p.U)) {
                this.g = v.a(bundle.getBundle(p.U));
            } else {
                this.g = new v.a().a((CharSequence) bundle.getString(p.T)).a();
            }
            this.h = bundle.getCharSequence(p.V);
            if (this.h == null) {
                this.h = bundle.getCharSequence(p.Y);
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray(p.W);
            if (parcelableArray != null) {
                this.f.addAll(a.a(parcelableArray));
            }
            if (bundle.containsKey(p.X)) {
                this.i = Boolean.valueOf(bundle.getBoolean(p.X));
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        public static final class a {

            /* renamed from: a, reason: collision with root package name */
            static final String f373a = "text";
            static final String b = "time";
            static final String c = "sender";
            static final String d = "type";
            static final String e = "uri";
            static final String f = "extras";
            static final String g = "person";
            static final String h = "sender_person";
            private final CharSequence i;
            private final long j;

            @ai
            private final v k;
            private Bundle l;

            @ai
            private String m;

            @ai
            private Uri n;

            public a(CharSequence charSequence, long j, @ai v vVar) {
                this.l = new Bundle();
                this.i = charSequence;
                this.j = j;
                this.k = vVar;
            }

            @Deprecated
            public a(CharSequence charSequence, long j, CharSequence charSequence2) {
                this(charSequence, j, new v.a().a(charSequence2).a());
            }

            public a a(String str, Uri uri) {
                this.m = str;
                this.n = uri;
                return this;
            }

            @ah
            public CharSequence a() {
                return this.i;
            }

            public long b() {
                return this.j;
            }

            @ah
            public Bundle c() {
                return this.l;
            }

            @ai
            @Deprecated
            public CharSequence d() {
                if (this.k == null) {
                    return null;
                }
                return this.k.e();
            }

            @ai
            public v e() {
                return this.k;
            }

            @ai
            public String f() {
                return this.m;
            }

            @ai
            public Uri g() {
                return this.n;
            }

            private Bundle h() {
                Bundle bundle = new Bundle();
                if (this.i != null) {
                    bundle.putCharSequence(f373a, this.i);
                }
                bundle.putLong(b, this.j);
                if (this.k != null) {
                    bundle.putCharSequence(c, this.k.e());
                    if (Build.VERSION.SDK_INT >= 28) {
                        bundle.putParcelable(h, this.k.d());
                    } else {
                        bundle.putBundle(g, this.k.a());
                    }
                }
                if (this.m != null) {
                    bundle.putString(d, this.m);
                }
                if (this.n != null) {
                    bundle.putParcelable(e, this.n);
                }
                if (this.l != null) {
                    bundle.putBundle(f, this.l);
                }
                return bundle;
            }

            @ah
            static Bundle[] a(List<a> list) {
                Bundle[] bundleArr = new Bundle[list.size()];
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    bundleArr[i] = list.get(i).h();
                }
                return bundleArr;
            }

            @ah
            static List<a> a(Parcelable[] parcelableArr) {
                a a2;
                ArrayList arrayList = new ArrayList(parcelableArr.length);
                for (int i = 0; i < parcelableArr.length; i++) {
                    if ((parcelableArr[i] instanceof Bundle) && (a2 = a((Bundle) parcelableArr[i])) != null) {
                        arrayList.add(a2);
                    }
                }
                return arrayList;
            }

            @ai
            static a a(Bundle bundle) {
                v a2;
                try {
                    if (bundle.containsKey(f373a) && bundle.containsKey(b)) {
                        if (bundle.containsKey(g)) {
                            a2 = v.a(bundle.getBundle(g));
                        } else if (bundle.containsKey(h) && Build.VERSION.SDK_INT >= 28) {
                            a2 = v.a((Person) bundle.getParcelable(h));
                        } else {
                            a2 = bundle.containsKey(c) ? new v.a().a(bundle.getCharSequence(c)).a() : null;
                        }
                        a aVar = new a(bundle.getCharSequence(f373a), bundle.getLong(b), a2);
                        if (bundle.containsKey(d) && bundle.containsKey(e)) {
                            aVar.a(bundle.getString(d), (Uri) bundle.getParcelable(e));
                        }
                        if (bundle.containsKey(f)) {
                            aVar.c().putAll(bundle.getBundle(f));
                        }
                        return aVar;
                    }
                    return null;
                } catch (ClassCastException unused) {
                    return null;
                }
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class k extends o {

        /* renamed from: a, reason: collision with root package name */
        private ArrayList<CharSequence> f371a = new ArrayList<>();

        public k() {
        }

        public k(f fVar) {
            a(fVar);
        }

        public k a(CharSequence charSequence) {
            this.c = f.f(charSequence);
            return this;
        }

        public k b(CharSequence charSequence) {
            this.d = f.f(charSequence);
            this.e = true;
            return this;
        }

        public k c(CharSequence charSequence) {
            this.f371a.add(f.f(charSequence));
            return this;
        }

        @Override // androidx.core.app.p.o
        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public void a(androidx.core.app.o oVar) {
            if (Build.VERSION.SDK_INT >= 16) {
                Notification.InboxStyle bigContentTitle = new Notification.InboxStyle(oVar.a()).setBigContentTitle(this.c);
                if (this.e) {
                    bigContentTitle.setSummaryText(this.d);
                }
                Iterator<CharSequence> it = this.f371a.iterator();
                while (it.hasNext()) {
                    bigContentTitle.addLine(it.next());
                }
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class h extends o {

        /* renamed from: a, reason: collision with root package name */
        private static final int f370a = 3;

        @Override // androidx.core.app.p.o
        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public void a(androidx.core.app.o oVar) {
            if (Build.VERSION.SDK_INT >= 24) {
                oVar.a().setStyle(new Notification.DecoratedCustomViewStyle());
            }
        }

        @Override // androidx.core.app.p.o
        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public RemoteViews b(androidx.core.app.o oVar) {
            if (Build.VERSION.SDK_INT < 24 && this.b.e() != null) {
                return a(this.b.e(), false);
            }
            return null;
        }

        @Override // androidx.core.app.p.o
        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public RemoteViews c(androidx.core.app.o oVar) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews f = this.b.f();
            if (f == null) {
                f = this.b.e();
            }
            if (f == null) {
                return null;
            }
            return a(f, true);
        }

        @Override // androidx.core.app.p.o
        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public RemoteViews d(androidx.core.app.o oVar) {
            if (Build.VERSION.SDK_INT >= 24) {
                return null;
            }
            RemoteViews g = this.b.g();
            RemoteViews e = g != null ? g : this.b.e();
            if (g == null) {
                return null;
            }
            return a(e, true);
        }

        private RemoteViews a(RemoteViews remoteViews, boolean z) {
            int min;
            boolean z2 = true;
            RemoteViews a2 = a(true, a.g.notification_template_custom_big, false);
            a2.removeAllViews(a.e.actions);
            List<a> a3 = a(this.b.b);
            if (!z || a3 == null || (min = Math.min(a3.size(), 3)) <= 0) {
                z2 = false;
            } else {
                for (int i = 0; i < min; i++) {
                    a2.addView(a.e.actions, a(a3.get(i)));
                }
            }
            int i2 = z2 ? 0 : 8;
            a2.setViewVisibility(a.e.actions, i2);
            a2.setViewVisibility(a.e.action_divider, i2);
            a(a2, remoteViews);
            return a2;
        }

        private static List<a> a(List<a> list) {
            if (list == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            for (a aVar : list) {
                if (!aVar.i()) {
                    arrayList.add(aVar);
                }
            }
            return arrayList;
        }

        private RemoteViews a(a aVar) {
            int i;
            boolean z = aVar.r == null;
            String packageName = this.b.f366a.getPackageName();
            if (z) {
                i = a.g.notification_action_tombstone;
            } else {
                i = a.g.notification_action;
            }
            RemoteViews remoteViews = new RemoteViews(packageName, i);
            remoteViews.setImageViewBitmap(a.e.action_image, a(aVar.b(), this.b.f366a.getResources().getColor(a.b.notification_action_color_filter)));
            remoteViews.setTextViewText(a.e.action_text, aVar.q);
            if (!z) {
                remoteViews.setOnClickPendingIntent(a.e.action_container, aVar.r);
            }
            if (Build.VERSION.SDK_INT >= 15) {
                remoteViews.setContentDescription(a.e.action_container, aVar.q);
            }
            return remoteViews;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final int f359a = 0;
        public static final int b = 1;
        public static final int c = 2;
        public static final int d = 3;
        public static final int e = 4;
        public static final int f = 5;
        public static final int g = 6;
        public static final int h = 7;
        public static final int i = 8;
        public static final int j = 9;
        public static final int k = 10;
        static final String l = "android.support.action.showsUserInterface";
        static final String m = "android.support.action.semanticAction";
        final Bundle n;
        boolean o;

        @Deprecated
        public int p;
        public CharSequence q;
        public PendingIntent r;

        @ai
        private IconCompat s;
        private final w[] t;
        private final w[] u;
        private boolean v;
        private final int w;
        private final boolean x;

        /* loaded from: /home/user/work/dex/classes.dex */
        public interface b {
            C0024a a(C0024a c0024a);
        }

        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: /home/user/work/dex/classes.dex */
        public @interface c {
        }

        public a(int i2, CharSequence charSequence, PendingIntent pendingIntent) {
            this(i2 != 0 ? IconCompat.a((Resources) null, com.yftech.service.upgrade.a.d, i2) : null, charSequence, pendingIntent);
        }

        public a(@ai IconCompat iconCompat, @ai CharSequence charSequence, @ai PendingIntent pendingIntent) {
            this(iconCompat, charSequence, pendingIntent, new Bundle(), (w[]) null, (w[]) null, true, 0, true, false);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(int i2, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, w[] wVarArr, w[] wVarArr2, boolean z, int i3, boolean z2, boolean z3) {
            this(i2 != 0 ? IconCompat.a((Resources) null, com.yftech.service.upgrade.a.d, i2) : null, charSequence, pendingIntent, bundle, wVarArr, wVarArr2, z, i3, z2, z3);
        }

        a(@ai IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, w[] wVarArr, w[] wVarArr2, boolean z, int i2, boolean z2, boolean z3) {
            this.o = true;
            this.s = iconCompat;
            if (iconCompat != null && iconCompat.a() == 2) {
                this.p = iconCompat.c();
            }
            this.q = f.f(charSequence);
            this.r = pendingIntent;
            this.n = bundle == null ? new Bundle() : bundle;
            this.t = wVarArr;
            this.u = wVarArr2;
            this.v = z;
            this.w = i2;
            this.o = z2;
            this.x = z3;
        }

        @Deprecated
        public int a() {
            return this.p;
        }

        @ai
        public IconCompat b() {
            if (this.s == null && this.p != 0) {
                this.s = IconCompat.a((Resources) null, com.yftech.service.upgrade.a.d, this.p);
            }
            return this.s;
        }

        public CharSequence c() {
            return this.q;
        }

        public PendingIntent d() {
            return this.r;
        }

        public Bundle e() {
            return this.n;
        }

        public boolean f() {
            return this.v;
        }

        public w[] g() {
            return this.t;
        }

        public int h() {
            return this.w;
        }

        public boolean i() {
            return this.x;
        }

        public w[] j() {
            return this.u;
        }

        public boolean k() {
            return this.o;
        }

        /* renamed from: androidx.core.app.p$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        public static final class C0024a {

            /* renamed from: a, reason: collision with root package name */
            private final IconCompat f360a;
            private final CharSequence b;
            private final PendingIntent c;
            private boolean d;
            private final Bundle e;
            private ArrayList<w> f;
            private int g;
            private boolean h;
            private boolean i;

            public C0024a(@ai IconCompat iconCompat, @ai CharSequence charSequence, @ai PendingIntent pendingIntent) {
                this(iconCompat, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false);
            }

            public C0024a(int i, CharSequence charSequence, PendingIntent pendingIntent) {
                this(i != 0 ? IconCompat.a((Resources) null, com.yftech.service.upgrade.a.d, i) : null, charSequence, pendingIntent, new Bundle(), null, true, 0, true, false);
            }

            public C0024a(a aVar) {
                this(aVar.b(), aVar.q, aVar.r, new Bundle(aVar.n), aVar.g(), aVar.f(), aVar.h(), aVar.o, aVar.i());
            }

            private C0024a(@ai IconCompat iconCompat, CharSequence charSequence, PendingIntent pendingIntent, Bundle bundle, w[] wVarArr, boolean z, int i, boolean z2, boolean z3) {
                this.d = true;
                this.h = true;
                this.f360a = iconCompat;
                this.b = f.f(charSequence);
                this.c = pendingIntent;
                this.e = bundle;
                this.f = wVarArr == null ? null : new ArrayList<>(Arrays.asList(wVarArr));
                this.d = z;
                this.g = i;
                this.h = z2;
                this.i = z3;
            }

            public C0024a a(Bundle bundle) {
                if (bundle != null) {
                    this.e.putAll(bundle);
                }
                return this;
            }

            public Bundle a() {
                return this.e;
            }

            public C0024a a(w wVar) {
                if (this.f == null) {
                    this.f = new ArrayList<>();
                }
                this.f.add(wVar);
                return this;
            }

            public C0024a a(boolean z) {
                this.d = z;
                return this;
            }

            public C0024a a(int i) {
                this.g = i;
                return this;
            }

            @ah
            public C0024a b(boolean z) {
                this.i = z;
                return this;
            }

            public C0024a c(boolean z) {
                this.h = z;
                return this;
            }

            public C0024a a(b bVar) {
                bVar.a(this);
                return this;
            }

            private void c() {
                if (this.i && this.c == null) {
                    throw new NullPointerException("Contextual Actions must contain a valid PendingIntent");
                }
            }

            public a b() {
                c();
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                if (this.f != null) {
                    Iterator<w> it = this.f.iterator();
                    while (it.hasNext()) {
                        w next = it.next();
                        if (next.e()) {
                            arrayList.add(next);
                        } else {
                            arrayList2.add(next);
                        }
                    }
                }
                return new a(this.f360a, this.b, this.c, this.e, arrayList2.isEmpty() ? null : (w[]) arrayList2.toArray(new w[arrayList2.size()]), arrayList.isEmpty() ? null : (w[]) arrayList.toArray(new w[arrayList.size()]), this.d, this.g, this.h, this.i);
            }
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        public static final class d implements b {

            /* renamed from: a, reason: collision with root package name */
            private static final String f361a = "android.wearable.EXTENSIONS";
            private static final String b = "flags";
            private static final String c = "inProgressLabel";
            private static final String d = "confirmLabel";
            private static final String e = "cancelLabel";
            private static final int f = 1;
            private static final int g = 2;
            private static final int h = 4;
            private static final int i = 1;
            private int j;
            private CharSequence k;
            private CharSequence l;
            private CharSequence m;

            public d() {
                this.j = 1;
            }

            public d(a aVar) {
                this.j = 1;
                Bundle bundle = aVar.e().getBundle(f361a);
                if (bundle != null) {
                    this.j = bundle.getInt(b, 1);
                    this.k = bundle.getCharSequence(c);
                    this.l = bundle.getCharSequence(d);
                    this.m = bundle.getCharSequence(e);
                }
            }

            @Override // androidx.core.app.p.a.b
            public C0024a a(C0024a c0024a) {
                Bundle bundle = new Bundle();
                if (this.j != 1) {
                    bundle.putInt(b, this.j);
                }
                if (this.k != null) {
                    bundle.putCharSequence(c, this.k);
                }
                if (this.l != null) {
                    bundle.putCharSequence(d, this.l);
                }
                if (this.m != null) {
                    bundle.putCharSequence(e, this.m);
                }
                c0024a.a().putBundle(f361a, bundle);
                return c0024a;
            }

            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public d clone() {
                d dVar = new d();
                dVar.j = this.j;
                dVar.k = this.k;
                dVar.l = this.l;
                dVar.m = this.m;
                return dVar;
            }

            public d a(boolean z) {
                a(1, z);
                return this;
            }

            public boolean b() {
                return (this.j & 1) != 0;
            }

            private void a(int i2, boolean z) {
                if (z) {
                    this.j = i2 | this.j;
                } else {
                    this.j = (~i2) & this.j;
                }
            }

            @Deprecated
            public d a(CharSequence charSequence) {
                this.k = charSequence;
                return this;
            }

            @Deprecated
            public CharSequence c() {
                return this.k;
            }

            @Deprecated
            public d b(CharSequence charSequence) {
                this.l = charSequence;
                return this;
            }

            @Deprecated
            public CharSequence d() {
                return this.l;
            }

            @Deprecated
            public d c(CharSequence charSequence) {
                this.m = charSequence;
                return this;
            }

            @Deprecated
            public CharSequence e() {
                return this.m;
            }

            public d b(boolean z) {
                a(2, z);
                return this;
            }

            public boolean f() {
                return (this.j & 2) != 0;
            }

            public d c(boolean z) {
                a(4, z);
                return this;
            }

            public boolean g() {
                return (this.j & 4) != 0;
            }
        }
    }

    /* renamed from: androidx.core.app.p$p, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class C0026p implements i {
        private static final int A = 4;
        private static final int B = 8;
        private static final int C = 16;
        private static final int D = 32;
        private static final int E = 64;
        private static final int F = 1;
        private static final int G = 8388613;
        private static final int H = 80;

        /* renamed from: a, reason: collision with root package name */
        public static final int f374a = -1;

        @Deprecated
        public static final int b = 0;

        @Deprecated
        public static final int c = 1;

        @Deprecated
        public static final int d = 2;

        @Deprecated
        public static final int e = 3;

        @Deprecated
        public static final int f = 4;

        @Deprecated
        public static final int g = 5;

        @Deprecated
        public static final int h = 0;

        @Deprecated
        public static final int i = -1;
        private static final String j = "android.wearable.EXTENSIONS";
        private static final String k = "actions";
        private static final String l = "flags";
        private static final String m = "displayIntent";
        private static final String n = "pages";
        private static final String o = "background";
        private static final String p = "contentIcon";
        private static final String q = "contentIconGravity";
        private static final String r = "contentActionIndex";
        private static final String s = "customSizePreset";
        private static final String t = "customContentHeight";
        private static final String u = "gravity";
        private static final String v = "hintScreenTimeout";
        private static final String w = "dismissalId";
        private static final String x = "bridgeTag";
        private static final int y = 1;
        private static final int z = 2;
        private ArrayList<a> I;
        private int J;
        private PendingIntent K;
        private ArrayList<Notification> L;
        private Bitmap M;
        private int N;
        private int O;
        private int P;
        private int Q;
        private int R;
        private int S;
        private int T;
        private String U;
        private String V;

        public C0026p() {
            this.I = new ArrayList<>();
            this.J = 1;
            this.L = new ArrayList<>();
            this.O = 8388613;
            this.P = -1;
            this.Q = 0;
            this.S = 80;
        }

        public C0026p(Notification notification) {
            this.I = new ArrayList<>();
            this.J = 1;
            this.L = new ArrayList<>();
            this.O = 8388613;
            this.P = -1;
            this.Q = 0;
            this.S = 80;
            Bundle a2 = p.a(notification);
            Bundle bundle = a2 != null ? a2.getBundle(j) : null;
            if (bundle != null) {
                ArrayList parcelableArrayList = bundle.getParcelableArrayList(k);
                if (Build.VERSION.SDK_INT >= 16 && parcelableArrayList != null) {
                    a[] aVarArr = new a[parcelableArrayList.size()];
                    for (int i2 = 0; i2 < aVarArr.length; i2++) {
                        if (Build.VERSION.SDK_INT >= 20) {
                            aVarArr[i2] = p.a((Notification.Action) parcelableArrayList.get(i2));
                        } else if (Build.VERSION.SDK_INT >= 16) {
                            aVarArr[i2] = s.a((Bundle) parcelableArrayList.get(i2));
                        }
                    }
                    Collections.addAll(this.I, aVarArr);
                }
                this.J = bundle.getInt(l, 1);
                this.K = (PendingIntent) bundle.getParcelable(m);
                Notification[] a3 = p.a(bundle, n);
                if (a3 != null) {
                    Collections.addAll(this.L, a3);
                }
                this.M = (Bitmap) bundle.getParcelable(o);
                this.N = bundle.getInt(p);
                this.O = bundle.getInt(q, 8388613);
                this.P = bundle.getInt(r, -1);
                this.Q = bundle.getInt(s, 0);
                this.R = bundle.getInt(t);
                this.S = bundle.getInt(u, 80);
                this.T = bundle.getInt(v);
                this.U = bundle.getString(w);
                this.V = bundle.getString(x);
            }
        }

        @Override // androidx.core.app.p.i
        public f a(f fVar) {
            Bundle bundle = new Bundle();
            if (!this.I.isEmpty()) {
                if (Build.VERSION.SDK_INT >= 16) {
                    ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.I.size());
                    Iterator<a> it = this.I.iterator();
                    while (it.hasNext()) {
                        a next = it.next();
                        if (Build.VERSION.SDK_INT >= 20) {
                            arrayList.add(b(next));
                        } else if (Build.VERSION.SDK_INT >= 16) {
                            arrayList.add(s.a(next));
                        }
                    }
                    bundle.putParcelableArrayList(k, arrayList);
                } else {
                    bundle.putParcelableArrayList(k, null);
                }
            }
            if (this.J != 1) {
                bundle.putInt(l, this.J);
            }
            if (this.K != null) {
                bundle.putParcelable(m, this.K);
            }
            if (!this.L.isEmpty()) {
                bundle.putParcelableArray(n, (Parcelable[]) this.L.toArray(new Notification[this.L.size()]));
            }
            if (this.M != null) {
                bundle.putParcelable(o, this.M);
            }
            if (this.N != 0) {
                bundle.putInt(p, this.N);
            }
            if (this.O != 8388613) {
                bundle.putInt(q, this.O);
            }
            if (this.P != -1) {
                bundle.putInt(r, this.P);
            }
            if (this.Q != 0) {
                bundle.putInt(s, this.Q);
            }
            if (this.R != 0) {
                bundle.putInt(t, this.R);
            }
            if (this.S != 80) {
                bundle.putInt(u, this.S);
            }
            if (this.T != 0) {
                bundle.putInt(v, this.T);
            }
            if (this.U != null) {
                bundle.putString(w, this.U);
            }
            if (this.V != null) {
                bundle.putString(x, this.V);
            }
            fVar.b().putBundle(j, bundle);
            return fVar;
        }

        @am(a = 20)
        private static Notification.Action b(a aVar) {
            Notification.Action.Builder builder;
            Bundle bundle;
            if (Build.VERSION.SDK_INT >= 23) {
                IconCompat b2 = aVar.b();
                builder = new Notification.Action.Builder(b2 == null ? null : b2.f(), aVar.c(), aVar.d());
            } else {
                IconCompat b3 = aVar.b();
                builder = new Notification.Action.Builder((b3 == null || b3.a() != 2) ? 0 : b3.c(), aVar.c(), aVar.d());
            }
            if (aVar.e() != null) {
                bundle = new Bundle(aVar.e());
            } else {
                bundle = new Bundle();
            }
            bundle.putBoolean("android.support.allowGeneratedReplies", aVar.f());
            if (Build.VERSION.SDK_INT >= 24) {
                builder.setAllowGeneratedReplies(aVar.f());
            }
            builder.addExtras(bundle);
            w[] g2 = aVar.g();
            if (g2 != null) {
                for (RemoteInput remoteInput : w.a(g2)) {
                    builder.addRemoteInput(remoteInput);
                }
            }
            return builder.build();
        }

        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public C0026p clone() {
            C0026p c0026p = new C0026p();
            c0026p.I = new ArrayList<>(this.I);
            c0026p.J = this.J;
            c0026p.K = this.K;
            c0026p.L = new ArrayList<>(this.L);
            c0026p.M = this.M;
            c0026p.N = this.N;
            c0026p.O = this.O;
            c0026p.P = this.P;
            c0026p.Q = this.Q;
            c0026p.R = this.R;
            c0026p.S = this.S;
            c0026p.T = this.T;
            c0026p.U = this.U;
            c0026p.V = this.V;
            return c0026p;
        }

        public C0026p a(a aVar) {
            this.I.add(aVar);
            return this;
        }

        public C0026p a(List<a> list) {
            this.I.addAll(list);
            return this;
        }

        public C0026p b() {
            this.I.clear();
            return this;
        }

        public List<a> c() {
            return this.I;
        }

        @Deprecated
        public C0026p a(PendingIntent pendingIntent) {
            this.K = pendingIntent;
            return this;
        }

        @Deprecated
        public PendingIntent d() {
            return this.K;
        }

        @Deprecated
        public C0026p a(Notification notification) {
            this.L.add(notification);
            return this;
        }

        @Deprecated
        public C0026p b(List<Notification> list) {
            this.L.addAll(list);
            return this;
        }

        @Deprecated
        public C0026p e() {
            this.L.clear();
            return this;
        }

        @Deprecated
        public List<Notification> f() {
            return this.L;
        }

        @Deprecated
        public C0026p a(Bitmap bitmap) {
            this.M = bitmap;
            return this;
        }

        @Deprecated
        public Bitmap g() {
            return this.M;
        }

        @Deprecated
        public C0026p a(int i2) {
            this.N = i2;
            return this;
        }

        @Deprecated
        public int h() {
            return this.N;
        }

        @Deprecated
        public C0026p b(int i2) {
            this.O = i2;
            return this;
        }

        @Deprecated
        public int i() {
            return this.O;
        }

        public C0026p c(int i2) {
            this.P = i2;
            return this;
        }

        public int j() {
            return this.P;
        }

        @Deprecated
        public C0026p d(int i2) {
            this.S = i2;
            return this;
        }

        @Deprecated
        public int k() {
            return this.S;
        }

        @Deprecated
        public C0026p e(int i2) {
            this.Q = i2;
            return this;
        }

        @Deprecated
        public int l() {
            return this.Q;
        }

        @Deprecated
        public C0026p f(int i2) {
            this.R = i2;
            return this;
        }

        @Deprecated
        public int m() {
            return this.R;
        }

        public C0026p a(boolean z2) {
            a(8, z2);
            return this;
        }

        public boolean n() {
            return (this.J & 8) != 0;
        }

        public C0026p b(boolean z2) {
            a(1, z2);
            return this;
        }

        public boolean o() {
            return (this.J & 1) != 0;
        }

        @Deprecated
        public C0026p c(boolean z2) {
            a(2, z2);
            return this;
        }

        @Deprecated
        public boolean p() {
            return (this.J & 2) != 0;
        }

        @Deprecated
        public C0026p d(boolean z2) {
            a(4, z2);
            return this;
        }

        @Deprecated
        public boolean q() {
            return (this.J & 4) != 0;
        }

        @Deprecated
        public C0026p e(boolean z2) {
            a(16, z2);
            return this;
        }

        @Deprecated
        public boolean r() {
            return (this.J & 16) != 0;
        }

        @Deprecated
        public C0026p g(int i2) {
            this.T = i2;
            return this;
        }

        @Deprecated
        public int s() {
            return this.T;
        }

        @Deprecated
        public C0026p f(boolean z2) {
            a(32, z2);
            return this;
        }

        @Deprecated
        public boolean t() {
            return (this.J & 32) != 0;
        }

        public C0026p g(boolean z2) {
            a(64, z2);
            return this;
        }

        public boolean u() {
            return (this.J & 64) != 0;
        }

        public C0026p a(String str) {
            this.U = str;
            return this;
        }

        public String v() {
            return this.U;
        }

        public C0026p b(String str) {
            this.V = str;
            return this;
        }

        public String w() {
            return this.V;
        }

        private void a(int i2, boolean z2) {
            if (z2) {
                this.J = i2 | this.J;
            } else {
                this.J = (~i2) & this.J;
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class g implements i {

        /* renamed from: a, reason: collision with root package name */
        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        static final String f367a = "android.car.EXTENSIONS";

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        static final String b = "invisible_actions";
        private static final String c = "large_icon";
        private static final String d = "car_conversation";
        private static final String e = "app_color";
        private static final String f = "author";
        private static final String g = "text";
        private static final String h = "messages";
        private static final String i = "remote_input";
        private static final String j = "on_reply";
        private static final String k = "on_read";
        private static final String l = "participants";
        private static final String m = "timestamp";
        private Bitmap n;
        private a o;
        private int p;

        public g() {
            this.p = 0;
        }

        public g(Notification notification) {
            this.p = 0;
            if (Build.VERSION.SDK_INT < 21) {
                return;
            }
            Bundle bundle = p.a(notification) == null ? null : p.a(notification).getBundle(f367a);
            if (bundle != null) {
                this.n = (Bitmap) bundle.getParcelable(c);
                this.p = bundle.getInt(e, 0);
                this.o = a(bundle.getBundle(d));
            }
        }

        @am(a = 21)
        private static a a(@ai Bundle bundle) {
            String[] strArr;
            boolean z;
            w wVar = null;
            if (bundle == null) {
                return null;
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray(h);
            if (parcelableArray != null) {
                String[] strArr2 = new String[parcelableArray.length];
                for (int i2 = 0; i2 < strArr2.length; i2++) {
                    if (parcelableArray[i2] instanceof Bundle) {
                        strArr2[i2] = ((Bundle) parcelableArray[i2]).getString(g);
                        if (strArr2[i2] != null) {
                        }
                    }
                    z = false;
                }
                z = true;
                if (!z) {
                    return null;
                }
                strArr = strArr2;
            } else {
                strArr = null;
            }
            PendingIntent pendingIntent = (PendingIntent) bundle.getParcelable(k);
            PendingIntent pendingIntent2 = (PendingIntent) bundle.getParcelable(j);
            RemoteInput remoteInput = (RemoteInput) bundle.getParcelable(i);
            String[] stringArray = bundle.getStringArray(l);
            if (stringArray == null || stringArray.length != 1) {
                return null;
            }
            if (remoteInput != null) {
                wVar = new w(remoteInput.getResultKey(), remoteInput.getLabel(), remoteInput.getChoices(), remoteInput.getAllowFreeFormInput(), Build.VERSION.SDK_INT >= 29 ? remoteInput.getEditChoicesBeforeSending() : 0, remoteInput.getExtras(), null);
            }
            return new a(strArr, wVar, pendingIntent2, pendingIntent, stringArray, bundle.getLong(m));
        }

        @am(a = 21)
        private static Bundle b(@ah a aVar) {
            Bundle bundle = new Bundle();
            String str = (aVar.e() == null || aVar.e().length <= 1) ? null : aVar.e()[0];
            Parcelable[] parcelableArr = new Parcelable[aVar.a().length];
            for (int i2 = 0; i2 < parcelableArr.length; i2++) {
                Bundle bundle2 = new Bundle();
                bundle2.putString(g, aVar.a()[i2]);
                bundle2.putString(f, str);
                parcelableArr[i2] = bundle2;
            }
            bundle.putParcelableArray(h, parcelableArr);
            w b2 = aVar.b();
            if (b2 != null) {
                bundle.putParcelable(i, new RemoteInput.Builder(b2.a()).setLabel(b2.b()).setChoices(b2.c()).setAllowFreeFormInput(b2.f()).addExtras(b2.h()).build());
            }
            bundle.putParcelable(j, aVar.c());
            bundle.putParcelable(k, aVar.d());
            bundle.putStringArray(l, aVar.e());
            bundle.putLong(m, aVar.g());
            return bundle;
        }

        @Override // androidx.core.app.p.i
        public f a(f fVar) {
            if (Build.VERSION.SDK_INT < 21) {
                return fVar;
            }
            Bundle bundle = new Bundle();
            if (this.n != null) {
                bundle.putParcelable(c, this.n);
            }
            if (this.p != 0) {
                bundle.putInt(e, this.p);
            }
            if (this.o != null) {
                bundle.putBundle(d, b(this.o));
            }
            fVar.b().putBundle(f367a, bundle);
            return fVar;
        }

        public g a(@androidx.annotation.k int i2) {
            this.p = i2;
            return this;
        }

        @androidx.annotation.k
        public int a() {
            return this.p;
        }

        public g a(Bitmap bitmap) {
            this.n = bitmap;
            return this;
        }

        public Bitmap b() {
            return this.n;
        }

        @Deprecated
        public g a(a aVar) {
            this.o = aVar;
            return this;
        }

        @Deprecated
        public a c() {
            return this.o;
        }

        @Deprecated
        /* loaded from: /home/user/work/dex/classes.dex */
        public static class a {

            /* renamed from: a, reason: collision with root package name */
            private final String[] f368a;
            private final w b;
            private final PendingIntent c;
            private final PendingIntent d;
            private final String[] e;
            private final long f;

            a(String[] strArr, w wVar, PendingIntent pendingIntent, PendingIntent pendingIntent2, String[] strArr2, long j) {
                this.f368a = strArr;
                this.b = wVar;
                this.d = pendingIntent2;
                this.c = pendingIntent;
                this.e = strArr2;
                this.f = j;
            }

            public String[] a() {
                return this.f368a;
            }

            public w b() {
                return this.b;
            }

            public PendingIntent c() {
                return this.c;
            }

            public PendingIntent d() {
                return this.d;
            }

            public String[] e() {
                return this.e;
            }

            public String f() {
                if (this.e.length > 0) {
                    return this.e[0];
                }
                return null;
            }

            public long g() {
                return this.f;
            }

            /* renamed from: androidx.core.app.p$g$a$a, reason: collision with other inner class name */
            /* loaded from: /home/user/work/dex/classes.dex */
            public static class C0025a {

                /* renamed from: a, reason: collision with root package name */
                private final List<String> f369a = new ArrayList();
                private final String b;
                private w c;
                private PendingIntent d;
                private PendingIntent e;
                private long f;

                public C0025a(String str) {
                    this.b = str;
                }

                public C0025a a(String str) {
                    this.f369a.add(str);
                    return this;
                }

                public C0025a a(PendingIntent pendingIntent, w wVar) {
                    this.c = wVar;
                    this.e = pendingIntent;
                    return this;
                }

                public C0025a a(PendingIntent pendingIntent) {
                    this.d = pendingIntent;
                    return this;
                }

                public C0025a a(long j) {
                    this.f = j;
                    return this;
                }

                public a a() {
                    return new a((String[]) this.f369a.toArray(new String[this.f369a.size()]), this.c, this.e, this.d, new String[]{this.b}, this.f);
                }
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class e {
        private static final int g = 1;
        private static final int h = 2;

        /* renamed from: a, reason: collision with root package name */
        private PendingIntent f364a;
        private PendingIntent b;
        private IconCompat c;
        private int d;

        @androidx.annotation.o
        private int e;
        private int f;

        private e(PendingIntent pendingIntent, PendingIntent pendingIntent2, IconCompat iconCompat, int i, @androidx.annotation.o int i2, int i3) {
            this.f364a = pendingIntent;
            this.c = iconCompat;
            this.d = i;
            this.e = i2;
            this.b = pendingIntent2;
            this.f = i3;
        }

        @ah
        public PendingIntent a() {
            return this.f364a;
        }

        @ai
        public PendingIntent b() {
            return this.b;
        }

        @ah
        public IconCompat c() {
            return this.c;
        }

        @androidx.annotation.p(a = 0)
        public int d() {
            return this.d;
        }

        @androidx.annotation.o
        public int e() {
            return this.e;
        }

        public boolean f() {
            return (this.f & 1) != 0;
        }

        public boolean g() {
            return (this.f & 2) != 0;
        }

        @ai
        @am(a = 29)
        public static Notification.BubbleMetadata a(@ai e eVar) {
            if (eVar == null) {
                return null;
            }
            Notification.BubbleMetadata.Builder suppressNotification = new Notification.BubbleMetadata.Builder().setAutoExpandBubble(eVar.f()).setDeleteIntent(eVar.b()).setIcon(eVar.c().f()).setIntent(eVar.a()).setSuppressNotification(eVar.g());
            if (eVar.d() != 0) {
                suppressNotification.setDesiredHeight(eVar.d());
            }
            if (eVar.e() != 0) {
                suppressNotification.setDesiredHeightResId(eVar.e());
            }
            return suppressNotification.build();
        }

        @ai
        @am(a = 29)
        public static e a(@ai Notification.BubbleMetadata bubbleMetadata) {
            if (bubbleMetadata == null) {
                return null;
            }
            a b = new a().a(bubbleMetadata.getAutoExpandBubble()).b(bubbleMetadata.getDeleteIntent()).a(IconCompat.a(bubbleMetadata.getIcon())).a(bubbleMetadata.getIntent()).b(bubbleMetadata.isNotificationSuppressed());
            if (bubbleMetadata.getDesiredHeight() != 0) {
                b.a(bubbleMetadata.getDesiredHeight());
            }
            if (bubbleMetadata.getDesiredHeightResId() != 0) {
                b.b(bubbleMetadata.getDesiredHeightResId());
            }
            return b.a();
        }

        /* loaded from: /home/user/work/dex/classes.dex */
        public static final class a {

            /* renamed from: a, reason: collision with root package name */
            private PendingIntent f365a;
            private IconCompat b;
            private int c;

            @androidx.annotation.o
            private int d;
            private int e;
            private PendingIntent f;

            @ah
            public a a(@ah PendingIntent pendingIntent) {
                if (pendingIntent == null) {
                    throw new IllegalArgumentException("Bubble requires non-null pending intent");
                }
                this.f365a = pendingIntent;
                return this;
            }

            @ah
            public a a(@ah IconCompat iconCompat) {
                if (iconCompat == null) {
                    throw new IllegalArgumentException("Bubbles require non-null icon");
                }
                if (iconCompat.a() == 1) {
                    throw new IllegalArgumentException("When using bitmap based icons, Bubbles require TYPE_ADAPTIVE_BITMAP, please use IconCompat#createWithAdaptiveBitmap instead");
                }
                this.b = iconCompat;
                return this;
            }

            @ah
            public a a(@androidx.annotation.p(a = 0) int i) {
                this.c = Math.max(i, 0);
                this.d = 0;
                return this;
            }

            @ah
            public a b(@androidx.annotation.o int i) {
                this.d = i;
                this.c = 0;
                return this;
            }

            @ah
            public a a(boolean z) {
                a(1, z);
                return this;
            }

            @ah
            public a b(boolean z) {
                a(2, z);
                return this;
            }

            @ah
            public a b(@ai PendingIntent pendingIntent) {
                this.f = pendingIntent;
                return this;
            }

            @SuppressLint({"SyntheticAccessor"})
            @ah
            public e a() {
                if (this.f365a == null) {
                    throw new IllegalStateException("Must supply pending intent to bubble");
                }
                if (this.b == null) {
                    throw new IllegalStateException("Must supply an icon for the bubble");
                }
                return new e(this.f365a, this.f, this.b, this.c, this.d, this.e);
            }

            private a a(int i, boolean z) {
                if (z) {
                    this.e = i | this.e;
                } else {
                    this.e = (~i) & this.e;
                }
                return this;
            }
        }
    }

    static Notification[] a(Bundle bundle, String str) {
        Parcelable[] parcelableArray = bundle.getParcelableArray(str);
        if ((parcelableArray instanceof Notification[]) || parcelableArray == null) {
            return (Notification[]) parcelableArray;
        }
        Notification[] notificationArr = new Notification[parcelableArray.length];
        for (int i2 = 0; i2 < parcelableArray.length; i2++) {
            notificationArr[i2] = (Notification) parcelableArray[i2];
        }
        bundle.putParcelableArray(str, notificationArr);
        return notificationArr;
    }

    @ai
    public static Bundle a(Notification notification) {
        if (Build.VERSION.SDK_INT >= 19) {
            return notification.extras;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return s.a(notification);
        }
        return null;
    }

    public static int b(Notification notification) {
        if (Build.VERSION.SDK_INT >= 19) {
            if (notification.actions != null) {
                return notification.actions.length;
            }
            return 0;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return s.b(notification);
        }
        return 0;
    }

    public static a a(Notification notification, int i2) {
        if (Build.VERSION.SDK_INT >= 20) {
            return a(notification.actions[i2]);
        }
        if (Build.VERSION.SDK_INT >= 19) {
            Notification.Action action = notification.actions[i2];
            SparseArray sparseParcelableArray = notification.extras.getSparseParcelableArray(r.e);
            return s.a(action.icon, action.title, action.actionIntent, sparseParcelableArray != null ? (Bundle) sparseParcelableArray.get(i2) : null);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return s.a(notification, i2);
        }
        return null;
    }

    @ai
    public static e c(@ah Notification notification) {
        if (Build.VERSION.SDK_INT >= 29) {
            return e.a(notification.getBubbleMetadata());
        }
        return null;
    }

    @am(a = 20)
    static a a(Notification.Action action) {
        w[] wVarArr;
        boolean z2;
        int i2;
        RemoteInput[] remoteInputs = action.getRemoteInputs();
        if (remoteInputs == null) {
            wVarArr = null;
        } else {
            w[] wVarArr2 = new w[remoteInputs.length];
            for (int i3 = 0; i3 < remoteInputs.length; i3++) {
                RemoteInput remoteInput = remoteInputs[i3];
                wVarArr2[i3] = new w(remoteInput.getResultKey(), remoteInput.getLabel(), remoteInput.getChoices(), remoteInput.getAllowFreeFormInput(), Build.VERSION.SDK_INT >= 29 ? remoteInput.getEditChoicesBeforeSending() : 0, remoteInput.getExtras(), null);
            }
            wVarArr = wVarArr2;
        }
        if (Build.VERSION.SDK_INT >= 24) {
            z2 = action.getExtras().getBoolean("android.support.allowGeneratedReplies") || action.getAllowGeneratedReplies();
        } else {
            z2 = action.getExtras().getBoolean("android.support.allowGeneratedReplies");
        }
        boolean z3 = z2;
        boolean z4 = action.getExtras().getBoolean("android.support.action.showsUserInterface", true);
        if (Build.VERSION.SDK_INT >= 28) {
            i2 = action.getSemanticAction();
        } else {
            i2 = action.getExtras().getInt("android.support.action.semanticAction", 0);
        }
        int i4 = i2;
        boolean isContextual = Build.VERSION.SDK_INT >= 29 ? action.isContextual() : false;
        if (Build.VERSION.SDK_INT >= 23) {
            if (action.getIcon() == null && action.icon != 0) {
                return new a(action.icon, action.title, action.actionIntent, action.getExtras(), wVarArr, (w[]) null, z3, i4, z4, isContextual);
            }
            return new a(action.getIcon() != null ? IconCompat.b(action.getIcon()) : null, action.title, action.actionIntent, action.getExtras(), wVarArr, (w[]) null, z3, i4, z4, isContextual);
        }
        return new a(action.icon, action.title, action.actionIntent, action.getExtras(), wVarArr, (w[]) null, z3, i4, z4, isContextual);
    }

    @am(a = 21)
    public static List<a> d(Notification notification) {
        Bundle bundle;
        ArrayList arrayList = new ArrayList();
        Bundle bundle2 = notification.extras.getBundle("android.car.EXTENSIONS");
        if (bundle2 != null && (bundle = bundle2.getBundle("invisible_actions")) != null) {
            for (int i2 = 0; i2 < bundle.size(); i2++) {
                arrayList.add(s.a(bundle.getBundle(Integer.toString(i2))));
            }
        }
        return arrayList;
    }

    @am(a = 19)
    public static CharSequence e(Notification notification) {
        return notification.extras.getCharSequence(v);
    }

    public static String f(Notification notification) {
        if (Build.VERSION.SDK_INT >= 21) {
            return notification.category;
        }
        return null;
    }

    public static boolean g(Notification notification) {
        if (Build.VERSION.SDK_INT >= 20) {
            return (notification.flags & 256) != 0;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return notification.extras.getBoolean(r.f376a);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return s.a(notification).getBoolean(r.f376a);
        }
        return false;
    }

    public static String h(Notification notification) {
        if (Build.VERSION.SDK_INT >= 20) {
            return notification.getGroup();
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return notification.extras.getString(r.b);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return s.a(notification).getString(r.b);
        }
        return null;
    }

    public static boolean i(Notification notification) {
        if (Build.VERSION.SDK_INT >= 20) {
            return (notification.flags & 512) != 0;
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return notification.extras.getBoolean(r.c);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return s.a(notification).getBoolean(r.c);
        }
        return false;
    }

    public static String j(Notification notification) {
        if (Build.VERSION.SDK_INT >= 20) {
            return notification.getSortKey();
        }
        if (Build.VERSION.SDK_INT >= 19) {
            return notification.extras.getString(r.d);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            return s.a(notification).getString(r.d);
        }
        return null;
    }

    public static String k(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getChannelId();
        }
        return null;
    }

    public static long l(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getTimeoutAfter();
        }
        return 0L;
    }

    public static int m(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getBadgeIconType();
        }
        return 0;
    }

    public static String n(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getShortcutId();
        }
        return null;
    }

    public static int o(Notification notification) {
        if (Build.VERSION.SDK_INT >= 26) {
            return notification.getGroupAlertBehavior();
        }
        return 0;
    }

    public static boolean p(Notification notification) {
        if (Build.VERSION.SDK_INT >= 29) {
            return notification.getAllowSystemGeneratedContextualActions();
        }
        return false;
    }

    @Deprecated
    public p() {
    }
}
