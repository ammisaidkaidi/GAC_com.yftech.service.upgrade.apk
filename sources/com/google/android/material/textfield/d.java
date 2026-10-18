package com.google.android.material.textfield;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.core.n.af;
import com.google.android.material.a;
import com.google.android.material.t.j;
import com.google.android.material.t.o;
import com.google.android.material.textfield.TextInputLayout;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: /home/user/work/dex/classes.dex */
public class d extends e {
    private static final boolean d;
    private static final int e = 50;
    private static final int f = 67;
    private final TextWatcher g;
    private final View.OnFocusChangeListener h;
    private final TextInputLayout.a i;
    private final TextInputLayout.d j;

    @SuppressLint({"ClickableViewAccessibility"})
    private final TextInputLayout.e k;
    private boolean l;
    private boolean m;
    private long n;
    private StateListDrawable o;
    private j p;

    @ai
    private AccessibilityManager q;
    private ValueAnimator r;
    private ValueAnimator s;

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.e
    public boolean a(int i) {
        return i != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.e
    public boolean b() {
        return true;
    }

    static {
        d = Build.VERSION.SDK_INT >= 21;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(@ah TextInputLayout textInputLayout) {
        super(textInputLayout);
        this.g = new TextWatcher() { // from class: com.google.android.material.textfield.d.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable editable) {
                final AutoCompleteTextView a2 = d.this.a(d.this.f1460a.getEditText());
                a2.post(new Runnable() { // from class: com.google.android.material.textfield.d.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        boolean isPopupShowing = a2.isPopupShowing();
                        d.this.b(isPopupShowing);
                        d.this.l = isPopupShowing;
                    }
                });
            }
        };
        this.h = new View.OnFocusChangeListener() { // from class: com.google.android.material.textfield.d.3
            @Override // android.view.View.OnFocusChangeListener
            public void onFocusChange(View view, boolean z) {
                d.this.f1460a.setEndIconActivated(z);
                if (z) {
                    return;
                }
                d.this.b(false);
                d.this.l = false;
            }
        };
        this.i = new TextInputLayout.a(this.f1460a) { // from class: com.google.android.material.textfield.d.4
            @Override // com.google.android.material.textfield.TextInputLayout.a, androidx.core.n.a
            public void a(View view, @ah androidx.core.n.a.d dVar) {
                super.a(view, dVar);
                if (d.this.f1460a.getEditText().getKeyListener() == null) {
                    dVar.b((CharSequence) Spinner.class.getName());
                }
                if (dVar.ac()) {
                    dVar.f((CharSequence) null);
                }
            }

            @Override // androidx.core.n.a
            public void c(View view, @ah AccessibilityEvent accessibilityEvent) {
                super.c(view, accessibilityEvent);
                AutoCompleteTextView a2 = d.this.a(d.this.f1460a.getEditText());
                if (accessibilityEvent.getEventType() == 1 && d.this.q.isTouchExplorationEnabled()) {
                    d.this.a(a2);
                }
            }
        };
        this.j = new TextInputLayout.d() { // from class: com.google.android.material.textfield.d.5
            @Override // com.google.android.material.textfield.TextInputLayout.d
            public void a(@ah TextInputLayout textInputLayout2) {
                AutoCompleteTextView a2 = d.this.a(textInputLayout2.getEditText());
                d.this.b(a2);
                d.this.c(a2);
                d.this.d(a2);
                a2.setThreshold(0);
                a2.removeTextChangedListener(d.this.g);
                a2.addTextChangedListener(d.this.g);
                textInputLayout2.setEndIconCheckable(true);
                textInputLayout2.setErrorIconDrawable((Drawable) null);
                textInputLayout2.setTextInputAccessibilityDelegate(d.this.i);
                textInputLayout2.setEndIconVisible(true);
            }
        };
        this.k = new TextInputLayout.e() { // from class: com.google.android.material.textfield.d.6
            @Override // com.google.android.material.textfield.TextInputLayout.e
            public void a(@ah TextInputLayout textInputLayout2, int i) {
                AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) textInputLayout2.getEditText();
                if (autoCompleteTextView == null || i != 3) {
                    return;
                }
                autoCompleteTextView.removeTextChangedListener(d.this.g);
                if (autoCompleteTextView.getOnFocusChangeListener() == d.this.h) {
                    autoCompleteTextView.setOnFocusChangeListener(null);
                }
                autoCompleteTextView.setOnTouchListener(null);
                if (d.d) {
                    autoCompleteTextView.setOnDismissListener(null);
                }
            }
        };
        this.l = false;
        this.m = false;
        this.n = Long.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.material.textfield.e
    public void a() {
        float dimensionPixelOffset = this.b.getResources().getDimensionPixelOffset(a.f.mtrl_shape_corner_size_small_component);
        float dimensionPixelOffset2 = this.b.getResources().getDimensionPixelOffset(a.f.mtrl_exposed_dropdown_menu_popup_elevation);
        int dimensionPixelOffset3 = this.b.getResources().getDimensionPixelOffset(a.f.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        j a2 = a(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        j a3 = a(0.0f, dimensionPixelOffset, dimensionPixelOffset2, dimensionPixelOffset3);
        this.p = a2;
        this.o = new StateListDrawable();
        this.o.addState(new int[]{R.attr.state_above_anchor}, a2);
        this.o.addState(new int[0], a3);
        this.f1460a.setEndIconDrawable(androidx.appcompat.a.a.a.b(this.b, d ? a.g.mtrl_dropdown_arrow : a.g.mtrl_ic_arrow_drop_down));
        this.f1460a.setEndIconContentDescription(this.f1460a.getResources().getText(a.m.exposed_dropdown_menu_content_description));
        this.f1460a.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.textfield.d.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.this.a((AutoCompleteTextView) d.this.f1460a.getEditText());
            }
        });
        this.f1460a.a(this.j);
        this.f1460a.a(this.k);
        e();
        af.e((View) this.c, 2);
        this.q = (AccessibilityManager) this.b.getSystemService("accessibility");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(@ai AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView == null) {
            return;
        }
        if (d()) {
            this.l = false;
        }
        if (!this.l) {
            if (d) {
                b(!this.m);
            } else {
                this.m = !this.m;
                this.c.toggle();
            }
            if (this.m) {
                autoCompleteTextView.requestFocus();
                autoCompleteTextView.showDropDown();
                return;
            } else {
                autoCompleteTextView.dismissDropDown();
                return;
            }
        }
        this.l = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(@ah AutoCompleteTextView autoCompleteTextView) {
        if (d) {
            int boxBackgroundMode = this.f1460a.getBoxBackgroundMode();
            if (boxBackgroundMode == 2) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.p);
            } else if (boxBackgroundMode == 1) {
                autoCompleteTextView.setDropDownBackgroundDrawable(this.o);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(@ah AutoCompleteTextView autoCompleteTextView) {
        if (autoCompleteTextView.getKeyListener() != null) {
            return;
        }
        int boxBackgroundMode = this.f1460a.getBoxBackgroundMode();
        j boxBackground = this.f1460a.getBoxBackground();
        int a2 = com.google.android.material.h.a.a(autoCompleteTextView, a.c.colorControlHighlight);
        int[][] iArr = {new int[]{R.attr.state_pressed}, new int[0]};
        if (boxBackgroundMode == 2) {
            a(autoCompleteTextView, a2, iArr, boxBackground);
        } else if (boxBackgroundMode == 1) {
            b(autoCompleteTextView, a2, iArr, boxBackground);
        }
    }

    private void a(@ah AutoCompleteTextView autoCompleteTextView, int i, int[][] iArr, @ah j jVar) {
        LayerDrawable layerDrawable;
        int a2 = com.google.android.material.h.a.a(autoCompleteTextView, a.c.colorSurface);
        j jVar2 = new j(jVar.getShapeAppearanceModel());
        int a3 = com.google.android.material.h.a.a(i, a2, 0.1f);
        jVar2.g(new ColorStateList(iArr, new int[]{a3, 0}));
        if (d) {
            jVar2.setTint(a2);
            ColorStateList colorStateList = new ColorStateList(iArr, new int[]{a3, a2});
            j jVar3 = new j(jVar.getShapeAppearanceModel());
            jVar3.setTint(-1);
            layerDrawable = new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, jVar2, jVar3), jVar});
        } else {
            layerDrawable = new LayerDrawable(new Drawable[]{jVar2, jVar});
        }
        af.a(autoCompleteTextView, layerDrawable);
    }

    private void b(@ah AutoCompleteTextView autoCompleteTextView, int i, int[][] iArr, @ah j jVar) {
        int boxBackgroundColor = this.f1460a.getBoxBackgroundColor();
        int[] iArr2 = {com.google.android.material.h.a.a(i, boxBackgroundColor, 0.1f), boxBackgroundColor};
        if (d) {
            af.a(autoCompleteTextView, new RippleDrawable(new ColorStateList(iArr, iArr2), jVar, jVar));
            return;
        }
        j jVar2 = new j(jVar.getShapeAppearanceModel());
        jVar2.g(new ColorStateList(iArr, iArr2));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{jVar, jVar2});
        int w = af.w(autoCompleteTextView);
        int paddingTop = autoCompleteTextView.getPaddingTop();
        int x = af.x(autoCompleteTextView);
        int paddingBottom = autoCompleteTextView.getPaddingBottom();
        af.a(autoCompleteTextView, layerDrawable);
        af.b(autoCompleteTextView, w, paddingTop, x, paddingBottom);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"ClickableViewAccessibility"})
    public void d(@ah final AutoCompleteTextView autoCompleteTextView) {
        autoCompleteTextView.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.textfield.d.8
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(@ah View view, @ah MotionEvent motionEvent) {
                if (motionEvent.getAction() == 1) {
                    if (d.this.d()) {
                        d.this.l = false;
                    }
                    d.this.a(autoCompleteTextView);
                }
                return false;
            }
        });
        autoCompleteTextView.setOnFocusChangeListener(this.h);
        if (d) {
            autoCompleteTextView.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: com.google.android.material.textfield.d.9
                @Override // android.widget.AutoCompleteTextView.OnDismissListener
                public void onDismiss() {
                    d.this.l = true;
                    d.this.n = System.currentTimeMillis();
                    d.this.b(false);
                }
            });
        }
    }

    private j a(float f2, float f3, float f4, int i) {
        o a2 = o.a().b(f2).c(f2).e(f3).d(f3).a();
        j a3 = j.a(this.b, f4);
        a3.setShapeAppearanceModel(a2);
        a3.a(0, i, 0, i);
        return a3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d() {
        long currentTimeMillis = System.currentTimeMillis() - this.n;
        return currentTimeMillis < 0 || currentTimeMillis > 300;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @ah
    public AutoCompleteTextView a(EditText editText) {
        if (!(editText instanceof AutoCompleteTextView)) {
            throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
        }
        return (AutoCompleteTextView) editText;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        if (this.m != z) {
            this.m = z;
            this.s.cancel();
            this.r.start();
        }
    }

    private void e() {
        this.s = a(67, 0.0f, 1.0f);
        this.r = a(50, 1.0f, 0.0f);
        this.r.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.d.10
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                d.this.c.setChecked(d.this.m);
                d.this.s.start();
            }
        });
    }

    private ValueAnimator a(int i, float... fArr) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setInterpolator(com.google.android.material.a.a.f1146a);
        ofFloat.setDuration(i);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.d.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(@ah ValueAnimator valueAnimator) {
                d.this.c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
            }
        });
        return ofFloat;
    }
}
