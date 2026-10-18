.class public Lcom/google/android/material/y/a;
.super Lcom/google/android/material/t/j;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/q$a;


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
    }
.end annotation


# static fields
.field private static final d:I
    .annotation build Landroidx/annotation/at;
    .end annotation
.end field

.field private static final e:I
    .annotation build Landroidx/annotation/f;
    .end annotation
.end field


# instance fields
.field private f:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private final g:Landroid/content/Context;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final h:Landroid/graphics/Paint$FontMetrics;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private final i:Lcom/google/android/material/internal/q;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final j:Landroid/view/View$OnLayoutChangeListener;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final k:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    sget v0, Lcom/google/android/material/a$n;->Widget_MaterialComponents_Tooltip:I

    sput v0, Lcom/google/android/material/y/a;->d:I

    .line 66
    sget v0, Lcom/google/android/material/a$c;->tooltipStyle:I

    sput v0, Lcom/google/android/material/y/a;->e:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/f;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param

    .line 133
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/t/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/y/a;->h:Landroid/graphics/Paint$FontMetrics;

    .line 72
    new-instance p2, Lcom/google/android/material/internal/q;

    invoke-direct {p2, p0}, Lcom/google/android/material/internal/q;-><init>(Lcom/google/android/material/internal/q$a;)V

    iput-object p2, p0, Lcom/google/android/material/y/a;->i:Lcom/google/android/material/internal/q;

    .line 76
    new-instance p2, Lcom/google/android/material/y/a$1;

    invoke-direct {p2, p0}, Lcom/google/android/material/y/a$1;-><init>(Lcom/google/android/material/y/a;)V

    iput-object p2, p0, Lcom/google/android/material/y/a;->j:Landroid/view/View$OnLayoutChangeListener;

    .line 94
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/y/a;->k:Landroid/graphics/Rect;

    .line 134
    iput-object p1, p0, Lcom/google/android/material/y/a;->g:Landroid/content/Context;

    .line 135
    iget-object p2, p0, Lcom/google/android/material/y/a;->i:Lcom/google/android/material/internal/q;

    invoke-virtual {p2}, Lcom/google/android/material/internal/q;->a()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p2, Landroid/text/TextPaint;->density:F

    .line 136
    iget-object p0, p0, Lcom/google/android/material/y/a;->i:Lcom/google/android/material/internal/q;

    invoke-virtual {p0}, Lcom/google/android/material/internal/q;->a()Landroid/text/TextPaint;

    move-result-object p0

    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private a(Landroid/graphics/Rect;)F
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 469
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Lcom/google/android/material/y/a;->k()F

    move-result p0

    sub-float/2addr p1, p0

    return p1
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/material/y/a;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 120
    sget v0, Lcom/google/android/material/y/a;->e:I

    sget v1, Lcom/google/android/material/y/a;->d:I

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/material/y/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/y/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/y/a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/f;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 110
    new-instance v0, Lcom/google/android/material/y/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/y/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 111
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/material/y/a;->a(Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 444
    iget-object v0, p0, Lcom/google/android/material/y/a;->f:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 449
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/y/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 450
    invoke-direct {p0, v0}, Lcom/google/android/material/y/a;->a(Landroid/graphics/Rect;)F

    move-result v1

    float-to-int v1, v1

    .line 452
    iget-object v2, p0, Lcom/google/android/material/y/a;->i:Lcom/google/android/material/internal/q;

    invoke-virtual {v2}, Lcom/google/android/material/internal/q;->c()Lcom/google/android/material/q/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 453
    iget-object v2, p0, Lcom/google/android/material/y/a;->i:Lcom/google/android/material/internal/q;

    invoke-virtual {v2}, Lcom/google/android/material/internal/q;->a()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/material/y/a;->getState()[I

    move-result-object v3

    iput-object v3, v2, Landroid/text/TextPaint;->drawableState:[I

    .line 454
    iget-object v2, p0, Lcom/google/android/material/y/a;->i:Lcom/google/android/material/internal/q;

    iget-object v3, p0, Lcom/google/android/material/y/a;->g:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/material/internal/q;->a(Landroid/content/Context;)V

    .line 457
    :cond_1
    iget-object v5, p0, Lcom/google/android/material/y/a;->f:Ljava/lang/CharSequence;

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/google/android/material/y/a;->f:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v8, v0

    int-to-float v9, v1

    iget-object p0, p0, Lcom/google/android/material/y/a;->i:Lcom/google/android/material/internal/q;

    invoke-virtual {p0}, Lcom/google/android/material/internal/q;->a()Landroid/text/TextPaint;

    move-result-object v10

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/f;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param

    .line 141
    iget-object v0, p0, Lcom/google/android/material/y/a;->g:Landroid/content/Context;

    sget-object v2, Lcom/google/android/material/a$o;->Tooltip:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 142
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/s;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 145
    iget-object p2, p0, Lcom/google/android/material/y/a;->g:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/google/android/material/a$f;->mtrl_tooltip_arrowSize:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/y/a;->p:I

    .line 147
    invoke-virtual {p0}, Lcom/google/android/material/y/a;->getShapeAppearanceModel()Lcom/google/android/material/t/o;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/t/o;->n()Lcom/google/android/material/t/o$a;

    move-result-object p2

    invoke-direct {p0}, Lcom/google/android/material/y/a;->h()Lcom/google/android/material/t/g;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/material/t/o$a;->e(Lcom/google/android/material/t/g;)Lcom/google/android/material/t/o$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/t/o$a;->a()Lcom/google/android/material/t/o;

    move-result-object p2

    .line 146
    invoke-virtual {p0, p2}, Lcom/google/android/material/y/a;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    .line 149
    sget p2, Lcom/google/android/material/a$o;->Tooltip_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/y/a;->a(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p2, p0, Lcom/google/android/material/y/a;->g:Landroid/content/Context;

    sget p3, Lcom/google/android/material/a$o;->Tooltip_android_textAppearance:I

    .line 151
    invoke-static {p2, p1, p3}, Lcom/google/android/material/q/c;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/q/d;

    move-result-object p2

    .line 150
    invoke-virtual {p0, p2}, Lcom/google/android/material/y/a;->a(Lcom/google/android/material/q/d;)V

    .line 154
    iget-object p2, p0, Lcom/google/android/material/y/a;->g:Landroid/content/Context;

    sget p3, Lcom/google/android/material/a$c;->colorOnBackground:I

    const-class v0, Lcom/google/android/material/y/a;

    .line 156
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {p2, p3, v0}, Lcom/google/android/material/h/a;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result p2

    .line 157
    iget-object p3, p0, Lcom/google/android/material/y/a;->g:Landroid/content/Context;

    const-class v0, Lcom/google/android/material/y/a;

    .line 159
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x1010031

    .line 158
    invoke-static {p3, v1, v0}, Lcom/google/android/material/h/a;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result p3

    const/16 v0, 0xe5

    .line 163
    invoke-static {p3, v0}, Landroidx/core/graphics/e;->c(II)I

    move-result p3

    const/16 v0, 0x99

    .line 164
    invoke-static {p2, v0}, Landroidx/core/graphics/e;->c(II)I

    move-result p2

    .line 162
    invoke-static {p3, p2}, Lcom/google/android/material/h/a;->a(II)I

    move-result p2

    .line 165
    sget p3, Lcom/google/android/material/a$o;->Tooltip_backgroundTint:I

    .line 167
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 166
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 165
    invoke-virtual {p0, p2}, Lcom/google/android/material/y/a;->g(Landroid/content/res/ColorStateList;)V

    .line 169
    iget-object p2, p0, Lcom/google/android/material/y/a;->g:Landroid/content/Context;

    sget p3, Lcom/google/android/material/a$c;->colorSurface:I

    const-class v0, Lcom/google/android/material/y/a;

    .line 172
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-static {p2, p3, v0}, Lcom/google/android/material/h/a;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result p2

    .line 170
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    .line 169
    invoke-virtual {p0, p2}, Lcom/google/android/material/y/a;->h(Landroid/content/res/ColorStateList;)V

    .line 174
    sget p2, Lcom/google/android/material/a$o;->Tooltip_android_padding:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/y/a;->l:I

    .line 175
    sget p2, Lcom/google/android/material/a$o;->Tooltip_android_minWidth:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/y/a;->m:I

    .line 176
    sget p2, Lcom/google/android/material/a$o;->Tooltip_android_minHeight:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/y/a;->n:I

    .line 177
    sget p2, Lcom/google/android/material/a$o;->Tooltip_android_layout_margin:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/y/a;->o:I

    .line 179
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/y/a;Landroid/view/View;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/material/y/a;->c(Landroid/view/View;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Lcom/google/android/material/y/a;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 125
    sget v0, Lcom/google/android/material/y/a;->e:I

    sget v1, Lcom/google/android/material/y/a;->d:I

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/material/y/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/y/a;

    move-result-object p0

    return-object p0
.end method

.method private c(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 418
    new-array v0, v0, [I

    .line 419
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 420
    aget v0, v0, v1

    iput v0, p0, Lcom/google/android/material/y/a;->q:I

    .line 421
    iget-object p0, p0, Lcom/google/android/material/y/a;->k:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method private g()F
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/google/android/material/y/a;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/google/android/material/y/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/y/a;->q:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/y/a;->o:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/google/android/material/y/a;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/google/android/material/y/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/y/a;->q:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/material/y/a;->o:I

    sub-int/2addr v0, p0

    int-to-float p0, v0

    goto :goto_0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/y/a;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/google/android/material/y/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/y/a;->q:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/y/a;->o:I

    add-int/2addr v0, v1

    if-lez v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/google/android/material/y/a;->k:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/google/android/material/y/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/y/a;->q:I

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/google/android/material/y/a;->o:I

    add-int/2addr v0, p0

    int-to-float p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private h()Lcom/google/android/material/t/g;
    .locals 7

    .line 435
    invoke-direct {p0}, Lcom/google/android/material/y/a;->g()F

    move-result v0

    neg-float v0, v0

    .line 437
    invoke-virtual {p0}, Lcom/google/android/material/y/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-double v1, v1

    iget v3, p0, Lcom/google/android/material/y/a;->p:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    double-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    neg-float v2, v1

    .line 438
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 439
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 440
    new-instance v1, Lcom/google/android/material/t/l;

    new-instance v2, Lcom/google/android/material/t/i;

    iget p0, p0, Lcom/google/android/material/y/a;->p:I

    int-to-float p0, p0

    invoke-direct {v2, p0}, Lcom/google/android/material/t/i;-><init>(F)V

    invoke-direct {v1, v2, v0}, Lcom/google/android/material/t/l;-><init>(Lcom/google/android/material/t/g;F)V

    return-object v1
.end method

.method private j()F
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/google/android/material/y/a;->f:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/y/a;->i:Lcom/google/android/material/internal/q;

    iget-object p0, p0, Lcom/google/android/material/y/a;->f:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/internal/q;->a(Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method private k()F
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/google/android/material/y/a;->i:Lcom/google/android/material/internal/q;

    invoke-virtual {v0}, Lcom/google/android/material/internal/q;->a()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/y/a;->h:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 486
    iget-object v0, p0, Lcom/google/android/material/y/a;->h:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object p0, p0, Lcom/google/android/material/y/a;->h:Landroid/graphics/Paint$FontMetrics;

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 189
    iget-object p0, p0, Lcom/google/android/material/y/a;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param

    .line 200
    iget-object v0, p0, Lcom/google/android/material/y/a;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/y/a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 346
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/y/a;->c(Landroid/view/View;)V

    .line 348
    iget-object p0, p0, Lcom/google/android/material/y/a;->j:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public a(Lcom/google/android/material/q/d;)V
    .locals 1
    .param p1    # Lcom/google/android/material/q/d;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 245
    iget-object v0, p0, Lcom/google/android/material/y/a;->i:Lcom/google/android/material/internal/q;

    iget-object p0, p0, Lcom/google/android/material/y/a;->g:Landroid/content/Context;

    invoke-virtual {v0, p1, p0}, Lcom/google/android/material/internal/q;->a(Lcom/google/android/material/q/d;Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 211
    iget-object v0, p0, Lcom/google/android/material/y/a;->f:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iput-object p1, p0, Lcom/google/android/material/y/a;->f:Ljava/lang/CharSequence;

    .line 213
    iget-object p1, p0, Lcom/google/android/material/y/a;->i:Lcom/google/android/material/internal/q;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/q;->a(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/google/android/material/y/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public b()Lcom/google/android/material/q/d;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 225
    iget-object p0, p0, Lcom/google/android/material/y/a;->i:Lcom/google/android/material/internal/q;

    invoke-virtual {p0}, Lcom/google/android/material/internal/q;->c()Lcom/google/android/material/q/d;

    move-result-object p0

    return-object p0
.end method

.method public b(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param

    .line 235
    new-instance v0, Lcom/google/android/material/q/d;

    iget-object v1, p0, Lcom/google/android/material/y/a;->g:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/q/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/y/a;->a(Lcom/google/android/material/q/d;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 360
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/y/a;->j:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public c()I
    .locals 0

    .line 255
    iget p0, p0, Lcom/google/android/material/y/a;->m:I

    return p0
.end method

.method public c(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param

    .line 266
    iput p1, p0, Lcom/google/android/material/y/a;->m:I

    .line 267
    invoke-virtual {p0}, Lcom/google/android/material/y/a;->invalidateSelf()V

    return-void
.end method

.method public d()I
    .locals 0

    .line 277
    iget p0, p0, Lcom/google/android/material/y/a;->n:I

    return p0
.end method

.method public d(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param

    .line 288
    iput p1, p0, Lcom/google/android/material/y/a;->n:I

    .line 289
    invoke-virtual {p0}, Lcom/google/android/material/y/a;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 375
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 379
    invoke-direct {p0}, Lcom/google/android/material/y/a;->g()F

    move-result v0

    .line 383
    iget v1, p0, Lcom/google/android/material/y/a;->p:I

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    iget v3, p0, Lcom/google/android/material/y/a;->p:I

    int-to-double v3, v3

    sub-double/2addr v1, v3

    neg-double v1, v1

    double-to-float v1, v1

    .line 385
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 388
    invoke-super {p0, p1}, Lcom/google/android/material/t/j;->draw(Landroid/graphics/Canvas;)V

    .line 391
    invoke-direct {p0, p1}, Lcom/google/android/material/y/a;->a(Landroid/graphics/Canvas;)V

    .line 393
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public e()I
    .locals 0

    .line 299
    iget p0, p0, Lcom/google/android/material/y/a;->l:I

    return p0
.end method

.method public e(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param

    .line 310
    iput p1, p0, Lcom/google/android/material/y/a;->l:I

    .line 311
    invoke-virtual {p0}, Lcom/google/android/material/y/a;->invalidateSelf()V

    return-void
.end method

.method public f()I
    .locals 0

    .line 321
    iget p0, p0, Lcom/google/android/material/y/a;->o:I

    return p0
.end method

.method public f(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param

    .line 332
    iput p1, p0, Lcom/google/android/material/y/a;->o:I

    .line 333
    invoke-virtual {p0}, Lcom/google/android/material/y/a;->invalidateSelf()V

    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/google/android/material/y/a;->i:Lcom/google/android/material/internal/q;

    invoke-virtual {v0}, Lcom/google/android/material/internal/q;->a()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget p0, p0, Lcom/google/android/material/y/a;->n:I

    int-to-float p0, p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 365
    iget v0, p0, Lcom/google/android/material/y/a;->l:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/google/android/material/y/a;->j()F

    move-result v1

    add-float/2addr v0, v1

    iget p0, p0, Lcom/google/android/material/y/a;->m:I

    int-to-float p0, p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public i()V
    .locals 0

    .line 414
    invoke-virtual {p0}, Lcom/google/android/material/y/a;->invalidateSelf()V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 398
    invoke-super {p0, p1}, Lcom/google/android/material/t/j;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 403
    invoke-virtual {p0}, Lcom/google/android/material/y/a;->getShapeAppearanceModel()Lcom/google/android/material/t/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/t/o;->n()Lcom/google/android/material/t/o$a;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/android/material/y/a;->h()Lcom/google/android/material/t/g;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/t/o$a;->e(Lcom/google/android/material/t/g;)Lcom/google/android/material/t/o$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/t/o$a;->a()Lcom/google/android/material/t/o;

    move-result-object p1

    .line 402
    invoke-virtual {p0, p1}, Lcom/google/android/material/y/a;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    return-void
.end method

.method public onStateChange([I)Z
    .locals 0

    .line 409
    invoke-super {p0, p1}, Lcom/google/android/material/t/j;->onStateChange([I)Z

    move-result p0

    return p0
.end method
