package androidx.viewpager2.a;

import androidx.annotation.ah;
import androidx.annotation.ak;
import androidx.viewpager2.a.h;
import java.util.ArrayList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
final class b extends h.f {

    /* renamed from: a, reason: collision with root package name */
    @ah
    private final List<h.f> f1117a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(int i) {
        this.f1117a = new ArrayList(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(h.f fVar) {
        this.f1117a.add(fVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(h.f fVar) {
        this.f1117a.remove(fVar);
    }

    @Override // androidx.viewpager2.a.h.f
    public void a(int i, float f, @ak int i2) {
        try {
            Iterator<h.f> it = this.f1117a.iterator();
            while (it.hasNext()) {
                it.next().a(i, f, i2);
            }
        } catch (ConcurrentModificationException e) {
            a(e);
        }
    }

    @Override // androidx.viewpager2.a.h.f
    public void b(int i) {
        try {
            Iterator<h.f> it = this.f1117a.iterator();
            while (it.hasNext()) {
                it.next().b(i);
            }
        } catch (ConcurrentModificationException e) {
            a(e);
        }
    }

    @Override // androidx.viewpager2.a.h.f
    public void a(int i) {
        try {
            Iterator<h.f> it = this.f1117a.iterator();
            while (it.hasNext()) {
                it.next().a(i);
            }
        } catch (ConcurrentModificationException e) {
            a(e);
        }
    }

    private void a(ConcurrentModificationException concurrentModificationException) {
        throw new IllegalStateException("Adding and removing callbacks during dispatch to callbacks is not supported", concurrentModificationException);
    }
}
