.class final Lcom/google/android/material/v/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/v/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/google/android/material/v/a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/google/android/material/v/a;
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 103
    new-instance p0, Lcom/google/android/material/v/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/material/v/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/google/android/material/v/a$1;)V

    return-object p0
.end method

.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/material/v/a;
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 97
    new-instance p0, Lcom/google/android/material/v/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/v/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/google/android/material/v/a$1;)V

    return-object p0
.end method

.method public a(I)[Lcom/google/android/material/v/a;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 109
    new-array p0, p1, [Lcom/google/android/material/v/a;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/android/material/v/a$1;->a(Landroid/os/Parcel;)Lcom/google/android/material/v/a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 92
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/v/a$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/google/android/material/v/a;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 92
    invoke-virtual {p0, p1}, Lcom/google/android/material/v/a$1;->a(I)[Lcom/google/android/material/v/a;

    move-result-object p0

    return-object p0
.end method
