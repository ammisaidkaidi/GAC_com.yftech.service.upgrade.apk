.class final Landroidx/g/a/a$e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/g/a/a$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/g/a/a$e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/g/a/a$e;
    .locals 1

    .line 2132
    new-instance p0, Landroidx/g/a/a$e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/g/a/a$e;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/g/a/a$e;
    .locals 0

    .line 2127
    new-instance p0, Landroidx/g/a/a$e;

    invoke-direct {p0, p1, p2}, Landroidx/g/a/a$e;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public a(I)[Landroidx/g/a/a$e;
    .locals 0

    .line 2137
    new-array p0, p1, [Landroidx/g/a/a$e;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 2124
    invoke-virtual {p0, p1}, Landroidx/g/a/a$e$1;->a(Landroid/os/Parcel;)Landroidx/g/a/a$e;

    move-result-object p0

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 2124
    invoke-virtual {p0, p1, p2}, Landroidx/g/a/a$e$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/g/a/a$e;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 2124
    invoke-virtual {p0, p1}, Landroidx/g/a/a$e$1;->a(I)[Landroidx/g/a/a$e;

    move-result-object p0

    return-object p0
.end method
