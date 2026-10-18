package androidx.appcompat.app;

import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Message;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ListAdapter;
import android.widget.ListView;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.as;
import androidx.annotation.at;
import androidx.appcompat.a;
import androidx.appcompat.app.AlertController;

/* loaded from: /home/user/work/dex/classes.dex */
public class d extends i implements DialogInterface {
    static final int b = 0;
    static final int c = 1;

    /* renamed from: a, reason: collision with root package name */
    final AlertController f54a;

    protected d(@ah Context context) {
        this(context, 0);
    }

    protected d(@ah Context context, @at int i) {
        super(context, a(context, i));
        this.f54a = new AlertController(getContext(), this, getWindow());
    }

    protected d(@ah Context context, boolean z, @ai DialogInterface.OnCancelListener onCancelListener) {
        this(context, 0);
        setCancelable(z);
        setOnCancelListener(onCancelListener);
    }

    static int a(@ah Context context, @at int i) {
        if (((i >>> 24) & 255) >= 1) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(a.b.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    public Button a(int i) {
        return this.f54a.e(i);
    }

    public ListView a() {
        return this.f54a.b();
    }

    @Override // androidx.appcompat.app.i, android.app.Dialog
    public void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        this.f54a.a(charSequence);
    }

    public void a(View view) {
        this.f54a.b(view);
    }

    public void a(CharSequence charSequence) {
        this.f54a.b(charSequence);
    }

    public void b(View view) {
        this.f54a.c(view);
    }

    public void a(View view, int i, int i2, int i3, int i4) {
        this.f54a.a(view, i, i2, i3, i4);
    }

    @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    void b(int i) {
        this.f54a.b(i);
    }

    public void a(int i, CharSequence charSequence, Message message) {
        this.f54a.a(i, charSequence, (DialogInterface.OnClickListener) null, message, (Drawable) null);
    }

    public void a(int i, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        this.f54a.a(i, charSequence, onClickListener, (Message) null, (Drawable) null);
    }

    public void a(int i, CharSequence charSequence, Drawable drawable, DialogInterface.OnClickListener onClickListener) {
        this.f54a.a(i, charSequence, onClickListener, (Message) null, drawable);
    }

    public void c(int i) {
        this.f54a.c(i);
    }

    public void a(Drawable drawable) {
        this.f54a.a(drawable);
    }

    public void d(int i) {
        TypedValue typedValue = new TypedValue();
        getContext().getTheme().resolveAttribute(i, typedValue, true);
        this.f54a.c(typedValue.resourceId);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.i, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f54a.a();
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (this.f54a.a(i, keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (this.f54a.b(i, keyEvent)) {
            return true;
        }
        return super.onKeyUp(i, keyEvent);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private final AlertController.a f55a;
        private final int b;

        public a(@ah Context context) {
            this(context, d.a(context, 0));
        }

        public a(@ah Context context, @at int i) {
            this.f55a = new AlertController.a(new ContextThemeWrapper(context, d.a(context, i)));
            this.b = i;
        }

        @ah
        public Context a() {
            return this.f55a.f39a;
        }

        public a a(@as int i) {
            this.f55a.f = this.f55a.f39a.getText(i);
            return this;
        }

        public a a(@ai CharSequence charSequence) {
            this.f55a.f = charSequence;
            return this;
        }

        public a a(@ai View view) {
            this.f55a.g = view;
            return this;
        }

        public a b(@as int i) {
            this.f55a.h = this.f55a.f39a.getText(i);
            return this;
        }

        public a b(@ai CharSequence charSequence) {
            this.f55a.h = charSequence;
            return this;
        }

        public a c(@androidx.annotation.q int i) {
            this.f55a.c = i;
            return this;
        }

        public a a(@ai Drawable drawable) {
            this.f55a.d = drawable;
            return this;
        }

        public a d(@androidx.annotation.f int i) {
            TypedValue typedValue = new TypedValue();
            this.f55a.f39a.getTheme().resolveAttribute(i, typedValue, true);
            this.f55a.c = typedValue.resourceId;
            return this;
        }

        public a a(@as int i, DialogInterface.OnClickListener onClickListener) {
            this.f55a.i = this.f55a.f39a.getText(i);
            this.f55a.k = onClickListener;
            return this;
        }

        public a a(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.f55a.i = charSequence;
            this.f55a.k = onClickListener;
            return this;
        }

        public a b(Drawable drawable) {
            this.f55a.j = drawable;
            return this;
        }

        public a b(@as int i, DialogInterface.OnClickListener onClickListener) {
            this.f55a.l = this.f55a.f39a.getText(i);
            this.f55a.n = onClickListener;
            return this;
        }

        public a b(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.f55a.l = charSequence;
            this.f55a.n = onClickListener;
            return this;
        }

        public a c(Drawable drawable) {
            this.f55a.m = drawable;
            return this;
        }

        public a c(@as int i, DialogInterface.OnClickListener onClickListener) {
            this.f55a.o = this.f55a.f39a.getText(i);
            this.f55a.q = onClickListener;
            return this;
        }

        public a c(CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
            this.f55a.o = charSequence;
            this.f55a.q = onClickListener;
            return this;
        }

        public a d(Drawable drawable) {
            this.f55a.p = drawable;
            return this;
        }

        public a a(boolean z) {
            this.f55a.r = z;
            return this;
        }

        public a a(DialogInterface.OnCancelListener onCancelListener) {
            this.f55a.s = onCancelListener;
            return this;
        }

        public a a(DialogInterface.OnDismissListener onDismissListener) {
            this.f55a.t = onDismissListener;
            return this;
        }

        public a a(DialogInterface.OnKeyListener onKeyListener) {
            this.f55a.u = onKeyListener;
            return this;
        }

        public a d(@androidx.annotation.e int i, DialogInterface.OnClickListener onClickListener) {
            this.f55a.v = this.f55a.f39a.getResources().getTextArray(i);
            this.f55a.x = onClickListener;
            return this;
        }

        public a a(CharSequence[] charSequenceArr, DialogInterface.OnClickListener onClickListener) {
            this.f55a.v = charSequenceArr;
            this.f55a.x = onClickListener;
            return this;
        }

        public a a(ListAdapter listAdapter, DialogInterface.OnClickListener onClickListener) {
            this.f55a.w = listAdapter;
            this.f55a.x = onClickListener;
            return this;
        }

        public a a(Cursor cursor, DialogInterface.OnClickListener onClickListener, String str) {
            this.f55a.K = cursor;
            this.f55a.L = str;
            this.f55a.x = onClickListener;
            return this;
        }

        public a a(@androidx.annotation.e int i, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.f55a.v = this.f55a.f39a.getResources().getTextArray(i);
            this.f55a.J = onMultiChoiceClickListener;
            this.f55a.F = zArr;
            this.f55a.G = true;
            return this;
        }

        public a a(CharSequence[] charSequenceArr, boolean[] zArr, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.f55a.v = charSequenceArr;
            this.f55a.J = onMultiChoiceClickListener;
            this.f55a.F = zArr;
            this.f55a.G = true;
            return this;
        }

        public a a(Cursor cursor, String str, String str2, DialogInterface.OnMultiChoiceClickListener onMultiChoiceClickListener) {
            this.f55a.K = cursor;
            this.f55a.J = onMultiChoiceClickListener;
            this.f55a.M = str;
            this.f55a.L = str2;
            this.f55a.G = true;
            return this;
        }

        public a a(@androidx.annotation.e int i, int i2, DialogInterface.OnClickListener onClickListener) {
            this.f55a.v = this.f55a.f39a.getResources().getTextArray(i);
            this.f55a.x = onClickListener;
            this.f55a.I = i2;
            this.f55a.H = true;
            return this;
        }

        public a a(Cursor cursor, int i, String str, DialogInterface.OnClickListener onClickListener) {
            this.f55a.K = cursor;
            this.f55a.x = onClickListener;
            this.f55a.I = i;
            this.f55a.L = str;
            this.f55a.H = true;
            return this;
        }

        public a a(CharSequence[] charSequenceArr, int i, DialogInterface.OnClickListener onClickListener) {
            this.f55a.v = charSequenceArr;
            this.f55a.x = onClickListener;
            this.f55a.I = i;
            this.f55a.H = true;
            return this;
        }

        public a a(ListAdapter listAdapter, int i, DialogInterface.OnClickListener onClickListener) {
            this.f55a.w = listAdapter;
            this.f55a.x = onClickListener;
            this.f55a.I = i;
            this.f55a.H = true;
            return this;
        }

        public a a(AdapterView.OnItemSelectedListener onItemSelectedListener) {
            this.f55a.O = onItemSelectedListener;
            return this;
        }

        public a e(int i) {
            this.f55a.z = null;
            this.f55a.y = i;
            this.f55a.E = false;
            return this;
        }

        public a b(View view) {
            this.f55a.z = view;
            this.f55a.y = 0;
            this.f55a.E = false;
            return this;
        }

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        @Deprecated
        public a a(View view, int i, int i2, int i3, int i4) {
            this.f55a.z = view;
            this.f55a.y = 0;
            this.f55a.E = true;
            this.f55a.A = i;
            this.f55a.B = i2;
            this.f55a.C = i3;
            this.f55a.D = i4;
            return this;
        }

        @Deprecated
        public a b(boolean z) {
            this.f55a.N = z;
            return this;
        }

        @ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
        public a c(boolean z) {
            this.f55a.Q = z;
            return this;
        }

        @ah
        public d b() {
            d dVar = new d(this.f55a.f39a, this.b);
            this.f55a.a(dVar.f54a);
            dVar.setCancelable(this.f55a.r);
            if (this.f55a.r) {
                dVar.setCanceledOnTouchOutside(true);
            }
            dVar.setOnCancelListener(this.f55a.s);
            dVar.setOnDismissListener(this.f55a.t);
            if (this.f55a.u != null) {
                dVar.setOnKeyListener(this.f55a.u);
            }
            return dVar;
        }

        public d c() {
            d b = b();
            b.show();
            return b;
        }
    }
}
