package androidx.core.b;

import android.content.SharedPreferences;
import androidx.annotation.ah;

@Deprecated
/* loaded from: /home/user/work/dex/classes.dex */
public final class h {

    @Deprecated
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private static a f417a;
        private final C0029a b = new C0029a();

        /* renamed from: androidx.core.b.h$a$a, reason: collision with other inner class name */
        /* loaded from: /home/user/work/dex/classes.dex */
        private static class C0029a {
            C0029a() {
            }

            public void a(@ah SharedPreferences.Editor editor) {
                try {
                    editor.apply();
                } catch (AbstractMethodError unused) {
                    editor.commit();
                }
            }
        }

        private a() {
        }

        @Deprecated
        public static a a() {
            if (f417a == null) {
                f417a = new a();
            }
            return f417a;
        }

        @Deprecated
        public void a(@ah SharedPreferences.Editor editor) {
            this.b.a(editor);
        }
    }

    private h() {
    }
}
