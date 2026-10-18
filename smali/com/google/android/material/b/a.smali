.class public Lcom/google/android/material/b/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/q$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/b/a$b;,
        Lcom/google/android/material/b/a$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x800035

.field public static final b:I = 0x800033

.field public static final c:I = 0x800055

.field public static final d:I = 0x800053

.field static final e:Ljava/lang/String; = "+"

.field private static final f:I = 0x4

.field private static final g:I = -0x1

.field private static final h:I = 0x9

.field private static final i:I
    .annotation build Landroidx/annotation/at;
    .end annotation
.end field

.field private static final j:I
    .annotation build Landroidx/annotation/f;
    .end annotation
.end field


# instance fields
.field private final k:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/google/android/material/t/j;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final m:Lcom/google/android/material/internal/q;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final n:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final o:F

.field private final p:F

.field private final q:F

.field private final r:Lcom/google/android/material/b/a$b;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private s:F

.field private t:F

.field private u:I

.field private v:F

.field private w:F

.field private x:F

.field private y:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    sget v0, Lcom/google/android/material/a$n;->Widget_MaterialComponents_Badge:I

    sput v0, Lcom/google/android/material/b/a;->i:I

    .line 147
    sget v0, Lcom/google/android/material/a$c;->badgeStyle:I

    sput v0, Lcom/google/android/material/b/a;->j:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 381
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 382
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/b/a;->k:Ljava/lang/ref/WeakReference;

    .line 383
    invoke-static {p1}, Lcom/google/android/material/internal/s;->b(Landroid/content/Context;)V

    .line 384
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 385
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/b/a;->n:Landroid/graphics/Rect;

    .line 386
    new-instance v1, Lcom/google/android/material/t/j;

    invoke-direct {v1}, Lcom/google/android/material/t/j;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/b/a;->l:Lcom/google/android/material/t/j;

    .line 388
    sget v1, Lcom/google/android/material/a$f;->mtrl_badge_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/b/a;->o:F

    .line 389
    sget v1, Lcom/google/android/material/a$f;->mtrl_badge_long_text_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/b/a;->q:F

    .line 390
    sget v1, Lcom/google/android/material/a$f;->mtrl_badge_with_text_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/b/a;->p:F

    .line 392
    new-instance v0, Lcom/google/android/material/internal/q;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/q;-><init>(Lcom/google/android/material/internal/q$a;)V

    iput-object v0, p0, Lcom/google/android/material/b/a;->m:Lcom/google/android/material/internal/q;

    .line 393
    iget-object v0, p0, Lcom/google/android/material/b/a;->m:Lcom/google/android/material/internal/q;

    invoke-virtual {v0}, Lcom/google/android/material/internal/q;->a()Landroid/text/TextPaint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 394
    new-instance v0, Lcom/google/android/material/b/a$b;

    invoke-direct {v0, p1}, Lcom/google/android/material/b/a$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    .line 395
    sget p1, Lcom/google/android/material/a$n;->TextAppearance_MaterialComponents_Badge:I

    invoke-direct {p0, p1}, Lcom/google/android/material/b/a;->j(I)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 0
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/au;
        .end annotation
    .end param

    .line 378
    invoke-static {p0, p1, p2}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/material/b/a;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 277
    sget v0, Lcom/google/android/material/b/a;->j:I

    sget v1, Lcom/google/android/material/b/a;->i:I

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Lcom/google/android/material/b/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/b/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;I)Lcom/google/android/material/b/a;
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

    const-string v0, "badge"

    .line 294
    invoke-static {p0, p1, v0}, Lcom/google/android/material/j/a;->a(Landroid/content/Context;ILjava/lang/CharSequence;)Landroid/util/AttributeSet;

    move-result-object p1

    .line 295
    invoke-interface {p1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    move-result v0

    if-nez v0, :cond_0

    .line 297
    sget v0, Lcom/google/android/material/b/a;->i:I

    .line 299
    :cond_0
    sget v1, Lcom/google/android/material/b/a;->j:I

    invoke-static {p0, p1, v1, v0}, Lcom/google/android/material/b/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/b/a;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/b/a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
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

    .line 309
    new-instance v0, Lcom/google/android/material/b/a;

    invoke-direct {v0, p0}, Lcom/google/android/material/b/a;-><init>(Landroid/content/Context;)V

    .line 310
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/material/b/a;->b(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-object v0
.end method

.method static a(Landroid/content/Context;Lcom/google/android/material/b/a$b;)Lcom/google/android/material/b/a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/b/a$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 269
    new-instance v0, Lcom/google/android/material/b/a;

    invoke-direct {v0, p0}, Lcom/google/android/material/b/a;-><init>(Landroid/content/Context;)V

    .line 270
    invoke-direct {v0, p1}, Lcom/google/android/material/b/a;->a(Lcom/google/android/material/b/a$b;)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 755
    iget-object v0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {v0}, Lcom/google/android/material/b/a$b;->e(Lcom/google/android/material/b/a$b;)I

    move-result v0

    const v1, 0x800053

    if-eq v0, v1, :cond_0

    const v2, 0x800055

    if-eq v0, v2, :cond_0

    .line 763
    iget v0, p2, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {v2}, Lcom/google/android/material/b/a$b;->g(Lcom/google/android/material/b/a$b;)I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/b/a;->t:F

    goto :goto_0

    .line 758
    :cond_0
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {v2}, Lcom/google/android/material/b/a$b;->g(Lcom/google/android/material/b/a$b;)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/google/android/material/b/a;->t:F

    .line 767
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->e()I

    move-result v0

    const/16 v2, 0x9

    if-gt v0, v2, :cond_2

    .line 768
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/b/a;->o:F

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/android/material/b/a;->p:F

    :goto_1
    iput v0, p0, Lcom/google/android/material/b/a;->v:F

    .line 769
    iget v0, p0, Lcom/google/android/material/b/a;->v:F

    iput v0, p0, Lcom/google/android/material/b/a;->x:F

    .line 770
    iget v0, p0, Lcom/google/android/material/b/a;->v:F

    iput v0, p0, Lcom/google/android/material/b/a;->w:F

    goto :goto_2

    .line 772
    :cond_2
    iget v0, p0, Lcom/google/android/material/b/a;->p:F

    iput v0, p0, Lcom/google/android/material/b/a;->v:F

    .line 773
    iget v0, p0, Lcom/google/android/material/b/a;->v:F

    iput v0, p0, Lcom/google/android/material/b/a;->x:F

    .line 774
    invoke-direct {p0}, Lcom/google/android/material/b/a;->n()Ljava/lang/String;

    move-result-object v0

    .line 775
    iget-object v2, p0, Lcom/google/android/material/b/a;->m:Lcom/google/android/material/internal/q;

    invoke-virtual {v2, v0}, Lcom/google/android/material/internal/q;->a(Ljava/lang/String;)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    iget v2, p0, Lcom/google/android/material/b/a;->q:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/material/b/a;->w:F

    .line 780
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 782
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lcom/google/android/material/a$f;->mtrl_badge_text_horizontal_edge_offset:I

    goto :goto_3

    :cond_3
    sget v0, Lcom/google/android/material/a$f;->mtrl_badge_horizontal_edge_offset:I

    .line 781
    :goto_3
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 786
    iget-object v0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {v0}, Lcom/google/android/material/b/a$b;->e(Lcom/google/android/material/b/a$b;)I

    move-result v0

    const v2, 0x800033

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_5

    .line 798
    invoke-static {p3}, Landroidx/core/n/af;->p(Landroid/view/View;)I

    move-result p3

    if-nez p3, :cond_4

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p3, p0, Lcom/google/android/material/b/a;->w:F

    add-float/2addr p2, p3

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    .line 799
    invoke-static {p1}, Lcom/google/android/material/b/a$b;->f(Lcom/google/android/material/b/a$b;)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    goto :goto_4

    :cond_4
    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p3, p0, Lcom/google/android/material/b/a;->w:F

    sub-float/2addr p2, p3

    int-to-float p1, p1

    add-float/2addr p2, p1

    iget-object p1, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    .line 800
    invoke-static {p1}, Lcom/google/android/material/b/a$b;->f(Lcom/google/android/material/b/a$b;)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p2, p1

    :goto_4
    iput p2, p0, Lcom/google/android/material/b/a;->s:F

    goto :goto_6

    .line 790
    :cond_5
    invoke-static {p3}, Landroidx/core/n/af;->p(Landroid/view/View;)I

    move-result p3

    if-nez p3, :cond_6

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget p3, p0, Lcom/google/android/material/b/a;->w:F

    sub-float/2addr p2, p3

    int-to-float p1, p1

    add-float/2addr p2, p1

    iget-object p1, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    .line 791
    invoke-static {p1}, Lcom/google/android/material/b/a$b;->f(Lcom/google/android/material/b/a$b;)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p2, p1

    goto :goto_5

    :cond_6
    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget p3, p0, Lcom/google/android/material/b/a;->w:F

    add-float/2addr p2, p3

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iget-object p1, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    .line 792
    invoke-static {p1}, Lcom/google/android/material/b/a$b;->f(Lcom/google/android/material/b/a$b;)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr p2, p1

    :goto_5
    iput p2, p0, Lcom/google/android/material/b/a;->s:F

    :goto_6
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5

    .line 806
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 807
    invoke-direct {p0}, Lcom/google/android/material/b/a;->n()Ljava/lang/String;

    move-result-object v1

    .line 808
    iget-object v2, p0, Lcom/google/android/material/b/a;->m:Lcom/google/android/material/internal/q;

    invoke-virtual {v2}, Lcom/google/android/material/internal/q;->a()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 809
    iget v2, p0, Lcom/google/android/material/b/a;->s:F

    iget v3, p0, Lcom/google/android/material/b/a;->t:F

    .line 812
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v3, v0

    iget-object p0, p0, Lcom/google/android/material/b/a;->m:Lcom/google/android/material/internal/q;

    .line 813
    invoke-virtual {p0}, Lcom/google/android/material/internal/q;->a()Landroid/text/TextPaint;

    move-result-object p0

    .line 809
    invoke-virtual {p1, v1, v2, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Lcom/google/android/material/b/a$b;)V
    .locals 2
    .param p1    # Lcom/google/android/material/b/a$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 323
    invoke-static {p1}, Lcom/google/android/material/b/a$b;->a(Lcom/google/android/material/b/a$b;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/b/a;->d(I)V

    .line 328
    invoke-static {p1}, Lcom/google/android/material/b/a$b;->b(Lcom/google/android/material/b/a$b;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 329
    invoke-static {p1}, Lcom/google/android/material/b/a$b;->b(Lcom/google/android/material/b/a$b;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/b/a;->c(I)V

    .line 332
    :cond_0
    invoke-static {p1}, Lcom/google/android/material/b/a$b;->c(Lcom/google/android/material/b/a$b;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/b/a;->a(I)V

    .line 336
    invoke-static {p1}, Lcom/google/android/material/b/a$b;->d(Lcom/google/android/material/b/a$b;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/b/a;->b(I)V

    .line 338
    invoke-static {p1}, Lcom/google/android/material/b/a$b;->e(Lcom/google/android/material/b/a$b;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/b/a;->e(I)V

    .line 340
    invoke-static {p1}, Lcom/google/android/material/b/a$b;->f(Lcom/google/android/material/b/a$b;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/b/a;->h(I)V

    .line 341
    invoke-static {p1}, Lcom/google/android/material/b/a$b;->g(Lcom/google/android/material/b/a$b;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/b/a;->i(I)V

    return-void
.end method

.method private a(Lcom/google/android/material/q/d;)V
    .locals 2
    .param p1    # Lcom/google/android/material/q/d;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 711
    iget-object v0, p0, Lcom/google/android/material/b/a;->m:Lcom/google/android/material/internal/q;

    invoke-virtual {v0}, Lcom/google/android/material/internal/q;->c()Lcom/google/android/material/q/d;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/b/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    .line 718
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/b/a;->m:Lcom/google/android/material/internal/q;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/material/internal/q;->a(Lcom/google/android/material/q/d;Landroid/content/Context;)V

    .line 719
    invoke-direct {p0}, Lcom/google/android/material/b/a;->m()V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p3    # I
        .annotation build Landroidx/annotation/f;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param

    .line 346
    sget-object v2, Lcom/google/android/material/a$o;->Badge:[I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    move v4, p4

    .line 347
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/s;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 350
    sget p3, Lcom/google/android/material/a$o;->Badge_maxCharacterCount:I

    const/4 p4, 0x4

    .line 351
    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 350
    invoke-virtual {p0, p3}, Lcom/google/android/material/b/a;->d(I)V

    .line 356
    sget p3, Lcom/google/android/material/a$o;->Badge_number:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 357
    sget p3, Lcom/google/android/material/a$o;->Badge_number:I

    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/b/a;->c(I)V

    .line 360
    :cond_0
    sget p3, Lcom/google/android/material/a$o;->Badge_backgroundColor:I

    invoke-static {p1, p2, p3}, Lcom/google/android/material/b/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/b/a;->a(I)V

    .line 364
    sget p3, Lcom/google/android/material/a$o;->Badge_badgeTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 365
    sget p3, Lcom/google/android/material/a$o;->Badge_badgeTextColor:I

    invoke-static {p1, p2, p3}, Lcom/google/android/material/b/a;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/b/a;->b(I)V

    .line 368
    :cond_1
    sget p1, Lcom/google/android/material/a$o;->Badge_badgeGravity:I

    const p3, 0x800035

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/b/a;->e(I)V

    .line 370
    sget p1, Lcom/google/android/material/a$o;->Badge_horizontalOffset:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/b/a;->h(I)V

    .line 371
    sget p1, Lcom/google/android/material/a$o;->Badge_verticalOffset:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/b/a;->i(I)V

    .line 373
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private j(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param

    .line 703
    iget-object v0, p0, Lcom/google/android/material/b/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 707
    :cond_0
    new-instance v1, Lcom/google/android/material/q/d;

    invoke-direct {v1, v0, p1}, Lcom/google/android/material/q/d;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v1}, Lcom/google/android/material/b/a;->a(Lcom/google/android/material/q/d;)V

    return-void
.end method

.method private m()V
    .locals 6

    .line 723
    iget-object v0, p0, Lcom/google/android/material/b/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 724
    iget-object v1, p0, Lcom/google/android/material/b/a;->y:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/b/a;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v0, :cond_7

    if-nez v1, :cond_1

    goto :goto_1

    .line 728
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 729
    iget-object v4, p0, Lcom/google/android/material/b/a;->n:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 731
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 733
    invoke-virtual {v1, v4}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 735
    iget-object v5, p0, Lcom/google/android/material/b/a;->z:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_2

    iget-object v2, p0, Lcom/google/android/material/b/a;->z:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    :cond_2
    if-nez v2, :cond_3

    .line 736
    sget-boolean v5, Lcom/google/android/material/b/b;->a:Z

    if-eqz v5, :cond_5

    :cond_3
    if-nez v2, :cond_4

    .line 739
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 740
    :cond_4
    invoke-virtual {v2, v1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 743
    :cond_5
    invoke-direct {p0, v0, v4, v1}, Lcom/google/android/material/b/a;->a(Landroid/content/Context;Landroid/graphics/Rect;Landroid/view/View;)V

    .line 745
    iget-object v0, p0, Lcom/google/android/material/b/a;->n:Landroid/graphics/Rect;

    iget v1, p0, Lcom/google/android/material/b/a;->s:F

    iget v2, p0, Lcom/google/android/material/b/a;->t:F

    iget v4, p0, Lcom/google/android/material/b/a;->w:F

    iget v5, p0, Lcom/google/android/material/b/a;->x:F

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/material/b/b;->a(Landroid/graphics/Rect;FFFF)V

    .line 747
    iget-object v0, p0, Lcom/google/android/material/b/a;->l:Lcom/google/android/material/t/j;

    iget v1, p0, Lcom/google/android/material/b/a;->v:F

    invoke-virtual {v0, v1}, Lcom/google/android/material/t/j;->o(F)V

    .line 748
    iget-object v0, p0, Lcom/google/android/material/b/a;->n:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 749
    iget-object v0, p0, Lcom/google/android/material/b/a;->l:Lcom/google/android/material/t/j;

    iget-object p0, p0, Lcom/google/android/material/b/a;->n:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/google/android/material/t/j;->setBounds(Landroid/graphics/Rect;)V

    :cond_6
    return-void

    :cond_7
    :goto_1
    return-void
.end method

.method private n()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 819
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->e()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/b/a;->u:I

    if-gt v0, v1, :cond_0

    .line 820
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->e()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/b/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 827
    :cond_1
    sget v1, Lcom/google/android/material/a$m;->mtrl_exceed_max_badge_number_suffix:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget p0, p0, Lcom/google/android/material/b/a;->u:I

    .line 829
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    const-string v3, "+"

    aput-object v3, v2, p0

    .line 827
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private o()V
    .locals 4

    .line 835
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->g()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/material/b/a;->u:I

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/material/b/a$b;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 262
    iget-object p0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    return-object p0
.end method

.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 434
    iget-object v0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {v0, p1}, Lcom/google/android/material/b/a$b;->a(Lcom/google/android/material/b/a$b;I)I

    .line 435
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 436
    iget-object v0, p0, Lcom/google/android/material/b/a;->l:Lcom/google/android/material/t/j;

    invoke-virtual {v0}, Lcom/google/android/material/t/j;->U()Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 437
    iget-object v0, p0, Lcom/google/android/material/b/a;->l:Lcom/google/android/material/t/j;

    invoke-virtual {v0, p1}, Lcom/google/android/material/t/j;->g(Landroid/content/res/ColorStateList;)V

    .line 438
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 410
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/b/a;->y:Ljava/lang/ref/WeakReference;

    .line 411
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/material/b/a;->z:Ljava/lang/ref/WeakReference;

    .line 412
    invoke-direct {p0}, Lcom/google/android/material/b/a;->m()V

    .line 413
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->invalidateSelf()V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 626
    iget-object p0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {p0, p1}, Lcom/google/android/material/b/a$b;->a(Lcom/google/android/material/b/a$b;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 319
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/b/a;->setVisible(ZZ)Z

    return-void
.end method

.method public b()I
    .locals 0
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 424
    iget-object p0, p0, Lcom/google/android/material/b/a;->l:Lcom/google/android/material/t/j;

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->U()Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method public b(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 460
    iget-object v0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {v0, p1}, Lcom/google/android/material/b/a$b;->b(Lcom/google/android/material/b/a$b;I)I

    .line 461
    iget-object v0, p0, Lcom/google/android/material/b/a;->m:Lcom/google/android/material/internal/q;

    invoke-virtual {v0}, Lcom/google/android/material/internal/q;->a()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 462
    iget-object v0, p0, Lcom/google/android/material/b/a;->m:Lcom/google/android/material/internal/q;

    invoke-virtual {v0}, Lcom/google/android/material/internal/q;->a()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 463
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public c()I
    .locals 0
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 450
    iget-object p0, p0, Lcom/google/android/material/b/a;->m:Lcom/google/android/material/internal/q;

    invoke-virtual {p0}, Lcom/google/android/material/internal/q;->a()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result p0

    return p0
.end method

.method public c(I)V
    .locals 1

    const/4 v0, 0x0

    .line 497
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 498
    iget-object v0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {v0}, Lcom/google/android/material/b/a$b;->b(Lcom/google/android/material/b/a$b;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {v0, p1}, Lcom/google/android/material/b/a$b;->c(Lcom/google/android/material/b/a$b;I)I

    .line 500
    iget-object p1, p0, Lcom/google/android/material/b/a;->m:Lcom/google/android/material/internal/q;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/q;->a(Z)V

    .line 501
    invoke-direct {p0}, Lcom/google/android/material/b/a;->m()V

    .line 502
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {v0}, Lcom/google/android/material/b/a$b;->a(Lcom/google/android/material/b/a$b;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 530
    iget-object v0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {v0, p1}, Lcom/google/android/material/b/a$b;->d(Lcom/google/android/material/b/a$b;I)I

    .line 531
    invoke-direct {p0}, Lcom/google/android/material/b/a;->o()V

    .line 532
    iget-object p1, p0, Lcom/google/android/material/b/a;->m:Lcom/google/android/material/internal/q;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/q;->a(Z)V

    .line 533
    invoke-direct {p0}, Lcom/google/android/material/b/a;->m()V

    .line 534
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 469
    iget-object p0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {p0}, Lcom/google/android/material/b/a$b;->b(Lcom/google/android/material/b/a$b;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 599
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/b/a;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/b/a;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 603
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/b/a;->l:Lcom/google/android/material/t/j;

    invoke-virtual {v0, p1}, Lcom/google/android/material/t/j;->draw(Landroid/graphics/Canvas;)V

    .line 604
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    invoke-direct {p0, p1}, Lcom/google/android/material/b/a;->a(Landroid/graphics/Canvas;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public e()I
    .locals 1

    .line 482
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 485
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {p0}, Lcom/google/android/material/b/a$b;->b(Lcom/google/android/material/b/a$b;)I

    move-result p0

    return p0
.end method

.method public e(I)V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {v0}, Lcom/google/android/material/b/a$b;->e(Lcom/google/android/material/b/a$b;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 550
    iget-object v0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {v0, p1}, Lcom/google/android/material/b/a$b;->e(Lcom/google/android/material/b/a$b;I)I

    .line 551
    iget-object p1, p0, Lcom/google/android/material/b/a;->y:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/b/a;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 552
    iget-object p1, p0, Lcom/google/android/material/b/a;->y:Ljava/lang/ref/WeakReference;

    .line 553
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/material/b/a;->z:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/b/a;->z:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 552
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/b/a;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/material/b/a$b;->c(Lcom/google/android/material/b/a$b;I)I

    .line 509
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->invalidateSelf()V

    return-void
.end method

.method public f(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param

    .line 630
    iget-object p0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {p0, p1}, Lcom/google/android/material/b/a$b;->g(Lcom/google/android/material/b/a$b;I)I

    return-void
.end method

.method public g()I
    .locals 0

    .line 519
    iget-object p0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {p0}, Lcom/google/android/material/b/a$b;->a(Lcom/google/android/material/b/a$b;)I

    move-result p0

    return p0
.end method

.method public g(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param

    .line 635
    iget-object p0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {p0, p1}, Lcom/google/android/material/b/a$b;->h(Lcom/google/android/material/b/a$b;I)I

    return-void
.end method

.method public getAlpha()I
    .locals 0

    .line 570
    iget-object p0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {p0}, Lcom/google/android/material/b/a$b;->h(Lcom/google/android/material/b/a$b;)I

    move-result p0

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 588
    iget-object p0, p0, Lcom/google/android/material/b/a;->n:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 594
    iget-object p0, p0, Lcom/google/android/material/b/a;->n:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public h()I
    .locals 0

    .line 540
    iget-object p0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {p0}, Lcom/google/android/material/b/a$b;->e(Lcom/google/android/material/b/a$b;)I

    move-result p0

    return p0
.end method

.method public h(I)V
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {v0, p1}, Lcom/google/android/material/b/a$b;->i(Lcom/google/android/material/b/a$b;I)I

    .line 673
    invoke-direct {p0}, Lcom/google/android/material/b/a;->m()V

    return-void
.end method

.method public i()V
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 617
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->invalidateSelf()V

    return-void
.end method

.method public i(I)V
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {v0, p1}, Lcom/google/android/material/b/a$b;->j(Lcom/google/android/material/b/a$b;I)I

    .line 691
    invoke-direct {p0}, Lcom/google/android/material/b/a;->m()V

    return-void
.end method

.method public isStateful()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public j()Ljava/lang/CharSequence;
    .locals 5
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 640
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 643
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 644
    iget-object v0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {v0}, Lcom/google/android/material/b/a$b;->i(Lcom/google/android/material/b/a$b;)I

    move-result v0

    if-lez v0, :cond_3

    .line 645
    iget-object v0, p0, Lcom/google/android/material/b/a;->k:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    return-object v1

    .line 649
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->e()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/b/a;->u:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gt v1, v2, :cond_2

    .line 651
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    .line 653
    invoke-static {v1}, Lcom/google/android/material/b/a$b;->i(Lcom/google/android/material/b/a$b;)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/b/a;->e()I

    move-result v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/material/b/a;->e()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v3

    .line 652
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 655
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    .line 656
    invoke-static {v1}, Lcom/google/android/material/b/a$b;->j(Lcom/google/android/material/b/a$b;)I

    move-result v1

    new-array v2, v4, [Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/material/b/a;->u:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    .line 655
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v1

    .line 662
    :cond_4
    iget-object p0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {p0}, Lcom/google/android/material/b/a$b;->k(Lcom/google/android/material/b/a$b;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public k()I
    .locals 0

    .line 681
    iget-object p0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {p0}, Lcom/google/android/material/b/a$b;->f(Lcom/google/android/material/b/a$b;)I

    move-result p0

    return p0
.end method

.method public l()I
    .locals 0

    .line 699
    iget-object p0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {p0}, Lcom/google/android/material/b/a$b;->g(Lcom/google/android/material/b/a$b;)I

    move-result p0

    return p0
.end method

.method public onStateChange([I)Z
    .locals 0

    .line 622
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p0

    return p0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/google/android/material/b/a;->r:Lcom/google/android/material/b/a$b;

    invoke-static {v0, p1}, Lcom/google/android/material/b/a$b;->f(Lcom/google/android/material/b/a$b;I)I

    .line 576
    iget-object v0, p0, Lcom/google/android/material/b/a;->m:Lcom/google/android/material/internal/q;

    invoke-virtual {v0}, Lcom/google/android/material/internal/q;->a()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 577
    invoke-virtual {p0}, Lcom/google/android/material/b/a;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
