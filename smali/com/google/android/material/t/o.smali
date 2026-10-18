.class public Lcom/google/android/material/t/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/t/o$b;,
        Lcom/google/android/material/t/o$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/android/material/t/d;


# instance fields
.field b:Lcom/google/android/material/t/e;

.field c:Lcom/google/android/material/t/e;

.field d:Lcom/google/android/material/t/e;

.field e:Lcom/google/android/material/t/e;

.field f:Lcom/google/android/material/t/d;

.field g:Lcom/google/android/material/t/d;

.field h:Lcom/google/android/material/t/d;

.field i:Lcom/google/android/material/t/d;

.field j:Lcom/google/android/material/t/g;

.field k:Lcom/google/android/material/t/g;

.field l:Lcom/google/android/material/t/g;

.field m:Lcom/google/android/material/t/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 565
    new-instance v0, Lcom/google/android/material/t/m;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1}, Lcom/google/android/material/t/m;-><init>(F)V

    sput-object v0, Lcom/google/android/material/t/o;->a:Lcom/google/android/material/t/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 598
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    invoke-static {}, Lcom/google/android/material/t/k;->a()Lcom/google/android/material/t/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o;->b:Lcom/google/android/material/t/e;

    .line 600
    invoke-static {}, Lcom/google/android/material/t/k;->a()Lcom/google/android/material/t/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o;->c:Lcom/google/android/material/t/e;

    .line 601
    invoke-static {}, Lcom/google/android/material/t/k;->a()Lcom/google/android/material/t/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o;->d:Lcom/google/android/material/t/e;

    .line 602
    invoke-static {}, Lcom/google/android/material/t/k;->a()Lcom/google/android/material/t/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o;->e:Lcom/google/android/material/t/e;

    .line 604
    new-instance v0, Lcom/google/android/material/t/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/t/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/t/o;->f:Lcom/google/android/material/t/d;

    .line 605
    new-instance v0, Lcom/google/android/material/t/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/t/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/t/o;->g:Lcom/google/android/material/t/d;

    .line 606
    new-instance v0, Lcom/google/android/material/t/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/t/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/t/o;->h:Lcom/google/android/material/t/d;

    .line 607
    new-instance v0, Lcom/google/android/material/t/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/t/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/t/o;->i:Lcom/google/android/material/t/d;

    .line 609
    invoke-static {}, Lcom/google/android/material/t/k;->b()Lcom/google/android/material/t/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o;->j:Lcom/google/android/material/t/g;

    .line 610
    invoke-static {}, Lcom/google/android/material/t/k;->b()Lcom/google/android/material/t/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o;->k:Lcom/google/android/material/t/g;

    .line 611
    invoke-static {}, Lcom/google/android/material/t/k;->b()Lcom/google/android/material/t/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o;->l:Lcom/google/android/material/t/g;

    .line 612
    invoke-static {}, Lcom/google/android/material/t/k;->b()Lcom/google/android/material/t/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o;->m:Lcom/google/android/material/t/g;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/t/o$a;)V
    .locals 1
    .param p1    # Lcom/google/android/material/t/o$a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    invoke-static {p1}, Lcom/google/android/material/t/o$a;->a(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o;->b:Lcom/google/android/material/t/e;

    .line 582
    invoke-static {p1}, Lcom/google/android/material/t/o$a;->b(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o;->c:Lcom/google/android/material/t/e;

    .line 583
    invoke-static {p1}, Lcom/google/android/material/t/o$a;->c(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o;->d:Lcom/google/android/material/t/e;

    .line 584
    invoke-static {p1}, Lcom/google/android/material/t/o$a;->d(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o;->e:Lcom/google/android/material/t/e;

    .line 586
    invoke-static {p1}, Lcom/google/android/material/t/o$a;->e(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o;->f:Lcom/google/android/material/t/d;

    .line 587
    invoke-static {p1}, Lcom/google/android/material/t/o$a;->f(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o;->g:Lcom/google/android/material/t/d;

    .line 588
    invoke-static {p1}, Lcom/google/android/material/t/o$a;->g(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o;->h:Lcom/google/android/material/t/d;

    .line 589
    invoke-static {p1}, Lcom/google/android/material/t/o$a;->h(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o;->i:Lcom/google/android/material/t/d;

    .line 591
    invoke-static {p1}, Lcom/google/android/material/t/o$a;->i(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o;->j:Lcom/google/android/material/t/g;

    .line 592
    invoke-static {p1}, Lcom/google/android/material/t/o$a;->j(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o;->k:Lcom/google/android/material/t/g;

    .line 593
    invoke-static {p1}, Lcom/google/android/material/t/o$a;->k(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o;->l:Lcom/google/android/material/t/g;

    .line 594
    invoke-static {p1}, Lcom/google/android/material/t/o$a;->l(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/g;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/t/o;->m:Lcom/google/android/material/t/g;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/t/o$a;Lcom/google/android/material/t/o$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/material/t/o;-><init>(Lcom/google/android/material/t/o$a;)V

    return-void
.end method

.method private static a(Landroid/content/res/TypedArray;ILcom/google/android/material/t/d;)Lcom/google/android/material/t/d;
    .locals 2
    .param p2    # Lcom/google/android/material/t/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 547
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 552
    :cond_0
    iget v0, p1, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 555
    new-instance p2, Lcom/google/android/material/t/a;

    iget p1, p1, Landroid/util/TypedValue;->data:I

    .line 556
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result p0

    int-to-float p0, p0

    invoke-direct {p2, p0}, Lcom/google/android/material/t/a;-><init>(F)V

    return-object p2

    .line 557
    :cond_1
    iget p0, p1, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x6

    if-ne p0, v0, :cond_2

    .line 558
    new-instance p0, Lcom/google/android/material/t/m;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/t/m;-><init>(F)V

    return-object p0

    :cond_2
    return-object p2
.end method

.method public static a()Lcom/google/android/material/t/o$a;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 435
    new-instance v0, Lcom/google/android/material/t/o$a;

    invoke-direct {v0}, Lcom/google/android/material/t/o$a;-><init>()V

    return-object v0
.end method

.method public static a(Landroid/content/Context;II)Lcom/google/android/material/t/o$a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x0

    .line 480
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/t/o;->a(Landroid/content/Context;III)Lcom/google/android/material/t/o$a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;III)Lcom/google/android/material/t/o$a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 489
    new-instance v0, Lcom/google/android/material/t/a;

    int-to-float p3, p3

    invoke-direct {v0, p3}, Lcom/google/android/material/t/a;-><init>(F)V

    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/t/o;->a(Landroid/content/Context;IILcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;IILcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/t/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    if-eqz p2, :cond_0

    .line 504
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move p1, p2

    move-object p0, v0

    .line 508
    :cond_0
    sget-object p2, Lcom/google/android/material/a$o;->ShapeAppearance:[I

    .line 509
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 512
    :try_start_0
    sget p1, Lcom/google/android/material/a$o;->ShapeAppearance_cornerFamily:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 513
    sget p2, Lcom/google/android/material/a$o;->ShapeAppearance_cornerFamilyTopLeft:I

    .line 514
    invoke-virtual {p0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 515
    sget v0, Lcom/google/android/material/a$o;->ShapeAppearance_cornerFamilyTopRight:I

    .line 516
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 517
    sget v1, Lcom/google/android/material/a$o;->ShapeAppearance_cornerFamilyBottomRight:I

    .line 518
    invoke-virtual {p0, v1, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 519
    sget v2, Lcom/google/android/material/a$o;->ShapeAppearance_cornerFamilyBottomLeft:I

    .line 520
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 522
    sget v2, Lcom/google/android/material/a$o;->ShapeAppearance_cornerSize:I

    .line 523
    invoke-static {p0, v2, p3}, Lcom/google/android/material/t/o;->a(Landroid/content/res/TypedArray;ILcom/google/android/material/t/d;)Lcom/google/android/material/t/d;

    move-result-object p3

    .line 525
    sget v2, Lcom/google/android/material/a$o;->ShapeAppearance_cornerSizeTopLeft:I

    .line 526
    invoke-static {p0, v2, p3}, Lcom/google/android/material/t/o;->a(Landroid/content/res/TypedArray;ILcom/google/android/material/t/d;)Lcom/google/android/material/t/d;

    move-result-object v2

    .line 527
    sget v3, Lcom/google/android/material/a$o;->ShapeAppearance_cornerSizeTopRight:I

    .line 528
    invoke-static {p0, v3, p3}, Lcom/google/android/material/t/o;->a(Landroid/content/res/TypedArray;ILcom/google/android/material/t/d;)Lcom/google/android/material/t/d;

    move-result-object v3

    .line 529
    sget v4, Lcom/google/android/material/a$o;->ShapeAppearance_cornerSizeBottomRight:I

    .line 530
    invoke-static {p0, v4, p3}, Lcom/google/android/material/t/o;->a(Landroid/content/res/TypedArray;ILcom/google/android/material/t/d;)Lcom/google/android/material/t/d;

    move-result-object v4

    .line 531
    sget v5, Lcom/google/android/material/a$o;->ShapeAppearance_cornerSizeBottomLeft:I

    .line 532
    invoke-static {p0, v5, p3}, Lcom/google/android/material/t/o;->a(Landroid/content/res/TypedArray;ILcom/google/android/material/t/d;)Lcom/google/android/material/t/d;

    move-result-object p3

    .line 534
    new-instance v5, Lcom/google/android/material/t/o$a;

    invoke-direct {v5}, Lcom/google/android/material/t/o$a;-><init>()V

    .line 535
    invoke-virtual {v5, p2, v2}, Lcom/google/android/material/t/o$a;->a(ILcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p2

    .line 536
    invoke-virtual {p2, v0, v3}, Lcom/google/android/material/t/o$a;->b(ILcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p2

    .line 537
    invoke-virtual {p2, v1, v4}, Lcom/google/android/material/t/o$a;->c(ILcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p2

    .line 538
    invoke-virtual {p2, p1, p3}, Lcom/google/android/material/t/o$a;->d(ILcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 541
    throw p1
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/t/o$a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/f;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x0

    .line 444
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/material/t/o;->a(Landroid/content/Context;Landroid/util/AttributeSet;III)Lcom/google/android/material/t/o$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;III)Lcom/google/android/material/t/o$a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/f;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 454
    new-instance v0, Lcom/google/android/material/t/a;

    int-to-float p4, p4

    invoke-direct {v0, p4}, Lcom/google/android/material/t/a;-><init>(F)V

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/material/t/o;->a(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/f;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/material/t/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 465
    sget-object v0, Lcom/google/android/material/a$o;->MaterialShape:[I

    .line 466
    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 468
    sget p2, Lcom/google/android/material/a$o;->MaterialShape_shapeAppearance:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 469
    sget v0, Lcom/google/android/material/a$o;->MaterialShape_shapeAppearanceOverlay:I

    .line 470
    invoke-virtual {p1, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 471
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 472
    invoke-static {p0, p2, p3, p4}, Lcom/google/android/material/t/o;->a(Landroid/content/Context;IILcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(F)Lcom/google/android/material/t/o;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 747
    invoke-virtual {p0}, Lcom/google/android/material/t/o;->n()Lcom/google/android/material/t/o$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->a(F)Lcom/google/android/material/t/o$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/t/o$a;->a()Lcom/google/android/material/t/o;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o;
    .locals 0
    .param p1    # Lcom/google/android/material/t/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 752
    invoke-virtual {p0}, Lcom/google/android/material/t/o;->n()Lcom/google/android/material/t/o$a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->a(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/t/o$a;->a()Lcom/google/android/material/t/o;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/google/android/material/t/o$b;)Lcom/google/android/material/t/o;
    .locals 2
    .param p1    # Lcom/google/android/material/t/o$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 775
    invoke-virtual {p0}, Lcom/google/android/material/t/o;->n()Lcom/google/android/material/t/o$a;

    move-result-object v0

    .line 776
    invoke-virtual {p0}, Lcom/google/android/material/t/o;->f()Lcom/google/android/material/t/d;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/t/o$b;->a(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/t/o$a;->b(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object v0

    .line 777
    invoke-virtual {p0}, Lcom/google/android/material/t/o;->g()Lcom/google/android/material/t/d;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/t/o$b;->a(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/t/o$a;->c(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object v0

    .line 778
    invoke-virtual {p0}, Lcom/google/android/material/t/o;->i()Lcom/google/android/material/t/d;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/android/material/t/o$b;->a(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/t/o$a;->e(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object v0

    .line 779
    invoke-virtual {p0}, Lcom/google/android/material/t/o;->h()Lcom/google/android/material/t/d;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/google/android/material/t/o$b;->a(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/d;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/t/o$a;->d(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 780
    invoke-virtual {p0}, Lcom/google/android/material/t/o$a;->a()Lcom/google/android/material/t/o;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/graphics/RectF;)Z
    .locals 5
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 791
    iget-object v0, p0, Lcom/google/android/material/t/o;->m:Lcom/google/android/material/t/g;

    .line 792
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/google/android/material/t/g;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/t/o;->k:Lcom/google/android/material/t/g;

    .line 793
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/t/g;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/t/o;->j:Lcom/google/android/material/t/g;

    .line 794
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/t/g;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/t/o;->l:Lcom/google/android/material/t/g;

    .line 795
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/google/android/material/t/g;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 797
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/t/o;->f:Lcom/google/android/material/t/d;

    invoke-interface {v3, p1}, Lcom/google/android/material/t/d;->a(Landroid/graphics/RectF;)F

    move-result v3

    .line 799
    iget-object v4, p0, Lcom/google/android/material/t/o;->g:Lcom/google/android/material/t/d;

    .line 800
    invoke-interface {v4, p1}, Lcom/google/android/material/t/d;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/t/o;->i:Lcom/google/android/material/t/d;

    .line 801
    invoke-interface {v4, p1}, Lcom/google/android/material/t/d;->a(Landroid/graphics/RectF;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/t/o;->h:Lcom/google/android/material/t/d;

    .line 802
    invoke-interface {v4, p1}, Lcom/google/android/material/t/d;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p1, p1, v3

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 804
    :goto_1
    iget-object v3, p0, Lcom/google/android/material/t/o;->c:Lcom/google/android/material/t/e;

    instance-of v3, v3, Lcom/google/android/material/t/n;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/t/o;->b:Lcom/google/android/material/t/e;

    instance-of v3, v3, Lcom/google/android/material/t/n;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/t/o;->d:Lcom/google/android/material/t/e;

    instance-of v3, v3, Lcom/google/android/material/t/n;

    if-eqz v3, :cond_2

    iget-object p0, p0, Lcom/google/android/material/t/o;->e:Lcom/google/android/material/t/e;

    instance-of p0, p0, Lcom/google/android/material/t/n;

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_2

    :cond_2
    move p0, v2

    :goto_2
    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    return v1
.end method

.method public b()Lcom/google/android/material/t/e;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 622
    iget-object p0, p0, Lcom/google/android/material/t/o;->b:Lcom/google/android/material/t/e;

    return-object p0
.end method

.method public c()Lcom/google/android/material/t/e;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 632
    iget-object p0, p0, Lcom/google/android/material/t/o;->c:Lcom/google/android/material/t/e;

    return-object p0
.end method

.method public d()Lcom/google/android/material/t/e;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 642
    iget-object p0, p0, Lcom/google/android/material/t/o;->d:Lcom/google/android/material/t/e;

    return-object p0
.end method

.method public e()Lcom/google/android/material/t/e;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 652
    iget-object p0, p0, Lcom/google/android/material/t/o;->e:Lcom/google/android/material/t/e;

    return-object p0
.end method

.method public f()Lcom/google/android/material/t/d;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 662
    iget-object p0, p0, Lcom/google/android/material/t/o;->f:Lcom/google/android/material/t/d;

    return-object p0
.end method

.method public g()Lcom/google/android/material/t/d;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 672
    iget-object p0, p0, Lcom/google/android/material/t/o;->g:Lcom/google/android/material/t/d;

    return-object p0
.end method

.method public h()Lcom/google/android/material/t/d;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 682
    iget-object p0, p0, Lcom/google/android/material/t/o;->h:Lcom/google/android/material/t/d;

    return-object p0
.end method

.method public i()Lcom/google/android/material/t/d;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 692
    iget-object p0, p0, Lcom/google/android/material/t/o;->i:Lcom/google/android/material/t/d;

    return-object p0
.end method

.method public j()Lcom/google/android/material/t/g;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 702
    iget-object p0, p0, Lcom/google/android/material/t/o;->m:Lcom/google/android/material/t/g;

    return-object p0
.end method

.method public k()Lcom/google/android/material/t/g;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 712
    iget-object p0, p0, Lcom/google/android/material/t/o;->j:Lcom/google/android/material/t/g;

    return-object p0
.end method

.method public l()Lcom/google/android/material/t/g;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 722
    iget-object p0, p0, Lcom/google/android/material/t/o;->k:Lcom/google/android/material/t/g;

    return-object p0
.end method

.method public m()Lcom/google/android/material/t/g;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 732
    iget-object p0, p0, Lcom/google/android/material/t/o;->l:Lcom/google/android/material/t/g;

    return-object p0
.end method

.method public n()Lcom/google/android/material/t/o$a;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 738
    new-instance v0, Lcom/google/android/material/t/o$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/t/o$a;-><init>(Lcom/google/android/material/t/o;)V

    return-object v0
.end method
