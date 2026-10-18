package com.google.android.material.z;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ak;
import androidx.annotation.ap;
import androidx.core.n.af;
import com.google.android.material.a;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: /home/user/work/dex/classes.dex */
public final class s implements v {

    /* renamed from: a, reason: collision with root package name */
    private static final int f1561a = -1;
    private int b;

    @ak
    private int c = -1;

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface a {
    }

    public s(int i) {
        this.b = i;
    }

    public int a() {
        return this.b;
    }

    public void a(int i) {
        this.b = i;
    }

    @ak
    public int b() {
        return this.c;
    }

    public void b(@ak int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Slide distance must be positive. If attempting to reverse the direction of the slide, use setSlideEdge(int) instead.");
        }
        this.c = i;
    }

    @Override // com.google.android.material.z.v
    @ai
    public Animator a(@ah ViewGroup viewGroup, @ah View view) {
        return a(viewGroup, view, this.b, a(view.getContext()));
    }

    @Override // com.google.android.material.z.v
    @ai
    public Animator b(@ah ViewGroup viewGroup, @ah View view) {
        return b(viewGroup, view, this.b, a(view.getContext()));
    }

    private int a(Context context) {
        if (this.c != -1) {
            return this.c;
        }
        return context.getResources().getDimensionPixelSize(a.f.mtrl_transition_shared_axis_slide_distance);
    }

    private static Animator a(View view, View view2, int i, @ak int i2) {
        if (i == 3) {
            return a(view2, i2, 0.0f);
        }
        if (i == 5) {
            return a(view2, -i2, 0.0f);
        }
        if (i == 48) {
            return b(view2, -i2, 0.0f);
        }
        if (i == 80) {
            return b(view2, i2, 0.0f);
        }
        if (i == 8388611) {
            return a(view2, a(view) ? i2 : -i2, 0.0f);
        }
        if (i == 8388613) {
            return a(view2, a(view) ? -i2 : i2, 0.0f);
        }
        throw new IllegalArgumentException("Invalid slide direction: " + i);
    }

    private static Animator b(View view, View view2, int i, @ak int i2) {
        if (i == 3) {
            return a(view2, 0.0f, -i2);
        }
        if (i == 5) {
            return a(view2, 0.0f, i2);
        }
        if (i == 48) {
            return b(view2, 0.0f, i2);
        }
        if (i == 80) {
            return b(view2, 0.0f, -i2);
        }
        if (i == 8388611) {
            return a(view2, 0.0f, a(view) ? -i2 : i2);
        }
        if (i == 8388613) {
            return a(view2, 0.0f, a(view) ? i2 : -i2);
        }
        throw new IllegalArgumentException("Invalid slide direction: " + i);
    }

    private static Animator a(View view, float f, float f2) {
        return ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, f, f2));
    }

    private static Animator b(View view, float f, float f2) {
        return ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f, f2));
    }

    private static boolean a(View view) {
        return af.p(view) == 1;
    }
}
