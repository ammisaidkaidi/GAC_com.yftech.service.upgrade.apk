package androidx.core.app;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.SparseIntArray;
import android.view.FrameMetrics;
import android.view.Window;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import androidx.annotation.ap;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public class l {

    /* renamed from: a, reason: collision with root package name */
    public static final int f347a = 0;
    public static final int b = 1;
    public static final int c = 2;
    public static final int d = 3;
    public static final int e = 4;
    public static final int f = 5;
    public static final int g = 6;
    public static final int h = 7;
    public static final int i = 8;
    public static final int j = 1;
    public static final int k = 2;
    public static final int l = 4;
    public static final int m = 8;
    public static final int n = 16;
    public static final int o = 32;
    public static final int p = 64;
    public static final int q = 128;
    public static final int r = 256;
    public static final int s = 511;
    private static final int t = 8;
    private b u;

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface c {
    }

    public l() {
        this(1);
    }

    public l(int i2) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.u = new a(i2);
        } else {
            this.u = new b();
        }
    }

    public void a(@ah Activity activity) {
        this.u.a(activity);
    }

    @ai
    public SparseIntArray[] b(@ah Activity activity) {
        return this.u.b(activity);
    }

    @ai
    public SparseIntArray[] a() {
        return this.u.a();
    }

    @ai
    public SparseIntArray[] b() {
        return this.u.c();
    }

    @ai
    public SparseIntArray[] c() {
        return this.u.b();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class b {
        public void a(Activity activity) {
        }

        public SparseIntArray[] a() {
            return null;
        }

        public SparseIntArray[] b() {
            return null;
        }

        public SparseIntArray[] b(Activity activity) {
            return null;
        }

        public SparseIntArray[] c() {
            return null;
        }

        b() {
        }
    }

    @am(a = 24)
    /* loaded from: /home/user/work/dex/classes.dex */
    private static class a extends b {
        private static final int d = 1000000;
        private static final int e = 500000;
        private static HandlerThread g;
        private static Handler h;

        /* renamed from: a, reason: collision with root package name */
        int f348a;
        SparseIntArray[] b = new SparseIntArray[9];
        private ArrayList<WeakReference<Activity>> f = new ArrayList<>();
        Window.OnFrameMetricsAvailableListener c = new Window.OnFrameMetricsAvailableListener() { // from class: androidx.core.app.l.a.1
            @Override // android.view.Window.OnFrameMetricsAvailableListener
            public void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i) {
                if ((a.this.f348a & 1) != 0) {
                    a.this.a(a.this.b[0], frameMetrics.getMetric(8));
                }
                if ((a.this.f348a & 2) != 0) {
                    a.this.a(a.this.b[1], frameMetrics.getMetric(1));
                }
                if ((a.this.f348a & 4) != 0) {
                    a.this.a(a.this.b[2], frameMetrics.getMetric(3));
                }
                if ((a.this.f348a & 8) != 0) {
                    a.this.a(a.this.b[3], frameMetrics.getMetric(4));
                }
                if ((a.this.f348a & 16) != 0) {
                    a.this.a(a.this.b[4], frameMetrics.getMetric(5));
                }
                if ((a.this.f348a & 64) != 0) {
                    a.this.a(a.this.b[6], frameMetrics.getMetric(7));
                }
                if ((a.this.f348a & 32) != 0) {
                    a.this.a(a.this.b[5], frameMetrics.getMetric(6));
                }
                if ((a.this.f348a & 128) != 0) {
                    a.this.a(a.this.b[7], frameMetrics.getMetric(0));
                }
                if ((a.this.f348a & 256) != 0) {
                    a.this.a(a.this.b[8], frameMetrics.getMetric(2));
                }
            }
        };

        a(int i) {
            this.f348a = i;
        }

        void a(SparseIntArray sparseIntArray, long j) {
            if (sparseIntArray != null) {
                int i = (int) ((500000 + j) / 1000000);
                if (j >= 0) {
                    sparseIntArray.put(i, sparseIntArray.get(i) + 1);
                }
            }
        }

        @Override // androidx.core.app.l.b
        public void a(Activity activity) {
            if (g == null) {
                g = new HandlerThread("FrameMetricsAggregator");
                g.start();
                h = new Handler(g.getLooper());
            }
            for (int i = 0; i <= 8; i++) {
                if (this.b[i] == null && (this.f348a & (1 << i)) != 0) {
                    this.b[i] = new SparseIntArray();
                }
            }
            activity.getWindow().addOnFrameMetricsAvailableListener(this.c, h);
            this.f.add(new WeakReference<>(activity));
        }

        @Override // androidx.core.app.l.b
        public SparseIntArray[] b(Activity activity) {
            Iterator<WeakReference<Activity>> it = this.f.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                WeakReference<Activity> next = it.next();
                if (next.get() == activity) {
                    this.f.remove(next);
                    break;
                }
            }
            activity.getWindow().removeOnFrameMetricsAvailableListener(this.c);
            return this.b;
        }

        @Override // androidx.core.app.l.b
        public SparseIntArray[] a() {
            for (int size = this.f.size() - 1; size >= 0; size--) {
                WeakReference<Activity> weakReference = this.f.get(size);
                Activity activity = weakReference.get();
                if (weakReference.get() != null) {
                    activity.getWindow().removeOnFrameMetricsAvailableListener(this.c);
                    this.f.remove(size);
                }
            }
            return this.b;
        }

        @Override // androidx.core.app.l.b
        public SparseIntArray[] b() {
            return this.b;
        }

        @Override // androidx.core.app.l.b
        public SparseIntArray[] c() {
            SparseIntArray[] sparseIntArrayArr = this.b;
            this.b = new SparseIntArray[9];
            return sparseIntArrayArr;
        }
    }
}
