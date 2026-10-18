package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageButton;
import androidx.annotation.ap;
import androidx.appcompat.a;

/* loaded from: /home/user/work/dex/classes.dex */
public class n extends ImageButton implements androidx.core.n.ad, androidx.core.widget.p {

    /* renamed from: a, reason: collision with root package name */
    private final f f276a;
    private final o b;

    public n(@androidx.annotation.ah Context context) {
        this(context, null);
    }

    public n(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet) {
        this(context, attributeSet, a.b.imageButtonStyle);
    }

    public n(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet, int i) {
        super(ax.a(context), attributeSet, i);
        av.a(this, getContext());
        this.f276a = new f(this);
        this.f276a.a(attributeSet, i);
        this.b = new o(this);
        this.b.a(attributeSet, i);
    }

    @Override // android.widget.ImageView
    public void setImageResource(@androidx.annotation.q int i) {
        this.b.a(i);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(@androidx.annotation.ai Drawable drawable) {
        super.setImageDrawable(drawable);
        if (this.b != null) {
            this.b.d();
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        if (this.b != null) {
            this.b.d();
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(@androidx.annotation.ai Uri uri) {
        super.setImageURI(uri);
        if (this.b != null) {
            this.b.d();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(@androidx.annotation.q int i) {
        super.setBackgroundResource(i);
        if (this.f276a != null) {
            this.f276a.a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f276a != null) {
            this.f276a.a(drawable);
        }
    }

    @Override // androidx.core.n.ad
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintList(@androidx.annotation.ai ColorStateList colorStateList) {
        if (this.f276a != null) {
            this.f276a.a(colorStateList);
        }
    }

    @Override // androidx.core.n.ad
    @androidx.annotation.ai
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportBackgroundTintList() {
        if (this.f276a != null) {
            return this.f276a.a();
        }
        return null;
    }

    @Override // androidx.core.n.ad
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setSupportBackgroundTintMode(@androidx.annotation.ai PorterDuff.Mode mode) {
        if (this.f276a != null) {
            this.f276a.a(mode);
        }
    }

    @Override // androidx.core.n.ad
    @androidx.annotation.ai
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (this.f276a != null) {
            return this.f276a.b();
        }
        return null;
    }

    @Override // androidx.core.widget.p
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setSupportImageTintList(@androidx.annotation.ai ColorStateList colorStateList) {
        if (this.b != null) {
            this.b.a(colorStateList);
        }
    }

    @Override // androidx.core.widget.p
    @androidx.annotation.ai
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public ColorStateList getSupportImageTintList() {
        if (this.b != null) {
            return this.b.b();
        }
        return null;
    }

    @Override // androidx.core.widget.p
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void setSupportImageTintMode(@androidx.annotation.ai PorterDuff.Mode mode) {
        if (this.b != null) {
            this.b.a(mode);
        }
    }

    @Override // androidx.core.widget.p
    @androidx.annotation.ai
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public PorterDuff.Mode getSupportImageTintMode() {
        if (this.b != null) {
            return this.b.c();
        }
        return null;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f276a != null) {
            this.f276a.c();
        }
        if (this.b != null) {
            this.b.d();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.b.a() && super.hasOverlappingRendering();
    }
}
