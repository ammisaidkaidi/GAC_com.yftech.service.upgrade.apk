package androidx.recyclerview.widget;

import androidx.recyclerview.widget.af;

/* loaded from: /home/user/work/dex/classes.dex */
interface ae<T> {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a<T> {
        void a(int i);

        void a(int i, int i2);

        void a(int i, int i2, int i3, int i4, int i5);

        void a(af.a<T> aVar);
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface b<T> {
        void a(int i, int i2);

        void a(int i, af.a<T> aVar);

        void b(int i, int i2);
    }

    a<T> a(a<T> aVar);

    b<T> a(b<T> bVar);
}
