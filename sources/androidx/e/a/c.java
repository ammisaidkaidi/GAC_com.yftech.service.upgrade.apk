package androidx.e.a;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class c extends a {

    /* renamed from: a, reason: collision with root package name */
    private int f740a;
    private int b;
    private LayoutInflater c;

    @Deprecated
    public c(Context context, int i, Cursor cursor) {
        super(context, cursor);
        this.b = i;
        this.f740a = i;
        this.c = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Deprecated
    public c(Context context, int i, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.b = i;
        this.f740a = i;
        this.c = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    public c(Context context, int i, Cursor cursor, int i2) {
        super(context, cursor, i2);
        this.b = i;
        this.f740a = i;
        this.c = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // androidx.e.a.a
    public View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.c.inflate(this.f740a, viewGroup, false);
    }

    @Override // androidx.e.a.a
    public View b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.c.inflate(this.b, viewGroup, false);
    }

    public void b(int i) {
        this.f740a = i;
    }

    public void c(int i) {
        this.b = i;
    }
}
