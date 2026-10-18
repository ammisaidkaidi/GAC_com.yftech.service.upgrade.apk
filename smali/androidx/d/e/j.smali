.class public Landroidx/d/e/j;
.super Landroidx/d/e/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroidx/d/e/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroidx/d/e/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroidx/d/e/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Landroidx/d/e/c;->a(Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Landroidx/d/e/j;->t:Z

    return-void
.end method

.method public b(Landroidx/d/e/d;)V
    .locals 1

    .line 84
    invoke-virtual {p0}, Landroidx/d/e/j;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/d/e/d$a;

    .line 85
    iget-object p1, p0, Landroidx/d/e/d$a;->aF:Landroidx/d/c/b/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/d/c/b/e;->p(I)V

    .line 86
    iget-object p0, p0, Landroidx/d/e/d$a;->aF:Landroidx/d/c/b/e;

    invoke-virtual {p0, v0}, Landroidx/d/c/b/e;->q(I)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 62
    invoke-super {p0}, Landroidx/d/e/c;->onAttachedToWindow()V

    .line 63
    invoke-virtual {p0}, Landroidx/d/e/j;->d()V

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Landroidx/d/e/c;->setElevation(F)V

    .line 75
    invoke-virtual {p0}, Landroidx/d/e/j;->d()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 68
    invoke-super {p0, p1}, Landroidx/d/e/c;->setVisibility(I)V

    .line 69
    invoke-virtual {p0}, Landroidx/d/e/j;->d()V

    return-void
.end method
