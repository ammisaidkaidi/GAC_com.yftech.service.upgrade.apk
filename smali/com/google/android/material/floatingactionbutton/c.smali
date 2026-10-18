.class Lcom/google/android/material/floatingactionbutton/c;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/c$a;
    }
.end annotation


# static fields
.field private static final b:F = 1.3333f


# instance fields
.field a:F
    .annotation build Landroidx/annotation/p;
    .end annotation
.end field

.field private final c:Lcom/google/android/material/t/p;

.field private final d:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final e:Landroid/graphics/Path;

.field private final f:Landroid/graphics/Rect;

.field private final g:Landroid/graphics/RectF;

.field private final h:Landroid/graphics/RectF;

.field private final i:Lcom/google/android/material/floatingactionbutton/c$a;

.field private j:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private k:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private l:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private m:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private n:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private o:Z

.field private p:Lcom/google/android/material/t/o;

.field private q:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/material/t/o;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 60
    new-instance v0, Lcom/google/android/material/t/p;

    invoke-direct {v0}, Lcom/google/android/material/t/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->c:Lcom/google/android/material/t/p;

    .line 63
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->e:Landroid/graphics/Path;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->f:Landroid/graphics/Rect;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->g:Landroid/graphics/RectF;

    .line 66
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->h:Landroid/graphics/RectF;

    .line 67
    new-instance v0, Lcom/google/android/material/floatingactionbutton/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/floatingactionbutton/c$a;-><init>(Lcom/google/android/material/floatingactionbutton/c;Lcom/google/android/material/floatingactionbutton/c$1;)V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->i:Lcom/google/android/material/floatingactionbutton/c$a;

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Z

    .line 82
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/c;->p:Lcom/google/android/material/t/o;

    .line 83
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/c;->d:Landroid/graphics/Paint;

    .line 84
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/c;->d:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private c()Landroid/graphics/Shader;
    .locals 11
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->f:Landroid/graphics/Rect;

    .line 224
    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/c;->copyBounds(Landroid/graphics/Rect;)V

    .line 226
    iget v1, p0, Lcom/google/android/material/floatingactionbutton/c;->a:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x6

    .line 228
    new-array v8, v2, [I

    .line 229
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/c;->j:I

    iget v4, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    invoke-static {v3, v4}, Landroidx/core/graphics/e;->a(II)I

    move-result v3

    const/4 v4, 0x0

    aput v3, v8, v4

    .line 230
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/c;->k:I

    iget v5, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    invoke-static {v3, v5}, Landroidx/core/graphics/e;->a(II)I

    move-result v3

    const/4 v5, 0x1

    aput v3, v8, v5

    .line 231
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/c;->k:I

    .line 233
    invoke-static {v3, v4}, Landroidx/core/graphics/e;->c(II)I

    move-result v3

    iget v6, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    .line 232
    invoke-static {v3, v6}, Landroidx/core/graphics/e;->a(II)I

    move-result v3

    const/4 v6, 0x2

    aput v3, v8, v6

    .line 234
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/c;->m:I

    .line 236
    invoke-static {v3, v4}, Landroidx/core/graphics/e;->c(II)I

    move-result v3

    iget v7, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    .line 235
    invoke-static {v3, v7}, Landroidx/core/graphics/e;->a(II)I

    move-result v3

    const/4 v7, 0x3

    aput v3, v8, v7

    .line 237
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/c;->m:I

    iget v9, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    invoke-static {v3, v9}, Landroidx/core/graphics/e;->a(II)I

    move-result v3

    const/4 v9, 0x4

    aput v3, v8, v9

    .line 238
    iget v3, p0, Lcom/google/android/material/floatingactionbutton/c;->l:I

    iget p0, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    invoke-static {v3, p0}, Landroidx/core/graphics/e;->a(II)I

    move-result p0

    const/4 v3, 0x5

    aput p0, v8, v3

    .line 240
    new-array p0, v2, [F

    const/4 v2, 0x0

    aput v2, p0, v4

    aput v1, p0, v5

    const/high16 v2, 0x3f000000    # 0.5f

    aput v2, p0, v6

    aput v2, p0, v7

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    aput v1, p0, v9

    aput v2, p0, v3

    .line 248
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v0

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, v1

    move-object v9, p0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v1
.end method


# virtual methods
.method protected a()Landroid/graphics/RectF;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->h:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 173
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/c;->h:Landroid/graphics/RectF;

    return-object p0
.end method

.method public a(F)V
    .locals 2
    .param p1    # F
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param

    .line 88
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/c;->a:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 89
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/c;->a:F

    .line 90
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->d:Landroid/graphics/Paint;

    const v1, 0x3faaa993    # 1.3333f

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Z

    .line 92
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method a(IIII)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 116
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/c;->j:I

    .line 117
    iput p2, p0, Lcom/google/android/material/floatingactionbutton/c;->k:I

    .line 118
    iput p3, p0, Lcom/google/android/material/floatingactionbutton/c;->l:I

    .line 119
    iput p4, p0, Lcom/google/android/material/floatingactionbutton/c;->m:I

    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->getState()[I

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/c;->q:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 101
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Z

    .line 102
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->invalidateSelf()V

    return-void
.end method

.method public a(Lcom/google/android/material/t/o;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/c;->p:Lcom/google/android/material/t/o;

    .line 182
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->invalidateSelf()V

    return-void
.end method

.method public b()Lcom/google/android/material/t/o;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/c;->p:Lcom/google/android/material/t/o;

    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 124
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->d:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/c;->c()Landroid/graphics/Shader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Z

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 130
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/c;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/google/android/material/floatingactionbutton/c;->copyBounds(Landroid/graphics/Rect;)V

    .line 131
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/c;->g:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/c;->f:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 135
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/c;->p:Lcom/google/android/material/t/o;

    .line 136
    invoke-virtual {v2}, Lcom/google/android/material/t/o;->f()Lcom/google/android/material/t/d;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->a()Landroid/graphics/RectF;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/material/t/d;->a(Landroid/graphics/RectF;)F

    move-result v2

    .line 137
    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/c;->g:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    div-float/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 138
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/c;->p:Lcom/google/android/material/t/o;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->a()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/material/t/o;->a(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/google/android/material/floatingactionbutton/c;->g:Landroid/graphics/RectF;

    invoke-virtual {v2, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 140
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->g:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/c;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 255
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/c;->i:Lcom/google/android/material/floatingactionbutton/c$a;

    return-object p0
.end method

.method public getOpacity()I
    .locals 1

    .line 193
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/c;->a:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, -0x3

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    :goto_0
    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 5
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->p:Lcom/google/android/material/t/o;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->a()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/t/o;->a(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->p:Lcom/google/android/material/t/o;

    invoke-virtual {v0}, Lcom/google/android/material/t/o;->f()Lcom/google/android/material/t/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->a()Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/material/t/d;->a(Landroid/graphics/RectF;)F

    move-result v0

    .line 149
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/google/android/material/floatingactionbutton/c;->copyBounds(Landroid/graphics/Rect;)V

    .line 154
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->g:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/c;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->c:Lcom/google/android/material/t/p;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/c;->p:Lcom/google/android/material/t/o;

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/google/android/material/floatingactionbutton/c;->g:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/google/android/material/floatingactionbutton/c;->e:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/material/t/p;->a(Lcom/google/android/material/t/o;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->e:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/c;->e:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    :cond_1
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 163
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->p:Lcom/google/android/material/t/o;

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->a()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/t/o;->a(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/c;->a:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 165
    invoke-virtual {p1, p0, p0, p0, p0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isStateful()Z
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->q:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->q:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    const/4 p1, 0x1

    .line 198
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Z

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->q:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->q:Landroid/content/res/ColorStateList;

    iget v1, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 210
    iget v0, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Z

    .line 212
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/c;->n:I

    .line 215
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Z

    if-eqz p1, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->invalidateSelf()V

    .line 218
    :cond_1
    iget-boolean p0, p0, Lcom/google/android/material/floatingactionbutton/c;->o:Z

    return p0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/z;
            a = 0x0L
            b = 0xffL
        .end annotation
    .end param

    .line 187
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 188
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 107
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/c;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 108
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/c;->invalidateSelf()V

    return-void
.end method
