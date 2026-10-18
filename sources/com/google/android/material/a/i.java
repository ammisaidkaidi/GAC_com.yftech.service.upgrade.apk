package com.google.android.material.a;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.ah;
import androidx.annotation.ai;

/* loaded from: /home/user/work/dex/classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private long f1153a;
    private long b;

    @ai
    private TimeInterpolator c;
    private int d;
    private int e;

    public i(long j, long j2) {
        this.f1153a = 0L;
        this.b = 300L;
        this.c = null;
        this.d = 0;
        this.e = 1;
        this.f1153a = j;
        this.b = j2;
    }

    public i(long j, long j2, @ah TimeInterpolator timeInterpolator) {
        this.f1153a = 0L;
        this.b = 300L;
        this.c = null;
        this.d = 0;
        this.e = 1;
        this.f1153a = j;
        this.b = j2;
        this.c = timeInterpolator;
    }

    public void a(@ah Animator animator) {
        animator.setStartDelay(a());
        animator.setDuration(b());
        animator.setInterpolator(c());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(d());
            valueAnimator.setRepeatMode(e());
        }
    }

    public long a() {
        return this.f1153a;
    }

    public long b() {
        return this.b;
    }

    @ai
    public TimeInterpolator c() {
        return this.c != null ? this.c : a.b;
    }

    public int d() {
        return this.d;
    }

    public int e() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public static i a(@ah ValueAnimator valueAnimator) {
        i iVar = new i(valueAnimator.getStartDelay(), valueAnimator.getDuration(), b(valueAnimator));
        iVar.d = valueAnimator.getRepeatCount();
        iVar.e = valueAnimator.getRepeatMode();
        return iVar;
    }

    private static TimeInterpolator b(@ah ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
            return a.b;
        }
        if (interpolator instanceof AccelerateInterpolator) {
            return a.c;
        }
        return interpolator instanceof DecelerateInterpolator ? a.d : interpolator;
    }

    public boolean equals(@ai Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        if (a() == iVar.a() && b() == iVar.b() && d() == iVar.d() && e() == iVar.e()) {
            return c().getClass().equals(iVar.c().getClass());
        }
        return false;
    }

    public int hashCode() {
        return (((((((((int) (a() ^ (a() >>> 32))) * 31) + ((int) (b() ^ (b() >>> 32)))) * 31) + c().getClass().hashCode()) * 31) + d()) * 31) + e();
    }

    @ah
    public String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + a() + " duration: " + b() + " interpolator: " + c().getClass() + " repeatCount: " + d() + " repeatMode: " + e() + "}\n";
    }
}
