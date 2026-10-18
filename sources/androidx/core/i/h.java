package androidx.core.i;

import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.z;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.transformation.FabTransformationScrimBehavior;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes.dex */
interface h {
    @z(a = RecyclerView.m)
    int a(Locale locale);

    Object a();

    Locale a(int i);

    @ai
    Locale a(@ah String[] strArr);

    boolean b();

    @z(a = FabTransformationScrimBehavior.c)
    int c();

    String d();
}
