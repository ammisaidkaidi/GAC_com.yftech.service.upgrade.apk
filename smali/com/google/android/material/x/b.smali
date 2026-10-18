.class public Lcom/google/android/material/x/b;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation runtime Landroidx/l/a/d$a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/x/b$a;,
        Lcom/google/android/material/x/b$f;,
        Lcom/google/android/material/x/b$m;,
        Lcom/google/android/material/x/b$k;,
        Lcom/google/android/material/x/b$g;,
        Lcom/google/android/material/x/b$l;,
        Lcom/google/android/material/x/b$h;,
        Lcom/google/android/material/x/b$b;,
        Lcom/google/android/material/x/b$e;,
        Lcom/google/android/material/x/b$j;,
        Lcom/google/android/material/x/b$i;,
        Lcom/google/android/material/x/b$c;,
        Lcom/google/android/material/x/b$d;
    }
.end annotation


# static fields
.field private static final L:I

.field private static final M:I = 0x48
    .annotation build Landroidx/annotation/p;
        a = 0x0
    .end annotation
.end field

.field private static final N:I = 0x30
    .annotation build Landroidx/annotation/p;
        a = 0x0
    .end annotation
.end field

.field private static final O:I = 0x38
    .annotation build Landroidx/annotation/p;
        a = 0x0
    .end annotation
.end field

.field private static final P:I = 0x18
    .annotation build Landroidx/annotation/p;
        a = 0x0
    .end annotation
.end field

.field private static final Q:I = -0x1

.field private static final R:I = 0x12c

.field private static final S:Landroidx/core/m/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/m/h$a<",
            "Lcom/google/android/material/x/b$h;",
            ">;"
        }
    .end annotation
.end field

.field private static final T:Ljava/lang/String; = "TabLayout"

.field static final a:I = 0x8
    .annotation build Landroidx/annotation/p;
        a = 0x0
    .end annotation
.end field

.field static final b:I = 0x10
    .annotation build Landroidx/annotation/p;
        a = 0x0
    .end annotation
.end field

.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field public static final k:I = 0x0

.field public static final l:I = 0x1

.field public static final m:I = 0x2

.field public static final n:I = 0x3


# instance fields
.field A:F

.field final B:I

.field C:I

.field D:I

.field E:I

.field F:I

.field G:I

.field H:Z

.field I:Z

.field J:Z

.field K:Landroidx/l/a/d;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private final U:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/x/b$h;",
            ">;"
        }
    .end annotation
.end field

.field private V:Lcom/google/android/material/x/b$h;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private final W:Landroid/graphics/RectF;

.field private final aa:I

.field private final ab:I

.field private final ac:I

.field private ad:I

.field private ae:Lcom/google/android/material/x/b$b;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private final af:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/x/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private ag:Lcom/google/android/material/x/b$b;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private ah:Landroid/animation/ValueAnimator;

.field private ai:Landroidx/l/a/a;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private aj:Landroid/database/DataSetObserver;

.field private ak:Lcom/google/android/material/x/b$k;

.field private al:Lcom/google/android/material/x/b$a;

.field private am:Z

.field private final an:Landroidx/core/m/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/m/h$a<",
            "Lcom/google/android/material/x/b$l;",
            ">;"
        }
    .end annotation
.end field

.field final o:Lcom/google/android/material/x/b$g;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field u:Landroid/content/res/ColorStateList;

.field v:Landroid/content/res/ColorStateList;

.field w:Landroid/content/res/ColorStateList;

.field x:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field y:Landroid/graphics/PorterDuff$Mode;

.field z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 180
    sget v0, Lcom/google/android/material/a$n;->Widget_Design_TabLayout:I

    sput v0, Lcom/google/android/material/x/b;->L:I

    .line 204
    new-instance v0, Landroidx/core/m/h$c;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/m/h$c;-><init>(I)V

    sput-object v0, Lcom/google/android/material/x/b;->S:Landroidx/core/m/h$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 450
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/x/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 454
    sget v0, Lcom/google/android/material/a$c;->tabStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/x/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 458
    sget v0, Lcom/google/android/material/x/b;->L:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 393
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/x/b;->U:Ljava/util/ArrayList;

    .line 396
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/x/b;->W:Landroid/graphics/RectF;

    const p1, 0x7fffffff

    .line 417
    iput p1, p0, Lcom/google/android/material/x/b;->C:I

    .line 434
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/x/b;->af:Ljava/util/ArrayList;

    .line 447
    new-instance p1, Landroidx/core/m/h$b;

    const/16 v0, 0xc

    invoke-direct {p1, v0}, Landroidx/core/m/h$b;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/x/b;->an:Landroidx/core/m/h$a;

    .line 460
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    .line 463
    invoke-virtual {p0, v0}, Lcom/google/android/material/x/b;->setHorizontalScrollBarEnabled(Z)V

    .line 466
    new-instance v1, Lcom/google/android/material/x/b$g;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/x/b$g;-><init>(Lcom/google/android/material/x/b;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    .line 467
    iget-object v1, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v3, -0x2

    invoke-direct {v2, v3, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v1, v0, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 473
    sget-object v3, Lcom/google/android/material/a$o;->TabLayout:[I

    sget v5, Lcom/google/android/material/x/b;->L:I

    const/4 v8, 0x1

    new-array v6, v8, [I

    sget v1, Lcom/google/android/material/a$o;->TabLayout_tabTextAppearance:I

    aput v1, v6, v0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 474
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/s;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 482
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    instance-of p3, p3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p3, :cond_0

    .line 483
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/ColorDrawable;

    .line 484
    new-instance v1, Lcom/google/android/material/t/j;

    invoke-direct {v1}, Lcom/google/android/material/t/j;-><init>()V

    .line 485
    invoke-virtual {p3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/google/android/material/t/j;->g(Landroid/content/res/ColorStateList;)V

    .line 486
    invoke-virtual {v1, p1}, Lcom/google/android/material/t/j;->b(Landroid/content/Context;)V

    .line 487
    invoke-static {p0}, Landroidx/core/n/af;->P(Landroid/view/View;)F

    move-result p3

    invoke-virtual {v1, p3}, Lcom/google/android/material/t/j;->r(F)V

    .line 488
    invoke-static {p0, v1}, Landroidx/core/n/af;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 491
    :cond_0
    iget-object p3, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    sget v1, Lcom/google/android/material/a$o;->TabLayout_tabIndicatorHeight:I

    .line 492
    invoke-virtual {p2, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 491
    invoke-virtual {p3, v1}, Lcom/google/android/material/x/b$g;->b(I)V

    .line 493
    iget-object p3, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    sget v1, Lcom/google/android/material/a$o;->TabLayout_tabIndicatorColor:I

    .line 494
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 493
    invoke-virtual {p3, v1}, Lcom/google/android/material/x/b$g;->a(I)V

    .line 495
    sget p3, Lcom/google/android/material/a$o;->TabLayout_tabIndicator:I

    .line 496
    invoke-static {p1, p2, p3}, Lcom/google/android/material/q/c;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 495
    invoke-virtual {p0, p3}, Lcom/google/android/material/x/b;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 497
    sget p3, Lcom/google/android/material/a$o;->TabLayout_tabIndicatorGravity:I

    .line 498
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 497
    invoke-virtual {p0, p3}, Lcom/google/android/material/x/b;->setSelectedTabIndicatorGravity(I)V

    .line 499
    sget p3, Lcom/google/android/material/a$o;->TabLayout_tabIndicatorFullWidth:I

    invoke-virtual {p2, p3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/x/b;->setTabIndicatorFullWidth(Z)V

    .line 501
    sget p3, Lcom/google/android/material/a$o;->TabLayout_tabPadding:I

    .line 504
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/x/b;->s:I

    iput p3, p0, Lcom/google/android/material/x/b;->r:I

    iput p3, p0, Lcom/google/android/material/x/b;->q:I

    iput p3, p0, Lcom/google/android/material/x/b;->p:I

    .line 505
    sget p3, Lcom/google/android/material/a$o;->TabLayout_tabPaddingStart:I

    iget v1, p0, Lcom/google/android/material/x/b;->p:I

    .line 506
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/x/b;->p:I

    .line 507
    sget p3, Lcom/google/android/material/a$o;->TabLayout_tabPaddingTop:I

    iget v1, p0, Lcom/google/android/material/x/b;->q:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/x/b;->q:I

    .line 508
    sget p3, Lcom/google/android/material/a$o;->TabLayout_tabPaddingEnd:I

    iget v1, p0, Lcom/google/android/material/x/b;->r:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/x/b;->r:I

    .line 509
    sget p3, Lcom/google/android/material/a$o;->TabLayout_tabPaddingBottom:I

    iget v1, p0, Lcom/google/android/material/x/b;->s:I

    .line 510
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/x/b;->s:I

    .line 512
    sget p3, Lcom/google/android/material/a$o;->TabLayout_tabTextAppearance:I

    sget v1, Lcom/google/android/material/a$n;->TextAppearance_Design_Tab:I

    .line 513
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/x/b;->t:I

    .line 516
    iget p3, p0, Lcom/google/android/material/x/b;->t:I

    sget-object v1, Landroidx/appcompat/a$m;->TextAppearance:[I

    .line 517
    invoke-virtual {p1, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 520
    :try_start_0
    sget v1, Landroidx/appcompat/a$m;->TextAppearance_android_textSize:I

    .line 521
    invoke-virtual {p3, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/x/b;->z:F

    .line 523
    sget v1, Landroidx/appcompat/a$m;->TextAppearance_android_textColor:I

    .line 524
    invoke-static {p1, p3, v1}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/x/b;->u:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 529
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 532
    sget p3, Lcom/google/android/material/a$o;->TabLayout_tabTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 534
    sget p3, Lcom/google/android/material/a$o;->TabLayout_tabTextColor:I

    .line 535
    invoke-static {p1, p2, p3}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/x/b;->u:Landroid/content/res/ColorStateList;

    .line 538
    :cond_1
    sget p3, Lcom/google/android/material/a$o;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 542
    sget p3, Lcom/google/android/material/a$o;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 543
    iget-object v1, p0, Lcom/google/android/material/x/b;->u:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-static {v1, p3}, Lcom/google/android/material/x/b;->b(II)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/x/b;->u:Landroid/content/res/ColorStateList;

    .line 546
    :cond_2
    sget p3, Lcom/google/android/material/a$o;->TabLayout_tabIconTint:I

    .line 547
    invoke-static {p1, p2, p3}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/x/b;->v:Landroid/content/res/ColorStateList;

    .line 548
    sget p3, Lcom/google/android/material/a$o;->TabLayout_tabIconTintMode:I

    .line 549
    invoke-virtual {p2, p3, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    const/4 v1, 0x0

    invoke-static {p3, v1}, Lcom/google/android/material/internal/z;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/material/x/b;->y:Landroid/graphics/PorterDuff$Mode;

    .line 551
    sget p3, Lcom/google/android/material/a$o;->TabLayout_tabRippleColor:I

    .line 552
    invoke-static {p1, p2, p3}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/x/b;->w:Landroid/content/res/ColorStateList;

    .line 554
    sget p1, Lcom/google/android/material/a$o;->TabLayout_tabIndicatorAnimationDuration:I

    const/16 p3, 0x12c

    .line 555
    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/x/b;->E:I

    .line 557
    sget p1, Lcom/google/android/material/a$o;->TabLayout_tabMinWidth:I

    .line 558
    invoke-virtual {p2, p1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/x/b;->aa:I

    .line 559
    sget p1, Lcom/google/android/material/a$o;->TabLayout_tabMaxWidth:I

    .line 560
    invoke-virtual {p2, p1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/x/b;->ab:I

    .line 561
    sget p1, Lcom/google/android/material/a$o;->TabLayout_tabBackground:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/x/b;->B:I

    .line 562
    sget p1, Lcom/google/android/material/a$o;->TabLayout_tabContentStart:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/x/b;->ad:I

    .line 564
    sget p1, Lcom/google/android/material/a$o;->TabLayout_tabMode:I

    invoke-virtual {p2, p1, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/x/b;->G:I

    .line 565
    sget p1, Lcom/google/android/material/a$o;->TabLayout_tabGravity:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/x/b;->D:I

    .line 566
    sget p1, Lcom/google/android/material/a$o;->TabLayout_tabInlineLabel:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/x/b;->H:Z

    .line 567
    sget p1, Lcom/google/android/material/a$o;->TabLayout_tabUnboundedRipple:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/x/b;->J:Z

    .line 568
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 571
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 572
    sget p2, Lcom/google/android/material/a$f;->design_tab_text_size_2line:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/google/android/material/x/b;->A:F

    .line 573
    sget p2, Lcom/google/android/material/a$f;->design_tab_scrollable_min_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/x/b;->ac:I

    .line 576
    invoke-direct {p0}, Lcom/google/android/material/x/b;->l()V

    return-void

    :catchall_0
    move-exception p0

    .line 529
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 530
    throw p0
.end method

.method private a(IF)I
    .locals 4

    .line 1784
    iget v0, p0, Lcom/google/android/material/x/b;->G:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/x/b;->G:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 1785
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/x/b$g;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 1786
    iget-object v3, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    .line 1787
    invoke-virtual {v3}, Lcom/google/android/material/x/b$g;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    .line 1788
    invoke-virtual {v3, p1}, Lcom/google/android/material/x/b$g;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 1790
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-eqz p1, :cond_4

    .line 1791
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1794
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    div-int/lit8 v0, v3, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getWidth()I

    move-result v0

    div-int/2addr v0, v2

    sub-int/2addr p1, v0

    add-int/2addr v3, v1

    int-to-float v0, v3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 1798
    invoke-static {p0}, Landroidx/core/n/af;->p(Landroid/view/View;)I

    move-result p0

    if-nez p0, :cond_5

    add-int/2addr p1, p2

    goto :goto_3

    :cond_5
    sub-int/2addr p1, p2

    :goto_3
    return p1
.end method

.method static synthetic a(Lcom/google/android/material/x/b;)Landroid/graphics/RectF;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/google/android/material/x/b;->W:Landroid/graphics/RectF;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 1514
    instance-of v0, p1, Lcom/google/android/material/x/a;

    if-eqz v0, :cond_0

    .line 1515
    check-cast p1, Lcom/google/android/material/x/a;

    invoke-direct {p0, p1}, Lcom/google/android/material/x/b;->a(Lcom/google/android/material/x/a;)V

    return-void

    .line 1517
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2
    .param p1    # Landroid/widget/LinearLayout$LayoutParams;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1530
    iget v0, p0, Lcom/google/android/material/x/b;->G:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/google/android/material/x/b;->D:I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    .line 1531
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 p0, 0x3f800000    # 1.0f

    .line 1532
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    .line 1534
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 p0, 0x0

    .line 1535
    iput p0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    return-void
.end method

.method private a(Landroidx/l/a/d;ZZ)V
    .locals 2
    .param p1    # Landroidx/l/a/d;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1308
    iget-object v0, p0, Lcom/google/android/material/x/b;->K:Landroidx/l/a/d;

    if-eqz v0, :cond_1

    .line 1310
    iget-object v0, p0, Lcom/google/android/material/x/b;->ak:Lcom/google/android/material/x/b$k;

    if-eqz v0, :cond_0

    .line 1311
    iget-object v0, p0, Lcom/google/android/material/x/b;->K:Landroidx/l/a/d;

    iget-object v1, p0, Lcom/google/android/material/x/b;->ak:Lcom/google/android/material/x/b$k;

    invoke-virtual {v0, v1}, Landroidx/l/a/d;->b(Landroidx/l/a/d$f;)V

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/x/b;->al:Lcom/google/android/material/x/b$a;

    if-eqz v0, :cond_1

    .line 1314
    iget-object v0, p0, Lcom/google/android/material/x/b;->K:Landroidx/l/a/d;

    iget-object v1, p0, Lcom/google/android/material/x/b;->al:Lcom/google/android/material/x/b$a;

    invoke-virtual {v0, v1}, Landroidx/l/a/d;->b(Landroidx/l/a/d$e;)V

    .line 1318
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/x/b;->ag:Lcom/google/android/material/x/b$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1320
    iget-object v0, p0, Lcom/google/android/material/x/b;->ag:Lcom/google/android/material/x/b$b;

    invoke-virtual {p0, v0}, Lcom/google/android/material/x/b;->b(Lcom/google/android/material/x/b$b;)V

    .line 1321
    iput-object v1, p0, Lcom/google/android/material/x/b;->ag:Lcom/google/android/material/x/b$b;

    :cond_2
    if-eqz p1, :cond_6

    .line 1325
    iput-object p1, p0, Lcom/google/android/material/x/b;->K:Landroidx/l/a/d;

    .line 1328
    iget-object v0, p0, Lcom/google/android/material/x/b;->ak:Lcom/google/android/material/x/b$k;

    if-nez v0, :cond_3

    .line 1329
    new-instance v0, Lcom/google/android/material/x/b$k;

    invoke-direct {v0, p0}, Lcom/google/android/material/x/b$k;-><init>(Lcom/google/android/material/x/b;)V

    iput-object v0, p0, Lcom/google/android/material/x/b;->ak:Lcom/google/android/material/x/b$k;

    .line 1331
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/x/b;->ak:Lcom/google/android/material/x/b$k;

    invoke-virtual {v0}, Lcom/google/android/material/x/b$k;->a()V

    .line 1332
    iget-object v0, p0, Lcom/google/android/material/x/b;->ak:Lcom/google/android/material/x/b$k;

    invoke-virtual {p1, v0}, Landroidx/l/a/d;->a(Landroidx/l/a/d$f;)V

    .line 1335
    new-instance v0, Lcom/google/android/material/x/b$m;

    invoke-direct {v0, p1}, Lcom/google/android/material/x/b$m;-><init>(Landroidx/l/a/d;)V

    iput-object v0, p0, Lcom/google/android/material/x/b;->ag:Lcom/google/android/material/x/b$b;

    .line 1336
    iget-object v0, p0, Lcom/google/android/material/x/b;->ag:Lcom/google/android/material/x/b$b;

    invoke-virtual {p0, v0}, Lcom/google/android/material/x/b;->a(Lcom/google/android/material/x/b$b;)V

    .line 1338
    invoke-virtual {p1}, Landroidx/l/a/d;->getAdapter()Landroidx/l/a/a;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1342
    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/x/b;->a(Landroidx/l/a/a;Z)V

    .line 1346
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/x/b;->al:Lcom/google/android/material/x/b$a;

    if-nez v0, :cond_5

    .line 1347
    new-instance v0, Lcom/google/android/material/x/b$a;

    invoke-direct {v0, p0}, Lcom/google/android/material/x/b$a;-><init>(Lcom/google/android/material/x/b;)V

    iput-object v0, p0, Lcom/google/android/material/x/b;->al:Lcom/google/android/material/x/b$a;

    .line 1349
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/x/b;->al:Lcom/google/android/material/x/b$a;

    invoke-virtual {v0, p2}, Lcom/google/android/material/x/b$a;->a(Z)V

    .line 1350
    iget-object p2, p0, Lcom/google/android/material/x/b;->al:Lcom/google/android/material/x/b$a;

    invoke-virtual {p1, p2}, Landroidx/l/a/d;->a(Landroidx/l/a/d$e;)V

    .line 1353
    invoke-virtual {p1}, Landroidx/l/a/d;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/x/b;->a(IFZ)V

    goto :goto_0

    .line 1357
    :cond_6
    iput-object v1, p0, Lcom/google/android/material/x/b;->K:Landroidx/l/a/d;

    const/4 p1, 0x0

    .line 1358
    invoke-virtual {p0, v1, p1}, Lcom/google/android/material/x/b;->a(Landroidx/l/a/a;Z)V

    .line 1361
    :goto_0
    iput-boolean p3, p0, Lcom/google/android/material/x/b;->am:Z

    return-void
.end method

.method private a(Lcom/google/android/material/x/a;)V
    .locals 2
    .param p1    # Lcom/google/android/material/x/a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 707
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->b()Lcom/google/android/material/x/b$h;

    move-result-object v0

    .line 708
    iget-object v1, p1, Lcom/google/android/material/x/a;->a:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p1, Lcom/google/android/material/x/a;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/material/x/b$h;->a(Ljava/lang/CharSequence;)Lcom/google/android/material/x/b$h;

    .line 711
    :cond_0
    iget-object v1, p1, Lcom/google/android/material/x/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 712
    iget-object v1, p1, Lcom/google/android/material/x/a;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/google/android/material/x/b$h;->a(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/x/b$h;

    .line 714
    :cond_1
    iget v1, p1, Lcom/google/android/material/x/a;->c:I

    if-eqz v1, :cond_2

    .line 715
    iget v1, p1, Lcom/google/android/material/x/a;->c:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/x/b$h;->a(I)Lcom/google/android/material/x/b$h;

    .line 717
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/material/x/a;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 718
    invoke-virtual {p1}, Lcom/google/android/material/x/a;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/x/b$h;->b(Ljava/lang/CharSequence;)Lcom/google/android/material/x/b$h;

    .line 720
    :cond_3
    invoke-virtual {p0, v0}, Lcom/google/android/material/x/b;->a(Lcom/google/android/material/x/b$h;)V

    return-void
.end method

.method private static b(II)Landroid/content/res/ColorStateList;
    .locals 4
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x2

    .line 3199
    new-array v1, v0, [[I

    .line 3200
    new-array v0, v0, [I

    .line 3203
    sget-object v2, Lcom/google/android/material/x/b;->SELECTED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput p1, v0, v3

    .line 3208
    sget-object p1, Lcom/google/android/material/x/b;->EMPTY_STATE_SET:[I

    const/4 v2, 0x1

    aput-object p1, v1, v2

    aput p0, v0, v2

    .line 3212
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method private b(Lcom/google/android/material/x/b$h;I)V
    .locals 1
    .param p1    # Lcom/google/android/material/x/b$h;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1477
    invoke-virtual {p1, p2}, Lcom/google/android/material/x/b$h;->b(I)V

    .line 1478
    iget-object v0, p0, Lcom/google/android/material/x/b;->U:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1480
    iget-object p1, p0, Lcom/google/android/material/x/b;->U:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/google/android/material/x/b;->U:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/x/b$h;

    invoke-virtual {v0, p2}, Lcom/google/android/material/x/b$h;->b(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 2

    .line 1640
    iget-object v0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/x/b$g;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/x/b$l;

    .line 1641
    iget-object v1, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {v1, p1}, Lcom/google/android/material/x/b$g;->removeViewAt(I)V

    if-eqz v0, :cond_0

    .line 1643
    invoke-virtual {v0}, Lcom/google/android/material/x/b$l;->a()V

    .line 1644
    iget-object p1, p0, Lcom/google/android/material/x/b;->an:Landroidx/core/m/h$a;

    invoke-interface {p1, v0}, Landroidx/core/m/h$a;->a(Ljava/lang/Object;)Z

    .line 1646
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->requestLayout()V

    return-void
.end method

.method private d(I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1654
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1655
    invoke-static {p0}, Landroidx/core/n/af;->ag(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    .line 1656
    invoke-virtual {v0}, Lcom/google/android/material/x/b$g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1663
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getScrollX()I

    move-result v0

    .line 1664
    invoke-direct {p0, p1, v2}, Lcom/google/android/material/x/b;->a(IF)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 1667
    invoke-direct {p0}, Lcom/google/android/material/x/b;->k()V

    .line 1669
    iget-object v3, p0, Lcom/google/android/material/x/b;->ah:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v2, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1670
    iget-object v0, p0, Lcom/google/android/material/x/b;->ah:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1674
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    iget p0, p0, Lcom/google/android/material/x/b;->E:I

    invoke-virtual {v0, p1, p0}, Lcom/google/android/material/x/b$g;->b(II)V

    return-void

    .line 1659
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lcom/google/android/material/x/b;->a(IFZ)V

    return-void
.end method

.method private e(Lcom/google/android/material/x/b$h;)Lcom/google/android/material/x/b$l;
    .locals 2
    .param p1    # Lcom/google/android/material/x/b$h;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1461
    iget-object v0, p0, Lcom/google/android/material/x/b;->an:Landroidx/core/m/h$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/x/b;->an:Landroidx/core/m/h$a;

    invoke-interface {v0}, Landroidx/core/m/h$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/x/b$l;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1463
    new-instance v0, Lcom/google/android/material/x/b$l;

    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/x/b$l;-><init>(Lcom/google/android/material/x/b;Landroid/content/Context;)V

    .line 1465
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/material/x/b$l;->setTab(Lcom/google/android/material/x/b$h;)V

    const/4 v1, 0x1

    .line 1466
    invoke-virtual {v0, v1}, Lcom/google/android/material/x/b$l;->setFocusable(Z)V

    .line 1467
    invoke-direct {p0}, Lcom/google/android/material/x/b;->getTabMinWidth()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/x/b$l;->setMinimumWidth(I)V

    .line 1468
    invoke-static {p1}, Lcom/google/android/material/x/b$h;->a(Lcom/google/android/material/x/b$h;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1469
    invoke-static {p1}, Lcom/google/android/material/x/b$h;->b(Lcom/google/android/material/x/b$h;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/x/b$l;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1471
    :cond_2
    invoke-static {p1}, Lcom/google/android/material/x/b$h;->a(Lcom/google/android/material/x/b$h;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/x/b$l;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-object v0
.end method

.method private e(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1835
    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b$g;->setGravity(I)V

    goto :goto_0

    :pswitch_1
    const-string p1, "TabLayout"

    const-string v0, "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead"

    .line 1838
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    :pswitch_2
    iget-object p0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    const p1, 0x800003

    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b$g;->setGravity(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private f(Lcom/google/android/material/x/b$h;)V
    .locals 2
    .param p1    # Lcom/google/android/material/x/b$h;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1487
    iget-object v0, p1, Lcom/google/android/material/x/b$h;->c:Lcom/google/android/material/x/b$l;

    const/4 v1, 0x0

    .line 1488
    invoke-virtual {v0, v1}, Lcom/google/android/material/x/b$l;->setSelected(Z)V

    .line 1489
    invoke-virtual {v0, v1}, Lcom/google/android/material/x/b$l;->setActivated(Z)V

    .line 1490
    iget-object v1, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {p1}, Lcom/google/android/material/x/b$h;->d()I

    move-result p1

    invoke-direct {p0}, Lcom/google/android/material/x/b;->j()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v1, v0, p1, p0}, Lcom/google/android/material/x/b$g;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private g(Lcom/google/android/material/x/b$h;)V
    .locals 2
    .param p1    # Lcom/google/android/material/x/b$h;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1766
    iget-object v0, p0, Lcom/google/android/material/x/b;->af:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1767
    iget-object v1, p0, Lcom/google/android/material/x/b;->af:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/x/b$b;

    invoke-interface {v1, p1}, Lcom/google/android/material/x/b$b;->a(Lcom/google/android/material/x/b$h;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getDefaultHeight()I
    .locals 5
    .annotation build Landroidx/annotation/p;
        a = 0x0
    .end annotation

    .line 3218
    iget-object v0, p0, Lcom/google/android/material/x/b;->U:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 3219
    iget-object v3, p0, Lcom/google/android/material/x/b;->U:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/x/b$h;

    if-eqz v3, :cond_0

    .line 3220
    invoke-virtual {v3}, Lcom/google/android/material/x/b$h;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/google/android/material/x/b$h;->e()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 3225
    iget-boolean p0, p0, Lcom/google/android/material/x/b;->H:Z

    if-nez p0, :cond_2

    const/16 p0, 0x48

    goto :goto_2

    :cond_2
    const/16 p0, 0x30

    :goto_2
    return p0
.end method

.method private getTabMinWidth()I
    .locals 2

    .line 3229
    iget v0, p0, Lcom/google/android/material/x/b;->aa:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 3231
    iget p0, p0, Lcom/google/android/material/x/b;->aa:I

    return p0

    .line 3234
    :cond_0
    iget v0, p0, Lcom/google/android/material/x/b;->G:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/material/x/b;->G:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iget p0, p0, Lcom/google/android/material/x/b;->ac:I

    :goto_1
    return p0
.end method

.method private getTabScrollRange()I
    .locals 2

    .line 1410
    iget-object v0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    .line 1411
    invoke-virtual {v0}, Lcom/google/android/material/x/b$g;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    .line 1410
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method private h(Lcom/google/android/material/x/b$h;)V
    .locals 2
    .param p1    # Lcom/google/android/material/x/b$h;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1772
    iget-object v0, p0, Lcom/google/android/material/x/b;->af:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1773
    iget-object v1, p0, Lcom/google/android/material/x/b;->af:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/x/b$b;

    invoke-interface {v1, p1}, Lcom/google/android/material/x/b$b;->b(Lcom/google/android/material/x/b$h;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    .line 1454
    iget-object v0, p0, Lcom/google/android/material/x/b;->U:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1455
    iget-object v2, p0, Lcom/google/android/material/x/b;->U:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/x/b$h;

    invoke-virtual {v2}, Lcom/google/android/material/x/b$h;->m()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private i(Lcom/google/android/material/x/b$h;)V
    .locals 2
    .param p1    # Lcom/google/android/material/x/b$h;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1778
    iget-object v0, p0, Lcom/google/android/material/x/b;->af:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1779
    iget-object v1, p0, Lcom/google/android/material/x/b;->af:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/x/b$b;

    invoke-interface {v1, p1}, Lcom/google/android/material/x/b$b;->c(Lcom/google/android/material/x/b$h;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private j()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1523
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1525
    invoke-direct {p0, v0}, Lcom/google/android/material/x/b;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method private k()V
    .locals 3

    .line 1678
    iget-object v0, p0, Lcom/google/android/material/x/b;->ah:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1679
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/x/b;->ah:Landroid/animation/ValueAnimator;

    .line 1680
    iget-object v0, p0, Lcom/google/android/material/x/b;->ah:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1681
    iget-object v0, p0, Lcom/google/android/material/x/b;->ah:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/google/android/material/x/b;->E:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1682
    iget-object v0, p0, Lcom/google/android/material/x/b;->ah:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/x/b$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/x/b$1;-><init>(Lcom/google/android/material/x/b;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 4

    .line 1807
    iget v0, p0, Lcom/google/android/material/x/b;->G:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/x/b;->G:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    .line 1809
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/material/x/b;->ad:I

    iget v3, p0, Lcom/google/android/material/x/b;->p:I

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1811
    :goto_1
    iget-object v3, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-static {v3, v0, v2, v2, v2}, Landroidx/core/n/af;->b(Landroid/view/View;IIII)V

    .line 1813
    iget v0, p0, Lcom/google/android/material/x/b;->G:I

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1816
    :pswitch_0
    iget v0, p0, Lcom/google/android/material/x/b;->D:I

    if-ne v0, v1, :cond_2

    const-string v0, "TabLayout"

    const-string v1, "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead"

    .line 1817
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {v0, v2}, Lcom/google/android/material/x/b$g;->setGravity(I)V

    goto :goto_2

    .line 1825
    :pswitch_1
    iget v0, p0, Lcom/google/android/material/x/b;->D:I

    invoke-direct {p0, v0}, Lcom/google/android/material/x/b;->e(I)V

    .line 1829
    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/android/material/x/b;->a(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setSelectedTabView(I)V
    .locals 6

    .line 1703
    iget-object v0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {v0}, Lcom/google/android/material/x/b$g;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1706
    iget-object v3, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {v3, v2}, Lcom/google/android/material/x/b$g;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, p1, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v1

    .line 1707
    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    if-ne v2, p1, :cond_1

    goto :goto_2

    :cond_1
    move v4, v1

    .line 1708
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/android/material/x/b$h;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    if-ltz p1, :cond_1

    .line 848
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/x/b;->U:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/x/b$h;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public a()V
    .locals 0

    .line 804
    iget-object p0, p0, Lcom/google/android/material/x/b;->af:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public a(IFZ)V
    .locals 1

    const/4 v0, 0x1

    .line 614
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/material/x/b;->a(IFZZ)V

    return-void
.end method

.method public a(IFZZ)V
    .locals 2

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 634
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_4

    .line 635
    iget-object v1, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {v1}, Lcom/google/android/material/x/b$g;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 641
    iget-object p4, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {p4, p1, p2}, Lcom/google/android/material/x/b$g;->a(IF)V

    .line 645
    :cond_1
    iget-object p4, p0, Lcom/google/android/material/x/b;->ah:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/google/android/material/x/b;->ah:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 646
    iget-object p4, p0, Lcom/google/android/material/x/b;->ah:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 648
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/x/b;->a(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/x/b;->scrollTo(II)V

    if-eqz p3, :cond_3

    .line 652
    invoke-direct {p0, v0}, Lcom/google/android/material/x/b;->setSelectedTabView(I)V

    :cond_3
    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 0

    .line 1149
    invoke-static {p1, p2}, Lcom/google/android/material/x/b;->b(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method a(Landroidx/l/a/a;Z)V
    .locals 2
    .param p1    # Landroidx/l/a/a;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1415
    iget-object v0, p0, Lcom/google/android/material/x/b;->ai:Landroidx/l/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/x/b;->aj:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/google/android/material/x/b;->ai:Landroidx/l/a/a;

    iget-object v1, p0, Lcom/google/android/material/x/b;->aj:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroidx/l/a/a;->b(Landroid/database/DataSetObserver;)V

    .line 1420
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/x/b;->ai:Landroidx/l/a/a;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1424
    iget-object p2, p0, Lcom/google/android/material/x/b;->aj:Landroid/database/DataSetObserver;

    if-nez p2, :cond_1

    .line 1425
    new-instance p2, Lcom/google/android/material/x/b$f;

    invoke-direct {p2, p0}, Lcom/google/android/material/x/b$f;-><init>(Lcom/google/android/material/x/b;)V

    iput-object p2, p0, Lcom/google/android/material/x/b;->aj:Landroid/database/DataSetObserver;

    .line 1427
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/x/b;->aj:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p2}, Landroidx/l/a/a;->a(Landroid/database/DataSetObserver;)V

    .line 1431
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->h()V

    return-void
.end method

.method public a(Landroidx/l/a/d;Z)V
    .locals 1
    .param p1    # Landroidx/l/a/d;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1303
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/x/b;->a(Landroidx/l/a/d;ZZ)V

    return-void
.end method

.method public a(Lcom/google/android/material/x/b$b;)V
    .locals 1
    .param p1    # Lcom/google/android/material/x/b$b;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 775
    iget-object v0, p0, Lcom/google/android/material/x/b;->af:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    iget-object p0, p0, Lcom/google/android/material/x/b;->af:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/material/x/b$e;)V
    .locals 0
    .param p1    # Lcom/google/android/material/x/b$e;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 760
    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b;->a(Lcom/google/android/material/x/b$b;)V

    return-void
.end method

.method public a(Lcom/google/android/material/x/b$h;)V
    .locals 1
    .param p1    # Lcom/google/android/material/x/b$h;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 663
    iget-object v0, p0, Lcom/google/android/material/x/b;->U:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/x/b;->a(Lcom/google/android/material/x/b$h;Z)V

    return-void
.end method

.method public a(Lcom/google/android/material/x/b$h;I)V
    .locals 1
    .param p1    # Lcom/google/android/material/x/b$h;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 674
    iget-object v0, p0, Lcom/google/android/material/x/b;->U:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/material/x/b;->a(Lcom/google/android/material/x/b$h;IZ)V

    return-void
.end method

.method public a(Lcom/google/android/material/x/b$h;IZ)V
    .locals 1
    .param p1    # Lcom/google/android/material/x/b$h;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 695
    iget-object v0, p1, Lcom/google/android/material/x/b$h;->b:Lcom/google/android/material/x/b;

    if-ne v0, p0, :cond_1

    .line 698
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/x/b;->b(Lcom/google/android/material/x/b$h;I)V

    .line 699
    invoke-direct {p0, p1}, Lcom/google/android/material/x/b;->f(Lcom/google/android/material/x/b$h;)V

    if-eqz p3, :cond_0

    .line 702
    invoke-virtual {p1}, Lcom/google/android/material/x/b$h;->j()V

    :cond_0
    return-void

    .line 696
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab belongs to a different TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Lcom/google/android/material/x/b$h;Z)V
    .locals 1
    .param p1    # Lcom/google/android/material/x/b$h;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 684
    iget-object v0, p0, Lcom/google/android/material/x/b;->U:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/material/x/b;->a(Lcom/google/android/material/x/b$h;IZ)V

    return-void
.end method

.method a(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1852
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {v1}, Lcom/google/android/material/x/b$g;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1853
    iget-object v1, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {v1, v0}, Lcom/google/android/material/x/b$g;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1854
    invoke-direct {p0}, Lcom/google/android/material/x/b;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1855
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lcom/google/android/material/x/b;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 1857
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 1495
    invoke-direct {p0, p1}, Lcom/google/android/material/x/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 1500
    invoke-direct {p0, p1}, Lcom/google/android/material/x/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1510
    invoke-direct {p0, p1}, Lcom/google/android/material/x/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1505
    invoke-direct {p0, p1}, Lcom/google/android/material/x/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public b()Lcom/google/android/material/x/b$h;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 816
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->c()Lcom/google/android/material/x/b$h;

    move-result-object v0

    .line 817
    iput-object p0, v0, Lcom/google/android/material/x/b$h;->b:Lcom/google/android/material/x/b;

    .line 818
    invoke-direct {p0, v0}, Lcom/google/android/material/x/b;->e(Lcom/google/android/material/x/b$h;)Lcom/google/android/material/x/b$l;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/material/x/b$h;->c:Lcom/google/android/material/x/b$l;

    return-object v0
.end method

.method public b(I)V
    .locals 5

    .line 881
    iget-object v0, p0, Lcom/google/android/material/x/b;->V:Lcom/google/android/material/x/b$h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/x/b;->V:Lcom/google/android/material/x/b$h;

    invoke-virtual {v0}, Lcom/google/android/material/x/b$h;->d()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 882
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/x/b;->c(I)V

    .line 884
    iget-object v2, p0, Lcom/google/android/material/x/b;->U:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/x/b$h;

    if-eqz v2, :cond_1

    .line 886
    invoke-virtual {v2}, Lcom/google/android/material/x/b$h;->n()V

    .line 887
    invoke-virtual {p0, v2}, Lcom/google/android/material/x/b;->b(Lcom/google/android/material/x/b$h;)Z

    .line 890
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/x/b;->U:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p1

    :goto_1
    if-ge v3, v2, :cond_2

    .line 892
    iget-object v4, p0, Lcom/google/android/material/x/b;->U:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/x/b$h;

    invoke-virtual {v4, v3}, Lcom/google/android/material/x/b$h;->b(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, p1, :cond_4

    .line 896
    iget-object v0, p0, Lcom/google/android/material/x/b;->U:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/material/x/b;->U:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/x/b$h;

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b;->d(Lcom/google/android/material/x/b$h;)V

    :cond_4
    return-void
.end method

.method public b(Lcom/google/android/material/x/b$b;)V
    .locals 0
    .param p1    # Lcom/google/android/material/x/b$b;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 799
    iget-object p0, p0, Lcom/google/android/material/x/b;->af:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/google/android/material/x/b$e;)V
    .locals 0
    .param p1    # Lcom/google/android/material/x/b$e;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 787
    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b;->b(Lcom/google/android/material/x/b$b;)V

    return-void
.end method

.method public b(Lcom/google/android/material/x/b$h;Z)V
    .locals 4
    .param p1    # Lcom/google/android/material/x/b$h;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1732
    iget-object v0, p0, Lcom/google/android/material/x/b;->V:Lcom/google/android/material/x/b$h;

    if-ne v0, p1, :cond_0

    if-eqz v0, :cond_6

    .line 1736
    invoke-direct {p0, p1}, Lcom/google/android/material/x/b;->i(Lcom/google/android/material/x/b$h;)V

    .line 1737
    invoke-virtual {p1}, Lcom/google/android/material/x/b$h;->d()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/x/b;->d(I)V

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 1740
    invoke-virtual {p1}, Lcom/google/android/material/x/b$h;->d()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz p2, :cond_4

    if-eqz v0, :cond_2

    .line 1742
    invoke-virtual {v0}, Lcom/google/android/material/x/b$h;->d()I

    move-result p2

    if-ne p2, v1, :cond_3

    :cond_2
    if-eq v2, v1, :cond_3

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 1745
    invoke-virtual {p0, v2, p2, v3}, Lcom/google/android/material/x/b;->a(IFZ)V

    goto :goto_1

    .line 1747
    :cond_3
    invoke-direct {p0, v2}, Lcom/google/android/material/x/b;->d(I)V

    :goto_1
    if-eq v2, v1, :cond_4

    .line 1750
    invoke-direct {p0, v2}, Lcom/google/android/material/x/b;->setSelectedTabView(I)V

    .line 1755
    :cond_4
    iput-object p1, p0, Lcom/google/android/material/x/b;->V:Lcom/google/android/material/x/b$h;

    if-eqz v0, :cond_5

    .line 1757
    invoke-direct {p0, v0}, Lcom/google/android/material/x/b;->h(Lcom/google/android/material/x/b$h;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 1760
    invoke-direct {p0, p1}, Lcom/google/android/material/x/b;->g(Lcom/google/android/material/x/b$h;)V

    :cond_6
    :goto_2
    return-void
.end method

.method protected b(Lcom/google/android/material/x/b$h;)Z
    .locals 0

    .line 833
    sget-object p0, Lcom/google/android/material/x/b;->S:Landroidx/core/m/h$a;

    invoke-interface {p0, p1}, Landroidx/core/m/h$a;->a(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected c()Lcom/google/android/material/x/b$h;
    .locals 0

    .line 824
    sget-object p0, Lcom/google/android/material/x/b;->S:Landroidx/core/m/h$a;

    invoke-interface {p0}, Landroidx/core/m/h$a;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/x/b$h;

    if-nez p0, :cond_0

    .line 826
    new-instance p0, Lcom/google/android/material/x/b$h;

    invoke-direct {p0}, Lcom/google/android/material/x/b$h;-><init>()V

    :cond_0
    return-object p0
.end method

.method public c(Lcom/google/android/material/x/b$h;)V
    .locals 1
    .param p1    # Lcom/google/android/material/x/b$h;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 867
    iget-object v0, p1, Lcom/google/android/material/x/b$h;->b:Lcom/google/android/material/x/b;

    if-ne v0, p0, :cond_0

    .line 871
    invoke-virtual {p1}, Lcom/google/android/material/x/b$h;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b;->b(I)V

    return-void

    .line 868
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tab does not belong to this TabLayout."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d()V
    .locals 2

    .line 903
    iget-object v0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {v0}, Lcom/google/android/material/x/b$g;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 904
    invoke-direct {p0, v0}, Lcom/google/android/material/x/b;->c(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/x/b;->U:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 908
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/x/b$h;

    .line 909
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 910
    invoke-virtual {v1}, Lcom/google/android/material/x/b$h;->n()V

    .line 911
    invoke-virtual {p0, v1}, Lcom/google/android/material/x/b;->b(Lcom/google/android/material/x/b$h;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 914
    iput-object v0, p0, Lcom/google/android/material/x/b;->V:Lcom/google/android/material/x/b$h;

    return-void
.end method

.method public d(Lcom/google/android/material/x/b$h;)V
    .locals 1
    .param p1    # Lcom/google/android/material/x/b$h;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1720
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/x/b;->b(Lcom/google/android/material/x/b$h;Z)V

    return-void
.end method

.method public e()Z
    .locals 0

    .line 1034
    iget-boolean p0, p0, Lcom/google/android/material/x/b;->I:Z

    return p0
.end method

.method public f()Z
    .locals 0

    .line 1077
    iget-boolean p0, p0, Lcom/google/android/material/x/b;->H:Z

    return p0
.end method

.method public g()Z
    .locals 0

    .line 1121
    iget-boolean p0, p0, Lcom/google/android/material/x/b;->J:Z

    return p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 177
    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 3243
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/google/android/material/x/b;->V:Lcom/google/android/material/x/b$h;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/x/b;->V:Lcom/google/android/material/x/b$h;

    invoke-virtual {p0}, Lcom/google/android/material/x/b$h;->d()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getTabCount()I
    .locals 0

    .line 842
    iget-object p0, p0, Lcom/google/android/material/x/b;->U:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getTabGravity()I
    .locals 0

    .line 969
    iget p0, p0, Lcom/google/android/material/x/b;->D:I

    return p0
.end method

.method public getTabIconTint()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1177
    iget-object p0, p0, Lcom/google/android/material/x/b;->v:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTabIndicatorGravity()I
    .locals 0

    .line 1002
    iget p0, p0, Lcom/google/android/material/x/b;->F:I

    return p0
.end method

.method getTabMaxWidth()I
    .locals 0

    .line 3247
    iget p0, p0, Lcom/google/android/material/x/b;->C:I

    return p0
.end method

.method public getTabMode()I
    .locals 0

    .line 946
    iget p0, p0, Lcom/google/android/material/x/b;->G:I

    return p0
.end method

.method public getTabRippleColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1188
    iget-object p0, p0, Lcom/google/android/material/x/b;->w:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTabSelectedIndicator()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1235
    iget-object p0, p0, Lcom/google/android/material/x/b;->x:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1139
    iget-object p0, p0, Lcom/google/android/material/x/b;->u:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method h()V
    .locals 5

    .line 1435
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->d()V

    .line 1437
    iget-object v0, p0, Lcom/google/android/material/x/b;->ai:Landroidx/l/a/a;

    if-eqz v0, :cond_1

    .line 1438
    iget-object v0, p0, Lcom/google/android/material/x/b;->ai:Landroidx/l/a/a;

    invoke-virtual {v0}, Landroidx/l/a/a;->b()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1440
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->b()Lcom/google/android/material/x/b$h;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/material/x/b;->ai:Landroidx/l/a/a;

    invoke-virtual {v4, v2}, Landroidx/l/a/a;->c(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/x/b$h;->a(Ljava/lang/CharSequence;)Lcom/google/android/material/x/b$h;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lcom/google/android/material/x/b;->a(Lcom/google/android/material/x/b$h;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1444
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/x/b;->K:Landroidx/l/a/d;

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 1445
    iget-object v0, p0, Lcom/google/android/material/x/b;->K:Landroidx/l/a/d;

    invoke-virtual {v0}, Landroidx/l/a/d;->getCurrentItem()I

    move-result v0

    .line 1446
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1447
    invoke-virtual {p0, v0}, Lcom/google/android/material/x/b;->a(I)Lcom/google/android/material/x/b$h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/x/b;->d(Lcom/google/android/material/x/b$h;)V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1382
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 1384
    invoke-static {p0}, Lcom/google/android/material/t/k;->a(Landroid/view/View;)V

    .line 1386
    iget-object v0, p0, Lcom/google/android/material/x/b;->K:Landroidx/l/a/d;

    if-nez v0, :cond_0

    .line 1389
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1390
    instance-of v1, v0, Landroidx/l/a/d;

    if-eqz v1, :cond_0

    .line 1393
    check-cast v0, Landroidx/l/a/d;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/google/android/material/x/b;->a(Landroidx/l/a/d;ZZ)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1400
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 1402
    iget-boolean v0, p0, Lcom/google/android/material/x/b;->am:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1404
    invoke-virtual {p0, v0}, Lcom/google/android/material/x/b;->setupWithViewPager(Landroidx/l/a/d;)V

    const/4 v0, 0x0

    .line 1405
    iput-boolean v0, p0, Lcom/google/android/material/x/b;->am:Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1562
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {v1}, Lcom/google/android/material/x/b$g;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1563
    iget-object v1, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {v1, v0}, Lcom/google/android/material/x/b$g;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1564
    instance-of v2, v1, Lcom/google/android/material/x/b$l;

    if-eqz v2, :cond_0

    .line 1565
    check-cast v1, Lcom/google/android/material/x/b$l;

    invoke-static {v1, p1}, Lcom/google/android/material/x/b$l;->a(Lcom/google/android/material/x/b$l;Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1569
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1549
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1550
    invoke-static {p1}, Landroidx/core/n/a/d;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/n/a/d;

    move-result-object p1

    .line 1554
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getTabCount()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1552
    invoke-static {v0, p0, v1, v0}, Landroidx/core/n/a/d$b;->a(IIZI)Landroidx/core/n/a/d$b;

    move-result-object p0

    .line 1551
    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1576
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/material/x/b;->getDefaultHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/material/internal/z;->a(Landroid/content/Context;I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1577
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1586
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getPaddingTop()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getPaddingBottom()I

    move-result p2

    add-int/2addr v0, p2

    .line 1585
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 1579
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getChildCount()I

    move-result v1

    if-ne v1, v4, :cond_2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-lt v1, v0, :cond_2

    .line 1580
    invoke-virtual {p0, v5}, Lcom/google/android/material/x/b;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1592
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1593
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 1596
    iget v1, p0, Lcom/google/android/material/x/b;->ab:I

    if-lez v1, :cond_3

    iget v0, p0, Lcom/google/android/material/x/b;->ab:I

    goto :goto_1

    :cond_3
    int-to-float v0, v0

    .line 1599
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v1, v2}, Lcom/google/android/material/internal/z;->a(Landroid/content/Context;I)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    :goto_1
    iput v0, p0, Lcom/google/android/material/x/b;->C:I

    .line 1603
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 1605
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getChildCount()I

    move-result p1

    if-ne p1, v4, :cond_6

    .line 1608
    invoke-virtual {p0, v5}, Lcom/google/android/material/x/b;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1611
    iget v0, p0, Lcom/google/android/material/x/b;->G:I

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 1620
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_5

    :goto_2
    move v5, v4

    goto :goto_3

    .line 1616
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getMeasuredWidth()I

    move-result v1

    if-ge v0, v1, :cond_5

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    .line 1629
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1630
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1627
    invoke-static {p2, v0, v1}, Lcom/google/android/material/x/b;->getChildMeasureSpec(III)I

    move-result p2

    .line 1633
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getMeasuredWidth()I

    move-result p0

    invoke-static {p0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    .line 1634
    invoke-virtual {p1, p0, p2}, Landroid/view/View;->measure(II)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setElevation(F)V
    .locals 0
    .annotation build Landroidx/annotation/am;
        a = 0x15
    .end annotation

    .line 1542
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->setElevation(F)V

    .line 1544
    invoke-static {p0, p1}, Lcom/google/android/material/t/k;->a(Landroid/view/View;F)V

    return-void
.end method

.method public setInlineLabel(Z)V
    .locals 2

    .line 1045
    iget-boolean v0, p0, Lcom/google/android/material/x/b;->H:Z

    if-eq v0, p1, :cond_2

    .line 1046
    iput-boolean p1, p0, Lcom/google/android/material/x/b;->H:Z

    const/4 p1, 0x0

    .line 1047
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {v0}, Lcom/google/android/material/x/b$g;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1048
    iget-object v0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/x/b$g;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1049
    instance-of v1, v0, Lcom/google/android/material/x/b$l;

    if-eqz v1, :cond_0

    .line 1050
    check-cast v0, Lcom/google/android/material/x/b$l;

    invoke-virtual {v0}, Lcom/google/android/material/x/b$l;->c()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1053
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/x/b;->l()V

    :cond_2
    return-void
.end method

.method public setInlineLabelResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/h;
        .end annotation
    .end param

    .line 1066
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b;->setInlineLabel(Z)V

    return-void
.end method

.method public setOnTabSelectedListener(Lcom/google/android/material/x/b$b;)V
    .locals 1
    .param p1    # Lcom/google/android/material/x/b$b;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/google/android/material/x/b;->ae:Lcom/google/android/material/x/b$b;

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/google/android/material/x/b;->ae:Lcom/google/android/material/x/b$b;

    invoke-virtual {p0, v0}, Lcom/google/android/material/x/b;->b(Lcom/google/android/material/x/b$b;)V

    .line 745
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/x/b;->ae:Lcom/google/android/material/x/b$b;

    if-eqz p1, :cond_1

    .line 747
    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b;->a(Lcom/google/android/material/x/b$b;)V

    :cond_1
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/google/android/material/x/b$e;)V
    .locals 0
    .param p1    # Lcom/google/android/material/x/b$e;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 729
    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b;->setOnTabSelectedListener(Lcom/google/android/material/x/b$b;)V

    return-void
.end method

.method setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 1693
    invoke-direct {p0}, Lcom/google/android/material/x/b;->k()V

    .line 1694
    iget-object p0, p0, Lcom/google/android/material/x/b;->ah:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setSelectedTabIndicator(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1268
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1267
    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1270
    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1249
    iget-object v0, p0, Lcom/google/android/material/x/b;->x:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 1250
    iput-object p1, p0, Lcom/google/android/material/x/b;->x:Landroid/graphics/drawable/Drawable;

    .line 1251
    iget-object p0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-static {p0}, Landroidx/core/n/af;->h(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 586
    iget-object p0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b$g;->a(I)V

    return-void
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .locals 1

    .line 987
    iget v0, p0, Lcom/google/android/material/x/b;->F:I

    if-eq v0, p1, :cond_0

    .line 988
    iput p1, p0, Lcom/google/android/material/x/b;->F:I

    .line 989
    iget-object p0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-static {p0}, Landroidx/core/n/af;->h(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 599
    iget-object p0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b$g;->b(I)V

    return-void
.end method

.method public setTabGravity(I)V
    .locals 1

    .line 956
    iget v0, p0, Lcom/google/android/material/x/b;->D:I

    if-eq v0, p1, :cond_0

    .line 957
    iput p1, p0, Lcom/google/android/material/x/b;->D:I

    .line 958
    invoke-direct {p0}, Lcom/google/android/material/x/b;->l()V

    :cond_0
    return-void
.end method

.method public setTabIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1158
    iget-object v0, p0, Lcom/google/android/material/x/b;->v:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1159
    iput-object p1, p0, Lcom/google/android/material/x/b;->v:Landroid/content/res/ColorStateList;

    .line 1160
    invoke-direct {p0}, Lcom/google/android/material/x/b;->i()V

    :cond_0
    return-void
.end method

.method public setTabIconTintResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/m;
        .end annotation
    .end param

    .line 1171
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b;->setTabIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabIndicatorFullWidth(Z)V
    .locals 0

    .line 1021
    iput-boolean p1, p0, Lcom/google/android/material/x/b;->I:Z

    .line 1022
    iget-object p0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-static {p0}, Landroidx/core/n/af;->h(Landroid/view/View;)V

    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    .line 933
    iget v0, p0, Lcom/google/android/material/x/b;->G:I

    if-eq p1, v0, :cond_0

    .line 934
    iput p1, p0, Lcom/google/android/material/x/b;->G:I

    .line 935
    invoke-direct {p0}, Lcom/google/android/material/x/b;->l()V

    :cond_0
    return-void
.end method

.method public setTabRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1202
    iget-object v0, p0, Lcom/google/android/material/x/b;->w:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1203
    iput-object p1, p0, Lcom/google/android/material/x/b;->w:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 1204
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {v0}, Lcom/google/android/material/x/b$g;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1205
    iget-object v0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/x/b$g;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1206
    instance-of v1, v0, Lcom/google/android/material/x/b$l;

    if-eqz v1, :cond_0

    .line 1207
    check-cast v0, Lcom/google/android/material/x/b$l;

    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/x/b$l;->a(Lcom/google/android/material/x/b$l;Landroid/content/Context;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTabRippleColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/m;
        .end annotation
    .end param

    .line 1223
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1130
    iget-object v0, p0, Lcom/google/android/material/x/b;->u:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1131
    iput-object p1, p0, Lcom/google/android/material/x/b;->u:Landroid/content/res/ColorStateList;

    .line 1132
    invoke-direct {p0}, Lcom/google/android/material/x/b;->i()V

    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroidx/l/a/a;)V
    .locals 1
    .param p1    # Landroidx/l/a/a;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1371
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/x/b;->a(Landroidx/l/a/a;Z)V

    return-void
.end method

.method public setUnboundedRipple(Z)V
    .locals 2

    .line 1090
    iget-boolean v0, p0, Lcom/google/android/material/x/b;->J:Z

    if-eq v0, p1, :cond_1

    .line 1091
    iput-boolean p1, p0, Lcom/google/android/material/x/b;->J:Z

    const/4 p1, 0x0

    .line 1092
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {v0}, Lcom/google/android/material/x/b$g;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1093
    iget-object v0, p0, Lcom/google/android/material/x/b;->o:Lcom/google/android/material/x/b$g;

    invoke-virtual {v0, p1}, Lcom/google/android/material/x/b$g;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1094
    instance-of v1, v0, Lcom/google/android/material/x/b$l;

    if-eqz v1, :cond_0

    .line 1095
    check-cast v0, Lcom/google/android/material/x/b$l;

    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/material/x/b$l;->a(Lcom/google/android/material/x/b$l;Landroid/content/Context;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUnboundedRippleResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/h;
        .end annotation
    .end param

    .line 1110
    invoke-virtual {p0}, Lcom/google/android/material/x/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b;->setUnboundedRipple(Z)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/l/a/d;)V
    .locals 1
    .param p1    # Landroidx/l/a/d;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1283
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/x/b;->a(Landroidx/l/a/d;Z)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 0

    .line 1377
    invoke-direct {p0}, Lcom/google/android/material/x/b;->getTabScrollRange()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
