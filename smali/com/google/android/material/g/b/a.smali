.class public Lcom/google/android/material/g/b/a;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/g/g;


# instance fields
.field private final j:Lcom/google/android/material/g/d;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/g/b/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 41
    invoke-direct {p0, p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p1, Lcom/google/android/material/g/d;

    invoke-direct {p1, p0}, Lcom/google/android/material/g/d;-><init>(Lcom/google/android/material/g/d$a;)V

    iput-object p1, p0, Lcom/google/android/material/g/b/a;->j:Lcom/google/android/material/g/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/google/android/material/g/b/a;->j:Lcom/google/android/material/g/d;

    invoke-virtual {p0}, Lcom/google/android/material/g/d;->a()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public c()Z
    .locals 0

    .line 112
    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isOpaque()Z

    move-result p0

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/google/android/material/g/b/a;->j:Lcom/google/android/material/g/d;

    if-eqz v0, :cond_0

    .line 90
    iget-object p0, p0, Lcom/google/android/material/g/b/a;->j:Lcom/google/android/material/g/d;

    invoke-virtual {p0, p1}, Lcom/google/android/material/g/d;->a(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-super {p0, p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public g_()V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/google/android/material/g/b/a;->j:Lcom/google/android/material/g/d;

    invoke-virtual {p0}, Lcom/google/android/material/g/d;->b()V

    return-void
.end method

.method public getCircularRevealOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/google/android/material/g/b/a;->j:Lcom/google/android/material/g/d;

    invoke-virtual {p0}, Lcom/google/android/material/g/d;->e()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getCircularRevealScrimColor()I
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/google/android/material/g/b/a;->j:Lcom/google/android/material/g/d;

    invoke-virtual {p0}, Lcom/google/android/material/g/d;->d()I

    move-result p0

    return p0
.end method

.method public getRevealInfo()Lcom/google/android/material/g/g$d;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 63
    iget-object p0, p0, Lcom/google/android/material/g/b/a;->j:Lcom/google/android/material/g/d;

    invoke-virtual {p0}, Lcom/google/android/material/g/d;->c()Lcom/google/android/material/g/g$d;

    move-result-object p0

    return-object p0
.end method

.method public isOpaque()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/android/material/g/b/a;->j:Lcom/google/android/material/g/d;

    if-eqz v0, :cond_0

    .line 104
    iget-object p0, p0, Lcom/google/android/material/g/b/a;->j:Lcom/google/android/material/g/d;

    invoke-virtual {p0}, Lcom/google/android/material/g/d;->f()Z

    move-result p0

    return p0

    .line 106
    :cond_0
    invoke-super {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->isOpaque()Z

    move-result p0

    return p0
.end method

.method public setCircularRevealOverlayDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 84
    iget-object p0, p0, Lcom/google/android/material/g/b/a;->j:Lcom/google/android/material/g/d;

    invoke-virtual {p0, p1}, Lcom/google/android/material/g/d;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCircularRevealScrimColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 68
    iget-object p0, p0, Lcom/google/android/material/g/b/a;->j:Lcom/google/android/material/g/d;

    invoke-virtual {p0, p1}, Lcom/google/android/material/g/d;->a(I)V

    return-void
.end method

.method public setRevealInfo(Lcom/google/android/material/g/g$d;)V
    .locals 0
    .param p1    # Lcom/google/android/material/g/g$d;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 57
    iget-object p0, p0, Lcom/google/android/material/g/b/a;->j:Lcom/google/android/material/g/d;

    invoke-virtual {p0, p1}, Lcom/google/android/material/g/d;->a(Lcom/google/android/material/g/g$d;)V

    return-void
.end method
