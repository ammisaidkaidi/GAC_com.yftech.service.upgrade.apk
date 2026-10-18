.class Lcom/google/android/material/button/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
    }
.end annotation


# static fields
.field private static final a:Z


# instance fields
.field private final b:Lcom/google/android/material/button/MaterialButton;

.field private c:Lcom/google/android/material/t/o;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private k:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private l:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private m:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private n:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/graphics/drawable/LayerDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/material/button/a;->a:Z

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/t/o;)V
    .locals 1
    .param p2    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->o:Z

    .line 70
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->p:Z

    .line 71
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->q:Z

    .line 76
    iput-object p1, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    .line 77
    iput-object p2, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/t/o;

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;
    .locals 7
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 157
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget v2, p0, Lcom/google/android/material/button/a;->d:I

    iget v3, p0, Lcom/google/android/material/button/a;->f:I

    iget v4, p0, Lcom/google/android/material/button/a;->e:I

    iget v5, p0, Lcom/google/android/material/button/a;->g:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object v6
.end method

.method private b(Lcom/google/android/material/t/o;)V
    .locals 1
    .param p1    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 356
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/t/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/t/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/t/j;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    .line 359
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/button/a;->o()Lcom/google/android/material/t/j;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 360
    invoke-direct {p0}, Lcom/google/android/material/button/a;->o()Lcom/google/android/material/t/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/t/j;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    .line 362
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->k()Lcom/google/android/material/t/s;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 363
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->k()Lcom/google/android/material/t/s;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/material/t/s;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    :cond_2
    return-void
.end method

.method private c(Z)Lcom/google/android/material/t/j;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_1

    .line 323
    sget-boolean v0, Lcom/google/android/material/button/a;->a:Z

    if-eqz v0, :cond_0

    .line 324
    iget-object p0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    .line 325
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    .line 327
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/t/j;

    return-object p0

    .line 329
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    xor-int/lit8 p1, p1, 0x1

    .line 330
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/t/j;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private m()Landroid/graphics/drawable/Drawable;
    .locals 8

    .line 197
    new-instance v0, Lcom/google/android/material/t/j;

    iget-object v1, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/t/o;

    invoke-direct {v0, v1}, Lcom/google/android/material/t/j;-><init>(Lcom/google/android/material/t/o;)V

    .line 198
    iget-object v1, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v1}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Lcom/google/android/material/t/j;->b(Landroid/content/Context;)V

    .line 200
    iget-object v1, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 201
    iget-object v1, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 204
    :cond_0
    iget v1, p0, Lcom/google/android/material/button/a;->i:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/t/j;->a(FLandroid/content/res/ColorStateList;)V

    .line 206
    new-instance v1, Lcom/google/android/material/t/j;

    iget-object v2, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/t/o;

    invoke-direct {v1, v2}, Lcom/google/android/material/t/j;-><init>(Lcom/google/android/material/t/o;)V

    const/4 v2, 0x0

    .line 208
    invoke-virtual {v1, v2}, Lcom/google/android/material/t/j;->setTint(I)V

    .line 209
    iget v3, p0, Lcom/google/android/material/button/a;->i:I

    int-to-float v3, v3

    iget-boolean v4, p0, Lcom/google/android/material/button/a;->o:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    sget v5, Lcom/google/android/material/a$c;->colorSurface:I

    .line 212
    invoke-static {v4, v5}, Lcom/google/android/material/h/a;->a(Landroid/view/View;I)I

    move-result v4

    goto :goto_0

    :cond_1
    move v4, v2

    .line 209
    :goto_0
    invoke-virtual {v1, v3, v4}, Lcom/google/android/material/t/j;->a(FI)V

    .line 215
    sget-boolean v3, Lcom/google/android/material/button/a;->a:Z

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eqz v3, :cond_2

    .line 216
    new-instance v3, Lcom/google/android/material/t/j;

    iget-object v6, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/t/o;

    invoke-direct {v3, v6}, Lcom/google/android/material/t/j;-><init>(Lcom/google/android/material/t/o;)V

    iput-object v3, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    .line 217
    iget-object v3, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    const/4 v6, -0x1

    invoke-static {v3, v6}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 218
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    iget-object v6, p0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    .line 220
    invoke-static {v6}, Lcom/google/android/material/r/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v6

    new-instance v7, Landroid/graphics/drawable/LayerDrawable;

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v5, v2

    aput-object v0, v5, v4

    invoke-direct {v7, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 221
    invoke-direct {p0, v7}, Lcom/google/android/material/button/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v6, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    .line 225
    iget-object p0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    return-object p0

    .line 227
    :cond_2
    new-instance v3, Lcom/google/android/material/r/a;

    iget-object v6, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/t/o;

    invoke-direct {v3, v6}, Lcom/google/android/material/r/a;-><init>(Lcom/google/android/material/t/o;)V

    iput-object v3, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    .line 228
    iget-object v3, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    .line 229
    invoke-static {v6}, Lcom/google/android/material/r/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 228
    invoke-static {v3, v6}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 230
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v6, v2

    aput-object v0, v6, v4

    iget-object v0, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    aput-object v0, v6, v5

    invoke-direct {v3, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    .line 233
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/button/a;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object p0

    return-object p0
.end method

.method private n()V
    .locals 4

    .line 291
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/t/j;

    move-result-object v0

    .line 292
    invoke-direct {p0}, Lcom/google/android/material/button/a;->o()Lcom/google/android/material/t/j;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 294
    iget v2, p0, Lcom/google/android/material/button/a;->i:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/material/t/j;->a(FLandroid/content/res/ColorStateList;)V

    if-eqz v1, :cond_1

    .line 296
    iget v0, p0, Lcom/google/android/material/button/a;->i:I

    int-to-float v0, v0

    iget-boolean v2, p0, Lcom/google/android/material/button/a;->o:Z

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    sget v2, Lcom/google/android/material/a$c;->colorSurface:I

    .line 299
    invoke-static {p0, v2}, Lcom/google/android/material/h/a;->a(Landroid/view/View;I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 296
    :goto_0
    invoke-virtual {v1, v0, p0}, Lcom/google/android/material/t/j;->a(FI)V

    :cond_1
    return-void
.end method

.method private o()Lcom/google/android/material/t/j;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    const/4 v0, 0x1

    .line 352
    invoke-direct {p0, v0}, Lcom/google/android/material/button/a;->c(Z)Lcom/google/android/material/t/j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, 0x1

    .line 144
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->p:Z

    .line 147
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 148
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object p0, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p0}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method a(I)V
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/t/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/t/j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->setTint(I)V

    :cond_0
    return-void
.end method

.method a(II)V
    .locals 4

    .line 238
    iget-object v0, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/google/android/material/button/a;->n:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/google/android/material/button/a;->d:I

    iget v2, p0, Lcom/google/android/material/button/a;->f:I

    iget v3, p0, Lcom/google/android/material/button/a;->e:I

    sub-int/2addr p2, v3

    iget p0, p0, Lcom/google/android/material/button/a;->g:I

    sub-int/2addr p1, p0

    invoke-virtual {v0, v1, v2, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 161
    iget-object v0, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 162
    iput-object p1, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    .line 163
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/t/j;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/t/j;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    invoke-static {p1, p0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method a(Landroid/content/res/TypedArray;)V
    .locals 6
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 81
    sget v0, Lcom/google/android/material/a$o;->MaterialButton_android_insetLeft:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/a;->d:I

    .line 82
    sget v0, Lcom/google/android/material/a$o;->MaterialButton_android_insetRight:I

    .line 83
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/a;->e:I

    .line 84
    sget v0, Lcom/google/android/material/a$o;->MaterialButton_android_insetTop:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/a;->f:I

    .line 85
    sget v0, Lcom/google/android/material/a$o;->MaterialButton_android_insetBottom:I

    .line 86
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/a;->g:I

    .line 89
    sget v0, Lcom/google/android/material/a$o;->MaterialButton_cornerRadius:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    .line 90
    sget v0, Lcom/google/android/material/a$o;->MaterialButton_cornerRadius:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/a;->h:I

    .line 91
    iget-object v0, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/t/o;

    iget v3, p0, Lcom/google/android/material/button/a;->h:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/google/android/material/t/o;->a(F)Lcom/google/android/material/t/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/a;->a(Lcom/google/android/material/t/o;)V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->q:Z

    .line 95
    :cond_0
    sget v0, Lcom/google/android/material/a$o;->MaterialButton_strokeWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/button/a;->i:I

    .line 97
    sget v0, Lcom/google/android/material/a$o;->MaterialButton_backgroundTintMode:I

    .line 99
    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 98
    invoke-static {v0, v2}, Lcom/google/android/material/internal/z;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    .line 100
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    .line 102
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/google/android/material/a$o;->MaterialButton_backgroundTint:I

    .line 101
    invoke-static {v0, p1, v2}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    .line 103
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    .line 105
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/google/android/material/a$o;->MaterialButton_strokeColor:I

    .line 104
    invoke-static {v0, p1, v2}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    .line 106
    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    .line 108
    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/google/android/material/a$o;->MaterialButton_rippleColor:I

    .line 107
    invoke-static {v0, p1, v2}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    .line 110
    sget v0, Lcom/google/android/material/a$o;->MaterialButton_android_checkable:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/button/a;->r:Z

    .line 111
    sget v0, Lcom/google/android/material/a$o;->MaterialButton_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v1}, Landroidx/core/n/af;->w(Landroid/view/View;)I

    move-result v1

    .line 115
    iget-object v2, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v2

    .line 116
    iget-object v3, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v3}, Landroidx/core/n/af;->x(Landroid/view/View;)I

    move-result v3

    .line 117
    iget-object v4, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result v4

    .line 120
    sget v5, Lcom/google/android/material/a$o;->MaterialButton_android_background:I

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->a()V

    goto :goto_0

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Lcom/google/android/material/button/a;->m()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/t/j;

    move-result-object p1

    if-eqz p1, :cond_2

    int-to-float v0, v0

    .line 126
    invoke-virtual {p1, v0}, Lcom/google/android/material/t/j;->r(F)V

    .line 130
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    iget v0, p0, Lcom/google/android/material/button/a;->d:I

    add-int/2addr v1, v0

    iget v0, p0, Lcom/google/android/material/button/a;->f:I

    add-int/2addr v2, v0

    iget v0, p0, Lcom/google/android/material/button/a;->e:I

    add-int/2addr v3, v0

    iget p0, p0, Lcom/google/android/material/button/a;->g:I

    add-int/2addr v4, p0

    invoke-static {p1, v1, v2, v3, v4}, Landroidx/core/n/af;->b(Landroid/view/View;IIII)V

    return-void
.end method

.method a(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 174
    iget-object v0, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 175
    iput-object p1, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    .line 176
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/t/j;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/t/j;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, p0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method a(Lcom/google/android/material/t/o;)V
    .locals 0
    .param p1    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 382
    iput-object p1, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/t/o;

    .line 383
    invoke-direct {p0, p1}, Lcom/google/android/material/button/a;->b(Lcom/google/android/material/t/o;)V

    return-void
.end method

.method a(Z)V
    .locals 0

    .line 187
    iput-boolean p1, p0, Lcom/google/android/material/button/a;->o:Z

    .line 188
    invoke-direct {p0}, Lcom/google/android/material/button/a;->n()V

    return-void
.end method

.method b(I)V
    .locals 1

    .line 280
    iget v0, p0, Lcom/google/android/material/button/a;->i:I

    if-eq v0, p1, :cond_0

    .line 281
    iput p1, p0, Lcom/google/android/material/button/a;->i:I

    .line 282
    invoke-direct {p0}, Lcom/google/android/material/button/a;->n()V

    :cond_0
    return-void
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 250
    iget-object v0, p0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 251
    iput-object p1, p0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    .line 252
    sget-boolean v0, Lcom/google/android/material/button/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_0

    .line 253
    iget-object p0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    .line 254
    invoke-static {p1}, Lcom/google/android/material/r/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 255
    :cond_0
    sget-boolean v0, Lcom/google/android/material/button/a;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/r/a;

    if-eqz v0, :cond_1

    .line 256
    iget-object p0, p0, Lcom/google/android/material/button/a;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/r/a;

    .line 257
    invoke-static {p1}, Lcom/google/android/material/r/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 256
    invoke-virtual {p0, p1}, Lcom/google/android/material/r/a;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method b(Z)V
    .locals 0

    .line 343
    iput-boolean p1, p0, Lcom/google/android/material/button/a;->r:Z

    return-void
.end method

.method b()Z
    .locals 0

    .line 152
    iget-boolean p0, p0, Lcom/google/android/material/button/a;->p:Z

    return p0
.end method

.method c()Landroid/content/res/ColorStateList;
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/google/android/material/button/a;->k:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method c(I)V
    .locals 1

    .line 308
    iget-boolean v0, p0, Lcom/google/android/material/button/a;->q:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/button/a;->h:I

    if-eq v0, p1, :cond_1

    .line 309
    :cond_0
    iput p1, p0, Lcom/google/android/material/button/a;->h:I

    const/4 v0, 0x1

    .line 310
    iput-boolean v0, p0, Lcom/google/android/material/button/a;->q:Z

    .line 312
    iget-object v0, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/t/o;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/t/o;->a(F)Lcom/google/android/material/t/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/a;->a(Lcom/google/android/material/t/o;)V

    :cond_1
    return-void
.end method

.method c(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 268
    iget-object v0, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 269
    iput-object p1, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    .line 270
    invoke-direct {p0}, Lcom/google/android/material/button/a;->n()V

    :cond_0
    return-void
.end method

.method d()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/google/android/material/button/a;->j:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method e()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 264
    iget-object p0, p0, Lcom/google/android/material/button/a;->m:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method f()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 276
    iget-object p0, p0, Lcom/google/android/material/button/a;->l:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method g()I
    .locals 0

    .line 287
    iget p0, p0, Lcom/google/android/material/button/a;->i:I

    return p0
.end method

.method h()I
    .locals 0

    .line 317
    iget p0, p0, Lcom/google/android/material/button/a;->h:I

    return p0
.end method

.method i()Lcom/google/android/material/t/j;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    const/4 v0, 0x0

    .line 339
    invoke-direct {p0, v0}, Lcom/google/android/material/button/a;->c(Z)Lcom/google/android/material/t/j;

    move-result-object p0

    return-object p0
.end method

.method j()Z
    .locals 0

    .line 347
    iget-boolean p0, p0, Lcom/google/android/material/button/a;->r:Z

    return p0
.end method

.method public k()Lcom/google/android/material/t/s;
    .locals 3
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 369
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 370
    iget-object v0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    .line 372
    iget-object p0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/t/s;

    return-object p0

    .line 375
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/button/a;->s:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/t/s;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method l()Lcom/google/android/material/t/o;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 388
    iget-object p0, p0, Lcom/google/android/material/button/a;->c:Lcom/google/android/material/t/o;

    return-object p0
.end method
