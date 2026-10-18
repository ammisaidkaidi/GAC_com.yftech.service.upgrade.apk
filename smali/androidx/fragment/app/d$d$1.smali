.class final Landroidx/fragment/app/d$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/d$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/fragment/app/d$d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/fragment/app/d$d;
    .locals 1

    .line 408
    new-instance p0, Landroidx/fragment/app/d$d;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/d$d;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/fragment/app/d$d;
    .locals 0

    .line 413
    new-instance p0, Landroidx/fragment/app/d$d;

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/d$d;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public a(I)[Landroidx/fragment/app/d$d;
    .locals 0

    .line 418
    new-array p0, p1, [Landroidx/fragment/app/d$d;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 405
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d$d$1;->a(Landroid/os/Parcel;)Landroidx/fragment/app/d$d;

    move-result-object p0

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 405
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/d$d$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/fragment/app/d$d;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 405
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d$d$1;->a(I)[Landroidx/fragment/app/d$d;

    move-result-object p0

    return-object p0
.end method
