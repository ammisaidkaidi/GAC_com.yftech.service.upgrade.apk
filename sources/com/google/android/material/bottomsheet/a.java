package com.google.android.material.bottomsheet;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.annotation.ac;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.at;
import androidx.appcompat.app.i;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.n.a.d;
import androidx.core.n.af;
import com.google.android.material.a;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends i {

    /* renamed from: a, reason: collision with root package name */
    boolean f1203a;
    boolean b;
    private BottomSheetBehavior<FrameLayout> c;
    private FrameLayout d;
    private boolean e;
    private boolean f;

    @ah
    private BottomSheetBehavior.a g;

    public a(@ah Context context) {
        this(context, 0);
    }

    public a(@ah Context context, @at int i) {
        super(context, a(context, i));
        this.b = true;
        this.e = true;
        this.g = new BottomSheetBehavior.a() { // from class: com.google.android.material.bottomsheet.a.4
            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.a
            public void a(@ah View view, float f) {
            }

            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.a
            public void a(@ah View view, int i2) {
                if (i2 == 5) {
                    a.this.cancel();
                }
            }
        };
        e(1);
    }

    protected a(@ah Context context, boolean z, DialogInterface.OnCancelListener onCancelListener) {
        super(context, z, onCancelListener);
        this.b = true;
        this.e = true;
        this.g = new BottomSheetBehavior.a() { // from class: com.google.android.material.bottomsheet.a.4
            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.a
            public void a(@ah View view, float f) {
            }

            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.a
            public void a(@ah View view, int i2) {
                if (i2 == 5) {
                    a.this.cancel();
                }
            }
        };
        e(1);
        this.b = z;
    }

    @Override // androidx.appcompat.app.i, android.app.Dialog
    public void setContentView(@ac int i) {
        super.setContentView(a(i, null, null));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.i, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Window window = getWindow();
        if (window != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                window.clearFlags(67108864);
                window.addFlags(Integer.MIN_VALUE);
            }
            window.setLayout(-1, -1);
        }
    }

    @Override // androidx.appcompat.app.i, android.app.Dialog
    public void setContentView(View view) {
        super.setContentView(a(0, view, null));
    }

    @Override // androidx.appcompat.app.i, android.app.Dialog
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        super.setContentView(a(0, view, layoutParams));
    }

    @Override // android.app.Dialog
    public void setCancelable(boolean z) {
        super.setCancelable(z);
        if (this.b != z) {
            this.b = z;
            if (this.c != null) {
                this.c.b(z);
            }
        }
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        if (this.c == null || this.c.k() != 5) {
            return;
        }
        this.c.d(4);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void cancel() {
        BottomSheetBehavior<FrameLayout> a2 = a();
        if (!this.f1203a || a2.k() == 5) {
            super.cancel();
        } else {
            a2.d(5);
        }
    }

    @Override // android.app.Dialog
    public void setCanceledOnTouchOutside(boolean z) {
        super.setCanceledOnTouchOutside(z);
        if (z && !this.b) {
            this.b = true;
        }
        this.e = z;
        this.f = true;
    }

    @ah
    public BottomSheetBehavior<FrameLayout> a() {
        if (this.c == null) {
            g();
        }
        return this.c;
    }

    public void a(boolean z) {
        this.f1203a = z;
    }

    public boolean d() {
        return this.f1203a;
    }

    private FrameLayout g() {
        if (this.d == null) {
            this.d = (FrameLayout) View.inflate(getContext(), a.k.design_bottom_sheet_dialog, null);
            this.c = BottomSheetBehavior.c((FrameLayout) this.d.findViewById(a.h.design_bottom_sheet));
            this.c.b(this.g);
            this.c.b(this.b);
        }
        return this.d;
    }

    private View a(int i, @ai View view, @ai ViewGroup.LayoutParams layoutParams) {
        g();
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) this.d.findViewById(a.h.coordinator);
        if (i != 0 && view == null) {
            view = getLayoutInflater().inflate(i, (ViewGroup) coordinatorLayout, false);
        }
        FrameLayout frameLayout = (FrameLayout) this.d.findViewById(a.h.design_bottom_sheet);
        frameLayout.removeAllViews();
        if (layoutParams == null) {
            frameLayout.addView(view);
        } else {
            frameLayout.addView(view, layoutParams);
        }
        coordinatorLayout.findViewById(a.h.touch_outside).setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.bottomsheet.a.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (a.this.b && a.this.isShowing() && a.this.e()) {
                    a.this.cancel();
                }
            }
        });
        af.a(frameLayout, new androidx.core.n.a() { // from class: com.google.android.material.bottomsheet.a.2
            @Override // androidx.core.n.a
            public void a(View view2, @ah d dVar) {
                super.a(view2, dVar);
                if (a.this.b) {
                    dVar.d(1048576);
                    dVar.q(true);
                } else {
                    dVar.q(false);
                }
            }

            @Override // androidx.core.n.a
            public boolean a(View view2, int i2, Bundle bundle) {
                if (i2 == 1048576 && a.this.b) {
                    a.this.cancel();
                    return true;
                }
                return super.a(view2, i2, bundle);
            }
        });
        frameLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.bottomsheet.a.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                return true;
            }
        });
        return this.d;
    }

    boolean e() {
        if (!this.f) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.windowCloseOnTouchOutside});
            this.e = obtainStyledAttributes.getBoolean(0, true);
            obtainStyledAttributes.recycle();
            this.f = true;
        }
        return this.e;
    }

    private static int a(@ah Context context, int i) {
        if (i != 0) {
            return i;
        }
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(a.c.bottomSheetDialogTheme, typedValue, true)) {
            return typedValue.resourceId;
        }
        return a.n.Theme_Design_Light_BottomSheetDialog;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void f() {
        this.c.c(this.g);
    }
}
