.class Landroidx/core/graphics/drawable/c;
.super Landroidx/core/graphics/drawable/b;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/am;
    a = 0x15
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/core/graphics/drawable/b;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v5, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 57
    invoke-static/range {v0 .. v5}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 43
    iget-object v0, p0, Landroidx/core/graphics/drawable/c;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Landroidx/core/graphics/drawable/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->setHasMipMap(Z)V

    .line 45
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/c;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/core/graphics/drawable/c;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/core/graphics/drawable/c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasMipMap()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 37
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/c;->f()V

    .line 38
    iget-object v0, p0, Landroidx/core/graphics/drawable/c;->b:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroidx/core/graphics/drawable/c;->h()F

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
