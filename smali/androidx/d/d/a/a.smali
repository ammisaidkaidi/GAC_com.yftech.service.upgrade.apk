.class public Landroidx/d/d/a/a;
.super Landroidx/appcompat/widget/n;
.source "SourceFile"


# instance fields
.field a:Landroid/view/ViewOutlineProvider;

.field b:Landroid/graphics/RectF;

.field c:[Landroid/graphics/drawable/Drawable;

.field d:Landroid/graphics/drawable/LayerDrawable;

.field private e:Landroidx/d/d/a/b$a;

.field private f:F

.field private g:F

.field private h:F

.field private i:Landroid/graphics/Path;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 95
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/n;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Landroidx/d/d/a/b$a;

    invoke-direct {v0}, Landroidx/d/d/a/b$a;-><init>()V

    iput-object v0, p0, Landroidx/d/d/a/a;->e:Landroidx/d/d/a/b$a;

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Landroidx/d/d/a/a;->f:F

    .line 84
    iput v0, p0, Landroidx/d/d/a/a;->g:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 85
    iput v0, p0, Landroidx/d/d/a/a;->h:F

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Landroidx/d/d/a/a;->j:Z

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0}, Landroidx/d/d/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 100
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    new-instance v0, Landroidx/d/d/a/b$a;

    invoke-direct {v0}, Landroidx/d/d/a/b$a;-><init>()V

    iput-object v0, p0, Landroidx/d/d/a/a;->e:Landroidx/d/d/a/b$a;

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Landroidx/d/d/a/a;->f:F

    .line 84
    iput v0, p0, Landroidx/d/d/a/a;->g:F

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 85
    iput v0, p0, Landroidx/d/d/a/a;->h:F

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Landroidx/d/d/a/a;->j:Z

    .line 101
    invoke-direct {p0, p1, p2}, Landroidx/d/d/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    new-instance p3, Landroidx/d/d/a/b$a;

    invoke-direct {p3}, Landroidx/d/d/a/b$a;-><init>()V

    iput-object p3, p0, Landroidx/d/d/a/a;->e:Landroidx/d/d/a/b$a;

    const/4 p3, 0x0

    .line 83
    iput p3, p0, Landroidx/d/d/a/a;->f:F

    .line 84
    iput p3, p0, Landroidx/d/d/a/a;->g:F

    const/high16 p3, 0x7fc00000    # Float.NaN

    .line 85
    iput p3, p0, Landroidx/d/d/a/a;->h:F

    const/4 p3, 0x1

    .line 92
    iput-boolean p3, p0, Landroidx/d/d/a/a;->j:Z

    .line 106
    invoke-direct {p0, p1, p2}, Landroidx/d/d/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Landroidx/d/d/a/a;)F
    .locals 0

    .line 81
    iget p0, p0, Landroidx/d/d/a/a;->g:F

    return p0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 p1, 0x0

    .line 110
    invoke-virtual {p0, p1, p1, p1, p1}, Landroidx/d/d/a/a;->setPadding(IIII)V

    if-eqz p2, :cond_8

    .line 112
    invoke-virtual {p0}, Landroidx/d/d/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/d/e/m$m;->ImageFilterView:[I

    .line 113
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 114
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 115
    sget v1, Landroidx/d/e/m$m;->ImageFilterView_altSrc:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v2, p1

    :goto_0
    if-ge v2, v0, :cond_7

    .line 118
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 119
    sget v4, Landroidx/d/e/m$m;->ImageFilterView_crossfade:I

    const/4 v5, 0x0

    if-ne v3, v4, :cond_0

    .line 120
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/d/d/a/a;->f:F

    goto :goto_1

    .line 121
    :cond_0
    sget v4, Landroidx/d/e/m$m;->ImageFilterView_warmth:I

    if-ne v3, v4, :cond_1

    .line 122
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/d/d/a/a;->setWarmth(F)V

    goto :goto_1

    .line 123
    :cond_1
    sget v4, Landroidx/d/e/m$m;->ImageFilterView_saturation:I

    if-ne v3, v4, :cond_2

    .line 124
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/d/d/a/a;->setSaturation(F)V

    goto :goto_1

    .line 125
    :cond_2
    sget v4, Landroidx/d/e/m$m;->ImageFilterView_contrast:I

    if-ne v3, v4, :cond_3

    .line 126
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/d/d/a/a;->setContrast(F)V

    goto :goto_1

    .line 127
    :cond_3
    sget v4, Landroidx/d/e/m$m;->ImageFilterView_round:I

    const/16 v6, 0x15

    if-ne v3, v4, :cond_4

    .line 128
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_6

    .line 129
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/d/d/a/a;->setRound(F)V

    goto :goto_1

    .line 131
    :cond_4
    sget v4, Landroidx/d/e/m$m;->ImageFilterView_roundPercent:I

    if-ne v3, v4, :cond_5

    .line 132
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_6

    .line 133
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/d/d/a/a;->setRoundPercent(F)V

    goto :goto_1

    .line 135
    :cond_5
    sget v4, Landroidx/d/e/m$m;->ImageFilterView_overlay:I

    if-ne v3, v4, :cond_6

    .line 136
    iget-boolean v4, p0, Landroidx/d/d/a/a;->j:Z

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-direct {p0, v3}, Landroidx/d/d/a/a;->setOverlay(Z)V

    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_7
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v1, :cond_8

    const/4 p2, 0x2

    .line 142
    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Landroidx/d/d/a/a;->c:[Landroid/graphics/drawable/Drawable;

    .line 143
    iget-object p2, p0, Landroidx/d/d/a/a;->c:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/d/d/a/a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, p2, p1

    .line 144
    iget-object p1, p0, Landroidx/d/d/a/a;->c:[Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x1

    aput-object v1, p1, p2

    .line 146
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    iget-object v0, p0, Landroidx/d/d/a/a;->c:[Landroid/graphics/drawable/Drawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Landroidx/d/d/a/a;->d:Landroid/graphics/drawable/LayerDrawable;

    .line 147
    iget-object p1, p0, Landroidx/d/d/a/a;->d:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 p2, 0x437f0000    # 255.0f

    iget v0, p0, Landroidx/d/d/a/a;->f:F

    mul-float/2addr v0, p2

    float-to-int p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 148
    iget-object p1, p0, Landroidx/d/d/a/a;->d:Landroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/n;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    return-void
.end method

.method static synthetic b(Landroidx/d/d/a/a;)F
    .locals 0

    .line 81
    iget p0, p0, Landroidx/d/d/a/a;->h:F

    return p0
.end method

.method private setOverlay(Z)V
    .locals 0

    .line 160
    iput-boolean p1, p0, Landroidx/d/d/a/a;->j:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 388
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 389
    iget v0, p0, Landroidx/d/d/a/a;->h:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/d/d/a/a;->i:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 391
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 392
    iget-object v1, p0, Landroidx/d/d/a/a;->i:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 395
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/n;->draw(Landroid/graphics/Canvas;)V

    if-eqz v0, :cond_1

    .line 397
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method public getContrast()F
    .locals 0

    .line 200
    iget-object p0, p0, Landroidx/d/d/a/a;->e:Landroidx/d/d/a/b$a;

    iget p0, p0, Landroidx/d/d/a/b$a;->f:F

    return p0
.end method

.method public getCrossfade()F
    .locals 0

    .line 244
    iget p0, p0, Landroidx/d/d/a/a;->f:F

    return p0
.end method

.method public getRound()F
    .locals 0

    .line 382
    iget p0, p0, Landroidx/d/d/a/a;->h:F

    return p0
.end method

.method public getRoundPercent()F
    .locals 0

    .line 373
    iget p0, p0, Landroidx/d/d/a/a;->g:F

    return p0
.end method

.method public getSaturation()F
    .locals 0

    .line 181
    iget-object p0, p0, Landroidx/d/d/a/a;->e:Landroidx/d/d/a/b$a;

    iget p0, p0, Landroidx/d/d/a/b$a;->e:F

    return p0
.end method

.method public getWarmth()F
    .locals 0

    .line 219
    iget-object p0, p0, Landroidx/d/d/a/a;->e:Landroidx/d/d/a/b$a;

    iget p0, p0, Landroidx/d/d/a/b$a;->g:F

    return p0
.end method

.method public setBrightness(F)V
    .locals 1

    .line 255
    iget-object v0, p0, Landroidx/d/d/a/a;->e:Landroidx/d/d/a/b$a;

    iput p1, v0, Landroidx/d/d/a/b$a;->d:F

    .line 256
    iget-object p1, p0, Landroidx/d/d/a/a;->e:Landroidx/d/d/a/b$a;

    invoke-virtual {p1, p0}, Landroidx/d/d/a/b$a;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method public setContrast(F)V
    .locals 1

    .line 190
    iget-object v0, p0, Landroidx/d/d/a/a;->e:Landroidx/d/d/a/b$a;

    iput p1, v0, Landroidx/d/d/a/b$a;->f:F

    .line 191
    iget-object p1, p0, Landroidx/d/d/a/a;->e:Landroidx/d/d/a/b$a;

    invoke-virtual {p1, p0}, Landroidx/d/d/a/b$a;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method public setCrossfade(F)V
    .locals 3

    .line 228
    iput p1, p0, Landroidx/d/d/a/a;->f:F

    .line 229
    iget-object p1, p0, Landroidx/d/d/a/a;->c:[Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 230
    iget-boolean p1, p0, Landroidx/d/d/a/a;->j:Z

    const/high16 v0, 0x437f0000    # 255.0f

    if-nez p1, :cond_0

    .line 231
    iget-object p1, p0, Landroidx/d/d/a/a;->d:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Landroidx/d/d/a/a;->f:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 233
    :cond_0
    iget-object p1, p0, Landroidx/d/d/a/a;->d:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget v1, p0, Landroidx/d/d/a/a;->f:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 234
    iget-object p1, p0, Landroidx/d/d/a/a;->d:Landroid/graphics/drawable/LayerDrawable;

    invoke-super {p0, p1}, Landroidx/appcompat/widget/n;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public setRound(F)V
    .locals 6
    .annotation build Landroidx/annotation/am;
        a = 0x15
    .end annotation

    .line 317
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iput p1, p0, Landroidx/d/d/a/a;->h:F

    .line 319
    iget p1, p0, Landroidx/d/d/a/a;->g:F

    const/high16 v0, -0x40800000    # -1.0f

    .line 320
    iput v0, p0, Landroidx/d/d/a/a;->g:F

    .line 321
    invoke-virtual {p0, p1}, Landroidx/d/d/a/a;->setRoundPercent(F)V

    return-void

    .line 324
    :cond_0
    iget v0, p0, Landroidx/d/d/a/a;->h:F

    cmpl-float v0, v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 325
    :goto_0
    iput p1, p0, Landroidx/d/d/a/a;->h:F

    .line 327
    iget p1, p0, Landroidx/d/d/a/a;->h:F

    const/4 v3, 0x0

    cmpl-float p1, p1, v3

    const/16 v4, 0x15

    if-eqz p1, :cond_6

    .line 328
    iget-object p1, p0, Landroidx/d/d/a/a;->i:Landroid/graphics/Path;

    if-nez p1, :cond_2

    .line 329
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Landroidx/d/d/a/a;->i:Landroid/graphics/Path;

    .line 331
    :cond_2
    iget-object p1, p0, Landroidx/d/d/a/a;->b:Landroid/graphics/RectF;

    if-nez p1, :cond_3

    .line 332
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/d/d/a/a;->b:Landroid/graphics/RectF;

    .line 334
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_5

    .line 335
    iget-object p1, p0, Landroidx/d/d/a/a;->a:Landroid/view/ViewOutlineProvider;

    if-nez p1, :cond_4

    .line 336
    new-instance p1, Landroidx/d/d/a/a$2;

    invoke-direct {p1, p0}, Landroidx/d/d/a/a$2;-><init>(Landroidx/d/d/a/a;)V

    iput-object p1, p0, Landroidx/d/d/a/a;->a:Landroid/view/ViewOutlineProvider;

    .line 344
    iget-object p1, p0, Landroidx/d/d/a/a;->a:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1}, Landroidx/d/d/a/a;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 346
    :cond_4
    invoke-virtual {p0, v2}, Landroidx/d/d/a/a;->setClipToOutline(Z)V

    .line 349
    :cond_5
    invoke-virtual {p0}, Landroidx/d/d/a/a;->getWidth()I

    move-result p1

    .line 350
    invoke-virtual {p0}, Landroidx/d/d/a/a;->getHeight()I

    move-result v1

    .line 351
    iget-object v2, p0, Landroidx/d/d/a/a;->b:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float v1, v1

    invoke-virtual {v2, v3, v3, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 352
    iget-object p1, p0, Landroidx/d/d/a/a;->i:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 353
    iget-object p1, p0, Landroidx/d/d/a/a;->i:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/d/d/a/a;->b:Landroid/graphics/RectF;

    iget v2, p0, Landroidx/d/d/a/a;->h:F

    iget v3, p0, Landroidx/d/d/a/a;->h:F

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, v2, v3, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 355
    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_7

    .line 356
    invoke-virtual {p0, v1}, Landroidx/d/d/a/a;->setClipToOutline(Z)V

    :cond_7
    :goto_1
    if-eqz v0, :cond_8

    .line 360
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_8

    .line 361
    invoke-virtual {p0}, Landroidx/d/d/a/a;->invalidateOutline()V

    :cond_8
    return-void
.end method

.method public setRoundPercent(F)V
    .locals 6
    .annotation build Landroidx/annotation/am;
        a = 0x15
    .end annotation

    .line 267
    iget v0, p0, Landroidx/d/d/a/a;->g:F

    cmpl-float v0, v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 268
    :goto_0
    iput p1, p0, Landroidx/d/d/a/a;->g:F

    .line 269
    iget p1, p0, Landroidx/d/d/a/a;->g:F

    const/4 v3, 0x0

    cmpl-float p1, p1, v3

    const/16 v4, 0x15

    if-eqz p1, :cond_5

    .line 270
    iget-object p1, p0, Landroidx/d/d/a/a;->i:Landroid/graphics/Path;

    if-nez p1, :cond_1

    .line 271
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Landroidx/d/d/a/a;->i:Landroid/graphics/Path;

    .line 273
    :cond_1
    iget-object p1, p0, Landroidx/d/d/a/a;->b:Landroid/graphics/RectF;

    if-nez p1, :cond_2

    .line 274
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/d/d/a/a;->b:Landroid/graphics/RectF;

    .line 276
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_4

    .line 277
    iget-object p1, p0, Landroidx/d/d/a/a;->a:Landroid/view/ViewOutlineProvider;

    if-nez p1, :cond_3

    .line 278
    new-instance p1, Landroidx/d/d/a/a$1;

    invoke-direct {p1, p0}, Landroidx/d/d/a/a$1;-><init>(Landroidx/d/d/a/a;)V

    iput-object p1, p0, Landroidx/d/d/a/a;->a:Landroid/view/ViewOutlineProvider;

    .line 287
    iget-object p1, p0, Landroidx/d/d/a/a;->a:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p1}, Landroidx/d/d/a/a;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 289
    :cond_3
    invoke-virtual {p0, v2}, Landroidx/d/d/a/a;->setClipToOutline(Z)V

    .line 291
    :cond_4
    invoke-virtual {p0}, Landroidx/d/d/a/a;->getWidth()I

    move-result p1

    .line 292
    invoke-virtual {p0}, Landroidx/d/d/a/a;->getHeight()I

    move-result v1

    .line 293
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    iget v5, p0, Landroidx/d/d/a/a;->g:F

    mul-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    .line 294
    iget-object v5, p0, Landroidx/d/d/a/a;->b:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float v1, v1

    invoke-virtual {v5, v3, v3, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 295
    iget-object p1, p0, Landroidx/d/d/a/a;->i:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 296
    iget-object p1, p0, Landroidx/d/d/a/a;->i:Landroid/graphics/Path;

    iget-object v1, p0, Landroidx/d/d/a/a;->b:Landroid/graphics/RectF;

    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 298
    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_6

    .line 299
    invoke-virtual {p0, v1}, Landroidx/d/d/a/a;->setClipToOutline(Z)V

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 303
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_7

    .line 304
    invoke-virtual {p0}, Landroidx/d/d/a/a;->invalidateOutline()V

    :cond_7
    return-void
.end method

.method public setSaturation(F)V
    .locals 1

    .line 171
    iget-object v0, p0, Landroidx/d/d/a/a;->e:Landroidx/d/d/a/b$a;

    iput p1, v0, Landroidx/d/d/a/b$a;->e:F

    .line 172
    iget-object p1, p0, Landroidx/d/d/a/a;->e:Landroidx/d/d/a/b$a;

    invoke-virtual {p1, p0}, Landroidx/d/d/a/b$a;->a(Landroid/widget/ImageView;)V

    return-void
.end method

.method public setWarmth(F)V
    .locals 1

    .line 209
    iget-object v0, p0, Landroidx/d/d/a/a;->e:Landroidx/d/d/a/b$a;

    iput p1, v0, Landroidx/d/d/a/b$a;->g:F

    .line 210
    iget-object p1, p0, Landroidx/d/d/a/a;->e:Landroidx/d/d/a/b$a;

    invoke-virtual {p1, p0}, Landroidx/d/d/a/b$a;->a(Landroid/widget/ImageView;)V

    return-void
.end method
