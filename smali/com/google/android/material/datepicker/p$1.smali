.class final Lcom/google/android/material/datepicker/p$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/datepicker/p;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/p;
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 198
    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/p;->a(II)Lcom/google/android/material/datepicker/p;

    move-result-object p0

    return-object p0
.end method

.method public a(I)[Lcom/google/android/material/datepicker/p;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 204
    new-array p0, p1, [Lcom/google/android/material/datepicker/p;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 192
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/p$1;->a(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/p;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 192
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/p$1;->a(I)[Lcom/google/android/material/datepicker/p;

    move-result-object p0

    return-object p0
.end method
