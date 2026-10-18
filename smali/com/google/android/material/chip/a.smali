.class public Lcom/google/android/material/chip/a;
.super Lcom/google/android/material/t/j;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroidx/core/graphics/drawable/e;
.implements Lcom/google/android/material/internal/q$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/a$a;
    }
.end annotation


# static fields
.field private static final d:Z = false

.field private static final e:[I

.field private static final f:Ljava/lang/String; = "http://schemas.android.com/apk/res-auto"

.field private static final g:Landroid/graphics/drawable/ShapeDrawable;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private D:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private E:Lcom/google/android/material/a/h;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private F:Lcom/google/android/material/a/h;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:F

.field private N:F

.field private final O:Landroid/content/Context;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final P:Landroid/graphics/Paint;

.field private final Q:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private final R:Landroid/graphics/Paint$FontMetrics;

.field private final S:Landroid/graphics/RectF;

.field private final T:Landroid/graphics/PointF;

.field private final U:Landroid/graphics/Path;

.field private final V:Lcom/google/android/material/internal/q;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private W:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private X:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private Y:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private Z:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private aa:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private ab:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private ac:Z

.field private ad:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private ae:I

.field private af:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private ag:Landroid/graphics/PorterDuffColorFilter;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private ah:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private ai:Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private aj:[I

.field private ak:Z

.field private al:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private am:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/chip/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private an:Landroid/text/TextUtils$TruncateAt;

.field private ao:Z

.field private ap:I

.field private aq:Z

.field private h:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private i:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private j:F

.field private k:F

.field private l:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private m:F

.field private n:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private o:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private p:Z

.field private q:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private r:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private s:F

.field private t:Z

.field private u:Z

.field private v:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private w:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private x:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private y:F

.field private z:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 163
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    sput-object v0, Lcom/google/android/material/chip/a;->e:[I

    .line 166
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    sput-object v0, Lcom/google/android/material/chip/a;->g:Landroid/graphics/drawable/ShapeDrawable;

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

    .line 308
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/material/t/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 p2, -0x40800000    # -1.0f

    .line 172
    iput p2, p0, Lcom/google/android/material/chip/a;->k:F

    .line 238
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/Paint;

    .line 240
    new-instance p2, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {p2}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint$FontMetrics;

    .line 241
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    .line 242
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2}, Landroid/graphics/PointF;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->T:Landroid/graphics/PointF;

    .line 243
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/Path;

    const/16 p2, 0xff

    .line 255
    iput p2, p0, Lcom/google/android/material/chip/a;->ae:I

    .line 259
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, Lcom/google/android/material/chip/a;->ai:Landroid/graphics/PorterDuff$Mode;

    .line 263
    new-instance p2, Ljava/lang/ref/WeakReference;

    const/4 p4, 0x0

    invoke-direct {p2, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->am:Ljava/lang/ref/WeakReference;

    .line 309
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b(Landroid/content/Context;)V

    .line 311
    iput-object p1, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    .line 312
    new-instance p2, Lcom/google/android/material/internal/q;

    invoke-direct {p2, p0}, Lcom/google/android/material/internal/q;-><init>(Lcom/google/android/material/internal/q$a;)V

    iput-object p2, p0, Lcom/google/android/material/chip/a;->V:Lcom/google/android/material/internal/q;

    const-string p2, ""

    .line 314
    iput-object p2, p0, Lcom/google/android/material/chip/a;->o:Ljava/lang/CharSequence;

    .line 316
    iget-object p2, p0, Lcom/google/android/material/chip/a;->V:Lcom/google/android/material/internal/q;

    invoke-virtual {p2}, Lcom/google/android/material/internal/q;->a()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p2, Landroid/text/TextPaint;->density:F

    .line 317
    iput-object p4, p0, Lcom/google/android/material/chip/a;->Q:Landroid/graphics/Paint;

    .line 318
    iget-object p1, p0, Lcom/google/android/material/chip/a;->Q:Landroid/graphics/Paint;

    if-eqz p1, :cond_0

    .line 319
    iget-object p1, p0, Lcom/google/android/material/chip/a;->Q:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 322
    :cond_0
    sget-object p1, Lcom/google/android/material/chip/a;->e:[I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->setState([I)Z

    .line 323
    sget-object p1, Lcom/google/android/material/chip/a;->e:[I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a([I)Z

    .line 324
    iput-boolean p3, p0, Lcom/google/android/material/chip/a;->ao:Z

    .line 326
    sget-boolean p0, Lcom/google/android/material/r/b;->a:Z

    if-eqz p0, :cond_1

    .line 328
    sget-object p0, Lcom/google/android/material/chip/a;->g:Landroid/graphics/drawable/ShapeDrawable;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;->setTint(I)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;I)Lcom/google/android/material/chip/a;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/az;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const-string v0, "chip"

    .line 295
    invoke-static {p0, p1, v0}, Lcom/google/android/material/j/a;->a(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;

    move-result-object p1

    .line 296
    invoke-interface {p1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-nez v0, :cond_0

    .line 298
    sget v0, Lcom/google/android/material/a$n;->Widget_MaterialComponents_Chip_Entry:I

    .line 300
    :cond_0
    sget v1, Lcom/google/android/material/a$c;->chipStandaloneStyle:I

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/material/chip/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/a;
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

    .line 276
    new-instance v0, Lcom/google/android/material/chip/a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/chip/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 277
    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/material/chip/a;->a(Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 595
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->aq:Z

    if-nez v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/a;->W:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 597
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 598
    iget-object v0, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 599
    iget-object p2, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->k()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->k()F

    move-result v1

    iget-object p0, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 778
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 780
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ax()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ay()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 781
    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/a;->G:F

    iget v1, p0, Lcom/google/android/material/chip/a;->H:F

    add-float/2addr v0, v1

    .line 783
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_1

    .line 784
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 785
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/google/android/material/chip/a;->s:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 787
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 788
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/google/android/material/chip/a;->s:F

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 791
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iget v0, p0, Lcom/google/android/material/chip/a;->s:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->top:F

    .line 792
    iget p1, p2, Landroid/graphics/RectF;->top:F

    iget p0, p0, Lcom/google/android/material/chip/a;->s:F

    add-float/2addr p1, p0

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_2
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

    .line 334
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    sget-object v2, Lcom/google/android/material/a$o;->Chip:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v1, p1

    move v3, p2

    move v4, p3

    .line 335
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/s;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 338
    sget p3, Lcom/google/android/material/a$o;->Chip_shapeAppearance:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/google/android/material/chip/a;->aq:Z

    .line 339
    iget-object p3, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    sget v0, Lcom/google/android/material/a$o;->Chip_chipSurfaceColor:I

    .line 340
    invoke-static {p3, p2, v0}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 339
    invoke-direct {p0, p3}, Lcom/google/android/material/chip/a;->k(Landroid/content/res/ColorStateList;)V

    .line 341
    iget-object p3, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    sget v0, Lcom/google/android/material/a$o;->Chip_chipBackgroundColor:I

    .line 342
    invoke-static {p3, p2, v0}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 341
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->a(Landroid/content/res/ColorStateList;)V

    .line 343
    sget p3, Lcom/google/android/material/a$o;->Chip_chipMinHeight:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->a(F)V

    .line 344
    sget p3, Lcom/google/android/material/a$o;->Chip_chipCornerRadius:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 345
    sget p3, Lcom/google/android/material/a$o;->Chip_chipCornerRadius:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->b(F)V

    .line 347
    :cond_0
    iget-object p3, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    sget v1, Lcom/google/android/material/a$o;->Chip_chipStrokeColor:I

    .line 348
    invoke-static {p3, p2, v1}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 347
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->b(Landroid/content/res/ColorStateList;)V

    .line 349
    sget p3, Lcom/google/android/material/a$o;->Chip_chipStrokeWidth:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->c(F)V

    .line 350
    iget-object p3, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    sget v1, Lcom/google/android/material/a$o;->Chip_rippleColor:I

    invoke-static {p3, p2, v1}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->c(Landroid/content/res/ColorStateList;)V

    .line 352
    sget p3, Lcom/google/android/material/a$o;->Chip_android_text:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->a(Ljava/lang/CharSequence;)V

    .line 353
    iget-object p3, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    sget v1, Lcom/google/android/material/a$o;->Chip_android_textAppearance:I

    .line 354
    invoke-static {p3, p2, v1}, Lcom/google/android/material/q/c;->c(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/q/d;

    move-result-object p3

    .line 353
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/q/d;)V

    .line 356
    sget p3, Lcom/google/android/material/a$o;->Chip_android_ellipsize:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 366
    :pswitch_0
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->a(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 363
    :pswitch_1
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->a(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 360
    :pswitch_2
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->a(Landroid/text/TextUtils$TruncateAt;)V

    .line 374
    :goto_0
    sget p3, Lcom/google/android/material/a$o;->Chip_chipIconVisible:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->b(Z)V

    if-eqz p1, :cond_1

    const-string p3, "http://schemas.android.com/apk/res-auto"

    const-string v1, "chipIconEnabled"

    .line 378
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    const-string p3, "http://schemas.android.com/apk/res-auto"

    const-string v1, "chipIconVisible"

    .line 379
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    .line 380
    sget p3, Lcom/google/android/material/a$o;->Chip_chipIconEnabled:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->b(Z)V

    .line 382
    :cond_1
    iget-object p3, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    sget v1, Lcom/google/android/material/a$o;->Chip_chipIcon:I

    invoke-static {p3, p2, v1}, Lcom/google/android/material/q/c;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/drawable/Drawable;)V

    .line 383
    sget p3, Lcom/google/android/material/a$o;->Chip_chipIconTint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 384
    iget-object p3, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    sget v1, Lcom/google/android/material/a$o;->Chip_chipIconTint:I

    .line 385
    invoke-static {p3, p2, v1}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 384
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->d(Landroid/content/res/ColorStateList;)V

    .line 387
    :cond_2
    sget p3, Lcom/google/android/material/a$o;->Chip_chipIconSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->d(F)V

    .line 389
    sget p3, Lcom/google/android/material/a$o;->Chip_closeIconVisible:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->d(Z)V

    if-eqz p1, :cond_3

    const-string p3, "http://schemas.android.com/apk/res-auto"

    const-string v1, "closeIconEnabled"

    .line 394
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    const-string p3, "http://schemas.android.com/apk/res-auto"

    const-string v1, "closeIconVisible"

    .line 395
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    .line 396
    sget p3, Lcom/google/android/material/a$o;->Chip_closeIconEnabled:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->d(Z)V

    .line 398
    :cond_3
    iget-object p3, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    sget v1, Lcom/google/android/material/a$o;->Chip_closeIcon:I

    invoke-static {p3, p2, v1}, Lcom/google/android/material/q/c;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 399
    iget-object p3, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    sget v1, Lcom/google/android/material/a$o;->Chip_closeIconTint:I

    .line 400
    invoke-static {p3, p2, v1}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 399
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->e(Landroid/content/res/ColorStateList;)V

    .line 401
    sget p3, Lcom/google/android/material/a$o;->Chip_closeIconSize:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->e(F)V

    .line 403
    sget p3, Lcom/google/android/material/a$o;->Chip_android_checkable:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->f(Z)V

    .line 404
    sget p3, Lcom/google/android/material/a$o;->Chip_checkedIconVisible:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/a;->g(Z)V

    if-eqz p1, :cond_4

    const-string p3, "http://schemas.android.com/apk/res-auto"

    const-string v1, "checkedIconEnabled"

    .line 409
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_4

    const-string p3, "http://schemas.android.com/apk/res-auto"

    const-string v1, "checkedIconVisible"

    .line 410
    invoke-interface {p1, p3, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_4

    .line 411
    sget p1, Lcom/google/android/material/a$o;->Chip_checkedIconEnabled:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->g(Z)V

    .line 413
    :cond_4
    iget-object p1, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    sget p3, Lcom/google/android/material/a$o;->Chip_checkedIcon:I

    invoke-static {p1, p2, p3}, Lcom/google/android/material/q/c;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 414
    sget p1, Lcom/google/android/material/a$o;->Chip_checkedIconTint:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 415
    iget-object p1, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    sget p3, Lcom/google/android/material/a$o;->Chip_checkedIconTint:I

    .line 416
    invoke-static {p1, p2, p3}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 415
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->f(Landroid/content/res/ColorStateList;)V

    .line 419
    :cond_5
    iget-object p1, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    sget p3, Lcom/google/android/material/a$o;->Chip_showMotionSpec:I

    invoke-static {p1, p2, p3}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/a/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/a/h;)V

    .line 420
    iget-object p1, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    sget p3, Lcom/google/android/material/a$o;->Chip_hideMotionSpec:I

    invoke-static {p1, p2, p3}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/a/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b(Lcom/google/android/material/a/h;)V

    .line 422
    sget p1, Lcom/google/android/material/a$o;->Chip_chipStartPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->f(F)V

    .line 423
    sget p1, Lcom/google/android/material/a$o;->Chip_iconStartPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->g(F)V

    .line 424
    sget p1, Lcom/google/android/material/a$o;->Chip_iconEndPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->h(F)V

    .line 425
    sget p1, Lcom/google/android/material/a$o;->Chip_textStartPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->i(F)V

    .line 426
    sget p1, Lcom/google/android/material/a$o;->Chip_textEndPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->j(F)V

    .line 427
    sget p1, Lcom/google/android/material/a$o;->Chip_closeIconStartPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->k(F)V

    .line 428
    sget p1, Lcom/google/android/material/a$o;->Chip_closeIconEndPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->l(F)V

    .line 429
    sget p1, Lcom/google/android/material/a$o;->Chip_chipEndPadding:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->m(F)V

    .line 431
    sget p1, Lcom/google/android/material/a$o;->Chip_android_maxWidth:I

    const p3, 0x7fffffff

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->H(I)V

    .line 433
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a([II)Z
    .locals 4
    .param p0    # [I
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/f;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1327
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private a([I[I)Z
    .locals 6
    .param p1    # [I
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 986
    invoke-super {p0, p1}, Lcom/google/android/material/t/j;->onStateChange([I)Z

    move-result v0

    .line 989
    iget-object v1, p0, Lcom/google/android/material/chip/a;->h:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/chip/a;->h:Landroid/content/res/ColorStateList;

    iget v3, p0, Lcom/google/android/material/chip/a;->W:I

    .line 991
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 993
    :goto_0
    iget v3, p0, Lcom/google/android/material/chip/a;->W:I

    const/4 v4, 0x1

    if-eq v3, v1, :cond_1

    .line 994
    iput v1, p0, Lcom/google/android/material/chip/a;->W:I

    move v0, v4

    .line 998
    :cond_1
    iget-object v3, p0, Lcom/google/android/material/chip/a;->i:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/android/material/chip/a;->i:Landroid/content/res/ColorStateList;

    iget v5, p0, Lcom/google/android/material/chip/a;->X:I

    .line 1000
    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    .line 1002
    :goto_1
    iget v5, p0, Lcom/google/android/material/chip/a;->X:I

    if-eq v5, v3, :cond_3

    .line 1003
    iput v3, p0, Lcom/google/android/material/chip/a;->X:I

    move v0, v4

    .line 1008
    :cond_3
    invoke-static {v1, v3}, Lcom/google/android/material/h/a;->a(II)I

    move-result v1

    .line 1009
    iget v3, p0, Lcom/google/android/material/chip/a;->Y:I

    if-eq v3, v1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v2

    .line 1011
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->U()Landroid/content/res/ColorStateList;

    move-result-object v5

    if-nez v5, :cond_5

    move v5, v4

    goto :goto_3

    :cond_5
    move v5, v2

    :goto_3
    or-int/2addr v3, v5

    if-eqz v3, :cond_6

    .line 1013
    iput v1, p0, Lcom/google/android/material/chip/a;->Y:I

    .line 1014
    iget v0, p0, Lcom/google/android/material/chip/a;->Y:I

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->g(Landroid/content/res/ColorStateList;)V

    move v0, v4

    .line 1018
    :cond_6
    iget-object v1, p0, Lcom/google/android/material/chip/a;->l:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/material/chip/a;->l:Landroid/content/res/ColorStateList;

    iget v3, p0, Lcom/google/android/material/chip/a;->Z:I

    .line 1020
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_4

    :cond_7
    move v1, v2

    .line 1022
    :goto_4
    iget v3, p0, Lcom/google/android/material/chip/a;->Z:I

    if-eq v3, v1, :cond_8

    .line 1023
    iput v1, p0, Lcom/google/android/material/chip/a;->Z:I

    move v0, v4

    .line 1027
    :cond_8
    iget-object v1, p0, Lcom/google/android/material/chip/a;->al:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_9

    .line 1028
    invoke-static {p1}, Lcom/google/android/material/r/b;->a([I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/material/chip/a;->al:Landroid/content/res/ColorStateList;

    iget v3, p0, Lcom/google/android/material/chip/a;->aa:I

    .line 1029
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_5

    :cond_9
    move v1, v2

    .line 1031
    :goto_5
    iget v3, p0, Lcom/google/android/material/chip/a;->aa:I

    if-eq v3, v1, :cond_a

    .line 1032
    iput v1, p0, Lcom/google/android/material/chip/a;->aa:I

    .line 1033
    iget-boolean v1, p0, Lcom/google/android/material/chip/a;->ak:Z

    if-eqz v1, :cond_a

    move v0, v4

    .line 1038
    :cond_a
    iget-object v1, p0, Lcom/google/android/material/chip/a;->V:Lcom/google/android/material/internal/q;

    .line 1039
    invoke-virtual {v1}, Lcom/google/android/material/internal/q;->c()Lcom/google/android/material/q/d;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/material/chip/a;->V:Lcom/google/android/material/internal/q;

    .line 1040
    invoke-virtual {v1}, Lcom/google/android/material/internal/q;->c()Lcom/google/android/material/q/d;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/q/d;->b:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/google/android/material/chip/a;->V:Lcom/google/android/material/internal/q;

    .line 1042
    invoke-virtual {v1}, Lcom/google/android/material/internal/q;->c()Lcom/google/android/material/q/d;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/material/q/d;->b:Landroid/content/res/ColorStateList;

    iget v3, p0, Lcom/google/android/material/chip/a;->ab:I

    .line 1044
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    goto :goto_6

    :cond_b
    move v1, v2

    .line 1046
    :goto_6
    iget v3, p0, Lcom/google/android/material/chip/a;->ab:I

    if-eq v3, v1, :cond_c

    .line 1047
    iput v1, p0, Lcom/google/android/material/chip/a;->ab:I

    move v0, v4

    .line 1051
    :cond_c
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v1

    const v3, 0x10100a0

    invoke-static {v1, v3}, Lcom/google/android/material/chip/a;->a([II)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Lcom/google/android/material/chip/a;->A:Z

    if-eqz v1, :cond_d

    move v1, v4

    goto :goto_7

    :cond_d
    move v1, v2

    .line 1052
    :goto_7
    iget-boolean v3, p0, Lcom/google/android/material/chip/a;->ac:Z

    if-eq v3, v1, :cond_f

    iget-object v3, p0, Lcom/google/android/material/chip/a;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_f

    .line 1053
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v0

    .line 1054
    iput-boolean v1, p0, Lcom/google/android/material/chip/a;->ac:Z

    .line 1055
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e

    move v0, v4

    move v1, v0

    goto :goto_8

    :cond_e
    move v1, v2

    move v0, v4

    goto :goto_8

    :cond_f
    move v1, v2

    .line 1063
    :goto_8
    iget-object v3, p0, Lcom/google/android/material/chip/a;->ah:Landroid/content/res/ColorStateList;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/google/android/material/chip/a;->ah:Landroid/content/res/ColorStateList;

    iget v5, p0, Lcom/google/android/material/chip/a;->ad:I

    invoke-virtual {v3, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    goto :goto_9

    :cond_10
    move v3, v2

    .line 1064
    :goto_9
    iget v5, p0, Lcom/google/android/material/chip/a;->ad:I

    if-eq v5, v3, :cond_11

    .line 1065
    iput v3, p0, Lcom/google/android/material/chip/a;->ad:I

    .line 1066
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ah:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/android/material/chip/a;->ai:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p0, v0, v3}, Lcom/google/android/material/j/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/chip/a;->ag:Landroid/graphics/PorterDuffColorFilter;

    move v0, v4

    .line 1070
    :cond_11
    iget-object v3, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1071
    iget-object v3, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1073
    :cond_12
    iget-object v3, p0, Lcom/google/android/material/chip/a;->C:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1074
    iget-object v3, p0, Lcom/google/android/material/chip/a;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 1076
    :cond_13
    iget-object v3, p0, Lcom/google/android/material/chip/a;->v:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1081
    array-length v3, p1

    array-length v4, p2

    add-int/2addr v3, v4

    new-array v3, v3, [I

    .line 1082
    array-length v4, p1

    invoke-static {p1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1083
    array-length p1, p1

    array-length v4, p2

    invoke-static {p2, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1085
    iget-object p1, p0, Lcom/google/android/material/chip/a;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v0, p1

    .line 1088
    :cond_14
    sget-boolean p1, Lcom/google/android/material/r/b;->a:Z

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/google/android/material/chip/a;->w:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1089
    iget-object p1, p0, Lcom/google/android/material/chip/a;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_15
    if-eqz v0, :cond_16

    .line 1093
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_16
    if-eqz v1, :cond_17

    .line 1096
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_17
    return v0
.end method

.method private aA()Z
    .locals 1

    .line 517
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/material/chip/a;->A:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private aB()F
    .locals 2

    .line 832
    iget-object v0, p0, Lcom/google/android/material/chip/a;->V:Lcom/google/android/material/internal/q;

    invoke-virtual {v0}, Lcom/google/android/material/internal/q;->a()Landroid/text/TextPaint;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint$FontMetrics;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 833
    iget-object v0, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object p0, p0, Lcom/google/android/material/chip/a;->R:Landroid/graphics/Paint$FontMetrics;

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v0, p0

    return v0
.end method

.method private aC()Landroid/graphics/ColorFilter;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1306
    iget-object v0, p0, Lcom/google/android/material/chip/a;->af:Landroid/graphics/ColorFilter;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->af:Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/chip/a;->ag:Landroid/graphics/PorterDuffColorFilter;

    :goto_0
    return-object p0
.end method

.method private aD()V
    .locals 1

    .line 1310
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ak:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->n:Landroid/content/res/ColorStateList;

    .line 1311
    invoke-static {v0}, Lcom/google/android/material/r/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/chip/a;->al:Landroid/content/res/ColorStateList;

    return-void
.end method

.method private aE()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1808
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    .line 1810
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->n()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/r/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/chip/a;->v:Landroid/graphics/drawable/Drawable;

    sget-object v3, Lcom/google/android/material/chip/a;->g:Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/chip/a;->w:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private ax()Z
    .locals 1

    .line 502
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private ay()Z
    .locals 1

    .line 507
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/material/chip/a;->ac:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private az()Z
    .locals 1

    .line 512
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->u:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->v:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 604
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->aq:Z

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/a;->X:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 606
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 607
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aC()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 608
    iget-object v0, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 609
    iget-object p2, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->k()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->k()F

    move-result v1

    iget-object p0, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private b(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 841
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 843
    iget-object v0, p0, Lcom/google/android/material/chip/a;->o:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 844
    iget v0, p0, Lcom/google/android/material/chip/a;->G:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->J:F

    add-float/2addr v0, v1

    .line 845
    iget v1, p0, Lcom/google/android/material/chip/a;->N:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->d()F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/chip/a;->K:F

    add-float/2addr v1, v2

    .line 847
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    if-nez p0, :cond_0

    .line 848
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    add-float/2addr p0, v0

    iput p0, p2, Landroid/graphics/RectF;->left:F

    .line 849
    iget p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    sub-float/2addr p0, v1

    iput p0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 851
    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    add-float/2addr p0, v1

    iput p0, p2, Landroid/graphics/RectF;->left:F

    .line 852
    iget p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    sub-float/2addr p0, v0

    iput p0, p2, Landroid/graphics/RectF;->right:F

    .line 857
    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    iput p0, p2, Landroid/graphics/RectF;->top:F

    .line 858
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    iput p0, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private static b(Lcom/google/android/material/q/d;)Z
    .locals 1
    .param p0    # Lcom/google/android/material/q/d;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/google/android/material/q/d;->b:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/q/d;->b:Landroid/content/res/ColorStateList;

    .line 1112
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 618
    iget v0, p0, Lcom/google/android/material/chip/a;->m:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->aq:Z

    if-nez v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/a;->Z:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 620
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 621
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->aq:Z

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aC()Landroid/graphics/ColorFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/material/chip/a;->m:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v4, p0, Lcom/google/android/material/chip/a;->m:F

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    iget v4, p2, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/android/material/chip/a;->m:F

    div-float/2addr v5, v3

    sub-float/2addr v4, v5

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    iget v5, p0, Lcom/google/android/material/chip/a;->m:F

    div-float/2addr v5, v3

    sub-float/2addr p2, v5

    invoke-virtual {v0, v1, v2, v4, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 631
    iget p2, p0, Lcom/google/android/material/chip/a;->k:F

    iget v0, p0, Lcom/google/android/material/chip/a;->m:F

    div-float/2addr v0, v3

    sub-float/2addr p2, v0

    .line 632
    iget-object v0, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, p2, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private c(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 867
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 869
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->az()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    iget v0, p0, Lcom/google/android/material/chip/a;->N:F

    iget v1, p0, Lcom/google/android/material/chip/a;->M:F

    add-float/2addr v0, v1

    .line 872
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 873
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->right:F

    .line 874
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/google/android/material/chip/a;->y:F

    sub-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 876
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/RectF;->left:F

    .line 877
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/google/android/material/chip/a;->y:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 880
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    iget v0, p0, Lcom/google/android/material/chip/a;->y:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    iput p1, p2, Landroid/graphics/RectF;->top:F

    .line 881
    iget p1, p2, Landroid/graphics/RectF;->top:F

    iget p0, p0, Lcom/google/android/material/chip/a;->y:F

    add-float/2addr p1, p0

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private d(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 637
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/chip/a;->aa:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 638
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 639
    iget-object v0, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 640
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->aq:Z

    if-nez v0, :cond_0

    .line 641
    iget-object p2, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->k()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->k()F

    move-result v1

    iget-object p0, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 643
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/Path;

    invoke-virtual {p0, v0, p2}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 644
    iget-object p2, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/material/chip/a;->U:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->Z()Landroid/graphics/RectF;

    move-result-object v1

    invoke-super {p0, p1, p2, v0, v1}, Lcom/google/android/material/t/j;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V

    :goto_0
    return-void
.end method

.method private d(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 886
    invoke-virtual {p2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 888
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->az()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 889
    iget v0, p0, Lcom/google/android/material/chip/a;->N:F

    iget v1, p0, Lcom/google/android/material/chip/a;->M:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->y:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->L:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->K:F

    add-float/2addr v0, v1

    .line 896
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    if-nez p0, :cond_0

    .line 897
    iget p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    sub-float/2addr p0, v0

    iput p0, p2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 899
    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    add-float/2addr p0, v0

    iput p0, p2, Landroid/graphics/RectF;->left:F

    :cond_1
    :goto_0
    return-void
.end method

.method private static d(Landroid/graphics/drawable/Drawable;)Z
    .locals 0
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 1106
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private e(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 649
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ax()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 651
    iget-object p2, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    .line 652
    iget-object v0, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 654
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 656
    iget-object v1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 657
    iget-object p0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float p0, p2

    neg-float p2, v0

    .line 659
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method private e(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 905
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 907
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->az()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 908
    iget v0, p0, Lcom/google/android/material/chip/a;->N:F

    iget v1, p0, Lcom/google/android/material/chip/a;->M:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->y:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->L:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->K:F

    add-float/2addr v0, v1

    .line 915
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    if-nez p0, :cond_0

    .line 916
    iget p0, p1, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    iput p0, p2, Landroid/graphics/RectF;->right:F

    .line 917
    iget p0, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr p0, v0

    iput p0, p2, Landroid/graphics/RectF;->left:F

    goto :goto_0

    .line 919
    :cond_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    iput p0, p2, Landroid/graphics/RectF;->left:F

    .line 920
    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    add-float/2addr p0, v0

    iput p0, p2, Landroid/graphics/RectF;->right:F

    .line 923
    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    iput p0, p2, Landroid/graphics/RectF;->top:F

    .line 924
    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    iput p0, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method private e(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 1271
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method private f(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 664
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 666
    iget-object p2, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    .line 667
    iget-object v0, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 669
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 671
    iget-object v1, p0, Lcom/google/android/material/chip/a;->C:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 672
    iget-object p0, p0, Lcom/google/android/material/chip/a;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-float p0, p2

    neg-float p2, v0

    .line 674
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    return-void
.end method

.method private f(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 1280
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1281
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    .line 1282
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getLevel()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 1283
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 1285
    iget-object v0, p0, Lcom/google/android/material/chip/a;->v:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_2

    .line 1286
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1287
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->g()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1289
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/chip/a;->x:Landroid/content/res/ColorStateList;

    invoke-static {p1, p0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    .line 1292
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1293
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1295
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/google/android/material/chip/a;->t:Z

    if-eqz p1, :cond_4

    .line 1296
    iget-object p1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/google/android/material/chip/a;->r:Landroid/content/res/ColorStateList;

    invoke-static {p1, p0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_4
    return-void
.end method

.method private g(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 680
    iget-object v0, p0, Lcom/google/android/material/chip/a;->o:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 681
    iget-object v0, p0, Lcom/google/android/material/chip/a;->T:Landroid/graphics/PointF;

    invoke-virtual {p0, p2, v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;

    move-result-object v0

    .line 684
    iget-object v1, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v1}, Lcom/google/android/material/chip/a;->b(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 686
    iget-object p2, p0, Lcom/google/android/material/chip/a;->V:Lcom/google/android/material/internal/q;

    invoke-virtual {p2}, Lcom/google/android/material/internal/q;->c()Lcom/google/android/material/q/d;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 687
    iget-object p2, p0, Lcom/google/android/material/chip/a;->V:Lcom/google/android/material/internal/q;

    invoke-virtual {p2}, Lcom/google/android/material/internal/q;->a()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v1

    iput-object v1, p2, Landroid/text/TextPaint;->drawableState:[I

    .line 688
    iget-object p2, p0, Lcom/google/android/material/chip/a;->V:Lcom/google/android/material/internal/q;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/google/android/material/internal/q;->a(Landroid/content/Context;)V

    .line 690
    :cond_0
    iget-object p2, p0, Lcom/google/android/material/chip/a;->V:Lcom/google/android/material/internal/q;

    invoke-virtual {p2}, Lcom/google/android/material/internal/q;->a()Landroid/text/TextPaint;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 692
    iget-object p2, p0, Lcom/google/android/material/chip/a;->V:Lcom/google/android/material/internal/q;

    .line 693
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->o()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/material/internal/q;->a(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    .line 694
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/4 v1, 0x0

    if-le p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 697
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 698
    iget-object v0, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 701
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/chip/a;->o:Ljava/lang/CharSequence;

    if-eqz p2, :cond_3

    .line 702
    iget-object v2, p0, Lcom/google/android/material/chip/a;->an:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_3

    .line 703
    iget-object v0, p0, Lcom/google/android/material/chip/a;->o:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/google/android/material/chip/a;->V:Lcom/google/android/material/internal/q;

    .line 704
    invoke-virtual {v2}, Lcom/google/android/material/internal/q;->a()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/chip/a;->an:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v0, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_3
    move-object v3, v0

    const/4 v4, 0x0

    .line 707
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v0, p0, Lcom/google/android/material/chip/a;->T:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/google/android/material/chip/a;->T:Landroid/graphics/PointF;

    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget-object p0, p0, Lcom/google/android/material/chip/a;->V:Lcom/google/android/material/internal/q;

    invoke-virtual {p0}, Lcom/google/android/material/internal/q;->a()Landroid/text/TextPaint;

    move-result-object v8

    move-object v2, p1

    .line 706
    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_4

    .line 709
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method private h(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 715
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->az()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 717
    iget-object p2, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    .line 718
    iget-object v0, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 720
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 722
    iget-object v1, p0, Lcom/google/android/material/chip/a;->v:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 724
    sget-boolean v1, Lcom/google/android/material/r/b;->a:Z

    if-eqz v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/google/android/material/chip/a;->w:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/chip/a;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 726
    iget-object v1, p0, Lcom/google/android/material/chip/a;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 727
    iget-object p0, p0, Lcom/google/android/material/chip/a;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 729
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/chip/a;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    neg-float p0, p2

    neg-float p2, v0

    .line 732
    invoke-virtual {p1, p0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    return-void
.end method

.method private i(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 737
    iget-object v0, p0, Lcom/google/android/material/chip/a;->Q:Landroid/graphics/Paint;

    if-eqz v0, :cond_4

    .line 738
    iget-object v0, p0, Lcom/google/android/material/chip/a;->Q:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    const/16 v2, 0x7f

    invoke-static {v1, v2}, Landroidx/core/graphics/e;->c(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 741
    iget-object v0, p0, Lcom/google/android/material/chip/a;->Q:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 744
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ax()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 746
    iget-object v0, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->Q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/a;->o:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 751
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v0

    .line 752
    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v5

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v7

    iget-object v8, p0, Lcom/google/android/material/chip/a;->Q:Landroid/graphics/Paint;

    move-object v3, p1

    .line 751
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 756
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->az()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 757
    iget-object v0, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 758
    iget-object v0, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->Q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 762
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/chip/a;->Q:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-static {v1, v2}, Landroidx/core/graphics/e;->c(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 763
    iget-object v0, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 764
    iget-object v0, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->Q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 767
    iget-object v0, p0, Lcom/google/android/material/chip/a;->Q:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-static {v1, v2}, Landroidx/core/graphics/e;->c(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 768
    iget-object v0, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 769
    iget-object p2, p0, Lcom/google/android/material/chip/a;->S:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/google/android/material/chip/a;->Q:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method private static j(Landroid/content/res/ColorStateList;)Z
    .locals 0
    .param p0    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 1102
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private k(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1315
    iget-object v0, p0, Lcom/google/android/material/chip/a;->h:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1316
    iput-object p1, p0, Lcom/google/android/material/chip/a;->h:Landroid/content/res/ColorStateList;

    .line 1317
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public A()F
    .locals 0

    .line 1839
    iget p0, p0, Lcom/google/android/material/chip/a;->y:F

    return p0
.end method

.method public A(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 2133
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->g(F)V

    return-void
.end method

.method public B()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1867
    iget-object p0, p0, Lcom/google/android/material/chip/a;->z:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public B(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 2172
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->h(F)V

    return-void
.end method

.method public C(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 2211
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->i(F)V

    return-void
.end method

.method public C()Z
    .locals 0

    .line 1871
    iget-boolean p0, p0, Lcom/google/android/material/chip/a;->A:Z

    return p0
.end method

.method public D(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 2245
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->j(F)V

    return-void
.end method

.method public D()Z
    .locals 0

    .line 1896
    iget-boolean p0, p0, Lcom/google/android/material/chip/a;->B:Z

    return p0
.end method

.method public E(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 2279
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->k(F)V

    return-void
.end method

.method public E()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1902
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->D()Z

    move-result p0

    return p0
.end method

.method public F()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1949
    iget-object p0, p0, Lcom/google/android/material/chip/a;->C:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public F(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 2315
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->l(F)V

    return-void
.end method

.method public G()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1988
    iget-object p0, p0, Lcom/google/android/material/chip/a;->D:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public G(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 2351
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->m(F)V

    return-void
.end method

.method public H()Lcom/google/android/material/a/h;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 2028
    iget-object p0, p0, Lcom/google/android/material/chip/a;->E:Lcom/google/android/material/a/h;

    return-object p0
.end method

.method public H(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param

    .line 2384
    iput p1, p0, Lcom/google/android/material/chip/a;->ap:I

    return-void
.end method

.method public I()Lcom/google/android/material/a/h;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 2059
    iget-object p0, p0, Lcom/google/android/material/chip/a;->F:Lcom/google/android/material/a/h;

    return-object p0
.end method

.method public J()F
    .locals 0

    .line 2089
    iget p0, p0, Lcom/google/android/material/chip/a;->G:F

    return p0
.end method

.method public K()F
    .locals 0

    .line 2123
    iget p0, p0, Lcom/google/android/material/chip/a;->H:F

    return p0
.end method

.method public L()F
    .locals 0

    .line 2162
    iget p0, p0, Lcom/google/android/material/chip/a;->I:F

    return p0
.end method

.method public M()F
    .locals 0

    .line 2201
    iget p0, p0, Lcom/google/android/material/chip/a;->J:F

    return p0
.end method

.method public N()F
    .locals 0

    .line 2235
    iget p0, p0, Lcom/google/android/material/chip/a;->K:F

    return p0
.end method

.method public O()F
    .locals 0

    .line 2269
    iget p0, p0, Lcom/google/android/material/chip/a;->L:F

    return p0
.end method

.method public P()F
    .locals 0

    .line 2305
    iget p0, p0, Lcom/google/android/material/chip/a;->M:F

    return p0
.end method

.method public Q()F
    .locals 0

    .line 2341
    iget p0, p0, Lcom/google/android/material/chip/a;->N:F

    return p0
.end method

.method public R()I
    .locals 0
    .annotation build Landroidx/annotation/ak;
    .end annotation

    .line 2375
    iget p0, p0, Lcom/google/android/material/chip/a;->ap:I

    return p0
.end method

.method S()Z
    .locals 0

    .line 2388
    iget-boolean p0, p0, Lcom/google/android/material/chip/a;->ao:Z

    return p0
.end method

.method a(Landroid/graphics/Rect;Landroid/graphics/PointF;)Landroid/graphics/Paint$Align;
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/PointF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x0

    .line 799
    invoke-virtual {p2, v0, v0}, Landroid/graphics/PointF;->set(FF)V

    .line 800
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 802
    iget-object v1, p0, Lcom/google/android/material/chip/a;->o:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 803
    iget v0, p0, Lcom/google/android/material/chip/a;->G:F

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->J:F

    add-float/2addr v0, v1

    .line 805
    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->i(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    if-nez v1, :cond_0

    .line 806
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 807
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_0

    .line 809
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    iput v1, p2, Landroid/graphics/PointF;->x:F

    .line 810
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 813
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aB()F

    move-result p0

    sub-float/2addr p1, p0

    iput p1, p2, Landroid/graphics/PointF;->y:F

    :cond_1
    return-object v0
.end method

.method public a(F)V
    .locals 1

    .line 1405
    iget v0, p0, Lcom/google/android/material/chip/a;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1406
    iput p1, p0, Lcom/google/android/material/chip/a;->j:F

    .line 1407
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1408
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/m;
        .end annotation
    .end param

    .line 1362
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1372
    iget-object v0, p0, Lcom/google/android/material/chip/a;->i:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1373
    iput-object p1, p0, Lcom/google/android/material/chip/a;->i:Landroid/content/res/ColorStateList;

    .line 1374
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 468
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1656
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->t()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_2

    .line 1658
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    if-eqz p1, :cond_0

    .line 1659
    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    .line 1660
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result p1

    .line 1662
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 1663
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ax()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1664
    iget-object v0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    .line 1667
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_2

    .line 1669
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_2
    return-void
.end method

.method public a(Landroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p1    # Landroid/text/TextUtils$TruncateAt;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1597
    iput-object p1, p0, Lcom/google/android/material/chip/a;->an:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method

.method public a(Lcom/google/android/material/a/h;)V
    .locals 0
    .param p1    # Lcom/google/android/material/a/h;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 2048
    iput-object p1, p0, Lcom/google/android/material/chip/a;->E:Lcom/google/android/material/a/h;

    return-void
.end method

.method public a(Lcom/google/android/material/chip/a$a;)V
    .locals 1
    .param p1    # Lcom/google/android/material/chip/a$a;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 452
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/chip/a;->am:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Lcom/google/android/material/q/d;)V
    .locals 1
    .param p1    # Lcom/google/android/material/q/d;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1589
    iget-object v0, p0, Lcom/google/android/material/chip/a;->V:Lcom/google/android/material/internal/q;

    iget-object p0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {v0, p1, p0}, Lcom/google/android/material/internal/q;->a(Lcom/google/android/material/q/d;Landroid/content/Context;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string p1, ""

    .line 1571
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->o:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1572
    iput-object p1, p0, Lcom/google/android/material/chip/a;->o:Ljava/lang/CharSequence;

    .line 1573
    iget-object p1, p0, Lcom/google/android/material/chip/a;->V:Lcom/google/android/material/internal/q;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/q;->a(Z)V

    .line 1574
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1575
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 438
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ak:Z

    if-eq v0, p1, :cond_0

    .line 439
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->ak:Z

    .line 440
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aD()V

    .line 441
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 0

    .line 447
    iget-boolean p0, p0, Lcom/google/android/material/chip/a;->ak:Z

    return p0
.end method

.method public a([I)Z
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 954
    iget-object v0, p0, Lcom/google/android/material/chip/a;->aj:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 955
    iput-object p1, p0, Lcom/google/android/material/chip/a;->aj:[I

    .line 956
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->az()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/a;->a([I[I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected b()V
    .locals 0

    .line 457
    iget-object p0, p0, Lcom/google/android/material/chip/a;->am:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/chip/a$a;

    if-eqz p0, :cond_0

    .line 459
    invoke-interface {p0}, Lcom/google/android/material/chip/a$a;->a()V

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1441
    iget v0, p0, Lcom/google/android/material/chip/a;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1442
    iput p1, p0, Lcom/google/android/material/chip/a;->k:F

    .line 1444
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getShapeAppearanceModel()Lcom/google/android/material/t/o;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/t/o;->a(F)Lcom/google/android/material/t/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 1395
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(F)V

    return-void
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1476
    iget-object v0, p0, Lcom/google/android/material/chip/a;->l:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1477
    iput-object p1, p0, Lcom/google/android/material/chip/a;->l:Landroid/content/res/ColorStateList;

    .line 1478
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->aq:Z

    if-eqz v0, :cond_0

    .line 1479
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->h(Landroid/content/res/ColorStateList;)V

    .line 1481
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public b(Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 476
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1785
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->y()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_3

    .line 1787
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->d()F

    move-result v1

    if-eqz p1, :cond_0

    .line 1788
    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/chip/a;->v:Landroid/graphics/drawable/Drawable;

    .line 1789
    sget-boolean p1, Lcom/google/android/material/r/b;->a:Z

    if-eqz p1, :cond_1

    .line 1790
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aE()V

    .line 1792
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->d()F

    move-result p1

    .line 1794
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 1795
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->az()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1796
    iget-object v0, p0, Lcom/google/android/material/chip/a;->v:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    .line 1799
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_3

    .line 1801
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_3
    return-void
.end method

.method public b(Lcom/google/android/material/a/h;)V
    .locals 0
    .param p1    # Lcom/google/android/material/a/h;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 2079
    iput-object p1, p0, Lcom/google/android/material/chip/a;->F:Lcom/google/android/material/a/h;

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1857
    iget-object v0, p0, Lcom/google/android/material/chip/a;->z:Ljava/lang/CharSequence;

    if-eq v0, p1, :cond_0

    .line 1859
    invoke-static {}, Landroidx/core/l/a;->a()Landroidx/core/l/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/core/l/a;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/chip/a;->z:Ljava/lang/CharSequence;

    .line 1861
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1615
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->p:Z

    if-eq v0, p1, :cond_2

    .line 1616
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ax()Z

    move-result v0

    .line 1617
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->p:Z

    .line 1618
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ax()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1623
    iget-object p1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1625
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 1628
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1629
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_2
    return-void
.end method

.method c()F
    .locals 2

    .line 522
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ax()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ay()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 523
    :cond_1
    :goto_0
    iget v0, p0, Lcom/google/android/material/chip/a;->H:F

    iget v1, p0, Lcom/google/android/material/chip/a;->s:F

    add-float/2addr v0, v1

    iget p0, p0, Lcom/google/android/material/chip/a;->I:F

    add-float/2addr v0, p0

    return v0
.end method

.method public c(F)V
    .locals 1

    .line 1512
    iget v0, p0, Lcom/google/android/material/chip/a;->m:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    .line 1513
    iput p1, p0, Lcom/google/android/material/chip/a;->m:F

    .line 1515
    iget-object v0, p0, Lcom/google/android/material/chip/a;->P:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1516
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->aq:Z

    if-eqz v0, :cond_0

    .line 1517
    invoke-super {p0, p1}, Lcom/google/android/material/t/j;->n(F)V

    .line 1519
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1430
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b(F)V

    return-void
.end method

.method public c(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1551
    iget-object v0, p0, Lcom/google/android/material/chip/a;->n:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1552
    iput-object p1, p0, Lcom/google/android/material/chip/a;->n:Landroid/content/res/ColorStateList;

    .line 1553
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aD()V

    .line 1554
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1969
    iget-object v0, p0, Lcom/google/android/material/chip/a;->C:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 1971
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v0

    .line 1972
    iput-object p1, p0, Lcom/google/android/material/chip/a;->C:Landroid/graphics/drawable/Drawable;

    .line 1973
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result p1

    .line 1975
    iget-object v1, p0, Lcom/google/android/material/chip/a;->C:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 1976
    iget-object v1, p0, Lcom/google/android/material/chip/a;->C:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    .line 1978
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 1980
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1643
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b(Z)V

    return-void
.end method

.method d()F
    .locals 2

    .line 533
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->az()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    iget v0, p0, Lcom/google/android/material/chip/a;->L:F

    iget v1, p0, Lcom/google/android/material/chip/a;->y:F

    add-float/2addr v0, v1

    iget p0, p0, Lcom/google/android/material/chip/a;->M:F

    add-float/2addr v0, p0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d(F)V
    .locals 1

    .line 1717
    iget v0, p0, Lcom/google/android/material/chip/a;->s:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1718
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v0

    .line 1719
    iput p1, p0, Lcom/google/android/material/chip/a;->s:F

    .line 1720
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result p1

    .line 1722
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 1724
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/m;
        .end annotation
    .end param

    .line 1466
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public d(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1697
    iput-boolean v0, p0, Lcom/google/android/material/chip/a;->t:Z

    .line 1698
    iget-object v0, p0, Lcom/google/android/material/chip/a;->r:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1699
    iput-object p1, p0, Lcom/google/android/material/chip/a;->r:Landroid/content/res/ColorStateList;

    .line 1700
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ax()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1701
    iget-object v0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1704
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 1744
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->u:Z

    if-eq v0, p1, :cond_2

    .line 1745
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->az()Z

    move-result v0

    .line 1746
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->u:Z

    .line 1747
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->az()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1752
    iget-object p1, p0, Lcom/google/android/material/chip/a;->v:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1754
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/chip/a;->v:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 1757
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1758
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 545
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 546
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getAlpha()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 551
    iget v2, p0, Lcom/google/android/material/chip/a;->ae:I

    const/16 v3, 0xff

    if-ge v2, v3, :cond_1

    .line 552
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v7, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v1

    iget v9, p0, Lcom/google/android/material/chip/a;->ae:I

    move-object v4, p1

    .line 553
    invoke-static/range {v4 .. v9}, Lcom/google/android/material/d/a;->a(Landroid/graphics/Canvas;FFFFI)I

    move-result v1

    .line 558
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 561
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->b(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 563
    iget-boolean v2, p0, Lcom/google/android/material/chip/a;->aq:Z

    if-eqz v2, :cond_2

    .line 564
    invoke-super {p0, p1}, Lcom/google/android/material/t/j;->draw(Landroid/graphics/Canvas;)V

    .line 567
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 570
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 573
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 576
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 579
    iget-boolean v2, p0, Lcom/google/android/material/chip/a;->ao:Z

    if-eqz v2, :cond_3

    .line 580
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->g(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 584
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->h(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 587
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->i(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 589
    iget p0, p0, Lcom/google/android/material/chip/a;->ae:I

    if-ge p0, v3, :cond_4

    .line 590
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method public e(F)V
    .locals 1

    .line 1847
    iget v0, p0, Lcom/google/android/material/chip/a;->y:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1848
    iput p1, p0, Lcom/google/android/material/chip/a;->y:F

    .line 1849
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1850
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->az()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1851
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public e(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 1502
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->c(F)V

    return-void
.end method

.method public e(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1827
    iget-object v0, p0, Lcom/google/android/material/chip/a;->x:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1828
    iput-object p1, p0, Lcom/google/android/material/chip/a;->x:Landroid/content/res/ColorStateList;

    .line 1830
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->az()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/google/android/material/chip/a;->v:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1834
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public e(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1772
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->d(Z)V

    return-void
.end method

.method e()Z
    .locals 0

    .line 540
    iget-boolean p0, p0, Lcom/google/android/material/chip/a;->aq:Z

    return p0
.end method

.method public f(F)V
    .locals 1

    .line 2109
    iget v0, p0, Lcom/google/android/material/chip/a;->G:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2110
    iput p1, p0, Lcom/google/android/material/chip/a;->G:F

    .line 2111
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2112
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public f(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/m;
        .end annotation
    .end param

    .line 1541
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->c(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public f(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 2009
    iget-object v0, p0, Lcom/google/android/material/chip/a;->D:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 2010
    iput-object p1, p0, Lcom/google/android/material/chip/a;->D:Landroid/content/res/ColorStateList;

    .line 2012
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aA()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2013
    iget-object v0, p0, Lcom/google/android/material/chip/a;->C:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 2016
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_1
    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 1879
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->A:Z

    if-eq v0, p1, :cond_1

    .line 1880
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->A:Z

    .line 1882
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v0

    if-nez p1, :cond_0

    .line 1883
    iget-boolean p1, p0, Lcom/google/android/material/chip/a;->ac:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1884
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->ac:Z

    .line 1886
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result p1

    .line 1888
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_1

    .line 1890
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_1
    return-void
.end method

.method public f()Z
    .locals 0

    .line 946
    iget-object p0, p0, Lcom/google/android/material/chip/a;->v:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0
.end method

.method public g(F)V
    .locals 1

    .line 2143
    iget v0, p0, Lcom/google/android/material/chip/a;->H:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2144
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v0

    .line 2145
    iput p1, p0, Lcom/google/android/material/chip/a;->H:F

    .line 2146
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result p1

    .line 2148
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 2150
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param

    .line 1564
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1910
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->B:Z

    if-eq v0, p1, :cond_2

    .line 1911
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ay()Z

    move-result v0

    .line 1912
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->B:Z

    .line 1913
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ay()Z

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 1918
    iget-object p1, p0, Lcom/google/android/material/chip/a;->C:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->f(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1920
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/chip/a;->C:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/a;->e(Landroid/graphics/drawable/Drawable;)V

    .line 1923
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 1924
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_2
    return-void
.end method

.method public g()[I
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 966
    iget-object p0, p0, Lcom/google/android/material/chip/a;->aj:[I

    return-object p0
.end method

.method public getAlpha()I
    .locals 0

    .line 1189
    iget p0, p0, Lcom/google/android/material/chip/a;->ae:I

    return p0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1203
    iget-object p0, p0, Lcom/google/android/material/chip/a;->af:Landroid/graphics/ColorFilter;

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 497
    iget p0, p0, Lcom/google/android/material/chip/a;->j:F

    float-to-int p0, p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 3

    .line 482
    iget v0, p0, Lcom/google/android/material/chip/a;->G:F

    .line 485
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->J:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/chip/a;->V:Lcom/google/android/material/internal/q;

    .line 487
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->o()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/internal/q;->a(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->K:F

    add-float/2addr v0, v1

    .line 489
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->d()F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/chip/a;->N:F

    add-float/2addr v0, v1

    .line 483
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 491
    iget p0, p0, Lcom/google/android/material/chip/a;->ap:I

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 8
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1231
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->aq:Z

    if-eqz v0, :cond_0

    .line 1232
    invoke-super {p0, p1}, Lcom/google/android/material/t/j;->getOutline(Landroid/graphics/Outline;)V

    return-void

    .line 1235
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1236
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1237
    iget v1, p0, Lcom/google/android/material/chip/a;->k:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1239
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getIntrinsicHeight()I

    move-result v6

    iget v7, p0, Lcom/google/android/material/chip/a;->k:F

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 1242
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getAlpha()I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method

.method public h()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1352
    iget-object p0, p0, Lcom/google/android/material/chip/a;->i:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public h(F)V
    .locals 1

    .line 2182
    iget v0, p0, Lcom/google/android/material/chip/a;->I:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2183
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result v0

    .line 2184
    iput p1, p0, Lcom/google/android/material/chip/a;->I:F

    .line 2185
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->c()F

    move-result p1

    .line 2187
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    cmpl-float p1, v0, p1

    if-eqz p1, :cond_0

    .line 2189
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public h(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param

    .line 1585
    new-instance v0, Lcom/google/android/material/q/d;

    iget-object v1, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/q/d;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/q/d;)V

    return-void
.end method

.method public h(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1938
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->g(Z)V

    return-void
.end method

.method public i()V
    .locals 0

    .line 971
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    .line 972
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    return-void
.end method

.method public i(F)V
    .locals 1

    .line 2221
    iget v0, p0, Lcom/google/android/material/chip/a;->J:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2222
    iput p1, p0, Lcom/google/android/material/chip/a;->J:F

    .line 2223
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2224
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public i(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/h;
        .end annotation
    .end param

    .line 1611
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b(Z)V

    return-void
.end method

.method i(Z)V
    .locals 0

    .line 2398
    iput-boolean p1, p0, Lcom/google/android/material/chip/a;->ao:Z

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1247
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1249
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 932
    iget-object v0, p0, Lcom/google/android/material/chip/a;->h:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Lcom/google/android/material/chip/a;->j(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->i:Landroid/content/res/ColorStateList;

    .line 933
    invoke-static {v0}, Lcom/google/android/material/chip/a;->j(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->l:Landroid/content/res/ColorStateList;

    .line 934
    invoke-static {v0}, Lcom/google/android/material/chip/a;->j(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->ak:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/a;->al:Landroid/content/res/ColorStateList;

    .line 935
    invoke-static {v0}, Lcom/google/android/material/chip/a;->j(Landroid/content/res/ColorStateList;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/a;->V:Lcom/google/android/material/internal/q;

    .line 936
    invoke-virtual {v0}, Lcom/google/android/material/internal/q;->c()Lcom/google/android/material/q/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/chip/a;->b(Lcom/google/android/material/q/d;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 937
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->aA()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    .line 938
    invoke-static {v0}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/a;->C:Landroid/graphics/drawable/Drawable;

    .line 939
    invoke-static {v0}, Lcom/google/android/material/chip/a;->d(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/google/android/material/chip/a;->ah:Landroid/content/res/ColorStateList;

    .line 940
    invoke-static {p0}, Lcom/google/android/material/chip/a;->j(Landroid/content/res/ColorStateList;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public j()F
    .locals 0

    .line 1385
    iget p0, p0, Lcom/google/android/material/chip/a;->j:F

    return p0
.end method

.method public j(F)V
    .locals 1

    .line 2255
    iget v0, p0, Lcom/google/android/material/chip/a;->K:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2256
    iput p1, p0, Lcom/google/android/material/chip/a;->K:F

    .line 2257
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2258
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public j(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/h;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1637
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->i(I)V

    return-void
.end method

.method public k()F
    .locals 1

    .line 1419
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->aq:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->as()F

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/material/chip/a;->k:F

    :goto_0
    return p0
.end method

.method public k(F)V
    .locals 1

    .line 2289
    iget v0, p0, Lcom/google/android/material/chip/a;->L:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2290
    iput p1, p0, Lcom/google/android/material/chip/a;->L:F

    .line 2291
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2292
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->az()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2293
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public k(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param

    .line 1652
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public l()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1456
    iget-object p0, p0, Lcom/google/android/material/chip/a;->l:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public l(F)V
    .locals 1

    .line 2325
    iget v0, p0, Lcom/google/android/material/chip/a;->M:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2326
    iput p1, p0, Lcom/google/android/material/chip/a;->M:F

    .line 2327
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2328
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->az()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2329
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public l(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/m;
        .end annotation
    .end param

    .line 1687
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->d(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public m()F
    .locals 0

    .line 1492
    iget p0, p0, Lcom/google/android/material/chip/a;->m:F

    return p0
.end method

.method public m(F)V
    .locals 1

    .line 2361
    iget v0, p0, Lcom/google/android/material/chip/a;->N:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2362
    iput p1, p0, Lcom/google/android/material/chip/a;->N:F

    .line 2363
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    .line 2364
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->b()V

    :cond_0
    return-void
.end method

.method public m(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 1713
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->d(F)V

    return-void
.end method

.method public n()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1531
    iget-object p0, p0, Lcom/google/android/material/chip/a;->n:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public n(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/h;
        .end annotation
    .end param

    .line 1740
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->d(Z)V

    return-void
.end method

.method public o()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1560
    iget-object p0, p0, Lcom/google/android/material/chip/a;->o:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public o(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/h;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1766
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->n(I)V

    return-void
.end method

.method public onLayoutDirectionChanged(I)Z
    .locals 2

    .line 1117
    invoke-super {p0, p1}, Lcom/google/android/material/t/j;->onLayoutDirectionChanged(I)Z

    move-result v0

    .line 1119
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ax()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1120
    iget-object v1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1122
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ay()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1123
    iget-object v1, p0, Lcom/google/android/material/chip/a;->C:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1125
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->az()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1126
    iget-object v1, p0, Lcom/google/android/material/chip/a;->v:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, p1}, Landroidx/core/graphics/drawable/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 1130
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method protected onLevelChange(I)Z
    .locals 2

    .line 1137
    invoke-super {p0, p1}, Lcom/google/android/material/t/j;->onLevelChange(I)Z

    move-result v0

    .line 1139
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ax()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1140
    iget-object v1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1142
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ay()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1143
    iget-object v1, p0, Lcom/google/android/material/chip/a;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1145
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->az()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1146
    iget-object v1, p0, Lcom/google/android/material/chip/a;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 1150
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public onStateChange([I)Z
    .locals 1
    .param p1    # [I
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 977
    iget-boolean v0, p0, Lcom/google/android/material/chip/a;->aq:Z

    if-eqz v0, :cond_0

    .line 978
    invoke-super {p0, p1}, Lcom/google/android/material/t/j;->onStateChange([I)Z

    .line 980
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->g()[I

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/a;->a([I[I)Z

    move-result p0

    return p0
.end method

.method public p()Lcom/google/android/material/q/d;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1581
    iget-object p0, p0, Lcom/google/android/material/chip/a;->V:Lcom/google/android/material/internal/q;

    invoke-virtual {p0}, Lcom/google/android/material/internal/q;->c()Lcom/google/android/material/q/d;

    move-result-object p0

    return-object p0
.end method

.method public p(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param

    .line 1781
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public q()Landroid/text/TextUtils$TruncateAt;
    .locals 0

    .line 1593
    iget-object p0, p0, Lcom/google/android/material/chip/a;->an:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public q(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/m;
        .end annotation
    .end param

    .line 1823
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->e(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public r(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 1843
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->e(F)V

    return-void
.end method

.method public r()Z
    .locals 0

    .line 1601
    iget-boolean p0, p0, Lcom/google/android/material/chip/a;->p:Z

    return p0
.end method

.method public s(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/h;
        .end annotation
    .end param

    .line 1875
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->f(Z)V

    return-void
.end method

.method public s()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1607
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->r()Z

    move-result p0

    return p0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1255
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1257
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1181
    iget v0, p0, Lcom/google/android/material/chip/a;->ae:I

    if-eq v0, p1, :cond_0

    .line 1182
    iput p1, p0, Lcom/google/android/material/chip/a;->ae:I

    .line 1183
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1194
    iget-object v0, p0, Lcom/google/android/material/chip/a;->af:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 1195
    iput-object p1, p0, Lcom/google/android/material/chip/a;->af:Landroid/graphics/ColorFilter;

    .line 1196
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1208
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ah:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1209
    iput-object p1, p0, Lcom/google/android/material/chip/a;->ah:Landroid/content/res/ColorStateList;

    .line 1210
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1216
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ai:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 1217
    iput-object p1, p0, Lcom/google/android/material/chip/a;->ai:Landroid/graphics/PorterDuff$Mode;

    .line 1218
    iget-object v0, p0, Lcom/google/android/material/chip/a;->ah:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0, p1}, Lcom/google/android/material/j/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/chip/a;->ag:Landroid/graphics/PorterDuffColorFilter;

    .line 1219
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    .line 1157
    invoke-super {p0, p1, p2}, Lcom/google/android/material/t/j;->setVisible(ZZ)Z

    move-result v0

    .line 1159
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ax()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1160
    iget-object v1, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1162
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->ay()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1163
    iget-object v1, p0, Lcom/google/android/material/chip/a;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 1165
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/a;->az()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1166
    iget-object v1, p0, Lcom/google/android/material/chip/a;->v:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    or-int/2addr v0, p1

    :cond_2
    if-eqz v0, :cond_3

    .line 1170
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->invalidateSelf()V

    :cond_3
    return v0
.end method

.method public t()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1648
    iget-object v0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public t(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/h;
        .end annotation
    .end param

    .line 1906
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->g(Z)V

    return-void
.end method

.method public u()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1677
    iget-object p0, p0, Lcom/google/android/material/chip/a;->r:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public u(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/h;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1932
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->g(Z)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1263
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1265
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public v()F
    .locals 0

    .line 1709
    iget p0, p0, Lcom/google/android/material/chip/a;->s:F

    return p0
.end method

.method public v(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param

    .line 1959
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public w(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/m;
        .end annotation
    .end param

    .line 1998
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->f(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public w()Z
    .locals 0

    .line 1730
    iget-boolean p0, p0, Lcom/google/android/material/chip/a;->u:Z

    return p0
.end method

.method public x(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/b;
        .end annotation
    .end param

    .line 2038
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/a/h;)V

    return-void
.end method

.method public x()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1736
    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->w()Z

    move-result p0

    return p0
.end method

.method public y()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1777
    iget-object v0, p0, Lcom/google/android/material/chip/a;->v:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/a;->v:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Landroidx/core/graphics/drawable/a;->h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public y(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/b;
        .end annotation
    .end param

    .line 2069
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b(Lcom/google/android/material/a/h;)V

    return-void
.end method

.method public z()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1819
    iget-object p0, p0, Lcom/google/android/material/chip/a;->x:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public z(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 2099
    iget-object v0, p0, Lcom/google/android/material/chip/a;->O:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->f(F)V

    return-void
.end method
