.class final Landroidx/recyclerview/widget/RecyclerView$t$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Landroidx/recyclerview/widget/RecyclerView$t;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroidx/recyclerview/widget/RecyclerView$t;
    .locals 1

    .line 12342
    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$t;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/recyclerview/widget/RecyclerView$t;
    .locals 0

    .line 12337
    new-instance p0, Landroidx/recyclerview/widget/RecyclerView$t;

    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public a(I)[Landroidx/recyclerview/widget/RecyclerView$t;
    .locals 0

    .line 12347
    new-array p0, p1, [Landroidx/recyclerview/widget/RecyclerView$t;

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 12334
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$t$1;->a(Landroid/os/Parcel;)Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object p0

    return-object p0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 12334
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$t$1;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object p0

    return-object p0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 12334
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$t$1;->a(I)[Landroidx/recyclerview/widget/RecyclerView$t;

    move-result-object p0

    return-object p0
.end method
