.class public Lcom/google/android/material/t/q$d;
.super Lcom/google/android/material/t/q$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/t/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 646
    invoke-direct {p0}, Lcom/google/android/material/t/q$f;-><init>()V

    .line 647
    invoke-direct {p0, p1}, Lcom/google/android/material/t/q$d;->a(F)V

    .line 648
    invoke-direct {p0, p2}, Lcom/google/android/material/t/q$d;->b(F)V

    .line 649
    invoke-direct {p0, p3}, Lcom/google/android/material/t/q$d;->c(F)V

    .line 650
    invoke-direct {p0, p4}, Lcom/google/android/material/t/q$d;->d(F)V

    .line 651
    invoke-direct {p0, p5}, Lcom/google/android/material/t/q$d;->e(F)V

    .line 652
    invoke-direct {p0, p6}, Lcom/google/android/material/t/q$d;->f(F)V

    return-void
.end method

.method private a()F
    .locals 0

    .line 665
    iget p0, p0, Lcom/google/android/material/t/q$d;->a:F

    return p0
.end method

.method private a(F)V
    .locals 0

    .line 669
    iput p1, p0, Lcom/google/android/material/t/q$d;->a:F

    return-void
.end method

.method private b()F
    .locals 0

    .line 673
    iget p0, p0, Lcom/google/android/material/t/q$d;->b:F

    return p0
.end method

.method private b(F)V
    .locals 0

    .line 677
    iput p1, p0, Lcom/google/android/material/t/q$d;->b:F

    return-void
.end method

.method private c()F
    .locals 0

    .line 681
    iget p0, p0, Lcom/google/android/material/t/q$d;->c:F

    return p0
.end method

.method private c(F)V
    .locals 0

    .line 685
    iput p1, p0, Lcom/google/android/material/t/q$d;->c:F

    return-void
.end method

.method private d()F
    .locals 0

    .line 689
    iget p0, p0, Lcom/google/android/material/t/q$d;->b:F

    return p0
.end method

.method private d(F)V
    .locals 0

    .line 693
    iput p1, p0, Lcom/google/android/material/t/q$d;->d:F

    return-void
.end method

.method private e()F
    .locals 0

    .line 697
    iget p0, p0, Lcom/google/android/material/t/q$d;->e:F

    return p0
.end method

.method private e(F)V
    .locals 0

    .line 701
    iput p1, p0, Lcom/google/android/material/t/q$d;->e:F

    return-void
.end method

.method private f()F
    .locals 0

    .line 705
    iget p0, p0, Lcom/google/android/material/t/q$d;->f:F

    return p0
.end method

.method private f(F)V
    .locals 0

    .line 709
    iput p1, p0, Lcom/google/android/material/t/q$d;->f:F

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 8
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 657
    iget-object v0, p0, Lcom/google/android/material/t/q$d;->g:Landroid/graphics/Matrix;

    .line 658
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 659
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 660
    iget v2, p0, Lcom/google/android/material/t/q$d;->a:F

    iget v3, p0, Lcom/google/android/material/t/q$d;->b:F

    iget v4, p0, Lcom/google/android/material/t/q$d;->c:F

    iget v5, p0, Lcom/google/android/material/t/q$d;->d:F

    iget v6, p0, Lcom/google/android/material/t/q$d;->e:F

    iget v7, p0, Lcom/google/android/material/t/q$d;->f:F

    move-object v1, p2

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 661
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
