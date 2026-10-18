.class Landroidx/j/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/j/bj;


# instance fields
.field private final a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Landroidx/j/bh;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 31
    instance-of v0, p1, Landroidx/j/bh;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/j/bh;

    iget-object p1, p1, Landroidx/j/bh;->a:Landroid/os/IBinder;

    iget-object p0, p0, Landroidx/j/bh;->a:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 36
    iget-object p0, p0, Landroidx/j/bh;->a:Landroid/os/IBinder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
