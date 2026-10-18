.class Landroidx/j/bf$1;
.super Landroidx/j/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/bf;->b(Landroid/view/ViewGroup;Landroidx/j/an;ILandroidx/j/an;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroidx/j/bf;


# direct methods
.method constructor <init>(Landroidx/j/bf;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 438
    iput-object p1, p0, Landroidx/j/bf$1;->d:Landroidx/j/bf;

    iput-object p2, p0, Landroidx/j/bf$1;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/j/bf$1;->b:Landroid/view/View;

    iput-object p4, p0, Landroidx/j/bf$1;->c:Landroid/view/View;

    invoke-direct {p0}, Landroidx/j/ai;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/j/ag;)V
    .locals 3
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 456
    iget-object v0, p0, Landroidx/j/bf$1;->c:Landroid/view/View;

    sget v1, Landroidx/j/aa$e;->save_overlay_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 457
    iget-object v0, p0, Landroidx/j/bf$1;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/j/at;->a(Landroid/view/ViewGroup;)Landroidx/j/as;

    move-result-object v0

    iget-object v1, p0, Landroidx/j/bf$1;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Landroidx/j/as;->b(Landroid/view/View;)V

    .line 458
    invoke-virtual {p1, p0}, Landroidx/j/ag;->b(Landroidx/j/ag$e;)Landroidx/j/ag;

    return-void
.end method

.method public c(Landroidx/j/ag;)V
    .locals 0
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 442
    iget-object p1, p0, Landroidx/j/bf$1;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/j/at;->a(Landroid/view/ViewGroup;)Landroidx/j/as;

    move-result-object p1

    iget-object p0, p0, Landroidx/j/bf$1;->b:Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/j/as;->b(Landroid/view/View;)V

    return-void
.end method

.method public d(Landroidx/j/ag;)V
    .locals 0
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 447
    iget-object p1, p0, Landroidx/j/bf$1;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 448
    iget-object p1, p0, Landroidx/j/bf$1;->a:Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/j/at;->a(Landroid/view/ViewGroup;)Landroidx/j/as;

    move-result-object p1

    iget-object p0, p0, Landroidx/j/bf$1;->b:Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/j/as;->a(Landroid/view/View;)V

    goto :goto_0

    .line 450
    :cond_0
    iget-object p0, p0, Landroidx/j/bf$1;->d:Landroidx/j/bf;

    invoke-virtual {p0}, Landroidx/j/bf;->n()V

    :goto_0
    return-void
.end method
