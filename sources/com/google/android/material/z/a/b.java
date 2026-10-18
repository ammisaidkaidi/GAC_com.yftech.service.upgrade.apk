package com.google.android.material.z.a;

import androidx.annotation.am;

@am(a = 21)
/* loaded from: /home/user/work/dex/classes.dex */
class b {

    /* renamed from: a, reason: collision with root package name */
    private static final a f1507a = new a() { // from class: com.google.android.material.z.a.b.1
        @Override // com.google.android.material.z.a.a
        public c a(float f, float f2, float f3) {
            return c.b(255, v.a(0, 255, f2, f3, f));
        }
    };
    private static final a b = new a() { // from class: com.google.android.material.z.a.b.2
        @Override // com.google.android.material.z.a.a
        public c a(float f, float f2, float f3) {
            return c.a(v.a(255, 0, f2, f3, f), 255);
        }
    };
    private static final a c = new a() { // from class: com.google.android.material.z.a.b.3
        @Override // com.google.android.material.z.a.a
        public c a(float f, float f2, float f3) {
            return c.a(v.a(255, 0, f2, f3, f), v.a(0, 255, f2, f3, f));
        }
    };
    private static final a d = new a() { // from class: com.google.android.material.z.a.b.4
        @Override // com.google.android.material.z.a.a
        public c a(float f, float f2, float f3) {
            float f4 = ((f3 - f2) * 0.35f) + f2;
            return c.a(v.a(255, 0, f2, f4, f), v.a(0, 255, f4, f3, f));
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(int i, boolean z) {
        switch (i) {
            case 0:
                return z ? f1507a : b;
            case 1:
                return z ? b : f1507a;
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
