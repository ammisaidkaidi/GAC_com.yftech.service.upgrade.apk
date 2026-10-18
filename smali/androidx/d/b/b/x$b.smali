.class Landroidx/d/b/b/x$b;
.super Landroidx/d/b/b/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/b/b/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field h:Ljava/lang/String;

.field i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/d/e/b;",
            ">;"
        }
    .end annotation
.end field

.field j:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[F>;"
        }
    .end annotation
.end field

.field k:[F

.field l:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/d/e/b;",
            ">;)V"
        }
    .end annotation

    .line 322
    invoke-direct {p0}, Landroidx/d/b/b/x;-><init>()V

    .line 318
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/d/b/b/x$b;->j:Landroid/util/SparseArray;

    const-string v0, ","

    .line 323
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Landroidx/d/b/b/x$b;->h:Ljava/lang/String;

    .line 324
    iput-object p2, p0, Landroidx/d/b/b/x$b;->i:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 13

    .line 328
    iget-object v0, p0, Landroidx/d/b/b/x$b;->i:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 329
    iget-object v1, p0, Landroidx/d/b/b/x$b;->i:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/e/b;

    invoke-virtual {v1}, Landroidx/d/e/b;->b()I

    move-result v1

    .line 330
    new-array v3, v0, [D

    add-int/lit8 v4, v1, 0x2

    .line 331
    new-array v5, v4, [F

    iput-object v5, p0, Landroidx/d/b/b/x$b;->k:[F

    .line 332
    new-array v5, v1, [F

    iput-object v5, p0, Landroidx/d/b/b/x$b;->l:[F

    .line 333
    filled-new-array {v0, v4}, [I

    move-result-object v4

    const-class v5, D

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    move v5, v2

    :goto_0
    if-ge v5, v0, :cond_1

    .line 335
    iget-object v6, p0, Landroidx/d/b/b/x$b;->i:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 336
    iget-object v7, p0, Landroidx/d/b/b/x$b;->i:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/d/e/b;

    .line 337
    iget-object v8, p0, Landroidx/d/b/b/x$b;->j:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    int-to-double v9, v6

    const-wide v11, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v9, v11

    .line 338
    aput-wide v9, v3, v5

    .line 339
    iget-object v6, p0, Landroidx/d/b/b/x$b;->k:[F

    invoke-virtual {v7, v6}, Landroidx/d/e/b;->a([F)V

    move v6, v2

    .line 340
    :goto_1
    iget-object v7, p0, Landroidx/d/b/b/x$b;->k:[F

    array-length v7, v7

    if-ge v6, v7, :cond_0

    .line 341
    aget-object v7, v4, v5

    iget-object v9, p0, Landroidx/d/b/b/x$b;->k:[F

    aget v9, v9, v6

    float-to-double v9, v9

    aput-wide v9, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 343
    :cond_0
    aget-object v6, v4, v5

    aget v7, v8, v2

    float-to-double v9, v7

    aput-wide v9, v6, v1

    .line 344
    aget-object v6, v4, v5

    const/4 v7, 0x1

    add-int/lit8 v9, v1, 0x1

    aget v7, v8, v7

    float-to-double v7, v7

    aput-wide v7, v6, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 346
    :cond_1
    invoke-static {p1, v3, v4}, Landroidx/d/b/a/b;->a(I[D[[D)Landroidx/d/b/a/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/d/b/b/x$b;->a:Landroidx/d/b/a/b;

    return-void
.end method

.method public a(IFFIF)V
    .locals 0

    .line 350
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute,...)"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(ILandroidx/d/e/b;FIF)V
    .locals 2

    .line 354
    iget-object v0, p0, Landroidx/d/b/b/x$b;->i:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 355
    iget-object p2, p0, Landroidx/d/b/b/x$b;->j:Landroid/util/SparseArray;

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p3, v0, v1

    const/4 p3, 0x1

    aput p5, v0, p3

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 356
    iget p1, p0, Landroidx/d/b/b/x$b;->b:I

    invoke-static {p1, p4}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/d/b/b/x$b;->b:I

    return-void
.end method

.method public a(Landroid/view/View;FJLandroidx/d/b/b/g;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    .line 361
    iget-object v4, v0, Landroidx/d/b/b/x$b;->a:Landroidx/d/b/a/b;

    move/from16 v5, p2

    float-to-double v5, v5

    iget-object v7, v0, Landroidx/d/b/b/x$b;->k:[F

    invoke-virtual {v4, v5, v6, v7}, Landroidx/d/b/a/b;->a(D[F)V

    .line 362
    iget-object v4, v0, Landroidx/d/b/b/x$b;->k:[F

    iget-object v5, v0, Landroidx/d/b/b/x$b;->k:[F

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    aget v4, v4, v5

    .line 363
    iget-object v5, v0, Landroidx/d/b/b/x$b;->k:[F

    iget-object v6, v0, Landroidx/d/b/b/x$b;->k:[F

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    aget v5, v5, v6

    .line 364
    iget-wide v8, v0, Landroidx/d/b/b/x$b;->f:J

    sub-long v8, v2, v8

    .line 366
    iget v6, v0, Landroidx/d/b/b/x$b;->g:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v6, :cond_0

    .line 367
    iget-object v6, v0, Landroidx/d/b/b/x$b;->h:Ljava/lang/String;

    move-object/from16 v12, p5

    invoke-virtual {v12, v1, v6, v11}, Landroidx/d/b/b/g;->a(Ljava/lang/Object;Ljava/lang/String;I)F

    move-result v6

    iput v6, v0, Landroidx/d/b/b/x$b;->g:F

    .line 368
    iget v6, v0, Landroidx/d/b/b/x$b;->g:F

    invoke-static {v6}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 369
    iput v10, v0, Landroidx/d/b/b/x$b;->g:F

    .line 373
    :cond_0
    iget v6, v0, Landroidx/d/b/b/x$b;->g:F

    float-to-double v12, v6

    long-to-double v8, v8

    const-wide v14, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v8, v14

    float-to-double v14, v4

    mul-double/2addr v8, v14

    add-double/2addr v12, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v12, v8

    double-to-float v6, v12

    iput v6, v0, Landroidx/d/b/b/x$b;->g:F

    .line 374
    iput-wide v2, v0, Landroidx/d/b/b/x$b;->f:J

    .line 375
    iget v2, v0, Landroidx/d/b/b/x$b;->g:F

    invoke-virtual {v0, v2}, Landroidx/d/b/b/x$b;->a(F)F

    move-result v2

    .line 376
    iput-boolean v11, v0, Landroidx/d/b/b/x$b;->e:Z

    move v3, v11

    .line 377
    :goto_0
    iget-object v6, v0, Landroidx/d/b/b/x$b;->l:[F

    array-length v6, v6

    if-ge v3, v6, :cond_2

    .line 378
    iget-boolean v6, v0, Landroidx/d/b/b/x$b;->e:Z

    iget-object v8, v0, Landroidx/d/b/b/x$b;->k:[F

    aget v8, v8, v3

    float-to-double v8, v8

    const-wide/16 v12, 0x0

    cmpl-double v8, v8, v12

    if-eqz v8, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    move v8, v11

    :goto_1
    or-int/2addr v6, v8

    iput-boolean v6, v0, Landroidx/d/b/b/x$b;->e:Z

    .line 379
    iget-object v6, v0, Landroidx/d/b/b/x$b;->l:[F

    iget-object v8, v0, Landroidx/d/b/b/x$b;->k:[F

    aget v8, v8, v3

    mul-float/2addr v8, v2

    add-float/2addr v8, v5

    aput v8, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 381
    :cond_2
    iget-object v2, v0, Landroidx/d/b/b/x$b;->i:Landroid/util/SparseArray;

    invoke-virtual {v2, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/e/b;

    iget-object v3, v0, Landroidx/d/b/b/x$b;->l:[F

    invoke-virtual {v2, v1, v3}, Landroidx/d/e/b;->a(Landroid/view/View;[F)V

    cmpl-float v1, v4, v10

    if-eqz v1, :cond_3

    .line 383
    iput-boolean v7, v0, Landroidx/d/b/b/x$b;->e:Z

    .line 385
    :cond_3
    iget-boolean v0, v0, Landroidx/d/b/b/x$b;->e:Z

    return v0
.end method
