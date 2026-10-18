package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Parcelable;
import android.view.ViewGroup;
import androidx.annotation.ah;
import androidx.annotation.ap;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public interface n {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        void a(@ah g gVar, boolean z);

        boolean a(@ah g gVar);
    }

    o a(ViewGroup viewGroup);

    void a(Context context, g gVar);

    void a(Parcelable parcelable);

    void a(g gVar, boolean z);

    void a(a aVar);

    void a(boolean z);

    boolean a(g gVar, j jVar);

    boolean a(s sVar);

    boolean b();

    boolean b(g gVar, j jVar);

    int c();

    Parcelable f();
}
