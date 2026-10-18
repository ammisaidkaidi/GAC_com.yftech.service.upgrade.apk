.class Landroidx/core/n/a/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/n/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:Landroidx/core/n/a/c$a;


# direct methods
.method constructor <init>(Landroidx/core/n/a/c$a;)V
    .locals 0
    .param p1    # Landroidx/core/n/a/c$a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroidx/core/n/a/c$c;->a:Landroidx/core/n/a/c$a;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 95
    :cond_0
    instance-of v0, p1, Landroidx/core/n/a/c$c;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 98
    :cond_1
    check-cast p1, Landroidx/core/n/a/c$c;

    .line 100
    iget-object p0, p0, Landroidx/core/n/a/c$c;->a:Landroidx/core/n/a/c$a;

    iget-object p1, p1, Landroidx/core/n/a/c$c;->a:Landroidx/core/n/a/c$a;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 87
    iget-object p0, p0, Landroidx/core/n/a/c$c;->a:Landroidx/core/n/a/c$a;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public onAccessibilityStateChanged(Z)V
    .locals 0

    .line 105
    iget-object p0, p0, Landroidx/core/n/a/c$c;->a:Landroidx/core/n/a/c$a;

    invoke-interface {p0, p1}, Landroidx/core/n/a/c$a;->a(Z)V

    return-void
.end method
