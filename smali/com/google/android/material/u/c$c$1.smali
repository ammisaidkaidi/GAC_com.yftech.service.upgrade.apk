.class final Lcom/google/android/material/u/c$c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/u/c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/u/c$c;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/material/u/c$c;
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 2156
    new-instance p0, Lcom/google/android/material/u/c$c;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/u/c$c;-><init>(Landroid/os/Parcel;Lcom/google/android/material/u/c$1;)V

    return-object p0
.end method

.method public a(I)[Lcom/google/android/material/u/c$c;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 2162
    new-array p0, p1, [Lcom/google/android/material/u/c$c;

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

    .line 2151
    invoke-virtual {p0, p1}, Lcom/google/android/material/u/c$c$1;->a(Landroid/os/Parcel;)Lcom/google/android/material/u/c$c;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 2151
    invoke-virtual {p0, p1}, Lcom/google/android/material/u/c$c$1;->a(I)[Lcom/google/android/material/u/c$c;

    move-result-object p0

    return-object p0
.end method
