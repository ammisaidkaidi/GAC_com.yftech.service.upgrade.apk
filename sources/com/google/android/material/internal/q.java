package com.google.android.material.internal;

import android.content.Context;
import android.graphics.Typeface;
import android.text.TextPaint;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import java.lang.ref.WeakReference;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class q {
    private float c;

    @ai
    private com.google.android.material.q.d f;

    /* renamed from: a, reason: collision with root package name */
    private final TextPaint f1347a = new TextPaint(1);
    private final com.google.android.material.q.f b = new com.google.android.material.q.f() { // from class: com.google.android.material.internal.q.1
        @Override // com.google.android.material.q.f
        public void a(@ah Typeface typeface, boolean z) {
            if (z) {
                return;
            }
            q.this.d = true;
            a aVar = (a) q.this.e.get();
            if (aVar != null) {
                aVar.i();
            }
        }

        @Override // com.google.android.material.q.f
        public void a(int i) {
            q.this.d = true;
            a aVar = (a) q.this.e.get();
            if (aVar != null) {
                aVar.i();
            }
        }
    };
    private boolean d = true;

    @ai
    private WeakReference<a> e = new WeakReference<>(null);

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        @ah
        int[] getState();

        void i();

        boolean onStateChange(int[] iArr);
    }

    public q(@ai a aVar) {
        a(aVar);
    }

    public void a(@ai a aVar) {
        this.e = new WeakReference<>(aVar);
    }

    @ah
    public TextPaint a() {
        return this.f1347a;
    }

    public void a(boolean z) {
        this.d = z;
    }

    public boolean b() {
        return this.d;
    }

    public float a(String str) {
        if (!this.d) {
            return this.c;
        }
        this.c = a((CharSequence) str);
        this.d = false;
        return this.c;
    }

    private float a(@ai CharSequence charSequence) {
        if (charSequence == null) {
            return 0.0f;
        }
        return this.f1347a.measureText(charSequence, 0, charSequence.length());
    }

    @ai
    public com.google.android.material.q.d c() {
        return this.f;
    }

    public void a(@ai com.google.android.material.q.d dVar, Context context) {
        if (this.f != dVar) {
            this.f = dVar;
            if (dVar != null) {
                dVar.c(context, this.f1347a, this.b);
                a aVar = this.e.get();
                if (aVar != null) {
                    this.f1347a.drawableState = aVar.getState();
                }
                dVar.b(context, this.f1347a, this.b);
                this.d = true;
            }
            a aVar2 = this.e.get();
            if (aVar2 != null) {
                aVar2.i();
                aVar2.onStateChange(aVar2.getState());
            }
        }
    }

    public void a(Context context) {
        this.f.b(context, this.f1347a, this.b);
    }
}
