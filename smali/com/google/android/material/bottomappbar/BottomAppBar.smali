.class public Lcom/google/android/material/bottomappbar/BottomAppBar;
.super Landroidx/appcompat/widget/Toolbar;
.source "SourceFile"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomappbar/BottomAppBar$d;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$a;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$c;,
        Lcom/google/android/material/bottomappbar/BottomAppBar$b;
    }
.end annotation


# static fields
.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field private static final k:I

.field private static final l:J = 0x12cL


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field i:Landroid/animation/AnimatorListenerAdapter;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field j:Lcom/google/android/material/a/k;
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/a/k<",
            "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private final m:I

.field private final n:Lcom/google/android/material/t/j;

.field private o:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private p:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private q:I

.field private r:I

.field private s:Z

.field private final t:Z

.field private final u:Z

.field private final v:Z

.field private w:I

.field private x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/bottomappbar/BottomAppBar$a;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    sget v0, Lcom/google/android/material/a$n;->Widget_MaterialComponents_BottomAppBar:I

    sput v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 219
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 223
    sget v0, Lcom/google/android/material/a$c;->bottomAppBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 227
    sget v0, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 141
    new-instance p1, Lcom/google/android/material/t/j;

    invoke-direct {p1}, Lcom/google/android/material/t/j;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/t/j;

    const/4 p1, 0x0

    .line 153
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->w:I

    const/4 v0, 0x1

    .line 168
    iput-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->y:Z

    .line 180
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$1;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Landroid/animation/AnimatorListenerAdapter;

    .line 190
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$2;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:Lcom/google/android/material/a/k;

    .line 229
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 231
    sget-object v3, Lcom/google/android/material/a$o;->BottomAppBar:[I

    sget v5, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:I

    new-array v6, p1, [I

    move-object v1, v0

    move-object v2, p2

    move v4, p3

    .line 232
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/s;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 235
    sget v2, Lcom/google/android/material/a$o;->BottomAppBar_backgroundTint:I

    .line 236
    invoke-static {v0, v1, v2}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 238
    sget v3, Lcom/google/android/material/a$o;->BottomAppBar_elevation:I

    invoke-virtual {v1, v3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 239
    sget v4, Lcom/google/android/material/a$o;->BottomAppBar_fabCradleMargin:I

    invoke-virtual {v1, v4, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    int-to-float v4, v4

    .line 240
    sget v5, Lcom/google/android/material/a$o;->BottomAppBar_fabCradleRoundedCornerRadius:I

    .line 241
    invoke-virtual {v1, v5, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    int-to-float v5, v5

    .line 242
    sget v6, Lcom/google/android/material/a$o;->BottomAppBar_fabCradleVerticalOffset:I

    .line 243
    invoke-virtual {v1, v6, p1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    int-to-float v6, v6

    .line 244
    sget v7, Lcom/google/android/material/a$o;->BottomAppBar_fabAlignmentMode:I

    .line 245
    invoke-virtual {v1, v7, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:I

    .line 246
    sget v7, Lcom/google/android/material/a$o;->BottomAppBar_fabAnimationMode:I

    .line 247
    invoke-virtual {v1, v7, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->r:I

    .line 248
    sget v7, Lcom/google/android/material/a$o;->BottomAppBar_hideOnScroll:I

    invoke-virtual {v1, v7, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->s:Z

    .line 250
    sget v7, Lcom/google/android/material/a$o;->BottomAppBar_paddingBottomSystemWindowInsets:I

    .line 251
    invoke-virtual {v1, v7, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->t:Z

    .line 252
    sget v7, Lcom/google/android/material/a$o;->BottomAppBar_paddingLeftSystemWindowInsets:I

    .line 253
    invoke-virtual {v1, v7, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->u:Z

    .line 254
    sget v7, Lcom/google/android/material/a$o;->BottomAppBar_paddingRightSystemWindowInsets:I

    .line 255
    invoke-virtual {v1, v7, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->v:Z

    .line 257
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/google/android/material/a$f;->mtrl_bottomappbar_fabOffsetEndMode:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->m:I

    .line 262
    new-instance p1, Lcom/google/android/material/bottomappbar/a;

    invoke-direct {p1, v4, v5, v6}, Lcom/google/android/material/bottomappbar/a;-><init>(FFF)V

    .line 265
    invoke-static {}, Lcom/google/android/material/t/o;->a()Lcom/google/android/material/t/o$a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/material/t/o$a;->c(Lcom/google/android/material/t/g;)Lcom/google/android/material/t/o$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/t/o$a;->a()Lcom/google/android/material/t/o;

    move-result-object p1

    .line 266
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/t/j;

    invoke-virtual {v1, p1}, Lcom/google/android/material/t/j;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    .line 267
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/t/j;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/google/android/material/t/j;->J(I)V

    .line 268
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/t/j;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Lcom/google/android/material/t/j;->a(Landroid/graphics/Paint$Style;)V

    .line 269
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/t/j;

    invoke-virtual {p1, v0}, Lcom/google/android/material/t/j;->b(Landroid/content/Context;)V

    int-to-float p1, v3

    .line 270
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->setElevation(F)V

    .line 271
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/t/j;

    invoke-static {p1, v2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 272
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/t/j;

    invoke-static {p0, p1}, Landroidx/core/n/af;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 274
    sget p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->k:I

    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$3;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$3;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-static {p0, p2, p3, p1, v0}, Lcom/google/android/material/internal/z;->a(Landroid/view/View;Landroid/util/AttributeSet;IILcom/google/android/material/internal/z$a;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:I

    return p0
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->A:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->p:Landroid/animation/Animator;

    return-object p1
.end method

.method private a(IZ)V
    .locals 3

    .line 619
    invoke-static {p0}, Landroidx/core/n/af;->ag(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->p:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->p:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 627
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 630
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->t()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    move p1, v2

    move p2, p1

    .line 635
    :cond_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(IZLjava/util/List;)V

    .line 637
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 638
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 639
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->p:Landroid/animation/Animator;

    .line 640
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->p:Landroid/animation/Animator;

    new-instance p2, Lcom/google/android/material/bottomappbar/BottomAppBar$6;

    invoke-direct {p2, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$6;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 653
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->p:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private a(IZLjava/util/List;)V
    .locals 7
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 661
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "alpha"

    const/4 v2, 0x1

    .line 668
    new-array v3, v2, [F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 671
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getTranslationX()F

    move-result v3

    .line 672
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    .line 675
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const-string v3, "alpha"

    .line 677
    new-array v4, v2, [F

    const/4 v6, 0x0

    aput v6, v4, v5

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 679
    new-instance v4, Lcom/google/android/material/bottomappbar/BottomAppBar$7;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar$7;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 696
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 p1, 0x96

    .line 697
    invoke-virtual {p0, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 p1, 0x2

    .line 698
    new-array p1, p1, [Landroid/animation/Animator;

    aput-object v3, p1, v5

    aput-object v1, p1, v2

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 699
    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 700
    :cond_1
    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionMenuView;->getAlpha()F

    move-result p0

    cmpg-float p0, p0, v4

    if-gez p0, :cond_2

    .line 703
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;IZ)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->b(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomappbar/BottomAppBar;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V

    return-void
.end method

.method private a(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 1
    .param p1    # Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 859
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->i:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->c(Landroid/animation/Animator$AnimatorListener;)V

    .line 860
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$8;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$8;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(Landroid/animation/Animator$AnimatorListener;)V

    .line 873
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->j:Lcom/google/android/material/a/k;

    invoke-virtual {p1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->a(Lcom/google/android/material/a/k;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/bottomappbar/BottomAppBar;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->C:I

    return p1
.end method

.method private b(ILjava/util/List;)V
    .locals 3
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 613
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v0

    const-string v1, "translationX"

    const/4 v2, 0x1

    new-array v2, v2, [F

    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->e(I)F

    move-result p0

    const/4 p1, 0x0

    aput p0, v2, p1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    .line 614
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 615
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private b(Landroidx/appcompat/widget/ActionMenuView;IZ)V
    .locals 0
    .param p1    # Landroidx/appcompat/widget/ActionMenuView;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 753
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(Landroidx/appcompat/widget/ActionMenuView;IZ)I

    move-result p0

    int-to-float p0, p0

    .line 752
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ActionMenuView;->setTranslationX(F)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->y:Z

    return p0
.end method

.method static synthetic c(Lcom/google/android/material/bottomappbar/BottomAppBar;I)I
    .locals 0

    .line 110
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->B:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/t/j;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/t/j;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/material/bottomappbar/BottomAppBar;I)F
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->e(I)F

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/bottomappbar/a;
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object p0

    return-object p0
.end method

.method private d(I)V
    .locals 3

    .line 515
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:I

    if-eq v0, p1, :cond_3

    invoke-static {p0}, Landroidx/core/n/af;->ag(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->o:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 520
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->o:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 523
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 525
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->r:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 526
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->b(ILjava/util/List;)V

    goto :goto_0

    .line 528
    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(ILjava/util/List;)V

    .line 531
    :goto_0
    new-instance p1, Landroid/animation/AnimatorSet;

    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 532
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 533
    iput-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->o:Landroid/animation/Animator;

    .line 534
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->o:Landroid/animation/Animator;

    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$4;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 546
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->o:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private e(I)F
    .locals 3

    .line 712
    invoke-static {p0}, Lcom/google/android/material/internal/z;->a(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    if-eqz v0, :cond_0

    .line 714
    iget p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->C:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->B:I

    .line 715
    :goto_0
    iget v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->m:I

    add-int/2addr v2, p1

    .line 716
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMeasuredWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr p0, v2

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    :cond_1
    mul-int/2addr p0, v1

    int-to-float p0, p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic e(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->t:Z

    return p0
.end method

.method static synthetic f(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->u:Z

    return p0
.end method

.method static synthetic g(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->C:I

    return p0
.end method

.method private getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;
    .locals 3
    .annotation build Landroidx/annotation/ai;
    .end annotation

    const/4 v0, 0x0

    .line 728
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 729
    invoke-virtual {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 730
    instance-of v2, v1, Landroidx/appcompat/widget/ActionMenuView;

    if-eqz v2, :cond_0

    .line 731
    check-cast v1, Landroidx/appcompat/widget/ActionMenuView;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getBottomInset()I
    .locals 0

    .line 877
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->A:I

    return p0
.end method

.method private getFabTranslationX()F
    .locals 1

    .line 723
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:I

    invoke-direct {p0, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->e(I)F

    move-result p0

    return p0
.end method

.method private getFabTranslationY()F
    .locals 0

    .line 708
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/a;->c()F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method private getLeftInset()I
    .locals 0

    .line 885
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->C:I

    return p0
.end method

.method private getRightInset()I
    .locals 0

    .line 881
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->B:I

    return p0
.end method

.method private getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 825
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/t/j;

    .line 826
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->getShapeAppearanceModel()Lcom/google/android/material/t/o;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/t/o;->k()Lcom/google/android/material/t/g;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/bottomappbar/a;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/material/bottomappbar/BottomAppBar;)Z
    .locals 0

    .line 110
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->v:Z

    return p0
.end method

.method static synthetic i(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->B:I

    return p0
.end method

.method static synthetic j(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->u()V

    return-void
.end method

.method static synthetic k(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->v()V

    return-void
.end method

.method static synthetic l(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->w()V

    return-void
.end method

.method static synthetic m(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->p()V

    return-void
.end method

.method static synthetic n(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->q()V

    return-void
.end method

.method static synthetic o(Lcom/google/android/material/bottomappbar/BottomAppBar;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lcom/google/android/material/bottomappbar/BottomAppBar;)F
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result p0

    return p0
.end method

.method private p()V
    .locals 2

    .line 483
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->w:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->w:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->x:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomappbar/BottomAppBar$a;

    .line 486
    invoke-interface {v1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$a;->a(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic q(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBottomInset()I

    move-result p0

    return p0
.end method

.method private q()V
    .locals 2

    .line 492
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->w:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->w:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->x:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/bottomappbar/BottomAppBar$a;

    .line 495
    invoke-interface {v1, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$a;->b(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic r(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getLeftInset()I

    move-result p0

    return p0
.end method

.method private r()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 551
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s()Landroid/view/View;

    move-result-object p0

    .line 552
    instance-of v0, p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic s(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getRightInset()I

    move-result p0

    return p0
.end method

.method private s()Landroid/view/View;
    .locals 3
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 557
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 562
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->d(Landroid/view/View;)Ljava/util/List;

    move-result-object p0

    .line 563
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 564
    instance-of v2, v0, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-nez v2, :cond_2

    instance-of v2, v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;

    if-eqz v2, :cond_1

    :cond_2
    return-object v0

    :cond_3
    return-object v1
.end method

.method static synthetic t(Lcom/google/android/material/bottomappbar/BottomAppBar;)I
    .locals 0

    .line 110
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->m:I

    return p0
.end method

.method private t()Z
    .locals 0

    .line 573
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->f()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic u(Lcom/google/android/material/bottomappbar/BottomAppBar;)Landroid/view/View;
    .locals 0

    .line 110
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private u()V
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->p:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->p:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->o:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 801
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->o:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    return-void
.end method

.method private v()V
    .locals 3

    .line 831
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomappbar/a;->b(F)V

    .line 832
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->s()Landroid/view/View;

    move-result-object v0

    .line 833
    iget-object v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/t/j;

    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->y:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/material/t/j;->p(F)V

    if-eqz v0, :cond_1

    .line 835
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationY()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 836
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabTranslationX()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    return-void
.end method

.method private w()V
    .locals 3

    .line 841
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getActionMenuView()Landroidx/appcompat/widget/ActionMenuView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 843
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionMenuView;->setAlpha(F)V

    .line 844
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->t()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 845
    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->b(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    goto :goto_0

    .line 847
    :cond_0
    iget v1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:I

    iget-boolean v2, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->y:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/bottomappbar/BottomAppBar;->b(Landroidx/appcompat/widget/ActionMenuView;IZ)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Landroidx/appcompat/widget/ActionMenuView;IZ)I
    .locals 6
    .param p1    # Landroidx/appcompat/widget/ActionMenuView;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_8

    if-nez p3, :cond_0

    goto/16 :goto_6

    .line 770
    :cond_0
    invoke-static {p0}, Lcom/google/android/material/internal/z;->a(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 771
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMeasuredWidth()I

    move-result p3

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    move v2, p3

    move p3, v1

    .line 774
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildCount()I

    move-result v3

    if-ge p3, v3, :cond_5

    .line 775
    invoke-virtual {p0, p3}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 777
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroidx/appcompat/widget/Toolbar$b;

    if-eqz v4, :cond_2

    .line 778
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/Toolbar$b;

    iget v4, v4, Landroidx/appcompat/widget/Toolbar$b;->a:I

    const v5, 0x800007

    and-int/2addr v4, v5

    const v5, 0x800003

    if-ne v4, v5, :cond_2

    move v4, v0

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    if-eqz v4, :cond_4

    if-eqz p2, :cond_3

    .line 784
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_3

    .line 785
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_4
    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 789
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getRight()I

    move-result p1

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionMenuView;->getLeft()I

    move-result p1

    :goto_4
    if-eqz p2, :cond_7

    .line 790
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->B:I

    goto :goto_5

    :cond_7
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->C:I

    neg-int p0, p0

    :goto_5
    add-int/2addr p1, p0

    sub-int/2addr v2, p1

    return v2

    :cond_8
    :goto_6
    return v1
.end method

.method protected a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .line 586
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->r()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 588
    invoke-virtual {p2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->p()V

    .line 594
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$5;-><init>(Lcom/google/android/material/bottomappbar/BottomAppBar;I)V

    invoke-virtual {p2, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->b(Lcom/google/android/material/floatingactionbutton/FloatingActionButton$a;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method a(Lcom/google/android/material/bottomappbar/BottomAppBar$a;)V
    .locals 1
    .param p1    # Lcom/google/android/material/bottomappbar/BottomAppBar$a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 469
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->x:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->x:Ljava/util/ArrayList;

    .line 472
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->x:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/af;
        .end annotation
    .end param

    .line 463
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 464
    invoke-virtual {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(I)V

    return-void
.end method

.method b(Lcom/google/android/material/bottomappbar/BottomAppBar$a;)V
    .locals 1
    .param p1    # Lcom/google/android/material/bottomappbar/BottomAppBar$a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 476
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->x:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 479
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->x:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method c(I)Z
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param

    int-to-float p1, p1

    .line 505
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/bottomappbar/a;->a()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 506
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/a;->a(F)V

    .line 507
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/t/j;

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->invalidateSelf()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getBackgroundTint()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 364
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/t/j;

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->W()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-result-object p0

    return-object p0
.end method

.method public getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 901
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->z:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    if-nez v0, :cond_0

    .line 902
    new-instance v0, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    invoke-direct {v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->z:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    .line 904
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->z:Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    return-object p0
.end method

.method public getCradleVerticalOffset()F
    .locals 0
    .annotation build Landroidx/annotation/p;
    .end annotation

    .line 404
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/a;->c()F

    move-result p0

    return p0
.end method

.method public getFabAlignmentMode()I
    .locals 0

    .line 322
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:I

    return p0
.end method

.method public getFabAnimationMode()I
    .locals 0

    .line 344
    iget p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->r:I

    return p0
.end method

.method public getFabCradleMargin()F
    .locals 0

    .line 371
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/a;->d()F

    move-result p0

    return p0
.end method

.method public getFabCradleRoundedCornerRadius()F
    .locals 0
    .annotation build Landroidx/annotation/p;
    .end annotation

    .line 387
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/a;->e()F

    move-result p0

    return p0
.end method

.method public getHideOnScroll()Z
    .locals 0

    .line 426
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->s:Z

    return p0
.end method

.method public n()V
    .locals 1

    .line 440
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->c(Landroid/view/View;)V

    return-void
.end method

.method public o()V
    .locals 1

    .line 445
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->b(Landroid/view/View;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 909
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onAttachedToWindow()V

    .line 911
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/t/j;

    invoke-static {p0, v0}, Lcom/google/android/material/t/k;->a(Landroid/view/View;Lcom/google/android/material/t/j;)V

    .line 915
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 916
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 807
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    if-eqz p1, :cond_0

    .line 814
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->u()V

    .line 816
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->v()V

    .line 820
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->w()V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1061
    instance-of v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$d;

    if-nez v0, :cond_0

    .line 1062
    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1065
    :cond_0
    check-cast p1, Lcom/google/android/material/bottomappbar/BottomAppBar$d;

    .line 1066
    invoke-virtual {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$d;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1067
    iget v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$d;->a:I

    iput v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:I

    .line 1068
    iget-boolean p1, p1, Lcom/google/android/material/bottomappbar/BottomAppBar$d;->b:Z

    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->y:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1052
    invoke-super {p0}, Landroidx/appcompat/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1053
    new-instance v1, Lcom/google/android/material/bottomappbar/BottomAppBar$d;

    invoke-direct {v1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar$d;-><init>(Landroid/os/Parcelable;)V

    .line 1054
    iget v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:I

    iput v0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$d;->a:I

    .line 1055
    iget-boolean p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->y:Z

    iput-boolean p0, v1, Lcom/google/android/material/bottomappbar/BottomAppBar$d;->b:Z

    return-object v1
.end method

.method public setBackgroundTint(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 359
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/t/j;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCradleVerticalOffset(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param

    .line 413
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getCradleVerticalOffset()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/a;->c(F)V

    .line 415
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/t/j;

    invoke-virtual {p1}, Lcom/google/android/material/t/j;->invalidateSelf()V

    .line 416
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->v()V

    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/t/j;

    invoke-virtual {v0, p1}, Lcom/google/android/material/t/j;->r(F)V

    .line 452
    iget-object p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/t/j;

    .line 453
    invoke-virtual {p1}, Lcom/google/android/material/t/j;->am()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/t/j;

    invoke-virtual {v0}, Lcom/google/android/material/t/j;->ar()I

    move-result v0

    sub-int/2addr p1, v0

    .line 454
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getBehavior()Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar$Behavior;->a(Landroid/view/View;I)V

    return-void
.end method

.method public setFabAlignmentMode(I)V
    .locals 1

    .line 333
    invoke-direct {p0, p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->d(I)V

    .line 334
    iget-boolean v0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->y:Z

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->a(IZ)V

    .line 335
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->q:I

    return-void
.end method

.method public setFabAnimationMode(I)V
    .locals 0

    .line 355
    iput p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->r:I

    return-void
.end method

.method public setFabCradleMargin(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param

    .line 378
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabCradleMargin()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 379
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/a;->d(F)V

    .line 380
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/t/j;

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setFabCradleRoundedCornerRadius(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param

    .line 392
    invoke-virtual {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getFabCradleRoundedCornerRadius()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/google/android/material/bottomappbar/BottomAppBar;->getTopEdgeTreatment()Lcom/google/android/material/bottomappbar/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/bottomappbar/a;->e(F)V

    .line 394
    iget-object p0, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->n:Lcom/google/android/material/t/j;

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setHideOnScroll(Z)V
    .locals 0

    .line 435
    iput-boolean p1, p0, Lcom/google/android/material/bottomappbar/BottomAppBar;->s:Z

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
