.class Landroidx/d/c/b/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/c/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Landroidx/d/c/b/g;

.field private c:I

.field private d:Landroidx/d/c/b/e;

.field private e:Landroidx/d/c/b/d;

.field private f:Landroidx/d/c/b/d;

.field private g:Landroidx/d/c/b/d;

.field private h:Landroidx/d/c/b/d;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(Landroidx/d/c/b/g;ILandroidx/d/c/b/d;Landroidx/d/c/b/d;Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V
    .locals 2

    .line 355
    iput-object p1, p0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 334
    iput v0, p0, Landroidx/d/c/b/g$a;->c:I

    const/4 v1, 0x0

    .line 335
    iput-object v1, p0, Landroidx/d/c/b/g$a;->d:Landroidx/d/c/b/e;

    .line 336
    iput v0, p0, Landroidx/d/c/b/g$a;->a:I

    .line 341
    iput v0, p0, Landroidx/d/c/b/g$a;->i:I

    .line 342
    iput v0, p0, Landroidx/d/c/b/g$a;->j:I

    .line 343
    iput v0, p0, Landroidx/d/c/b/g$a;->k:I

    .line 344
    iput v0, p0, Landroidx/d/c/b/g$a;->l:I

    .line 345
    iput v0, p0, Landroidx/d/c/b/g$a;->m:I

    .line 346
    iput v0, p0, Landroidx/d/c/b/g$a;->n:I

    .line 347
    iput v0, p0, Landroidx/d/c/b/g$a;->o:I

    .line 348
    iput v0, p0, Landroidx/d/c/b/g$a;->p:I

    .line 349
    iput v0, p0, Landroidx/d/c/b/g$a;->q:I

    .line 350
    iput v0, p0, Landroidx/d/c/b/g$a;->r:I

    .line 356
    iput p2, p0, Landroidx/d/c/b/g$a;->c:I

    .line 357
    iput-object p3, p0, Landroidx/d/c/b/g$a;->e:Landroidx/d/c/b/d;

    .line 358
    iput-object p4, p0, Landroidx/d/c/b/g$a;->f:Landroidx/d/c/b/d;

    .line 359
    iput-object p5, p0, Landroidx/d/c/b/g$a;->g:Landroidx/d/c/b/d;

    .line 360
    iput-object p6, p0, Landroidx/d/c/b/g$a;->h:Landroidx/d/c/b/d;

    .line 361
    invoke-virtual {p1}, Landroidx/d/c/b/g;->f()I

    move-result p2

    iput p2, p0, Landroidx/d/c/b/g$a;->i:I

    .line 362
    invoke-virtual {p1}, Landroidx/d/c/b/g;->b()I

    move-result p2

    iput p2, p0, Landroidx/d/c/b/g$a;->j:I

    .line 363
    invoke-virtual {p1}, Landroidx/d/c/b/g;->g()I

    move-result p2

    iput p2, p0, Landroidx/d/c/b/g$a;->k:I

    .line 364
    invoke-virtual {p1}, Landroidx/d/c/b/g;->c()I

    move-result p1

    iput p1, p0, Landroidx/d/c/b/g$a;->l:I

    .line 365
    iput p7, p0, Landroidx/d/c/b/g$a;->r:I

    return-void
.end method

.method static synthetic a(Landroidx/d/c/b/g$a;)Landroidx/d/c/b/e;
    .locals 0

    .line 333
    iget-object p0, p0, Landroidx/d/c/b/g$a;->d:Landroidx/d/c/b/e;

    return-object p0
.end method

.method private d()V
    .locals 9

    const/4 v0, 0x0

    .line 723
    iput v0, p0, Landroidx/d/c/b/g$a;->m:I

    .line 724
    iput v0, p0, Landroidx/d/c/b/g$a;->n:I

    const/4 v1, 0x0

    .line 725
    iput-object v1, p0, Landroidx/d/c/b/g$a;->d:Landroidx/d/c/b/e;

    .line 726
    iput v0, p0, Landroidx/d/c/b/g$a;->a:I

    .line 727
    iget v1, p0, Landroidx/d/c/b/g$a;->p:I

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_7

    .line 729
    iget v3, p0, Landroidx/d/c/b/g$a;->o:I

    add-int/2addr v3, v2

    iget-object v4, p0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v4}, Landroidx/d/c/b/g;->c(Landroidx/d/c/b/g;)I

    move-result v4

    if-lt v3, v4, :cond_0

    goto/16 :goto_2

    .line 732
    :cond_0
    iget-object v3, p0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v3}, Landroidx/d/c/b/g;->d(Landroidx/d/c/b/g;)[Landroidx/d/c/b/e;

    move-result-object v3

    iget v4, p0, Landroidx/d/c/b/g$a;->o:I

    add-int/2addr v4, v2

    aget-object v3, v3, v4

    .line 733
    iget v4, p0, Landroidx/d/c/b/g$a;->c:I

    const/16 v5, 0x8

    if-nez v4, :cond_3

    .line 734
    invoke-virtual {v3}, Landroidx/d/c/b/e;->I()I

    move-result v4

    .line 735
    iget-object v6, p0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v6}, Landroidx/d/c/b/g;->a(Landroidx/d/c/b/g;)I

    move-result v6

    .line 736
    invoke-virtual {v3}, Landroidx/d/c/b/e;->E()I

    move-result v7

    if-ne v7, v5, :cond_1

    move v6, v0

    .line 739
    :cond_1
    iget v5, p0, Landroidx/d/c/b/g$a;->m:I

    add-int/2addr v4, v6

    add-int/2addr v5, v4

    iput v5, p0, Landroidx/d/c/b/g$a;->m:I

    .line 740
    iget-object v4, p0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    iget v5, p0, Landroidx/d/c/b/g$a;->r:I

    invoke-static {v4, v3, v5}, Landroidx/d/c/b/g;->b(Landroidx/d/c/b/g;Landroidx/d/c/b/e;I)I

    move-result v4

    .line 741
    iget-object v5, p0, Landroidx/d/c/b/g$a;->d:Landroidx/d/c/b/e;

    if-eqz v5, :cond_2

    iget v5, p0, Landroidx/d/c/b/g$a;->a:I

    if-ge v5, v4, :cond_6

    .line 742
    :cond_2
    iput-object v3, p0, Landroidx/d/c/b/g$a;->d:Landroidx/d/c/b/e;

    .line 743
    iput v4, p0, Landroidx/d/c/b/g$a;->a:I

    .line 744
    iput v4, p0, Landroidx/d/c/b/g$a;->n:I

    goto :goto_1

    .line 747
    :cond_3
    iget-object v4, p0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    iget v6, p0, Landroidx/d/c/b/g$a;->r:I

    invoke-static {v4, v3, v6}, Landroidx/d/c/b/g;->a(Landroidx/d/c/b/g;Landroidx/d/c/b/e;I)I

    move-result v4

    .line 748
    iget-object v6, p0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    iget v7, p0, Landroidx/d/c/b/g$a;->r:I

    invoke-static {v6, v3, v7}, Landroidx/d/c/b/g;->b(Landroidx/d/c/b/g;Landroidx/d/c/b/e;I)I

    move-result v6

    .line 749
    iget-object v7, p0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v7}, Landroidx/d/c/b/g;->b(Landroidx/d/c/b/g;)I

    move-result v7

    .line 750
    invoke-virtual {v3}, Landroidx/d/c/b/e;->E()I

    move-result v8

    if-ne v8, v5, :cond_4

    move v7, v0

    .line 753
    :cond_4
    iget v5, p0, Landroidx/d/c/b/g$a;->n:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, p0, Landroidx/d/c/b/g$a;->n:I

    .line 754
    iget-object v5, p0, Landroidx/d/c/b/g$a;->d:Landroidx/d/c/b/e;

    if-eqz v5, :cond_5

    iget v5, p0, Landroidx/d/c/b/g$a;->a:I

    if-ge v5, v4, :cond_6

    .line 755
    :cond_5
    iput-object v3, p0, Landroidx/d/c/b/g$a;->d:Landroidx/d/c/b/e;

    .line 756
    iput v4, p0, Landroidx/d/c/b/g$a;->a:I

    .line 757
    iput v4, p0, Landroidx/d/c/b/g$a;->m:I

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 385
    iput v0, p0, Landroidx/d/c/b/g$a;->a:I

    const/4 v1, 0x0

    .line 386
    iput-object v1, p0, Landroidx/d/c/b/g$a;->d:Landroidx/d/c/b/e;

    .line 387
    iput v0, p0, Landroidx/d/c/b/g$a;->m:I

    .line 388
    iput v0, p0, Landroidx/d/c/b/g$a;->n:I

    .line 389
    iput v0, p0, Landroidx/d/c/b/g$a;->o:I

    .line 390
    iput v0, p0, Landroidx/d/c/b/g$a;->p:I

    .line 391
    iput v0, p0, Landroidx/d/c/b/g$a;->q:I

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 394
    iput p1, p0, Landroidx/d/c/b/g$a;->o:I

    return-void
.end method

.method public a(ILandroidx/d/c/b/d;Landroidx/d/c/b/d;Landroidx/d/c/b/d;Landroidx/d/c/b/d;IIIII)V
    .locals 0

    .line 372
    iput p1, p0, Landroidx/d/c/b/g$a;->c:I

    .line 373
    iput-object p2, p0, Landroidx/d/c/b/g$a;->e:Landroidx/d/c/b/d;

    .line 374
    iput-object p3, p0, Landroidx/d/c/b/g$a;->f:Landroidx/d/c/b/d;

    .line 375
    iput-object p4, p0, Landroidx/d/c/b/g$a;->g:Landroidx/d/c/b/d;

    .line 376
    iput-object p5, p0, Landroidx/d/c/b/g$a;->h:Landroidx/d/c/b/d;

    .line 377
    iput p6, p0, Landroidx/d/c/b/g$a;->i:I

    .line 378
    iput p7, p0, Landroidx/d/c/b/g$a;->j:I

    .line 379
    iput p8, p0, Landroidx/d/c/b/g$a;->k:I

    .line 380
    iput p9, p0, Landroidx/d/c/b/g$a;->l:I

    .line 381
    iput p10, p0, Landroidx/d/c/b/g$a;->r:I

    return-void
.end method

.method public a(Landroidx/d/c/b/e;)V
    .locals 6

    .line 411
    iget v0, p0, Landroidx/d/c/b/g$a;->c:I

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 412
    iget-object v0, p0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    iget v3, p0, Landroidx/d/c/b/g$a;->r:I

    invoke-static {v0, p1, v3}, Landroidx/d/c/b/g;->a(Landroidx/d/c/b/g;Landroidx/d/c/b/e;I)I

    move-result v0

    .line 413
    invoke-virtual {p1}, Landroidx/d/c/b/e;->aj()Landroidx/d/c/b/e$a;

    move-result-object v3

    sget-object v4, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v3, v4, :cond_0

    .line 414
    iget v0, p0, Landroidx/d/c/b/g$a;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/d/c/b/g$a;->q:I

    move v0, v2

    .line 417
    :cond_0
    iget-object v3, p0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v3}, Landroidx/d/c/b/g;->a(Landroidx/d/c/b/g;)I

    move-result v3

    .line 418
    invoke-virtual {p1}, Landroidx/d/c/b/e;->E()I

    move-result v4

    if-ne v4, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 421
    :goto_0
    iget v1, p0, Landroidx/d/c/b/g$a;->m:I

    add-int/2addr v0, v2

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/d/c/b/g$a;->m:I

    .line 422
    iget-object v0, p0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    iget v1, p0, Landroidx/d/c/b/g$a;->r:I

    invoke-static {v0, p1, v1}, Landroidx/d/c/b/g;->b(Landroidx/d/c/b/g;Landroidx/d/c/b/e;I)I

    move-result v0

    .line 423
    iget-object v1, p0, Landroidx/d/c/b/g$a;->d:Landroidx/d/c/b/e;

    if-eqz v1, :cond_2

    iget v1, p0, Landroidx/d/c/b/g$a;->a:I

    if-ge v1, v0, :cond_7

    .line 424
    :cond_2
    iput-object p1, p0, Landroidx/d/c/b/g$a;->d:Landroidx/d/c/b/e;

    .line 425
    iput v0, p0, Landroidx/d/c/b/g$a;->a:I

    .line 426
    iput v0, p0, Landroidx/d/c/b/g$a;->n:I

    goto :goto_2

    .line 429
    :cond_3
    iget-object v0, p0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    iget v3, p0, Landroidx/d/c/b/g$a;->r:I

    invoke-static {v0, p1, v3}, Landroidx/d/c/b/g;->a(Landroidx/d/c/b/g;Landroidx/d/c/b/e;I)I

    move-result v0

    .line 430
    iget-object v3, p0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    iget v4, p0, Landroidx/d/c/b/g$a;->r:I

    invoke-static {v3, p1, v4}, Landroidx/d/c/b/g;->b(Landroidx/d/c/b/g;Landroidx/d/c/b/e;I)I

    move-result v3

    .line 431
    invoke-virtual {p1}, Landroidx/d/c/b/e;->ak()Landroidx/d/c/b/e$a;

    move-result-object v4

    sget-object v5, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v4, v5, :cond_4

    .line 432
    iget v3, p0, Landroidx/d/c/b/g$a;->q:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroidx/d/c/b/g$a;->q:I

    move v3, v2

    .line 435
    :cond_4
    iget-object v4, p0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v4}, Landroidx/d/c/b/g;->b(Landroidx/d/c/b/g;)I

    move-result v4

    .line 436
    invoke-virtual {p1}, Landroidx/d/c/b/e;->E()I

    move-result v5

    if-ne v5, v1, :cond_5

    goto :goto_1

    :cond_5
    move v2, v4

    .line 439
    :goto_1
    iget v1, p0, Landroidx/d/c/b/g$a;->n:I

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    iput v1, p0, Landroidx/d/c/b/g$a;->n:I

    .line 440
    iget-object v1, p0, Landroidx/d/c/b/g$a;->d:Landroidx/d/c/b/e;

    if-eqz v1, :cond_6

    iget v1, p0, Landroidx/d/c/b/g$a;->a:I

    if-ge v1, v0, :cond_7

    .line 441
    :cond_6
    iput-object p1, p0, Landroidx/d/c/b/g$a;->d:Landroidx/d/c/b/e;

    .line 442
    iput v0, p0, Landroidx/d/c/b/g$a;->a:I

    .line 443
    iput v0, p0, Landroidx/d/c/b/g$a;->m:I

    .line 446
    :cond_7
    :goto_2
    iget p1, p0, Landroidx/d/c/b/g$a;->p:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/d/c/b/g$a;->p:I

    return-void
.end method

.method public a(ZIZ)V
    .locals 14

    move-object v0, p0

    .line 450
    iget v2, v0, Landroidx/d/c/b/g$a;->p:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 452
    iget v5, v0, Landroidx/d/c/b/g$a;->o:I

    add-int/2addr v5, v4

    iget-object v6, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v6}, Landroidx/d/c/b/g;->c(Landroidx/d/c/b/g;)I

    move-result v6

    if-lt v5, v6, :cond_0

    goto :goto_1

    .line 455
    :cond_0
    iget-object v5, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v5}, Landroidx/d/c/b/g;->d(Landroidx/d/c/b/g;)[Landroidx/d/c/b/e;

    move-result-object v5

    iget v6, v0, Landroidx/d/c/b/g$a;->o:I

    add-int/2addr v6, v4

    aget-object v5, v5, v6

    if-eqz v5, :cond_1

    .line 457
    invoke-virtual {v5}, Landroidx/d/c/b/e;->ai()V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_31

    .line 460
    iget-object v4, v0, Landroidx/d/c/b/g$a;->d:Landroidx/d/c/b/e;

    if-nez v4, :cond_3

    goto/16 :goto_16

    :cond_3
    if-eqz p3, :cond_4

    if-nez p2, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_2
    const/4 v6, -0x1

    move v7, v3

    move v8, v6

    move v9, v8

    :goto_3
    if-ge v7, v2, :cond_9

    if-eqz p1, :cond_5

    add-int/lit8 v10, v2, -0x1

    sub-int/2addr v10, v7

    goto :goto_4

    :cond_5
    move v10, v7

    .line 472
    :goto_4
    iget v11, v0, Landroidx/d/c/b/g$a;->o:I

    add-int/2addr v11, v10

    iget-object v12, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v12}, Landroidx/d/c/b/g;->c(Landroidx/d/c/b/g;)I

    move-result v12

    if-lt v11, v12, :cond_6

    goto :goto_5

    .line 475
    :cond_6
    iget-object v11, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v11}, Landroidx/d/c/b/g;->d(Landroidx/d/c/b/g;)[Landroidx/d/c/b/e;

    move-result-object v11

    iget v12, v0, Landroidx/d/c/b/g$a;->o:I

    add-int/2addr v12, v10

    aget-object v10, v11, v12

    .line 476
    invoke-virtual {v10}, Landroidx/d/c/b/e;->E()I

    move-result v10

    if-nez v10, :cond_8

    if-ne v8, v6, :cond_7

    move v8, v7

    :cond_7
    move v9, v7

    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 485
    :cond_9
    :goto_5
    iget v10, v0, Landroidx/d/c/b/g$a;->c:I

    if-nez v10, :cond_1e

    .line 486
    iget-object v10, v0, Landroidx/d/c/b/g$a;->d:Landroidx/d/c/b/e;

    .line 487
    iget-object v11, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v11}, Landroidx/d/c/b/g;->e(Landroidx/d/c/b/g;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroidx/d/c/b/e;->x(I)V

    .line 488
    iget v11, v0, Landroidx/d/c/b/g$a;->j:I

    if-lez p2, :cond_a

    .line 490
    iget-object v12, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v12}, Landroidx/d/c/b/g;->b(Landroidx/d/c/b/g;)I

    move-result v12

    add-int/2addr v11, v12

    .line 492
    :cond_a
    iget-object v12, v10, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    iget-object v13, v0, Landroidx/d/c/b/g$a;->f:Landroidx/d/c/b/d;

    invoke-virtual {v12, v13, v11}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    if-eqz p3, :cond_b

    .line 494
    iget-object v11, v10, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    iget-object v12, v0, Landroidx/d/c/b/g$a;->h:Landroidx/d/c/b/d;

    iget v13, v0, Landroidx/d/c/b/g$a;->l:I

    invoke-virtual {v11, v12, v13}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    :cond_b
    if-lez p2, :cond_c

    .line 497
    iget-object v1, v0, Landroidx/d/c/b/g$a;->f:Landroidx/d/c/b/d;

    iget-object v1, v1, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    iget-object v1, v1, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    .line 498
    iget-object v11, v10, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    invoke-virtual {v1, v11, v3}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    .line 502
    :cond_c
    iget-object v1, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v1}, Landroidx/d/c/b/g;->f(Landroidx/d/c/b/g;)I

    move-result v1

    const/4 v11, 0x3

    if-ne v1, v11, :cond_10

    invoke-virtual {v10}, Landroidx/d/c/b/e;->Y()Z

    move-result v1

    if-nez v1, :cond_10

    move v1, v3

    :goto_6
    if-ge v1, v2, :cond_10

    if-eqz p1, :cond_d

    add-int/lit8 v12, v2, -0x1

    sub-int/2addr v12, v1

    goto :goto_7

    :cond_d
    move v12, v1

    .line 508
    :goto_7
    iget v13, v0, Landroidx/d/c/b/g$a;->o:I

    add-int/2addr v13, v12

    iget-object v7, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v7}, Landroidx/d/c/b/g;->c(Landroidx/d/c/b/g;)I

    move-result v7

    if-lt v13, v7, :cond_e

    goto :goto_8

    .line 511
    :cond_e
    iget-object v7, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v7}, Landroidx/d/c/b/g;->d(Landroidx/d/c/b/g;)[Landroidx/d/c/b/e;

    move-result-object v7

    iget v13, v0, Landroidx/d/c/b/g$a;->o:I

    add-int/2addr v13, v12

    aget-object v7, v7, v13

    .line 512
    invoke-virtual {v7}, Landroidx/d/c/b/e;->Y()Z

    move-result v12

    if-eqz v12, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    :goto_8
    move-object v7, v10

    :goto_9
    move v1, v3

    const/4 v12, 0x0

    :goto_a
    if-ge v1, v2, :cond_30

    if-eqz p1, :cond_11

    add-int/lit8 v13, v2, -0x1

    sub-int/2addr v13, v1

    goto :goto_b

    :cond_11
    move v13, v1

    .line 524
    :goto_b
    iget v11, v0, Landroidx/d/c/b/g$a;->o:I

    add-int/2addr v11, v13

    iget-object v4, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v4}, Landroidx/d/c/b/g;->c(Landroidx/d/c/b/g;)I

    move-result v4

    if-lt v11, v4, :cond_12

    goto/16 :goto_15

    .line 527
    :cond_12
    iget-object v4, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v4}, Landroidx/d/c/b/g;->d(Landroidx/d/c/b/g;)[Landroidx/d/c/b/e;

    move-result-object v4

    iget v11, v0, Landroidx/d/c/b/g$a;->o:I

    add-int/2addr v11, v13

    aget-object v4, v4, v11

    if-nez v1, :cond_13

    .line 529
    iget-object v11, v4, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    iget-object v3, v0, Landroidx/d/c/b/g$a;->e:Landroidx/d/c/b/d;

    iget v6, v0, Landroidx/d/c/b/g$a;->i:I

    invoke-virtual {v4, v11, v3, v6}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    :cond_13
    if-nez v13, :cond_17

    .line 535
    iget-object v3, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v3}, Landroidx/d/c/b/g;->g(Landroidx/d/c/b/g;)I

    move-result v3

    .line 536
    iget-object v6, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v6}, Landroidx/d/c/b/g;->h(Landroidx/d/c/b/g;)F

    move-result v6

    .line 537
    iget v11, v0, Landroidx/d/c/b/g$a;->o:I

    if-nez v11, :cond_14

    iget-object v11, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v11}, Landroidx/d/c/b/g;->i(Landroidx/d/c/b/g;)I

    move-result v11

    const/4 v13, -0x1

    if-eq v11, v13, :cond_15

    .line 538
    iget-object v3, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v3}, Landroidx/d/c/b/g;->i(Landroidx/d/c/b/g;)I

    move-result v3

    .line 539
    iget-object v6, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v6}, Landroidx/d/c/b/g;->j(Landroidx/d/c/b/g;)F

    move-result v6

    goto :goto_c

    :cond_14
    const/4 v13, -0x1

    :cond_15
    if-eqz p3, :cond_16

    .line 540
    iget-object v11, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v11}, Landroidx/d/c/b/g;->k(Landroidx/d/c/b/g;)I

    move-result v11

    if-eq v11, v13, :cond_16

    .line 541
    iget-object v3, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v3}, Landroidx/d/c/b/g;->k(Landroidx/d/c/b/g;)I

    move-result v3

    .line 542
    iget-object v6, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v6}, Landroidx/d/c/b/g;->l(Landroidx/d/c/b/g;)F

    move-result v6

    .line 544
    :cond_16
    :goto_c
    invoke-virtual {v4, v3}, Landroidx/d/c/b/e;->w(I)V

    .line 545
    invoke-virtual {v4, v6}, Landroidx/d/c/b/e;->a(F)V

    :cond_17
    add-int/lit8 v3, v2, -0x1

    if-ne v1, v3, :cond_18

    .line 548
    iget-object v3, v4, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget-object v6, v0, Landroidx/d/c/b/g$a;->g:Landroidx/d/c/b/d;

    iget v11, v0, Landroidx/d/c/b/g$a;->k:I

    invoke-virtual {v4, v3, v6, v11}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    :cond_18
    if-eqz v12, :cond_1a

    .line 551
    iget-object v3, v4, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    iget-object v6, v12, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget-object v11, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v11}, Landroidx/d/c/b/g;->a(Landroidx/d/c/b/g;)I

    move-result v11

    invoke-virtual {v3, v6, v11}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    if-ne v1, v8, :cond_19

    .line 553
    iget-object v3, v4, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    iget v6, v0, Landroidx/d/c/b/g$a;->i:I

    invoke-virtual {v3, v6}, Landroidx/d/c/b/d;->c(I)V

    .line 555
    :cond_19
    iget-object v3, v12, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget-object v6, v4, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    const/4 v11, 0x0

    invoke-virtual {v3, v6, v11}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    const/4 v3, 0x1

    add-int/lit8 v6, v9, 0x1

    if-ne v1, v6, :cond_1a

    .line 557
    iget-object v3, v12, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget v6, v0, Landroidx/d/c/b/g$a;->k:I

    invoke-virtual {v3, v6}, Landroidx/d/c/b/d;->c(I)V

    :cond_1a
    if-eq v4, v10, :cond_1d

    .line 561
    iget-object v3, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v3}, Landroidx/d/c/b/g;->f(Landroidx/d/c/b/g;)I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_1b

    .line 562
    invoke-virtual {v7}, Landroidx/d/c/b/e;->Y()Z

    move-result v3

    if-eqz v3, :cond_1b

    if-eq v4, v7, :cond_1b

    .line 564
    invoke-virtual {v4}, Landroidx/d/c/b/e;->Y()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 565
    iget-object v3, v4, Landroidx/d/c/b/e;->X:Landroidx/d/c/b/d;

    iget-object v11, v7, Landroidx/d/c/b/e;->X:Landroidx/d/c/b/d;

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    goto :goto_d

    :cond_1b
    const/4 v12, 0x0

    .line 567
    iget-object v3, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v3}, Landroidx/d/c/b/g;->f(Landroidx/d/c/b/g;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    if-eqz v5, :cond_1c

    .line 579
    iget-object v3, v4, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    iget-object v11, v0, Landroidx/d/c/b/g$a;->f:Landroidx/d/c/b/d;

    iget v12, v0, Landroidx/d/c/b/g$a;->j:I

    invoke-virtual {v3, v11, v12}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    .line 580
    iget-object v3, v4, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    iget-object v11, v0, Landroidx/d/c/b/g$a;->h:Landroidx/d/c/b/d;

    iget v12, v0, Landroidx/d/c/b/g$a;->l:I

    invoke-virtual {v3, v11, v12}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    goto :goto_d

    .line 573
    :pswitch_0
    iget-object v3, v4, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    iget-object v11, v10, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    invoke-virtual {v3, v11, v12}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    goto :goto_d

    .line 569
    :pswitch_1
    iget-object v3, v4, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    iget-object v11, v10, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    invoke-virtual {v3, v11, v12}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    goto :goto_d

    .line 582
    :cond_1c
    iget-object v3, v4, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    iget-object v11, v10, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    .line 583
    iget-object v3, v4, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    iget-object v11, v10, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    invoke-virtual {v3, v11, v12}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    goto :goto_d

    :cond_1d
    const/4 v6, 0x3

    :goto_d
    add-int/lit8 v1, v1, 0x1

    move-object v12, v4

    move v11, v6

    const/4 v3, 0x0

    const/4 v6, -0x1

    goto/16 :goto_a

    .line 592
    :cond_1e
    iget-object v3, v0, Landroidx/d/c/b/g$a;->d:Landroidx/d/c/b/e;

    .line 593
    iget-object v4, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v4}, Landroidx/d/c/b/g;->g(Landroidx/d/c/b/g;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/d/c/b/e;->w(I)V

    .line 594
    iget v4, v0, Landroidx/d/c/b/g$a;->i:I

    if-lez p2, :cond_1f

    .line 596
    iget-object v6, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v6}, Landroidx/d/c/b/g;->a(Landroidx/d/c/b/g;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_1f
    if-eqz p1, :cond_21

    .line 599
    iget-object v6, v3, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget-object v7, v0, Landroidx/d/c/b/g$a;->g:Landroidx/d/c/b/d;

    invoke-virtual {v6, v7, v4}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    if-eqz p3, :cond_20

    .line 601
    iget-object v4, v3, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    iget-object v6, v0, Landroidx/d/c/b/g$a;->e:Landroidx/d/c/b/d;

    iget v7, v0, Landroidx/d/c/b/g$a;->k:I

    invoke-virtual {v4, v6, v7}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    :cond_20
    if-lez p2, :cond_23

    .line 604
    iget-object v1, v0, Landroidx/d/c/b/g$a;->g:Landroidx/d/c/b/d;

    iget-object v1, v1, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    iget-object v1, v1, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    .line 605
    iget-object v4, v3, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    goto :goto_e

    .line 608
    :cond_21
    iget-object v6, v3, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    iget-object v7, v0, Landroidx/d/c/b/g$a;->e:Landroidx/d/c/b/d;

    invoke-virtual {v6, v7, v4}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    if-eqz p3, :cond_22

    .line 610
    iget-object v4, v3, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget-object v6, v0, Landroidx/d/c/b/g$a;->g:Landroidx/d/c/b/d;

    iget v7, v0, Landroidx/d/c/b/g$a;->k:I

    invoke-virtual {v4, v6, v7}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    :cond_22
    if-lez p2, :cond_23

    .line 613
    iget-object v1, v0, Landroidx/d/c/b/g$a;->e:Landroidx/d/c/b/d;

    iget-object v1, v1, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    iget-object v1, v1, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    .line 614
    iget-object v4, v3, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    :cond_23
    :goto_e
    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_f
    if-ge v1, v2, :cond_30

    .line 618
    iget v6, v0, Landroidx/d/c/b/g$a;->o:I

    add-int/2addr v6, v1

    iget-object v7, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v7}, Landroidx/d/c/b/g;->c(Landroidx/d/c/b/g;)I

    move-result v7

    if-lt v6, v7, :cond_24

    goto/16 :goto_15

    .line 621
    :cond_24
    iget-object v6, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v6}, Landroidx/d/c/b/g;->d(Landroidx/d/c/b/g;)[Landroidx/d/c/b/e;

    move-result-object v6

    iget v7, v0, Landroidx/d/c/b/g$a;->o:I

    add-int/2addr v7, v1

    aget-object v6, v6, v7

    if-nez v1, :cond_28

    .line 623
    iget-object v7, v6, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    iget-object v10, v0, Landroidx/d/c/b/g$a;->f:Landroidx/d/c/b/d;

    iget v11, v0, Landroidx/d/c/b/g$a;->j:I

    invoke-virtual {v6, v7, v10, v11}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    .line 624
    iget-object v7, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v7}, Landroidx/d/c/b/g;->e(Landroidx/d/c/b/g;)I

    move-result v7

    .line 625
    iget-object v10, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v10}, Landroidx/d/c/b/g;->m(Landroidx/d/c/b/g;)F

    move-result v10

    .line 626
    iget v11, v0, Landroidx/d/c/b/g$a;->o:I

    if-nez v11, :cond_25

    iget-object v11, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v11}, Landroidx/d/c/b/g;->n(Landroidx/d/c/b/g;)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_26

    .line 627
    iget-object v7, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v7}, Landroidx/d/c/b/g;->n(Landroidx/d/c/b/g;)I

    move-result v7

    .line 628
    iget-object v10, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v10}, Landroidx/d/c/b/g;->o(Landroidx/d/c/b/g;)F

    move-result v10

    goto :goto_10

    :cond_25
    const/4 v12, -0x1

    :cond_26
    if-eqz p3, :cond_27

    .line 629
    iget-object v11, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v11}, Landroidx/d/c/b/g;->p(Landroidx/d/c/b/g;)I

    move-result v11

    if-eq v11, v12, :cond_27

    .line 630
    iget-object v7, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v7}, Landroidx/d/c/b/g;->p(Landroidx/d/c/b/g;)I

    move-result v7

    .line 631
    iget-object v10, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v10}, Landroidx/d/c/b/g;->q(Landroidx/d/c/b/g;)F

    move-result v10

    .line 633
    :cond_27
    :goto_10
    invoke-virtual {v6, v7}, Landroidx/d/c/b/e;->x(I)V

    .line 634
    invoke-virtual {v6, v10}, Landroidx/d/c/b/e;->b(F)V

    goto :goto_11

    :cond_28
    const/4 v12, -0x1

    :goto_11
    add-int/lit8 v7, v2, -0x1

    if-ne v1, v7, :cond_29

    .line 637
    iget-object v7, v6, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    iget-object v10, v0, Landroidx/d/c/b/g$a;->h:Landroidx/d/c/b/d;

    iget v11, v0, Landroidx/d/c/b/g$a;->l:I

    invoke-virtual {v6, v7, v10, v11}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    :cond_29
    if-eqz v4, :cond_2b

    .line 640
    iget-object v7, v6, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    iget-object v10, v4, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    iget-object v11, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v11}, Landroidx/d/c/b/g;->b(Landroidx/d/c/b/g;)I

    move-result v11

    invoke-virtual {v7, v10, v11}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    if-ne v1, v8, :cond_2a

    .line 642
    iget-object v7, v6, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    iget v10, v0, Landroidx/d/c/b/g$a;->j:I

    invoke-virtual {v7, v10}, Landroidx/d/c/b/d;->c(I)V

    .line 644
    :cond_2a
    iget-object v7, v4, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    iget-object v10, v6, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    const/4 v7, 0x1

    add-int/lit8 v10, v9, 0x1

    if-ne v1, v10, :cond_2c

    .line 646
    iget-object v4, v4, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    iget v10, v0, Landroidx/d/c/b/g$a;->l:I

    invoke-virtual {v4, v10}, Landroidx/d/c/b/d;->c(I)V

    goto :goto_12

    :cond_2b
    const/4 v7, 0x1

    :cond_2c
    :goto_12
    if-eq v6, v3, :cond_2f

    if-eqz p1, :cond_2d

    .line 651
    iget-object v4, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v4}, Landroidx/d/c/b/g;->r(Landroidx/d/c/b/g;)I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_13

    .line 657
    :pswitch_2
    iget-object v4, v6, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    iget-object v10, v3, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    .line 658
    iget-object v4, v6, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget-object v10, v3, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    invoke-virtual {v4, v10, v11}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    goto :goto_13

    :pswitch_3
    const/4 v11, 0x0

    .line 662
    iget-object v4, v6, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    iget-object v10, v3, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    invoke-virtual {v4, v10, v11}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    goto :goto_13

    :pswitch_4
    const/4 v11, 0x0

    .line 653
    iget-object v4, v6, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget-object v10, v3, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    invoke-virtual {v4, v10, v11}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    goto :goto_13

    .line 667
    :cond_2d
    iget-object v4, v0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v4}, Landroidx/d/c/b/g;->r(Landroidx/d/c/b/g;)I

    move-result v4

    packed-switch v4, :pswitch_data_2

    goto :goto_13

    :pswitch_5
    if-eqz v5, :cond_2e

    .line 674
    iget-object v4, v6, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    iget-object v10, v0, Landroidx/d/c/b/g$a;->e:Landroidx/d/c/b/d;

    iget v11, v0, Landroidx/d/c/b/g$a;->i:I

    invoke-virtual {v4, v10, v11}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    .line 675
    iget-object v4, v6, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget-object v10, v0, Landroidx/d/c/b/g$a;->g:Landroidx/d/c/b/d;

    iget v11, v0, Landroidx/d/c/b/g$a;->k:I

    invoke-virtual {v4, v10, v11}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    goto :goto_13

    .line 677
    :cond_2e
    iget-object v4, v6, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    iget-object v10, v3, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    .line 678
    iget-object v4, v6, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget-object v10, v3, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    invoke-virtual {v4, v10, v11}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    goto :goto_14

    :pswitch_6
    const/4 v11, 0x0

    .line 683
    iget-object v4, v6, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget-object v10, v3, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    invoke-virtual {v4, v10, v11}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    goto :goto_14

    :pswitch_7
    const/4 v11, 0x0

    .line 669
    iget-object v4, v6, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    iget-object v10, v3, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    invoke-virtual {v4, v10, v11}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;I)Z

    goto :goto_14

    :cond_2f
    :goto_13
    const/4 v11, 0x0

    :goto_14
    add-int/lit8 v1, v1, 0x1

    move-object v4, v6

    goto/16 :goto_f

    :cond_30
    :goto_15
    return-void

    :cond_31
    :goto_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public b()I
    .locals 1

    .line 397
    iget v0, p0, Landroidx/d/c/b/g$a;->c:I

    if-nez v0, :cond_0

    .line 398
    iget v0, p0, Landroidx/d/c/b/g$a;->m:I

    iget-object p0, p0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {p0}, Landroidx/d/c/b/g;->a(Landroidx/d/c/b/g;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    .line 400
    :cond_0
    iget p0, p0, Landroidx/d/c/b/g$a;->m:I

    return p0
.end method

.method public b(I)V
    .locals 8

    .line 695
    iget v0, p0, Landroidx/d/c/b/g$a;->q:I

    if-nez v0, :cond_0

    return-void

    .line 698
    :cond_0
    iget v0, p0, Landroidx/d/c/b/g$a;->p:I

    .line 699
    iget v1, p0, Landroidx/d/c/b/g$a;->q:I

    div-int/2addr p1, v1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 701
    iget v2, p0, Landroidx/d/c/b/g$a;->o:I

    add-int/2addr v2, v1

    iget-object v3, p0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v3}, Landroidx/d/c/b/g;->c(Landroidx/d/c/b/g;)I

    move-result v3

    if-lt v2, v3, :cond_1

    goto :goto_2

    .line 704
    :cond_1
    iget-object v2, p0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {v2}, Landroidx/d/c/b/g;->d(Landroidx/d/c/b/g;)[Landroidx/d/c/b/e;

    move-result-object v2

    iget v3, p0, Landroidx/d/c/b/g$a;->o:I

    add-int/2addr v3, v1

    aget-object v3, v2, v3

    .line 705
    iget v2, p0, Landroidx/d/c/b/g$a;->c:I

    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    .line 706
    invoke-virtual {v3}, Landroidx/d/c/b/e;->aj()Landroidx/d/c/b/e$a;

    move-result-object v2

    sget-object v4, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v2, v4, :cond_3

    .line 707
    iget v2, v3, Landroidx/d/c/b/e;->G:I

    if-nez v2, :cond_3

    .line 708
    iget-object v2, p0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    sget-object v4, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    invoke-virtual {v3}, Landroidx/d/c/b/e;->ak()Landroidx/d/c/b/e$a;

    move-result-object v6

    invoke-virtual {v3}, Landroidx/d/c/b/e;->L()I

    move-result v7

    move v5, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/d/c/b/g;->a(Landroidx/d/c/b/e;Landroidx/d/c/b/e$a;ILandroidx/d/c/b/e$a;I)V

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 712
    invoke-virtual {v3}, Landroidx/d/c/b/e;->ak()Landroidx/d/c/b/e$a;

    move-result-object v2

    sget-object v4, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v2, v4, :cond_3

    .line 713
    iget v2, v3, Landroidx/d/c/b/e;->H:I

    if-nez v2, :cond_3

    .line 714
    iget-object v2, p0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-virtual {v3}, Landroidx/d/c/b/e;->aj()Landroidx/d/c/b/e$a;

    move-result-object v4

    invoke-virtual {v3}, Landroidx/d/c/b/e;->I()I

    move-result v5

    sget-object v6, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/d/c/b/g;->a(Landroidx/d/c/b/e;Landroidx/d/c/b/e$a;ILandroidx/d/c/b/e$a;I)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 719
    :cond_4
    :goto_2
    invoke-direct {p0}, Landroidx/d/c/b/g$a;->d()V

    return-void
.end method

.method public c()I
    .locals 2

    .line 404
    iget v0, p0, Landroidx/d/c/b/g$a;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 405
    iget v0, p0, Landroidx/d/c/b/g$a;->n:I

    iget-object p0, p0, Landroidx/d/c/b/g$a;->b:Landroidx/d/c/b/g;

    invoke-static {p0}, Landroidx/d/c/b/g;->b(Landroidx/d/c/b/g;)I

    move-result p0

    sub-int/2addr v0, p0

    return v0

    .line 407
    :cond_0
    iget p0, p0, Landroidx/d/c/b/g$a;->n:I

    return p0
.end method
