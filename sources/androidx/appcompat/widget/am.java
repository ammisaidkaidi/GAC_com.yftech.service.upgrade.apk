package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.Transition;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.annotation.ap;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.lang.reflect.Method;

@androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public class am extends ak implements al {

    /* renamed from: a, reason: collision with root package name */
    private static final String f218a = "MenuPopupWindow";
    private static Method b;
    private al p;

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                b = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
            Log.i(f218a, "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public am(@androidx.annotation.ah Context context, @androidx.annotation.ai AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // androidx.appcompat.widget.ak
    @androidx.annotation.ah
    ag a(Context context, boolean z) {
        a aVar = new a(context, z);
        aVar.setHoverListener(this);
        return aVar;
    }

    public void a(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.h.setEnterTransition((Transition) obj);
        }
    }

    public void b(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.h.setExitTransition((Transition) obj);
        }
    }

    public void a(al alVar) {
        this.p = alVar;
    }

    public void e(boolean z) {
        if (Build.VERSION.SDK_INT <= 28) {
            if (b != null) {
                try {
                    b.invoke(this.h, Boolean.valueOf(z));
                    return;
                } catch (Exception unused) {
                    Log.i(f218a, "Could not invoke setTouchModal() on PopupWindow. Oh well.");
                    return;
                }
            }
            return;
        }
        this.h.setTouchModal(z);
    }

    @Override // androidx.appcompat.widget.al
    public void b(@androidx.annotation.ah androidx.appcompat.view.menu.g gVar, @androidx.annotation.ah MenuItem menuItem) {
        if (this.p != null) {
            this.p.b(gVar, menuItem);
        }
    }

    @Override // androidx.appcompat.widget.al
    public void a(@androidx.annotation.ah androidx.appcompat.view.menu.g gVar, @androidx.annotation.ah MenuItem menuItem) {
        if (this.p != null) {
            this.p.a(gVar, menuItem);
        }
    }

    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a extends ag {
        final int d;
        final int e;
        private al f;
        private MenuItem g;

        @Override // androidx.appcompat.widget.ag
        public /* bridge */ /* synthetic */ int a(int i, int i2, int i3, int i4, int i5) {
            return super.a(i, i2, i3, i4, i5);
        }

        @Override // androidx.appcompat.widget.ag
        public /* bridge */ /* synthetic */ int a(int i, boolean z) {
            return super.a(i, z);
        }

        @Override // androidx.appcompat.widget.ag
        public /* bridge */ /* synthetic */ boolean a(MotionEvent motionEvent, int i) {
            return super.a(motionEvent, i);
        }

        @Override // androidx.appcompat.widget.ag, android.view.ViewGroup, android.view.View
        public /* bridge */ /* synthetic */ boolean hasFocus() {
            return super.hasFocus();
        }

        @Override // androidx.appcompat.widget.ag, android.view.View
        public /* bridge */ /* synthetic */ boolean hasWindowFocus() {
            return super.hasWindowFocus();
        }

        @Override // androidx.appcompat.widget.ag, android.view.View
        public /* bridge */ /* synthetic */ boolean isFocused() {
            return super.isFocused();
        }

        @Override // androidx.appcompat.widget.ag, android.view.View
        public /* bridge */ /* synthetic */ boolean isInTouchMode() {
            return super.isInTouchMode();
        }

        @Override // androidx.appcompat.widget.ag, android.widget.AbsListView, android.view.View
        public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
            return super.onTouchEvent(motionEvent);
        }

        @Override // androidx.appcompat.widget.ag, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }

        public a(Context context, boolean z) {
            super(context, z);
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT >= 17 && 1 == configuration.getLayoutDirection()) {
                this.d = 21;
                this.e = 22;
            } else {
                this.d = 22;
                this.e = 21;
            }
        }

        public void setHoverListener(al alVar) {
            this.f = alVar;
        }

        public void a() {
            setSelection(-1);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i == this.d) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            }
            if (listMenuItemView != null && i == this.e) {
                setSelection(-1);
                ((androidx.appcompat.view.menu.f) getAdapter()).b().b(false);
                return true;
            }
            return super.onKeyDown(i, keyEvent);
        }

        @Override // androidx.appcompat.widget.ag, android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            int i;
            androidx.appcompat.view.menu.f fVar;
            int pointToPosition;
            int i2;
            if (this.f != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i = headerViewListAdapter.getHeadersCount();
                    fVar = (androidx.appcompat.view.menu.f) headerViewListAdapter.getWrappedAdapter();
                } else {
                    i = 0;
                    fVar = (androidx.appcompat.view.menu.f) adapter;
                }
                androidx.appcompat.view.menu.j jVar = null;
                if (motionEvent.getAction() != 10 && (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) != -1 && (i2 = pointToPosition - i) >= 0 && i2 < fVar.getCount()) {
                    jVar = fVar.getItem(i2);
                }
                MenuItem menuItem = this.g;
                if (menuItem != jVar) {
                    androidx.appcompat.view.menu.g b = fVar.b();
                    if (menuItem != null) {
                        this.f.a(b, menuItem);
                    }
                    this.g = jVar;
                    if (jVar != null) {
                        this.f.b(b, jVar);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }
    }
}
