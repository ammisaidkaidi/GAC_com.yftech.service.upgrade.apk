package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.widget.SpinnerAdapter;

/* loaded from: /home/user/work/dex/classes.dex */
public interface aw extends SpinnerAdapter {
    @androidx.annotation.ai
    Resources.Theme a();

    void a(@androidx.annotation.ai Resources.Theme theme);

    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private final Context f239a;
        private final LayoutInflater b;
        private LayoutInflater c;

        public a(@androidx.annotation.ah Context context) {
            this.f239a = context;
            this.b = LayoutInflater.from(context);
        }

        public void a(@androidx.annotation.ai Resources.Theme theme) {
            if (theme == null) {
                this.c = null;
            } else if (theme == this.f239a.getTheme()) {
                this.c = this.b;
            } else {
                this.c = LayoutInflater.from(new androidx.appcompat.view.d(this.f239a, theme));
            }
        }

        @androidx.annotation.ai
        public Resources.Theme a() {
            if (this.c == null) {
                return null;
            }
            return this.c.getContext().getTheme();
        }

        @androidx.annotation.ah
        public LayoutInflater b() {
            return this.c != null ? this.c : this.b;
        }
    }
}
