package androidx.core.l;

import java.nio.CharBuffer;
import java.util.Locale;

/* loaded from: /home/user/work/dex/classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public static final androidx.core.l.e f494a = new e(null, false);
    public static final androidx.core.l.e b = new e(null, true);
    public static final androidx.core.l.e c = new e(b.f496a, false);
    public static final androidx.core.l.e d = new e(b.f496a, true);
    public static final androidx.core.l.e e = new e(a.f495a, false);
    public static final androidx.core.l.e f = C0038f.f499a;
    private static final int g = 0;
    private static final int h = 1;
    private static final int i = 2;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/user/work/dex/classes.dex */
    public interface c {
        int a(CharSequence charSequence, int i, int i2);
    }

    static int a(int i2) {
        switch (i2) {
            case 0:
                return 1;
            case 1:
            case 2:
                return 0;
            default:
                return 2;
        }
    }

    static int b(int i2) {
        switch (i2) {
            case 0:
                return 1;
            case 1:
            case 2:
                return 0;
            default:
                switch (i2) {
                    case 14:
                    case 15:
                        return 1;
                    case 16:
                    case 17:
                        return 0;
                    default:
                        return 2;
                }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static abstract class d implements androidx.core.l.e {

        /* renamed from: a, reason: collision with root package name */
        private final c f497a;

        protected abstract boolean a();

        d(c cVar) {
            this.f497a = cVar;
        }

        @Override // androidx.core.l.e
        public boolean a(char[] cArr, int i, int i2) {
            return a(CharBuffer.wrap(cArr), i, i2);
        }

        @Override // androidx.core.l.e
        public boolean a(CharSequence charSequence, int i, int i2) {
            if (charSequence == null || i < 0 || i2 < 0 || charSequence.length() - i2 < i) {
                throw new IllegalArgumentException();
            }
            if (this.f497a == null) {
                return a();
            }
            return b(charSequence, i, i2);
        }

        private boolean b(CharSequence charSequence, int i, int i2) {
            switch (this.f497a.a(charSequence, i, i2)) {
                case 0:
                    return true;
                case 1:
                    return false;
                default:
                    return a();
            }
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class e extends d {

        /* renamed from: a, reason: collision with root package name */
        private final boolean f498a;

        e(c cVar, boolean z) {
            super(cVar);
            this.f498a = z;
        }

        @Override // androidx.core.l.f.d
        protected boolean a() {
            return this.f498a;
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class b implements c {

        /* renamed from: a, reason: collision with root package name */
        static final b f496a = new b();

        @Override // androidx.core.l.f.c
        public int a(CharSequence charSequence, int i, int i2) {
            int i3 = i2 + i;
            int i4 = 2;
            while (i < i3 && i4 == 2) {
                i4 = f.b(Character.getDirectionality(charSequence.charAt(i)));
                i++;
            }
            return i4;
        }

        private b() {
        }
    }

    /* loaded from: /home/user/work/dex/classes.dex */
    private static class a implements c {

        /* renamed from: a, reason: collision with root package name */
        static final a f495a = new a(true);
        private final boolean b;

        /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0012. Please report as an issue. */
        @Override // androidx.core.l.f.c
        public int a(CharSequence charSequence, int i, int i2) {
            int i3 = i2 + i;
            boolean z = false;
            while (i < i3) {
                switch (f.a(Character.getDirectionality(charSequence.charAt(i)))) {
                    case 0:
                        if (this.b) {
                            return 0;
                        }
                        z = true;
                        i++;
                        z = z;
                    case 1:
                        if (!this.b) {
                            return 1;
                        }
                        z = true;
                        i++;
                        z = z;
                    default:
                        i++;
                        z = z;
                }
            }
            if (z) {
                return this.b ? 1 : 0;
            }
            return 2;
        }

        private a(boolean z) {
            this.b = z;
        }
    }

    /* renamed from: androidx.core.l.f$f, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    private static class C0038f extends d {

        /* renamed from: a, reason: collision with root package name */
        static final C0038f f499a = new C0038f();

        C0038f() {
            super(null);
        }

        @Override // androidx.core.l.f.d
        protected boolean a() {
            return g.a(Locale.getDefault()) == 1;
        }
    }

    private f() {
    }
}
