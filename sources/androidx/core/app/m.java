package androidx.core.app;

import android.app.Service;
import android.app.job.JobInfo;
import android.app.job.JobParameters;
import android.app.job.JobScheduler;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import android.os.PowerManager;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.am;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class m extends Service {

    /* renamed from: a, reason: collision with root package name */
    static final String f350a = "JobIntentService";
    static final boolean b = false;
    static final Object j = new Object();
    static final HashMap<ComponentName, h> k = new HashMap<>();
    b c;
    h d;
    a e;
    boolean f = false;
    boolean g = false;
    boolean h = false;
    final ArrayList<d> i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface b {
        IBinder a();

        e b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface e {
        Intent a();

        void b();
    }

    protected abstract void a(@ah Intent intent);

    public boolean b() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static abstract class h {
        final ComponentName c;
        boolean d;
        int e;

        public void a() {
        }

        abstract void a(Intent intent);

        public void b() {
        }

        public void c() {
        }

        h(ComponentName componentName) {
            this.c = componentName;
        }

        void a(int i) {
            if (!this.d) {
                this.d = true;
                this.e = i;
            } else {
                if (this.e == i) {
                    return;
                }
                throw new IllegalArgumentException("Given job ID " + i + " is different than previous " + this.e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class c extends h {

        /* renamed from: a, reason: collision with root package name */
        boolean f352a;
        boolean b;
        private final Context f;
        private final PowerManager.WakeLock g;
        private final PowerManager.WakeLock h;

        c(Context context, ComponentName componentName) {
            super(componentName);
            this.f = context.getApplicationContext();
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            this.g = powerManager.newWakeLock(1, componentName.getClassName() + ":launch");
            this.g.setReferenceCounted(false);
            this.h = powerManager.newWakeLock(1, componentName.getClassName() + ":run");
            this.h.setReferenceCounted(false);
        }

        @Override // androidx.core.app.m.h
        void a(Intent intent) {
            Intent intent2 = new Intent(intent);
            intent2.setComponent(this.c);
            if (this.f.startService(intent2) != null) {
                synchronized (this) {
                    if (!this.f352a) {
                        this.f352a = true;
                        if (!this.b) {
                            this.g.acquire(60000L);
                        }
                    }
                }
            }
        }

        @Override // androidx.core.app.m.h
        public void a() {
            synchronized (this) {
                this.f352a = false;
            }
        }

        @Override // androidx.core.app.m.h
        public void b() {
            synchronized (this) {
                if (!this.b) {
                    this.b = true;
                    this.h.acquire(600000L);
                    this.g.release();
                }
            }
        }

        @Override // androidx.core.app.m.h
        public void c() {
            synchronized (this) {
                if (this.b) {
                    if (this.f352a) {
                        this.g.acquire(60000L);
                    }
                    this.b = false;
                    this.h.release();
                }
            }
        }
    }

    @am(a = 26)
    /* loaded from: /home/user/work/dex/classes.dex */
    static final class f extends JobServiceEngine implements b {

        /* renamed from: a, reason: collision with root package name */
        static final String f354a = "JobServiceEngineImpl";
        static final boolean b = false;
        final m c;
        final Object d;
        JobParameters e;

        /* loaded from: /home/user/work/dex/classes.dex */
        final class a implements e {

            /* renamed from: a, reason: collision with root package name */
            final JobWorkItem f355a;

            a(JobWorkItem jobWorkItem) {
                this.f355a = jobWorkItem;
            }

            @Override // androidx.core.app.m.e
            public Intent a() {
                return this.f355a.getIntent();
            }

            @Override // androidx.core.app.m.e
            public void b() {
                synchronized (f.this.d) {
                    if (f.this.e != null) {
                        f.this.e.completeWork(this.f355a);
                    }
                }
            }
        }

        f(m mVar) {
            super(mVar);
            this.d = new Object();
            this.c = mVar;
        }

        @Override // androidx.core.app.m.b
        public IBinder a() {
            return getBinder();
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStartJob(JobParameters jobParameters) {
            this.e = jobParameters;
            this.c.b(false);
            return true;
        }

        @Override // android.app.job.JobServiceEngine
        public boolean onStopJob(JobParameters jobParameters) {
            boolean c = this.c.c();
            synchronized (this.d) {
                this.e = null;
            }
            return c;
        }

        @Override // androidx.core.app.m.b
        public e b() {
            synchronized (this.d) {
                if (this.e == null) {
                    return null;
                }
                JobWorkItem dequeueWork = this.e.dequeueWork();
                if (dequeueWork == null) {
                    return null;
                }
                dequeueWork.getIntent().setExtrasClassLoader(this.c.getClassLoader());
                return new a(dequeueWork);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @am(a = 26)
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class g extends h {

        /* renamed from: a, reason: collision with root package name */
        private final JobInfo f356a;
        private final JobScheduler b;

        g(Context context, ComponentName componentName, int i) {
            super(componentName);
            a(i);
            this.f356a = new JobInfo.Builder(i, this.c).setOverrideDeadline(0L).build();
            this.b = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
        }

        @Override // androidx.core.app.m.h
        void a(Intent intent) {
            this.b.enqueue(this.f356a, new JobWorkItem(intent));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public final class d implements e {

        /* renamed from: a, reason: collision with root package name */
        final Intent f353a;
        final int b;

        d(Intent intent, int i) {
            this.f353a = intent;
            this.b = i;
        }

        @Override // androidx.core.app.m.e
        public Intent a() {
            return this.f353a;
        }

        @Override // androidx.core.app.m.e
        public void b() {
            m.this.stopSelf(this.b);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public final class a extends AsyncTask<Void, Void, Void> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void doInBackground(Void... voidArr) {
            while (true) {
                e e = m.this.e();
                if (e == null) {
                    return null;
                }
                m.this.a(e.a());
                e.b();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onCancelled(Void r1) {
            m.this.d();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void onPostExecute(Void r1) {
            m.this.d();
        }
    }

    public m() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.i = null;
        } else {
            this.i = new ArrayList<>();
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.c = new f(this);
            this.d = null;
        } else {
            this.c = null;
            this.d = a((Context) this, new ComponentName(this, getClass()), false, 0);
        }
    }

    @Override // android.app.Service
    public int onStartCommand(@ai Intent intent, int i, int i2) {
        if (this.i == null) {
            return 2;
        }
        this.d.a();
        synchronized (this.i) {
            ArrayList<d> arrayList = this.i;
            if (intent == null) {
                intent = new Intent();
            }
            arrayList.add(new d(intent, i2));
            b(true);
        }
        return 3;
    }

    @Override // android.app.Service
    public IBinder onBind(@ah Intent intent) {
        if (this.c != null) {
            return this.c.a();
        }
        return null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        if (this.i != null) {
            synchronized (this.i) {
                this.h = true;
                this.d.c();
            }
        }
    }

    public static void a(@ah Context context, @ah Class<?> cls, int i, @ah Intent intent) {
        a(context, new ComponentName(context, cls), i, intent);
    }

    public static void a(@ah Context context, @ah ComponentName componentName, int i, @ah Intent intent) {
        if (intent == null) {
            throw new IllegalArgumentException("work must not be null");
        }
        synchronized (j) {
            h a2 = a(context, componentName, true, i);
            a2.a(i);
            a2.a(intent);
        }
    }

    static h a(Context context, ComponentName componentName, boolean z, int i) {
        h cVar;
        h hVar = k.get(componentName);
        if (hVar != null) {
            return hVar;
        }
        if (Build.VERSION.SDK_INT < 26) {
            cVar = new c(context, componentName);
        } else {
            if (!z) {
                throw new IllegalArgumentException("Can't be here without a job id");
            }
            cVar = new g(context, componentName, i);
        }
        h hVar2 = cVar;
        k.put(componentName, hVar2);
        return hVar2;
    }

    public void a(boolean z) {
        this.f = z;
    }

    public boolean a() {
        return this.g;
    }

    boolean c() {
        if (this.e != null) {
            this.e.cancel(this.f);
        }
        this.g = true;
        return b();
    }

    void b(boolean z) {
        if (this.e == null) {
            this.e = new a();
            if (this.d != null && z) {
                this.d.b();
            }
            this.e.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    void d() {
        if (this.i != null) {
            synchronized (this.i) {
                this.e = null;
                if (this.i != null && this.i.size() > 0) {
                    b(false);
                } else if (!this.h) {
                    this.d.c();
                }
            }
        }
    }

    e e() {
        if (this.c != null) {
            return this.c.b();
        }
        synchronized (this.i) {
            if (this.i.size() <= 0) {
                return null;
            }
            return this.i.remove(0);
        }
    }
}
