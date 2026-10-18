.class final Lcom/google/android/material/datepicker/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/datepicker/i;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/i;
    .locals 2
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 62
    new-instance p0, Lcom/google/android/material/datepicker/i;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    const/4 p1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/datepicker/i;-><init>(JLcom/google/android/material/datepicker/i$1;)V

    return-object p0
.end method

.method public a(I)[Lcom/google/android/material/datepicker/i;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 68
    new-array p0, p1, [Lcom/google/android/material/datepicker/i;

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

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/i$1;->a(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/i;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 58
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/i$1;->a(I)[Lcom/google/android/material/datepicker/i;

    move-result-object p0

    return-object p0
.end method
