.class final Lcom/google/android/material/c/d$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/c/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/material/c/d$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/material/c/d$a;
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 160
    new-instance p0, Lcom/google/android/material/c/d$a;

    invoke-direct {p0, p1}, Lcom/google/android/material/c/d$a;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public a(I)[Lcom/google/android/material/c/d$a;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 166
    new-array p0, p1, [Lcom/google/android/material/c/d$a;

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

    .line 156
    invoke-virtual {p0, p1}, Lcom/google/android/material/c/d$a$1;->a(Landroid/os/Parcel;)Lcom/google/android/material/c/d$a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 156
    invoke-virtual {p0, p1}, Lcom/google/android/material/c/d$a$1;->a(I)[Lcom/google/android/material/c/d$a;

    move-result-object p0

    return-object p0
.end method
