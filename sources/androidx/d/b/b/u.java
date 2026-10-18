package androidx.d.b.b;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.util.Xml;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.d.b.b.s;
import androidx.d.e.m;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: /home/user/work/dex/classes.dex */
public class u {

    /* renamed from: a, reason: collision with root package name */
    public static final String f631a = "MotionScene";
    static final int b = 0;
    static final int c = 1;
    public static final int d = -1;
    public static final int g = 0;
    public static final int h = 1;
    static final int k = 0;
    static final int l = 1;
    static final int m = 2;
    static final int n = 3;
    static final int o = 4;
    static final int p = 5;
    private static final boolean q = false;
    private static final int r = -1;
    private static final int s = -2;
    private MotionEvent E;
    private s.d H;
    private boolean I;
    float i;
    float j;
    private final s t;
    androidx.d.e.n e = null;
    a f = null;
    private boolean u = false;
    private ArrayList<a> v = new ArrayList<>();
    private a w = null;
    private ArrayList<a> x = new ArrayList<>();
    private SparseArray<androidx.d.e.g> y = new SparseArray<>();
    private HashMap<String, Integer> z = new HashMap<>();
    private SparseIntArray A = new SparseIntArray();
    private boolean B = false;
    private int C = 400;
    private int D = 0;
    private boolean F = false;
    private boolean G = false;

    protected void a(boolean z, int i, int i2, int i3, int i4) {
    }

    public float b(View view, int i) {
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0015, code lost:
    
        if (r2 != (-1)) goto L13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(int i, int i2) {
        int i3;
        int i4;
        if (this.e != null) {
            i3 = this.e.a(i, -1, -1);
            if (i3 == -1) {
                i3 = i;
            }
            i4 = this.e.a(i2, -1, -1);
        } else {
            i3 = i;
        }
        i4 = i2;
        Iterator<a> it = this.v.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if ((next.i == i4 && next.j == i3) || (next.i == i2 && next.j == i)) {
                this.f = next;
                if (this.f == null || this.f.r == null) {
                    return;
                }
                this.f.r.a(this.I);
                return;
            }
        }
        a aVar = this.w;
        Iterator<a> it2 = this.x.iterator();
        while (it2.hasNext()) {
            a next2 = it2.next();
            if (next2.i == i2) {
                aVar = next2;
            }
        }
        a aVar2 = new a(this, aVar);
        aVar2.j = i3;
        aVar2.i = i4;
        if (i3 != -1) {
            this.v.add(aVar2);
        }
        this.f = aVar2;
    }

    public void a(a aVar) {
        int d2 = d(aVar);
        if (d2 == -1) {
            this.v.add(aVar);
        } else {
            this.v.set(d2, aVar);
        }
    }

    public void b(a aVar) {
        int d2 = d(aVar);
        if (d2 != -1) {
            this.v.remove(d2);
        }
    }

    private int d(a aVar) {
        int i = aVar.g;
        if (i == -1) {
            throw new IllegalArgumentException("The transition must have an id");
        }
        for (int i2 = 0; i2 < this.v.size(); i2++) {
            if (this.v.get(i2).g == i) {
                return i2;
            }
        }
        return -1;
    }

    public boolean a(s sVar) {
        return sVar == this.t && sVar.i == this;
    }

    public void c(a aVar) {
        this.f = aVar;
        if (this.f == null || this.f.r == null) {
            return;
        }
        this.f.r.a(this.I);
    }

    private int g(int i) {
        int a2;
        return (this.e == null || (a2 = this.e.a(i, -1, -1)) == -1) ? i : a2;
    }

    public List<a> a(int i) {
        int g2 = g(i);
        ArrayList arrayList = new ArrayList();
        Iterator<a> it = this.v.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (next.j == g2 || next.i == g2) {
                arrayList.add(next);
            }
        }
        return arrayList;
    }

    public void a(s sVar, int i) {
        Iterator<a> it = this.v.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (next.s.size() > 0) {
                Iterator it2 = next.s.iterator();
                while (it2.hasNext()) {
                    ((a.ViewOnClickListenerC0048a) it2.next()).a(sVar);
                }
            }
        }
        Iterator<a> it3 = this.x.iterator();
        while (it3.hasNext()) {
            a next2 = it3.next();
            if (next2.s.size() > 0) {
                Iterator it4 = next2.s.iterator();
                while (it4.hasNext()) {
                    ((a.ViewOnClickListenerC0048a) it4.next()).a(sVar);
                }
            }
        }
        Iterator<a> it5 = this.v.iterator();
        while (it5.hasNext()) {
            a next3 = it5.next();
            if (next3.s.size() > 0) {
                Iterator it6 = next3.s.iterator();
                while (it6.hasNext()) {
                    ((a.ViewOnClickListenerC0048a) it6.next()).a(sVar, i, next3);
                }
            }
        }
        Iterator<a> it7 = this.x.iterator();
        while (it7.hasNext()) {
            a next4 = it7.next();
            if (next4.s.size() > 0) {
                Iterator it8 = next4.s.iterator();
                while (it8.hasNext()) {
                    ((a.ViewOnClickListenerC0048a) it8.next()).a(sVar, i, next4);
                }
            }
        }
    }

    public a a(int i, float f, float f2, MotionEvent motionEvent) {
        if (i != -1) {
            List<a> a2 = a(i);
            float f3 = 0.0f;
            a aVar = null;
            RectF rectF = new RectF();
            for (a aVar2 : a2) {
                if (!aVar2.u && aVar2.r != null) {
                    aVar2.r.a(this.I);
                    RectF a3 = aVar2.r.a(this.t, rectF);
                    if (a3 == null || motionEvent == null || a3.contains(motionEvent.getX(), motionEvent.getY())) {
                        RectF a4 = aVar2.r.a(this.t, rectF);
                        if (a4 == null || motionEvent == null || a4.contains(motionEvent.getX(), motionEvent.getY())) {
                            float g2 = aVar2.r.g(f, f2);
                            float f4 = aVar2.i == i ? g2 * (-1.0f) : g2 * 1.1f;
                            if (f4 > f3) {
                                aVar = aVar2;
                                f3 = f4;
                            }
                        }
                    }
                }
            }
            return aVar;
        }
        return this.f;
    }

    public ArrayList<a> a() {
        return this.v;
    }

    public a b(int i) {
        Iterator<a> it = this.v.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (next.g == i) {
                return next;
            }
        }
        return null;
    }

    public int[] b() {
        int[] iArr = new int[this.y.size()];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = this.y.keyAt(i);
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b(s sVar, int i) {
        if (n() || this.u) {
            return false;
        }
        Iterator<a> it = this.v.iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (next.t != 0 && this.f != next) {
                if (i == next.j && (next.t == 4 || next.t == 2)) {
                    sVar.setState(s.h.FINISHED);
                    sVar.setTransition(next);
                    if (next.t == 4) {
                        sVar.c();
                        sVar.setState(s.h.SETUP);
                        sVar.setState(s.h.MOVING);
                    } else {
                        sVar.setProgress(1.0f);
                        sVar.a(true);
                        sVar.setState(s.h.SETUP);
                        sVar.setState(s.h.MOVING);
                        sVar.setState(s.h.FINISHED);
                        sVar.d();
                    }
                    return true;
                }
                if (i == next.i && (next.t == 3 || next.t == 1)) {
                    sVar.setState(s.h.FINISHED);
                    sVar.setTransition(next);
                    if (next.t == 3) {
                        sVar.b();
                        sVar.setState(s.h.SETUP);
                        sVar.setState(s.h.MOVING);
                    } else {
                        sVar.setProgress(0.0f);
                        sVar.a(true);
                        sVar.setState(s.h.SETUP);
                        sVar.setState(s.h.MOVING);
                        sVar.setState(s.h.FINISHED);
                        sVar.d();
                    }
                    return true;
                }
            }
        }
        return false;
    }

    private boolean n() {
        return this.H != null;
    }

    public void a(boolean z) {
        this.I = z;
        if (this.f == null || this.f.r == null) {
            return;
        }
        this.f.r.a(this.I);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final int f633a = 0;
        public static final int b = 1;
        public static final int c = 2;
        public static final int d = 3;
        public static final int e = 4;
        static final int f = 1;
        private int g;
        private boolean h;
        private int i;
        private int j;
        private int k;
        private String l;
        private int m;
        private int n;
        private float o;
        private final u p;
        private ArrayList<j> q;
        private y r;
        private ArrayList<ViewOnClickListenerC0048a> s;
        private int t;
        private boolean u;
        private int v;
        private int w;
        private int x;

        public int a() {
            return this.w;
        }

        public void a(Context context, XmlPullParser xmlPullParser) {
            this.s.add(new ViewOnClickListenerC0048a(context, this, xmlPullParser));
        }

        public void a(int i) {
            this.t = i;
        }

        public int b() {
            return this.t;
        }

        public int c() {
            return this.g;
        }

        public int d() {
            return this.i;
        }

        public int e() {
            return this.j;
        }

        public void b(int i) {
            this.n = i;
        }

        public int f() {
            return this.n;
        }

        public float g() {
            return this.o;
        }

        public List<j> h() {
            return this.q;
        }

        public List<ViewOnClickListenerC0048a> i() {
            return this.s;
        }

        public y j() {
            return this.r;
        }

        public void a(float f2) {
            this.o = f2;
        }

        public void c(int i) {
            this.v = i;
        }

        public int k() {
            return this.v;
        }

        public boolean l() {
            return !this.u;
        }

        public void a(boolean z) {
            this.u = !z;
        }

        public String a(Context context) {
            String resourceEntryName = this.j == -1 ? "null" : context.getResources().getResourceEntryName(this.j);
            if (this.i == -1) {
                return resourceEntryName + " -> null";
            }
            return resourceEntryName + " -> " + context.getResources().getResourceEntryName(this.i);
        }

        public boolean d(int i) {
            return (this.x & i) != 0;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.d.b.b.u$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        public static class ViewOnClickListenerC0048a implements View.OnClickListener {
            public static final int c = 1;
            public static final int d = 17;
            public static final int e = 16;
            public static final int f = 256;
            public static final int g = 4096;

            /* renamed from: a, reason: collision with root package name */
            int f634a;
            int b;
            private final a h;

            public ViewOnClickListenerC0048a(Context context, a aVar, XmlPullParser xmlPullParser) {
                this.f634a = -1;
                this.b = 17;
                this.h = aVar;
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), m.C0052m.OnClick);
                int indexCount = obtainStyledAttributes.getIndexCount();
                for (int i = 0; i < indexCount; i++) {
                    int index = obtainStyledAttributes.getIndex(i);
                    if (index == m.C0052m.OnClick_targetId) {
                        this.f634a = obtainStyledAttributes.getResourceId(index, this.f634a);
                    } else if (index == m.C0052m.OnClick_clickAction) {
                        this.b = obtainStyledAttributes.getInt(index, this.b);
                    }
                }
                obtainStyledAttributes.recycle();
            }

            public void a(s sVar, int i, a aVar) {
                View view = sVar;
                if (this.f634a != -1) {
                    view = sVar.findViewById(this.f634a);
                }
                if (view != null) {
                    int i2 = aVar.j;
                    int i3 = aVar.i;
                    if (i2 == -1) {
                        view.setOnClickListener(this);
                        return;
                    }
                    if ((((this.b & 1) != 0 && i == i2) | ((this.b & 1) != 0 && i == i2) | ((this.b & 256) != 0 && i == i2) | ((this.b & 16) != 0 && i == i3)) || ((this.b & 4096) != 0 && i == i3)) {
                        view.setOnClickListener(this);
                        return;
                    }
                    return;
                }
                Log.e(u.f631a, "OnClick could not find id " + this.f634a);
            }

            public void a(s sVar) {
                if (this.f634a == -1) {
                    return;
                }
                View findViewById = sVar.findViewById(this.f634a);
                if (findViewById == null) {
                    Log.e(u.f631a, " (*)  could not find id " + this.f634a);
                    return;
                }
                findViewById.setOnClickListener(null);
            }

            boolean a(a aVar, s sVar) {
                if (this.h == aVar) {
                    return true;
                }
                int i = this.h.i;
                int i2 = this.h.j;
                return i2 == -1 ? sVar.l != i : sVar.l == i2 || sVar.l == i;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                s sVar = this.h.p.t;
                if (sVar.i()) {
                    if (this.h.j != -1) {
                        a aVar = this.h.p.f;
                        boolean z = ((this.b & 1) == 0 && (this.b & 256) == 0) ? false : true;
                        boolean z2 = ((this.b & 16) == 0 && (this.b & 4096) == 0) ? false : true;
                        if (z && z2) {
                            if (this.h.p.f != this.h) {
                                sVar.setTransition(this.h);
                            }
                            if (sVar.getCurrentState() == sVar.getEndState() || sVar.getProgress() > 0.5f) {
                                z = false;
                            } else {
                                z2 = false;
                            }
                        }
                        if (a(aVar, sVar)) {
                            if (z && (this.b & 1) != 0) {
                                sVar.setTransition(this.h);
                                sVar.c();
                                return;
                            }
                            if (z2 && (this.b & 16) != 0) {
                                sVar.setTransition(this.h);
                                sVar.b();
                                return;
                            } else if (z && (this.b & 256) != 0) {
                                sVar.setTransition(this.h);
                                sVar.setProgress(1.0f);
                                return;
                            } else {
                                if (!z2 || (this.b & 4096) == 0) {
                                    return;
                                }
                                sVar.setTransition(this.h);
                                sVar.setProgress(0.0f);
                                return;
                            }
                        }
                        return;
                    }
                    int currentState = sVar.getCurrentState();
                    if (currentState == -1) {
                        sVar.b(this.h.i);
                        return;
                    }
                    a aVar2 = new a(this.h.p, this.h);
                    aVar2.j = currentState;
                    aVar2.i = this.h.i;
                    sVar.setTransition(aVar2);
                    sVar.c();
                }
            }
        }

        a(u uVar, a aVar) {
            this.g = -1;
            this.h = false;
            this.i = -1;
            this.j = -1;
            this.k = 0;
            this.l = null;
            this.m = -1;
            this.n = 400;
            this.o = 0.0f;
            this.q = new ArrayList<>();
            this.r = null;
            this.s = new ArrayList<>();
            this.t = 0;
            this.u = false;
            this.v = -1;
            this.w = 0;
            this.x = 0;
            this.p = uVar;
            if (aVar != null) {
                this.v = aVar.v;
                this.k = aVar.k;
                this.l = aVar.l;
                this.m = aVar.m;
                this.n = aVar.n;
                this.q = aVar.q;
                this.o = aVar.o;
                this.w = aVar.w;
            }
        }

        public a(int i, u uVar, int i2, int i3) {
            this.g = -1;
            this.h = false;
            this.i = -1;
            this.j = -1;
            this.k = 0;
            this.l = null;
            this.m = -1;
            this.n = 400;
            this.o = 0.0f;
            this.q = new ArrayList<>();
            this.r = null;
            this.s = new ArrayList<>();
            this.t = 0;
            this.u = false;
            this.v = -1;
            this.w = 0;
            this.x = 0;
            this.g = i;
            this.p = uVar;
            this.j = i2;
            this.i = i3;
            this.n = uVar.C;
            this.w = uVar.D;
        }

        a(u uVar, Context context, XmlPullParser xmlPullParser) {
            this.g = -1;
            this.h = false;
            this.i = -1;
            this.j = -1;
            this.k = 0;
            this.l = null;
            this.m = -1;
            this.n = 400;
            this.o = 0.0f;
            this.q = new ArrayList<>();
            this.r = null;
            this.s = new ArrayList<>();
            this.t = 0;
            this.u = false;
            this.v = -1;
            this.w = 0;
            this.x = 0;
            this.n = uVar.C;
            this.w = uVar.D;
            this.p = uVar;
            a(uVar, context, Xml.asAttributeSet(xmlPullParser));
        }

        private void a(u uVar, Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, m.C0052m.Transition);
            a(uVar, context, obtainStyledAttributes);
            obtainStyledAttributes.recycle();
        }

        private void a(u uVar, Context context, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                if (index == m.C0052m.Transition_constraintSetEnd) {
                    this.i = typedArray.getResourceId(index, this.i);
                    if ("layout".equals(context.getResources().getResourceTypeName(this.i))) {
                        androidx.d.e.g gVar = new androidx.d.e.g();
                        gVar.b(context, this.i);
                        uVar.y.append(this.i, gVar);
                    }
                } else if (index == m.C0052m.Transition_constraintSetStart) {
                    this.j = typedArray.getResourceId(index, this.j);
                    if ("layout".equals(context.getResources().getResourceTypeName(this.j))) {
                        androidx.d.e.g gVar2 = new androidx.d.e.g();
                        gVar2.b(context, this.j);
                        uVar.y.append(this.j, gVar2);
                    }
                } else if (index == m.C0052m.Transition_motionInterpolator) {
                    TypedValue peekValue = typedArray.peekValue(index);
                    if (peekValue.type == 1) {
                        this.m = typedArray.getResourceId(index, -1);
                        if (this.m != -1) {
                            this.k = -2;
                        }
                    } else if (peekValue.type == 3) {
                        this.l = typedArray.getString(index);
                        if (this.l.indexOf("/") > 0) {
                            this.m = typedArray.getResourceId(index, -1);
                            this.k = -2;
                        } else {
                            this.k = -1;
                        }
                    } else {
                        this.k = typedArray.getInteger(index, this.k);
                    }
                } else if (index == m.C0052m.Transition_duration) {
                    this.n = typedArray.getInt(index, this.n);
                } else if (index == m.C0052m.Transition_staggered) {
                    this.o = typedArray.getFloat(index, this.o);
                } else if (index == m.C0052m.Transition_autoTransition) {
                    this.t = typedArray.getInteger(index, this.t);
                } else if (index == m.C0052m.Transition_android_id) {
                    this.g = typedArray.getResourceId(index, this.g);
                } else if (index == m.C0052m.Transition_transitionDisable) {
                    this.u = typedArray.getBoolean(index, this.u);
                } else if (index == m.C0052m.Transition_pathMotionArc) {
                    this.v = typedArray.getInteger(index, -1);
                } else if (index == m.C0052m.Transition_layoutDuringTransition) {
                    this.w = typedArray.getInteger(index, 0);
                } else if (index == m.C0052m.Transition_transitionFlags) {
                    this.x = typedArray.getInteger(index, 0);
                }
            }
            if (this.j == -1) {
                this.h = true;
            }
        }
    }

    public u(s sVar) {
        this.t = sVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public u(Context context, s sVar, int i) {
        this.t = sVar;
        a(context, i);
        this.y.put(m.g.motion_base, new androidx.d.e.g());
        this.z.put("motion_base", Integer.valueOf(m.g.motion_base));
    }

    /* JADX WARN: Code restructure failed: missing block: B:76:0x014c, code lost:
    
        continue;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x0012. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void a(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        a aVar = null;
        try {
            int eventType = xml.getEventType();
            while (true) {
                char c2 = 1;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xml.getName();
                } else {
                    switch (eventType) {
                        case 2:
                            String name = xml.getName();
                            if (this.B) {
                                System.out.println("parsing = " + name);
                            }
                            switch (name.hashCode()) {
                                case -1349929691:
                                    if (name.equals("ConstraintSet")) {
                                        c2 = 5;
                                        break;
                                    }
                                    break;
                                case -1239391468:
                                    if (name.equals("KeyFrameSet")) {
                                        c2 = 6;
                                        break;
                                    }
                                    break;
                                case 269306229:
                                    if (name.equals("Transition")) {
                                        break;
                                    }
                                    break;
                                case 312750793:
                                    if (name.equals("OnClick")) {
                                        c2 = 3;
                                        break;
                                    }
                                    break;
                                case 327855227:
                                    if (name.equals("OnSwipe")) {
                                        c2 = 2;
                                        break;
                                    }
                                    break;
                                case 793277014:
                                    if (name.equals(f631a)) {
                                        c2 = 0;
                                        break;
                                    }
                                    break;
                                case 1382829617:
                                    if (name.equals("StateSet")) {
                                        c2 = 4;
                                        break;
                                    }
                                    break;
                            }
                            c2 = 65535;
                            switch (c2) {
                                case 0:
                                    a(context, xml);
                                    break;
                                case 1:
                                    ArrayList<a> arrayList = this.v;
                                    a aVar2 = new a(this, context, xml);
                                    arrayList.add(aVar2);
                                    if (this.f == null && !aVar2.h) {
                                        this.f = aVar2;
                                        if (this.f != null && this.f.r != null) {
                                            this.f.r.a(this.I);
                                        }
                                    }
                                    if (aVar2.h) {
                                        if (aVar2.i == -1) {
                                            this.w = aVar2;
                                        } else {
                                            this.x.add(aVar2);
                                        }
                                        this.v.remove(aVar2);
                                    }
                                    aVar = aVar2;
                                    break;
                                case 2:
                                    if (aVar == null) {
                                        Log.v(f631a, " OnSwipe (" + context.getResources().getResourceEntryName(i) + ".xml:" + xml.getLineNumber() + ")");
                                    }
                                    aVar.r = new y(context, this.t, xml);
                                    break;
                                case 3:
                                    aVar.a(context, xml);
                                    break;
                                case 4:
                                    this.e = new androidx.d.e.n(context, xml);
                                    break;
                                case 5:
                                    b(context, xml);
                                    break;
                                case 6:
                                    aVar.q.add(new j(context, xml));
                                    break;
                                default:
                                    Log.v(f631a, "WARNING UNKNOWN ATTRIBUTE " + name);
                                    break;
                            }
                    }
                }
                eventType = xml.next();
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    private void a(Context context, XmlPullParser xmlPullParser) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), m.C0052m.MotionScene);
        int indexCount = obtainStyledAttributes.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == m.C0052m.MotionScene_defaultDuration) {
                this.C = obtainStyledAttributes.getInt(index, this.C);
            } else if (index == m.C0052m.MotionScene_layoutDuringTransition) {
                this.D = obtainStyledAttributes.getInteger(index, 0);
            }
        }
        obtainStyledAttributes.recycle();
    }

    private int b(Context context, String str) {
        int i;
        if (str.contains("/")) {
            i = context.getResources().getIdentifier(str.substring(str.indexOf(47) + 1), "id", context.getPackageName());
            if (this.B) {
                System.out.println("id getMap res = " + i);
            }
        } else {
            i = -1;
        }
        if (i != -1) {
            return i;
        }
        if (str != null && str.length() > 1) {
            return Integer.parseInt(str.substring(1));
        }
        Log.e(f631a, "error in parsing id");
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0054, code lost:
    
        if (r8.equals("deriveConstraintsFrom") != false) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void b(Context context, XmlPullParser xmlPullParser) {
        androidx.d.e.g gVar = new androidx.d.e.g();
        gVar.a(false);
        int attributeCount = xmlPullParser.getAttributeCount();
        int i = 0;
        int i2 = -1;
        int i3 = -1;
        while (true) {
            boolean z = true;
            if (i >= attributeCount) {
                if (i2 != -1) {
                    if (this.t.v != 0) {
                        gVar.b(true);
                    }
                    gVar.a(context, xmlPullParser);
                    if (i3 != -1) {
                        this.A.put(i2, i3);
                    }
                    this.y.put(i2, gVar);
                    return;
                }
                return;
            }
            String attributeName = xmlPullParser.getAttributeName(i);
            String attributeValue = xmlPullParser.getAttributeValue(i);
            if (this.B) {
                System.out.println("id string = " + attributeValue);
            }
            int hashCode = attributeName.hashCode();
            if (hashCode != -1496482599) {
                if (hashCode == 3355 && attributeName.equals("id")) {
                    z = false;
                }
                z = -1;
            }
            switch (z) {
                case false:
                    i2 = b(context, attributeValue);
                    this.z.put(a(attributeValue), Integer.valueOf(i2));
                    break;
                case true:
                    i3 = b(context, attributeValue);
                    break;
            }
            i++;
        }
    }

    public androidx.d.e.g a(Context context, String str) {
        if (this.B) {
            System.out.println("id " + str);
            System.out.println("size " + this.y.size());
        }
        for (int i = 0; i < this.y.size(); i++) {
            int keyAt = this.y.keyAt(i);
            String resourceName = context.getResources().getResourceName(keyAt);
            if (this.B) {
                System.out.println("Id for <" + i + "> is <" + resourceName + "> looking for <" + str + ">");
            }
            if (str.equals(resourceName)) {
                return this.y.get(keyAt);
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public androidx.d.e.g c(int i) {
        return a(i, -1, -1);
    }

    androidx.d.e.g a(int i, int i2, int i3) {
        int a2;
        if (this.B) {
            System.out.println("id " + i);
            System.out.println("size " + this.y.size());
        }
        if (this.e != null && (a2 = this.e.a(i, i2, i3)) != -1) {
            i = a2;
        }
        if (this.y.get(i) == null) {
            Log.e(f631a, "Warning could not find ConstraintSet id/" + c.a(this.t.getContext(), i) + " In MotionScene");
            return this.y.get(this.y.keyAt(0));
        }
        return this.y.get(i);
    }

    public void a(int i, androidx.d.e.g gVar) {
        this.y.put(i, gVar);
    }

    public void a(p pVar) {
        if (this.f != null) {
            Iterator it = this.f.q.iterator();
            while (it.hasNext()) {
                ((j) it.next()).a(pVar);
            }
        } else if (this.w != null) {
            Iterator it2 = this.w.q.iterator();
            while (it2.hasNext()) {
                ((j) it2.next()).a(pVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e a(Context context, int i, int i2, int i3) {
        if (this.f == null) {
            return null;
        }
        Iterator it = this.f.q.iterator();
        while (it.hasNext()) {
            j jVar = (j) it.next();
            for (Integer num : jVar.a()) {
                if (i2 == num.intValue()) {
                    Iterator<e> it2 = jVar.a(num.intValue()).iterator();
                    while (it2.hasNext()) {
                        e next = it2.next();
                        if (next.b == i3 && next.e == i) {
                            return next;
                        }
                    }
                }
            }
        }
        return null;
    }

    int d(int i) {
        Iterator<a> it = this.v.iterator();
        while (it.hasNext()) {
            if (it.next().j == i) {
                return 0;
            }
        }
        return 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(View view, int i) {
        if (this.f == null) {
            return false;
        }
        Iterator it = this.f.q.iterator();
        while (it.hasNext()) {
            Iterator<e> it2 = ((j) it.next()).a(view.getId()).iterator();
            while (it2.hasNext()) {
                if (it2.next().b == i) {
                    return true;
                }
            }
        }
        return false;
    }

    public void a(View view, int i, String str, Object obj) {
        if (this.f == null) {
            return;
        }
        Iterator it = this.f.q.iterator();
        while (it.hasNext()) {
            Iterator<e> it2 = ((j) it.next()).a(view.getId()).iterator();
            while (it2.hasNext()) {
                if (it2.next().b == i) {
                    int i2 = ((obj != null ? ((Float) obj).floatValue() : 0.0f) > 0.0f ? 1 : ((obj != null ? ((Float) obj).floatValue() : 0.0f) == 0.0f ? 0 : -1));
                    str.equalsIgnoreCase("app:PerpendicularPath_percent");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c() {
        Iterator<a> it = this.v.iterator();
        while (it.hasNext()) {
            if (it.next().r != null) {
                return true;
            }
        }
        return (this.f == null || this.f.r == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(MotionEvent motionEvent, int i, s sVar) {
        RectF rectF = new RectF();
        if (this.H == null) {
            this.H = this.t.a();
        }
        this.H.a(motionEvent);
        if (i != -1) {
            int action = motionEvent.getAction();
            boolean z = false;
            if (action == 0) {
                this.i = motionEvent.getRawX();
                this.j = motionEvent.getRawY();
                this.E = motionEvent;
                this.F = false;
                if (this.f.r != null) {
                    RectF b2 = this.f.r.b(this.t, rectF);
                    if (b2 == null || b2.contains(this.E.getX(), this.E.getY())) {
                        RectF a2 = this.f.r.a(this.t, rectF);
                        if (a2 != null && !a2.contains(this.E.getX(), this.E.getY())) {
                            this.G = true;
                        } else {
                            this.G = false;
                        }
                        this.f.r.b(this.i, this.j);
                        return;
                    }
                    this.E = null;
                    this.F = true;
                    return;
                }
                return;
            }
            if (action == 2 && !this.F) {
                float rawY = motionEvent.getRawY() - this.j;
                float rawX = motionEvent.getRawX() - this.i;
                if ((rawX == 0.0d && rawY == 0.0d) || this.E == null) {
                    return;
                }
                a a3 = a(i, rawX, rawY, this.E);
                if (a3 != null) {
                    sVar.setTransition(a3);
                    RectF a4 = this.f.r.a(this.t, rectF);
                    if (a4 != null && !a4.contains(this.E.getX(), this.E.getY())) {
                        z = true;
                    }
                    this.G = z;
                    this.f.r.a(this.i, this.j);
                }
            }
        }
        if (this.F) {
            return;
        }
        if (this.f != null && this.f.r != null && !this.G) {
            this.f.r.a(motionEvent, this.H, i, this);
        }
        this.i = motionEvent.getRawX();
        this.j = motionEvent.getRawY();
        if (motionEvent.getAction() != 1 || this.H == null) {
            return;
        }
        this.H.a();
        this.H = null;
        if (sVar.l != -1) {
            b(sVar, sVar.l);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f, float f2) {
        if (this.f == null || this.f.r == null) {
            return;
        }
        this.f.r.e(f, f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(float f, float f2) {
        if (this.f == null || this.f.r == null) {
            return;
        }
        this.f.r.d(f, f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float c(float f, float f2) {
        if (this.f == null || this.f.r == null) {
            return 0.0f;
        }
        return this.f.r.c(f, f2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d() {
        if (this.f == null) {
            return -1;
        }
        return this.f.j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        if (this.f == null) {
            return -1;
        }
        return this.f.i;
    }

    public Interpolator f() {
        switch (this.f.k) {
            case -2:
                return AnimationUtils.loadInterpolator(this.t.getContext(), this.f.m);
            case -1:
                final androidx.d.b.a.c a2 = androidx.d.b.a.c.a(this.f.l);
                return new Interpolator() { // from class: androidx.d.b.b.u.1
                    @Override // android.animation.TimeInterpolator
                    public float getInterpolation(float f) {
                        return (float) a2.a(f);
                    }
                };
            case 0:
                return new AccelerateDecelerateInterpolator();
            case 1:
                return new AccelerateInterpolator();
            case 2:
                return new DecelerateInterpolator();
            case 3:
                return null;
            case 4:
                return new AnticipateInterpolator();
            case 5:
                return new BounceInterpolator();
            default:
                return null;
        }
    }

    public int g() {
        if (this.f != null) {
            return this.f.n;
        }
        return this.C;
    }

    public void e(int i) {
        if (this.f != null) {
            this.f.b(i);
        } else {
            this.C = i;
        }
    }

    public int h() {
        if (this.f != null) {
            return this.f.v;
        }
        return -1;
    }

    public float i() {
        if (this.f != null) {
            return this.f.o;
        }
        return 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float j() {
        if (this.f == null || this.f.r == null) {
            return 0.0f;
        }
        return this.f.r.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float k() {
        if (this.f == null || this.f.r == null) {
            return 0.0f;
        }
        return this.f.r.d();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void l() {
        if (this.f == null || this.f.r == null) {
            return;
        }
        this.f.r.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean m() {
        if (this.f == null || this.f.r == null) {
            return false;
        }
        return this.f.r.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(s sVar) {
        for (int i = 0; i < this.y.size(); i++) {
            int keyAt = this.y.keyAt(i);
            if (h(keyAt)) {
                Log.e(f631a, "Cannot be derived from yourself");
                return;
            }
            i(keyAt);
        }
        for (int i2 = 0; i2 < this.y.size(); i2++) {
            this.y.valueAt(i2).a(sVar);
        }
    }

    private boolean h(int i) {
        int i2 = this.A.get(i);
        int size = this.A.size();
        while (i2 > 0) {
            if (i2 == i) {
                return true;
            }
            int i3 = size - 1;
            if (size < 0) {
                return true;
            }
            i2 = this.A.get(i2);
            size = i3;
        }
        return false;
    }

    private void i(int i) {
        int i2 = this.A.get(i);
        if (i2 > 0) {
            i(this.A.get(i));
            androidx.d.e.g gVar = this.y.get(i);
            androidx.d.e.g gVar2 = this.y.get(i2);
            if (gVar2 == null) {
                Log.e(f631a, "ERROR! invalid deriveConstraintsFrom: @id/" + c.a(this.t.getContext(), i2));
                return;
            }
            gVar.a(gVar2);
            this.A.put(i, -1);
        }
    }

    public static String a(String str) {
        if (str == null) {
            return com.yftech.service.upgrade.a.d;
        }
        int indexOf = str.indexOf(47);
        return indexOf < 0 ? str : str.substring(indexOf + 1);
    }

    public int b(String str) {
        return this.z.get(str).intValue();
    }

    public String f(int i) {
        for (Map.Entry<String, Integer> entry : this.z.entrySet()) {
            if (entry.getValue().intValue() == i) {
                return entry.getKey();
            }
        }
        return null;
    }

    public void b(boolean z) {
        this.u = z;
    }
}
