package androidx.viewpager2.adapter;

import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.ah;
import androidx.core.n.af;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: /home/user/work/dex/classes.dex */
public final class b extends RecyclerView.z {
    private b(@ah FrameLayout frameLayout) {
        super(frameLayout);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public static b a(@ah ViewGroup viewGroup) {
        FrameLayout frameLayout = new FrameLayout(viewGroup.getContext());
        frameLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        frameLayout.setId(af.a());
        frameLayout.setSaveEnabled(false);
        return new b(frameLayout);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public FrameLayout D() {
        return (FrameLayout) this.f1016a;
    }
}
