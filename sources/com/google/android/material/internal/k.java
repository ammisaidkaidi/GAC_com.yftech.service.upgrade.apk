package com.google.android.material.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.SparseArray;
import androidx.annotation.ah;
import androidx.annotation.ai;
import androidx.annotation.ap;

@ap(a = {ap.a.LIBRARY_GROUP})
/* loaded from: /home/user/work/dex/classes.dex */
public class k extends SparseArray<Parcelable> implements Parcelable {
    public static final Parcelable.Creator<k> CREATOR = new Parcelable.ClassLoaderCreator<k>() { // from class: com.google.android.material.internal.k.1
        @Override // android.os.Parcelable.ClassLoaderCreator
        @ah
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public k createFromParcel(@ah Parcel parcel, ClassLoader classLoader) {
            return new k(parcel, classLoader);
        }

        @Override // android.os.Parcelable.Creator
        @ai
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public k createFromParcel(@ah Parcel parcel) {
            return new k(parcel, null);
        }

        @Override // android.os.Parcelable.Creator
        @ah
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public k[] newArray(int i) {
            return new k[i];
        }
    };

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public k() {
    }

    public k(@ah Parcel parcel, @ai ClassLoader classLoader) {
        int readInt = parcel.readInt();
        int[] iArr = new int[readInt];
        parcel.readIntArray(iArr);
        Parcelable[] readParcelableArray = parcel.readParcelableArray(classLoader);
        for (int i = 0; i < readInt; i++) {
            put(iArr[i], readParcelableArray[i]);
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(@ah Parcel parcel, int i) {
        int size = size();
        int[] iArr = new int[size];
        Parcelable[] parcelableArr = new Parcelable[size];
        for (int i2 = 0; i2 < size; i2++) {
            iArr[i2] = keyAt(i2);
            parcelableArr[i2] = valueAt(i2);
        }
        parcel.writeInt(size);
        parcel.writeIntArray(iArr);
        parcel.writeParcelableArray(parcelableArr, i);
    }
}
