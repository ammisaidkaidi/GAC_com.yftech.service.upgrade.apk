.class public Landroidx/j/i;
.super Landroidx/j/ag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/j/i$b;,
        Landroidx/j/i$a;,
        Landroidx/j/i$c;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "android:changeTransform:matrix"

.field private static final o:Ljava/lang/String; = "android:changeTransform:transforms"

.field private static final p:Ljava/lang/String; = "android:changeTransform:parent"

.field private static final q:Ljava/lang/String; = "android:changeTransform:parentMatrix"

.field private static final r:Ljava/lang/String; = "android:changeTransform:intermediateParentMatrix"

.field private static final s:Ljava/lang/String; = "android:changeTransform:intermediateMatrix"

.field private static final t:[Ljava/lang/String;

.field private static final u:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/j/i$b;",
            "[F>;"
        }
    .end annotation
.end field

.field private static final v:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/j/i$b;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final w:Z


# instance fields
.field a:Z

.field private x:Z

.field private y:Landroid/graphics/Matrix;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android:changeTransform:matrix"

    const-string v1, "android:changeTransform:transforms"

    const-string v2, "android:changeTransform:parentMatrix"

    .line 60
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/j/i;->t:[Ljava/lang/String;

    .line 69
    new-instance v0, Landroidx/j/i$1;

    const-class v1, [F

    const-string v2, "nonTranslations"

    invoke-direct {v0, v1, v2}, Landroidx/j/i$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/j/i;->u:Landroid/util/Property;

    .line 85
    new-instance v0, Landroidx/j/i$2;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "translations"

    invoke-direct {v0, v1, v2}, Landroidx/j/i$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/j/i;->v:Landroid/util/Property;

    .line 101
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroidx/j/i;->w:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Landroidx/j/ag;-><init>()V

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Landroidx/j/i;->a:Z

    .line 105
    iput-boolean v0, p0, Landroidx/j/i;->x:Z

    .line 106
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroidx/j/i;->y:Landroid/graphics/Matrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Landroidx/j/ag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Landroidx/j/i;->a:Z

    .line 105
    iput-boolean v0, p0, Landroidx/j/i;->x:Z

    .line 106
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Landroidx/j/i;->y:Landroid/graphics/Matrix;

    .line 115
    sget-object v1, Landroidx/j/af;->g:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 116
    check-cast p2, Lorg/xmlpull/v1/XmlPullParser;

    const-string v1, "reparentWithOverlay"

    invoke-static {p1, p2, v1, v0, v0}, Landroidx/core/b/b/h;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/j/i;->a:Z

    const-string v1, "reparent"

    const/4 v2, 0x0

    .line 118
    invoke-static {p1, p2, v1, v2, v0}, Landroidx/core/b/b/h;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/j/i;->x:Z

    .line 120
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroidx/j/an;Landroidx/j/an;Z)Landroid/animation/ObjectAnimator;
    .locals 12

    .line 286
    iget-object p1, p1, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v0, "android:changeTransform:matrix"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Matrix;

    .line 287
    iget-object v0, p2, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v1, "android:changeTransform:matrix"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    if-nez p1, :cond_0

    .line 290
    sget-object p1, Landroidx/j/u;->a:Landroid/graphics/Matrix;

    :cond_0
    if-nez v0, :cond_1

    .line 294
    sget-object v0, Landroidx/j/u;->a:Landroid/graphics/Matrix;

    :cond_1
    move-object v4, v0

    .line 297
    invoke-virtual {p1, v4}, Landroid/graphics/Matrix;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 301
    :cond_2
    iget-object v0, p2, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v1, "android:changeTransform:transforms"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroidx/j/i$c;

    .line 304
    iget-object v5, p2, Landroidx/j/an;->b:Landroid/view/View;

    .line 305
    invoke-static {v5}, Landroidx/j/i;->a(Landroid/view/View;)V

    const/16 p2, 0x9

    .line 307
    new-array v0, p2, [F

    .line 308
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 309
    new-array p1, p2, [F

    .line 310
    invoke-virtual {v4, p1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 311
    new-instance v7, Landroidx/j/i$b;

    invoke-direct {v7, v5, v0}, Landroidx/j/i$b;-><init>(Landroid/view/View;[F)V

    .line 314
    sget-object v1, Landroidx/j/i;->u:Landroid/util/Property;

    new-instance v2, Landroidx/j/m;

    new-array p2, p2, [F

    invoke-direct {v2, p2}, Landroidx/j/m;-><init>([F)V

    const/4 p2, 0x2

    new-array v3, p2, [[F

    const/4 v8, 0x0

    aput-object v0, v3, v8

    const/4 v9, 0x1

    aput-object p1, v3, v9

    invoke-static {v1, v2, v3}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 317
    invoke-virtual {p0}, Landroidx/j/i;->o()Landroidx/j/w;

    move-result-object v2

    aget v3, v0, p2

    const/4 v10, 0x5

    aget v0, v0, v10

    aget v11, p1, p2

    aget p1, p1, v10

    invoke-virtual {v2, v3, v0, v11, p1}, Landroidx/j/w;->a(FFFF)Landroid/graphics/Path;

    move-result-object p1

    .line 320
    sget-object v0, Landroidx/j/i;->v:Landroid/util/Property;

    invoke-static {v0, p1}, Landroidx/j/z;->a(Landroid/util/Property;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 322
    new-array p2, p2, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, p2, v8

    aput-object p1, p2, v9

    invoke-static {v7, p2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 327
    new-instance p2, Landroidx/j/i$3;

    move-object v1, p2

    move-object v2, p0

    move v3, p3

    invoke-direct/range {v1 .. v7}, Landroidx/j/i$3;-><init>(Landroidx/j/i;ZLandroid/graphics/Matrix;Landroid/view/View;Landroidx/j/i$c;Landroidx/j/i$b;)V

    .line 368
    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 369
    invoke-static {p1, p2}, Landroidx/j/a;->a(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    return-object p1
.end method

.method static a(Landroid/view/View;)V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 441
    invoke-static/range {v0 .. v8}, Landroidx/j/i;->a(Landroid/view/View;FFFFFFFF)V

    return-void
.end method

.method static a(Landroid/view/View;FFFFFFFF)V
    .locals 0

    .line 448
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 449
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 450
    invoke-static {p0, p3}, Landroidx/core/n/af;->n(Landroid/view/View;F)V

    .line 451
    invoke-virtual {p0, p4}, Landroid/view/View;->setScaleX(F)V

    .line 452
    invoke-virtual {p0, p5}, Landroid/view/View;->setScaleY(F)V

    .line 453
    invoke-virtual {p0, p6}, Landroid/view/View;->setRotationX(F)V

    .line 454
    invoke-virtual {p0, p7}, Landroid/view/View;->setRotationY(F)V

    .line 455
    invoke-virtual {p0, p8}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z
    .locals 3

    .line 375
    invoke-virtual {p0, p1}, Landroidx/j/i;->b(Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Landroidx/j/i;->b(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 378
    :cond_0
    invoke-virtual {p0, p1, v1}, Landroidx/j/i;->d(Landroid/view/View;Z)Landroidx/j/an;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 380
    iget-object p0, p0, Landroidx/j/an;->b:Landroid/view/View;

    if-ne p2, p0, :cond_2

    :goto_0
    move v2, v1

    goto :goto_2

    :cond_1
    :goto_1
    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    return v2
.end method

.method private b(Landroid/view/ViewGroup;Landroidx/j/an;Landroidx/j/an;)V
    .locals 3

    .line 388
    iget-object v0, p3, Landroidx/j/an;->b:Landroid/view/View;

    .line 390
    iget-object v1, p3, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v2, "android:changeTransform:parentMatrix"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Matrix;

    .line 391
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 392
    invoke-static {p1, v2}, Landroidx/j/ay;->b(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 394
    invoke-static {v0, p1, v2}, Landroidx/j/s;->a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/j/o;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 399
    :cond_0
    iget-object v1, p2, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v2, "android:changeTransform:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p2, Landroidx/j/an;->b:Landroid/view/View;

    invoke-interface {p1, v1, v2}, Landroidx/j/o;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 403
    :goto_0
    iget-object v1, p0, Landroidx/j/ag;->k:Landroidx/j/al;

    if-eqz v1, :cond_1

    .line 404
    iget-object p0, p0, Landroidx/j/ag;->k:Landroidx/j/al;

    goto :goto_0

    .line 407
    :cond_1
    new-instance v1, Landroidx/j/i$a;

    invoke-direct {v1, v0, p1}, Landroidx/j/i$a;-><init>(Landroid/view/View;Landroidx/j/o;)V

    .line 408
    invoke-virtual {p0, v1}, Landroidx/j/ag;->a(Landroidx/j/ag$e;)Landroidx/j/ag;

    .line 412
    sget-boolean p0, Landroidx/j/i;->w:Z

    if-eqz p0, :cond_3

    .line 413
    iget-object p0, p2, Landroidx/j/an;->b:Landroid/view/View;

    iget-object p1, p3, Landroidx/j/an;->b:Landroid/view/View;

    if-eq p0, p1, :cond_2

    .line 414
    iget-object p0, p2, Landroidx/j/an;->b:Landroid/view/View;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroidx/j/ay;->a(Landroid/view/View;F)V

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    .line 416
    invoke-static {v0, p0}, Landroidx/j/ay;->a(Landroid/view/View;F)V

    :cond_3
    return-void
.end method

.method private b(Landroidx/j/an;Landroidx/j/an;)V
    .locals 2

    .line 421
    iget-object v0, p2, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v1, "android:changeTransform:parentMatrix"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Matrix;

    .line 422
    iget-object p2, p2, Landroidx/j/an;->b:Landroid/view/View;

    sget v1, Landroidx/j/aa$e;->parent_matrix:I

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 424
    iget-object p0, p0, Landroidx/j/i;->y:Landroid/graphics/Matrix;

    .line 425
    invoke-virtual {p0}, Landroid/graphics/Matrix;->reset()V

    .line 426
    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 428
    iget-object p2, p1, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v0, "android:changeTransform:matrix"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Matrix;

    if-nez p2, :cond_0

    .line 430
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 431
    iget-object v0, p1, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v1, "android:changeTransform:matrix"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_0
    iget-object p1, p1, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v0, "android:changeTransform:parentMatrix"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Matrix;

    .line 435
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 436
    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method private d(Landroidx/j/an;)V
    .locals 4

    .line 197
    iget-object v0, p1, Landroidx/j/an;->b:Landroid/view/View;

    .line 198
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    return-void

    .line 201
    :cond_0
    iget-object v1, p1, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v2, "android:changeTransform:parent"

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    new-instance v1, Landroidx/j/i$c;

    invoke-direct {v1, v0}, Landroidx/j/i$c;-><init>(Landroid/view/View;)V

    .line 203
    iget-object v2, p1, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v3, "android:changeTransform:transforms"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 205
    invoke-virtual {v1}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 210
    :goto_1
    iget-object v1, p1, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v3, "android:changeTransform:matrix"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-boolean p0, p0, Landroidx/j/i;->x:Z

    if-eqz p0, :cond_3

    .line 212
    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    .line 213
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 214
    invoke-static {v1, p0}, Landroidx/j/ay;->a(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 215
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 216
    iget-object v1, p1, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v2, "android:changeTransform:parentMatrix"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object p0, p1, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v1, "android:changeTransform:intermediateMatrix"

    sget v2, Landroidx/j/aa$e;->transition_transform:I

    .line 218
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 217
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object p0, p1, Landroidx/j/an;->a:Ljava/util/Map;

    const-string p1, "android:changeTransform:intermediateParentMatrix"

    sget v1, Landroidx/j/aa$e;->parent_matrix:I

    .line 220
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 219
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;
    .locals 5
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    if-eqz p2, :cond_7

    if-eqz p3, :cond_7

    .line 244
    iget-object v0, p2, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v1, "android:changeTransform:parent"

    .line 245
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p3, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v1, "android:changeTransform:parent"

    .line 246
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 250
    :cond_0
    iget-object v0, p2, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v1, "android:changeTransform:parent"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 251
    iget-object v1, p3, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v2, "android:changeTransform:parent"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 252
    iget-boolean v2, p0, Landroidx/j/i;->x:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v1}, Landroidx/j/i;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 254
    :goto_0
    iget-object v2, p2, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v3, "android:changeTransform:intermediateMatrix"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    if-eqz v2, :cond_2

    .line 256
    iget-object v3, p2, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v4, "android:changeTransform:matrix"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_2
    iget-object v2, p2, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v3, "android:changeTransform:intermediateParentMatrix"

    .line 260
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Matrix;

    if-eqz v2, :cond_3

    .line 262
    iget-object v3, p2, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v4, "android:changeTransform:parentMatrix"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v1, :cond_4

    .line 267
    invoke-direct {p0, p2, p3}, Landroidx/j/i;->b(Landroidx/j/an;Landroidx/j/an;)V

    .line 271
    :cond_4
    invoke-direct {p0, p2, p3, v1}, Landroidx/j/i;->a(Landroidx/j/an;Landroidx/j/an;Z)Landroid/animation/ObjectAnimator;

    move-result-object v2

    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 274
    iget-boolean v1, p0, Landroidx/j/i;->a:Z

    if-eqz v1, :cond_5

    .line 275
    invoke-direct {p0, p1, p2, p3}, Landroidx/j/i;->b(Landroid/view/ViewGroup;Landroidx/j/an;Landroidx/j/an;)V

    goto :goto_1

    .line 276
    :cond_5
    sget-boolean p0, Landroidx/j/i;->w:Z

    if-nez p0, :cond_6

    .line 278
    iget-object p0, p2, Landroidx/j/an;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    :cond_6
    :goto_1
    return-object v2

    :cond_7
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Landroidx/j/an;)V
    .locals 0
    .param p1    # Landroidx/j/an;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 226
    invoke-direct {p0, p1}, Landroidx/j/i;->d(Landroidx/j/an;)V

    .line 227
    sget-boolean p0, Landroidx/j/i;->w:Z

    if-nez p0, :cond_0

    .line 231
    iget-object p0, p1, Landroidx/j/an;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    iget-object p1, p1, Landroidx/j/an;->b:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Landroidx/j/i;->a:Z

    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 0

    .line 193
    sget-object p0, Landroidx/j/i;->t:[Ljava/lang/String;

    return-object p0
.end method

.method public b(Landroidx/j/an;)V
    .locals 0
    .param p1    # Landroidx/j/an;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 238
    invoke-direct {p0, p1}, Landroidx/j/i;->d(Landroidx/j/an;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Landroidx/j/i;->x:Z

    return-void
.end method

.method public b()Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Landroidx/j/i;->a:Z

    return p0
.end method

.method public c()Z
    .locals 0

    .line 175
    iget-boolean p0, p0, Landroidx/j/i;->x:Z

    return p0
.end method
