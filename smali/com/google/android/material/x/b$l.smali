.class public final Lcom/google/android/material/x/b$l;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/x/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "l"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/x/b;

.field private b:Lcom/google/android/material/x/b$h;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/view/View;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private f:Lcom/google/android/material/b/a;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private g:Landroid/view/View;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private h:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private i:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private j:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private k:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/x/b;Landroid/content/Context;)V
    .locals 3
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2229
    iput-object p1, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    .line 2230
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 2227
    iput v0, p0, Lcom/google/android/material/x/b$l;->k:I

    .line 2231
    invoke-direct {p0, p2}, Lcom/google/android/material/x/b$l;->a(Landroid/content/Context;)V

    .line 2232
    iget p2, p1, Lcom/google/android/material/x/b;->p:I

    iget v0, p1, Lcom/google/android/material/x/b;->q:I

    iget v1, p1, Lcom/google/android/material/x/b;->r:I

    iget v2, p1, Lcom/google/android/material/x/b;->s:I

    invoke-static {p0, p2, v0, v1, v2}, Landroidx/core/n/af;->b(Landroid/view/View;IIII)V

    const/16 p2, 0x11

    .line 2234
    invoke-virtual {p0, p2}, Lcom/google/android/material/x/b$l;->setGravity(I)V

    .line 2235
    iget-boolean p1, p1, Lcom/google/android/material/x/b;->H:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b$l;->setOrientation(I)V

    .line 2236
    invoke-virtual {p0, p2}, Lcom/google/android/material/x/b$l;->setClickable(Z)V

    .line 2238
    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Landroidx/core/n/aa;->a(Landroid/content/Context;I)Landroidx/core/n/aa;

    move-result-object p1

    .line 2237
    invoke-static {p0, p1}, Landroidx/core/n/af;->a(Landroid/view/View;Landroidx/core/n/aa;)V

    return-void
.end method

.method private a(Landroid/text/Layout;IF)F
    .locals 0
    .param p1    # Landroid/text/Layout;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2819
    invoke-virtual {p1, p2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result p0

    invoke-virtual {p1}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result p1

    div-float/2addr p3, p1

    mul-float/2addr p0, p3

    return p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    .line 2242
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    iget v0, v0, Lcom/google/android/material/x/b;->B:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2243
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    iget v0, v0, Lcom/google/android/material/x/b;->B:I

    invoke-static {p1, v0}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/x/b$l;->j:Landroid/graphics/drawable/Drawable;

    .line 2244
    iget-object p1, p0, Lcom/google/android/material/x/b$l;->j:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/x/b$l;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2245
    iget-object p1, p0, Lcom/google/android/material/x/b$l;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 2248
    :cond_0
    iput-object v1, p0, Lcom/google/android/material/x/b$l;->j:Landroid/graphics/drawable/Drawable;

    .line 2252
    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 2253
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2255
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    iget-object v0, v0, Lcom/google/android/material/x/b;->w:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_5

    .line 2256
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v3, 0x3727c5ac    # 1.0E-5f

    .line 2260
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v3, -0x1

    .line 2261
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 2263
    iget-object v3, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    iget-object v3, v3, Lcom/google/android/material/x/b;->w:Landroid/content/res/ColorStateList;

    .line 2264
    invoke-static {v3}, Lcom/google/android/material/r/b;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 2268
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_4

    .line 2269
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    iget-object v4, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    iget-boolean v4, v4, Lcom/google/android/material/x/b;->J:Z

    if-eqz v4, :cond_2

    move-object p1, v1

    :cond_2
    iget-object v4, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    iget-boolean v4, v4, Lcom/google/android/material/x/b;->J:Z

    if-eqz v4, :cond_3

    move-object v0, v1

    :cond_3
    invoke-direct {v2, v3, p1, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object p1, v2

    goto :goto_1

    .line 2275
    :cond_4
    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2276
    invoke-static {v0, v3}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2277
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v2

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object p1, v1

    .line 2282
    :cond_5
    :goto_1
    invoke-static {p0, p1}, Landroidx/core/n/af;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 2283
    iget-object p0, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    invoke-virtual {p0}, Lcom/google/android/material/x/b;->invalidate()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2297
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->j:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 2298
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2299
    iget-object p0, p0, Lcom/google/android/material/x/b$l;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 2609
    :cond_0
    new-instance v0, Lcom/google/android/material/x/b$l$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/x/b$l$1;-><init>(Lcom/google/android/material/x/b$l;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 6
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Landroid/widget/ImageView;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 2708
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->b:Lcom/google/android/material/x/b$h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/x/b$l;->b:Lcom/google/android/material/x/b$h;

    .line 2709
    invoke-virtual {v0}, Lcom/google/android/material/x/b$h;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/x/b$l;->b:Lcom/google/android/material/x/b$h;

    .line 2710
    invoke-virtual {v0}, Lcom/google/android/material/x/b$h;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2712
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/x/b$l;->b:Lcom/google/android/material/x/b$h;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/material/x/b$l;->b:Lcom/google/android/material/x/b$h;

    invoke-virtual {v2}, Lcom/google/android/material/x/b$h;->e()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz p2, :cond_3

    if-eqz v0, :cond_2

    .line 2716
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2717
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2718
    invoke-virtual {p0, v4}, Lcom/google/android/material/x/b$l;->setVisibility(I)V

    goto :goto_2

    .line 2720
    :cond_2
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2721
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2725
    :cond_3
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v5, 0x1

    xor-int/2addr v0, v5

    if-eqz p1, :cond_6

    if-eqz v0, :cond_5

    .line 2728
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2729
    iget-object v2, p0, Lcom/google/android/material/x/b$l;->b:Lcom/google/android/material/x/b$h;

    invoke-static {v2}, Lcom/google/android/material/x/b$h;->c(Lcom/google/android/material/x/b$h;)I

    move-result v2

    if-ne v2, v5, :cond_4

    .line 2730
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 2732
    :cond_4
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2734
    :goto_3
    invoke-virtual {p0, v4}, Lcom/google/android/material/x/b$l;->setVisibility(I)V

    goto :goto_4

    .line 2736
    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2737
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_4
    if-eqz p2, :cond_9

    .line 2742
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_7

    .line 2744
    invoke-virtual {p2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 2746
    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/google/android/material/internal/z;->a(Landroid/content/Context;I)F

    move-result v2

    float-to-int v2, v2

    goto :goto_5

    :cond_7
    move v2, v4

    .line 2748
    :goto_5
    iget-object v3, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    iget-boolean v3, v3, Lcom/google/android/material/x/b;->H:Z

    if-eqz v3, :cond_8

    .line 2749
    invoke-static {p1}, Landroidx/core/n/m;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v3

    if-eq v2, v3, :cond_9

    .line 2750
    invoke-static {p1, v2}, Landroidx/core/n/m;->b(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2751
    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2753
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2754
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_6

    .line 2757
    :cond_8
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v2, v3, :cond_9

    .line 2758
    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2759
    invoke-static {p1, v4}, Landroidx/core/n/m;->b(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 2761
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2762
    invoke-virtual {p2}, Landroid/widget/ImageView;->requestLayout()V

    .line 2767
    :cond_9
    :goto_6
    iget-object p1, p0, Lcom/google/android/material/x/b$l;->b:Lcom/google/android/material/x/b$h;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/google/android/material/x/b$l;->b:Lcom/google/android/material/x/b$h;

    invoke-static {p1}, Lcom/google/android/material/x/b$h;->a(Lcom/google/android/material/x/b$h;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_7

    :cond_a
    move-object p1, v1

    :goto_7
    if-eqz v0, :cond_b

    move-object p1, v1

    .line 2768
    :cond_b
    invoke-static {p0, p1}, Landroidx/appcompat/widget/bc;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/x/b$l;Landroid/content/Context;)V
    .locals 0

    .line 2215
    invoke-direct {p0, p1}, Lcom/google/android/material/x/b$l;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/x/b$l;Landroid/graphics/Canvas;)V
    .locals 0

    .line 2215
    invoke-direct {p0, p1}, Lcom/google/android/material/x/b$l;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/x/b$l;Landroid/view/View;)V
    .locals 0

    .line 2215
    invoke-direct {p0, p1}, Lcom/google/android/material/x/b$l;->c(Landroid/view/View;)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 2688
    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b$l;->setClipChildren(Z)V

    .line 2689
    invoke-virtual {p0, p1}, Lcom/google/android/material/x/b$l;->setClipToPadding(Z)V

    .line 2690
    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 2692
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 2693
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/x/b$l;)Z
    .locals 0

    .line 2215
    invoke-direct {p0}, Lcom/google/android/material/x/b$l;->j()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/x/b$l;)Lcom/google/android/material/b/a;
    .locals 0

    .line 2215
    iget-object p0, p0, Lcom/google/android/material/x/b$l;->f:Lcom/google/android/material/b/a;

    return-object p0
.end method

.method private b(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 2662
    invoke-direct {p0}, Lcom/google/android/material/x/b$l;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2666
    invoke-direct {p0, v0}, Lcom/google/android/material/x/b$l;->a(Z)V

    .line 2667
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->f:Lcom/google/android/material/b/a;

    .line 2668
    invoke-direct {p0, p1}, Lcom/google/android/material/x/b$l;->d(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 2667
    invoke-static {v0, p1, v1}, Lcom/google/android/material/b/b;->a(Lcom/google/android/material/b/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    .line 2669
    iput-object p1, p0, Lcom/google/android/material/x/b$l;->e:Landroid/view/View;

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/google/android/material/x/b$l;)Lcom/google/android/material/b/a;
    .locals 0

    .line 2215
    invoke-direct {p0}, Lcom/google/android/material/x/b$l;->getOrCreateBadge()Lcom/google/android/material/b/a;

    move-result-object p0

    return-object p0
.end method

.method private c(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2773
    invoke-direct {p0}, Lcom/google/android/material/x/b$l;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/x/b$l;->e:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2774
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->f:Lcom/google/android/material/b/a;

    invoke-direct {p0, p1}, Lcom/google/android/material/x/b$l;->d(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/google/android/material/b/b;->c(Lcom/google/android/material/b/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method

.method private d(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 2784
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->d:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    if-eq p1, p0, :cond_0

    return-object v1

    .line 2787
    :cond_0
    sget-boolean p0, Lcom/google/android/material/b/b;->a:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/widget/FrameLayout;

    :cond_1
    return-object v1
.end method

.method private d()V
    .locals 4

    .line 2540
    sget-boolean v0, Lcom/google/android/material/b/b;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2541
    invoke-direct {p0}, Lcom/google/android/material/x/b$l;->f()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 2542
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/x/b$l;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 2546
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/google/android/material/a$k;->design_layout_tab_icon:I

    .line 2547
    invoke-virtual {v2, v3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/material/x/b$l;->d:Landroid/widget/ImageView;

    .line 2548
    iget-object p0, p0, Lcom/google/android/material/x/b$l;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic d(Lcom/google/android/material/x/b$l;)V
    .locals 0

    .line 2215
    invoke-direct {p0}, Lcom/google/android/material/x/b$l;->g()V

    return-void
.end method

.method static synthetic e(Lcom/google/android/material/x/b$l;)Lcom/google/android/material/b/a;
    .locals 0

    .line 2215
    invoke-direct {p0}, Lcom/google/android/material/x/b$l;->getBadge()Lcom/google/android/material/b/a;

    move-result-object p0

    return-object p0
.end method

.method private e()V
    .locals 4

    .line 2553
    sget-boolean v0, Lcom/google/android/material/b/b;->a:Z

    if-eqz v0, :cond_0

    .line 2554
    invoke-direct {p0}, Lcom/google/android/material/x/b$l;->f()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 2555
    invoke-virtual {p0, v0}, Lcom/google/android/material/x/b$l;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 2559
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$k;->design_layout_tab_text:I

    const/4 v3, 0x0

    .line 2560
    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    .line 2561
    iget-object p0, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic f(Lcom/google/android/material/x/b$l;)I
    .locals 0

    .line 2215
    invoke-direct {p0}, Lcom/google/android/material/x/b$l;->getContentWidth()I

    move-result p0

    return p0
.end method

.method private f()Landroid/widget/FrameLayout;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 2566
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2567
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2570
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private g()V
    .locals 1

    .line 2599
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2600
    invoke-direct {p0}, Lcom/google/android/material/x/b$l;->i()V

    :cond_0
    const/4 v0, 0x0

    .line 2602
    iput-object v0, p0, Lcom/google/android/material/x/b$l;->f:Lcom/google/android/material/b/a;

    return-void
.end method

.method private getBadge()Lcom/google/android/material/b/a;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 2595
    iget-object p0, p0, Lcom/google/android/material/x/b$l;->f:Lcom/google/android/material/b/a;

    return-object p0
.end method

.method private getContentWidth()I
    .locals 8

    const/4 v0, 0x3

    .line 2801
    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/material/x/b$l;->d:Landroid/widget/ImageView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object p0, p0, Lcom/google/android/material/x/b$l;->g:Landroid/view/View;

    const/4 v1, 0x2

    aput-object p0, v0, v1

    array-length p0, v0

    move v1, v2

    move v4, v1

    move v5, v4

    :goto_0
    if-ge v2, p0, :cond_3

    aget-object v6, v0, v2

    if-eqz v6, :cond_2

    .line 2802
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    if-eqz v5, :cond_0

    .line 2803
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v4

    :goto_1
    if-eqz v5, :cond_1

    .line 2804
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v1

    :goto_2
    move v5, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sub-int/2addr v1, v4

    return v1
.end method

.method private getOrCreateBadge()Lcom/google/android/material/b/a;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 2583
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->f:Lcom/google/android/material/b/a;

    if-nez v0, :cond_0

    .line 2584
    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/b/a;->a(Landroid/content/Context;)Lcom/google/android/material/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/x/b$l;->f:Lcom/google/android/material/b/a;

    .line 2586
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/x/b$l;->h()V

    .line 2587
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->f:Lcom/google/android/material/b/a;

    if-eqz v0, :cond_1

    .line 2590
    iget-object p0, p0, Lcom/google/android/material/x/b$l;->f:Lcom/google/android/material/b/a;

    return-object p0

    .line 2588
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unable to create badge"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private h()V
    .locals 2

    .line 2630
    invoke-direct {p0}, Lcom/google/android/material/x/b$l;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2633
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->g:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2635
    invoke-direct {p0}, Lcom/google/android/material/x/b$l;->i()V

    goto :goto_0

    .line 2637
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/x/b$l;->b:Lcom/google/android/material/x/b$h;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/x/b$l;->b:Lcom/google/android/material/x/b$h;

    invoke-virtual {v0}, Lcom/google/android/material/x/b$h;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2638
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/material/x/b$l;->d:Landroid/widget/ImageView;

    if-eq v0, v1, :cond_2

    .line 2639
    invoke-direct {p0}, Lcom/google/android/material/x/b$l;->i()V

    .line 2641
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/material/x/b$l;->b(Landroid/view/View;)V

    goto :goto_0

    .line 2643
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/material/x/b$l;->c(Landroid/view/View;)V

    goto :goto_0

    .line 2645
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/x/b$l;->b:Lcom/google/android/material/x/b$h;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/material/x/b$l;->b:Lcom/google/android/material/x/b$h;

    .line 2647
    invoke-virtual {v0}, Lcom/google/android/material/x/b$h;->i()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 2648
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    if-eq v0, v1, :cond_4

    .line 2649
    invoke-direct {p0}, Lcom/google/android/material/x/b$l;->i()V

    .line 2651
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/google/android/material/x/b$l;->b(Landroid/view/View;)V

    goto :goto_0

    .line 2653
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/google/android/material/x/b$l;->c(Landroid/view/View;)V

    goto :goto_0

    .line 2656
    :cond_5
    invoke-direct {p0}, Lcom/google/android/material/x/b$l;->i()V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 3

    .line 2674
    invoke-direct {p0}, Lcom/google/android/material/x/b$l;->j()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2677
    invoke-direct {p0, v0}, Lcom/google/android/material/x/b$l;->a(Z)V

    .line 2678
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2679
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->f:Lcom/google/android/material/b/a;

    iget-object v1, p0, Lcom/google/android/material/x/b$l;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/material/x/b$l;->e:Landroid/view/View;

    .line 2680
    invoke-direct {p0, v2}, Lcom/google/android/material/x/b$l;->d(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v2

    .line 2679
    invoke-static {v0, v1, v2}, Lcom/google/android/material/b/b;->b(Lcom/google/android/material/b/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    const/4 v0, 0x0

    .line 2681
    iput-object v0, p0, Lcom/google/android/material/x/b$l;->e:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private j()Z
    .locals 0

    .line 2779
    iget-object p0, p0, Lcom/google/android/material/x/b$l;->f:Lcom/google/android/material/b/a;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    .line 2454
    invoke-virtual {p0, v0}, Lcom/google/android/material/x/b$l;->setTab(Lcom/google/android/material/x/b$h;)V

    const/4 v0, 0x0

    .line 2455
    invoke-virtual {p0, v0}, Lcom/google/android/material/x/b$l;->setSelected(Z)V

    return-void
.end method

.method final b()V
    .locals 5

    .line 2459
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->b:Lcom/google/android/material/x/b$h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2460
    invoke-virtual {v0}, Lcom/google/android/material/x/b$h;->b()Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_6

    .line 2462
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eq v3, p0, :cond_2

    if-eqz v3, :cond_1

    .line 2465
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2467
    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/material/x/b$l;->addView(Landroid/view/View;)V

    .line 2469
    :cond_2
    iput-object v2, p0, Lcom/google/android/material/x/b$l;->g:Landroid/view/View;

    .line 2470
    iget-object v3, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    .line 2471
    iget-object v3, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2473
    :cond_3
    iget-object v3, p0, Lcom/google/android/material/x/b$l;->d:Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    .line 2474
    iget-object v3, p0, Lcom/google/android/material/x/b$l;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2475
    iget-object v3, p0, Lcom/google/android/material/x/b$l;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const v3, 0x1020014

    .line 2478
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/google/android/material/x/b$l;->h:Landroid/widget/TextView;

    .line 2479
    iget-object v3, p0, Lcom/google/android/material/x/b$l;->h:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 2480
    iget-object v3, p0, Lcom/google/android/material/x/b$l;->h:Landroid/widget/TextView;

    invoke-static {v3}, Landroidx/core/widget/m;->a(Landroid/widget/TextView;)I

    move-result v3

    iput v3, p0, Lcom/google/android/material/x/b$l;->k:I

    :cond_5
    const v3, 0x1020006

    .line 2482
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/google/android/material/x/b$l;->i:Landroid/widget/ImageView;

    goto :goto_1

    .line 2485
    :cond_6
    iget-object v2, p0, Lcom/google/android/material/x/b$l;->g:Landroid/view/View;

    if-eqz v2, :cond_7

    .line 2486
    iget-object v2, p0, Lcom/google/android/material/x/b$l;->g:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/google/android/material/x/b$l;->removeView(Landroid/view/View;)V

    .line 2487
    iput-object v1, p0, Lcom/google/android/material/x/b$l;->g:Landroid/view/View;

    .line 2489
    :cond_7
    iput-object v1, p0, Lcom/google/android/material/x/b$l;->h:Landroid/widget/TextView;

    .line 2490
    iput-object v1, p0, Lcom/google/android/material/x/b$l;->i:Landroid/widget/ImageView;

    .line 2493
    :goto_1
    iget-object v2, p0, Lcom/google/android/material/x/b$l;->g:Landroid/view/View;

    if-nez v2, :cond_d

    .line 2495
    iget-object v2, p0, Lcom/google/android/material/x/b$l;->d:Landroid/widget/ImageView;

    if-nez v2, :cond_8

    .line 2496
    invoke-direct {p0}, Lcom/google/android/material/x/b$l;->d()V

    :cond_8
    if-eqz v0, :cond_9

    .line 2499
    invoke-virtual {v0}, Lcom/google/android/material/x/b$h;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 2500
    invoke-virtual {v0}, Lcom/google/android/material/x/b$h;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_9
    if-eqz v1, :cond_a

    .line 2503
    iget-object v2, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    iget-object v2, v2, Lcom/google/android/material/x/b;->v:Landroid/content/res/ColorStateList;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2504
    iget-object v2, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    iget-object v2, v2, Lcom/google/android/material/x/b;->y:Landroid/graphics/PorterDuff$Mode;

    if-eqz v2, :cond_a

    .line 2505
    iget-object v2, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    iget-object v2, v2, Lcom/google/android/material/x/b;->y:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 2509
    :cond_a
    iget-object v1, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    if-nez v1, :cond_b

    .line 2510
    invoke-direct {p0}, Lcom/google/android/material/x/b$l;->e()V

    .line 2511
    iget-object v1, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    invoke-static {v1}, Landroidx/core/widget/m;->a(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/x/b$l;->k:I

    .line 2513
    :cond_b
    iget-object v1, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    iget v2, v2, Lcom/google/android/material/x/b;->t:I

    invoke-static {v1, v2}, Landroidx/core/widget/m;->a(Landroid/widget/TextView;I)V

    .line 2514
    iget-object v1, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    iget-object v1, v1, Lcom/google/android/material/x/b;->u:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_c

    .line 2515
    iget-object v1, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    iget-object v2, v2, Lcom/google/android/material/x/b;->u:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 2517
    :cond_c
    iget-object v1, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/material/x/b$l;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/google/android/material/x/b$l;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 2519
    invoke-direct {p0}, Lcom/google/android/material/x/b$l;->h()V

    .line 2520
    iget-object v1, p0, Lcom/google/android/material/x/b$l;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/google/android/material/x/b$l;->a(Landroid/view/View;)V

    .line 2521
    iget-object v1, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/google/android/material/x/b$l;->a(Landroid/view/View;)V

    goto :goto_2

    .line 2524
    :cond_d
    iget-object v1, p0, Lcom/google/android/material/x/b$l;->h:Landroid/widget/TextView;

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/google/android/material/x/b$l;->i:Landroid/widget/ImageView;

    if-eqz v1, :cond_f

    .line 2525
    :cond_e
    iget-object v1, p0, Lcom/google/android/material/x/b$l;->h:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/material/x/b$l;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/google/android/material/x/b$l;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :cond_f
    :goto_2
    if-eqz v0, :cond_10

    .line 2529
    invoke-static {v0}, Lcom/google/android/material/x/b$h;->a(Lcom/google/android/material/x/b$h;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 2532
    invoke-static {v0}, Lcom/google/android/material/x/b$h;->a(Lcom/google/android/material/x/b$h;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/material/x/b$l;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_10
    if-eqz v0, :cond_11

    .line 2535
    invoke-virtual {v0}, Lcom/google/android/material/x/b$h;->k()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_3

    :cond_11
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/material/x/b$l;->setSelected(Z)V

    return-void
.end method

.method final c()V
    .locals 2

    .line 2698
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    iget-boolean v0, v0, Lcom/google/android/material/x/b;->H:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/x/b$l;->setOrientation(I)V

    .line 2699
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->h:Landroid/widget/TextView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/x/b$l;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2702
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/x/b$l;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/x/b$l;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    goto :goto_1

    .line 2700
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/x/b$l;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/x/b$l;->a(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    :goto_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    .line 2305
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 2307
    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->getDrawableState()[I

    move-result-object v0

    .line 2308
    iget-object v1, p0, Lcom/google/android/material/x/b$l;->j:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/x/b$l;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2309
    iget-object v1, p0, Lcom/google/android/material/x/b$l;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_0
    if-eqz v2, :cond_1

    .line 2313
    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->invalidate()V

    .line 2314
    iget-object p0, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    invoke-virtual {p0}, Lcom/google/android/material/x/b;->invalidate()V

    :cond_1
    return-void
.end method

.method public getTab()Lcom/google/android/material/x/b$h;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 2814
    iget-object p0, p0, Lcom/google/android/material/x/b$l;->b:Lcom/google/android/material/x/b$h;

    return-object p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2359
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2360
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->f:Lcom/google/android/material/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/x/b$l;->f:Lcom/google/android/material/b/a;

    invoke-virtual {v0}, Lcom/google/android/material/b/a;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2361
    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/material/x/b$l;->f:Lcom/google/android/material/b/a;

    .line 2363
    invoke-virtual {v0}, Lcom/google/android/material/b/a;->j()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2362
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2365
    :cond_0
    invoke-static {p1}, Landroidx/core/n/a/d;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/n/a/d;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2366
    iget-object v2, p0, Lcom/google/android/material/x/b$l;->b:Lcom/google/android/material/x/b$h;

    .line 2370
    invoke-virtual {v2}, Lcom/google/android/material/x/b$h;->d()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2373
    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->isSelected()Z

    move-result v5

    .line 2367
    invoke-static/range {v0 .. v5}, Landroidx/core/n/a/d$c;->a(IIIIZZ)Landroidx/core/n/a/d$c;

    move-result-object v0

    .line 2366
    invoke-virtual {p1, v0}, Landroidx/core/n/a/d;->c(Ljava/lang/Object;)V

    .line 2374
    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->isSelected()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 2375
    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->h(Z)V

    .line 2376
    sget-object p0, Landroidx/core/n/a/d$a;->e:Landroidx/core/n/a/d$a;

    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->b(Landroidx/core/n/a/d$a;)Z

    :cond_1
    const-string p0, "Tab"

    .line 2378
    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->j(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 7

    .line 2383
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2384
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2385
    iget-object v2, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    invoke-virtual {v2}, Lcom/google/android/material/x/b;->getTabMaxWidth()I

    move-result v2

    if-lez v2, :cond_1

    if-eqz v1, :cond_0

    if-le v0, v2, :cond_1

    .line 2393
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    iget p1, p1, Lcom/google/android/material/x/b;->C:I

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 2400
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2403
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 2404
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    iget v0, v0, Lcom/google/android/material/x/b;->z:F

    .line 2405
    iget v1, p0, Lcom/google/android/material/x/b$l;->k:I

    .line 2407
    iget-object v2, p0, Lcom/google/android/material/x/b$l;->d:Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/material/x/b$l;->d:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    move v1, v3

    goto :goto_0

    .line 2410
    :cond_2
    iget-object v2, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-le v2, v3, :cond_3

    .line 2412
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    iget v0, v0, Lcom/google/android/material/x/b;->A:F

    .line 2415
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    .line 2416
    iget-object v4, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    .line 2417
    iget-object v5, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    invoke-static {v5}, Landroidx/core/widget/m;->a(Landroid/widget/TextView;)I

    move-result v5

    cmpl-float v2, v0, v2

    if-nez v2, :cond_4

    if-ltz v5, :cond_7

    if-eq v1, v5, :cond_7

    .line 2423
    :cond_4
    iget-object v5, p0, Lcom/google/android/material/x/b$l;->a:Lcom/google/android/material/x/b;

    iget v5, v5, Lcom/google/android/material/x/b;->G:I

    const/4 v6, 0x0

    if-ne v5, v3, :cond_6

    if-lez v2, :cond_6

    if-ne v4, v3, :cond_6

    .line 2429
    iget-object v2, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 2431
    invoke-direct {p0, v2, v6, v0}, Lcom/google/android/material/x/b$l;->a(Landroid/text/Layout;IF)F

    move-result v2

    .line 2432
    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    :cond_5
    move v3, v6

    :cond_6
    if-eqz v3, :cond_7

    .line 2438
    iget-object v2, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2439
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 2440
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_7
    return-void
.end method

.method public performClick()Z
    .locals 2

    .line 2320
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    .line 2322
    iget-object v1, p0, Lcom/google/android/material/x/b$l;->b:Lcom/google/android/material/x/b$h;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2324
    invoke-virtual {p0, v0}, Lcom/google/android/material/x/b$l;->playSoundEffect(I)V

    .line 2326
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/x/b$l;->b:Lcom/google/android/material/x/b$h;

    invoke-virtual {p0}, Lcom/google/android/material/x/b$h;->j()V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public setSelected(Z)V
    .locals 2

    .line 2335
    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2337
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 2339
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    const/4 v0, 0x4

    .line 2341
    invoke-virtual {p0, v0}, Lcom/google/android/material/x/b$l;->sendAccessibilityEvent(I)V

    .line 2346
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 2347
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 2349
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 2350
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2352
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->g:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 2353
    iget-object p0, p0, Lcom/google/android/material/x/b$l;->g:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_4
    return-void
.end method

.method setTab(Lcom/google/android/material/x/b$h;)V
    .locals 1
    .param p1    # Lcom/google/android/material/x/b$h;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 2447
    iget-object v0, p0, Lcom/google/android/material/x/b$l;->b:Lcom/google/android/material/x/b$h;

    if-eq p1, v0, :cond_0

    .line 2448
    iput-object p1, p0, Lcom/google/android/material/x/b$l;->b:Lcom/google/android/material/x/b$h;

    .line 2449
    invoke-virtual {p0}, Lcom/google/android/material/x/b$l;->b()V

    :cond_0
    return-void
.end method
