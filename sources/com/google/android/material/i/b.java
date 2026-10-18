package com.google.android.material.i;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.TypedValue;
import android.view.View;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ak;
import androidx.annotation.as;
import androidx.annotation.at;
import androidx.annotation.e;
import androidx.annotation.f;
import androidx.annotation.p;
import androidx.annotation.q;
import androidx.appcompat.app.d;
import androidx.core.n.af;
import com.google.android.material.a;
import com.google.android.material.t.j;

/* loaded from: /home/user/work/dex/classes.dex */
public class b extends d.a {

    /* renamed from: a, reason: collision with root package name */
    @f
    private static final int f1322a = a.c.alertDialogStyle;

    @at
    private static final int b = a.n.MaterialAlertDialog_MaterialComponents;

    @f
    private static final int c = a.c.materialAlertDialogTheme;

    @ai
    private Drawable d;

    @p
    @ah
    private final Rect e;

    private static int a(@ah Context context) {
        TypedValue a2 = com.google.android.material.q.b.a(context, c);
        if (a2 == null) {
            return 0;
        }
        return a2.data;
    }

    private static Context b(@ah Context context) {
        int a2 = a(context);
        Context a3 = com.google.android.material.theme.a.a.a(context, null, f1322a, b);
        return a2 == 0 ? a3 : new androidx.appcompat.view.d(a3, a2);
    }

    private static int a(@ah Context context, int i) {
        return i == 0 ? a(context) : i;
    }

    public b(@ah Context context) {
        this(context, 0);
    }

    public b(@ah Context context, int i) {
        super(b(context), a(context, i));
        Context a2 = a();
        Resources.Theme theme = a2.getTheme();
        this.e = c.a(a2, f1322a, b);
        int a3 = com.google.android.material.h.a.a(a2, a.c.colorSurface, getClass().getCanonicalName());
        j jVar = new j(a2, null, f1322a, b);
        jVar.b(a2);
        jVar.g(ColorStateList.valueOf(a3));
        if (Build.VERSION.SDK_INT >= 28) {
            TypedValue typedValue = new TypedValue();
            theme.resolveAttribute(R.attr.dialogCornerRadius, typedValue, true);
            float dimension = typedValue.getDimension(a().getResources().getDisplayMetrics());
            if (typedValue.type == 5 && dimension >= 0.0f) {
                jVar.o(dimension);
            }
        }
        this.d = jVar;
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    public d b() {
        d b2 = super.b();
        Window window = b2.getWindow();
        View decorView = window.getDecorView();
        if (this.d instanceof j) {
            ((j) this.d).r(af.P(decorView));
        }
        window.setBackgroundDrawable(c.a(this.d, this.e));
        decorView.setOnTouchListener(new a(b2, this.e));
        return b2;
    }

    @ai
    public Drawable d() {
        return this.d;
    }

    @ah
    public b e(@ai Drawable drawable) {
        this.d = drawable;
        return this;
    }

    @ah
    public b f(@ak int i) {
        if (Build.VERSION.SDK_INT >= 17 && a().getResources().getConfiguration().getLayoutDirection() == 1) {
            this.e.right = i;
        } else {
            this.e.left = i;
        }
        return this;
    }

    @ah
    public b g(@ak int i) {
        this.e.top = i;
        return this;
    }

    @ah
    public b h(@ak int i) {
        if (Build.VERSION.SDK_INT >= 17 && a().getResources().getConfiguration().getLayoutDirection() == 1) {
            this.e.left = i;
        } else {
            this.e.right = i;
        }
        return this;
    }

    @ah
    public b i(@ak int i) {
        this.e.bottom = i;
        return this;
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public b a(@as int i) {
        return (b) super.a(i);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public b a(@ai CharSequence charSequence) {
        return (b) super.a(charSequence);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public b a(@ai View view) {
        return (b) super.a(view);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public b b(@as int i) {
        return (b) super.b(i);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public b b(@ai CharSequence charSequence) {
        return (b) super.b(charSequence);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public b c(@q int i) {
        return (b) super.c(i);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public b a(@ai Drawable drawable) {
        return (b) super.a(drawable);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public b d(@f int i) {
        return (b) super.d(i);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public b a(@as int i, @ai DialogInterface.OnClickListener onClickListener) {
        return (b) super.a(i, onClickListener);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public b a(@ai CharSequence charSequence, @ai DialogInterface.OnClickListener onClickListener) {
        return (b) super.a(charSequence, onClickListener);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public b b(@ai Drawable drawable) {
        return (b) super.b(drawable);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public b b(@as int i, @ai DialogInterface.OnClickListener onClickListener) {
        return (b) super.b(i, onClickListener);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public b b(@ai CharSequence charSequence, @ai DialogInterface.OnClickListener onClickListener) {
        return (b) super.b(charSequence, onClickListener);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public b c(@ai Drawable drawable) {
        return (b) super.c(drawable);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public b c(@as int i, @ai DialogInterface.OnClickListener onClickListener) {
        return (b) super.c(i, onClickListener);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public b c(@ai CharSequence charSequence, @ai DialogInterface.OnClickListener onClickListener) {
        return (b) super.c(charSequence, onClickListener);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public b d(@ai Drawable drawable) {
        return (b) super.d(drawable);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public b a(boolean z) {
        return (b) super.a(z);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public b a(@ai DialogInterface.OnCancelListener onCancelListener) {
        return (b) super.a(onCancelListener);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public b a(@ai DialogInterface.OnDismissListener onDismissListener) {
        return (b) super.a(onDismissListener);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public b a(@ai DialogInterface.OnKeyListener onKeyListener) {
        return (b) super.a(onKeyListener);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public b d(@e int i, @ai DialogInterface.OnClickListener onClickListener) {
        return (b) super.d(i, onClickListener);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public b a(@ai CharSequence[] charSequenceArr, @ai DialogInterface.OnClickListener onClickListener) {
        return (b) super.a(charSequenceArr, onClickListener);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public b a(@ai ListAdapter listAdapter, @ai DialogInterface.OnClickListener onClickListener) {
        return (b) super.a(listAdapter, onClickListener);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public b a(@ai Cursor cursor, @ai DialogInterface.OnClickListener onClickListener, @ah String str) {
        return (b) super.a(cursor, onClickListener, str);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public b a(@e int i, @ai boolean[] zArr, @ai DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        return (b) super.a(i, zArr, onMultiChoiceClickListener);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public b a(@ai CharSequence[] charSequenceArr, @ai boolean[] zArr, @ai DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        return (b) super.a(charSequenceArr, zArr, onMultiChoiceClickListener);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public b a(@ai Cursor cursor, @ah String str, @ah String str2, @ai DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
        return (b) super.a(cursor, str, str2, onMultiChoiceClickListener);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public b a(@e int i, int i2, @ai DialogInterface.OnClickListener onClickListener) {
        return (b) super.a(i, i2, onClickListener);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public b a(@ai Cursor cursor, int i, @ah String str, @ai DialogInterface.OnClickListener onClickListener) {
        return (b) super.a(cursor, i, str, onClickListener);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public b a(@ai CharSequence[] charSequenceArr, int i, @ai DialogInterface.OnClickListener onClickListener) {
        return (b) super.a(charSequenceArr, i, onClickListener);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public b a(@ai ListAdapter listAdapter, int i, @ai DialogInterface.OnClickListener onClickListener) {
        return (b) super.a(listAdapter, i, onClickListener);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public b a(@ai AdapterView.OnItemSelectedListener onItemSelectedListener) {
        return (b) super.a(onItemSelectedListener);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public b e(int i) {
        return (b) super.e(i);
    }

    @Override // androidx.appcompat.app.d.a
    @ah
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public b b(@ai View view) {
        return (b) super.b(view);
    }
}
