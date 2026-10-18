.class public final Landroidx/core/n/a/g$g;
.super Landroidx/core/n/a/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/n/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 113
    invoke-direct {p0}, Landroidx/core/n/a/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 119
    iget-object p0, p0, Landroidx/core/n/a/g$g;->a:Landroid/os/Bundle;

    const-string v0, "ACTION_ARGUMENT_SELECTION_START_INT"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public b()I
    .locals 1

    .line 126
    iget-object p0, p0, Landroidx/core/n/a/g$g;->a:Landroid/os/Bundle;

    const-string v0, "ACTION_ARGUMENT_SELECTION_END_INT"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
