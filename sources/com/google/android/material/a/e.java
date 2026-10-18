package com.google.android.material.a;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Property;
import androidx.annotation.ah;
import androidx.annotation.ai;
import java.util.WeakHashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class e extends Property<Drawable, Integer> {

    /* renamed from: a, reason: collision with root package name */
    public static final Property<Drawable, Integer> f1149a = new e();
    private final WeakHashMap<Drawable, Integer> b;

    private e() {
        super(Integer.class, "drawableAlphaCompat");
        this.b = new WeakHashMap<>();
    }

    @Override // android.util.Property
    @ai
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public Integer get(@ah Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 19) {
            return Integer.valueOf(drawable.getAlpha());
        }
        if (this.b.containsKey(drawable)) {
            return this.b.get(drawable);
        }
        return 255;
    }

    @Override // android.util.Property
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public void set(@ah Drawable drawable, @ah Integer num) {
        if (Build.VERSION.SDK_INT < 19) {
            this.b.put(drawable, num);
        }
        drawable.setAlpha(num.intValue());
    }
}
