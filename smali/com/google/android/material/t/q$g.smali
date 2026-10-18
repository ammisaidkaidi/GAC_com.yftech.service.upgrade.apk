.class public Lcom/google/android/material/t/q$g;
.super Lcom/google/android/material/t/q$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/t/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public b:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 460
    invoke-direct {p0}, Lcom/google/android/material/t/q$f;-><init>()V

    return-void
.end method

.method private a()F
    .locals 0

    .line 492
    iget p0, p0, Lcom/google/android/material/t/q$g;->c:F

    return p0
.end method

.method private a(F)V
    .locals 0

    .line 496
    iput p1, p0, Lcom/google/android/material/t/q$g;->c:F

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/t/q$g;F)V
    .locals 0

    .line 460
    invoke-direct {p0, p1}, Lcom/google/android/material/t/q$g;->d(F)V

    return-void
.end method

.method private b()F
    .locals 0

    .line 500
    iget p0, p0, Lcom/google/android/material/t/q$g;->b:F

    return p0
.end method

.method private b(F)V
    .locals 0

    .line 504
    iput p1, p0, Lcom/google/android/material/t/q$g;->b:F

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/t/q$g;F)V
    .locals 0

    .line 460
    invoke-direct {p0, p1}, Lcom/google/android/material/t/q$g;->b(F)V

    return-void
.end method

.method private c()F
    .locals 0

    .line 508
    iget p0, p0, Lcom/google/android/material/t/q$g;->d:F

    return p0
.end method

.method private c(F)V
    .locals 0

    .line 512
    iput p1, p0, Lcom/google/android/material/t/q$g;->d:F

    return-void
.end method

.method static synthetic c(Lcom/google/android/material/t/q$g;F)V
    .locals 0

    .line 460
    invoke-direct {p0, p1}, Lcom/google/android/material/t/q$g;->a(F)V

    return-void
.end method

.method private d()F
    .locals 0

    .line 516
    iget p0, p0, Lcom/google/android/material/t/q$g;->a:F

    return p0
.end method

.method private d(F)V
    .locals 0

    .line 520
    iput p1, p0, Lcom/google/android/material/t/q$g;->a:F

    return-void
.end method

.method static synthetic d(Lcom/google/android/material/t/q$g;F)V
    .locals 0

    .line 460
    invoke-direct {p0, p1}, Lcom/google/android/material/t/q$g;->c(F)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 484
    iget-object v0, p0, Lcom/google/android/material/t/q$g;->g:Landroid/graphics/Matrix;

    .line 485
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 486
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 487
    invoke-direct {p0}, Lcom/google/android/material/t/q$g;->d()F

    move-result v0

    invoke-direct {p0}, Lcom/google/android/material/t/q$g;->b()F

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/t/q$g;->a()F

    move-result v2

    invoke-direct {p0}, Lcom/google/android/material/t/q$g;->c()F

    move-result p0

    invoke-virtual {p2, v0, v1, v2, p0}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 488
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
