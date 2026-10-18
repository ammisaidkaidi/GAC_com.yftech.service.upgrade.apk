.class public Lcom/google/android/material/chip/Chip;
.super Landroidx/appcompat/widget/h;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/chip/a$a;
.implements Lcom/google/android/material/t/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/Chip$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "Chip"

.field private static final b:I

.field private static final c:I = 0x0

.field private static final d:I = 0x1

.field private static final e:Landroid/graphics/Rect;

.field private static final f:[I

.field private static final g:[I

.field private static final h:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final i:I = 0x30

.field private static final v:Ljava/lang/String; = "android.widget.Button"

.field private static final w:Ljava/lang/String; = "android.widget.CompoundButton"

.field private static final x:Ljava/lang/String; = "android.view.View"


# instance fields
.field private final A:Landroid/graphics/RectF;

.field private final B:Lcom/google/android/material/q/f;

.field private j:Lcom/google/android/material/chip/a;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private k:Landroid/graphics/drawable/InsetDrawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private l:Landroid/graphics/drawable/RippleDrawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private m:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private n:Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:I

.field private u:I
    .annotation build Landroidx/annotation/p;
        a = 0x1
    .end annotation
.end field

.field private final y:Lcom/google/android/material/chip/Chip$a;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 133
    sget v0, Lcom/google/android/material/a$n;->Widget_MaterialComponents_Chip_Action:I

    sput v0, Lcom/google/android/material/chip/Chip;->b:I

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/Rect;

    const/4 v0, 0x1

    .line 139
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a1

    aput v3, v1, v2

    sput-object v1, Lcom/google/android/material/chip/Chip;->f:[I

    .line 140
    new-array v0, v0, [I

    const v1, 0x101009f

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/chip/Chip;->g:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 191
    sget v0, Lcom/google/android/material/a$c;->chipStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 195
    sget v0, Lcom/google/android/material/chip/Chip;->b:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->z:Landroid/graphics/Rect;

    .line 171
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->A:Landroid/graphics/RectF;

    .line 172
    new-instance p1, Lcom/google/android/material/chip/Chip$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/chip/Chip$1;-><init>(Lcom/google/android/material/chip/Chip;)V

    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->B:Lcom/google/android/material/q/f;

    .line 197
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 199
    invoke-direct {p0, p2}, Lcom/google/android/material/chip/Chip;->a(Landroid/util/AttributeSet;)V

    .line 200
    sget v0, Lcom/google/android/material/chip/Chip;->b:I

    .line 201
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/chip/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/chip/a;

    move-result-object v6

    .line 203
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/chip/Chip;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 204
    invoke-virtual {p0, v6}, Lcom/google/android/material/chip/Chip;->setChipDrawable(Lcom/google/android/material/chip/a;)V

    .line 205
    invoke-static {p0}, Landroidx/core/n/af;->P(Landroid/view/View;)F

    move-result v0

    invoke-virtual {v6, v0}, Lcom/google/android/material/chip/a;->r(F)V

    .line 206
    sget-object v2, Lcom/google/android/material/a$o;->Chip:[I

    sget v4, Lcom/google/android/material/chip/Chip;->b:I

    const/4 v0, 0x0

    new-array v5, v0, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 207
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/s;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 213
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p3, v0, :cond_0

    .line 216
    sget p3, Lcom/google/android/material/a$o;->Chip_android_textColor:I

    .line 217
    invoke-static {p1, p2, p3}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 216
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 219
    :cond_0
    sget p1, Lcom/google/android/material/a$o;->Chip_shapeAppearance:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    .line 220
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 222
    new-instance p2, Lcom/google/android/material/chip/Chip$a;

    invoke-direct {p2, p0, p0}, Lcom/google/android/material/chip/Chip$a;-><init>(Lcom/google/android/material/chip/Chip;Lcom/google/android/material/chip/Chip;)V

    iput-object p2, p0, Lcom/google/android/material/chip/Chip;->y:Lcom/google/android/material/chip/Chip$a;

    .line 223
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->l()V

    if-nez p1, :cond_1

    .line 225
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->n()V

    .line 228
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/chip/Chip;->o:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    .line 229
    invoke-virtual {v6}, Lcom/google/android/material/chip/a;->o()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {v6}, Lcom/google/android/material/chip/a;->q()Landroid/text/TextUtils$TruncateAt;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 232
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->t()V

    .line 235
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p1}, Lcom/google/android/material/chip/a;->S()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 236
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setLines(I)V

    .line 237
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setHorizontallyScrolling(Z)V

    :cond_2
    const p1, 0x800013

    .line 241
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setGravity(I)V

    .line 243
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->m()V

    .line 244
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 245
    iget p1, p0, Lcom/google/android/material/chip/Chip;->u:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    .line 247
    :cond_3
    invoke-static {p0}, Landroidx/core/n/af;->p(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/chip/Chip;->t:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/chip/a;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    return-object p0
.end method

.method private a(IIII)V
    .locals 7

    .line 2345
    new-instance v6, Landroid/graphics/drawable/InsetDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    move-object v0, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iput-object v6, p0, Lcom/google/android/material/chip/Chip;->k:Landroid/graphics/drawable/InsetDrawable;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 309
    sget-object v2, Lcom/google/android/material/a$o;->Chip:[I

    sget v4, Lcom/google/android/material/chip/Chip;->b:I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 310
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/s;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 316
    sget p2, Lcom/google/android/material/a$o;->Chip_ensureMinTouchTargetSize:I

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/chip/Chip;->s:Z

    .line 319
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 p3, 0x30

    invoke-static {p2, p3}, Lcom/google/android/material/internal/z;->a(Landroid/content/Context;I)F

    move-result p2

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-float p2, p2

    .line 320
    sget p3, Lcom/google/android/material/a$o;->Chip_chipMinTouchTargetSize:I

    .line 323
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-double p2, p2

    .line 322
    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    iput p2, p0, Lcom/google/android/material/chip/Chip;->u:I

    .line 325
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p0, "http://schemas.android.com/apk/res/android"

    const-string v0, "background"

    .line 374
    invoke-interface {p1, p0, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, "Chip"

    const-string v0, "Do not set the background; Chip manages its own background drawable."

    .line 375
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p0, "http://schemas.android.com/apk/res/android"

    const-string v0, "drawableLeft"

    .line 377
    invoke-interface {p1, p0, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_7

    const-string p0, "http://schemas.android.com/apk/res/android"

    const-string v0, "drawableStart"

    .line 380
    invoke-interface {p1, p0, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_6

    const-string p0, "http://schemas.android.com/apk/res/android"

    const-string v0, "drawableEnd"

    .line 383
    invoke-interface {p1, p0, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_5

    const-string p0, "http://schemas.android.com/apk/res/android"

    const-string v0, "drawableRight"

    .line 386
    invoke-interface {p1, p0, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_4

    const-string p0, "http://schemas.android.com/apk/res/android"

    const-string v0, "singleLine"

    const/4 v1, 0x1

    .line 389
    invoke-interface {p1, p0, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "http://schemas.android.com/apk/res/android"

    const-string v0, "lines"

    .line 390
    invoke-interface {p1, p0, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_3

    const-string p0, "http://schemas.android.com/apk/res/android"

    const-string v0, "minLines"

    .line 391
    invoke-interface {p1, p0, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_3

    const-string p0, "http://schemas.android.com/apk/res/android"

    const-string v0, "maxLines"

    .line 392
    invoke-interface {p1, p0, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_3

    const-string p0, "http://schemas.android.com/apk/res/android"

    const-string v0, "gravity"

    const v1, 0x800013

    .line 396
    invoke-interface {p1, p0, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v1, :cond_2

    const-string p0, "Chip"

    const-string p1, "Chip text must be vertically center and start aligned"

    .line 399
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 393
    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 387
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 384
    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 381
    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 378
    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Lcom/google/android/material/chip/a;)V
    .locals 0
    .param p1    # Lcom/google/android/material/chip/a;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 480
    invoke-virtual {p1, p0}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/chip/a$a;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 819
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 821
    :try_start_0
    const-class p1, Landroidx/f/b/a;

    const-string v1, "n"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 v1, 0x1

    .line 822
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 823
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->y:Lcom/google/android/material/chip/Chip$a;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_0

    .line 826
    const-class p1, Landroidx/f/b/a;

    const-string v3, "f"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    .line 827
    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 828
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 829
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->y:Lcom/google/android/material/chip/Chip$a;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v0

    invoke-virtual {p1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    const-string p1, "Chip"

    const-string v1, "Unable to send Accessibility Exit event"

    .line 843
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string p1, "Chip"

    const-string v1, "Unable to send Accessibility Exit event"

    .line 840
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p0

    const-string p1, "Chip"

    const-string v1, "Unable to send Accessibility Exit event"

    .line 837
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception p0

    const-string p1, "Chip"

    const-string v1, "Unable to send Accessibility Exit event"

    .line 834
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return v0
.end method

.method static synthetic a(Lcom/google/android/material/chip/Chip;Z)Z
    .locals 0

    .line 129
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->r:Z

    return p1
.end method

.method private b(Lcom/google/android/material/chip/a;)V
    .locals 0
    .param p1    # Lcom/google/android/material/chip/a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 485
    invoke-virtual {p1, p0}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/chip/a$a;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/chip/Chip;)Z
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->s()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/google/android/material/chip/Chip;)Landroid/graphics/RectF;
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/material/chip/Chip;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->m:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/material/chip/Chip;)Landroid/graphics/Rect;
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private getCloseIconTouchBounds()Landroid/graphics/RectF;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 968
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->A:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 970
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->A:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/a;->b(Landroid/graphics/RectF;)V

    .line 975
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->A:Landroid/graphics/RectF;

    return-object p0
.end method

.method private getCloseIconTouchBoundsInt()Landroid/graphics/Rect;
    .locals 5
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 980
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 981
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->z:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 982
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->z:Landroid/graphics/Rect;

    return-object p0
.end method

.method private getTextAppearance()Lcom/google/android/material/q/d;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1414
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->p()Lcom/google/android/material/q/d;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static synthetic k()Landroid/graphics/Rect;
    .locals 1

    .line 129
    sget-object v0, Lcom/google/android/material/chip/Chip;->e:Landroid/graphics/Rect;

    return-object v0
.end method

.method private l()V
    .locals 1

    .line 299
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->m:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->y:Lcom/google/android/material/chip/Chip$a;

    invoke-static {p0, v0}, Landroidx/core/n/af;->a(Landroid/view/View;Landroidx/core/n/a;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 303
    invoke-static {p0, v0}, Landroidx/core/n/af;->a(Landroid/view/View;Landroidx/core/n/a;)V

    :goto_0
    return-void
.end method

.method private m()V
    .locals 4

    .line 333
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    .line 338
    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->Q()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    .line 339
    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->N()F

    move-result v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    .line 340
    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->d()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 341
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    .line 343
    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->J()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    .line 344
    invoke-virtual {v2}, Lcom/google/android/material/chip/a;->M()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    .line 345
    invoke-virtual {v2}, Lcom/google/android/material/chip/a;->c()F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 346
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->k:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v2, :cond_1

    .line 347
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 348
    iget-object v3, p0, Lcom/google/android/material/chip/Chip;->k:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 349
    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v3

    .line 350
    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    .line 354
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaddingBottom()I

    move-result v3

    .line 353
    invoke-static {p0, v1, v2, v0, v3}, Landroidx/core/n/af;->b(Landroid/view/View;IIII)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private n()V
    .locals 2

    .line 404
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 405
    new-instance v0, Lcom/google/android/material/chip/Chip$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/chip/Chip$2;-><init>(Lcom/google/android/material/chip/Chip;)V

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    .line 439
    sget-boolean v0, Lcom/google/android/material/r/b;->a:Z

    if-eqz v0, :cond_0

    .line 440
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->q()V

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/a;->a(Z)V

    .line 443
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/n/af;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 444
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->m()V

    .line 445
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->p()V

    :goto_0
    return-void
.end method

.method private p()V
    .locals 2

    .line 450
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->k:Landroid/graphics/drawable/InsetDrawable;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->k:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/a;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method private q()V
    .locals 4

    .line 467
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    .line 469
    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->n()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/material/r/b;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 470
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->l:Landroid/graphics/drawable/RippleDrawable;

    .line 472
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/a;->a(Z)V

    .line 474
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->l:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p0, v0}, Landroidx/core/n/af;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 475
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->m()V

    return-void
.end method

.method private r()[I
    .locals 4
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 920
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 923
    :goto_0
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->r:Z

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    .line 926
    :cond_1
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->q:Z

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 929
    :cond_2
    iget-boolean v3, p0, Lcom/google/android/material/chip/Chip;->p:Z

    if-eqz v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 932
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 936
    :cond_4
    new-array v0, v0, [I

    .line 939
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x101009e

    .line 940
    aput v3, v0, v1

    move v1, v2

    .line 943
    :cond_5
    iget-boolean v2, p0, Lcom/google/android/material/chip/Chip;->r:Z

    if-eqz v2, :cond_6

    const v2, 0x101009c

    .line 944
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 947
    :cond_6
    iget-boolean v2, p0, Lcom/google/android/material/chip/Chip;->q:Z

    if-eqz v2, :cond_7

    const v2, 0x1010367

    .line 948
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 951
    :cond_7
    iget-boolean v2, p0, Lcom/google/android/material/chip/Chip;->p:Z

    if-eqz v2, :cond_8

    const v2, 0x10100a7

    .line 952
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 955
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_9

    const p0, 0x10100a1

    .line 956
    aput p0, v0, v1

    :cond_9
    return-object v0
.end method

.method private s()Z
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->y()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setCloseIconHovered(Z)V
    .locals 1

    .line 896
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->q:Z

    if-eq v0, p1, :cond_0

    .line 897
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->q:Z

    .line 898
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private setCloseIconPressed(Z)V
    .locals 1

    .line 889
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->p:Z

    if-eq v0, p1, :cond_0

    .line 890
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->p:Z

    .line 891
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->refreshDrawableState()V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 3

    .line 1402
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 1403
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v1, :cond_0

    .line 1404
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {v1}, Lcom/google/android/material/chip/a;->getState()[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/TextPaint;->drawableState:[I

    .line 1406
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getTextAppearance()Lcom/google/android/material/q/d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1408
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->B:Lcom/google/android/material/q/f;

    invoke-virtual {v1, v2, v0, p0}, Lcom/google/android/material/q/d;->b(Landroid/content/Context;Landroid/text/TextPaint;Lcom/google/android/material/q/f;)V

    :cond_1
    return-void
.end method

.method private u()V
    .locals 1

    .line 2335
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->k:Landroid/graphics/drawable/InsetDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2336
    iput-object v0, p0, Lcom/google/android/material/chip/Chip;->k:Landroid/graphics/drawable/InsetDrawable;

    const/4 v0, 0x0

    .line 2337
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setMinWidth(I)V

    .line 2338
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getChipMinHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    .line 2339
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->o()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 696
    iget v0, p0, Lcom/google/android/material/chip/Chip;->u:I

    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->a(I)Z

    .line 697
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->requestLayout()V

    .line 698
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->invalidateOutline()V

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param

    .line 2282
    iput p1, p0, Lcom/google/android/material/chip/Chip;->u:I

    .line 2283
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->j()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2284
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->k:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_0

    .line 2285
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->u()V

    goto :goto_0

    .line 2287
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->o()V

    :goto_0
    return v1

    .line 2292
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->getIntrinsicHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2293
    iget-object v2, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {v2}, Lcom/google/android/material/chip/a;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gtz v2, :cond_3

    if-gtz v0, :cond_3

    .line 2296
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->k:Landroid/graphics/drawable/InsetDrawable;

    if-eqz p1, :cond_2

    .line 2297
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->u()V

    goto :goto_1

    .line 2299
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->o()V

    :goto_1
    return v1

    :cond_3
    if-lez v2, :cond_4

    .line 2304
    div-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_2
    if-lez v0, :cond_5

    .line 2305
    div-int/lit8 v1, v0, 0x2

    .line 2307
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->k:Landroid/graphics/drawable/InsetDrawable;

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 2308
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2309
    iget-object v4, p0, Lcom/google/android/material/chip/Chip;->k:Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/InsetDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2310
    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-ne v4, v1, :cond_6

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v1, :cond_6

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-ne v4, v2, :cond_6

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-ne v0, v2, :cond_6

    .line 2314
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->o()V

    return v3

    .line 2318
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_8

    .line 2319
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getMinHeight()I

    move-result v0

    if-eq v0, p1, :cond_7

    .line 2320
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    .line 2322
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getMinWidth()I

    move-result v0

    if-eq v0, p1, :cond_9

    .line 2323
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinWidth(I)V

    goto :goto_3

    .line 2326
    :cond_8
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinHeight(I)V

    .line 2327
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setMinWidth(I)V

    .line 2329
    :cond_9
    :goto_3
    invoke-direct {p0, v2, v1, v2, v1}, Lcom/google/android/material/chip/Chip;->a(IIII)V

    .line 2330
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->o()V

    return v3
.end method

.method public b()Z
    .locals 3
    .annotation build Landroidx/annotation/i;
    .end annotation

    const/4 v0, 0x0

    .line 744
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/Chip;->playSoundEffect(I)V

    .line 747
    iget-object v1, p0, Lcom/google/android/material/chip/Chip;->m:Landroid/view/View$OnClickListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 748
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->m:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    move v0, v2

    .line 754
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->y:Lcom/google/android/material/chip/Chip$a;

    invoke-virtual {p0, v2, v2}, Lcom/google/android/material/chip/Chip$a;->a(II)Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 1424
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->r()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1430
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->c()Z

    move-result p0

    return p0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 851
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/Chip;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->y:Lcom/google/android/material/chip/Chip$a;

    .line 852
    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip$a;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 853
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 858
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->y:Lcom/google/android/material/chip/Chip$a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/Chip$a;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->y:Lcom/google/android/material/chip/Chip$a;

    .line 866
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip$a;->c()I

    move-result v0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 869
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 904
    invoke-super {p0}, Landroidx/appcompat/widget/h;->drawableStateChanged()V

    .line 908
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->r()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/chip/a;->a([I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 913
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->invalidate()V

    :cond_1
    return-void
.end method

.method public e()Z
    .locals 1

    .line 1581
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->w()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1587
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->e()Z

    move-result p0

    return p0
.end method

.method public g()Z
    .locals 1

    .line 1759
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->C()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->k:Landroid/graphics/drawable/InsetDrawable;

    if-nez v0, :cond_0

    .line 460
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    return-object p0

    .line 462
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->k:Landroid/graphics/drawable/InsetDrawable;

    return-object p0
.end method

.method public getCheckedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1846
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->F()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCheckedIconTint()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1881
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->G()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getChipBackgroundColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1096
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->h()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getChipCornerRadius()F
    .locals 2

    .line 1164
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->k()F

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    :cond_0
    return v1
.end method

.method public getChipDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    return-object p0
.end method

.method public getChipEndPadding()F
    .locals 1

    .line 2224
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->Q()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChipIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1477
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->t()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getChipIconSize()F
    .locals 1

    .line 1547
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->v()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChipIconTint()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1512
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->u()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getChipMinHeight()F
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->j()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChipStartPadding()F
    .locals 1

    .line 1986
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->J()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChipStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1212
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->l()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getChipStrokeWidth()F
    .locals 1

    .line 1246
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->m()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChipText()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1321
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getCloseIcon()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1633
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->y()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCloseIconContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1749
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->B()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getCloseIconEndPadding()F
    .locals 1

    .line 2190
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->P()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCloseIconSize()F
    .locals 1

    .line 1704
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->A()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCloseIconStartPadding()F
    .locals 1

    .line 2156
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->O()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCloseIconTint()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1670
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->z()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 637
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->q()Landroid/text/TextUtils$TruncateAt;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 880
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->y:Lcom/google/android/material/chip/Chip$a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip$a;->c()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->y:Lcom/google/android/material/chip/Chip$a;

    .line 881
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip$a;->b()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 884
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 882
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBoundsInt()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    return-void
.end method

.method public getHideMotionSpec()Lcom/google/android/material/a/h;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1952
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->I()Lcom/google/android/material/a/h;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getIconEndPadding()F
    .locals 1

    .line 2054
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->L()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getIconStartPadding()F
    .locals 1

    .line 2020
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->K()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1281
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->n()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/t/o;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1188
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->getShapeAppearanceModel()Lcom/google/android/material/t/o;

    move-result-object p0

    return-object p0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/a/h;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1917
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->H()Lcom/google/android/material/a/h;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTextEndPadding()F
    .locals 1

    .line 2122
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->N()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getTextStartPadding()F
    .locals 1

    .line 2088
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->M()F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h()Z
    .locals 1

    .line 1793
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0}, Lcom/google/android/material/chip/a;->D()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public i()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1799
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->h()Z

    move-result p0

    return p0
.end method

.method public j()Z
    .locals 0

    .line 2259
    iget-boolean p0, p0, Lcom/google/android/material/chip/Chip;->s:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 252
    invoke-super {p0}, Landroidx/appcompat/widget/h;->onAttachedToWindow()V

    .line 254
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-static {p0, v0}, Lcom/google/android/material/t/k;->a(Landroid/view/View;Lcom/google/android/material/t/j;)V

    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    .line 490
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 491
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    sget-object v0, Lcom/google/android/material/chip/Chip;->f:[I

    invoke-static {p1, v0}, Lcom/google/android/material/chip/Chip;->mergeDrawableStates([I[I)[I

    .line 494
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 495
    sget-object p0, Lcom/google/android/material/chip/Chip;->g:[I

    invoke-static {p1, p0}, Lcom/google/android/material/chip/Chip;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 874
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/widget/h;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 875
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->y:Lcom/google/android/material/chip/Chip$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/chip/Chip$a;->a(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 799
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 805
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    goto :goto_0

    .line 802
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->setCloseIconHovered(Z)V

    .line 810
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 268
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 269
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.view.View"

    .line 275
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 271
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android.widget.CompoundButton"

    goto :goto_1

    :cond_2
    const-string v0, "android.widget.Button"

    .line 270
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 277
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 278
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isClickable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/material/chip/ChipGroup;

    if-eqz v0, :cond_4

    .line 281
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/chip/ChipGroup;

    .line 282
    invoke-static {p1}, Landroidx/core/n/a/d;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/n/a/d;

    move-result-object p1

    .line 284
    invoke-virtual {v0}, Lcom/google/android/material/chip/ChipGroup;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipGroup;->a(Landroid/view/View;)I

    move-result v1

    :goto_3
    move v4, v1

    goto :goto_4

    :cond_3
    const/4 v1, -0x1

    goto :goto_3

    .line 287
    :goto_4
    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/ChipGroup;->b(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 292
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v7

    .line 286
    invoke-static/range {v2 .. v7}, Landroidx/core/n/a/d$c;->a(IIIIZZ)Landroidx/core/n/a/d$c;

    move-result-object p0

    .line 285
    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->c(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 989
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2, v0, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 990
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 p1, 0x3ea

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 360
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->onRtlPropertiesChanged(I)V

    .line 364
    iget v0, p0, Lcom/google/android/material/chip/Chip;->t:I

    if-eq v0, p1, :cond_0

    .line 365
    iput p1, p0, Lcom/google/android/material/chip/Chip;->t:I

    .line 366
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->m()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 765
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 766
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->getCloseIconTouchBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 775
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->p:Z

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    .line 777
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_1

    .line 783
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/material/chip/Chip;->p:Z

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->b()Z

    move v0, v3

    goto :goto_0

    :cond_0
    :pswitch_2
    move v0, v2

    .line 789
    :goto_0
    invoke-direct {p0, v2}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    goto :goto_3

    :pswitch_3
    if-eqz v1, :cond_2

    .line 770
    invoke-direct {p0, v3}, Lcom/google/android/material/chip/Chip;->setCloseIconPressed(Z)V

    :cond_1
    :goto_1
    move v0, v3

    goto :goto_3

    :cond_2
    :goto_2
    move v0, v2

    :goto_3
    if-nez v0, :cond_3

    .line 794
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 530
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->l:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    const-string p0, "Chip"

    const-string p1, "Do not set the background; Chip manages its own background drawable."

    .line 531
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 533
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    const-string p0, "Chip"

    const-string p1, "Do not set the background color; Chip manages its own background drawable."

    .line 520
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 539
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->l:Landroid/graphics/drawable/RippleDrawable;

    if-eq p1, v0, :cond_0

    const-string p0, "Chip"

    const-string p1, "Do not set the background drawable; Chip manages its own background drawable."

    .line 540
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 542
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    const-string p0, "Chip"

    const-string p1, "Do not set the background resource; Chip manages its own background drawable."

    .line 525
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    const-string p0, "Chip"

    const-string p1, "Do not set the background tint list; Chip manages its own background drawable."

    .line 510
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    const-string p0, "Chip"

    const-string p1, "Do not set the background tint mode; Chip manages its own background drawable."

    .line 515
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 1781
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1782
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->f(Z)V

    :cond_0
    return-void
.end method

.method public setCheckableResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/h;
        .end annotation
    .end param

    .line 1769
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1770
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->s(I)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_0

    .line 707
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->o:Z

    goto :goto_0

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v0

    .line 710
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->setChecked(Z)V

    if-eq v0, p1, :cond_1

    .line 713
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_1

    .line 714
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->n:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setCheckedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1868
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1869
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->c(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1835
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(Z)V

    return-void
.end method

.method public setCheckedIconEnabledResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/h;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1829
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCheckedIconVisible(I)V

    return-void
.end method

.method public setCheckedIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param

    .line 1856
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1857
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->v(I)V

    :cond_0
    return-void
.end method

.method public setCheckedIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1904
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1905
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->f(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCheckedIconTintResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/m;
        .end annotation
    .end param

    .line 1891
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1892
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->w(I)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/h;
        .end annotation
    .end param

    .line 1809
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1810
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->t(I)V

    :cond_0
    return-void
.end method

.method public setCheckedIconVisible(Z)V
    .locals 1

    .line 1821
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1822
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->g(Z)V

    :cond_0
    return-void
.end method

.method public setChipBackgroundColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1118
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1119
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipBackgroundColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/m;
        .end annotation
    .end param

    .line 1106
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1107
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(I)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadius(F)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1199
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1200
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b(F)V

    :cond_0
    return-void
.end method

.method public setChipCornerRadiusResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1175
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1176
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->c(I)V

    :cond_0
    return-void
.end method

.method public setChipDrawable(Lcom/google/android/material/chip/a;)V
    .locals 1
    .param p1    # Lcom/google/android/material/chip/a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 427
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eq v0, p1, :cond_0

    .line 428
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/Chip;->a(Lcom/google/android/material/chip/a;)V

    .line 429
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    .line 432
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/chip/a;->i(Z)V

    .line 433
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/Chip;->b(Lcom/google/android/material/chip/a;)V

    .line 434
    iget p1, p0, Lcom/google/android/material/chip/Chip;->u:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->a(I)Z

    :cond_0
    return-void
.end method

.method public setChipEndPadding(F)V
    .locals 1

    .line 2246
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2247
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->m(F)V

    :cond_0
    return-void
.end method

.method public setChipEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 2234
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2235
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->G(I)V

    :cond_0
    return-void
.end method

.method public setChipIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1499
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1500
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setChipIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1466
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(Z)V

    return-void
.end method

.method public setChipIconEnabledResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/h;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1460
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setChipIconVisible(I)V

    return-void
.end method

.method public setChipIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param

    .line 1487
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1488
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->k(I)V

    :cond_0
    return-void
.end method

.method public setChipIconSize(F)V
    .locals 1

    .line 1569
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1570
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->d(F)V

    :cond_0
    return-void
.end method

.method public setChipIconSizeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 1557
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1558
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->m(I)V

    :cond_0
    return-void
.end method

.method public setChipIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1535
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1536
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->d(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipIconTintResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/m;
        .end annotation
    .end param

    .line 1522
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1523
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->l(I)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/h;
        .end annotation
    .end param

    .line 1440
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1441
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->i(I)V

    :cond_0
    return-void
.end method

.method public setChipIconVisible(Z)V
    .locals 1

    .line 1452
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1453
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b(Z)V

    :cond_0
    return-void
.end method

.method public setChipMinHeight(F)V
    .locals 1

    .line 1152
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1153
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(F)V

    :cond_0
    return-void
.end method

.method public setChipMinHeightResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 1140
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1141
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b(I)V

    :cond_0
    return-void
.end method

.method public setChipStartPadding(F)V
    .locals 1

    .line 2008
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2009
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->f(F)V

    :cond_0
    return-void
.end method

.method public setChipStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 1996
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1997
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->z(I)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1234
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1235
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setChipStrokeColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/m;
        .end annotation
    .end param

    .line 1222
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1223
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->d(I)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidth(F)V
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1269
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->c(F)V

    :cond_0
    return-void
.end method

.method public setChipStrokeWidthResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 1256
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1257
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->e(I)V

    :cond_0
    return-void
.end method

.method public setChipText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1357
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setChipTextResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1351
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCloseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1656
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1657
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->b(Landroid/graphics/drawable/Drawable;)V

    .line 1659
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->l()V

    return-void
.end method

.method public setCloseIconContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1737
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1738
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setCloseIconEnabled(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1622
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconEnabledResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/h;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1616
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(I)V

    return-void
.end method

.method public setCloseIconEndPadding(F)V
    .locals 1

    .line 2212
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2213
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->l(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 2200
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2201
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->F(I)V

    :cond_0
    return-void
.end method

.method public setCloseIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param

    .line 1643
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->p(I)V

    .line 1646
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->l()V

    return-void
.end method

.method public setCloseIconSize(F)V
    .locals 1

    .line 1726
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1727
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->e(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconSizeResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 1714
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1715
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->r(I)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPadding(F)V
    .locals 1

    .line 2178
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2179
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->k(F)V

    :cond_0
    return-void
.end method

.method public setCloseIconStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 2166
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2167
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->E(I)V

    :cond_0
    return-void
.end method

.method public setCloseIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1692
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1693
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->e(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setCloseIconTintResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/m;
        .end annotation
    .end param

    .line 1680
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1681
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->q(I)V

    :cond_0
    return-void
.end method

.method public setCloseIconVisible(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/h;
        .end annotation
    .end param

    .line 1597
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->setCloseIconVisible(Z)V

    return-void
.end method

.method public setCloseIconVisible(Z)V
    .locals 1

    .line 1607
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1608
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->d(Z)V

    .line 1610
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->l()V

    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 559
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/h;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 556
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 553
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 603
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/h;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 600
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 597
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 616
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/h;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void

    .line 613
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 610
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 631
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/h;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 629
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 626
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 571
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/h;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    .line 568
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set end drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 565
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set start drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-nez p1, :cond_1

    if-nez p3, :cond_0

    .line 587
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/h;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 584
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set right drawable using R.attr#closeIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 581
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Please set left drawable using R.attr#chipIcon."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setElevation(F)V
    .locals 1
    .annotation build Landroidx/annotation/am;
        a = 0x15
    .end annotation

    .line 260
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->setElevation(F)V

    .line 261
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 262
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->r(F)V

    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_0

    return-void

    .line 645
    :cond_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq p1, v0, :cond_2

    .line 648
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 649
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_1

    .line 650
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(Landroid/text/TextUtils$TruncateAt;)V

    :cond_1
    return-void

    .line 646
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Text within a chip are not allowed to scroll."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEnsureMinTouchTargetSize(Z)V
    .locals 0

    .line 2270
    iput-boolean p1, p0, Lcom/google/android/material/chip/Chip;->s:Z

    .line 2271
    iget p1, p0, Lcom/google/android/material/chip/Chip;->u:I

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/Chip;->a(I)Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    const v0, 0x800013

    if-eq p1, v0, :cond_0

    const-string p0, "Chip"

    const-string p1, "Chip text must be vertically center and start aligned"

    .line 503
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 505
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->setGravity(I)V

    :goto_0
    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/a/h;)V
    .locals 1
    .param p1    # Lcom/google/android/material/a/h;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1974
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1975
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->b(Lcom/google/android/material/a/h;)V

    :cond_0
    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/b;
        .end annotation
    .end param

    .line 1962
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1963
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->y(I)V

    :cond_0
    return-void
.end method

.method public setIconEndPadding(F)V
    .locals 1

    .line 2076
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2077
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->h(F)V

    :cond_0
    return-void
.end method

.method public setIconEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 2064
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2065
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->B(I)V

    :cond_0
    return-void
.end method

.method public setIconStartPadding(F)V
    .locals 1

    .line 2042
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2043
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->g(F)V

    :cond_0
    return-void
.end method

.method public setIconStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 2030
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2031
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->A(I)V

    :cond_0
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 2

    .line 1326
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_0

    return-void

    .line 1329
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 1330
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->setLayoutDirection(I)V

    :cond_1
    return-void
.end method

.method public setLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 667
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->setLines(I)V

    return-void

    .line 665
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 683
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->setMaxLines(I)V

    return-void

    .line 681
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMaxWidth(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param

    .line 688
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->setMaxWidth(I)V

    .line 689
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 690
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->H(I)V

    :cond_0
    return-void
.end method

.method public setMinLines(I)V
    .locals 1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 675
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->setMinLines(I)V

    return-void

    .line 673
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setOnCheckedChangeListenerInternal(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    .line 725
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->n:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public setOnCloseIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 730
    iput-object p1, p0, Lcom/google/android/material/chip/Chip;->m:Landroid/view/View$OnClickListener;

    .line 731
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->l()V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1306
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->c(Landroid/content/res/ColorStateList;)V

    .line 1309
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p1}, Lcom/google/android/material/chip/a;->a()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1310
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->q()V

    :cond_1
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/m;
        .end annotation
    .end param

    .line 1291
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->f(I)V

    .line 1293
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p1}, Lcom/google/android/material/chip/a;->a()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1294
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->q()V

    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/t/o;)V
    .locals 0
    .param p1    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1182
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/a/h;)V
    .locals 1
    .param p1    # Lcom/google/android/material/a/h;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1939
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1940
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/a/h;)V

    :cond_0
    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/b;
        .end annotation
    .end param

    .line 1927
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1928
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->x(I)V

    :cond_0
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 659
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->setSingleLine(Z)V

    return-void

    .line 657
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Chip does not support multi-line text"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1

    .line 1336
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 1342
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {v0}, Lcom/google/android/material/chip/a;->S()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    :goto_0
    invoke-super {p0, v0, p2}, Landroidx/appcompat/widget/h;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1343
    iget-object p2, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz p2, :cond_3

    .line 1344
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->a(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setTextAppearance(I)V
    .locals 1

    .line 1394
    invoke-super {p0, p1}, Landroidx/appcompat/widget/h;->setTextAppearance(I)V

    .line 1395
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1396
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->h(I)V

    .line 1398
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->t()V

    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    .line 1385
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/h;->setTextAppearance(Landroid/content/Context;I)V

    .line 1386
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz p1, :cond_0

    .line 1387
    iget-object p1, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/a;->h(I)V

    .line 1389
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->t()V

    return-void
.end method

.method public setTextAppearance(Lcom/google/android/material/q/d;)V
    .locals 1
    .param p1    # Lcom/google/android/material/q/d;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1377
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/chip/a;->a(Lcom/google/android/material/q/d;)V

    .line 1380
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/chip/Chip;->t()V

    return-void
.end method

.method public setTextAppearanceResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param

    .line 1367
    invoke-virtual {p0}, Lcom/google/android/material/chip/Chip;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/material/chip/Chip;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public setTextEndPadding(F)V
    .locals 1

    .line 2144
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2145
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->j(F)V

    :cond_0
    return-void
.end method

.method public setTextEndPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 2132
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2133
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->D(I)V

    :cond_0
    return-void
.end method

.method public setTextStartPadding(F)V
    .locals 1

    .line 2110
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2111
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->i(F)V

    :cond_0
    return-void
.end method

.method public setTextStartPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 2098
    iget-object v0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    if-eqz v0, :cond_0

    .line 2099
    iget-object p0, p0, Lcom/google/android/material/chip/Chip;->j:Lcom/google/android/material/chip/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/a;->C(I)V

    :cond_0
    return-void
.end method
