package com.google.android.material.v;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.c.i;

/* loaded from: /home/user/work/dex/classes.dex */
public class a extends androidx.f.a.a {
    public static final Parcelable.Creator<a> CREATOR = new Parcelable.ClassLoaderCreator<a>() { // from class: com.google.android.material.v.a.1
        @Override // android.os.Parcelable.ClassLoaderCreator
        @ah
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a createFromParcel(@ah Parcel parcel, ClassLoader classLoader) {
            return new a(parcel, classLoader);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Parcelable.Creator
        @ai
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public a createFromParcel(@ah Parcel parcel) {
            return new a(parcel, null);
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
    public final i<String, Bundle> f1488a;

    public a(Parcelable parcelable) {
        super(parcelable);
        this.f1488a = new i<>();
    }

    private a(@ah Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int readInt = parcel.readInt();
        String[] strArr = new String[readInt];
        parcel.readStringArray(strArr);
        Bundle[] bundleArr = new Bundle[readInt];
        parcel.readTypedArray(bundleArr, Bundle.CREATOR);
        this.f1488a = new i<>(readInt);
        for (int i = 0; i < readInt; i++) {
            this.f1488a.put(strArr[i], bundleArr[i]);
        }
    }

    @Override // androidx.f.a.a, android.os.Parcelable
    public void writeToParcel(@ah Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        int size = this.f1488a.size();
        parcel.writeInt(size);
        String[] strArr = new String[size];
        Bundle[] bundleArr = new Bundle[size];
        for (int i2 = 0; i2 < size; i2++) {
            strArr[i2] = this.f1488a.b(i2);
            bundleArr[i2] = this.f1488a.c(i2);
        }
        parcel.writeStringArray(strArr);
        parcel.writeTypedArray(bundleArr, 0);
    }

    @ah
    public String toString() {
        return "ExtendableSavedState{" + Integer.toHexString(System.identityHashCode(this)) + " states=" + this.f1488a + "}";
    }
}
