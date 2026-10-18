.class final Landroidx/core/n/a/c$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;


# annotations
.annotation build Landroidx/annotation/am;
    a = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/n/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field final a:Landroidx/core/n/a/c$d;


# direct methods
.method constructor <init>(Landroidx/core/n/a/c$d;)V
    .locals 0
    .param p1    # Landroidx/core/n/a/c$d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-object p1, p0, Landroidx/core/n/a/c$e;->a:Landroidx/core/n/a/c$d;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 218
    :cond_0
    instance-of v0, p1, Landroidx/core/n/a/c$e;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 221
    :cond_1
    check-cast p1, Landroidx/core/n/a/c$e;

    .line 223
    iget-object p0, p0, Landroidx/core/n/a/c$e;->a:Landroidx/core/n/a/c$d;

    iget-object p1, p1, Landroidx/core/n/a/c$e;->a:Landroidx/core/n/a/c$d;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 210
    iget-object p0, p0, Landroidx/core/n/a/c$e;->a:Landroidx/core/n/a/c$d;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public onTouchExplorationStateChanged(Z)V
    .locals 0

    .line 228
    iget-object p0, p0, Landroidx/core/n/a/c$e;->a:Landroidx/core/n/a/c$d;

    invoke-interface {p0, p1}, Landroidx/core/n/a/c$d;->a(Z)V

    return-void
.end method
