.class Lcom/google/android/material/behavior/SwipeDismissBehavior$1;
.super Landroidx/f/b/c$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/behavior/SwipeDismissBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final b:I = -0x1


# instance fields
.field final synthetic a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

.field private c:I

.field private d:I


# direct methods
.method constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-direct {p0}, Landroidx/f/b/c$a;-><init>()V

    const/4 p1, -0x1

    .line 236
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->d:I

    return-void
.end method

.method private a(Landroid/view/View;F)Z
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    .line 295
    invoke-static {p1}, Landroidx/core/n/af;->p(Landroid/view/View;)I

    move-result p1

    if-ne p1, v3, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    .line 297
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->i:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    return v3

    .line 300
    :cond_1
    iget-object v4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v4, v4, Lcom/google/android/material/behavior/SwipeDismissBehavior;->i:I

    if-nez v4, :cond_4

    if-eqz p1, :cond_2

    cmpg-float p0, p2, v0

    if-gez p0, :cond_3

    :goto_1
    move v2, v3

    goto :goto_2

    :cond_2
    if-lez v1, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return v2

    .line 304
    :cond_4
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->i:I

    if-ne p0, v3, :cond_7

    if-eqz p1, :cond_5

    if-lez v1, :cond_6

    :goto_3
    move v2, v3

    goto :goto_4

    :cond_5
    cmpg-float p0, p2, v0

    if-gez p0, :cond_6

    goto :goto_3

    :cond_6
    :goto_4
    return v2

    :cond_7
    return v2

    .line 310
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    sub-int/2addr p2, v0

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->j:F

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 312
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-lt p1, p0, :cond_9

    move v2, v3

    :cond_9
    return v2
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 320
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    return p0
.end method

.method public a(Landroid/view/View;II)I
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 326
    invoke-static {p1}, Landroidx/core/n/af;->p(Landroid/view/View;)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 330
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->i:I

    if-nez v1, :cond_2

    if-eqz p3, :cond_1

    .line 332
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p3, p1

    .line 333
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    goto :goto_1

    .line 335
    :cond_1
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    .line 336
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p0, p1

    goto :goto_1

    .line 338
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget v1, v1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->i:I

    if-ne v1, v0, :cond_4

    if-eqz p3, :cond_3

    .line 340
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    .line 341
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p0, p1

    goto :goto_1

    .line 343
    :cond_3
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    sub-int/2addr p3, p1

    .line 344
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    goto :goto_1

    .line 347
    :cond_4
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p3, v0

    .line 348
    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    add-int/2addr p0, p1

    .line 351
    :goto_1
    invoke-static {p3, p2, p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(III)I

    move-result p0

    return p0
.end method

.method public a(I)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->h:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

    if-eqz v0, :cond_0

    .line 261
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->h:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

    invoke-interface {p0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 p3, -0x1

    .line 268
    iput p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->d:I

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    .line 274
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a(Landroid/view/View;F)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    if-ge p2, v0, :cond_0

    iget p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    sub-int/2addr p2, p3

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    add-int/2addr p2, p3

    :goto_0
    const/4 p3, 0x1

    goto :goto_1

    .line 282
    :cond_1
    iget p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    const/4 p3, 0x0

    .line 285
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object v0, v0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Landroidx/f/b/c;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroidx/f/b/c;->a(II)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 286
    new-instance p2, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;

    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    invoke-direct {p2, p0, p1, p3}, Lcom/google/android/material/behavior/SwipeDismissBehavior$b;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;Landroid/view/View;Z)V

    invoke-static {p1, p2}, Landroidx/core/n/af;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    .line 287
    iget-object p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object p2, p2, Lcom/google/android/material/behavior/SwipeDismissBehavior;->h:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

    if-eqz p2, :cond_3

    .line 288
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->h:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

    invoke-interface {p0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior$a;->a(Landroid/view/View;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 247
    iput p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->d:I

    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    .line 252
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 254
    invoke-interface {p0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 361
    iget p3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    int-to-float p3, p3

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    iget-object p5, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget p5, p5, Lcom/google/android/material/behavior/SwipeDismissBehavior;->k:F

    mul-float/2addr p4, p5

    add-float/2addr p3, p4

    .line 363
    iget p4, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->c:I

    int-to-float p4, p4

    .line 364
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p5

    int-to-float p5, p5

    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    iget p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->l:F

    mul-float/2addr p5, p0

    add-float/2addr p4, p5

    int-to-float p0, p2

    cmpg-float p2, p0, p3

    const/high16 p5, 0x3f800000    # 1.0f

    if-gtz p2, :cond_0

    .line 367
    invoke-virtual {p1, p5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_0
    cmpl-float p2, p0, p4

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    .line 369
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 372
    :cond_1
    invoke-static {p3, p4, p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b(FFF)F

    move-result p0

    sub-float p0, p5, p0

    .line 373
    invoke-static {v0, p0, p5}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(FFF)F

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public b(Landroid/view/View;II)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p0

    return p0
.end method

.method public b(Landroid/view/View;I)Z
    .locals 2

    .line 241
    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->d:I

    if-ne v0, p2, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;->a:Lcom/google/android/material/behavior/SwipeDismissBehavior;

    .line 242
    invoke-virtual {p0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
