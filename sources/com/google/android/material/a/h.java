package com.google.android.material.a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.Property;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.au;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    private static final String f1152a = "MotionSpec";
    private final androidx.c.i<String, i> b = new androidx.c.i<>();
    private final androidx.c.i<String, PropertyValuesHolder[]> c = new androidx.c.i<>();

    public boolean a(String str) {
        return this.b.get(str) != null;
    }

    public i b(String str) {
        if (!a(str)) {
            throw new IllegalArgumentException();
        }
        return this.b.get(str);
    }

    public void a(String str, @ai i iVar) {
        this.b.put(str, iVar);
    }

    public boolean c(String str) {
        return this.c.get(str) != null;
    }

    @ah
    public PropertyValuesHolder[] d(String str) {
        if (!c(str)) {
            throw new IllegalArgumentException();
        }
        return a(this.c.get(str));
    }

    public void a(String str, PropertyValuesHolder[] propertyValuesHolderArr) {
        this.c.put(str, propertyValuesHolderArr);
    }

    @ah
    private PropertyValuesHolder[] a(@ah PropertyValuesHolder[] propertyValuesHolderArr) {
        PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[propertyValuesHolderArr.length];
        for (int i = 0; i < propertyValuesHolderArr.length; i++) {
            propertyValuesHolderArr2[i] = propertyValuesHolderArr[i].clone();
        }
        return propertyValuesHolderArr2;
    }

    @ah
    public <T> ObjectAnimator a(@ah String str, @ah T t, @ah Property<T, ?> property) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(t, d(str));
        ofPropertyValuesHolder.setProperty(property);
        b(str).a((Animator) ofPropertyValuesHolder);
        return ofPropertyValuesHolder;
    }

    public long a() {
        int size = this.b.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            i c = this.b.c(i);
            j = Math.max(j, c.a() + c.b());
        }
        return j;
    }

    @ai
    public static h a(@ah Context context, @ah TypedArray typedArray, @au int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return a(context, resourceId);
    }

    @ai
    public static h a(@ah Context context, @androidx.annotation.b int i) {
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (loadAnimator instanceof AnimatorSet) {
                return a(((AnimatorSet) loadAnimator).getChildAnimations());
            }
            if (loadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(loadAnimator);
            return a(arrayList);
        } catch (Exception e) {
            Log.w(f1152a, "Can't load animation resource ID #0x" + Integer.toHexString(i), e);
            return null;
        }
    }

    @ah
    private static h a(@ah List<Animator> list) {
        h hVar = new h();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            a(hVar, list.get(i));
        }
        return hVar;
    }

    private static void a(@ah h hVar, Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            hVar.a(objectAnimator.getPropertyName(), objectAnimator.getValues());
            hVar.a(objectAnimator.getPropertyName(), i.a((ValueAnimator) objectAnimator));
        } else {
            throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof h) {
            return this.b.equals(((h) obj).b);
        }
        return false;
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    @ah
    public String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.b + "}\n";
    }
}
