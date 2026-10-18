package com.google.android.material.datepicker;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.ah;
import java.util.Arrays;

/* loaded from: /home/user/work/dex/classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.Creator<a>() { // from class: com.google.android.material.datepicker.a.1
        @Override // android.os.Parcelable.Creator
        @ah
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a createFromParcel(@ah Parcel parcel) {
            return new a((p) parcel.readParcelable(p.class.getClassLoader()), (p) parcel.readParcelable(p.class.getClassLoader()), (p) parcel.readParcelable(p.class.getClassLoader()), (b) parcel.readParcelable(b.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        @ah
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a[] newArray(int i) {
            return new a[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    @ah
    private final p f1237a;

    @ah
    private final p b;

    @ah
    private final p c;
    private final b d;
    private final int e;
    private final int f;

    /* loaded from: /home/user/work/dex/classes.dex */
    public interface b extends Parcelable {
        boolean a(long j);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private a(@ah p pVar, @ah p pVar2, @ah p pVar3, b bVar) {
        this.f1237a = pVar;
        this.b = pVar2;
        this.c = pVar3;
        this.d = bVar;
        if (pVar.compareTo(pVar3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (pVar3.compareTo(pVar2) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        this.f = pVar.b(pVar2) + 1;
        this.e = (pVar2.b - pVar.b) + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(long j) {
        return this.f1237a.a(1) <= j && j <= this.b.a(this.b.d);
    }

    public b a() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public p b() {
        return this.f1237a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public p c() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ah
    public p d() {
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e() {
        return this.f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f1237a.equals(aVar.f1237a) && this.b.equals(aVar.b) && this.c.equals(aVar.c) && this.d.equals(aVar.d);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.f1237a, this.b, this.c, this.d});
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f1237a, 0);
        parcel.writeParcelable(this.b, 0);
        parcel.writeParcelable(this.c, 0);
        parcel.writeParcelable(this.d, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public p a(p pVar) {
        if (pVar.compareTo(this.f1237a) < 0) {
            return this.f1237a;
        }
        return pVar.compareTo(this.b) > 0 ? this.b : pVar;
    }

    /* renamed from: com.google.android.material.datepicker.a$a, reason: collision with other inner class name */
    /* loaded from: /home/user/work/dex/classes.dex */
    public static final class C0086a {

        /* renamed from: a, reason: collision with root package name */
        static final long f1238a = y.a(p.a(1900, 0).e);
        static final long b = y.a(p.a(2100, 11).e);
        private static final String c = "DEEP_COPY_VALIDATOR_KEY";
        private long d;
        private long e;
        private Long f;
        private b g;

        public C0086a() {
            this.d = f1238a;
            this.e = b;
            this.g = i.b(Long.MIN_VALUE);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0086a(@ah a aVar) {
            this.d = f1238a;
            this.e = b;
            this.g = i.b(Long.MIN_VALUE);
            this.d = aVar.f1237a.e;
            this.e = aVar.b.e;
            this.f = Long.valueOf(aVar.c.e);
            this.g = aVar.d;
        }

        @ah
        public C0086a a(long j) {
            this.d = j;
            return this;
        }

        @ah
        public C0086a b(long j) {
            this.e = j;
            return this;
        }

        @ah
        public C0086a c(long j) {
            this.f = Long.valueOf(j);
            return this;
        }

        @ah
        public C0086a a(b bVar) {
            this.g = bVar;
            return this;
        }

        @ah
        public a a() {
            if (this.f == null) {
                long aL = l.aL();
                if (this.d > aL || aL > this.e) {
                    aL = this.d;
                }
                this.f = Long.valueOf(aL);
            }
            Bundle bundle = new Bundle();
            bundle.putParcelable(c, this.g);
            return new a(p.a(this.d), p.a(this.e), p.a(this.f.longValue()), (b) bundle.getParcelable(c));
        }
    }
}
