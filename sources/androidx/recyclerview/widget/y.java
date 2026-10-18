package androidx.recyclerview.widget;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.annotation.ai;
import java.util.Map;
import java.util.WeakHashMap;

/* loaded from: /home/user/work/dex/classes.dex */
public class y extends androidx.core.n.a {

    /* renamed from: a, reason: collision with root package name */
    final RecyclerView f1102a;
    private final a b;

    public y(@androidx.annotation.ah RecyclerView recyclerView) {
        this.f1102a = recyclerView;
        androidx.core.n.a c = c();
        if (c != null && (c instanceof a)) {
            this.b = (a) c;
        } else {
            this.b = new a(this);
        }
    }

    boolean b() {
        return this.f1102a.B();
    }

    @Override // androidx.core.n.a
    public boolean a(View view, int i, Bundle bundle) {
        if (super.a(view, i, bundle)) {
            return true;
        }
        if (b() || this.f1102a.getLayoutManager() == null) {
            return false;
        }
        return this.f1102a.getLayoutManager().a(i, bundle);
    }

    @Override // androidx.core.n.a
    public void a(View view, androidx.core.n.a.d dVar) {
        super.a(view, dVar);
        if (b() || this.f1102a.getLayoutManager() == null) {
            return;
        }
        this.f1102a.getLayoutManager().a(dVar);
    }

    @Override // androidx.core.n.a
    public void d(View view, AccessibilityEvent accessibilityEvent) {
        super.d(view, accessibilityEvent);
        if (!(view instanceof RecyclerView) || b()) {
            return;
        }
        RecyclerView recyclerView = (RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().a(accessibilityEvent);
        }
    }

    @androidx.annotation.ah
    public androidx.core.n.a c() {
        return this.b;
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a extends androidx.core.n.a {

        /* renamed from: a, reason: collision with root package name */
        final y f1103a;
        private Map<View, androidx.core.n.a> b = new WeakHashMap();

        public a(@androidx.annotation.ah y yVar) {
            this.f1103a = yVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void c(View view) {
            androidx.core.n.a e = androidx.core.n.af.e(view);
            if (e == null || e == this) {
                return;
            }
            this.b.put(view, e);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public androidx.core.n.a d(View view) {
            return this.b.remove(view);
        }

        @Override // androidx.core.n.a
        public void a(View view, androidx.core.n.a.d dVar) {
            if (!this.f1103a.b() && this.f1103a.f1102a.getLayoutManager() != null) {
                this.f1103a.f1102a.getLayoutManager().a(view, dVar);
                androidx.core.n.a aVar = this.b.get(view);
                if (aVar != null) {
                    aVar.a(view, dVar);
                    return;
                } else {
                    super.a(view, dVar);
                    return;
                }
            }
            super.a(view, dVar);
        }

        @Override // androidx.core.n.a
        public boolean a(View view, int i, Bundle bundle) {
            if (!this.f1103a.b() && this.f1103a.f1102a.getLayoutManager() != null) {
                androidx.core.n.a aVar = this.b.get(view);
                if (aVar != null) {
                    if (aVar.a(view, i, bundle)) {
                        return true;
                    }
                } else if (super.a(view, i, bundle)) {
                    return true;
                }
                return this.f1103a.f1102a.getLayoutManager().a(view, i, bundle);
            }
            return super.a(view, i, bundle);
        }

        @Override // androidx.core.n.a
        public void a(@androidx.annotation.ah View view, int i) {
            androidx.core.n.a aVar = this.b.get(view);
            if (aVar != null) {
                aVar.a(view, i);
            } else {
                super.a(view, i);
            }
        }

        @Override // androidx.core.n.a
        public void a(@androidx.annotation.ah View view, @androidx.annotation.ah AccessibilityEvent accessibilityEvent) {
            androidx.core.n.a aVar = this.b.get(view);
            if (aVar != null) {
                aVar.a(view, accessibilityEvent);
            } else {
                super.a(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.n.a
        public boolean b(@androidx.annotation.ah View view, @androidx.annotation.ah AccessibilityEvent accessibilityEvent) {
            androidx.core.n.a aVar = this.b.get(view);
            if (aVar != null) {
                return aVar.b(view, accessibilityEvent);
            }
            return super.b(view, accessibilityEvent);
        }

        @Override // androidx.core.n.a
        public void c(@androidx.annotation.ah View view, @androidx.annotation.ah AccessibilityEvent accessibilityEvent) {
            androidx.core.n.a aVar = this.b.get(view);
            if (aVar != null) {
                aVar.c(view, accessibilityEvent);
            } else {
                super.c(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.n.a
        public void d(@androidx.annotation.ah View view, @androidx.annotation.ah AccessibilityEvent accessibilityEvent) {
            androidx.core.n.a aVar = this.b.get(view);
            if (aVar != null) {
                aVar.d(view, accessibilityEvent);
            } else {
                super.d(view, accessibilityEvent);
            }
        }

        @Override // androidx.core.n.a
        public boolean a(@androidx.annotation.ah ViewGroup viewGroup, @androidx.annotation.ah View view, @androidx.annotation.ah AccessibilityEvent accessibilityEvent) {
            androidx.core.n.a aVar = this.b.get(viewGroup);
            if (aVar != null) {
                return aVar.a(viewGroup, view, accessibilityEvent);
            }
            return super.a(viewGroup, view, accessibilityEvent);
        }

        @Override // androidx.core.n.a
        @ai
        public androidx.core.n.a.e a(@androidx.annotation.ah View view) {
            androidx.core.n.a aVar = this.b.get(view);
            if (aVar != null) {
                return aVar.a(view);
            }
            return super.a(view);
        }
    }
}
