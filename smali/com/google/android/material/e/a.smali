.class public Lcom/google/android/material/e/a;
.super Landroidx/b/a/a;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/google/android/material/t/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/e/a$a;
    }
.end annotation


# static fields
.field private static final e:[I

.field private static final f:[I

.field private static final g:[I

.field private static final h:I

.field private static final i:Ljava/lang/String; = "MaterialCardView"

.field private static final j:Ljava/lang/String; = "androidx.cardview.widget.CardView"


# instance fields
.field private final k:Lcom/google/android/material/e/b;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/google/android/material/e/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 88
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x101009f

    aput v3, v1, v2

    sput-object v1, Lcom/google/android/material/e/a;->e:[I

    .line 89
    new-array v1, v0, [I

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Lcom/google/android/material/e/a;->f:[I

    .line 90
    new-array v0, v0, [I

    sget v1, Lcom/google/android/material/a$c;->state_dragged:I

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/e/a;->g:[I

    .line 92
    sget v0, Lcom/google/android/material/a$n;->Widget_MaterialComponents_CardView:I

    sput v0, Lcom/google/android/material/e/a;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/e/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 113
    sget v0, Lcom/google/android/material/a$c;->materialCardViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/e/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 117
    sget v0, Lcom/google/android/material/e/a;->h:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/b/a/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 104
    iput-boolean p1, p0, Lcom/google/android/material/e/a;->m:Z

    .line 105
    iput-boolean p1, p0, Lcom/google/android/material/e/a;->n:Z

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/google/android/material/e/a;->l:Z

    .line 120
    invoke-virtual {p0}, Lcom/google/android/material/e/a;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 122
    sget-object v3, Lcom/google/android/material/a$o;->MaterialCardView:[I

    sget v5, Lcom/google/android/material/e/a;->h:I

    new-array v6, p1, [I

    move-object v2, p2

    move v4, p3

    .line 123
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/s;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 127
    new-instance v0, Lcom/google/android/material/e/b;

    sget v1, Lcom/google/android/material/e/a;->h:I

    invoke-direct {v0, p0, p2, p3, v1}, Lcom/google/android/material/e/b;-><init>(Lcom/google/android/material/e/a;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    .line 128
    iget-object p2, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-super {p0}, Landroidx/b/a/a;->getCardBackgroundColor()Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/e/b;->b(Landroid/content/res/ColorStateList;)V

    .line 129
    iget-object p2, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    .line 130
    invoke-super {p0}, Landroidx/b/a/a;->getContentPaddingLeft()I

    move-result p3

    .line 131
    invoke-super {p0}, Landroidx/b/a/a;->getContentPaddingTop()I

    move-result v0

    .line 132
    invoke-super {p0}, Landroidx/b/a/a;->getContentPaddingRight()I

    move-result v1

    .line 133
    invoke-super {p0}, Landroidx/b/a/a;->getContentPaddingBottom()I

    move-result v2

    .line 129
    invoke-virtual {p2, p3, v0, v1, v2}, Lcom/google/android/material/e/b;->a(IIII)V

    .line 136
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0, p1}, Lcom/google/android/material/e/b;->a(Landroid/content/res/TypedArray;)V

    .line 138
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/e/a;)F
    .locals 0

    .line 75
    invoke-super {p0}, Landroidx/b/a/a;->getRadius()F

    move-result p0

    return p0
.end method

.method private c()V
    .locals 2

    .line 581
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-le v0, v1, :cond_0

    .line 582
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->t()V

    :cond_0
    return-void
.end method

.method private getBoundsAsRectF()Landroid/graphics/RectF;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 556
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 557
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->e()Lcom/google/android/material/t/j;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    return-object v0
.end method


# virtual methods
.method public a(IIII)V
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/e/b;->a(IIII)V

    return-void
.end method

.method b(IIII)V
    .locals 0

    .line 251
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/b/a/a;->a(IIII)V

    return-void
.end method

.method public e_()Z
    .locals 0

    .line 402
    iget-boolean p0, p0, Lcom/google/android/material/e/a;->n:Z

    return p0
.end method

.method public f_()Z
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->p()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCardBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 287
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->f()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getCardForegroundColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 309
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->g()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method getCardViewRadius()F
    .locals 0

    .line 221
    invoke-static {p0}, Lcom/google/android/material/e/a;->a(Lcom/google/android/material/e/a;)F

    move-result p0

    return p0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 509
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->s()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 540
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->q()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getContentPaddingBottom()I
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->h()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    return p0
.end method

.method public getContentPaddingLeft()I
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->h()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->left:I

    return p0
.end method

.method public getContentPaddingRight()I
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->h()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->right:I

    return p0
.end method

.method public getContentPaddingTop()I
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->h()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public getProgress()F
    .locals 0
    .annotation build Landroidx/annotation/r;
        a = 0.0
        b = 1.0
    .end annotation

    .line 242
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->k()F

    move-result p0

    return p0
.end method

.method public getRadius()F
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->j()F

    move-result p0

    return p0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->r()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/t/o;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 577
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->u()Lcom/google/android/material/t/o;

    move-result-object p0

    return-object p0
.end method

.method public getStrokeColor()I
    .locals 0
    .annotation build Landroidx/annotation/k;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->b()I

    move-result p0

    return p0
.end method

.method public getStrokeColorStateList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 191
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->c()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getStrokeWidth()I
    .locals 0
    .annotation build Landroidx/annotation/p;
    .end annotation

    .line 206
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->d()I

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 0

    .line 377
    iget-boolean p0, p0, Lcom/google/android/material/e/a;->m:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 322
    invoke-super {p0}, Landroidx/b/a/a;->onAttachedToWindow()V

    .line 324
    iget-object v0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {v0}, Lcom/google/android/material/e/b;->e()Lcom/google/android/material/t/j;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/material/t/k;->a(Landroid/view/View;Lcom/google/android/material/t/j;)V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x3

    .line 439
    invoke-super {p0, p1}, Landroidx/b/a/a;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 440
    invoke-virtual {p0}, Lcom/google/android/material/e/a;->f_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    sget-object v0, Lcom/google/android/material/e/a;->e:[I

    invoke-static {p1, v0}, Lcom/google/android/material/e/a;->mergeDrawableStates([I[I)[I

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/e/a;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    sget-object v0, Lcom/google/android/material/e/a;->f:[I

    invoke-static {p1, v0}, Lcom/google/android/material/e/a;->mergeDrawableStates([I[I)[I

    .line 448
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/e/a;->e_()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 449
    sget-object p0, Lcom/google/android/material/e/a;->g:[I

    invoke-static {p1, p0}, Lcom/google/android/material/e/a;->mergeDrawableStates([I[I)[I

    :cond_2
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 152
    invoke-super {p0, p1}, Landroidx/b/a/a;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "androidx.cardview.widget.CardView"

    .line 153
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {p0}, Lcom/google/android/material/e/a;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 143
    invoke-super {p0, p1}, Landroidx/b/a/a;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "androidx.cardview.widget.CardView"

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 145
    invoke-virtual {p0}, Lcom/google/android/material/e/a;->f_()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/google/android/material/e/a;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/google/android/material/e/a;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 159
    invoke-super {p0, p1, p2}, Landroidx/b/a/a;->onMeasure(II)V

    .line 160
    iget-object p1, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/a;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/material/e/a;->getMeasuredHeight()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Lcom/google/android/material/e/b;->a(II)V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 355
    invoke-virtual {p0, p1}, Lcom/google/android/material/e/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 360
    iget-boolean v0, p0, Lcom/google/android/material/e/a;->l:Z

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {v0}, Lcom/google/android/material/e/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MaterialCardView"

    const-string v1, "Setting a custom background is not supported."

    .line 362
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/e/b;->a(Z)V

    .line 365
    :cond_0
    invoke-super {p0, p1}, Landroidx/b/a/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method setBackgroundInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 372
    invoke-super {p0, p1}, Landroidx/b/a/a;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCardBackgroundColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 276
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/e/b;->b(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 281
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0, p1}, Lcom/google/android/material/e/b;->b(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCardElevation(F)V
    .locals 0

    .line 329
    invoke-super {p0, p1}, Landroidx/b/a/a;->setCardElevation(F)V

    .line 330
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->l()V

    return-void
.end method

.method public setCardForegroundColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 298
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0, p1}, Lcom/google/android/material/e/b;->c(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0, p1}, Lcom/google/android/material/e/b;->b(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/google/android/material/e/a;->m:Z

    if-eq v0, p1, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/google/android/material/e/a;->toggle()V

    :cond_0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 529
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0, p1}, Lcom/google/android/material/e/b;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param

    .line 519
    iget-object v0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/a;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/e/b;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 551
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0, p1}, Lcom/google/android/material/e/b;->e(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 314
    invoke-super {p0, p1}, Landroidx/b/a/a;->setClickable(Z)V

    .line 315
    iget-object p1, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    if-eqz p1, :cond_0

    .line 316
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->i()V

    :cond_0
    return-void
.end method

.method public setDragged(Z)V
    .locals 1

    .line 393
    iget-boolean v0, p0, Lcom/google/android/material/e/a;->n:Z

    if-eq v0, p1, :cond_0

    .line 394
    iput-boolean p1, p0, Lcom/google/android/material/e/a;->n:Z

    .line 395
    invoke-virtual {p0}, Lcom/google/android/material/e/a;->refreshDrawableState()V

    .line 396
    invoke-direct {p0}, Lcom/google/android/material/e/a;->c()V

    .line 397
    invoke-virtual {p0}, Lcom/google/android/material/e/a;->invalidate()V

    :cond_0
    return-void
.end method

.method public setMaxCardElevation(F)V
    .locals 0

    .line 335
    invoke-super {p0, p1}, Landroidx/b/a/a;->setMaxCardElevation(F)V

    .line 336
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->m()V

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/material/e/a$a;)V
    .locals 0
    .param p1    # Lcom/google/android/material/e/a$a;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 461
    iput-object p1, p0, Lcom/google/android/material/e/a;->o:Lcom/google/android/material/e/a$a;

    return-void
.end method

.method public setPreventCornerOverlap(Z)V
    .locals 0

    .line 348
    invoke-super {p0, p1}, Landroidx/b/a/a;->setPreventCornerOverlap(Z)V

    .line 349
    iget-object p1, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p1}, Lcom/google/android/material/e/b;->m()V

    .line 350
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->o()V

    return-void
.end method

.method public setProgress(F)V
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/r;
            a = 0.0
            b = 1.0
        .end annotation
    .end param

    .line 231
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0, p1}, Lcom/google/android/material/e/b;->b(F)V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 211
    invoke-super {p0, p1}, Landroidx/b/a/a;->setRadius(F)V

    .line 212
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0, p1}, Lcom/google/android/material/e/b;->a(F)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 473
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0, p1}, Lcom/google/android/material/e/b;->d(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/m;
        .end annotation
    .end param

    .line 485
    iget-object v0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    .line 486
    invoke-virtual {p0}, Lcom/google/android/material/e/a;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 485
    invoke-virtual {v0, p0}, Lcom/google/android/material/e/b;->d(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/t/o;)V
    .locals 2
    .param p1    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 563
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 564
    invoke-direct {p0}, Lcom/google/android/material/e/a;->getBoundsAsRectF()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/t/o;->a(Landroid/graphics/RectF;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/e/a;->setClipToOutline(Z)V

    .line 566
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0, p1}, Lcom/google/android/material/e/b;->a(Lcom/google/android/material/t/o;)V

    return-void
.end method

.method public setStrokeColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 169
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/e/b;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0, p1}, Lcom/google/android/material/e/b;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param

    .line 200
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0, p1}, Lcom/google/android/material/e/b;->a(I)V

    return-void
.end method

.method public setUseCompatPadding(Z)V
    .locals 0

    .line 341
    invoke-super {p0, p1}, Landroidx/b/a/a;->setUseCompatPadding(Z)V

    .line 342
    iget-object p1, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p1}, Lcom/google/android/material/e/b;->m()V

    .line 343
    iget-object p0, p0, Lcom/google/android/material/e/a;->k:Lcom/google/android/material/e/b;

    invoke-virtual {p0}, Lcom/google/android/material/e/b;->o()V

    return-void
.end method

.method public toggle()V
    .locals 2

    .line 427
    invoke-virtual {p0}, Lcom/google/android/material/e/a;->f_()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/e/a;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-boolean v0, p0, Lcom/google/android/material/e/a;->m:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/material/e/a;->m:Z

    .line 429
    invoke-virtual {p0}, Lcom/google/android/material/e/a;->refreshDrawableState()V

    .line 430
    invoke-direct {p0}, Lcom/google/android/material/e/a;->c()V

    .line 431
    iget-object v0, p0, Lcom/google/android/material/e/a;->o:Lcom/google/android/material/e/a$a;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/google/android/material/e/a;->o:Lcom/google/android/material/e/a$a;

    iget-boolean v1, p0, Lcom/google/android/material/e/a;->m:Z

    invoke-interface {v0, p0, v1}, Lcom/google/android/material/e/a$a;->a(Lcom/google/android/material/e/a;Z)V

    :cond_0
    return-void
.end method
