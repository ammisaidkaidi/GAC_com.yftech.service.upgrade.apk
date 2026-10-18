package com.google.android.material.z;

/* loaded from: /home/user/work/dex/classes.dex */
class b {

    /* renamed from: a, reason: collision with root package name */
    private static final a f1538a = new a() { // from class: com.google.android.material.z.b.1
        @Override // com.google.android.material.z.a
        public c a(float f, float f2, float f3) {
            return c.b(255, u.a(0, 255, f2, f3, f));
        }
    };
    private static final a b = new a() { // from class: com.google.android.material.z.b.2
        @Override // com.google.android.material.z.a
        public c a(float f, float f2, float f3) {
            return c.a(u.a(255, 0, f2, f3, f), 255);
        }
    };
    private static final a c = new a() { // from class: com.google.android.material.z.b.3
        @Override // com.google.android.material.z.a
        public c a(float f, float f2, float f3) {
            return c.a(u.a(255, 0, f2, f3, f), u.a(0, 255, f2, f3, f));
        }
    };
    private static final a d = new a() { // from class: com.google.android.material.z.b.4
        @Override // com.google.android.material.z.a
        public c a(float f, float f2, float f3) {
            float f4 = ((f3 - f2) * 0.35f) + f2;
            return c.a(u.a(255, 0, f2, f4, f), u.a(0, 255, f4, f3, f));
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(int i, boolean z) {
        switch (i) {
            case 0:
                return z ? f1538a : b;
            case 1:
                return z ? b : f1538a;
            case 2:
                return c;
            case 3:
                return d;
            default:
                throw new IllegalArgumentException("Invalid fade mode: " + i);
        }
    }

    private b() {
    }
}
