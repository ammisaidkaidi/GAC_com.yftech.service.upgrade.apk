package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.ah;
import com.google.android.material.datepicker.a;
import java.util.List;

/* loaded from: /home/user/work/dex/classes.dex */
public final class d implements a.b {
    public static final Parcelable.Creator<d> CREATOR = new Parcelable.Creator<d>() { // from class: com.google.android.material.datepicker.d.1
        @Override // android.os.Parcelable.Creator
        @ah
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public d createFromParcel(@ah Parcel parcel) {
            return new d((List) androidx.core.m.i.a(parcel.readArrayList(a.b.class.getClassLoader())));
        }

        @Override // android.os.Parcelable.Creator
        @ah
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public d[] newArray(int i) {
            return new d[i];
        }
    };

    /* renamed from: a, reason: collision with root package name */
    @ah
    private final List<a.b> f1241a;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    private d(@ah List<a.b> list) {
        this.f1241a = list;
    }

    @ah
    public static a.b a(@ah List<a.b> list) {
        return new d(list);
    }

    @Override // com.google.android.material.datepicker.a.b
    public boolean a(long j) {
        for (a.b bVar : this.f1241a) {
            if (bVar != null && !bVar.a(j)) {
                return false;
            }
        }
        return true;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@ah Parcel parcel, int i) {
        parcel.writeList(this.f1241a);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d) {
            return this.f1241a.equals(((d) obj).f1241a);
        }
        return false;
    }

    public int hashCode() {
        return this.f1241a.hashCode();
    }
}
