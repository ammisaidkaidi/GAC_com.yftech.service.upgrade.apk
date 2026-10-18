.class public Lcom/google/android/material/t/q$c;
.super Lcom/google/android/material/t/q$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/t/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field private static final h:Landroid/graphics/RectF;


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

.field public e:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 526
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Lcom/google/android/material/t/q$c;->h:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 559
    invoke-direct {p0}, Lcom/google/android/material/t/q$f;-><init>()V

    .line 560
    invoke-direct {p0, p1}, Lcom/google/android/material/t/q$c;->a(F)V

    .line 561
    invoke-direct {p0, p2}, Lcom/google/android/material/t/q$c;->b(F)V

    .line 562
    invoke-direct {p0, p3}, Lcom/google/android/material/t/q$c;->c(F)V

    .line 563
    invoke-direct {p0, p4}, Lcom/google/android/material/t/q$c;->d(F)V

    return-void
.end method

.method private a()F
    .locals 0

    .line 577
    iget p0, p0, Lcom/google/android/material/t/q$c;->a:F

    return p0
.end method

.method static synthetic a(Lcom/google/android/material/t/q$c;)F
    .locals 0

    .line 525
    invoke-direct {p0}, Lcom/google/android/material/t/q$c;->e()F

    move-result p0

    return p0
.end method

.method private a(F)V
    .locals 0

    .line 593
    iput p1, p0, Lcom/google/android/material/t/q$c;->a:F

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/t/q$c;F)V
    .locals 0

    .line 525
    invoke-direct {p0, p1}, Lcom/google/android/material/t/q$c;->e(F)V

    return-void
.end method

.method private b()F
    .locals 0

    .line 581
    iget p0, p0, Lcom/google/android/material/t/q$c;->b:F

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/t/q$c;)F
    .locals 0

    .line 525
    invoke-direct {p0}, Lcom/google/android/material/t/q$c;->f()F

    move-result p0

    return p0
.end method

.method private b(F)V
    .locals 0

    .line 597
    iput p1, p0, Lcom/google/android/material/t/q$c;->b:F

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/t/q$c;F)V
    .locals 0

    .line 525
    invoke-direct {p0, p1}, Lcom/google/android/material/t/q$c;->f(F)V

    return-void
.end method

.method private c()F
    .locals 0

    .line 585
    iget p0, p0, Lcom/google/android/material/t/q$c;->c:F

    return p0
.end method

.method static synthetic c(Lcom/google/android/material/t/q$c;)F
    .locals 0

    .line 525
    invoke-direct {p0}, Lcom/google/android/material/t/q$c;->a()F

    move-result p0

    return p0
.end method

.method private c(F)V
    .locals 0

    .line 601
    iput p1, p0, Lcom/google/android/material/t/q$c;->c:F

    return-void
.end method

.method private d()F
    .locals 0

    .line 589
    iget p0, p0, Lcom/google/android/material/t/q$c;->d:F

    return p0
.end method

.method static synthetic d(Lcom/google/android/material/t/q$c;)F
    .locals 0

    .line 525
    invoke-direct {p0}, Lcom/google/android/material/t/q$c;->b()F

    move-result p0

    return p0
.end method

.method private d(F)V
    .locals 0

    .line 605
    iput p1, p0, Lcom/google/android/material/t/q$c;->d:F

    return-void
.end method

.method private e()F
    .locals 0

    .line 609
    iget p0, p0, Lcom/google/android/material/t/q$c;->e:F

    return p0
.end method

.method static synthetic e(Lcom/google/android/material/t/q$c;)F
    .locals 0

    .line 525
    invoke-direct {p0}, Lcom/google/android/material/t/q$c;->c()F

    move-result p0

    return p0
.end method

.method private e(F)V
    .locals 0

    .line 617
    iput p1, p0, Lcom/google/android/material/t/q$c;->e:F

    return-void
.end method

.method private f()F
    .locals 0

    .line 613
    iget p0, p0, Lcom/google/android/material/t/q$c;->f:F

    return p0
.end method

.method static synthetic f(Lcom/google/android/material/t/q$c;)F
    .locals 0

    .line 525
    invoke-direct {p0}, Lcom/google/android/material/t/q$c;->d()F

    move-result p0

    return p0
.end method

.method private f(F)V
    .locals 0

    .line 621
    iput p1, p0, Lcom/google/android/material/t/q$c;->f:F

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 5
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 568
    iget-object v0, p0, Lcom/google/android/material/t/q$c;->g:Landroid/graphics/Matrix;

    .line 569
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 570
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 571
    sget-object v0, Lcom/google/android/material/t/q$c;->h:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/google/android/material/t/q$c;->a()F

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/t/q$c;->b()F

    move-result v2

    invoke-direct {p0}, Lcom/google/android/material/t/q$c;->c()F

    move-result v3

    invoke-direct {p0}, Lcom/google/android/material/t/q$c;->d()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 572
    sget-object v0, Lcom/google/android/material/t/q$c;->h:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/google/android/material/t/q$c;->e()F

    move-result v1

    invoke-direct {p0}, Lcom/google/android/material/t/q$c;->f()F

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v1, p0, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 573
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
