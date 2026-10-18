package androidx.core.app;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.ah;
import androidx.annotation.ai;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: /home/user/work/dex/classes.dex */
public final class aa implements Iterable<Intent> {

    /* renamed from: a, reason: collision with root package name */
    private static final String f336a = "TaskStackBuilder";
    private final ArrayList<Intent> b = new ArrayList<>();
    private final Context c;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        @ai
        Intent j();
    }

    private aa(Context context) {
        this.c = context;
    }

    @ah
    public static aa a(@ah Context context) {
        return new aa(context);
    }

    @Deprecated
    public static aa b(Context context) {
        return a(context);
    }

    @ah
    public aa a(@ah Intent intent) {
        this.b.add(intent);
        return this;
    }

    @ah
    public aa b(@ah Intent intent) {
        ComponentName component = intent.getComponent();
        if (component == null) {
            component = intent.resolveActivity(this.c.getPackageManager());
        }
        if (component != null) {
            a(component);
        }
        a(intent);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @ah
    public aa a(@ah Activity activity) {
        Intent j = activity instanceof a ? ((a) activity).j() : null;
        if (j == null) {
            j = n.b(activity);
        }
        if (j != null) {
            ComponentName component = j.getComponent();
            if (component == null) {
                component = j.resolveActivity(this.c.getPackageManager());
            }
            a(component);
            a(j);
        }
        return this;
    }

    @ah
    public aa a(@ah Class<?> cls) {
        return a(new ComponentName(this.c, cls));
    }

    public aa a(ComponentName componentName) {
        int size = this.b.size();
        try {
            Intent a2 = n.a(this.c, componentName);
            while (a2 != null) {
                this.b.add(size, a2);
                a2 = n.a(this.c, a2.getComponent());
            }
            return this;
        } catch (PackageManager.NameNotFoundException e) {
            Log.e(f336a, "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(e);
        }
    }

    public int a() {
        return this.b.size();
    }

    @Deprecated
    public Intent a(int i) {
        return b(i);
    }

    @ai
    public Intent b(int i) {
        return this.b.get(i);
    }

    @Override // java.lang.Iterable
    @Deprecated
    public Iterator<Intent> iterator() {
        return this.b.iterator();
    }

    public void b() {
        a((Bundle) null);
    }

    public void a(@ai Bundle bundle) {
        if (this.b.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent[] intentArr = (Intent[]) this.b.toArray(new Intent[this.b.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        if (androidx.core.b.c.a(this.c, intentArr, bundle)) {
            return;
        }
        Intent intent = new Intent(intentArr[intentArr.length - 1]);
        intent.addFlags(268435456);
        this.c.startActivity(intent);
    }

    @ai
    public PendingIntent a(int i, int i2) {
        return a(i, i2, null);
    }

    @ai
    public PendingIntent a(int i, int i2, @ai Bundle bundle) {
        if (this.b.isEmpty()) {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
        }
        Intent[] intentArr = (Intent[]) this.b.toArray(new Intent[this.b.size()]);
        intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
        if (Build.VERSION.SDK_INT >= 16) {
            return PendingIntent.getActivities(this.c, i, intentArr, i2, bundle);
        }
        return PendingIntent.getActivities(this.c, i, intentArr, i2);
    }

    @ah
    public Intent[] c() {
        Intent[] intentArr = new Intent[this.b.size()];
        if (intentArr.length == 0) {
            return intentArr;
        }
        intentArr[0] = new Intent(this.b.get(0)).addFlags(268484608);
        for (int i = 1; i < intentArr.length; i++) {
            intentArr[i] = new Intent(this.b.get(i));
        }
        return intentArr;
    }
}
