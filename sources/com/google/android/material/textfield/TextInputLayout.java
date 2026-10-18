package com.google.android.material.textfield;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;
import androidx.annotation.as;
import androidx.annotation.at;
import androidx.annotation.ax;
import androidx.annotation.k;
import androidx.annotation.m;
import androidx.annotation.q;
import androidx.appcompat.widget.aa;
import androidx.appcompat.widget.ba;
import androidx.core.n.af;
import com.google.android.material.a;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.s;
import com.google.android.material.internal.z;
import com.google.android.material.t.j;
import com.google.android.material.t.o;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: /home/user/work/dex/classes.dex */
public class TextInputLayout extends LinearLayout {
    public static final int c = 0;
    public static final int d = 1;
    public static final int e = 2;
    public static final int f = -1;
    public static final int g = 0;
    public static final int h = 1;
    public static final int i = 2;
    public static final int j = 3;
    private static final int l = a.n.Widget_Design_TextInputLayout;
    private static final int m = 167;
    private static final int n = -1;
    private static final String o = "TextInputLayout";
    private CharSequence A;
    private boolean B;
    private TextView C;

    @ai
    private ColorStateList D;
    private int E;

    @ai
    private ColorStateList F;

    @ai
    private ColorStateList G;

    @ai
    private CharSequence H;

    @ah
    private final TextView I;

    @ai
    private CharSequence J;

    @ah
    private final TextView K;
    private boolean L;
    private CharSequence M;
    private boolean N;

    @ai
    private j O;

    @ai
    private j P;

    @ah
    private o Q;
    private final int R;
    private int S;
    private final int T;
    private int U;
    private int V;
    private int W;

    /* renamed from: a, reason: collision with root package name */
    EditText f1433a;
    private View.OnLongClickListener aA;
    private View.OnLongClickListener aB;

    @ah
    private final CheckableImageButton aC;
    private ColorStateList aD;
    private ColorStateList aE;
    private ColorStateList aF;

    @k
    private int aG;

    @k
    private int aH;

    @k
    private int aI;
    private ColorStateList aJ;

    @k
    private int aK;

    @k
    private int aL;

    @k
    private int aM;

    @k
    private int aN;

    @k
    private int aO;
    private boolean aP;
    private boolean aQ;
    private ValueAnimator aR;
    private boolean aS;
    private boolean aT;

    @k
    private int aa;

    @k
    private int ab;
    private final Rect ac;
    private final Rect ad;
    private final RectF ae;
    private Typeface af;

    @ah
    private final CheckableImageButton ag;
    private ColorStateList ah;
    private boolean ai;
    private PorterDuff.Mode aj;
    private boolean ak;

    @ai
    private Drawable al;
    private int am;
    private View.OnLongClickListener an;
    private final LinkedHashSet<d> ao;
    private int ap;
    private final SparseArray<com.google.android.material.textfield.e> aq;

    @ah
    private final CheckableImageButton ar;
    private final LinkedHashSet<e> as;
    private ColorStateList at;
    private boolean au;
    private PorterDuff.Mode av;
    private boolean aw;

    @ai
    private Drawable ax;
    private int ay;
    private Drawable az;
    boolean b;
    final com.google.android.material.internal.a k;

    @ah
    private final FrameLayout p;

    @ah
    private final LinearLayout q;

    @ah
    private final LinearLayout r;

    @ah
    private final FrameLayout s;
    private CharSequence t;
    private final com.google.android.material.textfield.f u;
    private int v;
    private boolean w;

    @ai
    private TextView x;
    private int y;
    private int z;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface b {
    }

    @Retention(RetentionPolicy.SOURCE)
    @ap(a = {ap.a.LIBRARY_GROUP})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface c {
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface d {
        void a(@ah TextInputLayout textInputLayout);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface e {
        void a(@ah TextInputLayout textInputLayout, int i);
    }

    public TextInputLayout(@ah Context context) {
        this(context, null);
    }

    public TextInputLayout(@ah Context context, @ai AttributeSet attributeSet) {
        this(context, attributeSet, a.c.textInputStyle);
    }

    public TextInputLayout(@ah Context context, @ai AttributeSet attributeSet, int i2) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i2, l), attributeSet, i2);
        this.u = new com.google.android.material.textfield.f(this);
        this.ac = new Rect();
        this.ad = new Rect();
        this.ae = new RectF();
        this.ao = new LinkedHashSet<>();
        this.ap = 0;
        this.aq = new SparseArray<>();
        this.as = new LinkedHashSet<>();
        this.k = new com.google.android.material.internal.a(this);
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        this.p = new FrameLayout(context2);
        this.p.setAddStatesFromChildren(true);
        addView(this.p);
        this.q = new LinearLayout(context2);
        this.q.setOrientation(0);
        this.q.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, androidx.core.n.h.b));
        this.p.addView(this.q);
        this.r = new LinearLayout(context2);
        this.r.setOrientation(0);
        this.r.setLayoutParams(new FrameLayout.LayoutParams(-2, -1, androidx.core.n.h.c));
        this.p.addView(this.r);
        this.s = new FrameLayout(context2);
        this.s.setLayoutParams(new FrameLayout.LayoutParams(-2, -1));
        this.k.a(com.google.android.material.a.a.f1146a);
        this.k.b(com.google.android.material.a.a.f1146a);
        this.k.b(com.google.android.material.b.a.b);
        ba b2 = s.b(context2, attributeSet, a.o.TextInputLayout, i2, l, a.o.TextInputLayout_counterTextAppearance, a.o.TextInputLayout_counterOverflowTextAppearance, a.o.TextInputLayout_errorTextAppearance, a.o.TextInputLayout_helperTextTextAppearance, a.o.TextInputLayout_hintTextAppearance);
        this.L = b2.a(a.o.TextInputLayout_hintEnabled, true);
        setHint(b2.d(a.o.TextInputLayout_android_hint));
        this.aQ = b2.a(a.o.TextInputLayout_hintAnimationEnabled, true);
        this.Q = o.a(context2, attributeSet, i2, l).a();
        this.R = context2.getResources().getDimensionPixelOffset(a.f.mtrl_textinput_box_label_cutout_padding);
        this.T = b2.d(a.o.TextInputLayout_boxCollapsedPaddingTop, 0);
        this.V = b2.e(a.o.TextInputLayout_boxStrokeWidth, context2.getResources().getDimensionPixelSize(a.f.mtrl_textinput_box_stroke_width_default));
        this.W = b2.e(a.o.TextInputLayout_boxStrokeWidthFocused, context2.getResources().getDimensionPixelSize(a.f.mtrl_textinput_box_stroke_width_focused));
        this.U = this.V;
        float b3 = b2.b(a.o.TextInputLayout_boxCornerRadiusTopStart, -1.0f);
        float b4 = b2.b(a.o.TextInputLayout_boxCornerRadiusTopEnd, -1.0f);
        float b5 = b2.b(a.o.TextInputLayout_boxCornerRadiusBottomEnd, -1.0f);
        float b6 = b2.b(a.o.TextInputLayout_boxCornerRadiusBottomStart, -1.0f);
        o.a n2 = this.Q.n();
        if (b3 >= 0.0f) {
            n2.b(b3);
        }
        if (b4 >= 0.0f) {
            n2.c(b4);
        }
        if (b5 >= 0.0f) {
            n2.d(b5);
        }
        if (b6 >= 0.0f) {
            n2.e(b6);
        }
        this.Q = n2.a();
        ColorStateList a2 = com.google.android.material.q.c.a(context2, b2, a.o.TextInputLayout_boxBackgroundColor);
        if (a2 != null) {
            this.aK = a2.getDefaultColor();
            this.ab = this.aK;
            if (a2.isStateful()) {
                this.aL = a2.getColorForState(new int[]{-16842910}, -1);
                this.aM = a2.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.aN = a2.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.aM = this.aK;
                ColorStateList a3 = androidx.appcompat.a.a.a.a(context2, a.e.mtrl_filled_background_color);
                this.aL = a3.getColorForState(new int[]{-16842910}, -1);
                this.aN = a3.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.ab = 0;
            this.aK = 0;
            this.aL = 0;
            this.aM = 0;
            this.aN = 0;
        }
        if (b2.j(a.o.TextInputLayout_android_textColorHint)) {
            ColorStateList g2 = b2.g(a.o.TextInputLayout_android_textColorHint);
            this.aF = g2;
            this.aE = g2;
        }
        ColorStateList a4 = com.google.android.material.q.c.a(context2, b2, a.o.TextInputLayout_boxStrokeColor);
        this.aI = b2.b(a.o.TextInputLayout_boxStrokeColor, 0);
        this.aG = androidx.core.b.c.c(context2, a.e.mtrl_textinput_default_box_stroke_color);
        this.aO = androidx.core.b.c.c(context2, a.e.mtrl_textinput_disabled_color);
        this.aH = androidx.core.b.c.c(context2, a.e.mtrl_textinput_hovered_box_stroke_color);
        if (a4 != null) {
            setBoxStrokeColorStateList(a4);
        }
        if (b2.j(a.o.TextInputLayout_boxStrokeErrorColor)) {
            setBoxStrokeErrorColor(com.google.android.material.q.c.a(context2, b2, a.o.TextInputLayout_boxStrokeErrorColor));
        }
        if (b2.g(a.o.TextInputLayout_hintTextAppearance, -1) != -1) {
            setHintTextAppearance(b2.g(a.o.TextInputLayout_hintTextAppearance, 0));
        }
        int g3 = b2.g(a.o.TextInputLayout_errorTextAppearance, 0);
        CharSequence d2 = b2.d(a.o.TextInputLayout_errorContentDescription);
        boolean a5 = b2.a(a.o.TextInputLayout_errorEnabled, false);
        this.aC = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(a.k.design_text_input_end_icon, (ViewGroup) this.r, false);
        this.aC.setVisibility(8);
        if (b2.j(a.o.TextInputLayout_errorIconDrawable)) {
            setErrorIconDrawable(b2.a(a.o.TextInputLayout_errorIconDrawable));
        }
        if (b2.j(a.o.TextInputLayout_errorIconTint)) {
            setErrorIconTintList(com.google.android.material.q.c.a(context2, b2, a.o.TextInputLayout_errorIconTint));
        }
        if (b2.j(a.o.TextInputLayout_errorIconTintMode)) {
            setErrorIconTintMode(z.a(b2.a(a.o.TextInputLayout_errorIconTintMode, -1), (PorterDuff.Mode) null));
        }
        this.aC.setContentDescription(getResources().getText(a.m.error_icon_content_description));
        af.e((View) this.aC, 2);
        this.aC.setClickable(false);
        this.aC.setPressable(false);
        this.aC.setFocusable(false);
        int g4 = b2.g(a.o.TextInputLayout_helperTextTextAppearance, 0);
        boolean a6 = b2.a(a.o.TextInputLayout_helperTextEnabled, false);
        CharSequence d3 = b2.d(a.o.TextInputLayout_helperText);
        int g5 = b2.g(a.o.TextInputLayout_placeholderTextAppearance, 0);
        CharSequence d4 = b2.d(a.o.TextInputLayout_placeholderText);
        int g6 = b2.g(a.o.TextInputLayout_prefixTextAppearance, 0);
        CharSequence d5 = b2.d(a.o.TextInputLayout_prefixText);
        int g7 = b2.g(a.o.TextInputLayout_suffixTextAppearance, 0);
        CharSequence d6 = b2.d(a.o.TextInputLayout_suffixText);
        boolean a7 = b2.a(a.o.TextInputLayout_counterEnabled, false);
        setCounterMaxLength(b2.a(a.o.TextInputLayout_counterMaxLength, -1));
        this.z = b2.g(a.o.TextInputLayout_counterTextAppearance, 0);
        this.y = b2.g(a.o.TextInputLayout_counterOverflowTextAppearance, 0);
        this.ag = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(a.k.design_text_input_start_icon, (ViewGroup) this.q, false);
        this.ag.setVisibility(8);
        setStartIconOnClickListener(null);
        setStartIconOnLongClickListener(null);
        if (b2.j(a.o.TextInputLayout_startIconDrawable)) {
            setStartIconDrawable(b2.a(a.o.TextInputLayout_startIconDrawable));
            if (b2.j(a.o.TextInputLayout_startIconContentDescription)) {
                setStartIconContentDescription(b2.d(a.o.TextInputLayout_startIconContentDescription));
            }
            setStartIconCheckable(b2.a(a.o.TextInputLayout_startIconCheckable, true));
        }
        if (b2.j(a.o.TextInputLayout_startIconTint)) {
            setStartIconTintList(com.google.android.material.q.c.a(context2, b2, a.o.TextInputLayout_startIconTint));
        }
        if (b2.j(a.o.TextInputLayout_startIconTintMode)) {
            setStartIconTintMode(z.a(b2.a(a.o.TextInputLayout_startIconTintMode, -1), (PorterDuff.Mode) null));
        }
        setBoxBackgroundMode(b2.a(a.o.TextInputLayout_boxBackgroundMode, 0));
        this.ar = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(a.k.design_text_input_end_icon, (ViewGroup) this.s, false);
        this.s.addView(this.ar);
        this.ar.setVisibility(8);
        this.aq.append(-1, new com.google.android.material.textfield.b(this));
        this.aq.append(0, new h(this));
        this.aq.append(1, new i(this));
        this.aq.append(2, new com.google.android.material.textfield.a(this));
        this.aq.append(3, new com.google.android.material.textfield.d(this));
        if (b2.j(a.o.TextInputLayout_endIconMode)) {
            setEndIconMode(b2.a(a.o.TextInputLayout_endIconMode, 0));
            if (b2.j(a.o.TextInputLayout_endIconDrawable)) {
                setEndIconDrawable(b2.a(a.o.TextInputLayout_endIconDrawable));
            }
            if (b2.j(a.o.TextInputLayout_endIconContentDescription)) {
                setEndIconContentDescription(b2.d(a.o.TextInputLayout_endIconContentDescription));
            }
            setEndIconCheckable(b2.a(a.o.TextInputLayout_endIconCheckable, true));
        } else if (b2.j(a.o.TextInputLayout_passwordToggleEnabled)) {
            setEndIconMode(b2.a(a.o.TextInputLayout_passwordToggleEnabled, false) ? 1 : 0);
            setEndIconDrawable(b2.a(a.o.TextInputLayout_passwordToggleDrawable));
            setEndIconContentDescription(b2.d(a.o.TextInputLayout_passwordToggleContentDescription));
            if (b2.j(a.o.TextInputLayout_passwordToggleTint)) {
                setEndIconTintList(com.google.android.material.q.c.a(context2, b2, a.o.TextInputLayout_passwordToggleTint));
            }
            if (b2.j(a.o.TextInputLayout_passwordToggleTintMode)) {
                setEndIconTintMode(z.a(b2.a(a.o.TextInputLayout_passwordToggleTintMode, -1), (PorterDuff.Mode) null));
            }
        }
        if (!b2.j(a.o.TextInputLayout_passwordToggleEnabled)) {
            if (b2.j(a.o.TextInputLayout_endIconTint)) {
                setEndIconTintList(com.google.android.material.q.c.a(context2, b2, a.o.TextInputLayout_endIconTint));
            }
            if (b2.j(a.o.TextInputLayout_endIconTintMode)) {
                setEndIconTintMode(z.a(b2.a(a.o.TextInputLayout_endIconTintMode, -1), (PorterDuff.Mode) null));
            }
        }
        this.I = new aa(context2);
        this.I.setId(a.h.textinput_prefix_text);
        this.I.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        af.j((View) this.I, 1);
        this.q.addView(this.ag);
        this.q.addView(this.I);
        this.K = new aa(context2);
        this.K.setId(a.h.textinput_suffix_text);
        this.K.setLayoutParams(new FrameLayout.LayoutParams(-2, -2, 80));
        af.j((View) this.K, 1);
        this.r.addView(this.K);
        this.r.addView(this.aC);
        this.r.addView(this.s);
        setHelperTextEnabled(a6);
        setHelperText(d3);
        setHelperTextTextAppearance(g4);
        setErrorEnabled(a5);
        setErrorTextAppearance(g3);
        setErrorContentDescription(d2);
        setCounterTextAppearance(this.z);
        setCounterOverflowTextAppearance(this.y);
        setPlaceholderText(d4);
        setPlaceholderTextAppearance(g5);
        setPrefixText(d5);
        setPrefixTextAppearance(g6);
        setSuffixText(d6);
        setSuffixTextAppearance(g7);
        if (b2.j(a.o.TextInputLayout_errorTextColor)) {
            setErrorTextColor(b2.g(a.o.TextInputLayout_errorTextColor));
        }
        if (b2.j(a.o.TextInputLayout_helperTextTextColor)) {
            setHelperTextColor(b2.g(a.o.TextInputLayout_helperTextTextColor));
        }
        if (b2.j(a.o.TextInputLayout_hintTextColor)) {
            setHintTextColor(b2.g(a.o.TextInputLayout_hintTextColor));
        }
        if (b2.j(a.o.TextInputLayout_counterTextColor)) {
            setCounterTextColor(b2.g(a.o.TextInputLayout_counterTextColor));
        }
        if (b2.j(a.o.TextInputLayout_counterOverflowTextColor)) {
            setCounterOverflowTextColor(b2.g(a.o.TextInputLayout_counterOverflowTextColor));
        }
        if (b2.j(a.o.TextInputLayout_placeholderTextColor)) {
            setPlaceholderTextColor(b2.g(a.o.TextInputLayout_placeholderTextColor));
        }
        if (b2.j(a.o.TextInputLayout_prefixTextColor)) {
            setPrefixTextColor(b2.g(a.o.TextInputLayout_prefixTextColor));
        }
        if (b2.j(a.o.TextInputLayout_suffixTextColor)) {
            setSuffixTextColor(b2.g(a.o.TextInputLayout_suffixTextColor));
        }
        setCounterEnabled(a7);
        setEnabled(b2.a(a.o.TextInputLayout_android_enabled, true));
        b2.f();
        af.e((View) this, 2);
    }

    @Override // android.view.ViewGroup
    public void addView(@ah View view, int i2, @ah ViewGroup.LayoutParams layoutParams) {
        if (view instanceof EditText) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
            layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
            this.p.addView(view, layoutParams2);
            this.p.setLayoutParams(layoutParams);
            w();
            setEditText((EditText) view);
            return;
        }
        super.addView(view, i2, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public j getBoxBackground() {
        if (this.S == 1 || this.S == 2) {
            return this.O;
        }
        throw new IllegalStateException();
    }

    public void setBoxBackgroundMode(int i2) {
        if (i2 == this.S) {
            return;
        }
        this.S = i2;
        if (this.f1433a != null) {
            s();
        }
    }

    public int getBoxBackgroundMode() {
        return this.S;
    }

    private void s() {
        t();
        u();
        p();
        if (this.S != 0) {
            w();
        }
    }

    private void t() {
        switch (this.S) {
            case 0:
                this.O = null;
                this.P = null;
                return;
            case 1:
                this.O = new j(this.Q);
                this.P = new j();
                return;
            case 2:
                if (this.L && !(this.O instanceof com.google.android.material.textfield.c)) {
                    this.O = new com.google.android.material.textfield.c(this.Q);
                } else {
                    this.O = new j(this.Q);
                }
                this.P = null;
                return;
            default:
                throw new IllegalArgumentException(this.S + " is illegal; only @BoxBackgroundMode constants are supported.");
        }
    }

    private void u() {
        if (v()) {
            af.a(this.f1433a, this.O);
        }
    }

    private boolean v() {
        return (this.f1433a == null || this.O == null || this.f1433a.getBackground() != null || this.S == 0) ? false : true;
    }

    public void setBoxStrokeWidthResource(@androidx.annotation.o int i2) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i2));
    }

    public void setBoxStrokeWidth(int i2) {
        this.V = i2;
        p();
    }

    public int getBoxStrokeWidth() {
        return this.V;
    }

    public void setBoxStrokeWidthFocusedResource(@androidx.annotation.o int i2) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i2));
    }

    public void setBoxStrokeWidthFocused(int i2) {
        this.W = i2;
        p();
    }

    public int getBoxStrokeWidthFocused() {
        return this.W;
    }

    public void setBoxStrokeColor(@k int i2) {
        if (this.aI != i2) {
            this.aI = i2;
            p();
        }
    }

    public int getBoxStrokeColor() {
        return this.aI;
    }

    public void setBoxStrokeColorStateList(@ah ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.aG = colorStateList.getDefaultColor();
            this.aO = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.aH = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.aI = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.aI != colorStateList.getDefaultColor()) {
            this.aI = colorStateList.getDefaultColor();
        }
        p();
    }

    public void setBoxStrokeErrorColor(@ai ColorStateList colorStateList) {
        if (this.aJ != colorStateList) {
            this.aJ = colorStateList;
            p();
        }
    }

    @ai
    public ColorStateList getBoxStrokeErrorColor() {
        return this.aJ;
    }

    public void setBoxBackgroundColorResource(@m int i2) {
        setBoxBackgroundColor(androidx.core.b.c.c(getContext(), i2));
    }

    public void setBoxBackgroundColor(@k int i2) {
        if (this.ab != i2) {
            this.ab = i2;
            this.aK = i2;
            this.aM = i2;
            this.aN = i2;
            L();
        }
    }

    public void setBoxBackgroundColorStateList(@ah ColorStateList colorStateList) {
        this.aK = colorStateList.getDefaultColor();
        this.ab = this.aK;
        this.aL = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.aM = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.aN = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        L();
    }

    public int getBoxBackgroundColor() {
        return this.ab;
    }

    public void a(@androidx.annotation.o int i2, @androidx.annotation.o int i3, @androidx.annotation.o int i4, @androidx.annotation.o int i5) {
        a(getContext().getResources().getDimension(i2), getContext().getResources().getDimension(i3), getContext().getResources().getDimension(i5), getContext().getResources().getDimension(i4));
    }

    public void a(float f2, float f3, float f4, float f5) {
        if (this.O != null && this.O.as() == f2 && this.O.at() == f3 && this.O.av() == f5 && this.O.au() == f4) {
            return;
        }
        this.Q = this.Q.n().b(f2).c(f3).d(f5).e(f4).a();
        L();
    }

    public float getBoxCornerRadiusTopStart() {
        return this.O.as();
    }

    public float getBoxCornerRadiusTopEnd() {
        return this.O.at();
    }

    public float getBoxCornerRadiusBottomEnd() {
        return this.O.au();
    }

    public float getBoxCornerRadiusBottomStart() {
        return this.O.av();
    }

    public void setTypeface(@ai Typeface typeface) {
        if (typeface != this.af) {
            this.af = typeface;
            this.k.c(typeface);
            this.u.a(typeface);
            if (this.x != null) {
                this.x.setTypeface(typeface);
            }
        }
    }

    @ai
    public Typeface getTypeface() {
        return this.af;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchProvideAutofillStructure(@ah ViewStructure viewStructure, int i2) {
        if (this.t == null || this.f1433a == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i2);
            return;
        }
        boolean z = this.N;
        this.N = false;
        CharSequence hint = this.f1433a.getHint();
        this.f1433a.setHint(this.t);
        try {
            super.dispatchProvideAutofillStructure(viewStructure, i2);
        } finally {
            this.f1433a.setHint(hint);
            this.N = z;
        }
    }

    private void setEditText(EditText editText) {
        if (this.f1433a != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (this.ap != 3 && !(editText instanceof TextInputEditText)) {
            Log.i(o, "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.f1433a = editText;
        s();
        setTextInputAccessibilityDelegate(new a(this));
        this.k.c(this.f1433a.getTypeface());
        this.k.a(this.f1433a.getTextSize());
        int gravity = this.f1433a.getGravity();
        this.k.b((gravity & (-113)) | 48);
        this.k.a(gravity);
        this.f1433a.addTextChangedListener(new TextWatcher() { // from class: com.google.android.material.textfield.TextInputLayout.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(@ah Editable editable) {
                TextInputLayout.this.a(!TextInputLayout.this.aT);
                if (TextInputLayout.this.b) {
                    TextInputLayout.this.a(editable.length());
                }
                if (TextInputLayout.this.B) {
                    TextInputLayout.this.b(editable.length());
                }
            }
        });
        if (this.aE == null) {
            this.aE = this.f1433a.getHintTextColors();
        }
        if (this.L) {
            if (TextUtils.isEmpty(this.M)) {
                this.t = this.f1433a.getHint();
                setHint(this.t);
                this.f1433a.setHint((CharSequence) null);
            }
            this.N = true;
        }
        if (this.x != null) {
            a(this.f1433a.getText().length());
        }
        f();
        this.u.d();
        this.q.bringToFront();
        this.r.bringToFront();
        this.s.bringToFront();
        this.aC.bringToFront();
        R();
        E();
        G();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        a(false, true);
    }

    private void w() {
        if (this.S != 1) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.p.getLayoutParams();
            int I = I();
            if (I != layoutParams.topMargin) {
                layoutParams.topMargin = I;
                this.p.requestLayout();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        if (this.f1433a != null) {
            return this.f1433a.getBaseline() + getPaddingTop() + I();
        }
        return super.getBaseline();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        a(z, false);
    }

    private void a(boolean z, boolean z2) {
        boolean isEnabled = isEnabled();
        boolean z3 = (this.f1433a == null || TextUtils.isEmpty(this.f1433a.getText())) ? false : true;
        boolean z4 = this.f1433a != null && this.f1433a.hasFocus();
        boolean h2 = this.u.h();
        if (this.aE != null) {
            this.k.a(this.aE);
            this.k.b(this.aE);
        }
        if (!isEnabled) {
            int colorForState = this.aE != null ? this.aE.getColorForState(new int[]{-16842910}, this.aO) : this.aO;
            this.k.a(ColorStateList.valueOf(colorForState));
            this.k.b(ColorStateList.valueOf(colorForState));
        } else if (h2) {
            this.k.a(this.u.n());
        } else if (this.w && this.x != null) {
            this.k.a(this.x.getTextColors());
        } else if (z4 && this.aF != null) {
            this.k.a(this.aF);
        }
        if (z3 || (isEnabled() && (z4 || h2))) {
            if (z2 || this.aP) {
                d(z);
                return;
            }
            return;
        }
        if (z2 || !this.aP) {
            e(z);
        }
    }

    @ai
    public EditText getEditText() {
        return this.f1433a;
    }

    public void setHint(@ai CharSequence charSequence) {
        if (this.L) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.M)) {
            return;
        }
        this.M = charSequence;
        this.k.a(charSequence);
        if (this.aP) {
            return;
        }
        Z();
    }

    @ai
    public CharSequence getHint() {
        if (this.L) {
            return this.M;
        }
        return null;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.L) {
            this.L = z;
            if (!this.L) {
                this.N = false;
                if (!TextUtils.isEmpty(this.M) && TextUtils.isEmpty(this.f1433a.getHint())) {
                    this.f1433a.setHint(this.M);
                }
                setHintInternal(null);
            } else {
                CharSequence hint = this.f1433a.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.M)) {
                        setHint(hint);
                    }
                    this.f1433a.setHint((CharSequence) null);
                }
                this.N = true;
            }
            if (this.f1433a != null) {
                w();
            }
        }
    }

    public boolean a() {
        return this.L;
    }

    @ap(a = {ap.a.LIBRARY_GROUP})
    public boolean b() {
        return this.N;
    }

    public void setHintTextAppearance(@at int i2) {
        this.k.c(i2);
        this.aF = this.k.r();
        if (this.f1433a != null) {
            a(false);
            w();
        }
    }

    public void setHintTextColor(@ai ColorStateList colorStateList) {
        if (this.aF != colorStateList) {
            if (this.aE == null) {
                this.k.a(colorStateList);
            }
            this.aF = colorStateList;
            if (this.f1433a != null) {
                a(false);
            }
        }
    }

    @ai
    public ColorStateList getHintTextColor() {
        return this.aF;
    }

    public void setDefaultHintTextColor(@ai ColorStateList colorStateList) {
        this.aE = colorStateList;
        this.aF = colorStateList;
        if (this.f1433a != null) {
            a(false);
        }
    }

    @ai
    public ColorStateList getDefaultHintTextColor() {
        return this.aE;
    }

    public void setErrorEnabled(boolean z) {
        this.u.a(z);
    }

    public void setErrorTextAppearance(@at int i2) {
        this.u.b(i2);
    }

    public void setErrorTextColor(@ai ColorStateList colorStateList) {
        this.u.a(colorStateList);
    }

    @k
    public int getErrorCurrentTextColors() {
        return this.u.m();
    }

    public void setHelperTextTextAppearance(@at int i2) {
        this.u.c(i2);
    }

    public void setHelperTextColor(@ai ColorStateList colorStateList) {
        this.u.b(colorStateList);
    }

    public boolean c() {
        return this.u.e();
    }

    public void setHelperTextEnabled(boolean z) {
        this.u.b(z);
    }

    public void setHelperText(@ai CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            if (d()) {
                setHelperTextEnabled(false);
            }
        } else {
            if (!d()) {
                setHelperTextEnabled(true);
            }
            this.u.a(charSequence);
        }
    }

    public boolean d() {
        return this.u.f();
    }

    @k
    public int getHelperTextCurrentTextColor() {
        return this.u.p();
    }

    public void setErrorContentDescription(@ai CharSequence charSequence) {
        this.u.c(charSequence);
    }

    @ai
    public CharSequence getErrorContentDescription() {
        return this.u.o();
    }

    public void setError(@ai CharSequence charSequence) {
        if (!this.u.e()) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (!TextUtils.isEmpty(charSequence)) {
            this.u.b(charSequence);
        } else {
            this.u.b();
        }
    }

    public void setErrorIconDrawable(@q int i2) {
        setErrorIconDrawable(i2 != 0 ? androidx.appcompat.a.a.a.b(getContext(), i2) : null);
    }

    public void setErrorIconDrawable(@ai Drawable drawable) {
        this.aC.setImageDrawable(drawable);
        setErrorIconVisible(drawable != null && this.u.e());
    }

    @ai
    public Drawable getErrorIconDrawable() {
        return this.aC.getDrawable();
    }

    public void setErrorIconTintList(@ai ColorStateList colorStateList) {
        this.aD = colorStateList;
        Drawable drawable = this.aC.getDrawable();
        if (drawable != null) {
            drawable = androidx.core.graphics.drawable.a.g(drawable).mutate();
            androidx.core.graphics.drawable.a.a(drawable, colorStateList);
        }
        if (this.aC.getDrawable() != drawable) {
            this.aC.setImageDrawable(drawable);
        }
    }

    public void setErrorIconTintMode(@ai PorterDuff.Mode mode) {
        Drawable drawable = this.aC.getDrawable();
        if (drawable != null) {
            drawable = androidx.core.graphics.drawable.a.g(drawable).mutate();
            androidx.core.graphics.drawable.a.a(drawable, mode);
        }
        if (this.aC.getDrawable() != drawable) {
            this.aC.setImageDrawable(drawable);
        }
    }

    public void setCounterEnabled(boolean z) {
        if (this.b != z) {
            if (z) {
                this.x = new aa(getContext());
                this.x.setId(a.h.textinput_counter);
                if (this.af != null) {
                    this.x.setTypeface(this.af);
                }
                this.x.setMaxLines(1);
                this.u.a(this.x, 2);
                androidx.core.n.m.a((ViewGroup.MarginLayoutParams) this.x.getLayoutParams(), getResources().getDimensionPixelOffset(a.f.mtrl_textinput_counter_margin_start));
                H();
                x();
            } else {
                this.u.b(this.x, 2);
                this.x = null;
            }
            this.b = z;
        }
    }

    public void setCounterTextAppearance(int i2) {
        if (this.z != i2) {
            this.z = i2;
            H();
        }
    }

    public void setCounterTextColor(@ai ColorStateList colorStateList) {
        if (this.F != colorStateList) {
            this.F = colorStateList;
            H();
        }
    }

    @ai
    public ColorStateList getCounterTextColor() {
        return this.F;
    }

    public void setCounterOverflowTextAppearance(int i2) {
        if (this.y != i2) {
            this.y = i2;
            H();
        }
    }

    public void setCounterOverflowTextColor(@ai ColorStateList colorStateList) {
        if (this.G != colorStateList) {
            this.G = colorStateList;
            H();
        }
    }

    @ai
    public ColorStateList getCounterOverflowTextColor() {
        return this.F;
    }

    public boolean e() {
        return this.b;
    }

    public void setCounterMaxLength(int i2) {
        if (this.v != i2) {
            if (i2 > 0) {
                this.v = i2;
            } else {
                this.v = -1;
            }
            if (this.b) {
                x();
            }
        }
    }

    private void x() {
        if (this.x != null) {
            a(this.f1433a == null ? 0 : this.f1433a.getText().length());
        }
    }

    void a(int i2) {
        boolean z = this.w;
        if (this.v == -1) {
            this.x.setText(String.valueOf(i2));
            this.x.setContentDescription(null);
            this.w = false;
        } else {
            this.w = i2 > this.v;
            a(getContext(), this.x, i2, this.v, this.w);
            if (z != this.w) {
                H();
            }
            this.x.setText(androidx.core.l.a.a().b(getContext().getString(a.m.character_counter_pattern, Integer.valueOf(i2), Integer.valueOf(this.v))));
        }
        if (this.f1433a == null || z == this.w) {
            return;
        }
        a(false);
        p();
        f();
    }

    private static void a(@ah Context context, @ah TextView textView, int i2, int i3, boolean z) {
        textView.setContentDescription(context.getString(z ? a.m.character_counter_overflowed_content_description : a.m.character_counter_content_description, Integer.valueOf(i2), Integer.valueOf(i3)));
    }

    public void setPlaceholderText(@ai CharSequence charSequence) {
        if (this.B && TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.B) {
                setPlaceholderTextEnabled(true);
            }
            this.A = charSequence;
        }
        y();
    }

    @ai
    public CharSequence getPlaceholderText() {
        if (this.B) {
            return this.A;
        }
        return null;
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.B == z) {
            return;
        }
        if (z) {
            this.C = new aa(getContext());
            this.C.setId(a.h.textinput_placeholder);
            af.j((View) this.C, 1);
            setPlaceholderTextAppearance(this.E);
            setPlaceholderTextColor(this.D);
            B();
        } else {
            C();
            this.C = null;
        }
        this.B = z;
    }

    private void y() {
        b(this.f1433a == null ? 0 : this.f1433a.getText().length());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i2) {
        if (i2 == 0 && !this.aP) {
            z();
        } else {
            A();
        }
    }

    private void z() {
        if (this.C == null || !this.B) {
            return;
        }
        this.C.setText(this.A);
        this.C.setVisibility(0);
        this.C.bringToFront();
    }

    private void A() {
        if (this.C == null || !this.B) {
            return;
        }
        this.C.setText((CharSequence) null);
        this.C.setVisibility(4);
    }

    private void B() {
        if (this.C != null) {
            this.p.addView(this.C);
            this.C.setVisibility(0);
        }
    }

    private void C() {
        if (this.C != null) {
            this.C.setVisibility(8);
        }
    }

    public void setPlaceholderTextColor(@ai ColorStateList colorStateList) {
        if (this.D != colorStateList) {
            this.D = colorStateList;
            if (this.C == null || colorStateList == null) {
                return;
            }
            this.C.setTextColor(colorStateList);
        }
    }

    @ai
    public ColorStateList getPlaceholderTextColor() {
        return this.D;
    }

    public void setPlaceholderTextAppearance(@at int i2) {
        this.E = i2;
        if (this.C != null) {
            androidx.core.widget.m.a(this.C, i2);
        }
    }

    @at
    public int getPlaceholderTextAppearance() {
        return this.E;
    }

    public void setPrefixText(@ai CharSequence charSequence) {
        this.H = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.I.setText(charSequence);
        D();
    }

    @ai
    public CharSequence getPrefixText() {
        return this.H;
    }

    @ah
    public TextView getPrefixTextView() {
        return this.I;
    }

    private void D() {
        this.I.setVisibility((this.H == null || q()) ? 8 : 0);
        V();
    }

    public void setPrefixTextColor(@ah ColorStateList colorStateList) {
        this.I.setTextColor(colorStateList);
    }

    @ai
    public ColorStateList getPrefixTextColor() {
        return this.I.getTextColors();
    }

    public void setPrefixTextAppearance(@at int i2) {
        androidx.core.widget.m.a(this.I, i2);
    }

    private void E() {
        if (this.f1433a == null) {
            return;
        }
        af.b(this.I, h() ? 0 : af.w(this.f1433a), this.f1433a.getCompoundPaddingTop(), 0, this.f1433a.getCompoundPaddingBottom());
    }

    public void setSuffixText(@ai CharSequence charSequence) {
        this.J = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.K.setText(charSequence);
        F();
    }

    @ai
    public CharSequence getSuffixText() {
        return this.J;
    }

    @ah
    public TextView getSuffixTextView() {
        return this.K;
    }

    private void F() {
        int visibility = this.K.getVisibility();
        boolean z = (this.J == null || q()) ? false : true;
        this.K.setVisibility(z ? 0 : 8);
        if (visibility != this.K.getVisibility()) {
            getEndIconDelegate().a(z);
        }
        V();
    }

    public void setSuffixTextColor(@ah ColorStateList colorStateList) {
        this.K.setTextColor(colorStateList);
    }

    @ai
    public ColorStateList getSuffixTextColor() {
        return this.K.getTextColors();
    }

    public void setSuffixTextAppearance(@at int i2) {
        androidx.core.widget.m.a(this.K, i2);
    }

    private void G() {
        if (this.f1433a == null) {
            return;
        }
        af.b(this.K, 0, this.f1433a.getPaddingTop(), (j() || ab()) ? 0 : af.x(this.f1433a), this.f1433a.getPaddingBottom());
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        a(this, z);
        super.setEnabled(z);
    }

    private static void a(@ah ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                a((ViewGroup) childAt, z);
            }
        }
    }

    public int getCounterMaxLength() {
        return this.v;
    }

    @ai
    CharSequence getCounterOverflowDescription() {
        if (this.b && this.w && this.x != null) {
            return this.x.getContentDescription();
        }
        return null;
    }

    private void H() {
        if (this.x != null) {
            a(this.x, this.w ? this.y : this.z);
            if (!this.w && this.F != null) {
                this.x.setTextColor(this.F);
            }
            if (!this.w || this.G == null) {
                return;
            }
            this.x.setTextColor(this.G);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0015, code lost:
    
        if (r3.getTextColors().getDefaultColor() == (-65281)) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(@ah TextView textView, @at int i2) {
        boolean z = true;
        try {
            androidx.core.widget.m.a(textView, i2);
            if (Build.VERSION.SDK_INT >= 23) {
            }
            z = false;
        } catch (Exception unused) {
        }
        if (z) {
            androidx.core.widget.m.a(textView, a.n.TextAppearance_AppCompat_Caption);
            textView.setTextColor(androidx.core.b.c.c(getContext(), a.e.design_error));
        }
    }

    private int I() {
        if (!this.L) {
            return 0;
        }
        switch (this.S) {
            case 0:
            case 1:
                return (int) this.k.c();
            case 2:
                return (int) (this.k.c() / 2.0f);
            default:
                return 0;
        }
    }

    @ah
    private Rect a(@ah Rect rect) {
        if (this.f1433a == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.ad;
        boolean z = af.p(this) == 1;
        rect2.bottom = rect.bottom;
        switch (this.S) {
            case 1:
                rect2.left = a(rect.left, z);
                rect2.top = rect.top + this.T;
                rect2.right = b(rect.right, z);
                return rect2;
            case 2:
                rect2.left = rect.left + this.f1433a.getPaddingLeft();
                rect2.top = rect.top - I();
                rect2.right = rect.right - this.f1433a.getPaddingRight();
                return rect2;
            default:
                rect2.left = a(rect.left, z);
                rect2.top = getPaddingTop();
                rect2.right = b(rect.right, z);
                return rect2;
        }
    }

    private int a(int i2, boolean z) {
        int compoundPaddingLeft = i2 + this.f1433a.getCompoundPaddingLeft();
        return (this.H == null || z) ? compoundPaddingLeft : (compoundPaddingLeft - this.I.getMeasuredWidth()) + this.I.getPaddingLeft();
    }

    private int b(int i2, boolean z) {
        int compoundPaddingRight = i2 - this.f1433a.getCompoundPaddingRight();
        return (this.H == null || !z) ? compoundPaddingRight : compoundPaddingRight + (this.I.getMeasuredWidth() - this.I.getPaddingRight());
    }

    @ah
    private Rect b(@ah Rect rect) {
        if (this.f1433a == null) {
            throw new IllegalStateException();
        }
        Rect rect2 = this.ad;
        float b2 = this.k.b();
        rect2.left = rect.left + this.f1433a.getCompoundPaddingLeft();
        rect2.top = a(rect, b2);
        rect2.right = rect.right - this.f1433a.getCompoundPaddingRight();
        rect2.bottom = a(rect, rect2, b2);
        return rect2;
    }

    private int a(@ah Rect rect, float f2) {
        if (J()) {
            return (int) (rect.centerY() - (f2 / 2.0f));
        }
        return rect.top + this.f1433a.getCompoundPaddingTop();
    }

    private int a(@ah Rect rect, @ah Rect rect2, float f2) {
        if (J()) {
            return (int) (rect2.top + f2);
        }
        return rect.bottom - this.f1433a.getCompoundPaddingBottom();
    }

    private boolean J() {
        return this.S == 1 && (Build.VERSION.SDK_INT < 16 || this.f1433a.getMinLines() <= 1);
    }

    private int K() {
        return this.S == 1 ? com.google.android.material.h.a.a(com.google.android.material.h.a.a(this, a.c.colorSurface, 0), this.ab) : this.ab;
    }

    private void L() {
        if (this.O == null) {
            return;
        }
        this.O.setShapeAppearanceModel(this.Q);
        if (N()) {
            this.O.a(this.U, this.aa);
        }
        this.ab = K();
        this.O.g(ColorStateList.valueOf(this.ab));
        if (this.ap == 3) {
            this.f1433a.getBackground().invalidateSelf();
        }
        M();
        invalidate();
    }

    private void M() {
        if (this.P == null) {
            return;
        }
        if (O()) {
            this.P.g(ColorStateList.valueOf(this.aa));
        }
        invalidate();
    }

    private boolean N() {
        return this.S == 2 && O();
    }

    private boolean O() {
        return this.U > -1 && this.aa != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        Drawable background;
        if (this.f1433a == null || this.S != 0 || (background = this.f1433a.getBackground()) == null) {
            return;
        }
        if (androidx.appcompat.widget.af.c(background)) {
            background = background.mutate();
        }
        if (this.u.h()) {
            background.setColorFilter(androidx.appcompat.widget.k.a(this.u.m(), PorterDuff.Mode.SRC_IN));
        } else if (this.w && this.x != null) {
            background.setColorFilter(androidx.appcompat.widget.k.a(this.x.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
        } else {
            androidx.core.graphics.drawable.a.f(background);
            this.f1433a.refreshDrawableState();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class f extends androidx.f.a.a {
        public static final Parcelable.Creator<f> CREATOR = new Parcelable.ClassLoaderCreator<f>() { // from class: com.google.android.material.textfield.TextInputLayout.f.1
            @Override // android.os.Parcelable.ClassLoaderCreator
            @ah
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public f createFromParcel(@ah Parcel parcel, ClassLoader classLoader) {
                return new f(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            @ai
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public f createFromParcel(@ah Parcel parcel) {
                return new f(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            @ah
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public f[] newArray(int i) {
                return new f[i];
            }
        };

        /* renamed from: a, reason: collision with root package name */
        @ai
        CharSequence f1439a;
        boolean b;

        f(Parcelable parcelable) {
            super(parcelable);
        }

        f(@ah Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f1439a = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.b = parcel.readInt() == 1;
        }

        @Override // androidx.f.a.a, android.os.Parcelable
        public void writeToParcel(@ah Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.f1439a, parcel, i);
            parcel.writeInt(this.b ? 1 : 0);
        }

        @ah
        public String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f1439a) + "}";
        }
    }

    @Override // android.view.View
    @ai
    public Parcelable onSaveInstanceState() {
        f fVar = new f(super.onSaveInstanceState());
        if (this.u.h()) {
            fVar.f1439a = getError();
        }
        fVar.b = T() && this.ar.isChecked();
        return fVar;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(@ai Parcelable parcelable) {
        if (!(parcelable instanceof f)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        f fVar = (f) parcelable;
        super.onRestoreInstanceState(fVar.a());
        setError(fVar.f1439a);
        if (fVar.b) {
            this.ar.post(new Runnable() { // from class: com.google.android.material.textfield.TextInputLayout.2
                @Override // java.lang.Runnable
                public void run() {
                    TextInputLayout.this.ar.performClick();
                    TextInputLayout.this.ar.jumpDrawablesToCurrentState();
                }
            });
        }
        requestLayout();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(@ah SparseArray<Parcelable> sparseArray) {
        this.aT = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.aT = false;
    }

    @ai
    public CharSequence getError() {
        if (this.u.e()) {
            return this.u.k();
        }
        return null;
    }

    @ai
    public CharSequence getHelperText() {
        if (this.u.f()) {
            return this.u.l();
        }
        return null;
    }

    public boolean g() {
        return this.aQ;
    }

    public void setHintAnimationEnabled(boolean z) {
        this.aQ = z;
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i2, int i3) {
        super.onMeasure(i2, i3);
        boolean P = P();
        boolean V = V();
        if (P || V) {
            this.f1433a.post(new Runnable() { // from class: com.google.android.material.textfield.TextInputLayout.3
                @Override // java.lang.Runnable
                public void run() {
                    TextInputLayout.this.f1433a.requestLayout();
                }
            });
        }
        Q();
        E();
        G();
    }

    private boolean P() {
        int max;
        if (this.f1433a == null || this.f1433a.getMeasuredHeight() >= (max = Math.max(this.r.getMeasuredHeight(), this.q.getMeasuredHeight()))) {
            return false;
        }
        this.f1433a.setMinimumHeight(max);
        return true;
    }

    private void Q() {
        if (this.C == null || this.f1433a == null) {
            return;
        }
        this.C.setGravity(this.f1433a.getGravity());
        this.C.setPadding(this.f1433a.getCompoundPaddingLeft(), this.f1433a.getCompoundPaddingTop(), this.f1433a.getCompoundPaddingRight(), this.f1433a.getCompoundPaddingBottom());
    }

    public void setStartIconDrawable(@q int i2) {
        setStartIconDrawable(i2 != 0 ? androidx.appcompat.a.a.a.b(getContext(), i2) : null);
    }

    public void setStartIconDrawable(@ai Drawable drawable) {
        this.ag.setImageDrawable(drawable);
        if (drawable != null) {
            setStartIconVisible(true);
            S();
        } else {
            setStartIconVisible(false);
            setStartIconOnClickListener(null);
            setStartIconOnLongClickListener(null);
            setStartIconContentDescription((CharSequence) null);
        }
    }

    @ai
    public Drawable getStartIconDrawable() {
        return this.ag.getDrawable();
    }

    public void setStartIconOnClickListener(@ai View.OnClickListener onClickListener) {
        a(this.ag, onClickListener, this.an);
    }

    public void setStartIconOnLongClickListener(@ai View.OnLongClickListener onLongClickListener) {
        this.an = onLongClickListener;
        a(this.ag, onLongClickListener);
    }

    public void setStartIconVisible(boolean z) {
        if (h() != z) {
            this.ag.setVisibility(z ? 0 : 8);
            E();
            V();
        }
    }

    public boolean h() {
        return this.ag.getVisibility() == 0;
    }

    public void setStartIconCheckable(boolean z) {
        this.ag.setCheckable(z);
    }

    public boolean i() {
        return this.ag.a();
    }

    public void setStartIconContentDescription(@as int i2) {
        setStartIconContentDescription(i2 != 0 ? getResources().getText(i2) : null);
    }

    public void setStartIconContentDescription(@ai CharSequence charSequence) {
        if (getStartIconContentDescription() != charSequence) {
            this.ag.setContentDescription(charSequence);
        }
    }

    @ai
    public CharSequence getStartIconContentDescription() {
        return this.ag.getContentDescription();
    }

    public void setStartIconTintList(@ai ColorStateList colorStateList) {
        if (this.ah != colorStateList) {
            this.ah = colorStateList;
            this.ai = true;
            S();
        }
    }

    public void setStartIconTintMode(@ai PorterDuff.Mode mode) {
        if (this.aj != mode) {
            this.aj = mode;
            this.ak = true;
            S();
        }
    }

    public void setEndIconMode(int i2) {
        int i3 = this.ap;
        this.ap = i2;
        c(i3);
        setEndIconVisible(i2 != 0);
        if (getEndIconDelegate().a(this.S)) {
            getEndIconDelegate().a();
            U();
            return;
        }
        throw new IllegalStateException("The current box background mode " + this.S + " is not supported by the end icon mode " + i2);
    }

    public int getEndIconMode() {
        return this.ap;
    }

    public void setEndIconOnClickListener(@ai View.OnClickListener onClickListener) {
        a(this.ar, onClickListener, this.aA);
    }

    public void setErrorIconOnClickListener(@ai View.OnClickListener onClickListener) {
        a(this.aC, onClickListener, this.aB);
    }

    public void setEndIconOnLongClickListener(@ai View.OnLongClickListener onLongClickListener) {
        this.aA = onLongClickListener;
        a(this.ar, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(@ai View.OnLongClickListener onLongClickListener) {
        this.aB = onLongClickListener;
        a(this.aC, onLongClickListener);
    }

    public void setEndIconVisible(boolean z) {
        if (j() != z) {
            this.ar.setVisibility(z ? 0 : 8);
            G();
            V();
        }
    }

    public boolean j() {
        return this.s.getVisibility() == 0 && this.ar.getVisibility() == 0;
    }

    public void setEndIconActivated(boolean z) {
        this.ar.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.ar.setCheckable(z);
    }

    public boolean k() {
        return this.ar.a();
    }

    public void setEndIconDrawable(@q int i2) {
        setEndIconDrawable(i2 != 0 ? androidx.appcompat.a.a.a.b(getContext(), i2) : null);
    }

    public void setEndIconDrawable(@ai Drawable drawable) {
        this.ar.setImageDrawable(drawable);
    }

    @ai
    public Drawable getEndIconDrawable() {
        return this.ar.getDrawable();
    }

    public void setEndIconContentDescription(@as int i2) {
        setEndIconContentDescription(i2 != 0 ? getResources().getText(i2) : null);
    }

    public void setEndIconContentDescription(@ai CharSequence charSequence) {
        if (getEndIconContentDescription() != charSequence) {
            this.ar.setContentDescription(charSequence);
        }
    }

    @ai
    public CharSequence getEndIconContentDescription() {
        return this.ar.getContentDescription();
    }

    public void setEndIconTintList(@ai ColorStateList colorStateList) {
        if (this.at != colorStateList) {
            this.at = colorStateList;
            this.au = true;
            U();
        }
    }

    public void setEndIconTintMode(@ai PorterDuff.Mode mode) {
        if (this.av != mode) {
            this.av = mode;
            this.aw = true;
            U();
        }
    }

    public void a(@ah e eVar) {
        this.as.add(eVar);
    }

    public void b(@ah e eVar) {
        this.as.remove(eVar);
    }

    public void l() {
        this.as.clear();
    }

    public void a(@ah d dVar) {
        this.ao.add(dVar);
        if (this.f1433a != null) {
            dVar.a(this);
        }
    }

    public void b(@ah d dVar) {
        this.ao.remove(dVar);
    }

    public void m() {
        this.ao.clear();
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@q int i2) {
        setPasswordVisibilityToggleDrawable(i2 != 0 ? androidx.appcompat.a.a.a.b(getContext(), i2) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@ai Drawable drawable) {
        this.ar.setImageDrawable(drawable);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@as int i2) {
        setPasswordVisibilityToggleContentDescription(i2 != 0 ? getResources().getText(i2) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@ai CharSequence charSequence) {
        this.ar.setContentDescription(charSequence);
    }

    @ai
    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.ar.getDrawable();
    }

    @ai
    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.ar.getContentDescription();
    }

    @Deprecated
    public boolean n() {
        return this.ap == 1;
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        if (z && this.ap != 1) {
            setEndIconMode(1);
        } else {
            if (z) {
                return;
            }
            setEndIconMode(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(@ai ColorStateList colorStateList) {
        this.at = colorStateList;
        this.au = true;
        U();
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(@ai PorterDuff.Mode mode) {
        this.av = mode;
        this.aw = true;
        U();
    }

    @Deprecated
    public void b(boolean z) {
        if (this.ap == 1) {
            this.ar.performClick();
            if (z) {
                this.ar.jumpDrawablesToCurrentState();
            }
        }
    }

    public void setTextInputAccessibilityDelegate(@ai a aVar) {
        if (this.f1433a != null) {
            af.a(this.f1433a, aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public CheckableImageButton getEndIconView() {
        return this.ar;
    }

    private com.google.android.material.textfield.e getEndIconDelegate() {
        com.google.android.material.textfield.e eVar = this.aq.get(this.ap);
        return eVar != null ? eVar : this.aq.get(0);
    }

    private void R() {
        Iterator<d> it = this.ao.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
    }

    private void S() {
        a(this.ag, this.ai, this.ah, this.ak, this.aj);
    }

    private boolean T() {
        return this.ap != 0;
    }

    private void c(int i2) {
        Iterator<e> it = this.as.iterator();
        while (it.hasNext()) {
            it.next().a(this, i2);
        }
    }

    private void c(boolean z) {
        if (z && getEndIconDrawable() != null) {
            Drawable mutate = androidx.core.graphics.drawable.a.g(getEndIconDrawable()).mutate();
            androidx.core.graphics.drawable.a.a(mutate, this.u.m());
            this.ar.setImageDrawable(mutate);
            return;
        }
        U();
    }

    private void U() {
        a(this.ar, this.au, this.at, this.aw, this.av);
    }

    private boolean V() {
        boolean z;
        if (this.f1433a == null) {
            return false;
        }
        if (W()) {
            int measuredWidth = this.q.getMeasuredWidth() - this.f1433a.getPaddingLeft();
            if (this.al == null || this.am != measuredWidth) {
                this.al = new ColorDrawable();
                this.am = measuredWidth;
                this.al.setBounds(0, 0, this.am, 1);
            }
            Drawable[] c2 = androidx.core.widget.m.c(this.f1433a);
            if (c2[0] != this.al) {
                androidx.core.widget.m.a(this.f1433a, this.al, c2[1], c2[2], c2[3]);
                z = true;
            }
            z = false;
        } else {
            if (this.al != null) {
                Drawable[] c3 = androidx.core.widget.m.c(this.f1433a);
                androidx.core.widget.m.a(this.f1433a, (Drawable) null, c3[1], c3[2], c3[3]);
                this.al = null;
                z = true;
            }
            z = false;
        }
        if (X()) {
            int measuredWidth2 = this.K.getMeasuredWidth() - this.f1433a.getPaddingRight();
            CheckableImageButton endIconToUpdateDummyDrawable = getEndIconToUpdateDummyDrawable();
            if (endIconToUpdateDummyDrawable != null) {
                measuredWidth2 = measuredWidth2 + endIconToUpdateDummyDrawable.getMeasuredWidth() + androidx.core.n.m.a((ViewGroup.MarginLayoutParams) endIconToUpdateDummyDrawable.getLayoutParams());
            }
            Drawable[] c4 = androidx.core.widget.m.c(this.f1433a);
            if (this.ax != null && this.ay != measuredWidth2) {
                this.ay = measuredWidth2;
                this.ax.setBounds(0, 0, this.ay, 1);
                androidx.core.widget.m.a(this.f1433a, c4[0], c4[1], this.ax, c4[3]);
            } else {
                if (this.ax == null) {
                    this.ax = new ColorDrawable();
                    this.ay = measuredWidth2;
                    this.ax.setBounds(0, 0, this.ay, 1);
                }
                if (c4[2] == this.ax) {
                    return z;
                }
                this.az = c4[2];
                androidx.core.widget.m.a(this.f1433a, c4[0], c4[1], this.ax, c4[3]);
            }
            return true;
        }
        if (this.ax == null) {
            return z;
        }
        Drawable[] c5 = androidx.core.widget.m.c(this.f1433a);
        if (c5[2] == this.ax) {
            androidx.core.widget.m.a(this.f1433a, c5[0], c5[1], this.az, c5[3]);
            z = true;
        }
        this.ax = null;
        return z;
    }

    private boolean W() {
        return !(getStartIconDrawable() == null && this.H == null) && this.q.getMeasuredWidth() > 0;
    }

    private boolean X() {
        return (this.aC.getVisibility() == 0 || ((T() && j()) || this.J != null)) && this.r.getMeasuredWidth() > 0;
    }

    @ai
    private CheckableImageButton getEndIconToUpdateDummyDrawable() {
        if (this.aC.getVisibility() == 0) {
            return this.aC;
        }
        if (T() && j()) {
            return this.ar;
        }
        return null;
    }

    private void a(@ah CheckableImageButton checkableImageButton, boolean z, ColorStateList colorStateList, boolean z2, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null && (z || z2)) {
            drawable = androidx.core.graphics.drawable.a.g(drawable).mutate();
            if (z) {
                androidx.core.graphics.drawable.a.a(drawable, colorStateList);
            }
            if (z2) {
                androidx.core.graphics.drawable.a.a(drawable, mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    private static void a(@ah CheckableImageButton checkableImageButton, @ai View.OnClickListener onClickListener, @ai View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnClickListener(onClickListener);
        b(checkableImageButton, onLongClickListener);
    }

    private static void a(@ah CheckableImageButton checkableImageButton, @ai View.OnLongClickListener onLongClickListener) {
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        b(checkableImageButton, onLongClickListener);
    }

    private static void b(@ah CheckableImageButton checkableImageButton, @ai View.OnLongClickListener onLongClickListener) {
        boolean al = af.al(checkableImageButton);
        boolean z = onLongClickListener != null;
        boolean z2 = al || z;
        checkableImageButton.setFocusable(z2);
        checkableImageButton.setClickable(al);
        checkableImageButton.setPressable(al);
        checkableImageButton.setLongClickable(z);
        af.e((View) checkableImageButton, z2 ? 1 : 2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        super.onLayout(z, i2, i3, i4, i5);
        if (this.f1433a != null) {
            Rect rect = this.ac;
            com.google.android.material.internal.c.b(this, this.f1433a, rect);
            c(rect);
            if (this.L) {
                this.k.a(this.f1433a.getTextSize());
                int gravity = this.f1433a.getGravity();
                this.k.b((gravity & (-113)) | 48);
                this.k.a(gravity);
                this.k.b(a(rect));
                this.k.a(b(rect));
                this.k.n();
                if (!Y() || this.aP) {
                    return;
                }
                Z();
            }
        }
    }

    private void c(@ah Rect rect) {
        if (this.P != null) {
            this.P.setBounds(rect.left, rect.bottom - this.W, rect.right, rect.bottom);
        }
    }

    @Override // android.view.View
    public void draw(@ah Canvas canvas) {
        super.draw(canvas);
        a(canvas);
        b(canvas);
    }

    private void a(@ah Canvas canvas) {
        if (this.L) {
            this.k.a(canvas);
        }
    }

    private void b(Canvas canvas) {
        if (this.P != null) {
            Rect bounds = this.P.getBounds();
            bounds.top = bounds.bottom - this.U;
            this.P.draw(canvas);
        }
    }

    private void d(boolean z) {
        if (this.aR != null && this.aR.isRunning()) {
            this.aR.cancel();
        }
        if (z && this.aQ) {
            a(1.0f);
        } else {
            this.k.c(1.0f);
        }
        this.aP = false;
        if (Y()) {
            Z();
        }
        y();
        D();
        F();
    }

    private boolean Y() {
        return this.L && !TextUtils.isEmpty(this.M) && (this.O instanceof com.google.android.material.textfield.c);
    }

    private void Z() {
        if (Y()) {
            RectF rectF = this.ae;
            this.k.a(rectF, this.f1433a.getWidth(), this.f1433a.getGravity());
            a(rectF);
            rectF.offset(-getPaddingLeft(), -getPaddingTop());
            ((com.google.android.material.textfield.c) this.O).a(rectF);
        }
    }

    private void aa() {
        if (Y()) {
            ((com.google.android.material.textfield.c) this.O).b();
        }
    }

    private void a(@ah RectF rectF) {
        rectF.left -= this.R;
        rectF.top -= this.R;
        rectF.right += this.R;
        rectF.bottom += this.R;
    }

    @ax
    boolean o() {
        return Y() && ((com.google.android.material.textfield.c) this.O).a();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        if (this.aS) {
            return;
        }
        this.aS = true;
        super.drawableStateChanged();
        boolean a2 = this.k != null ? this.k.a(getDrawableState()) | false : false;
        if (this.f1433a != null) {
            a(af.ag(this) && isEnabled());
        }
        f();
        p();
        if (a2) {
            invalidate();
        }
        this.aS = false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void p() {
        if (this.O == null || this.S == 0) {
            return;
        }
        boolean z = false;
        boolean z2 = isFocused() || (this.f1433a != null && this.f1433a.hasFocus());
        boolean z3 = isHovered() || (this.f1433a != null && this.f1433a.isHovered());
        if (!isEnabled()) {
            this.aa = this.aO;
        } else if (this.u.h()) {
            if (this.aJ != null) {
                b(z2, z3);
            } else {
                this.aa = this.u.m();
            }
        } else if (!this.w || this.x == null) {
            if (z2) {
                this.aa = this.aI;
            } else if (z3) {
                this.aa = this.aH;
            } else {
                this.aa = this.aG;
            }
        } else if (this.aJ != null) {
            b(z2, z3);
        } else {
            this.aa = this.x.getCurrentTextColor();
        }
        if (getErrorIconDrawable() != null && this.u.e() && this.u.h()) {
            z = true;
        }
        setErrorIconVisible(z);
        a(this.aC, this.aD);
        a(this.ag, this.ah);
        a(this.ar, this.at);
        if (getEndIconDelegate().b()) {
            c(this.u.h());
        }
        if (z2 && isEnabled()) {
            this.U = this.W;
        } else {
            this.U = this.V;
        }
        if (this.S == 1) {
            if (!isEnabled()) {
                this.ab = this.aL;
            } else if (z3 && !z2) {
                this.ab = this.aN;
            } else if (z2) {
                this.ab = this.aM;
            } else {
                this.ab = this.aK;
            }
        }
        L();
    }

    private void b(boolean z, boolean z2) {
        int defaultColor = this.aJ.getDefaultColor();
        int colorForState = this.aJ.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.aJ.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z) {
            this.aa = colorForState2;
        } else if (z2) {
            this.aa = colorForState;
        } else {
            this.aa = defaultColor;
        }
    }

    private void setErrorIconVisible(boolean z) {
        this.aC.setVisibility(z ? 0 : 8);
        this.s.setVisibility(z ? 8 : 0);
        G();
        if (T()) {
            return;
        }
        V();
    }

    private boolean ab() {
        return this.aC.getVisibility() == 0;
    }

    private void a(CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int colorForState = colorStateList.getColorForState(getDrawableState(), colorStateList.getDefaultColor());
        Drawable mutate = androidx.core.graphics.drawable.a.g(drawable).mutate();
        androidx.core.graphics.drawable.a.a(mutate, ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(mutate);
    }

    private void e(boolean z) {
        if (this.aR != null && this.aR.isRunning()) {
            this.aR.cancel();
        }
        if (z && this.aQ) {
            a(0.0f);
        } else {
            this.k.c(0.0f);
        }
        if (Y() && ((com.google.android.material.textfield.c) this.O).a()) {
            aa();
        }
        this.aP = true;
        A();
        D();
        F();
    }

    @ax
    void a(float f2) {
        if (this.k.j() == f2) {
            return;
        }
        if (this.aR == null) {
            this.aR = new ValueAnimator();
            this.aR.setInterpolator(com.google.android.material.a.a.b);
            this.aR.setDuration(167L);
            this.aR.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.TextInputLayout.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public void onAnimationUpdate(@ah ValueAnimator valueAnimator) {
                    TextInputLayout.this.k.c(((Float) valueAnimator.getAnimatedValue()).floatValue());
                }
            });
        }
        this.aR.setFloatValues(this.k.j(), f2);
        this.aR.start();
    }

    @ax
    final boolean q() {
        return this.aP;
    }

    @ax
    final boolean r() {
        return this.u.i();
    }

    @ax
    final int getHintCurrentCollapsedTextColor() {
        return this.k.m();
    }

    @ax
    final float getHintCollapsedTextHeight() {
        return this.k.c();
    }

    @ax
    final int getErrorTextCurrentColor() {
        return this.u.m();
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a extends androidx.core.n.a {

        /* renamed from: a, reason: collision with root package name */
        private final TextInputLayout f1438a;

        public a(@ah TextInputLayout textInputLayout) {
            this.f1438a = textInputLayout;
        }

        @Override // androidx.core.n.a
        public void a(@ah View view, @ah androidx.core.n.a.d dVar) {
            super.a(view, dVar);
            EditText editText = this.f1438a.getEditText();
            CharSequence text = editText != null ? editText.getText() : null;
            CharSequence hint = this.f1438a.getHint();
            CharSequence helperText = this.f1438a.getHelperText();
            CharSequence error = this.f1438a.getError();
            int counterMaxLength = this.f1438a.getCounterMaxLength();
            CharSequence counterOverflowDescription = this.f1438a.getCounterOverflowDescription();
            boolean z = !TextUtils.isEmpty(text);
            boolean z2 = !TextUtils.isEmpty(hint);
            boolean z3 = !TextUtils.isEmpty(helperText);
            boolean z4 = !TextUtils.isEmpty(error);
            boolean z5 = z4 || !TextUtils.isEmpty(counterOverflowDescription);
            String charSequence = z2 ? hint.toString() : com.yftech.service.upgrade.a.d;
            StringBuilder sb = new StringBuilder();
            sb.append(charSequence);
            sb.append(((z4 || z3) && !TextUtils.isEmpty(charSequence)) ? ", " : com.yftech.service.upgrade.a.d);
            String sb2 = sb.toString();
            StringBuilder sb3 = new StringBuilder();
            sb3.append(sb2);
            if (z4) {
                helperText = error;
            } else if (!z3) {
                helperText = com.yftech.service.upgrade.a.d;
            }
            sb3.append((Object) helperText);
            String sb4 = sb3.toString();
            if (z) {
                dVar.c(text);
            } else if (!TextUtils.isEmpty(sb4)) {
                dVar.c((CharSequence) sb4);
            }
            if (!TextUtils.isEmpty(sb4)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    dVar.f(sb4);
                } else {
                    if (z) {
                        sb4 = ((Object) text) + ", " + sb4;
                    }
                    dVar.c((CharSequence) sb4);
                }
                dVar.u(z ? false : true);
            }
            if (text == null || text.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            dVar.j(counterMaxLength);
            if (z5) {
                if (z4) {
                    counterOverflowDescription = error;
                }
                dVar.g(counterOverflowDescription);
            }
        }
    }
}
