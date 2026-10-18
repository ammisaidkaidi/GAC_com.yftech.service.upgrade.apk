.class public final Landroidx/core/n/a/g$b;
.super Landroidx/core/n/a/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/n/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Landroidx/core/n/a/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 80
    iget-object p0, p0, Landroidx/core/n/a/g$b;->a:Landroid/os/Bundle;

    const-string v0, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public b()Z
    .locals 1

    .line 88
    iget-object p0, p0, Landroidx/core/n/a/g$b;->a:Landroid/os/Bundle;

    const-string v0, "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
