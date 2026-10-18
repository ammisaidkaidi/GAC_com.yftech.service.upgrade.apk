.class final Landroidx/viewpager2/a/h$l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/a/h$l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/viewpager2/a/h$l;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/viewpager2/a/h$l;
    .locals 1

    const/4 v0, 0x0

    .line 422
    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/a/h$l$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/viewpager2/a/h$l;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/viewpager2/a/h$l;
    .locals 1

    .line 415
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p0, v0, :cond_0

    new-instance p0, Landroidx/viewpager2/a/h$l;

    invoke-direct {p0, p1, p2}, Landroidx/viewpager2/a/h$l;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/viewpager2/a/h$l;

    invoke-direct {p0, p1}, Landroidx/viewpager2/a/h$l;-><init>(Landroid/os/Parcel;)V

    :goto_0
    return-object p0
.end method

.method public a(I)[Landroidx/viewpager2/a/h$l;
    .locals 0

    .line 427
    new-array p0, p1, [Landroidx/viewpager2/a/h$l;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 412
    invoke-virtual {p0, p1}, Landroidx/viewpager2/a/h$l$1;->a(Landroid/os/Parcel;)Landroidx/viewpager2/a/h$l;

    move-result-object p0

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 412
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/a/h$l$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/viewpager2/a/h$l;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 412
    invoke-virtual {p0, p1}, Landroidx/viewpager2/a/h$l$1;->a(I)[Landroidx/viewpager2/a/h$l;

    move-result-object p0

    return-object p0
.end method
