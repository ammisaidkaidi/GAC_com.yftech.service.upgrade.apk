.class Landroidx/core/n/ao$g;
.super Landroidx/core/n/ao$f;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/am;
    a = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/n/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private c:Landroidx/core/graphics/f;


# direct methods
.method constructor <init>(Landroidx/core/n/ao;Landroid/view/WindowInsets;)V
    .locals 0
    .param p1    # Landroidx/core/n/ao;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 711
    invoke-direct {p0, p1, p2}, Landroidx/core/n/ao$f;-><init>(Landroidx/core/n/ao;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 708
    iput-object p1, p0, Landroidx/core/n/ao$g;->c:Landroidx/core/graphics/f;

    return-void
.end method

.method constructor <init>(Landroidx/core/n/ao;Landroidx/core/n/ao$g;)V
    .locals 0
    .param p1    # Landroidx/core/n/ao;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/core/n/ao$g;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 715
    invoke-direct {p0, p1, p2}, Landroidx/core/n/ao$f;-><init>(Landroidx/core/n/ao;Landroidx/core/n/ao$f;)V

    const/4 p1, 0x0

    .line 708
    iput-object p1, p0, Landroidx/core/n/ao$g;->c:Landroidx/core/graphics/f;

    return-void
.end method


# virtual methods
.method b()Z
    .locals 0

    .line 720
    iget-object p0, p0, Landroidx/core/n/ao$g;->b:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->isConsumed()Z

    move-result p0

    return p0
.end method

.method c()Landroidx/core/n/ao;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 732
    iget-object p0, p0, Landroidx/core/n/ao$g;->b:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/n/ao;->a(Landroid/view/WindowInsets;)Landroidx/core/n/ao;

    move-result-object p0

    return-object p0
.end method

.method d()Landroidx/core/n/ao;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 726
    iget-object p0, p0, Landroidx/core/n/ao$g;->b:Landroid/view/WindowInsets;

    invoke-virtual {p0}, Landroid/view/WindowInsets;->consumeStableInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/n/ao;->a(Landroid/view/WindowInsets;)Landroidx/core/n/ao;

    move-result-object p0

    return-object p0
.end method

.method final h()Landroidx/core/graphics/f;
    .locals 4
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 738
    iget-object v0, p0, Landroidx/core/n/ao$g;->c:Landroidx/core/graphics/f;

    if-nez v0, :cond_0

    .line 739
    iget-object v0, p0, Landroidx/core/n/ao$g;->b:Landroid/view/WindowInsets;

    .line 740
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/core/n/ao$g;->b:Landroid/view/WindowInsets;

    .line 741
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v1

    iget-object v2, p0, Landroidx/core/n/ao$g;->b:Landroid/view/WindowInsets;

    .line 742
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v2

    iget-object v3, p0, Landroidx/core/n/ao$g;->b:Landroid/view/WindowInsets;

    .line 743
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v3

    .line 739
    invoke-static {v0, v1, v2, v3}, Landroidx/core/graphics/f;->a(IIII)Landroidx/core/graphics/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/n/ao$g;->c:Landroidx/core/graphics/f;

    .line 745
    :cond_0
    iget-object p0, p0, Landroidx/core/n/ao$g;->c:Landroidx/core/graphics/f;

    return-object p0
.end method
