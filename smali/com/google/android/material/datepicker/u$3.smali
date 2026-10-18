.class final Lcom/google/android/material/datepicker/u$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/datepicker/u;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/u;
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 283
    new-instance p0, Lcom/google/android/material/datepicker/u;

    invoke-direct {p0}, Lcom/google/android/material/datepicker/u;-><init>()V

    .line 284
    const-class v0, Ljava/lang/Long;

    .line 285
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 284
    invoke-static {p0, v0}, Lcom/google/android/material/datepicker/u;->c(Lcom/google/android/material/datepicker/u;Ljava/lang/Long;)Ljava/lang/Long;

    .line 286
    const-class v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-static {p0, p1}, Lcom/google/android/material/datepicker/u;->d(Lcom/google/android/material/datepicker/u;Ljava/lang/Long;)Ljava/lang/Long;

    return-object p0
.end method

.method public a(I)[Lcom/google/android/material/datepicker/u;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 293
    new-array p0, p1, [Lcom/google/android/material/datepicker/u;

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

    .line 279
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/u$3;->a(Landroid/os/Parcel;)Lcom/google/android/material/datepicker/u;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 279
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/u$3;->a(I)[Lcom/google/android/material/datepicker/u;

    move-result-object p0

    return-object p0
.end method
