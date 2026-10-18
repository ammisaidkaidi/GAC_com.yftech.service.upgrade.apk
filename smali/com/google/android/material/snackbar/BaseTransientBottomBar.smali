.class public abstract Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$c;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$f;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$g;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$e;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$d;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$b;,
        Lcom/google/android/material/snackbar/BaseTransientBottomBar$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = -0x2

.field public static final d:I = -0x1

.field public static final e:I = 0x0

.field static final f:I = 0xfa

.field static final g:I = 0xb4

.field static final h:Landroid/os/Handler;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field static final i:I = 0x0

.field static final j:I = 0x1

.field private static final m:I = 0x96

.field private static final n:I = 0x4b

.field private static final o:F = 0.8f

.field private static final p:Z

.field private static final q:[I

.field private static final r:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$b<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field private G:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

.field private final H:Landroid/view/accessibility/AccessibilityManager;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field protected final k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field l:Lcom/google/android/material/snackbar/b$a;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final s:Landroid/view/ViewGroup;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final t:Landroid/content/Context;

.field private final u:Lcom/google/android/material/snackbar/a;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private v:I

.field private w:Z

.field private x:Landroid/view/View;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private final y:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/am;
        a = 0x1d
    .end annotation
.end field

.field private z:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x10

    if-lt v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->p:Z

    .line 230
    new-array v0, v1, [I

    sget v1, Lcom/google/android/material/a$c;->snackbarStyle:I

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->q:[I

    .line 232
    const-class v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r:Ljava/lang/String;

    .line 235
    new-instance v0, Landroid/os/Handler;

    .line 237
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;

    invoke-direct {v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->h:Landroid/os/Handler;

    return-void
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/a;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/snackbar/a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;

    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$10;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->y:Ljava/lang/Runnable;

    .line 669
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;

    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$13;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l:Lcom/google/android/material/snackbar/b$a;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 348
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->s:Landroid/view/ViewGroup;

    .line 349
    iput-object p3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->u:Lcom/google/android/material/snackbar/a;

    .line 350
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t:Landroid/content/Context;

    .line 352
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/material/internal/s;->a(Landroid/content/Context;)V

    .line 354
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 358
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a()I

    move-result p3

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->s:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    .line 359
    instance-of p1, p2, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    if-eqz p1, :cond_0

    .line 360
    move-object p1, p2

    check-cast p1, Lcom/google/android/material/snackbar/SnackbarContentLayout;

    iget-object p3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    .line 361
    invoke-virtual {p3}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getActionTextColorAlpha()F

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->a(F)V

    .line 363
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-virtual {p1, p2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->addView(Landroid/view/View;)V

    .line 365
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 366
    instance-of p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p2, :cond_1

    .line 367
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 368
    new-instance p2, Landroid/graphics/Rect;

    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {p2, p3, v0, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->z:Landroid/graphics/Rect;

    .line 376
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Landroidx/core/n/af;->j(Landroid/view/View;I)V

    .line 377
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-static {p1, p2}, Landroidx/core/n/af;->e(Landroid/view/View;I)V

    .line 380
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-static {p1, p2}, Landroidx/core/n/af;->b(Landroid/view/View;Z)V

    .line 381
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    new-instance p2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;

    invoke-direct {p2, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$11;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-static {p1, p2}, Landroidx/core/n/af;->a(Landroid/view/View;Landroidx/core/n/y;)V

    .line 398
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    new-instance p2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$12;

    invoke-direct {p2, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$12;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-static {p1, p2}, Landroidx/core/n/af;->a(Landroid/view/View;Landroidx/core/n/a;)V

    .line 419
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t:Landroid/content/Context;

    const-string p2, "accessibility"

    .line 420
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->H:Landroid/view/accessibility/AccessibilityManager;

    return-void

    .line 345
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Transient bottom bar must have non-null callback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 342
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Transient bottom bar must have non-null content"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 339
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Transient bottom bar must have non-null parent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private A()I
    .locals 4

    .line 823
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->x:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x2

    .line 827
    new-array v1, v0, [I

    .line 828
    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->x:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    .line 829
    aget v1, v1, v2

    .line 831
    new-array v0, v0, [I

    .line 832
    iget-object v3, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->s:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 833
    aget v0, v0, v2

    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->s:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method private B()V
    .locals 5

    const/4 v0, 0x2

    .line 867
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 868
    new-array v2, v0, [F

    fill-array-data v2, :array_1

    invoke-direct {p0, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 870
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 871
    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v2, v0, v1

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x96

    .line 872
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 873
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$2;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 880
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private C()V
    .locals 5

    .line 925
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->D()I

    move-result v0

    .line 926
    sget-boolean v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->p:Z

    if-eqz v1, :cond_0

    .line 927
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-static {v1, v0}, Landroidx/core/n/af;->n(Landroid/view/View;I)V

    goto :goto_0

    .line 929
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->setTranslationY(F)V

    .line 932
    :goto_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    .line 933
    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 934
    sget-object v2, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    .line 935
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 936
    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;

    invoke-direct {v2, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$6;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 949
    new-instance v2, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;

    invoke-direct {v2, p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$7;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 967
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private D()I
    .locals 2

    .line 1009
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getHeight()I

    move-result v0

    .line 1010
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 1011
    instance-of v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 1012
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .line 94
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->A:I

    return p1
.end method

.method private varargs a([F)Landroid/animation/ValueAnimator;
    .locals 1

    .line 897
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 898
    sget-object v0, Lcom/google/android/material/a/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 899
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$4;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Landroid/content/Context;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t:Landroid/content/Context;

    return-object p0
.end method

.method private a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V
    .locals 2

    .line 782
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->G:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    if-nez v0, :cond_0

    .line 783
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->n()Lcom/google/android/material/behavior/SwipeDismissBehavior;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->G:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    .line 785
    :goto_0
    instance-of v1, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    if-eqz v1, :cond_1

    .line 786
    move-object v1, v0

    check-cast v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    invoke-static {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;->a(Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    .line 789
    :cond_1
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$16;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$16;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(Lcom/google/android/material/behavior/SwipeDismissBehavior$a;)V

    .line 814
    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;)V

    .line 817
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->x:Landroid/view/View;

    if-nez p0, :cond_2

    const/16 p0, 0x50

    .line 818
    iput p0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->g:I

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->z()I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .line 94
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->B:I

    return p1
.end method

.method private varargs b([F)Landroid/animation/ValueAnimator;
    .locals 1

    .line 910
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 911
    sget-object v0, Lcom/google/android/material/a/a;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 912
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;

    invoke-direct {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$5;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method static synthetic c(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->y()I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .line 94
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->C:I

    return p1
.end method

.method static synthetic d(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)I
    .locals 0

    .line 94
    iget p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->D:I

    return p0
.end method

.method static synthetic d(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .line 94
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->D:I

    return p1
.end method

.method static synthetic e(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->u()V

    return-void
.end method

.method static synthetic f(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->x()V

    return-void
.end method

.method private g(I)V
    .locals 2

    .line 859
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getAnimationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 860
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->h(I)V

    goto :goto_0

    .line 862
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->i(I)V

    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->B()V

    return-void
.end method

.method private h(I)V
    .locals 3

    const/4 v0, 0x2

    .line 884
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x4b

    .line 885
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 886
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$3;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 893
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic h(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->C()V

    return-void
.end method

.method static synthetic i(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)Lcom/google/android/material/snackbar/a;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->u:Lcom/google/android/material/snackbar/a;

    return-object p0
.end method

.method private i(I)V
    .locals 4

    .line 971
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    .line 972
    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->D()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 973
    sget-object v1, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 974
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 975
    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$8;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 987
    new-instance p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;

    invoke-direct {p1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$9;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1005
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic s()Ljava/lang/String;
    .locals 1

    .line 94
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t()Z
    .locals 1

    .line 94
    sget-boolean v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->p:Z

    return v0
.end method

.method private u()V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 425
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->z:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    goto :goto_1

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->x:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->E:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->A:I

    .line 432
    :goto_0
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 433
    iget-object v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->z:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 434
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->B:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 435
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->z:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->C:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 436
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->requestLayout()V

    .line 438
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 441
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 426
    :cond_3
    :goto_1
    sget-object p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r:Ljava/lang/String;

    const-string v0, "Unable to update margins because layout params are not MarginLayoutParams"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private v()Z
    .locals 1

    .line 446
    iget v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->D:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->w:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->w()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private w()Z
    .locals 1

    .line 450
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 451
    instance-of v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    .line 452
    invoke-virtual {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;->b()Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    move-result-object p0

    instance-of p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private x()V
    .locals 2

    .line 754
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->p()V

    goto :goto_0

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->setVisibility(I)V

    .line 760
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->q()V

    :goto_0
    return-void
.end method

.method private y()I
    .locals 2

    const/4 v0, 0x2

    .line 765
    new-array v0, v0, [I

    .line 766
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-virtual {v1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 767
    aget v0, v0, v1

    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getHeight()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private z()I
    .locals 1
    .annotation build Landroidx/annotation/am;
        a = 0x11
    .end annotation

    .line 772
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 773
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 774
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 775
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method


# virtual methods
.method protected a()I
    .locals 0
    .annotation build Landroidx/annotation/ac;
    .end annotation

    .line 458
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/google/android/material/a$k;->mtrl_layout_snackbar:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/google/android/material/a$k;->design_layout_snackbar:I

    :goto_0
    return p0
.end method

.method public a(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 481
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->v:I

    return-object p0
.end method

.method public a(Landroid/view/View;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TB;"
        }
    .end annotation

    .line 552
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->x:Landroid/view/View;

    return-object p0
.end method

.method public a(Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;",
            ")TB;"
        }
    .end annotation

    .line 578
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->G:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    return-object p0
.end method

.method public a(Lcom/google/android/material/snackbar/BaseTransientBottomBar$b;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .locals 1
    .param p1    # Lcom/google/android/material/snackbar/BaseTransientBottomBar$b;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$b<",
            "TB;>;)TB;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->F:Ljava/util/List;

    if-nez v0, :cond_1

    .line 630
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->F:Ljava/util/List;

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Z)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 505
    iput-boolean p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->w:Z

    return-object p0
.end method

.method public b(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->setAnimationMode(I)V

    return-object p0
.end method

.method public b(Lcom/google/android/material/snackbar/BaseTransientBottomBar$b;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .locals 1
    .param p1    # Lcom/google/android/material/snackbar/BaseTransientBottomBar$b;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/snackbar/BaseTransientBottomBar$b<",
            "TB;>;)TB;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->F:Ljava/util/List;

    if-nez v0, :cond_1

    return-object p0

    .line 652
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->F:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected b()Z
    .locals 3

    .line 467
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t:Landroid/content/Context;

    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->q:[I

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 468
    invoke-virtual {p0, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 469
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    if-eq v2, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public c()I
    .locals 0

    .line 492
    iget p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->v:I

    return p0
.end method

.method public c(I)Lcom/google/android/material/snackbar/BaseTransientBottomBar;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->s:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->x:Landroid/view/View;

    .line 564
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->x:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object p0

    .line 565
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find anchor view with id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected d(I)V
    .locals 1

    .line 614
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l:Lcom/google/android/material/snackbar/b$a;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/snackbar/b;->a(Lcom/google/android/material/snackbar/b$a;I)V

    return-void
.end method

.method public d()Z
    .locals 0

    .line 514
    iget-boolean p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->w:Z

    return p0
.end method

.method public e()I
    .locals 0

    .line 524
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getAnimationMode()I

    move-result p0

    return p0
.end method

.method final e(I)V
    .locals 1

    .line 1018
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1019
    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g(I)V

    goto :goto_0

    .line 1022
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->f(I)V

    :goto_0
    return-void
.end method

.method public f()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 546
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->x:Landroid/view/View;

    return-object p0
.end method

.method f(I)V
    .locals 2

    .line 1040
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l:Lcom/google/android/material/snackbar/b$a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/b;->a(Lcom/google/android/material/snackbar/b$a;)V

    .line 1041
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->F:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1046
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->F:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$b;

    invoke-virtual {v1, p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$b;->a(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1050
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 1051
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1052
    check-cast p1, Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public g()Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;
    .locals 0

    .line 588
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->G:Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    return-object p0
.end method

.method public h()Landroid/content/Context;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 594
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->t:Landroid/content/Context;

    return-object p0
.end method

.method public i()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 600
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    return-object p0
.end method

.method public j()V
    .locals 2

    .line 605
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->c()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l:Lcom/google/android/material/snackbar/b$a;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/material/snackbar/b;->a(ILcom/google/android/material/snackbar/b$a;)V

    return-void
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x3

    .line 610
    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->d(I)V

    return-void
.end method

.method public l()Z
    .locals 1

    .line 658
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l:Lcom/google/android/material/snackbar/b$a;

    invoke-virtual {v0, p0}, Lcom/google/android/material/snackbar/b;->e(Lcom/google/android/material/snackbar/b$a;)Z

    move-result p0

    return p0
.end method

.method public m()Z
    .locals 1

    .line 666
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l:Lcom/google/android/material/snackbar/b$a;

    invoke-virtual {v0, p0}, Lcom/google/android/material/snackbar/b;->f(Lcom/google/android/material/snackbar/b$a;)Z

    move-result p0

    return p0
.end method

.method protected n()Lcom/google/android/material/behavior/SwipeDismissBehavior;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/behavior/SwipeDismissBehavior<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 686
    new-instance p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;

    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$Behavior;-><init>()V

    return-object p0
.end method

.method final o()V
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$14;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->setOnAttachStateChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$f;)V

    .line 721
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 724
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    if-eqz v1, :cond_0

    .line 725
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;

    invoke-direct {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout$f;)V

    .line 728
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->A()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->E:I

    .line 729
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->u()V

    .line 733
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->setVisibility(I)V

    .line 734
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->s:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 737
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-static {v0}, Landroidx/core/n/af;->ag(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 738
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->x()V

    return-void

    .line 743
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$15;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$15;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->setOnLayoutChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$g;)V

    return-void
.end method

.method p()V
    .locals 2

    .line 840
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    new-instance v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;

    invoke-direct {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;-><init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method q()V
    .locals 2

    .line 1027
    invoke-static {}, Lcom/google/android/material/snackbar/b;->a()Lcom/google/android/material/snackbar/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->l:Lcom/google/android/material/snackbar/b$a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/b;->b(Lcom/google/android/material/snackbar/b$a;)V

    .line 1028
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->F:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1033
    iget-object v1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->F:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$b;

    invoke-virtual {v1, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$b;->a(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method r()Z
    .locals 1

    .line 1059
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->H:Landroid/view/accessibility/AccessibilityManager;

    const/4 v0, 0x1

    .line 1060
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1061
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
