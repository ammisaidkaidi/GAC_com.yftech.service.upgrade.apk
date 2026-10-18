.class public Lcom/google/android/material/m/a;
.super Landroidx/appcompat/widget/p;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/t/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/m/a$a;
    }
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private final b:Lcom/google/android/material/t/p;

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/RectF;

.field private final e:Landroid/graphics/Paint;

.field private final f:Landroid/graphics/Paint;

.field private final g:Landroid/graphics/Path;

.field private h:Landroid/content/res/ColorStateList;

.field private i:Lcom/google/android/material/t/o;

.field private j:F
    .annotation build Landroidx/annotation/p;
    .end annotation
.end field

.field private k:Landroid/graphics/Path;

.field private final l:Lcom/google/android/material/t/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    sget v0, Lcom/google/android/material/a$n;->Widget_MaterialComponents_ShapeableImageView:I

    sput v0, Lcom/google/android/material/m/a;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/m/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/m/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 83
    sget v0, Lcom/google/android/material/m/a;->a:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/p;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance p1, Lcom/google/android/material/t/p;

    invoke-direct {p1}, Lcom/google/android/material/t/p;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/m/a;->b:Lcom/google/android/material/t/p;

    .line 66
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/m/a;->g:Landroid/graphics/Path;

    .line 85
    invoke-virtual {p0}, Lcom/google/android/material/m/a;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 87
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/m/a;->f:Landroid/graphics/Paint;

    .line 88
    iget-object v0, p0, Lcom/google/android/material/m/a;->f:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v0, p0, Lcom/google/android/material/m/a;->f:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/google/android/material/m/a;->f:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 91
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/m/a;->c:Landroid/graphics/RectF;

    .line 92
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/m/a;->d:Landroid/graphics/RectF;

    .line 93
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/m/a;->k:Landroid/graphics/Path;

    .line 94
    sget-object v0, Lcom/google/android/material/a$o;->ShapeableImageView:[I

    sget v2, Lcom/google/android/material/m/a;->a:I

    .line 95
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 98
    sget v2, Lcom/google/android/material/a$o;->ShapeableImageView_strokeColor:I

    .line 99
    invoke-static {p1, v0, v2}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/m/a;->h:Landroid/content/res/ColorStateList;

    .line 102
    sget v2, Lcom/google/android/material/a$o;->ShapeableImageView_strokeWidth:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/m/a;->j:F

    .line 104
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/m/a;->e:Landroid/graphics/Paint;

    .line 105
    iget-object v0, p0, Lcom/google/android/material/m/a;->e:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/material/m/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    sget v0, Lcom/google/android/material/m/a;->a:I

    .line 108
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/t/o;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/t/o$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/t/o$a;->a()Lcom/google/android/material/t/o;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/m/a;->i:Lcom/google/android/material/t/o;

    .line 109
    new-instance p1, Lcom/google/android/material/t/j;

    iget-object p2, p0, Lcom/google/android/material/m/a;->i:Lcom/google/android/material/t/o;

    invoke-direct {p1, p2}, Lcom/google/android/material/t/j;-><init>(Lcom/google/android/material/t/o;)V

    iput-object p1, p0, Lcom/google/android/material/m/a;->l:Lcom/google/android/material/t/j;

    .line 110
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    .line 111
    new-instance p1, Lcom/google/android/material/m/a$a;

    invoke-direct {p1, p0}, Lcom/google/android/material/m/a$a;-><init>(Lcom/google/android/material/m/a;)V

    invoke-virtual {p0, p1}, Lcom/google/android/material/m/a;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/m/a;)Lcom/google/android/material/t/o;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/android/material/m/a;->i:Lcom/google/android/material/t/o;

    return-object p0
.end method

.method private a(II)V
    .locals 5

    .line 155
    iget-object v0, p0, Lcom/google/android/material/m/a;->c:Landroid/graphics/RectF;

    .line 156
    invoke-virtual {p0}, Lcom/google/android/material/m/a;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/material/m/a;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/google/android/material/m/a;->getPaddingRight()I

    move-result v3

    sub-int v3, p1, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/google/android/material/m/a;->getPaddingBottom()I

    move-result v4

    sub-int v4, p2, v4

    int-to-float v4, v4

    .line 155
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 157
    iget-object v0, p0, Lcom/google/android/material/m/a;->b:Lcom/google/android/material/t/p;

    iget-object v1, p0, Lcom/google/android/material/m/a;->i:Lcom/google/android/material/t/o;

    iget-object v2, p0, Lcom/google/android/material/m/a;->c:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/android/material/m/a;->g:Landroid/graphics/Path;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/android/material/t/p;->a(Lcom/google/android/material/t/o;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 159
    iget-object v0, p0, Lcom/google/android/material/m/a;->k:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 160
    iget-object v0, p0, Lcom/google/android/material/m/a;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/m/a;->g:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 162
    iget-object v0, p0, Lcom/google/android/material/m/a;->d:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 163
    iget-object p1, p0, Lcom/google/android/material/m/a;->k:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/google/android/material/m/a;->d:Landroid/graphics/RectF;

    sget-object p2, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, p0, p2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/google/android/material/m/a;->h:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/m/a;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/m/a;->j:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 172
    iget-object v0, p0, Lcom/google/android/material/m/a;->h:Landroid/content/res/ColorStateList;

    .line 173
    invoke-virtual {p0}, Lcom/google/android/material/m/a;->getDrawableState()[I

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/m/a;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 175
    iget v1, p0, Lcom/google/android/material/m/a;->j:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    if-eqz v0, :cond_1

    .line 176
    iget-object v1, p0, Lcom/google/android/material/m/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v0, p0, Lcom/google/android/material/m/a;->g:Landroid/graphics/Path;

    iget-object p0, p0, Lcom/google/android/material/m/a;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/google/android/material/m/a;)Landroid/graphics/RectF;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/android/material/m/a;->c:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/m/a;)Lcom/google/android/material/t/j;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/google/android/material/m/a;->l:Lcom/google/android/material/t/j;

    return-object p0
.end method


# virtual methods
.method public getShapeAppearanceModel()Lcom/google/android/material/t/o;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 151
    iget-object p0, p0, Lcom/google/android/material/m/a;->i:Lcom/google/android/material/t/o;

    return-object p0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 203
    iget-object p0, p0, Lcom/google/android/material/m/a;->h:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getStrokeWidth()F
    .locals 0
    .annotation build Landroidx/annotation/p;
    .end annotation

    .line 245
    iget p0, p0, Lcom/google/android/material/m/a;->j:F

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 123
    invoke-super {p0}, Landroidx/appcompat/widget/p;->onAttachedToWindow()V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/m/a;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/m/a;->setLayerType(ILandroid/graphics/Paint;)V

    .line 118
    invoke-super {p0}, Landroidx/appcompat/widget/p;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 129
    invoke-super {p0, p1}, Landroidx/appcompat/widget/p;->onDraw(Landroid/graphics/Canvas;)V

    .line 130
    iget-object v0, p0, Lcom/google/android/material/m/a;->k:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/m/a;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 131
    invoke-direct {p0, p1}, Lcom/google/android/material/m/a;->a(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/p;->onSizeChanged(IIII)V

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/m/a;->a(II)V

    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/t/o;)V
    .locals 1
    .param p1    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 142
    iput-object p1, p0, Lcom/google/android/material/m/a;->i:Lcom/google/android/material/t/o;

    .line 143
    iget-object v0, p0, Lcom/google/android/material/m/a;->l:Lcom/google/android/material/t/j;

    invoke-virtual {v0, p1}, Lcom/google/android/material/t/j;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    .line 144
    invoke-virtual {p0}, Lcom/google/android/material/m/a;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/google/android/material/m/a;->getHeight()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/m/a;->a(II)V

    .line 145
    invoke-virtual {p0}, Lcom/google/android/material/m/a;->invalidate()V

    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 249
    iput-object p1, p0, Lcom/google/android/material/m/a;->h:Landroid/content/res/ColorStateList;

    .line 250
    invoke-virtual {p0}, Lcom/google/android/material/m/a;->invalidate()V

    return-void
.end method

.method public setStrokeColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/m;
        .end annotation
    .end param

    .line 191
    invoke-virtual {p0}, Lcom/google/android/material/m/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/m/a;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param

    .line 216
    iget v0, p0, Lcom/google/android/material/m/a;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 217
    iput p1, p0, Lcom/google/android/material/m/a;->j:F

    .line 218
    invoke-virtual {p0}, Lcom/google/android/material/m/a;->invalidate()V

    :cond_0
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 232
    invoke-virtual {p0}, Lcom/google/android/material/m/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/m/a;->setStrokeWidth(F)V

    return-void
.end method
