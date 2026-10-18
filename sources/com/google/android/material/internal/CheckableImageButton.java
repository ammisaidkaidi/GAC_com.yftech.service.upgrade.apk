package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.Checkable;
import androidx.annotation.ah;
import androidx.annotation.ap;
import androidx.appcompat.a;
import androidx.core.n.af;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class CheckableImageButton extends androidx.appcompat.widget.n implements Checkable {

    /* renamed from: a, reason: collision with root package name */
    private static final int[] f1324a = {R.attr.state_checked};
    private boolean b;
    private boolean c;
    private boolean d;

    public CheckableImageButton(Context context) {
        this(context, null);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.b.imageButtonStyle);
    }

    public CheckableImageButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.c = true;
        this.d = true;
        af.a(this, new androidx.core.n.a() { // from class: com.google.android.material.internal.CheckableImageButton.1
            @Override // androidx.core.n.a
            public void d(View view, @ah AccessibilityEvent accessibilityEvent) {
                super.d(view, accessibilityEvent);
                accessibilityEvent.setChecked(CheckableImageButton.this.isChecked());
            }

            @Override // androidx.core.n.a
            public void a(View view, @ah androidx.core.n.a.d dVar) {
                super.a(view, dVar);
                dVar.a(CheckableImageButton.this.a());
                dVar.b(CheckableImageButton.this.isChecked());
            }
        });
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        if (!this.c || this.b == z) {
            return;
        }
        this.b = z;
        refreshDrawableState();
        sendAccessibilityEvent(2048);
    }

    @Override // android.widget.Checkable
    public boolean isChecked() {
        return this.b;
    }

    @Override // android.widget.Checkable
    public void toggle() {
        setChecked(!this.b);
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        if (this.d) {
            super.setPressed(z);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public int[] onCreateDrawableState(int i) {
        if (this.b) {
            return mergeDrawableStates(super.onCreateDrawableState(i + f1324a.length), f1324a);
        }
        return super.onCreateDrawableState(i);
    }

    @Override // android.view.View
    @ah
    protected Parcelable onSaveInstanceState() {
        a aVar = new a(super.onSaveInstanceState());
        aVar.f1326a = this.b;
        return aVar;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof a)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        a aVar = (a) parcelable;
        super.onRestoreInstanceState(aVar.a());
        setChecked(aVar.f1326a);
    }

    public void setCheckable(boolean z) {
        if (this.c != z) {
            this.c = z;
            sendAccessibilityEvent(0);
        }
    }

    public boolean a() {
        return this.c;
    }

    public void setPressable(boolean z) {
        this.d = z;
    }

    public boolean b() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a extends androidx.f.a.a {
        public static final Parcelable.Creator<a> CREATOR = new Parcelable.ClassLoaderCreator<a>() { // from class: com.google.android.material.internal.CheckableImageButton.a.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            @ah
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public a createFromParcel(@ah Parcel parcel, ClassLoader classLoader) {
                return new a(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @ah
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public a createFromParcel(@ah Parcel parcel) {
                return new a(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            @ah
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public a[] newArray(int i) {
                return new a[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        boolean f1326a;

        public a(Parcelable parcelable) {
            super(parcelable);
        }

        public a(@ah Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            a(parcel);
        }

        @Override // androidx.f.a.a, android.os.Parcelable
        public void writeToParcel(@ah Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.f1326a ? 1 : 0);
        }

        private void a(@ah Parcel parcel) {
            this.f1326a = parcel.readInt() == 1;
        }
    }
}
