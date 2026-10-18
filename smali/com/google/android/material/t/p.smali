.class public Lcom/google/android/material/t/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/t/p$b;,
        Lcom/google/android/material/t/p$a;
    }
.end annotation


# instance fields
.field private final a:[Lcom/google/android/material/t/q;

.field private final b:[Landroid/graphics/Matrix;

.field private final c:[Landroid/graphics/Matrix;

.field private final d:Landroid/graphics/PointF;

.field private final e:Landroid/graphics/Path;

.field private final f:Landroid/graphics/Path;

.field private final g:Lcom/google/android/material/t/q;

.field private final h:[F

.field private final i:[F

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 48
    new-array v1, v0, [Lcom/google/android/material/t/q;

    iput-object v1, p0, Lcom/google/android/material/t/p;->a:[Lcom/google/android/material/t/q;

    .line 49
    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/google/android/material/t/p;->b:[Landroid/graphics/Matrix;

    .line 50
    new-array v1, v0, [Landroid/graphics/Matrix;

    iput-object v1, p0, Lcom/google/android/material/t/p;->c:[Landroid/graphics/Matrix;

    .line 53
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/t/p;->d:Landroid/graphics/PointF;

    .line 54
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/t/p;->e:Landroid/graphics/Path;

    .line 55
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/t/p;->f:Landroid/graphics/Path;

    .line 56
    new-instance v1, Lcom/google/android/material/t/q;

    invoke-direct {v1}, Lcom/google/android/material/t/q;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/t/p;->g:Lcom/google/android/material/t/q;

    const/4 v1, 0x2

    .line 57
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/google/android/material/t/p;->h:[F

    .line 58
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/material/t/p;->i:[F

    const/4 v1, 0x1

    .line 60
    iput-boolean v1, p0, Lcom/google/android/material/t/p;->j:Z

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 64
    iget-object v2, p0, Lcom/google/android/material/t/p;->a:[Lcom/google/android/material/t/q;

    new-instance v3, Lcom/google/android/material/t/q;

    invoke-direct {v3}, Lcom/google/android/material/t/q;-><init>()V

    aput-object v3, v2, v1

    .line 65
    iget-object v2, p0, Lcom/google/android/material/t/p;->b:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    .line 66
    iget-object v2, p0, Lcom/google/android/material/t/p;->c:[Landroid/graphics/Matrix;

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/RectF;I)F
    .locals 4
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 231
    iget-object v0, p0, Lcom/google/android/material/t/p;->h:[F

    iget-object v1, p0, Lcom/google/android/material/t/p;->a:[Lcom/google/android/material/t/q;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/google/android/material/t/q;->d:F

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 232
    iget-object v0, p0, Lcom/google/android/material/t/p;->h:[F

    iget-object v1, p0, Lcom/google/android/material/t/p;->a:[Lcom/google/android/material/t/q;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/google/android/material/t/q;->e:F

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 233
    iget-object v0, p0, Lcom/google/android/material/t/p;->b:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/t/p;->h:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-eq p2, v3, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 241
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/t/p;->h:[F

    aget p0, p0, v3

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0

    .line 237
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/t/p;->h:[F

    aget p0, p0, v2

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    return p0
.end method

.method private a(ILcom/google/android/material/t/o;)Lcom/google/android/material/t/e;
    .locals 0
    .param p2    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    packed-switch p1, :pswitch_data_0

    .line 256
    invoke-virtual {p2}, Lcom/google/android/material/t/o;->c()Lcom/google/android/material/t/e;

    move-result-object p0

    return-object p0

    .line 253
    :pswitch_0
    invoke-virtual {p2}, Lcom/google/android/material/t/o;->b()Lcom/google/android/material/t/e;

    move-result-object p0

    return-object p0

    .line 251
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/android/material/t/o;->e()Lcom/google/android/material/t/e;

    move-result-object p0

    return-object p0

    .line 249
    :pswitch_2
    invoke-virtual {p2}, Lcom/google/android/material/t/o;->d()Lcom/google/android/material/t/e;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(I)V
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/google/android/material/t/p;->h:[F

    iget-object v1, p0, Lcom/google/android/material/t/p;->a:[Lcom/google/android/material/t/q;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/google/android/material/t/q;->d()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 145
    iget-object v0, p0, Lcom/google/android/material/t/p;->h:[F

    iget-object v1, p0, Lcom/google/android/material/t/p;->a:[Lcom/google/android/material/t/q;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/google/android/material/t/q;->e()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 146
    iget-object v0, p0, Lcom/google/android/material/t/p;->b:[Landroid/graphics/Matrix;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/google/android/material/t/p;->h:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 147
    invoke-direct {p0, p1}, Lcom/google/android/material/t/p;->b(I)F

    move-result v0

    .line 148
    iget-object v1, p0, Lcom/google/android/material/t/p;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 149
    iget-object v1, p0, Lcom/google/android/material/t/p;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p1

    iget-object v4, p0, Lcom/google/android/material/t/p;->h:[F

    aget v2, v4, v2

    iget-object v4, p0, Lcom/google/android/material/t/p;->h:[F

    aget v3, v4, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 150
    iget-object p0, p0, Lcom/google/android/material/t/p;->c:[Landroid/graphics/Matrix;

    aget-object p0, p0, p1

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method

.method private a(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V
    .locals 0
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    packed-switch p1, :pswitch_data_0

    .line 303
    iget p0, p2, Landroid/graphics/RectF;->right:F

    iget p1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 299
    :pswitch_0
    iget p0, p2, Landroid/graphics/RectF;->left:F

    iget p1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p3, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 296
    :pswitch_1
    iget p0, p2, Landroid/graphics/RectF;->left:F

    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    .line 293
    :pswitch_2
    iget p0, p2, Landroid/graphics/RectF;->right:F

    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3, p0, p1}, Landroid/graphics/PointF;->set(FF)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/google/android/material/t/p$b;I)V
    .locals 7
    .param p1    # Lcom/google/android/material/t/p$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 132
    iget-object v0, p1, Lcom/google/android/material/t/p$b;->a:Lcom/google/android/material/t/o;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/t/p;->b(ILcom/google/android/material/t/o;)Lcom/google/android/material/t/d;

    move-result-object v6

    .line 133
    iget-object v0, p1, Lcom/google/android/material/t/p$b;->a:Lcom/google/android/material/t/o;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/t/p;->a(ILcom/google/android/material/t/o;)Lcom/google/android/material/t/e;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/material/t/p;->a:[Lcom/google/android/material/t/q;

    aget-object v2, v0, p2

    iget v4, p1, Lcom/google/android/material/t/p$b;->e:F

    iget-object v5, p1, Lcom/google/android/material/t/p$b;->c:Landroid/graphics/RectF;

    const/high16 v3, 0x42b40000    # 90.0f

    .line 134
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/material/t/e;->a(Lcom/google/android/material/t/q;FFLandroid/graphics/RectF;Lcom/google/android/material/t/d;)V

    .line 136
    invoke-direct {p0, p2}, Lcom/google/android/material/t/p;->b(I)F

    move-result v0

    .line 137
    iget-object v1, p0, Lcom/google/android/material/t/p;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 138
    iget-object p1, p1, Lcom/google/android/material/t/p$b;->c:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/t/p;->d:Landroid/graphics/PointF;

    invoke-direct {p0, p2, p1, v1}, Lcom/google/android/material/t/p;->a(ILandroid/graphics/RectF;Landroid/graphics/PointF;)V

    .line 139
    iget-object p1, p0, Lcom/google/android/material/t/p;->b:[Landroid/graphics/Matrix;

    aget-object p1, p1, p2

    iget-object v1, p0, Lcom/google/android/material/t/p;->d:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/google/android/material/t/p;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 140
    iget-object p0, p0, Lcom/google/android/material/t/p;->b:[Landroid/graphics/Matrix;

    aget-object p0, p0, p2

    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    return-void
.end method

.method private a(Landroid/graphics/Path;I)Z
    .locals 2
    .annotation build Landroidx/annotation/am;
        a = 0x13
    .end annotation

    .line 218
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 219
    iget-object v1, p0, Lcom/google/android/material/t/p;->a:[Lcom/google/android/material/t/q;

    aget-object v1, v1, p2

    iget-object p0, p0, Lcom/google/android/material/t/p;->b:[Landroid/graphics/Matrix;

    aget-object p0, p0, p2

    invoke-virtual {v1, p0, v0}, Lcom/google/android/material/t/q;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 221
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    const/4 p2, 0x1

    .line 222
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 223
    invoke-virtual {v0, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 224
    sget-object v1, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 225
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 227
    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :cond_1
    :goto_0
    return p2
.end method

.method private b(I)F
    .locals 0

    add-int/lit8 p1, p1, 0x1

    mul-int/lit8 p1, p1, 0x5a

    int-to-float p0, p1

    return p0
.end method

.method private b(ILcom/google/android/material/t/o;)Lcom/google/android/material/t/d;
    .locals 0
    .param p2    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    packed-switch p1, :pswitch_data_0

    .line 271
    invoke-virtual {p2}, Lcom/google/android/material/t/o;->g()Lcom/google/android/material/t/d;

    move-result-object p0

    return-object p0

    .line 268
    :pswitch_0
    invoke-virtual {p2}, Lcom/google/android/material/t/o;->f()Lcom/google/android/material/t/d;

    move-result-object p0

    return-object p0

    .line 266
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/android/material/t/o;->i()Lcom/google/android/material/t/d;

    move-result-object p0

    return-object p0

    .line 264
    :pswitch_2
    invoke-virtual {p2}, Lcom/google/android/material/t/o;->h()Lcom/google/android/material/t/d;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lcom/google/android/material/t/p$b;I)V
    .locals 4
    .param p1    # Lcom/google/android/material/t/p$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 154
    iget-object v0, p0, Lcom/google/android/material/t/p;->h:[F

    iget-object v1, p0, Lcom/google/android/material/t/p;->a:[Lcom/google/android/material/t/q;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/google/android/material/t/q;->b()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 155
    iget-object v0, p0, Lcom/google/android/material/t/p;->h:[F

    iget-object v1, p0, Lcom/google/android/material/t/p;->a:[Lcom/google/android/material/t/q;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/google/android/material/t/q;->c()F

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 156
    iget-object v0, p0, Lcom/google/android/material/t/p;->b:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/t/p;->h:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    if-nez p2, :cond_0

    .line 158
    iget-object v0, p1, Lcom/google/android/material/t/p$b;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/t/p;->h:[F

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/material/t/p;->h:[F

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p1, Lcom/google/android/material/t/p$b;->b:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/t/p;->h:[F

    aget v1, v1, v2

    iget-object v2, p0, Lcom/google/android/material/t/p;->h:[F

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 162
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/t/p;->a:[Lcom/google/android/material/t/q;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/t/p;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/google/android/material/t/p$b;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/t/q;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 163
    iget-object v0, p1, Lcom/google/android/material/t/p$b;->d:Lcom/google/android/material/t/p$a;

    if-eqz v0, :cond_1

    .line 164
    iget-object p1, p1, Lcom/google/android/material/t/p$b;->d:Lcom/google/android/material/t/p$a;

    iget-object v0, p0, Lcom/google/android/material/t/p;->a:[Lcom/google/android/material/t/q;

    aget-object v0, v0, p2

    iget-object p0, p0, Lcom/google/android/material/t/p;->b:[Landroid/graphics/Matrix;

    aget-object p0, p0, p2

    invoke-interface {p1, v0, p0, p2}, Lcom/google/android/material/t/p$a;->a(Lcom/google/android/material/t/q;Landroid/graphics/Matrix;I)V

    :cond_1
    return-void
.end method

.method private c(ILcom/google/android/material/t/o;)Lcom/google/android/material/t/g;
    .locals 0
    .param p2    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    packed-switch p1, :pswitch_data_0

    .line 286
    invoke-virtual {p2}, Lcom/google/android/material/t/o;->l()Lcom/google/android/material/t/g;

    move-result-object p0

    return-object p0

    .line 283
    :pswitch_0
    invoke-virtual {p2}, Lcom/google/android/material/t/o;->k()Lcom/google/android/material/t/g;

    move-result-object p0

    return-object p0

    .line 281
    :pswitch_1
    invoke-virtual {p2}, Lcom/google/android/material/t/o;->j()Lcom/google/android/material/t/g;

    move-result-object p0

    return-object p0

    .line 279
    :pswitch_2
    invoke-virtual {p2}, Lcom/google/android/material/t/o;->m()Lcom/google/android/material/t/g;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Lcom/google/android/material/t/p$b;I)V
    .locals 8
    .param p1    # Lcom/google/android/material/t/p$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    add-int/lit8 v0, p2, 0x1

    .line 169
    rem-int/lit8 v0, v0, 0x4

    .line 170
    iget-object v1, p0, Lcom/google/android/material/t/p;->h:[F

    iget-object v2, p0, Lcom/google/android/material/t/p;->a:[Lcom/google/android/material/t/q;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lcom/google/android/material/t/q;->d()F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 171
    iget-object v1, p0, Lcom/google/android/material/t/p;->h:[F

    iget-object v2, p0, Lcom/google/android/material/t/p;->a:[Lcom/google/android/material/t/q;

    aget-object v2, v2, p2

    invoke-virtual {v2}, Lcom/google/android/material/t/q;->e()F

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    .line 172
    iget-object v1, p0, Lcom/google/android/material/t/p;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/google/android/material/t/p;->h:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 174
    iget-object v1, p0, Lcom/google/android/material/t/p;->i:[F

    iget-object v2, p0, Lcom/google/android/material/t/p;->a:[Lcom/google/android/material/t/q;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/t/q;->b()F

    move-result v2

    aput v2, v1, v3

    .line 175
    iget-object v1, p0, Lcom/google/android/material/t/p;->i:[F

    iget-object v2, p0, Lcom/google/android/material/t/p;->a:[Lcom/google/android/material/t/q;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/google/android/material/t/q;->c()F

    move-result v2

    aput v2, v1, v4

    .line 176
    iget-object v1, p0, Lcom/google/android/material/t/p;->b:[Landroid/graphics/Matrix;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/material/t/p;->i:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 178
    iget-object v1, p0, Lcom/google/android/material/t/p;->h:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/google/android/material/t/p;->i:[F

    aget v2, v2, v3

    sub-float/2addr v1, v2

    float-to-double v1, v1

    iget-object v5, p0, Lcom/google/android/material/t/p;->h:[F

    aget v5, v5, v4

    iget-object v6, p0, Lcom/google/android/material/t/p;->i:[F

    aget v6, v6, v4

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    const v2, 0x3a83126f    # 0.001f

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    .line 180
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 181
    iget-object v5, p1, Lcom/google/android/material/t/p$b;->c:Landroid/graphics/RectF;

    invoke-direct {p0, v5, p2}, Lcom/google/android/material/t/p;->a(Landroid/graphics/RectF;I)F

    move-result v5

    .line 182
    iget-object v6, p0, Lcom/google/android/material/t/p;->g:Lcom/google/android/material/t/q;

    invoke-virtual {v6, v2, v2}, Lcom/google/android/material/t/q;->a(FF)V

    .line 183
    iget-object v2, p1, Lcom/google/android/material/t/p$b;->a:Lcom/google/android/material/t/o;

    invoke-direct {p0, p2, v2}, Lcom/google/android/material/t/p;->c(ILcom/google/android/material/t/o;)Lcom/google/android/material/t/g;

    move-result-object v2

    .line 184
    iget v6, p1, Lcom/google/android/material/t/p$b;->e:F

    iget-object v7, p0, Lcom/google/android/material/t/p;->g:Lcom/google/android/material/t/q;

    invoke-virtual {v2, v1, v5, v6, v7}, Lcom/google/android/material/t/g;->a(FFFLcom/google/android/material/t/q;)V

    .line 185
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 186
    iget-object v5, p0, Lcom/google/android/material/t/p;->g:Lcom/google/android/material/t/q;

    iget-object v6, p0, Lcom/google/android/material/t/p;->c:[Landroid/graphics/Matrix;

    aget-object v6, v6, p2

    invoke-virtual {v5, v6, v1}, Lcom/google/android/material/t/q;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 188
    iget-boolean v5, p0, Lcom/google/android/material/t/p;->j:Z

    if-eqz v5, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v5, v6, :cond_1

    .line 190
    invoke-virtual {v2}, Lcom/google/android/material/t/g;->f()Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    invoke-direct {p0, v1, p2}, Lcom/google/android/material/t/p;->a(Landroid/graphics/Path;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    invoke-direct {p0, v1, v0}, Lcom/google/android/material/t/p;->a(Landroid/graphics/Path;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/t/p;->f:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v1, v1, v0, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 200
    iget-object v0, p0, Lcom/google/android/material/t/p;->h:[F

    iget-object v1, p0, Lcom/google/android/material/t/p;->g:Lcom/google/android/material/t/q;

    invoke-virtual {v1}, Lcom/google/android/material/t/q;->b()F

    move-result v1

    aput v1, v0, v3

    .line 201
    iget-object v0, p0, Lcom/google/android/material/t/p;->h:[F

    iget-object v1, p0, Lcom/google/android/material/t/p;->g:Lcom/google/android/material/t/q;

    invoke-virtual {v1}, Lcom/google/android/material/t/q;->c()F

    move-result v1

    aput v1, v0, v4

    .line 202
    iget-object v0, p0, Lcom/google/android/material/t/p;->c:[Landroid/graphics/Matrix;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/google/android/material/t/p;->h:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 203
    iget-object v0, p0, Lcom/google/android/material/t/p;->e:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/t/p;->h:[F

    aget v1, v1, v3

    iget-object v2, p0, Lcom/google/android/material/t/p;->h:[F

    aget v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 206
    iget-object v0, p0, Lcom/google/android/material/t/p;->g:Lcom/google/android/material/t/q;

    iget-object v1, p0, Lcom/google/android/material/t/p;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/google/android/material/t/p;->e:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/t/q;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/t/p;->g:Lcom/google/android/material/t/q;

    iget-object v1, p0, Lcom/google/android/material/t/p;->c:[Landroid/graphics/Matrix;

    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/google/android/material/t/p$b;->b:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/t/q;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    .line 211
    :goto_0
    iget-object v0, p1, Lcom/google/android/material/t/p$b;->d:Lcom/google/android/material/t/p$a;

    if-eqz v0, :cond_2

    .line 212
    iget-object p1, p1, Lcom/google/android/material/t/p$b;->d:Lcom/google/android/material/t/p$a;

    iget-object v0, p0, Lcom/google/android/material/t/p;->g:Lcom/google/android/material/t/q;

    iget-object p0, p0, Lcom/google/android/material/t/p;->c:[Landroid/graphics/Matrix;

    aget-object p0, p0, p2

    invoke-interface {p1, v0, p0, p2}, Lcom/google/android/material/t/p$a;->b(Lcom/google/android/material/t/q;Landroid/graphics/Matrix;I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/t/o;FLandroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6
    .param p4    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 83
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/t/p;->a(Lcom/google/android/material/t/o;FLandroid/graphics/RectF;Lcom/google/android/material/t/p$a;Landroid/graphics/Path;)V

    return-void
.end method

.method public a(Lcom/google/android/material/t/o;FLandroid/graphics/RectF;Lcom/google/android/material/t/p$a;Landroid/graphics/Path;)V
    .locals 8
    .param p5    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 102
    invoke-virtual {p5}, Landroid/graphics/Path;->rewind()V

    .line 103
    iget-object v0, p0, Lcom/google/android/material/t/p;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 104
    iget-object v0, p0, Lcom/google/android/material/t/p;->f:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 105
    iget-object v0, p0, Lcom/google/android/material/t/p;->f:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p3, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 106
    new-instance v0, Lcom/google/android/material/t/p$b;

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/t/p$b;-><init>(Lcom/google/android/material/t/o;FLandroid/graphics/RectF;Lcom/google/android/material/t/p$a;Landroid/graphics/Path;)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    const/4 p3, 0x4

    if-ge p2, p3, :cond_0

    .line 113
    invoke-direct {p0, v0, p2}, Lcom/google/android/material/t/p;->a(Lcom/google/android/material/t/p$b;I)V

    .line 114
    invoke-direct {p0, p2}, Lcom/google/android/material/t/p;->a(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p1, p3, :cond_1

    .line 118
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/t/p;->b(Lcom/google/android/material/t/p$b;I)V

    .line 119
    invoke-direct {p0, v0, p1}, Lcom/google/android/material/t/p;->c(Lcom/google/android/material/t/p$b;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 122
    :cond_1
    invoke-virtual {p5}, Landroid/graphics/Path;->close()V

    .line 123
    iget-object p1, p0, Lcom/google/android/material/t/p;->e:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 126
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_2

    iget-object p1, p0, Lcom/google/android/material/t/p;->e:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 127
    iget-object p0, p0, Lcom/google/android/material/t/p;->e:Landroid/graphics/Path;

    sget-object p1, Landroid/graphics/Path$Op;->UNION:Landroid/graphics/Path$Op;

    invoke-virtual {p5, p0, p1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    :cond_2
    return-void
.end method

.method a(Z)V
    .locals 0

    .line 313
    iput-boolean p1, p0, Lcom/google/android/material/t/p;->j:Z

    return-void
.end method
