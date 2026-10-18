.class final Landroidx/l/a/d$i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/l/a/d$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/l/a/d$i;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/l/a/d$i;
    .locals 1

    .line 1420
    new-instance p0, Landroidx/l/a/d$i;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/l/a/d$i;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/l/a/d$i;
    .locals 0

    .line 1415
    new-instance p0, Landroidx/l/a/d$i;

    invoke-direct {p0, p1, p2}, Landroidx/l/a/d$i;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public a(I)[Landroidx/l/a/d$i;
    .locals 0

    .line 1424
    new-array p0, p1, [Landroidx/l/a/d$i;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1412
    invoke-virtual {p0, p1}, Landroidx/l/a/d$i$1;->a(Landroid/os/Parcel;)Landroidx/l/a/d$i;

    move-result-object p0

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 1412
    invoke-virtual {p0, p1, p2}, Landroidx/l/a/d$i$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/l/a/d$i;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1412
    invoke-virtual {p0, p1}, Landroidx/l/a/d$i$1;->a(I)[Landroidx/l/a/d$i;

    move-result-object p0

    return-object p0
.end method
