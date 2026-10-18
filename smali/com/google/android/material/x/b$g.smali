.class Lcom/google/android/material/x/b$g;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/x/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field a:I

.field b:F

.field c:I

.field d:I

.field e:Landroid/animation/ValueAnimator;

.field final synthetic f:Lcom/google/android/material/x/b;

.field private g:I

.field private final h:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final i:Landroid/graphics/drawable/GradientDrawable;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method constructor <init>(Lcom/google/android/material/x/b;Landroid/content/Context;)V
    .locals 0

    .line 2840
    iput-object p1, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    .line 2841
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2828
    iput p1, p0, Lcom/google/android/material/x/b$g;->a:I

    .line 2831
    iput p1, p0, Lcom/google/android/material/x/b$g;->j:I

    .line 2833
    iput p1, p0, Lcom/google/android/material/x/b$g;->c:I

    .line 2834
    iput p1, p0, Lcom/google/android/material/x/b$g;->d:I

    .line 2837
    iput p1, p0, Lcom/google/android/material/x/b$g;->k:I

    .line 2838
    iput p1, p0, Lcom/google/android/material/x/b$g;->l:I

    const/4 p1, 0x0

    .line 2842
    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b$g;->setWillNotDraw(Z)V

    .line 2843
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/x/b$g;->h:Landroid/graphics/Paint;

    .line 2844
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/x/b$g;->i:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/x/b$g;)I
    .locals 0

    .line 2823
    iget p0, p0, Lcom/google/android/material/x/b$g;->k:I

    return p0
.end method

.method private a(Lcom/google/android/material/x/b$l;Landroid/graphics/RectF;)V
    .locals 2
    .param p1    # Lcom/google/android/material/x/b$l;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 3124
    invoke-static {p1}, Lcom/google/android/material/x/b$l;->f(Lcom/google/android/material/x/b$l;)I

    move-result v0

    .line 3125
    invoke-virtual {p0}, Lcom/google/android/material/x/b$g;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v1, 0x18

    invoke-static {p0, v1}, Lcom/google/android/material/internal/z;->a(Landroid/content/Context;I)F

    move-result p0

    float-to-int p0, p0

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    .line 3131
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/x/b$l;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/material/x/b$l;->getRight()I

    move-result p1

    add-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 3132
    div-int/lit8 p0, p0, 0x2

    sub-int p1, v0, p0

    add-int/2addr v0, p0

    int-to-float p0, p1

    int-to-float p1, v0

    const/4 v0, 0x0

    .line 3135
    invoke-virtual {p2, p0, v0, p1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private a(ZII)V
    .locals 4

    .line 3033
    invoke-virtual {p0, p2}, Lcom/google/android/material/x/b$g;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3036
    invoke-direct {p0}, Lcom/google/android/material/x/b$g;->c()V

    return-void

    .line 3040
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 3041
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 3043
    iget-object v3, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    iget-boolean v3, v3, Lcom/google/android/material/x/b;->I:Z

    if-nez v3, :cond_1

    instance-of v3, v0, Lcom/google/android/material/x/b$l;

    if-eqz v3, :cond_1

    .line 3044
    check-cast v0, Lcom/google/android/material/x/b$l;

    iget-object v1, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    invoke-static {v1}, Lcom/google/android/material/x/b;->a(Lcom/google/android/material/x/b;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/x/b$g;->a(Lcom/google/android/material/x/b$l;Landroid/graphics/RectF;)V

    .line 3045
    iget-object v0, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    invoke-static {v0}, Lcom/google/android/material/x/b;->a(Lcom/google/android/material/x/b;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v0

    .line 3046
    iget-object v0, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    invoke-static {v0}, Lcom/google/android/material/x/b;->a(Lcom/google/android/material/x/b;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v0

    .line 3054
    :cond_1
    iget v0, p0, Lcom/google/android/material/x/b$g;->c:I

    .line 3055
    iget v3, p0, Lcom/google/android/material/x/b$g;->d:I

    if-ne v0, v1, :cond_2

    if-ne v3, v2, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 3065
    iput v0, p0, Lcom/google/android/material/x/b$g;->k:I

    .line 3066
    iput v3, p0, Lcom/google/android/material/x/b$g;->l:I

    .line 3071
    :cond_3
    new-instance v0, Lcom/google/android/material/x/b$g$1;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/material/x/b$g$1;-><init>(Lcom/google/android/material/x/b$g;II)V

    if-eqz p1, :cond_4

    .line 3084
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/x/b$g;->e:Landroid/animation/ValueAnimator;

    .line 3085
    sget-object v1, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, p3

    .line 3086
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p3, 0x2

    .line 3087
    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 3088
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3089
    new-instance p3, Lcom/google/android/material/x/b$g$2;

    invoke-direct {p3, p0, p2}, Lcom/google/android/material/x/b$g$2;-><init>(Lcom/google/android/material/x/b$g;I)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3102
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 3105
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/x/b$g;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 3106
    iget-object p0, p0, Lcom/google/android/material/x/b$g;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic b(Lcom/google/android/material/x/b$g;)I
    .locals 0

    .line 2823
    iget p0, p0, Lcom/google/android/material/x/b$g;->l:I

    return p0
.end method

.method private c()V
    .locals 6

    .line 2977
    iget v0, p0, Lcom/google/android/material/x/b$g;->a:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/x/b$g;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2981
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_2

    .line 2982
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2983
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 2985
    iget-object v3, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    iget-boolean v3, v3, Lcom/google/android/material/x/b;->I:Z

    if-nez v3, :cond_0

    instance-of v3, v0, Lcom/google/android/material/x/b$l;

    if-eqz v3, :cond_0

    .line 2986
    check-cast v0, Lcom/google/android/material/x/b$l;

    iget-object v1, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    invoke-static {v1}, Lcom/google/android/material/x/b;->a(Lcom/google/android/material/x/b;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/x/b$g;->a(Lcom/google/android/material/x/b$l;Landroid/graphics/RectF;)V

    .line 2987
    iget-object v0, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    invoke-static {v0}, Lcom/google/android/material/x/b;->a(Lcom/google/android/material/x/b;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v0

    .line 2988
    iget-object v0, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    invoke-static {v0}, Lcom/google/android/material/x/b;->a(Lcom/google/android/material/x/b;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v0

    .line 2991
    :cond_0
    iget v0, p0, Lcom/google/android/material/x/b$g;->b:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    iget v0, p0, Lcom/google/android/material/x/b$g;->a:I

    invoke-virtual {p0}, Lcom/google/android/material/x/b$g;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2993
    iget v0, p0, Lcom/google/android/material/x/b$g;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/x/b$g;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2994
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2995
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    .line 2997
    iget-object v5, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    iget-boolean v5, v5, Lcom/google/android/material/x/b;->I:Z

    if-nez v5, :cond_1

    instance-of v5, v0, Lcom/google/android/material/x/b$l;

    if-eqz v5, :cond_1

    .line 2998
    check-cast v0, Lcom/google/android/material/x/b$l;

    iget-object v3, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    invoke-static {v3}, Lcom/google/android/material/x/b;->a(Lcom/google/android/material/x/b;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/google/android/material/x/b$g;->a(Lcom/google/android/material/x/b$l;Landroid/graphics/RectF;)V

    .line 2999
    iget-object v0, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    invoke-static {v0}, Lcom/google/android/material/x/b;->a(Lcom/google/android/material/x/b;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v0

    .line 3000
    iget-object v0, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    invoke-static {v0}, Lcom/google/android/material/x/b;->a(Lcom/google/android/material/x/b;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v0

    .line 3003
    :cond_1
    iget v0, p0, Lcom/google/android/material/x/b$g;->b:F

    int-to-float v3, v3

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/google/android/material/x/b$g;->b:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v3, v5, v3

    int-to-float v1, v1

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    float-to-int v1, v0

    .line 3004
    iget v0, p0, Lcom/google/android/material/x/b$g;->b:F

    int-to-float v3, v4

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/google/android/material/x/b$g;->b:F

    sub-float/2addr v5, v3

    int-to-float v2, v2

    mul-float/2addr v5, v2

    add-float/2addr v0, v5

    float-to-int v2, v0

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    move v2, v1

    .line 3011
    :cond_3
    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/google/android/material/x/b$g;->a(II)V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 1

    .line 2848
    iget-object v0, p0, Lcom/google/android/material/x/b$g;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2849
    iget-object v0, p0, Lcom/google/android/material/x/b$g;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2850
    invoke-static {p0}, Landroidx/core/n/af;->h(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method a(IF)V
    .locals 1

    .line 2872
    iget-object v0, p0, Lcom/google/android/material/x/b$g;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/x/b$g;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2873
    iget-object v0, p0, Lcom/google/android/material/x/b$g;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2876
    :cond_0
    iput p1, p0, Lcom/google/android/material/x/b$g;->a:I

    .line 2877
    iput p2, p0, Lcom/google/android/material/x/b$g;->b:F

    .line 2878
    invoke-direct {p0}, Lcom/google/android/material/x/b$g;->c()V

    return-void
.end method

.method a(II)V
    .locals 1

    .line 3015
    iget v0, p0, Lcom/google/android/material/x/b$g;->c:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/material/x/b$g;->d:I

    if-eq p2, v0, :cond_1

    .line 3017
    :cond_0
    iput p1, p0, Lcom/google/android/material/x/b$g;->c:I

    .line 3018
    iput p2, p0, Lcom/google/android/material/x/b$g;->d:I

    .line 3019
    invoke-static {p0}, Landroidx/core/n/af;->h(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method a()Z
    .locals 4

    .line 2862
    invoke-virtual {p0}, Lcom/google/android/material/x/b$g;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2863
    invoke-virtual {p0, v2}, Lcom/google/android/material/x/b$g;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2864
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method b()F
    .locals 1

    .line 2882
    iget v0, p0, Lcom/google/android/material/x/b$g;->a:I

    int-to-float v0, v0

    iget p0, p0, Lcom/google/android/material/x/b$g;->b:F

    add-float/2addr v0, p0

    return v0
.end method

.method b(I)V
    .locals 1

    .line 2855
    iget v0, p0, Lcom/google/android/material/x/b$g;->g:I

    if-eq v0, p1, :cond_0

    .line 2856
    iput p1, p0, Lcom/google/android/material/x/b$g;->g:I

    .line 2857
    invoke-static {p0}, Landroidx/core/n/af;->h(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method b(II)V
    .locals 1

    .line 3024
    iget-object v0, p0, Lcom/google/android/material/x/b$g;->e:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/x/b$g;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3025
    iget-object v0, p0, Lcom/google/android/material/x/b$g;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    .line 3028
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/material/x/b$g;->a(ZII)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 3141
    iget-object v0, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    iget-object v0, v0, Lcom/google/android/material/x/b;->x:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3142
    iget-object v0, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    iget-object v0, v0, Lcom/google/android/material/x/b;->x:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3144
    :goto_0
    iget v2, p0, Lcom/google/android/material/x/b$g;->g:I

    if-ltz v2, :cond_1

    .line 3145
    iget v0, p0, Lcom/google/android/material/x/b$g;->g:I

    .line 3151
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    iget v2, v2, Lcom/google/android/material/x/b;->F:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    goto :goto_1

    .line 3166
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/material/x/b$g;->getHeight()I

    move-result v0

    goto :goto_1

    .line 3157
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/material/x/b$g;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 3158
    invoke-virtual {p0}, Lcom/google/android/material/x/b$g;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    div-int/lit8 v0, v2, 0x2

    goto :goto_1

    .line 3153
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/material/x/b$g;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    .line 3154
    invoke-virtual {p0}, Lcom/google/android/material/x/b$g;->getHeight()I

    move-result v0

    .line 3173
    :goto_1
    :pswitch_3
    iget v2, p0, Lcom/google/android/material/x/b$g;->c:I

    if-ltz v2, :cond_5

    iget v2, p0, Lcom/google/android/material/x/b$g;->d:I

    iget v3, p0, Lcom/google/android/material/x/b$g;->c:I

    if-le v2, v3, :cond_5

    .line 3175
    iget-object v2, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    iget-object v2, v2, Lcom/google/android/material/x/b;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    iget-object v2, v2, Lcom/google/android/material/x/b;->x:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/google/android/material/x/b$g;->i:Landroid/graphics/drawable/GradientDrawable;

    .line 3176
    :goto_2
    invoke-static {v2}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3178
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3179
    iget v3, p0, Lcom/google/android/material/x/b$g;->c:I

    iget v4, p0, Lcom/google/android/material/x/b$g;->d:I

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3180
    iget-object v0, p0, Lcom/google/android/material/x/b$g;->h:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    .line 3181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_3

    .line 3183
    iget-object v0, p0, Lcom/google/android/material/x/b$g;->h:Landroid/graphics/Paint;

    .line 3184
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 3183
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    .line 3186
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/x/b$g;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v2, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 3189
    :cond_4
    :goto_3
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3193
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 2961
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2963
    iget-object p1, p0, Lcom/google/android/material/x/b$g;->e:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/x/b$g;->e:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2968
    iget p2, p0, Lcom/google/android/material/x/b$g;->a:I

    const/4 p3, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/x/b$g;->a(ZII)V

    goto :goto_0

    .line 2972
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/x/b$g;->c()V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 2901
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2903
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return-void

    .line 2912
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    iget v0, v0, Lcom/google/android/material/x/b;->D:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    iget v0, v0, Lcom/google/android/material/x/b;->G:I

    if-ne v0, v1, :cond_9

    .line 2913
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/x/b$g;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_3

    .line 2918
    invoke-virtual {p0, v4}, Lcom/google/android/material/x/b$g;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2919
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    .line 2920
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-gtz v5, :cond_4

    return-void

    .line 2929
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/material/x/b$g;->getContext()Landroid/content/Context;

    move-result-object v4

    const/16 v6, 0x10

    invoke-static {v4, v6}, Lcom/google/android/material/internal/z;->a(Landroid/content/Context;I)F

    move-result v4

    float-to-int v4, v4

    mul-int v6, v5, v0

    .line 2932
    invoke-virtual {p0}, Lcom/google/android/material/x/b$g;->getMeasuredWidth()I

    move-result v7

    mul-int/2addr v4, v1

    sub-int/2addr v7, v4

    if-gt v6, v7, :cond_7

    move v1, v3

    :goto_1
    if-ge v3, v0, :cond_8

    .line 2936
    invoke-virtual {p0, v3}, Lcom/google/android/material/x/b$g;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 2937
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    if-ne v6, v5, :cond_5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_6

    .line 2938
    :cond_5
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2939
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move v1, v2

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2947
    :cond_7
    iget-object v0, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    iput v3, v0, Lcom/google/android/material/x/b;->D:I

    .line 2948
    iget-object v0, p0, Lcom/google/android/material/x/b$g;->f:Lcom/google/android/material/x/b;

    invoke-virtual {v0, v3}, Lcom/google/android/material/x/b;->a(Z)V

    move v1, v2

    :cond_8
    if-eqz v1, :cond_9

    .line 2954
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_9
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .line 2887
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 2891
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 2892
    iget v0, p0, Lcom/google/android/material/x/b$g;->j:I

    if-eq v0, p1, :cond_0

    .line 2893
    invoke-virtual {p0}, Lcom/google/android/material/x/b$g;->requestLayout()V

    .line 2894
    iput p1, p0, Lcom/google/android/material/x/b$g;->j:I

    :cond_0
    return-void
.end method
