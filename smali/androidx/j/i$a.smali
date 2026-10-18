.class Landroidx/j/i$a;
.super Landroidx/j/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/j/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroidx/j/o;


# direct methods
.method constructor <init>(Landroid/view/View;Landroidx/j/o;)V
    .locals 0

    .line 521
    invoke-direct {p0}, Landroidx/j/ai;-><init>()V

    .line 522
    iput-object p1, p0, Landroidx/j/i$a;->a:Landroid/view/View;

    .line 523
    iput-object p2, p0, Landroidx/j/i$a;->b:Landroidx/j/o;

    return-void
.end method


# virtual methods
.method public b(Landroidx/j/ag;)V
    .locals 2
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 528
    invoke-virtual {p1, p0}, Landroidx/j/ag;->b(Landroidx/j/ag$e;)Landroidx/j/ag;

    .line 529
    iget-object p1, p0, Landroidx/j/i$a;->a:Landroid/view/View;

    invoke-static {p1}, Landroidx/j/s;->a(Landroid/view/View;)V

    .line 530
    iget-object p1, p0, Landroidx/j/i$a;->a:Landroid/view/View;

    sget v0, Landroidx/j/aa$e;->transition_transform:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 531
    iget-object p0, p0, Landroidx/j/i$a;->a:Landroid/view/View;

    sget p1, Landroidx/j/aa$e;->parent_matrix:I

    invoke-virtual {p0, p1, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public c(Landroidx/j/ag;)V
    .locals 0
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 536
    iget-object p0, p0, Landroidx/j/i$a;->b:Landroidx/j/o;

    const/4 p1, 0x4

    invoke-interface {p0, p1}, Landroidx/j/o;->setVisibility(I)V

    return-void
.end method

.method public d(Landroidx/j/ag;)V
    .locals 0
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 541
    iget-object p0, p0, Landroidx/j/i$a;->b:Landroidx/j/o;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroidx/j/o;->setVisibility(I)V

    return-void
.end method
