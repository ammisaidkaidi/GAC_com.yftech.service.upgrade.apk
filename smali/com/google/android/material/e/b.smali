.class Lcom/google/android/material/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:I = -0x1

.field private static final c:D

.field private static final d:F = 1.5f

.field private static final e:I = 0x2


# instance fields
.field private final f:Lcom/google/android/material/e/a;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final g:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final h:Lcom/google/android/material/t/j;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final i:Lcom/google/android/material/t/j;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final j:I
    .annotation build Landroidx/annotation/p;
    .end annotation
.end field

.field private final k:I
    .annotation build Landroidx/annotation/p;
    .end annotation
.end field

.field private l:I
    .annotation build Landroidx/annotation/p;
    .end annotation
.end field

.field private m:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private n:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private o:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private p:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private q:Lcom/google/android/material/t/o;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private r:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private s:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private t:Landroid/graphics/drawable/LayerDrawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private u:Lcom/google/android/material/t/j;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private v:Lcom/google/android/material/t/j;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private w:Z

.field private x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 62
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/e/b;->a:[I

    const-wide v0, 0x4046800000000000L    # 45.0

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/e/b;->c:D

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/e/a;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1    # Lcom/google/android/material/e/a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/e/b;->g:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/google/android/material/e/b;->w:Z

    .line 124
    iput-object p1, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    .line 125
    new-instance v0, Lcom/google/android/material/t/j;

    invoke-virtual {p1}, Lcom/google/android/material/e/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/google/android/material/t/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    .line 126
    iget-object p4, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    invoke-virtual {p1}, Lcom/google/android/material/e/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/android/material/t/j;->b(Landroid/content/Context;)V

    .line 127
    iget-object p4, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    const v0, -0xbbbbbc

    invoke-virtual {p4, v0}, Lcom/google/android/material/t/j;->O(I)V

    .line 128
    iget-object p4, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    .line 129
    invoke-virtual {p4}, Lcom/google/android/material/t/j;->getShapeAppearanceModel()Lcom/google/android/material/t/o;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/material/t/o;->n()Lcom/google/android/material/t/o$a;

    move-result-object p4

    .line 132
    invoke-virtual {p1}, Lcom/google/android/material/e/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/material/a$o;->CardView:[I

    sget v2, Lcom/google/android/material/a$n;->CardView:I

    .line 133
    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 134
    sget p3, Lcom/google/android/material/a$o;->CardView_cardCornerRadius:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 136
    sget p3, Lcom/google/android/material/a$o;->CardView_cardCornerRadius:I

    const/4 v0, 0x0

    .line 137
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    .line 136
    invoke-virtual {p4, p3}, Lcom/google/android/material/t/o$a;->a(F)Lcom/google/android/material/t/o$a;

    .line 140
    :cond_0
    new-instance p3, Lcom/google/android/material/t/j;

    invoke-direct {p3}, Lcom/google/android/material/t/j;-><init>()V

    iput-object p3, p0, Lcom/google/android/material/e/b;->i:Lcom/google/android/material/t/j;

    .line 141
    invoke-virtual {p4}, Lcom/google/android/material/t/o$a;->a()Lcom/google/android/material/t/o;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/e/b;->a(Lcom/google/android/material/t/o;)V

    .line 143
    invoke-virtual {p1}, Lcom/google/android/material/e/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 145
    sget p3, Lcom/google/android/material/a$f;->mtrl_card_checked_icon_margin:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/e/b;->j:I

    .line 146
    sget p3, Lcom/google/android/material/a$f;->mtrl_card_checked_icon_size:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/e/b;->k:I

    .line 148
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private A()Z
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    invoke-virtual {v0}, Lcom/google/android/material/e/a;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    invoke-direct {p0}, Lcom/google/android/material/e/b;->x()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    .line 553
    invoke-virtual {p0}, Lcom/google/android/material/e/a;->getUseCompatPadding()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private B()F
    .locals 4

    .line 565
    iget-object v0, p0, Lcom/google/android/material/e/b;->q:Lcom/google/android/material/t/o;

    .line 568
    invoke-virtual {v0}, Lcom/google/android/material/t/o;->b()Lcom/google/android/material/t/e;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    invoke-virtual {v1}, Lcom/google/android/material/t/j;->as()F

    move-result v1

    .line 567
    invoke-direct {p0, v0, v1}, Lcom/google/android/material/e/b;->a(Lcom/google/android/material/t/e;F)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/e/b;->q:Lcom/google/android/material/t/o;

    .line 570
    invoke-virtual {v1}, Lcom/google/android/material/t/o;->c()Lcom/google/android/material/t/e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    .line 571
    invoke-virtual {v2}, Lcom/google/android/material/t/j;->at()F

    move-result v2

    .line 569
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/e/b;->a(Lcom/google/android/material/t/e;F)F

    move-result v1

    .line 566
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/e/b;->q:Lcom/google/android/material/t/o;

    .line 574
    invoke-virtual {v1}, Lcom/google/android/material/t/o;->d()Lcom/google/android/material/t/e;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    .line 575
    invoke-virtual {v2}, Lcom/google/android/material/t/j;->av()F

    move-result v2

    .line 573
    invoke-direct {p0, v1, v2}, Lcom/google/android/material/e/b;->a(Lcom/google/android/material/t/e;F)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/e/b;->q:Lcom/google/android/material/t/o;

    .line 577
    invoke-virtual {v2}, Lcom/google/android/material/t/o;->e()Lcom/google/android/material/t/e;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    .line 578
    invoke-virtual {v3}, Lcom/google/android/material/t/j;->au()F

    move-result v3

    .line 576
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/e/b;->a(Lcom/google/android/material/t/e;F)F

    move-result p0

    .line 572
    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 565
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private C()Landroid/graphics/drawable/Drawable;
    .locals 5
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/google/android/material/e/b;->s:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 593
    invoke-direct {p0}, Lcom/google/android/material/e/b;->D()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/e/b;->s:Landroid/graphics/drawable/Drawable;

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/e/b;->t:Landroid/graphics/drawable/LayerDrawable;

    if-nez v0, :cond_1

    .line 597
    invoke-direct {p0}, Lcom/google/android/material/e/b;->G()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 598
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/material/e/b;->s:Landroid/graphics/drawable/Drawable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/material/e/b;->i:Lcom/google/android/material/t/j;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v1, p0, Lcom/google/android/material/e/b;->t:Landroid/graphics/drawable/LayerDrawable;

    .line 601
    iget-object v0, p0, Lcom/google/android/material/e/b;->t:Landroid/graphics/drawable/LayerDrawable;

    sget v1, Lcom/google/android/material/a$h;->mtrl_card_checked_layer_id:I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 604
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/e/b;->t:Landroid/graphics/drawable/LayerDrawable;

    return-object p0
.end method

.method private D()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 609
    sget-boolean v0, Lcom/google/android/material/r/b;->a:Z

    if-eqz v0, :cond_0

    .line 610
    invoke-direct {p0}, Lcom/google/android/material/e/b;->H()Lcom/google/android/material/t/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/e/b;->v:Lcom/google/android/material/t/j;

    .line 612
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/e/b;->o:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/google/android/material/e/b;->v:Lcom/google/android/material/t/j;

    invoke-direct {v0, v1, v2, p0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    .line 615
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/e/b;->E()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private E()Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 620
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 621
    invoke-direct {p0}, Lcom/google/android/material/e/b;->H()Lcom/google/android/material/t/j;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/e/b;->u:Lcom/google/android/material/t/j;

    .line 622
    iget-object v1, p0, Lcom/google/android/material/e/b;->u:Lcom/google/android/material/t/j;

    iget-object v2, p0, Lcom/google/android/material/e/b;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/google/android/material/t/j;->g(Landroid/content/res/ColorStateList;)V

    const/4 v1, 0x1

    .line 623
    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a7

    aput v3, v1, v2

    iget-object p0, p0, Lcom/google/android/material/e/b;->u:Lcom/google/android/material/t/j;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private F()V
    .locals 1

    .line 629
    sget-boolean v0, Lcom/google/android/material/r/b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/e/b;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/google/android/material/e/b;->s:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object p0, p0, Lcom/google/android/material/e/b;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/e/b;->u:Lcom/google/android/material/t/j;

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/google/android/material/e/b;->u:Lcom/google/android/material/t/j;

    iget-object p0, p0, Lcom/google/android/material/e/b;->o:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p0}, Lcom/google/android/material/t/j;->g(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private G()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 638
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 639
    iget-object v1, p0, Lcom/google/android/material/e/b;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 640
    sget-object v1, Lcom/google/android/material/e/b;->a:[I

    iget-object p0, p0, Lcom/google/android/material/e/b;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object v0
.end method

.method private H()Lcom/google/android/material/t/j;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 647
    new-instance v0, Lcom/google/android/material/t/j;

    iget-object p0, p0, Lcom/google/android/material/e/b;->q:Lcom/google/android/material/t/o;

    invoke-direct {v0, p0}, Lcom/google/android/material/t/j;-><init>(Lcom/google/android/material/t/o;)V

    return-object v0
.end method

.method private a(Lcom/google/android/material/t/e;F)F
    .locals 2

    .line 582
    instance-of p0, p1, Lcom/google/android/material/t/n;

    if-eqz p0, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    .line 583
    sget-wide v0, Lcom/google/android/material/e/b;->c:D

    sub-double/2addr p0, v0

    float-to-double v0, p2

    mul-double/2addr p0, v0

    double-to-float p0, p0

    return p0

    .line 584
    :cond_0
    instance-of p0, p1, Lcom/google/android/material/t/f;

    if-eqz p0, :cond_1

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p2, p0

    return p2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 463
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    .line 464
    invoke-virtual {v0}, Lcom/google/android/material/e/a;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_0

    .line 465
    iget-object p0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    invoke-virtual {p0}, Lcom/google/android/material/e/a;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    invoke-direct {p0, p1}, Lcom/google/android/material/e/b;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/e/a;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 485
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    invoke-virtual {v0}, Lcom/google/android/material/e/a;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v7, v1

    move v8, v7

    goto :goto_2

    .line 488
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/google/android/material/e/b;->v()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    .line 489
    invoke-direct {p0}, Lcom/google/android/material/e/b;->w()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    move v7, v0

    move v8, v1

    .line 491
    :goto_2
    new-instance v0, Lcom/google/android/material/e/b$1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, v7

    move v6, v8

    invoke-direct/range {v2 .. v8}, Lcom/google/android/material/e/b$1;-><init>(Lcom/google/android/material/e/b;Landroid/graphics/drawable/Drawable;IIII)V

    return-object v0
.end method

.method private v()F
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    invoke-virtual {v0}, Lcom/google/android/material/e/a;->getMaxCardElevation()F

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    .line 521
    invoke-direct {p0}, Lcom/google/android/material/e/b;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/e/b;->B()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-float/2addr v0, p0

    return v0
.end method

.method private w()F
    .locals 2

    .line 530
    iget-object v0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    invoke-virtual {v0}, Lcom/google/android/material/e/a;->getMaxCardElevation()F

    move-result v0

    .line 531
    invoke-direct {p0}, Lcom/google/android/material/e/b;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/e/b;->B()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-float/2addr v0, p0

    return v0
.end method

.method private x()Z
    .locals 2

    .line 535
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->aw()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private y()F
    .locals 4

    .line 539
    iget-object v0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    invoke-virtual {v0}, Lcom/google/android/material/e/a;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    .line 540
    invoke-virtual {v0}, Lcom/google/android/material/e/a;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 541
    sget-wide v2, Lcom/google/android/material/e/b;->c:D

    sub-double/2addr v0, v2

    iget-object p0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    invoke-virtual {p0}, Lcom/google/android/material/e/a;->getCardViewRadius()F

    move-result p0

    float-to-double v2, p0

    mul-double/2addr v0, v2

    double-to-float p0, v0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private z()Z
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    invoke-virtual {v0}, Lcom/google/android/material/e/a;->getPreventCornerOverlap()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/e/b;->x()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method a(F)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/google/android/material/e/b;->q:Lcom/google/android/material/t/o;

    invoke-virtual {v0, p1}, Lcom/google/android/material/t/o;->a(F)Lcom/google/android/material/t/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/e/b;->a(Lcom/google/android/material/t/o;)V

    .line 279
    iget-object p1, p0, Lcom/google/android/material/e/b;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 280
    invoke-direct {p0}, Lcom/google/android/material/e/b;->A()Z

    move-result p1

    if-nez p1, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/google/android/material/e/b;->z()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 282
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/e/b;->o()V

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/e/b;->A()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 286
    invoke-virtual {p0}, Lcom/google/android/material/e/b;->m()V

    :cond_2
    return-void
.end method

.method a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param

    .line 224
    iget v0, p0, Lcom/google/android/material/e/b;->l:I

    if-ne p1, v0, :cond_0

    return-void

    .line 227
    :cond_0
    iput p1, p0, Lcom/google/android/material/e/b;->l:I

    .line 228
    invoke-virtual {p0}, Lcom/google/android/material/e/b;->n()V

    return-void
.end method

.method a(II)V
    .locals 9

    .line 401
    iget-object v0, p0, Lcom/google/android/material/e/b;->t:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_4

    .line 402
    iget v0, p0, Lcom/google/android/material/e/b;->j:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/e/b;->k:I

    sub-int/2addr p1, v0

    .line 403
    iget v0, p0, Lcom/google/android/material/e/b;->j:I

    sub-int/2addr p2, v0

    iget v0, p0, Lcom/google/android/material/e/b;->k:I

    sub-int/2addr p2, v0

    .line 404
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    invoke-virtual {v0}, Lcom/google/android/material/e/a;->getUseCompatPadding()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    move v8, p2

    goto :goto_3

    .line 406
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/e/b;->v()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    sub-int/2addr p2, v0

    .line 407
    invoke-direct {p0}, Lcom/google/android/material/e/b;->w()F

    move-result v0

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sub-int/2addr p1, v0

    goto :goto_1

    .line 410
    :goto_3
    iget p2, p0, Lcom/google/android/material/e/b;->j:I

    .line 411
    iget-object v0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    invoke-static {v0}, Landroidx/core/n/af;->p(Landroid/view/View;)I

    move-result v0

    if-ne v0, v2, :cond_3

    move v7, p1

    move v5, p2

    goto :goto_4

    :cond_3
    move v5, p1

    move v7, p2

    .line 418
    :goto_4
    iget-object v3, p0, Lcom/google/android/material/e/b;->t:Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    iget v6, p0, Lcom/google/android/material/e/b;->j:I

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :cond_4
    return-void
.end method

.method a(IIII)V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/google/android/material/e/b;->g:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 260
    invoke-virtual {p0}, Lcom/google/android/material/e/b;->o()V

    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/google/android/material/e/b;->r:Landroid/content/res/ColorStateList;

    if-ne v0, p1, :cond_0

    return-void

    .line 209
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/e/b;->r:Landroid/content/res/ColorStateList;

    .line 210
    invoke-virtual {p0}, Lcom/google/android/material/e/b;->n()V

    return-void
.end method

.method a(Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 152
    iget-object v0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    .line 153
    invoke-virtual {v0}, Lcom/google/android/material/e/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$o;->MaterialCardView_strokeColor:I

    .line 152
    invoke-static {v0, p1, v1}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/e/b;->r:Landroid/content/res/ColorStateList;

    .line 156
    iget-object v0, p0, Lcom/google/android/material/e/b;->r:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 157
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/e/b;->r:Landroid/content/res/ColorStateList;

    .line 160
    :cond_0
    sget v0, Lcom/google/android/material/a$o;->MaterialCardView_strokeWidth:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/e/b;->l:I

    .line 161
    sget v0, Lcom/google/android/material/a$o;->MaterialCardView_android_checkable:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/e/b;->x:Z

    .line 162
    iget-object v0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    iget-boolean v1, p0, Lcom/google/android/material/e/b;->x:Z

    invoke-virtual {v0, v1}, Lcom/google/android/material/e/a;->setLongClickable(Z)V

    .line 163
    iget-object v0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    .line 164
    invoke-virtual {v0}, Lcom/google/android/material/e/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$o;->MaterialCardView_checkedIconTint:I

    .line 163
    invoke-static {v0, p1, v1}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/e/b;->p:Landroid/content/res/ColorStateList;

    .line 165
    iget-object v0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    .line 167
    invoke-virtual {v0}, Lcom/google/android/material/e/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$o;->MaterialCardView_checkedIcon:I

    .line 166
    invoke-static {v0, p1, v1}, Lcom/google/android/material/q/c;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 165
    invoke-virtual {p0, v0}, Lcom/google/android/material/e/b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    .line 171
    invoke-virtual {v0}, Lcom/google/android/material/e/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$o;->MaterialCardView_rippleColor:I

    .line 170
    invoke-static {v0, p1, v1}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/e/b;->o:Landroid/content/res/ColorStateList;

    .line 172
    iget-object v0, p0, Lcom/google/android/material/e/b;->o:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    sget v1, Lcom/google/android/material/a$c;->colorControlHighlight:I

    .line 175
    invoke-static {v0, v1}, Lcom/google/android/material/h/a;->a(Landroid/view/View;I)I

    move-result v0

    .line 174
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/e/b;->o:Landroid/content/res/ColorStateList;

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    .line 180
    invoke-virtual {v0}, Lcom/google/android/material/e/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$o;->MaterialCardView_cardForegroundColor:I

    .line 179
    invoke-static {v0, p1, v1}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 184
    invoke-virtual {p0, p1}, Lcom/google/android/material/e/b;->c(Landroid/content/res/ColorStateList;)V

    .line 186
    invoke-direct {p0}, Lcom/google/android/material/e/b;->F()V

    .line 187
    invoke-virtual {p0}, Lcom/google/android/material/e/b;->l()V

    .line 188
    invoke-virtual {p0}, Lcom/google/android/material/e/b;->n()V

    .line 190
    iget-object p1, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    iget-object v0, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    invoke-direct {p0, v0}, Lcom/google/android/material/e/b;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/e/a;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object p1, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    .line 192
    invoke-virtual {p1}, Lcom/google/android/material/e/a;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/material/e/b;->C()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/e/b;->i:Lcom/google/android/material/t/j;

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/e/b;->m:Landroid/graphics/drawable/Drawable;

    .line 193
    iget-object p1, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    iget-object v0, p0, Lcom/google/android/material/e/b;->m:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/e/b;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/e/a;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 387
    iput-object p1, p0, Lcom/google/android/material/e/b;->n:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 389
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/e/b;->n:Landroid/graphics/drawable/Drawable;

    .line 390
    iget-object p1, p0, Lcom/google/android/material/e/b;->n:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/material/e/b;->p:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 393
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/e/b;->t:Landroid/graphics/drawable/LayerDrawable;

    if-eqz p1, :cond_1

    .line 394
    invoke-direct {p0}, Lcom/google/android/material/e/b;->G()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 395
    iget-object p0, p0, Lcom/google/android/material/e/b;->t:Landroid/graphics/drawable/LayerDrawable;

    sget v0, Lcom/google/android/material/a$h;->mtrl_card_checked_layer_id:I

    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :cond_1
    return-void
.end method

.method a(Lcom/google/android/material/t/o;)V
    .locals 2
    .param p1    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 437
    iput-object p1, p0, Lcom/google/android/material/e/b;->q:Lcom/google/android/material/t/o;

    .line 438
    iget-object v0, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    invoke-virtual {v0, p1}, Lcom/google/android/material/t/j;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    .line 439
    iget-object v0, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    iget-object v1, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    invoke-virtual {v1}, Lcom/google/android/material/t/j;->aw()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/t/j;->k(Z)V

    .line 440
    iget-object v0, p0, Lcom/google/android/material/e/b;->i:Lcom/google/android/material/t/j;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/google/android/material/e/b;->i:Lcom/google/android/material/t/j;

    invoke-virtual {v0, p1}, Lcom/google/android/material/t/j;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/e/b;->v:Lcom/google/android/material/t/j;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/google/android/material/e/b;->v:Lcom/google/android/material/t/j;

    invoke-virtual {v0, p1}, Lcom/google/android/material/t/j;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/e/b;->u:Lcom/google/android/material/t/j;

    if-eqz v0, :cond_2

    .line 449
    iget-object p0, p0, Lcom/google/android/material/e/b;->u:Lcom/google/android/material/t/j;

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    :cond_2
    return-void
.end method

.method a(Z)V
    .locals 0

    .line 201
    iput-boolean p1, p0, Lcom/google/android/material/e/b;->w:Z

    return-void
.end method

.method a()Z
    .locals 0

    .line 197
    iget-boolean p0, p0, Lcom/google/android/material/e/b;->w:Z

    return p0
.end method

.method b()I
    .locals 1
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/google/android/material/e/b;->r:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/e/b;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    :goto_0
    return p0
.end method

.method b(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/r;
            a = 0.0
            b = 1.0
        .end annotation
    .end param

    .line 295
    iget-object v0, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    invoke-virtual {v0, p1}, Lcom/google/android/material/t/j;->p(F)V

    .line 296
    iget-object v0, p0, Lcom/google/android/material/e/b;->i:Lcom/google/android/material/t/j;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/google/android/material/e/b;->i:Lcom/google/android/material/t/j;

    invoke-virtual {v0, p1}, Lcom/google/android/material/t/j;->p(F)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/e/b;->v:Lcom/google/android/material/t/j;

    if-eqz v0, :cond_1

    .line 301
    iget-object p0, p0, Lcom/google/android/material/e/b;->v:Lcom/google/android/material/t/j;

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->p(F)V

    :cond_1
    return-void
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->g(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method b(Z)V
    .locals 0

    .line 352
    iput-boolean p1, p0, Lcom/google/android/material/e/b;->x:Z

    return-void
.end method

.method c()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 220
    iget-object p0, p0, Lcom/google/android/material/e/b;->r:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method c(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 250
    iget-object p0, p0, Lcom/google/android/material/e/b;->i:Lcom/google/android/material/t/j;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 251
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 250
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->g(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method d()I
    .locals 0
    .annotation build Landroidx/annotation/p;
    .end annotation

    .line 233
    iget p0, p0, Lcom/google/android/material/e/b;->l:I

    return p0
.end method

.method d(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 360
    iput-object p1, p0, Lcom/google/android/material/e/b;->o:Landroid/content/res/ColorStateList;

    .line 361
    invoke-direct {p0}, Lcom/google/android/material/e/b;->F()V

    return-void
.end method

.method e()Lcom/google/android/material/t/j;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 238
    iget-object p0, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    return-object p0
.end method

.method e(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 365
    iput-object p1, p0, Lcom/google/android/material/e/b;->p:Landroid/content/res/ColorStateList;

    .line 366
    iget-object v0, p0, Lcom/google/android/material/e/b;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 367
    iget-object p0, p0, Lcom/google/android/material/e/b;->n:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method f()Landroid/content/res/ColorStateList;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->U()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method g()Landroid/content/res/ColorStateList;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/google/android/material/e/b;->i:Lcom/google/android/material/t/j;

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->U()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method h()Landroid/graphics/Rect;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 265
    iget-object p0, p0, Lcom/google/android/material/e/b;->g:Landroid/graphics/Rect;

    return-object p0
.end method

.method i()V
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/google/android/material/e/b;->m:Landroid/graphics/drawable/Drawable;

    .line 270
    iget-object v1, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    .line 271
    invoke-virtual {v1}, Lcom/google/android/material/e/a;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/e/b;->C()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/e/b;->i:Lcom/google/android/material/t/j;

    :goto_0
    iput-object v1, p0, Lcom/google/android/material/e/b;->m:Landroid/graphics/drawable/Drawable;

    .line 272
    iget-object v1, p0, Lcom/google/android/material/e/b;->m:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_1

    .line 273
    iget-object v0, p0, Lcom/google/android/material/e/b;->m:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/e/b;->b(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method j()F
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->as()F

    move-result p0

    return p0
.end method

.method k()F
    .locals 0
    .annotation build Landroidx/annotation/r;
        a = 0.0
        b = 1.0
    .end annotation

    .line 307
    iget-object p0, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->ae()F

    move-result p0

    return p0
.end method

.method l()V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    iget-object p0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    invoke-virtual {p0}, Lcom/google/android/material/e/a;->getCardElevation()F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/t/j;->r(F)V

    return-void
.end method

.method m()V
    .locals 2

    .line 316
    invoke-virtual {p0}, Lcom/google/android/material/e/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    iget-object v1, p0, Lcom/google/android/material/e/b;->h:Lcom/google/android/material/t/j;

    invoke-direct {p0, v1}, Lcom/google/android/material/e/b;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/e/a;->setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    iget-object v1, p0, Lcom/google/android/material/e/b;->m:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/google/android/material/e/b;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/e/a;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method n()V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/google/android/material/e/b;->i:Lcom/google/android/material/t/j;

    iget v1, p0, Lcom/google/android/material/e/b;->l:I

    int-to-float v1, v1

    iget-object p0, p0, Lcom/google/android/material/e/b;->r:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/material/t/j;->a(FLandroid/content/res/ColorStateList;)V

    return-void
.end method

.method o()V
    .locals 5

    .line 335
    invoke-direct {p0}, Lcom/google/android/material/e/b;->z()Z

    move-result v0

    if-nez v0, :cond_1

    .line 336
    invoke-direct {p0}, Lcom/google/android/material/e/b;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 341
    invoke-direct {p0}, Lcom/google/android/material/e/b;->B()F

    move-result v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 342
    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/e/b;->y()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 344
    iget-object v1, p0, Lcom/google/android/material/e/b;->f:Lcom/google/android/material/e/a;

    iget-object v2, p0, Lcom/google/android/material/e/b;->g:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/material/e/b;->g:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/google/android/material/e/b;->g:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v0

    iget-object p0, p0, Lcom/google/android/material/e/b;->g:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v0

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/google/android/material/e/a;->b(IIII)V

    return-void
.end method

.method p()Z
    .locals 0

    .line 356
    iget-boolean p0, p0, Lcom/google/android/material/e/b;->x:Z

    return p0
.end method

.method q()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 373
    iget-object p0, p0, Lcom/google/android/material/e/b;->p:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method r()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 378
    iget-object p0, p0, Lcom/google/android/material/e/b;->o:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method s()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 383
    iget-object p0, p0, Lcom/google/android/material/e/b;->n:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method t()V
    .locals 7
    .annotation build Landroidx/annotation/am;
        b = 0x17
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/google/android/material/e/b;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/google/android/material/e/b;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 430
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 431
    iget-object v2, p0, Lcom/google/android/material/e/b;->s:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 432
    iget-object p0, p0, Lcom/google/android/material/e/b;->s:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method u()Lcom/google/android/material/t/o;
    .locals 0

    .line 454
    iget-object p0, p0, Lcom/google/android/material/e/b;->q:Lcom/google/android/material/t/o;

    return-object p0
.end method
