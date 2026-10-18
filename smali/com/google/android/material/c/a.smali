.class public Lcom/google/android/material/c/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/o$a;


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
    }
.end annotation


# static fields
.field public static final a:I = -0x1

.field private static final b:[I


# instance fields
.field private final c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:I

.field private h:Z

.field private i:Landroid/widget/ImageView;

.field private final j:Landroid/widget/TextView;

.field private final k:Landroid/widget/TextView;

.field private l:I

.field private m:Landroidx/appcompat/view/menu/j;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private n:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private o:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private p:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private q:Lcom/google/android/material/b/a;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 59
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/c/a;->b:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/c/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/c/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 72
    iput p2, p0, Lcom/google/android/material/c/a;->l:I

    .line 93
    invoke-virtual {p0}, Lcom/google/android/material/c/a;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/google/android/material/a$k;->design_bottom_navigation_item:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 96
    sget p1, Lcom/google/android/material/a$g;->design_bottom_navigation_item_background:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/c/a;->setBackgroundResource(I)V

    .line 97
    sget p1, Lcom/google/android/material/a$f;->design_bottom_navigation_margin:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/c/a;->c:I

    .line 99
    sget p1, Lcom/google/android/material/a$h;->icon:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/c/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    .line 100
    sget p1, Lcom/google/android/material/a$h;->smallLabel:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/c/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/material/c/a;->j:Landroid/widget/TextView;

    .line 101
    sget p1, Lcom/google/android/material/a$h;->largeLabel:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/c/a;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    .line 104
    iget-object p1, p0, Lcom/google/android/material/c/a;->j:Landroid/widget/TextView;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroidx/core/n/af;->e(Landroid/view/View;I)V

    .line 105
    iget-object p1, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    invoke-static {p1, p2}, Landroidx/core/n/af;->e(Landroid/view/View;I)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/google/android/material/c/a;->setFocusable(Z)V

    .line 107
    iget-object p1, p0, Lcom/google/android/material/c/a;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object p2, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTextSize()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/c/a;->a(FF)V

    .line 110
    iget-object p1, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    new-instance p2, Lcom/google/android/material/c/a$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/c/a$1;-><init>(Lcom/google/android/material/c/a;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/c/a;)Landroid/widget/ImageView;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method private a(FF)V
    .locals 2

    sub-float v0, p1, p2

    .line 409
    iput v0, p0, Lcom/google/android/material/c/a;->d:F

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v1, p2, v0

    div-float/2addr v1, p1

    .line 410
    iput v1, p0, Lcom/google/android/material/c/a;->e:F

    mul-float/2addr p1, v0

    div-float/2addr p1, p2

    .line 411
    iput p1, p0, Lcom/google/android/material/c/a;->f:F

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 448
    invoke-direct {p0}, Lcom/google/android/material/c/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/c/a;->q:Lcom/google/android/material/b/a;

    .line 452
    invoke-direct {p0, p1}, Lcom/google/android/material/c/a;->d(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object p0

    .line 451
    invoke-static {v0, p1, p0}, Lcom/google/android/material/b/b;->c(Lcom/google/android/material/b/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void
.end method

.method private a(Landroid/view/View;FFI)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 314
    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 315
    invoke-virtual {p1, p3}, Landroid/view/View;->setScaleY(F)V

    .line 316
    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private a(Landroid/view/View;II)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 308
    iput p2, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 309
    iput p3, p0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 310
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/c/a;Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/google/android/material/c/a;->a(Landroid/view/View;)V

    return-void
.end method

.method private b(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 456
    invoke-direct {p0}, Lcom/google/android/material/c/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 461
    invoke-virtual {p0, v0}, Lcom/google/android/material/c/a;->setClipChildren(Z)V

    .line 462
    invoke-virtual {p0, v0}, Lcom/google/android/material/c/a;->setClipToPadding(Z)V

    .line 464
    iget-object v0, p0, Lcom/google/android/material/c/a;->q:Lcom/google/android/material/b/a;

    .line 465
    invoke-direct {p0, p1}, Lcom/google/android/material/c/a;->d(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object p0

    .line 464
    invoke-static {v0, p1, p0}, Lcom/google/android/material/b/b;->a(Lcom/google/android/material/b/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_1
    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 470
    invoke-direct {p0}, Lcom/google/android/material/c/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 475
    invoke-virtual {p0, v0}, Lcom/google/android/material/c/a;->setClipChildren(Z)V

    .line 476
    invoke-virtual {p0, v0}, Lcom/google/android/material/c/a;->setClipToPadding(Z)V

    .line 478
    iget-object v0, p0, Lcom/google/android/material/c/a;->q:Lcom/google/android/material/b/a;

    .line 479
    invoke-direct {p0, p1}, Lcom/google/android/material/c/a;->d(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    .line 478
    invoke-static {v0, p1, v1}, Lcom/google/android/material/b/b;->b(Lcom/google/android/material/b/a;Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_1
    const/4 p1, 0x0

    .line 481
    iput-object p1, p0, Lcom/google/android/material/c/a;->q:Lcom/google/android/material/b/a;

    return-void
.end method

.method private d(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 2
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 487
    sget-boolean p1, Lcom/google/android/material/b/b;->a:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/widget/FrameLayout;

    :cond_0
    return-object v1

    :cond_1
    return-object v1
.end method

.method private d()Z
    .locals 0

    .line 444
    iget-object p0, p0, Lcom/google/android/material/c/a;->q:Lcom/google/android/material/b/a;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/j;I)V
    .locals 0
    .param p1    # Landroidx/appcompat/view/menu/j;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 134
    iput-object p1, p0, Lcom/google/android/material/c/a;->m:Landroidx/appcompat/view/menu/j;

    .line 135
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/c/a;->setCheckable(Z)V

    .line 136
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/c/a;->setChecked(Z)V

    .line 137
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/c/a;->setEnabled(Z)V

    .line 138
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/c/a;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/c/a;->setTitle(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->getItemId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/c/a;->setId(I)V

    .line 141
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 142
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/c/a;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 145
    :cond_0
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 146
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    .line 148
    :goto_0
    invoke-static {p0, p2}, Landroidx/appcompat/widget/bc;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/c/a;->setVisibility(I)V

    return-void
.end method

.method public a(ZC)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method b()V
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/google/android/material/c/a;->c(Landroid/view/View;)V

    return-void
.end method

.method public c()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method getBadge()Lcom/google/android/material/b/a;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 436
    iget-object p0, p0, Lcom/google/android/material/c/a;->q:Lcom/google/android/material/b/a;

    return-object p0
.end method

.method public getItemData()Landroidx/appcompat/view/menu/j;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/google/android/material/c/a;->m:Landroidx/appcompat/view/menu/j;

    return-object p0
.end method

.method public getItemPosition()I
    .locals 0

    .line 157
    iget p0, p0, Lcom/google/android/material/c/a;->l:I

    return p0
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 336
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 337
    iget-object v0, p0, Lcom/google/android/material/c/a;->m:Landroidx/appcompat/view/menu/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/c/a;->m:Landroidx/appcompat/view/menu/j;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/j;->isCheckable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/c/a;->m:Landroidx/appcompat/view/menu/j;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 338
    sget-object p0, Lcom/google/android/material/c/a;->b:[I

    invoke-static {p1, p0}, Lcom/google/android/material/c/a;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 281
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 282
    iget-object v0, p0, Lcom/google/android/material/c/a;->q:Lcom/google/android/material/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/c/a;->q:Lcom/google/android/material/b/a;

    invoke-virtual {v0}, Lcom/google/android/material/b/a;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/google/android/material/c/a;->m:Landroidx/appcompat/view/menu/j;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/j;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 284
    iget-object v1, p0, Lcom/google/android/material/c/a;->m:Landroidx/appcompat/view/menu/j;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/j;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/google/android/material/c/a;->m:Landroidx/appcompat/view/menu/j;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/j;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 287
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/material/c/a;->q:Lcom/google/android/material/b/a;

    .line 288
    invoke-virtual {v0}, Lcom/google/android/material/b/a;->j()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 287
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 290
    :cond_1
    invoke-static {p1}, Landroidx/core/n/a/d;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/n/a/d;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 295
    invoke-virtual {p0}, Lcom/google/android/material/c/a;->getItemPosition()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 298
    invoke-virtual {p0}, Lcom/google/android/material/c/a;->isSelected()Z

    move-result v5

    .line 292
    invoke-static/range {v0 .. v5}, Landroidx/core/n/a/d$c;->a(IIIIZZ)Landroidx/core/n/a/d$c;

    move-result-object v0

    .line 291
    invoke-virtual {p1, v0}, Landroidx/core/n/a/d;->c(Ljava/lang/Object;)V

    .line 299
    invoke-virtual {p0}, Lcom/google/android/material/c/a;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p1, v0}, Landroidx/core/n/a/d;->h(Z)V

    .line 301
    sget-object v0, Landroidx/core/n/a/d$a;->e:Landroidx/core/n/a/d$a;

    invoke-virtual {p1, v0}, Landroidx/core/n/a/d;->b(Landroidx/core/n/a/d$a;)Z

    .line 303
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/c/a;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/google/android/material/a$m;->item_view_role_description:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->j(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setBadge(Lcom/google/android/material/b/a;)V
    .locals 0
    .param p1    # Lcom/google/android/material/b/a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 428
    iput-object p1, p0, Lcom/google/android/material/c/a;->q:Lcom/google/android/material/b/a;

    .line 429
    iget-object p1, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 430
    iget-object p1, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/google/android/material/c/a;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 203
    invoke-virtual {p0}, Lcom/google/android/material/c/a;->refreshDrawableState()V

    return-void
.end method

.method public setChecked(Z)V
    .locals 7

    .line 208
    iget-object v0, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 209
    iget-object v0, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 210
    iget-object v0, p0, Lcom/google/android/material/c/a;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/c/a;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotX(F)V

    .line 211
    iget-object v0, p0, Lcom/google/android/material/c/a;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/android/material/c/a;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    .line 213
    iget v0, p0, Lcom/google/android/material/c/a;->g:I

    const/16 v1, 0x11

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const/16 v4, 0x31

    const/4 v5, 0x4

    const/high16 v6, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 263
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    iget v2, p0, Lcom/google/android/material/c/a;->c:I

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/material/c/a;->a(Landroid/view/View;II)V

    .line 264
    iget-object v0, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/google/android/material/c/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_1
    if-eqz p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/c/a;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/c/a;->d:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/material/c/a;->a(Landroid/view/View;II)V

    .line 253
    iget-object v0, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    invoke-direct {p0, v0, v6, v6, v3}, Lcom/google/android/material/c/a;->a(Landroid/view/View;FFI)V

    .line 254
    iget-object v0, p0, Lcom/google/android/material/c/a;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/c/a;->e:F

    iget v2, p0, Lcom/google/android/material/c/a;->e:F

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/google/android/material/c/a;->a(Landroid/view/View;FFI)V

    goto/16 :goto_2

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/c/a;->c:I

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/material/c/a;->a(Landroid/view/View;II)V

    .line 257
    iget-object v0, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/c/a;->f:F

    iget v2, p0, Lcom/google/android/material/c/a;->f:F

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/google/android/material/c/a;->a(Landroid/view/View;FFI)V

    .line 258
    iget-object v0, p0, Lcom/google/android/material/c/a;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v6, v6, v3}, Lcom/google/android/material/c/a;->a(Landroid/view/View;FFI)V

    goto/16 :goto_2

    :pswitch_2
    if-eqz p1, :cond_1

    .line 240
    iget-object v0, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/c/a;->c:I

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/material/c/a;->a(Landroid/view/View;II)V

    .line 241
    iget-object v0, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    invoke-direct {p0, v0, v6, v6, v3}, Lcom/google/android/material/c/a;->a(Landroid/view/View;FFI)V

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    iget v3, p0, Lcom/google/android/material/c/a;->c:I

    invoke-direct {p0, v0, v3, v1}, Lcom/google/android/material/c/a;->a(Landroid/view/View;II)V

    .line 244
    iget-object v0, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2, v2, v5}, Lcom/google/android/material/c/a;->a(Landroid/view/View;FFI)V

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/c/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 215
    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/material/c/a;->h:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 217
    iget-object v0, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/c/a;->c:I

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/material/c/a;->a(Landroid/view/View;II)V

    .line 218
    iget-object v0, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    invoke-direct {p0, v0, v6, v6, v3}, Lcom/google/android/material/c/a;->a(Landroid/view/View;FFI)V

    goto :goto_1

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    iget v3, p0, Lcom/google/android/material/c/a;->c:I

    invoke-direct {p0, v0, v3, v1}, Lcom/google/android/material/c/a;->a(Landroid/view/View;II)V

    .line 221
    iget-object v0, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2, v2, v5}, Lcom/google/android/material/c/a;->a(Landroid/view/View;FFI)V

    .line 223
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/c/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 226
    iget-object v0, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/c/a;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/c/a;->d:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/material/c/a;->a(Landroid/view/View;II)V

    .line 228
    iget-object v0, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    invoke-direct {p0, v0, v6, v6, v3}, Lcom/google/android/material/c/a;->a(Landroid/view/View;FFI)V

    .line 229
    iget-object v0, p0, Lcom/google/android/material/c/a;->j:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/c/a;->e:F

    iget v2, p0, Lcom/google/android/material/c/a;->e:F

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/google/android/material/c/a;->a(Landroid/view/View;FFI)V

    goto :goto_2

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    iget v1, p0, Lcom/google/android/material/c/a;->c:I

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/material/c/a;->a(Landroid/view/View;II)V

    .line 232
    iget-object v0, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    iget v1, p0, Lcom/google/android/material/c/a;->f:F

    iget v2, p0, Lcom/google/android/material/c/a;->f:F

    invoke-direct {p0, v0, v1, v2, v5}, Lcom/google/android/material/c/a;->a(Landroid/view/View;FFI)V

    .line 233
    iget-object v0, p0, Lcom/google/android/material/c/a;->j:Landroid/widget/TextView;

    invoke-direct {p0, v0, v6, v6, v3}, Lcom/google/android/material/c/a;->a(Landroid/view/View;FFI)V

    .line 272
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/c/a;->refreshDrawableState()V

    .line 276
    invoke-virtual {p0, p1}, Lcom/google/android/material/c/a;->setSelected(Z)V

    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 321
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 322
    iget-object v0, p0, Lcom/google/android/material/c/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 323
    iget-object v0, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 324
    iget-object v0, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/google/android/material/c/a;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-static {p1, v0}, Landroidx/core/n/aa;->a(Landroid/content/Context;I)Landroidx/core/n/aa;

    move-result-object p1

    .line 327
    invoke-static {p0, p1}, Landroidx/core/n/af;->a(Landroid/view/View;Landroidx/core/n/aa;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 330
    invoke-static {p0, p1}, Landroidx/core/n/af;->a(Landroid/view/View;Landroidx/core/n/aa;)V

    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 348
    iget-object v0, p0, Lcom/google/android/material/c/a;->o:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    .line 353
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/c/a;->o:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    .line 355
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 358
    iput-object p1, p0, Lcom/google/android/material/c/a;->p:Landroid/graphics/drawable/Drawable;

    .line 359
    iget-object v0, p0, Lcom/google/android/material/c/a;->n:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/google/android/material/c/a;->p:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/material/c/a;->n:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 363
    :cond_2
    iget-object p0, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 386
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 387
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 388
    iget-object p0, p0, Lcom/google/android/material/c/a;->i:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 377
    iput-object p1, p0, Lcom/google/android/material/c/a;->n:Landroid/content/res/ColorStateList;

    .line 378
    iget-object p1, p0, Lcom/google/android/material/c/a;->m:Landroidx/appcompat/view/menu/j;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/c/a;->p:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 379
    iget-object p1, p0, Lcom/google/android/material/c/a;->p:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/google/android/material/c/a;->n:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 380
    iget-object p0, p0, Lcom/google/android/material/c/a;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setItemBackground(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/c/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/b/c;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 417
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/c/a;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 421
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 424
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/n/af;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemPosition(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/google/android/material/c/a;->l:I

    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 1

    .line 172
    iget v0, p0, Lcom/google/android/material/c/a;->g:I

    if-eq v0, p1, :cond_1

    .line 173
    iput p1, p0, Lcom/google/android/material/c/a;->g:I

    .line 175
    iget-object p1, p0, Lcom/google/android/material/c/a;->m:Landroidx/appcompat/view/menu/j;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/google/android/material/c/a;->m:Landroidx/appcompat/view/menu/j;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/c/a;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public setShifting(Z)V
    .locals 1

    .line 161
    iget-boolean v0, p0, Lcom/google/android/material/c/a;->h:Z

    if-eq v0, p1, :cond_1

    .line 162
    iput-boolean p1, p0, Lcom/google/android/material/c/a;->h:Z

    .line 164
    iget-object p1, p0, Lcom/google/android/material/c/a;->m:Landroidx/appcompat/view/menu/j;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 166
    iget-object p1, p0, Lcom/google/android/material/c/a;->m:Landroidx/appcompat/view/menu/j;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/c/a;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public setTextAppearanceActive(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param

    .line 397
    iget-object v0, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/core/widget/m;->a(Landroid/widget/TextView;I)V

    .line 398
    iget-object p1, p0, Lcom/google/android/material/c/a;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/c/a;->a(FF)V

    return-void
.end method

.method public setTextAppearanceInactive(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param

    .line 392
    iget-object v0, p0, Lcom/google/android/material/c/a;->j:Landroid/widget/TextView;

    invoke-static {v0, p1}, Landroidx/core/widget/m;->a(Landroid/widget/TextView;I)V

    .line 393
    iget-object p1, p0, Lcom/google/android/material/c/a;->j:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/c/a;->a(FF)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 403
    iget-object v0, p0, Lcom/google/android/material/c/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 404
    iget-object p0, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/google/android/material/c/a;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/google/android/material/c/a;->k:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/google/android/material/c/a;->m:Landroidx/appcompat/view/menu/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/c/a;->m:Landroidx/appcompat/view/menu/j;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/j;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 192
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/c/a;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/c/a;->m:Landroidx/appcompat/view/menu/j;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/material/c/a;->m:Landroidx/appcompat/view/menu/j;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/j;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/material/c/a;->m:Landroidx/appcompat/view/menu/j;

    .line 197
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p1

    .line 198
    :cond_3
    :goto_0
    invoke-static {p0, p1}, Landroidx/appcompat/widget/bc;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void
.end method
