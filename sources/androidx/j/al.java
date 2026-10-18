package androidx.j;

import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.ap;
import androidx.j.ag;
import java.util.ArrayList;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: /home/user/work/dex/classes.dex */
public class al extends ag {
    public static final int o = 0;
    public static final int p = 1;
    private static final int q = 1;
    private static final int r = 2;
    private static final int s = 4;
    private static final int t = 8;

    /* renamed from: a, reason: collision with root package name */
    int f854a;
    boolean b;
    private ArrayList<ag> u;
    private boolean v;
    private int w;

    @Override // androidx.j.ag
    @androidx.annotation.ah
    public /* synthetic */ ag a(@androidx.annotation.ah Class cls) {
        return c((Class<?>) cls);
    }

    @Override // androidx.j.ag
    @androidx.annotation.ah
    public /* synthetic */ ag b(@androidx.annotation.ah Class cls) {
        return d((Class<?>) cls);
    }

    public al() {
        this.u = new ArrayList<>();
        this.v = true;
        this.b = false;
        this.w = 0;
    }

    @SuppressLint({"RestrictedApi"})
    public al(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.u = new ArrayList<>();
        this.v = true;
        this.b = false;
        this.w = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, af.i);
        a(androidx.core.b.b.h.a(obtainStyledAttributes, (XmlPullParser) attributeSet, "transitionOrdering", 0, 0));
        obtainStyledAttributes.recycle();
    }

    @androidx.annotation.ah
    public al a(int i) {
        switch (i) {
            case 0:
                this.v = true;
                return this;
            case 1:
                this.v = false;
                return this;
            default:
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i);
        }
    }

    public int b() {
        return !this.v ? 1 : 0;
    }

    @androidx.annotation.ah
    public al a(@androidx.annotation.ah ag agVar) {
        c(agVar);
        if (this.h >= 0) {
            agVar.a(this.h);
        }
        if ((this.w & 1) != 0) {
            agVar.a(f());
        }
        if ((this.w & 2) != 0) {
            agVar.a(r());
        }
        if ((this.w & 4) != 0) {
            agVar.a(o());
        }
        if ((this.w & 8) != 0) {
            agVar.a(p());
        }
        return this;
    }

    private void c(@androidx.annotation.ah ag agVar) {
        this.u.add(agVar);
        agVar.k = this;
    }

    public int c() {
        return this.u.size();
    }

    @androidx.annotation.ai
    public ag d(int i) {
        if (i < 0 || i >= this.u.size()) {
            return null;
        }
        return this.u.get(i);
    }

    @Override // androidx.j.ag
    @androidx.annotation.ah
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public al a(long j) {
        super.a(j);
        if (this.h >= 0 && this.u != null) {
            int size = this.u.size();
            for (int i = 0; i < size; i++) {
                this.u.get(i).a(j);
            }
        }
        return this;
    }

    @Override // androidx.j.ag
    @androidx.annotation.ah
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public al b(long j) {
        return (al) super.b(j);
    }

    @Override // androidx.j.ag
    @androidx.annotation.ah
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public al a(@androidx.annotation.ai TimeInterpolator timeInterpolator) {
        this.w |= 1;
        if (this.u != null) {
            int size = this.u.size();
            for (int i = 0; i < size; i++) {
                this.u.get(i).a(timeInterpolator);
            }
        }
        return (al) super.a(timeInterpolator);
    }

    @Override // androidx.j.ag
    @androidx.annotation.ah
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public al c(@androidx.annotation.ah View view) {
        for (int i = 0; i < this.u.size(); i++) {
            this.u.get(i).c(view);
        }
        return (al) super.c(view);
    }

    @Override // androidx.j.ag
    @androidx.annotation.ah
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public al b(@androidx.annotation.w int i) {
        for (int i2 = 0; i2 < this.u.size(); i2++) {
            this.u.get(i2).b(i);
        }
        return (al) super.b(i);
    }

    @Override // androidx.j.ag
    @androidx.annotation.ah
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public al a(@androidx.annotation.ah String str) {
        for (int i = 0; i < this.u.size(); i++) {
            this.u.get(i).a(str);
        }
        return (al) super.a(str);
    }

    @androidx.annotation.ah
    public al c(@androidx.annotation.ah Class<?> cls) {
        for (int i = 0; i < this.u.size(); i++) {
            this.u.get(i).a(cls);
        }
        return (al) super.a(cls);
    }

    @Override // androidx.j.ag
    @androidx.annotation.ah
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public al a(@androidx.annotation.ah ag.e eVar) {
        return (al) super.a(eVar);
    }

    @Override // androidx.j.ag
    @androidx.annotation.ah
    /* renamed from: f, reason: merged with bridge method [inline-methods] */
    public al c(@androidx.annotation.w int i) {
        for (int i2 = 0; i2 < this.u.size(); i2++) {
            this.u.get(i2).c(i);
        }
        return (al) super.c(i);
    }

    @Override // androidx.j.ag
    @androidx.annotation.ah
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public al d(@androidx.annotation.ah View view) {
        for (int i = 0; i < this.u.size(); i++) {
            this.u.get(i).d(view);
        }
        return (al) super.d(view);
    }

    @androidx.annotation.ah
    public al d(@androidx.annotation.ah Class<?> cls) {
        for (int i = 0; i < this.u.size(); i++) {
            this.u.get(i).b(cls);
        }
        return (al) super.b(cls);
    }

    @Override // androidx.j.ag
    @androidx.annotation.ah
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public al b(@androidx.annotation.ah String str) {
        for (int i = 0; i < this.u.size(); i++) {
            this.u.get(i).b(str);
        }
        return (al) super.b(str);
    }

    @Override // androidx.j.ag
    @androidx.annotation.ah
    public ag a(@androidx.annotation.ah View view, boolean z) {
        for (int i = 0; i < this.u.size(); i++) {
            this.u.get(i).a(view, z);
        }
        return super.a(view, z);
    }

    @Override // androidx.j.ag
    @androidx.annotation.ah
    public ag a(@androidx.annotation.ah String str, boolean z) {
        for (int i = 0; i < this.u.size(); i++) {
            this.u.get(i).a(str, z);
        }
        return super.a(str, z);
    }

    @Override // androidx.j.ag
    @androidx.annotation.ah
    public ag a(int i, boolean z) {
        for (int i2 = 0; i2 < this.u.size(); i2++) {
            this.u.get(i2).a(i, z);
        }
        return super.a(i, z);
    }

    @Override // androidx.j.ag
    @androidx.annotation.ah
    public ag a(@androidx.annotation.ah Class<?> cls, boolean z) {
        for (int i = 0; i < this.u.size(); i++) {
            this.u.get(i).a(cls, z);
        }
        return super.a(cls, z);
    }

    @Override // androidx.j.ag
    @androidx.annotation.ah
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public al b(@androidx.annotation.ah ag.e eVar) {
        return (al) super.b(eVar);
    }

    @Override // androidx.j.ag
    public void a(w wVar) {
        super.a(wVar);
        this.w |= 4;
        if (this.u != null) {
            for (int i = 0; i < this.u.size(); i++) {
                this.u.get(i).a(wVar);
            }
        }
    }

    @androidx.annotation.ah
    public al b(@androidx.annotation.ah ag agVar) {
        this.u.remove(agVar);
        agVar.k = null;
        return this;
    }

    private void u() {
        a aVar = new a(this);
        Iterator<ag> it = this.u.iterator();
        while (it.hasNext()) {
            it.next().a(aVar);
        }
        this.f854a = this.u.size();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static class a extends ai {

        /* renamed from: a, reason: collision with root package name */
        al f856a;

        a(al alVar) {
            this.f856a = alVar;
        }

        @Override // androidx.j.ai, androidx.j.ag.e
        public void e(@androidx.annotation.ah ag agVar) {
            if (this.f856a.b) {
                return;
            }
            this.f856a.l();
            this.f856a.b = true;
        }

        @Override // androidx.j.ai, androidx.j.ag.e
        public void b(@androidx.annotation.ah ag agVar) {
            al alVar = this.f856a;
            alVar.f854a--;
            if (this.f856a.f854a == 0) {
                this.f856a.b = false;
                this.f856a.m();
            }
            agVar.b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.j.ag
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void a(ViewGroup viewGroup, ao aoVar, ao aoVar2, ArrayList<an> arrayList, ArrayList<an> arrayList2) {
        long e = e();
        int size = this.u.size();
        for (int i = 0; i < size; i++) {
            ag agVar = this.u.get(i);
            if (e > 0 && (this.v || i == 0)) {
                long e2 = agVar.e();
                if (e2 > 0) {
                    agVar.b(e2 + e);
                } else {
                    agVar.b(e);
                }
            }
            agVar.a(viewGroup, aoVar, aoVar2, arrayList, arrayList2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.j.ag
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void g() {
        if (this.u.isEmpty()) {
            l();
            m();
            return;
        }
        u();
        if (!this.v) {
            for (int i = 1; i < this.u.size(); i++) {
                ag agVar = this.u.get(i - 1);
                final ag agVar2 = this.u.get(i);
                agVar.a(new ai() { // from class: androidx.j.al.1
                    @Override // androidx.j.ai, androidx.j.ag.e
                    public void b(@androidx.annotation.ah ag agVar3) {
                        agVar2.g();
                        agVar3.b(this);
                    }
                });
            }
            ag agVar3 = this.u.get(0);
            if (agVar3 != null) {
                agVar3.g();
                return;
            }
            return;
        }
        Iterator<ag> it = this.u.iterator();
        while (it.hasNext()) {
            it.next().g();
        }
    }

    @Override // androidx.j.ag
    public void a(@androidx.annotation.ah an anVar) {
        if (b(anVar.b)) {
            Iterator<ag> it = this.u.iterator();
            while (it.hasNext()) {
                ag next = it.next();
                if (next.b(anVar.b)) {
                    next.a(anVar);
                    anVar.c.add(next);
                }
            }
        }
    }

    @Override // androidx.j.ag
    public void b(@androidx.annotation.ah an anVar) {
        if (b(anVar.b)) {
            Iterator<ag> it = this.u.iterator();
            while (it.hasNext()) {
                ag next = it.next();
                if (next.b(anVar.b)) {
                    next.b(anVar);
                    anVar.c.add(next);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.j.ag
    public void c(an anVar) {
        super.c(anVar);
        int size = this.u.size();
        for (int i = 0; i < size; i++) {
            this.u.get(i).c(anVar);
        }
    }

    @Override // androidx.j.ag
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void e(View view) {
        super.e(view);
        int size = this.u.size();
        for (int i = 0; i < size; i++) {
            this.u.get(i).e(view);
        }
    }

    @Override // androidx.j.ag
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void f(View view) {
        super.f(view);
        int size = this.u.size();
        for (int i = 0; i < size; i++) {
            this.u.get(i).f(view);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.j.ag
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void n() {
        super.n();
        int size = this.u.size();
        for (int i = 0; i < size; i++) {
            this.u.get(i).n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.j.ag
    @androidx.annotation.ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
    public void b(ViewGroup viewGroup) {
        super.b(viewGroup);
        int size = this.u.size();
        for (int i = 0; i < size; i++) {
            this.u.get(i).b(viewGroup);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.j.ag
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public al c(ViewGroup viewGroup) {
        super.c(viewGroup);
        int size = this.u.size();
        for (int i = 0; i < size; i++) {
            this.u.get(i).c(viewGroup);
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.j.ag
    public void d(boolean z) {
        super.d(z);
        int size = this.u.size();
        for (int i = 0; i < size; i++) {
            this.u.get(i).d(z);
        }
    }

    @Override // androidx.j.ag
    public void a(ak akVar) {
        super.a(akVar);
        this.w |= 2;
        int size = this.u.size();
        for (int i = 0; i < size; i++) {
            this.u.get(i).a(akVar);
        }
    }

    @Override // androidx.j.ag
    public void a(ag.c cVar) {
        super.a(cVar);
        this.w |= 8;
        int size = this.u.size();
        for (int i = 0; i < size; i++) {
            this.u.get(i).a(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.j.ag
    public String c(String str) {
        String c = super.c(str);
        for (int i = 0; i < this.u.size(); i++) {
            StringBuilder sb = new StringBuilder();
            sb.append(c);
            sb.append("\n");
            sb.append(this.u.get(i).c(str + "  "));
            c = sb.toString();
        }
        return c;
    }

    @Override // androidx.j.ag
    /* renamed from: s */
    public ag clone() {
        al alVar = (al) super.clone();
        alVar.u = new ArrayList<>();
        int size = this.u.size();
        for (int i = 0; i < size; i++) {
            alVar.c(this.u.get(i).clone());
        }
        return alVar;
    }
}
