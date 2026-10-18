package com.google.android.material.chip;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.h;
import androidx.annotation.o;
import androidx.annotation.p;
import androidx.annotation.w;
import androidx.core.n.a.d;
import androidx.core.n.af;
import com.google.android.material.a;
import com.google.android.material.internal.e;
import com.google.android.material.internal.s;
import java.util.ArrayList;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public class ChipGroup extends e {

    /* renamed from: a, reason: collision with root package name */
    private static final int f1232a = a.n.Widget_MaterialComponents_ChipGroup;

    @p
    private int b;

    @p
    private int c;
    private boolean d;
    private boolean e;

    @ai
    private c f;
    private final a g;

    @ah
    private d h;

    @w
    private int i;
    private boolean j;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface c {
        void a(ChipGroup chipGroup, @w int i);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class b extends ViewGroup.MarginLayoutParams {
        public b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public b(int i, int i2) {
            super(i, i2);
        }

        public b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    public ChipGroup(Context context) {
        this(context, null);
    }

    public ChipGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, a.c.chipGroupStyle);
    }

    public ChipGroup(Context context, AttributeSet attributeSet, int i) {
        super(com.google.android.material.theme.a.a.a(context, attributeSet, i, f1232a), attributeSet, i);
        this.g = new a();
        this.h = new d();
        this.i = -1;
        this.j = false;
        TypedArray a2 = s.a(getContext(), attributeSet, a.o.ChipGroup, i, f1232a, new int[0]);
        int dimensionPixelOffset = a2.getDimensionPixelOffset(a.o.ChipGroup_chipSpacing, 0);
        setChipSpacingHorizontal(a2.getDimensionPixelOffset(a.o.ChipGroup_chipSpacingHorizontal, dimensionPixelOffset));
        setChipSpacingVertical(a2.getDimensionPixelOffset(a.o.ChipGroup_chipSpacingVertical, dimensionPixelOffset));
        setSingleLine(a2.getBoolean(a.o.ChipGroup_singleLine, false));
        setSingleSelection(a2.getBoolean(a.o.ChipGroup_singleSelection, false));
        setSelectionRequired(a2.getBoolean(a.o.ChipGroup_selectionRequired, false));
        int resourceId = a2.getResourceId(a.o.ChipGroup_checkedChip, -1);
        if (resourceId != -1) {
            this.i = resourceId;
        }
        a2.recycle();
        super.setOnHierarchyChangeListener(this.h);
        af.e((View) this, 1);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(@ah AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        androidx.core.n.a.d.a(accessibilityNodeInfo).b(d.b.a(getRowCount(), b() ? getChipCount() : -1, false, c() ? 1 : 2));
    }

    @Override // android.view.ViewGroup
    @ah
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new b(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    @ah
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new b(layoutParams);
    }

    @Override // android.view.ViewGroup
    @ah
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new b(-2, -2);
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof b);
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.h.b = onHierarchyChangeListener;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        if (this.i != -1) {
            b(this.i, true);
            setCheckedId(this.i);
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof Chip) {
            Chip chip = (Chip) view;
            if (chip.isChecked()) {
                if (this.i != -1 && this.d) {
                    b(this.i, false);
                }
                setCheckedId(chip.getId());
            }
        }
        super.addView(view, i, layoutParams);
    }

    @Deprecated
    public void setDividerDrawableHorizontal(Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setDividerDrawableVertical(@ai Drawable drawable) {
        throw new UnsupportedOperationException("Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerHorizontal(int i) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setShowDividerVertical(int i) {
        throw new UnsupportedOperationException("Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing.");
    }

    @Deprecated
    public void setFlexWrap(int i) {
        throw new UnsupportedOperationException("Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead.");
    }

    public void a(@w int i) {
        if (i == this.i) {
            return;
        }
        if (this.i != -1 && this.d) {
            b(this.i, false);
        }
        if (i != -1) {
            b(i, true);
        }
        setCheckedId(i);
    }

    @w
    public int getCheckedChipId() {
        if (this.d) {
            return this.i;
        }
        return -1;
    }

    @ah
    public List<Integer> getCheckedChipIds() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if ((childAt instanceof Chip) && ((Chip) childAt).isChecked()) {
                arrayList.add(Integer.valueOf(childAt.getId()));
                if (this.d) {
                    return arrayList;
                }
            }
        }
        return arrayList;
    }

    public void a() {
        this.j = true;
        for (int i = 0; i < getChildCount(); i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof Chip) {
                ((Chip) childAt).setChecked(false);
            }
        }
        this.j = false;
        setCheckedId(-1);
    }

    public void setOnCheckedChangeListener(c cVar) {
        this.f = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setCheckedId(int i) {
        a(i, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, boolean z) {
        this.i = i;
        if (this.f != null && this.d && z) {
            this.f.a(this, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(@w int i, boolean z) {
        View findViewById = findViewById(i);
        if (findViewById instanceof Chip) {
            this.j = true;
            ((Chip) findViewById).setChecked(z);
            this.j = false;
        }
    }

    private int getChipCount() {
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) instanceof Chip) {
                i++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(@ai View view) {
        if (!(view instanceof Chip)) {
            return -1;
        }
        int i = 0;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            if (getChildAt(i2) instanceof Chip) {
                if (((Chip) getChildAt(i2)) == view) {
                    return i;
                }
                i++;
            }
        }
        return -1;
    }

    public void setChipSpacing(@p int i) {
        setChipSpacingHorizontal(i);
        setChipSpacingVertical(i);
    }

    public void setChipSpacingResource(@o int i) {
        setChipSpacing(getResources().getDimensionPixelOffset(i));
    }

    @p
    public int getChipSpacingHorizontal() {
        return this.b;
    }

    public void setChipSpacingHorizontal(@p int i) {
        if (this.b != i) {
            this.b = i;
            setItemSpacing(i);
            requestLayout();
        }
    }

    public void setChipSpacingHorizontalResource(@o int i) {
        setChipSpacingHorizontal(getResources().getDimensionPixelOffset(i));
    }

    @p
    public int getChipSpacingVertical() {
        return this.c;
    }

    public void setChipSpacingVertical(@p int i) {
        if (this.c != i) {
            this.c = i;
            setLineSpacing(i);
            requestLayout();
        }
    }

    public void setChipSpacingVerticalResource(@o int i) {
        setChipSpacingVertical(getResources().getDimensionPixelOffset(i));
    }

    @Override // com.google.android.material.internal.e
    public boolean b() {
        return super.b();
    }

    @Override // com.google.android.material.internal.e
    public void setSingleLine(boolean z) {
        super.setSingleLine(z);
    }

    public void setSingleLine(@h int i) {
        setSingleLine(getResources().getBoolean(i));
    }

    public boolean c() {
        return this.d;
    }

    public void setSingleSelection(boolean z) {
        if (this.d != z) {
            this.d = z;
            a();
        }
    }

    public void setSingleSelection(@h int i) {
        setSingleSelection(getResources().getBoolean(i));
    }

    public void setSelectionRequired(boolean z) {
        this.e = z;
    }

    public boolean d() {
        return this.e;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class a implements CompoundButton.OnCheckedChangeListener {
        private a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(@ah CompoundButton compoundButton, boolean z) {
            if (ChipGroup.this.j) {
                return;
            }
            if (ChipGroup.this.getCheckedChipIds().isEmpty() && ChipGroup.this.e) {
                ChipGroup.this.b(compoundButton.getId(), true);
                ChipGroup.this.a(compoundButton.getId(), false);
                return;
            }
            int id = compoundButton.getId();
            if (z) {
                if (ChipGroup.this.i != -1 && ChipGroup.this.i != id && ChipGroup.this.d) {
                    ChipGroup.this.b(ChipGroup.this.i, false);
                }
                ChipGroup.this.setCheckedId(id);
                return;
            }
            if (ChipGroup.this.i == id) {
                ChipGroup.this.setCheckedId(-1);
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private class d implements ViewGroup.OnHierarchyChangeListener {
        private ViewGroup.OnHierarchyChangeListener b;

        private d() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(View view, View view2) {
            int hashCode;
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                if (view2.getId() == -1) {
                    if (Build.VERSION.SDK_INT >= 17) {
                        hashCode = View.generateViewId();
                    } else {
                        hashCode = view2.hashCode();
                    }
                    view2.setId(hashCode);
                }
                ((Chip) view2).setOnCheckedChangeListenerInternal(ChipGroup.this.g);
            }
            if (this.b != null) {
                this.b.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(View view, View view2) {
            if (view == ChipGroup.this && (view2 instanceof Chip)) {
                ((Chip) view2).setOnCheckedChangeListenerInternal(null);
            }
            if (this.b != null) {
                this.b.onChildViewRemoved(view, view2);
            }
        }
    }
}
