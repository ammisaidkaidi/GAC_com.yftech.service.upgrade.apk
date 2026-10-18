.class public final Landroidx/core/n/a/g$e;
.super Landroidx/core/n/a/g$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/n/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Landroidx/core/n/a/g$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 154
    iget-object p0, p0, Landroidx/core/n/a/g$e;->a:Landroid/os/Bundle;

    const-string v0, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public b()I
    .locals 1

    .line 161
    iget-object p0, p0, Landroidx/core/n/a/g$e;->a:Landroid/os/Bundle;

    const-string v0, "android.view.accessibility.action.ARGUMENT_COLUMN_INT"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method
