package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import androidx.annotation.ah;
import androidx.annotation.ai;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class i<E> extends f {

    /* renamed from: a, reason: collision with root package name */
    @ai
    private final Activity f762a;
    final k b;

    @ah
    private final Context c;

    @ah
    private final Handler d;
    private final int e;

    @Override // androidx.fragment.app.f
    @ai
    public View a(int i) {
        return null;
    }

    public void a(@ah d dVar, @ah String[] strArr, int i) {
    }

    public void a(@ah String str, @ai FileDescriptor fileDescriptor, @ah PrintWriter printWriter, @ai String[] strArr) {
    }

    @Override // androidx.fragment.app.f
    public boolean a() {
        return true;
    }

    public boolean a(@ah d dVar) {
        return true;
    }

    public boolean a(@ah String str) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(@ah d dVar) {
    }

    public void g() {
    }

    public boolean h() {
        return true;
    }

    @ai
    public abstract E j();

    public i(@ah Context context, @ah Handler handler, int i) {
        this(context instanceof Activity ? (Activity) context : null, context, handler, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(@ah e eVar) {
        this(eVar, eVar, new Handler(), 0);
    }

    i(@ai Activity activity, @ah Context context, @ah Handler handler, int i) {
        this.b = new k();
        this.f762a = activity;
        this.c = (Context) androidx.core.m.i.a(context, "context == null");
        this.d = (Handler) androidx.core.m.i.a(handler, "handler == null");
        this.e = i;
    }

    @ah
    public LayoutInflater b() {
        return LayoutInflater.from(this.c);
    }

    public void a(@ah d dVar, @SuppressLint({"UnknownNullness"}) Intent intent, int i) {
        a(dVar, intent, i, (Bundle) null);
    }

    public void a(@ah d dVar, @SuppressLint({"UnknownNullness"}) Intent intent, int i, @ai Bundle bundle) {
        if (i != -1) {
            throw new IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        this.c.startActivity(intent);
    }

    public void a(@ah d dVar, @SuppressLint({"UnknownNullness"}) IntentSender intentSender, int i, @ai Intent intent, int i2, int i3, int i4, @ai Bundle bundle) {
        if (i != -1) {
            throw new IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
        }
        androidx.core.app.a.a(this.f762a, intentSender, i, intent, i2, i3, i4, bundle);
    }

    public int i() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ai
    public Activity k() {
        return this.f762a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public Context l() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public Handler m() {
        return this.d;
    }
}
