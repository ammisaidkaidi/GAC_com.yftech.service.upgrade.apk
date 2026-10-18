.class Landroidx/j/e$10;
.super Landroidx/j/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/e;->a(Landroid/view/ViewGroup;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroidx/j/e;


# direct methods
.method constructor <init>(Landroidx/j/e;Landroid/view/ViewGroup;)V
    .locals 0

    .line 394
    iput-object p1, p0, Landroidx/j/e$10;->c:Landroidx/j/e;

    iput-object p2, p0, Landroidx/j/e$10;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroidx/j/ai;-><init>()V

    const/4 p1, 0x0

    .line 395
    iput-boolean p1, p0, Landroidx/j/e$10;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroidx/j/ag;)V
    .locals 1
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 399
    iget-object p1, p0, Landroidx/j/e$10;->b:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/j/at;->a(Landroid/view/ViewGroup;Z)V

    const/4 p1, 0x1

    .line 400
    iput-boolean p1, p0, Landroidx/j/e$10;->a:Z

    return-void
.end method

.method public b(Landroidx/j/ag;)V
    .locals 2
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 405
    iget-boolean v0, p0, Landroidx/j/e$10;->a:Z

    if-nez v0, :cond_0

    .line 406
    iget-object v0, p0, Landroidx/j/e$10;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/j/at;->a(Landroid/view/ViewGroup;Z)V

    .line 408
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/j/ag;->b(Landroidx/j/ag$e;)Landroidx/j/ag;

    return-void
.end method

.method public c(Landroidx/j/ag;)V
    .locals 0
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 413
    iget-object p0, p0, Landroidx/j/e$10;->b:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/j/at;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method public d(Landroidx/j/ag;)V
    .locals 0
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 418
    iget-object p0, p0, Landroidx/j/e$10;->b:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroidx/j/at;->a(Landroid/view/ViewGroup;Z)V

    return-void
.end method
