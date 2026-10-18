package androidx.j;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ap;
import androidx.j.a;
import androidx.j.aa;
import androidx.j.ag;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: /home/user/work/dex/classes.dex */
public abstract class bf extends ag {
    private static final String b = "android:visibility:screenLocation";
    public static final int p = 1;
    public static final int q = 2;
    private int s;
    static final String o = "android:visibility:visibility";

    /* renamed from: a, reason: collision with root package name */
    private static final String f875a = "android:visibility:parent";
    private static final String[] r = {o, f875a};

    @SuppressLint({"UniqueConstants"})
    @Retention(RetentionPolicy.SOURCE)
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    /* loaded from: /home/user/work/dex/classes.dex */
    public @interface b {
    }

    public Animator a(ViewGroup viewGroup, View view, an anVar, an anVar2) {
        return null;
    }

    public Animator b(ViewGroup viewGroup, View view, an anVar, an anVar2) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class c {

        /* renamed from: a, reason: collision with root package name */
        boolean f878a;
        boolean b;
        int c;
        int d;
        ViewGroup e;
        ViewGroup f;

        c() {
        }
    }

    public bf() {
        this.s = 3;
    }

    @SuppressLint({"RestrictedApi"})
    public bf(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.s = 3;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, af.e);
        int a2 = androidx.core.b.b.h.a(obtainStyledAttributes, (XmlPullParser) attributeSet, "transitionVisibilityMode", 0, 0);
        obtainStyledAttributes.recycle();
        if (a2 != 0) {
            d(a2);
        }
    }

    public void d(int i) {
        if ((i & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.s = i;
    }

    public int c() {
        return this.s;
    }

    @Override // androidx.j.ag
    @androidx.annotation.ai
    public String[] a() {
        return r;
    }

    private void e(an anVar) {
        anVar.f859a.put(o, Integer.valueOf(anVar.b.getVisibility()));
        anVar.f859a.put(f875a, anVar.b.getParent());
        int[] iArr = new int[2];
        anVar.b.getLocationOnScreen(iArr);
        anVar.f859a.put(b, iArr);
    }

    @Override // androidx.j.ag
    public void a(@androidx.annotation.ah an anVar) {
        e(anVar);
    }

    @Override // androidx.j.ag
    public void b(@androidx.annotation.ah an anVar) {
        e(anVar);
    }

    public boolean d(an anVar) {
        if (anVar == null) {
            return false;
        }
        return ((Integer) anVar.f859a.get(o)).intValue() == 0 && ((View) anVar.f859a.get(f875a)) != null;
    }

    private c b(an anVar, an anVar2) {
        c cVar = new c();
        cVar.f878a = false;
        cVar.b = false;
        if (anVar != null && anVar.f859a.containsKey(o)) {
            cVar.c = ((Integer) anVar.f859a.get(o)).intValue();
            cVar.e = (ViewGroup) anVar.f859a.get(f875a);
        } else {
            cVar.c = -1;
            cVar.e = null;
        }
        if (anVar2 != null && anVar2.f859a.containsKey(o)) {
            cVar.d = ((Integer) anVar2.f859a.get(o)).intValue();
            cVar.f = (ViewGroup) anVar2.f859a.get(f875a);
        } else {
            cVar.d = -1;
            cVar.f = null;
        }
        if (anVar != null && anVar2 != null) {
            if (cVar.c == cVar.d && cVar.e == cVar.f) {
                return cVar;
            }
            if (cVar.c != cVar.d) {
                if (cVar.c == 0) {
                    cVar.b = false;
                    cVar.f878a = true;
                } else if (cVar.d == 0) {
                    cVar.b = true;
                    cVar.f878a = true;
                }
            } else if (cVar.f == null) {
                cVar.b = false;
                cVar.f878a = true;
            } else if (cVar.e == null) {
                cVar.b = true;
                cVar.f878a = true;
            }
        } else if (anVar == null && cVar.d == 0) {
            cVar.b = true;
            cVar.f878a = true;
        } else if (anVar2 == null && cVar.c == 0) {
            cVar.b = false;
            cVar.f878a = true;
        }
        return cVar;
    }

    @Override // androidx.j.ag
    @androidx.annotation.ai
    public Animator a(@androidx.annotation.ah ViewGroup viewGroup, @androidx.annotation.ai an anVar, @androidx.annotation.ai an anVar2) {
        c b2 = b(anVar, anVar2);
        if (!b2.f878a) {
            return null;
        }
        if (b2.e == null && b2.f == null) {
            return null;
        }
        if (b2.b) {
            return a(viewGroup, anVar, b2.c, anVar2, b2.d);
        }
        return b(viewGroup, anVar, b2.c, anVar2, b2.d);
    }

    public Animator a(ViewGroup viewGroup, an anVar, int i, an anVar2, int i2) {
        if ((this.s & 1) != 1 || anVar2 == null) {
            return null;
        }
        if (anVar == null) {
            View view = (View) anVar2.b.getParent();
            if (b(d(view, false), c(view, false)).f878a) {
                return null;
            }
        }
        return a(viewGroup, anVar2.b, anVar, anVar2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0080, code lost:
    
        if (r9.l != false) goto L44;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Animator b(final ViewGroup viewGroup, an anVar, int i, an anVar2, int i2) {
        View view;
        boolean z;
        boolean z2;
        if ((this.s & 2) != 2 || anVar == null) {
            return null;
        }
        final View view2 = anVar.b;
        View view3 = anVar2 != null ? anVar2.b : null;
        final View view4 = (View) view2.getTag(aa.e.save_overlay_view);
        if (view4 != null) {
            view = null;
            z2 = true;
        } else {
            if (view3 == null || view3.getParent() == null) {
                if (view3 != null) {
                    view = null;
                    view4 = view3;
                    z = false;
                }
                view4 = null;
                view = null;
                z = true;
            } else {
                if (i2 == 4 || view2 == view3) {
                    view4 = null;
                    view = view3;
                    z = false;
                }
                view4 = null;
                view = null;
                z = true;
            }
            if (z) {
                if (view2.getParent() != null) {
                    if (view2.getParent() instanceof View) {
                        View view5 = (View) view2.getParent();
                        if (!b(c(view5, true), d(view5, true)).f878a) {
                            view4 = am.a(viewGroup, view2, view5);
                        } else {
                            int id = view5.getId();
                            if (view5.getParent() == null) {
                                if (id != -1) {
                                    if (viewGroup.findViewById(id) != null) {
                                    }
                                }
                            }
                        }
                    }
                }
                view4 = view2;
            }
            z2 = false;
        }
        if (view4 == null) {
            if (view == null) {
                return null;
            }
            int visibility = view.getVisibility();
            ay.a(view, 0);
            Animator b2 = b(viewGroup, view, anVar, anVar2);
            if (b2 != null) {
                a aVar = new a(view, i2, true);
                b2.addListener(aVar);
                androidx.j.a.a(b2, aVar);
                a(aVar);
            } else {
                ay.a(view, visibility);
            }
            return b2;
        }
        if (!z2) {
            int[] iArr = (int[]) anVar.f859a.get(b);
            int i3 = iArr[0];
            int i4 = iArr[1];
            int[] iArr2 = new int[2];
            viewGroup.getLocationOnScreen(iArr2);
            view4.offsetLeftAndRight((i3 - iArr2[0]) - view4.getLeft());
            view4.offsetTopAndBottom((i4 - iArr2[1]) - view4.getTop());
            at.a(viewGroup).a(view4);
        }
        Animator b3 = b(viewGroup, view4, anVar, anVar2);
        if (!z2) {
            if (b3 == null) {
                at.a(viewGroup).b(view4);
            } else {
                view2.setTag(aa.e.save_overlay_view, view4);
                a(new ai() { // from class: androidx.j.bf.1
                    @Override // androidx.j.ai, androidx.j.ag.e
                    public void c(@androidx.annotation.ah ag agVar) {
                        at.a(viewGroup).b(view4);
                    }

                    @Override // androidx.j.ai, androidx.j.ag.e
                    public void d(@androidx.annotation.ah ag agVar) {
                        if (view4.getParent() == null) {
                            at.a(viewGroup).a(view4);
                        } else {
                            bf.this.n();
                        }
                    }

                    @Override // androidx.j.ai, androidx.j.ag.e
                    public void b(@androidx.annotation.ah ag agVar) {
                        view2.setTag(aa.e.save_overlay_view, null);
                        at.a(viewGroup).b(view4);
                        agVar.b(this);
                    }
                });
            }
        }
        return b3;
    }

    @Override // androidx.j.ag
    public boolean a(an anVar, an anVar2) {
        if (anVar == null && anVar2 == null) {
            return false;
        }
        if (anVar != null && anVar2 != null && anVar2.f859a.containsKey(o) != anVar.f859a.containsKey(o)) {
            return false;
        }
        c b2 = b(anVar, anVar2);
        if (b2.f878a) {
            return b2.c == 0 || b2.d == 0;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a extends AnimatorListenerAdapter implements a.InterfaceC0067a, ag.e {

        /* renamed from: a, reason: collision with root package name */
        boolean f877a = false;
        private final View b;
        private final int c;
        private final ViewGroup d;
        private final boolean e;
        private boolean f;

        @Override // androidx.j.ag.e
        public void a(@androidx.annotation.ah ag agVar) {
        }

        @Override // androidx.j.ag.e
        public void e(@androidx.annotation.ah ag agVar) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }

        a(View view, int i, boolean z) {
            this.b = view;
            this.c = i;
            this.d = (ViewGroup) view.getParent();
            this.e = z;
            a(true);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.j.a.InterfaceC0067a
        public void onAnimationPause(Animator animator) {
            if (this.f877a) {
                return;
            }
            ay.a(this.b, this.c);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, androidx.j.a.InterfaceC0067a
        public void onAnimationResume(Animator animator) {
            if (this.f877a) {
                return;
            }
            ay.a(this.b, 0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f877a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            a();
        }

        @Override // androidx.j.ag.e
        public void b(@androidx.annotation.ah ag agVar) {
            a();
            agVar.b(this);
        }

        @Override // androidx.j.ag.e
        public void c(@androidx.annotation.ah ag agVar) {
            a(false);
        }

        @Override // androidx.j.ag.e
        public void d(@androidx.annotation.ah ag agVar) {
            a(true);
        }

        private void a() {
            if (!this.f877a) {
                ay.a(this.b, this.c);
                if (this.d != null) {
                    this.d.invalidate();
                }
            }
            a(false);
        }

        private void a(boolean z) {
            if (!this.e || this.f == z || this.d == null) {
                return;
            }
            this.f = z;
            at.a(this.d, z);
        }
    }
}
