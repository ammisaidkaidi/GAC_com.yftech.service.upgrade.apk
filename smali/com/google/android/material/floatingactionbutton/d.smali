.class Lcom/google/android/material/floatingactionbutton/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/d$a;,
        Lcom/google/android/material/floatingactionbutton/d$c;,
        Lcom/google/android/material/floatingactionbutton/d$b;,
        Lcom/google/android/material/floatingactionbutton/d$f;,
        Lcom/google/android/material/floatingactionbutton/d$g;,
        Lcom/google/android/material/floatingactionbutton/d$e;,
        Lcom/google/android/material/floatingactionbutton/d$d;
    }
.end annotation


# static fields
.field private static final A:F = 0.0f

.field private static final B:F = 0.0f

.field private static final C:F = 0.0f

.field private static final D:F = 1.0f

.field private static final E:F = 1.0f

.field private static final F:F = 1.0f

.field static final a:Landroid/animation/TimeInterpolator;

.field static final b:J = 0x64L

.field static final c:J = 0x64L

.field static final d:I = 0x0

.field static final e:I = 0x1

.field static final f:I = 0x2

.field static final g:F = 1.5f

.field static final s:[I

.field static final t:[I

.field static final u:[I

.field static final v:[I

.field static final w:[I

.field static final x:[I


# instance fields
.field private final G:Lcom/google/android/material/internal/o;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private H:Lcom/google/android/material/a/h;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private I:Lcom/google/android/material/a/h;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private J:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private K:Lcom/google/android/material/a/h;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private L:Lcom/google/android/material/a/h;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private M:F

.field private N:F

.field private O:I

.field private P:I

.field private Q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field

.field private S:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/floatingactionbutton/d$d;",
            ">;"
        }
    .end annotation
.end field

.field private final T:Landroid/graphics/Rect;

.field private final U:Landroid/graphics/RectF;

.field private final V:Landroid/graphics/RectF;

.field private final W:Landroid/graphics/Matrix;

.field private X:Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field h:Lcom/google/android/material/t/o;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field i:Lcom/google/android/material/t/j;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field j:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field k:Lcom/google/android/material/floatingactionbutton/c;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field l:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field m:Z

.field n:Z

.field o:F

.field p:F

.field q:F

.field r:I

.field final y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field final z:Lcom/google/android/material/s/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    sget-object v0, Lcom/google/android/material/a/a;->c:Landroid/animation/TimeInterpolator;

    sput-object v0, Lcom/google/android/material/floatingactionbutton/d;->a:Landroid/animation/TimeInterpolator;

    const/4 v0, 0x2

    .line 128
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/material/floatingactionbutton/d;->s:[I

    const/4 v1, 0x3

    .line 131
    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/google/android/material/floatingactionbutton/d;->t:[I

    .line 134
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/android/material/floatingactionbutton/d;->u:[I

    .line 137
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/material/floatingactionbutton/d;->v:[I

    const/4 v0, 0x1

    .line 140
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/floatingactionbutton/d;->w:[I

    .line 141
    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/material/floatingactionbutton/d;->x:[I

    return-void

    :array_0
    .array-data 4
        0x10100a7
        0x101009e
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x101009c
        0x101009e
    .end array-data

    :array_2
    .array-data 4
        0x101009c
        0x101009e
    .end array-data

    :array_3
    .array-data 4
        0x1010367
        0x101009e
    .end array-data
.end method

.method constructor <init>(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/google/android/material/s/c;)V
    .locals 1

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/d;->n:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 107
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/d;->N:F

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/d;->P:I

    .line 146
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->T:Landroid/graphics/Rect;

    .line 147
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->U:Landroid/graphics/RectF;

    .line 148
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->V:Landroid/graphics/RectF;

    .line 149
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->W:Landroid/graphics/Matrix;

    .line 156
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 157
    iput-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/s/c;

    .line 159
    new-instance p1, Lcom/google/android/material/internal/o;

    invoke-direct {p1}, Lcom/google/android/material/internal/o;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->G:Lcom/google/android/material/internal/o;

    .line 162
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->G:Lcom/google/android/material/internal/o;

    sget-object p2, Lcom/google/android/material/floatingactionbutton/d;->s:[I

    new-instance v0, Lcom/google/android/material/floatingactionbutton/d$c;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/d$c;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 164
    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/floatingactionbutton/d$g;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 162
    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/internal/o;->a([ILandroid/animation/ValueAnimator;)V

    .line 165
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->G:Lcom/google/android/material/internal/o;

    sget-object p2, Lcom/google/android/material/floatingactionbutton/d;->t:[I

    new-instance v0, Lcom/google/android/material/floatingactionbutton/d$b;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/d$b;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 167
    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/floatingactionbutton/d$g;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 165
    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/internal/o;->a([ILandroid/animation/ValueAnimator;)V

    .line 168
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->G:Lcom/google/android/material/internal/o;

    sget-object p2, Lcom/google/android/material/floatingactionbutton/d;->u:[I

    new-instance v0, Lcom/google/android/material/floatingactionbutton/d$b;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/d$b;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 170
    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/floatingactionbutton/d$g;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 168
    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/internal/o;->a([ILandroid/animation/ValueAnimator;)V

    .line 171
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->G:Lcom/google/android/material/internal/o;

    sget-object p2, Lcom/google/android/material/floatingactionbutton/d;->v:[I

    new-instance v0, Lcom/google/android/material/floatingactionbutton/d$b;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/d$b;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 173
    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/floatingactionbutton/d$g;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 171
    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/internal/o;->a([ILandroid/animation/ValueAnimator;)V

    .line 175
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->G:Lcom/google/android/material/internal/o;

    sget-object p2, Lcom/google/android/material/floatingactionbutton/d;->w:[I

    new-instance v0, Lcom/google/android/material/floatingactionbutton/d$f;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/d$f;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 176
    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/floatingactionbutton/d$g;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 175
    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/internal/o;->a([ILandroid/animation/ValueAnimator;)V

    .line 178
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->G:Lcom/google/android/material/internal/o;

    sget-object p2, Lcom/google/android/material/floatingactionbutton/d;->x:[I

    new-instance v0, Lcom/google/android/material/floatingactionbutton/d$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/d$a;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    .line 179
    invoke-direct {p0, v0}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/floatingactionbutton/d$g;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 178
    invoke-virtual {p1, p2, v0}, Lcom/google/android/material/internal/o;->a([ILandroid/animation/ValueAnimator;)V

    .line 181
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getRotation()F

    move-result p1

    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->M:F

    return-void
.end method

.method private A()Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 728
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->X:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-nez v0, :cond_0

    .line 729
    new-instance v0, Lcom/google/android/material/floatingactionbutton/d$5;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/d$5;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->X:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 739
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->X:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object p0
.end method

.method private B()Z
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-static {v0}, Landroidx/core/n/af;->ag(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->isInEditMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/d;F)F
    .locals 0

    .line 66
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->N:F

    return p1
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/d;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->P:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/d;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->J:Landroid/animation/Animator;

    return-object p1
.end method

.method private a(Lcom/google/android/material/a/h;FFF)Landroid/animation/AnimatorSet;
    .locals 6
    .param p1    # Lcom/google/android/material/a/h;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 565
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p2, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "opacity"

    .line 566
    invoke-virtual {p1, v1}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 567
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v2, v3, [F

    aput p3, v2, v5

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string v1, "scale"

    .line 570
    invoke-virtual {p1, v1}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 571
    invoke-direct {p0, p2}, Lcom/google/android/material/floatingactionbutton/d;->a(Landroid/animation/ObjectAnimator;)V

    .line 572
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v2, v3, [F

    aput p3, v2, v5

    invoke-static {p2, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-string p3, "scale"

    .line 575
    invoke-virtual {p1, p3}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 576
    invoke-direct {p0, p2}, Lcom/google/android/material/floatingactionbutton/d;->a(Landroid/animation/ObjectAnimator;)V

    .line 577
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->W:Landroid/graphics/Matrix;

    invoke-direct {p0, p4, p2}, Lcom/google/android/material/floatingactionbutton/d;->a(FLandroid/graphics/Matrix;)V

    .line 580
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    new-instance p3, Lcom/google/android/material/a/f;

    invoke-direct {p3}, Lcom/google/android/material/a/f;-><init>()V

    new-instance p4, Lcom/google/android/material/floatingactionbutton/d$3;

    invoke-direct {p4, p0}, Lcom/google/android/material/floatingactionbutton/d$3;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    new-array v1, v3, [Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->W:Landroid/graphics/Matrix;

    invoke-direct {v2, p0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    aput-object v2, v1, v5

    .line 581
    invoke-static {p2, p3, p4, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-string p2, "iconScale"

    .line 595
    invoke-virtual {p1, p2}, Lcom/google/android/material/a/h;->b(Ljava/lang/String;)Lcom/google/android/material/a/i;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/material/a/i;->a(Landroid/animation/Animator;)V

    .line 596
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 599
    invoke-static {p0, v0}, Lcom/google/android/material/a/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object p0
.end method

.method private a(Lcom/google/android/material/floatingactionbutton/d$g;)Landroid/animation/ValueAnimator;
    .locals 2
    .param p1    # Lcom/google/android/material/floatingactionbutton/d$g;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 769
    new-instance p0, Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 770
    sget-object v0, Lcom/google/android/material/floatingactionbutton/d;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x64

    .line 771
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 772
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 773
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 p1, 0x2

    .line 774
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(FLandroid/graphics/Matrix;)V
    .locals 5
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 293
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 295
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/d;->O:I

    if-eqz v1, :cond_0

    .line 298
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->U:Landroid/graphics/RectF;

    .line 299
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/d;->V:Landroid/graphics/RectF;

    .line 300
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 301
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->O:I

    int-to-float v0, v0

    iget v3, p0, Lcom/google/android/material/floatingactionbutton/d;->O:I

    int-to-float v3, v3

    invoke-virtual {v2, v4, v4, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 302
    sget-object v0, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p2, v1, v2, v0}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 305
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->O:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget p0, p0, Lcom/google/android/material/floatingactionbutton/d;->O:I

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-virtual {p2, p1, p1, v0, p0}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    :cond_0
    return-void
.end method

.method private a(Landroid/animation/ObjectAnimator;)V
    .locals 2

    .line 608
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    return-void

    .line 612
    :cond_0
    new-instance v0, Lcom/google/android/material/floatingactionbutton/d$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/d$4;-><init>(Lcom/google/android/material/floatingactionbutton/d;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    return-void
.end method

.method private y()Lcom/google/android/material/a/h;
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->H:Lcom/google/android/material/a/h;

    if-nez v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 545
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$b;->design_fab_show_motion_spec:I

    invoke-static {v0, v1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->H:Lcom/google/android/material/a/h;

    .line 548
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->H:Lcom/google/android/material/a/h;

    invoke-static {p0}, Landroidx/core/m/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/a/h;

    return-object p0
.end method

.method private z()Lcom/google/android/material/a/h;
    .locals 2

    .line 552
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->I:Lcom/google/android/material/a/h;

    if-nez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 554
    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$b;->design_fab_hide_motion_spec:I

    invoke-static {v0, v1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->I:Lcom/google/android/material/a/h;

    .line 557
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->I:Lcom/google/android/material/a/h;

    invoke-static {p0}, Landroidx/core/m/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/a/h;

    return-object p0
.end method


# virtual methods
.method a()F
    .locals 0

    .line 246
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/d;->o:F

    return p0
.end method

.method final a(F)V
    .locals 2

    .line 239
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->o:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 240
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->o:F

    .line 241
    iget p1, p0, Lcom/google/android/material/floatingactionbutton/d;->o:F

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->p:F

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/d;->q:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/material/floatingactionbutton/d;->a(FFF)V

    :cond_0
    return-void
.end method

.method a(FFF)V
    .locals 0

    .line 366
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->o()V

    .line 367
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/d;->e(F)V

    return-void
.end method

.method a(I)V
    .locals 0

    .line 228
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->r:I

    return-void
.end method

.method a(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 385
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->Q:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->Q:Ljava/util/ArrayList;

    .line 388
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->Q:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 213
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->i:Lcom/google/android/material/t/j;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->i:Lcom/google/android/material/t/j;

    invoke-virtual {v0, p1}, Lcom/google/android/material/t/j;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->k:Lcom/google/android/material/floatingactionbutton/c;

    if-eqz v0, :cond_1

    .line 217
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->k:Lcom/google/android/material/floatingactionbutton/c;

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/c;->a(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/content/res/ColorStateList;I)V
    .locals 0
    .param p2    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 191
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->u()Lcom/google/android/material/t/j;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/material/floatingactionbutton/d;->i:Lcom/google/android/material/t/j;

    .line 192
    iget-object p4, p0, Lcom/google/android/material/floatingactionbutton/d;->i:Lcom/google/android/material/t/j;

    invoke-virtual {p4, p1}, Lcom/google/android/material/t/j;->setTintList(Landroid/content/res/ColorStateList;)V

    if-eqz p2, :cond_0

    .line 194
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->i:Lcom/google/android/material/t/j;

    invoke-virtual {p1, p2}, Lcom/google/android/material/t/j;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 197
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->i:Lcom/google/android/material/t/j;

    const p2, -0xbbbbbc

    invoke-virtual {p1, p2}, Lcom/google/android/material/t/j;->O(I)V

    .line 198
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->i:Lcom/google/android/material/t/j;

    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/t/j;->b(Landroid/content/Context;)V

    .line 201
    new-instance p1, Lcom/google/android/material/r/a;

    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->i:Lcom/google/android/material/t/j;

    .line 202
    invoke-virtual {p2}, Lcom/google/android/material/t/j;->getShapeAppearanceModel()Lcom/google/android/material/t/o;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/material/r/a;-><init>(Lcom/google/android/material/t/o;)V

    .line 203
    invoke-static {p3}, Lcom/google/android/material/r/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/material/r/a;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 204
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->j:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x2

    .line 206
    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    const/4 p3, 0x0

    iget-object p4, p0, Lcom/google/android/material/floatingactionbutton/d;->i:Lcom/google/android/material/t/j;

    .line 207
    invoke-static {p4}, Landroidx/core/m/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/graphics/drawable/Drawable;

    aput-object p4, p2, p3

    const/4 p3, 0x1

    aput-object p1, p2, p3

    .line 209
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->l:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 222
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->i:Lcom/google/android/material/t/j;

    if-eqz v0, :cond_0

    .line 223
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->i:Lcom/google/android/material/t/j;

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method a(Landroid/graphics/Rect;)V
    .locals 4
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 671
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/d;->m:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->r:I

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 672
    invoke-virtual {v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 675
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/floatingactionbutton/d;->n:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->a()F

    move-result v1

    iget p0, p0, Lcom/google/android/material/floatingactionbutton/d;->q:F

    add-float/2addr v1, p0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    float-to-double v2, v1

    .line 676
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    float-to-double v1, v1

    .line 677
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 678
    invoke-virtual {p1, p0, v0, p0, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method final a(Lcom/google/android/material/a/h;)V
    .locals 0
    .param p1    # Lcom/google/android/material/a/h;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 335
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->K:Lcom/google/android/material/a/h;

    return-void
.end method

.method a(Lcom/google/android/material/floatingactionbutton/d$d;)V
    .locals 1
    .param p1    # Lcom/google/android/material/floatingactionbutton/d$d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 623
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->S:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->S:Ljava/util/ArrayList;

    .line 626
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->S:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Lcom/google/android/material/floatingactionbutton/d$e;Z)V
    .locals 2
    .param p1    # Lcom/google/android/material/floatingactionbutton/d$e;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 417
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->J:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->J:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 426
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/d;->B()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 427
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->L:Lcom/google/android/material/a/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->L:Lcom/google/android/material/a/h;

    goto :goto_0

    .line 429
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/d;->z()Lcom/google/android/material/a/h;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 428
    invoke-direct {p0, v0, v1, v1, v1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/a/h;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 433
    new-instance v1, Lcom/google/android/material/floatingactionbutton/d$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/material/floatingactionbutton/d$1;-><init>(Lcom/google/android/material/floatingactionbutton/d;ZLcom/google/android/material/floatingactionbutton/d$e;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 464
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->R:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 465
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->R:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    .line 466
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 469
    :cond_3
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_3

    .line 472
    :cond_4
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz p2, :cond_5

    const/16 v0, 0x8

    goto :goto_2

    :cond_5
    const/4 v0, 0x4

    :goto_2
    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(IZ)V

    if-eqz p1, :cond_6

    .line 474
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/d$e;->b()V

    :cond_6
    :goto_3
    return-void
.end method

.method final a(Lcom/google/android/material/t/o;)V
    .locals 1
    .param p1    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 310
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->h:Lcom/google/android/material/t/o;

    .line 311
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->i:Lcom/google/android/material/t/j;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->i:Lcom/google/android/material/t/j;

    invoke-virtual {v0, p1}, Lcom/google/android/material/t/j;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->j:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/google/android/material/t/s;

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->j:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/google/android/material/t/s;

    invoke-interface {v0, p1}, Lcom/google/android/material/t/s;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->k:Lcom/google/android/material/floatingactionbutton/c;

    if-eqz v0, :cond_2

    .line 320
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->k:Lcom/google/android/material/floatingactionbutton/c;

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/c;->a(Lcom/google/android/material/t/o;)V

    :cond_2
    return-void
.end method

.method a(Z)V
    .locals 0

    .line 356
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/d;->m:Z

    return-void
.end method

.method a([I)V
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->G:Lcom/google/android/material/internal/o;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/o;->a([I)V

    return-void
.end method

.method b()F
    .locals 0

    .line 250
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/d;->p:F

    return p0
.end method

.method final b(F)V
    .locals 2

    .line 258
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->p:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 259
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->p:F

    .line 260
    iget p1, p0, Lcom/google/android/material/floatingactionbutton/d;->o:F

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->p:F

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/d;->q:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/material/floatingactionbutton/d;->a(FFF)V

    :cond_0
    return-void
.end method

.method final b(I)V
    .locals 1

    .line 272
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->O:I

    if-eq v0, p1, :cond_0

    .line 273
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->O:I

    .line 274
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->d()V

    :cond_0
    return-void
.end method

.method b(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 392
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->Q:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->Q:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 232
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 233
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->j:Landroid/graphics/drawable/Drawable;

    .line 234
    invoke-static {p1}, Lcom/google/android/material/r/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 233
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method b(Landroid/graphics/Rect;)V
    .locals 7
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 682
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->l:Landroid/graphics/drawable/Drawable;

    const-string v1, "Didn\'t initialize content background"

    invoke-static {v0, v1}, Landroidx/core/m/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/d;->l:Landroid/graphics/drawable/Drawable;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 686
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/s/c;

    invoke-interface {p0, v0}, Lcom/google/android/material/s/c;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 688
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/s/c;

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->l:Landroid/graphics/drawable/Drawable;

    invoke-interface {p1, p0}, Lcom/google/android/material/s/c;->a(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method final b(Lcom/google/android/material/a/h;)V
    .locals 0
    .param p1    # Lcom/google/android/material/a/h;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 344
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->L:Lcom/google/android/material/a/h;

    return-void
.end method

.method b(Lcom/google/android/material/floatingactionbutton/d$d;)V
    .locals 1
    .param p1    # Lcom/google/android/material/floatingactionbutton/d$d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 630
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->S:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 635
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->S:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method b(Lcom/google/android/material/floatingactionbutton/d$e;Z)V
    .locals 3
    .param p1    # Lcom/google/android/material/floatingactionbutton/d$e;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 480
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->J:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->J:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 489
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/d;->B()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    .line 490
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 492
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setAlpha(F)V

    .line 493
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    .line 494
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    .line 495
    invoke-virtual {p0, v2}, Lcom/google/android/material/floatingactionbutton/d;->d(F)V

    .line 498
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->K:Lcom/google/android/material/a/h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->K:Lcom/google/android/material/a/h;

    goto :goto_0

    .line 500
    :cond_3
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/d;->y()Lcom/google/android/material/a/h;

    move-result-object v0

    .line 499
    :goto_0
    invoke-direct {p0, v0, v1, v1, v1}, Lcom/google/android/material/floatingactionbutton/d;->a(Lcom/google/android/material/a/h;FFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 504
    new-instance v1, Lcom/google/android/material/floatingactionbutton/d$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/material/floatingactionbutton/d$2;-><init>(Lcom/google/android/material/floatingactionbutton/d;ZLcom/google/android/material/floatingactionbutton/d$e;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 524
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/d;->Q:Ljava/util/ArrayList;

    if-eqz p1, :cond_4

    .line 525
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->Q:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    .line 526
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    .line 529
    :cond_4
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    .line 531
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(IZ)V

    .line 532
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setAlpha(F)V

    .line 533
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    .line 534
    iget-object p2, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    .line 535
    invoke-virtual {p0, v1}, Lcom/google/android/material/floatingactionbutton/d;->d(F)V

    if-eqz p1, :cond_6

    .line 537
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/d$e;->a()V

    :cond_6
    :goto_2
    return-void
.end method

.method b(Z)V
    .locals 0

    .line 360
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/d;->n:Z

    .line 361
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->o()V

    return-void
.end method

.method c()F
    .locals 0

    .line 254
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/d;->q:F

    return p0
.end method

.method final c(F)V
    .locals 2

    .line 265
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->q:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 266
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->q:F

    .line 267
    iget p1, p0, Lcom/google/android/material/floatingactionbutton/d;->o:F

    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->p:F

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/d;->q:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/material/floatingactionbutton/d;->a(FFF)V

    :cond_0
    return-void
.end method

.method public c(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 401
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->R:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->R:Ljava/util/ArrayList;

    .line 404
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->R:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final d()V
    .locals 1

    .line 281
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->N:F

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/d;->d(F)V

    return-void
.end method

.method final d(F)V
    .locals 1

    .line 285
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/d;->N:F

    .line 287
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->W:Landroid/graphics/Matrix;

    .line 288
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/d;->a(FLandroid/graphics/Matrix;)V

    .line 289
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public d(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 408
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->R:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 413
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->R:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method final e()Lcom/google/android/material/t/o;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 326
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->h:Lcom/google/android/material/t/o;

    return-object p0
.end method

.method e(F)V
    .locals 1

    .line 371
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->i:Lcom/google/android/material/t/j;

    if-eqz v0, :cond_0

    .line 372
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->i:Lcom/google/android/material/t/j;

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->r(F)V

    :cond_0
    return-void
.end method

.method final f()Lcom/google/android/material/a/h;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 331
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->K:Lcom/google/android/material/a/h;

    return-object p0
.end method

.method final g()Lcom/google/android/material/a/h;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 340
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->L:Lcom/google/android/material/a/h;

    return-object p0
.end method

.method final h()Z
    .locals 1

    .line 348
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/d;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getSizeDimension()I

    move-result v0

    iget p0, p0, Lcom/google/android/material/floatingactionbutton/d;->r:I

    if-lt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method i()Z
    .locals 0

    .line 352
    iget-boolean p0, p0, Lcom/google/android/material/floatingactionbutton/d;->m:Z

    return p0
.end method

.method j()V
    .locals 0

    .line 381
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->G:Lcom/google/android/material/internal/o;

    invoke-virtual {p0}, Lcom/google/android/material/internal/o;->a()V

    return-void
.end method

.method k()V
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->S:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 640
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->S:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/d$d;

    .line 641
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/d$d;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method l()V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->S:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 648
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->S:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/floatingactionbutton/d$d;

    .line 649
    invoke-interface {v0}, Lcom/google/android/material/floatingactionbutton/d$d;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final m()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 656
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->l:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method n()V
    .locals 0

    return-void
.end method

.method final o()V
    .locals 4

    .line 664
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->T:Landroid/graphics/Rect;

    .line 665
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/d;->a(Landroid/graphics/Rect;)V

    .line 666
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/d;->b(Landroid/graphics/Rect;)V

    .line 667
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->z:Lcom/google/android/material/s/c;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p0, v1, v2, v3, v0}, Lcom/google/android/material/s/c;->a(IIII)V

    return-void
.end method

.method p()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method q()V
    .locals 2

    .line 697
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->i:Lcom/google/android/material/t/j;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->i:Lcom/google/android/material/t/j;

    invoke-static {v0, v1}, Lcom/google/android/material/t/k;->a(Landroid/view/View;Lcom/google/android/material/t/j;)V

    .line 701
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/d;->A()Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1
    return-void
.end method

.method r()V
    .locals 2

    .line 707
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 708
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->X:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/d;->X:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    .line 710
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->X:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    :cond_0
    return-void
.end method

.method s()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method t()V
    .locals 2

    .line 719
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getRotation()F

    move-result v0

    .line 720
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/d;->M:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 721
    iput v0, p0, Lcom/google/android/material/floatingactionbutton/d;->M:F

    .line 722
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/d;->x()V

    :cond_0
    return-void
.end method

.method u()Lcom/google/android/material/t/j;
    .locals 1

    .line 743
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/d;->h:Lcom/google/android/material/t/o;

    invoke-static {p0}, Landroidx/core/m/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/t/o;

    .line 744
    new-instance v0, Lcom/google/android/material/t/j;

    invoke-direct {v0, p0}, Lcom/google/android/material/t/j;-><init>(Lcom/google/android/material/t/o;)V

    return-object v0
.end method

.method v()Z
    .locals 3

    .line 748
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 750
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/d;->P:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 753
    :cond_1
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/d;->P:I

    if-eq p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method w()Z
    .locals 3

    .line 758
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 760
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/d;->P:I

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 763
    :cond_1
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/d;->P:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method x()V
    .locals 3

    .line 850
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    .line 853
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/d;->M:F

    const/high16 v1, 0x42b40000    # 90.0f

    rem-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayerType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 855
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->y:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 865
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->i:Lcom/google/android/material/t/j;

    if-eqz v0, :cond_2

    .line 866
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/d;->i:Lcom/google/android/material/t/j;

    iget p0, p0, Lcom/google/android/material/floatingactionbutton/d;->M:F

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/t/j;->M(I)V

    :cond_2
    return-void
.end method
