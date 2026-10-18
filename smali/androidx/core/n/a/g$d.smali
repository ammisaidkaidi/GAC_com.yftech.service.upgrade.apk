.class public final Landroidx/core/n/a/g$d;
.super Landroidx/core/n/a/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/n/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 183
    invoke-direct {p0}, Landroidx/core/n/a/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 189
    iget-object p0, p0, Landroidx/core/n/a/g$d;->a:Landroid/os/Bundle;

    const-string v0, "ACTION_ARGUMENT_MOVE_WINDOW_X"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public b()I
    .locals 1

    .line 196
    iget-object p0, p0, Landroidx/core/n/a/g$d;->a:Landroid/os/Bundle;

    const-string v0, "ACTION_ARGUMENT_MOVE_WINDOW_Y"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
