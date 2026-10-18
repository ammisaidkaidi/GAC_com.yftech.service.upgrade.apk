package androidx.appcompat.view.menu;

import android.graphics.drawable.Drawable;
import androidx.annotation.ap;

@ap(a = {ap.a.LIBRARY_GROUP_PREFIX})
/* loaded from: /home/user/work/dex/classes.dex */
public interface o {

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface a {
        void a(j jVar, int i);

        void a(boolean z, char c);

        boolean a();

        boolean c();

        j getItemData();

        void setCheckable(boolean z);

        void setChecked(boolean z);

        void setEnabled(boolean z);

        void setIcon(Drawable drawable);

        void setTitle(CharSequence charSequence);
    }

    void a(g gVar);

    int getWindowAnimations();
}
