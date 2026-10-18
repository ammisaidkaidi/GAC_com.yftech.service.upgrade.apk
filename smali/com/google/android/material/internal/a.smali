.class public final Lcom/google/android/material/internal/a;
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

.field private static final b:Ljava/lang/String; = "CollapsingTextHelper"

.field private static final c:Ljava/lang/String; = "\u2026"

.field private static final d:Z = false

.field private static final e:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field


# instance fields
.field private A:Lcom/google/android/material/q/a;

.field private B:Lcom/google/android/material/q/a;

.field private C:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private D:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private E:Z

.field private F:Z

.field private G:Landroid/graphics/Bitmap;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private H:Landroid/graphics/Paint;

.field private I:F

.field private J:F

.field private K:[I

.field private L:Z

.field private final M:Landroid/text/TextPaint;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final N:Landroid/text/TextPaint;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private O:Landroid/animation/TimeInterpolator;

.field private P:Landroid/animation/TimeInterpolator;

.field private Q:F

.field private R:F

.field private S:F

.field private T:Landroid/content/res/ColorStateList;

.field private U:F

.field private V:F

.field private W:F

.field private X:Landroid/content/res/ColorStateList;

.field private Y:Landroid/text/StaticLayout;

.field private Z:F

.field private aa:F

.field private ab:F

.field private ac:Ljava/lang/CharSequence;

.field private ad:I

.field private final f:Landroid/view/View;

.field private g:Z

.field private h:F

.field private final i:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final j:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final k:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private l:I

.field private m:I

.field private n:F

.field private o:F

.field private p:Landroid/content/res/ColorStateList;

.field private q:Landroid/content/res/ColorStateList;

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:F

.field private w:F

.field private x:Landroid/graphics/Typeface;

.field private y:Landroid/graphics/Typeface;

.field private z:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/material/internal/a;->a:Z

    const/4 v0, 0x0

    .line 73
    sput-object v0, Lcom/google/android/material/internal/a;->e:Landroid/graphics/Paint;

    .line 74
    sget-object v0, Lcom/google/android/material/internal/a;->e:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Lcom/google/android/material/internal/a;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    sget-object v0, Lcom/google/android/material/internal/a;->e:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 88
    iput v0, p0, Lcom/google/android/material/internal/a;->l:I

    .line 89
    iput v0, p0, Lcom/google/android/material/internal/a;->m:I

    const/high16 v0, 0x41700000    # 15.0f

    .line 90
    iput v0, p0, Lcom/google/android/material/internal/a;->n:F

    .line 91
    iput v0, p0, Lcom/google/android/material/internal/a;->o:F

    const/4 v0, 0x1

    .line 142
    iput v0, p0, Lcom/google/android/material/internal/a;->ad:I

    .line 145
    iput-object p1, p0, Lcom/google/android/material/internal/a;->f:Landroid/view/View;

    .line 147
    new-instance p1, Landroid/text/TextPaint;

    const/16 v0, 0x81

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    .line 148
    new-instance p1, Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-direct {p1, v0}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/google/android/material/internal/a;->N:Landroid/text/TextPaint;

    .line 150
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    .line 151
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;

    .line 152
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/a;->k:Landroid/graphics/RectF;

    return-void
.end method

.method private static a(FFFLandroid/animation/TimeInterpolator;)F
    .locals 0
    .param p3    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    .line 942
    invoke-interface {p3, p2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p2

    .line 944
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/google/android/material/a/a;->a(FFF)F

    move-result p0

    return p0
.end method

.method private a(II)F
    .locals 2

    const/16 v0, 0x11

    if-eq p2, v0, :cond_5

    and-int/lit8 v0, p2, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    const p1, 0x800005

    and-int v0, p2, p1

    if-eq v0, p1, :cond_3

    const/4 p1, 0x5

    and-int/2addr p2, p1

    if-ne p2, p1, :cond_1

    goto :goto_1

    .line 233
    :cond_1
    iget-boolean p1, p0, Lcom/google/android/material/internal/a;->E:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->a()F

    move-result p0

    sub-float/2addr p1, p0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    int-to-float p1, p0

    :goto_0
    return p1

    .line 231
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/google/android/material/internal/a;->E:Z

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->a()F

    move-result p0

    sub-float p0, p1, p0

    :goto_2
    return p0

    :cond_5
    :goto_3
    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 228
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->a()F

    move-result p0

    div-float/2addr p0, p2

    sub-float/2addr p1, p0

    return p1
.end method

.method private static a(IIF)I
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    .line 932
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    .line 933
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    .line 934
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    .line 935
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr p0, p1

    float-to-int p1, v1

    float-to-int p2, v2

    float-to-int v0, v3

    float-to-int p0, p0

    .line 936
    invoke-static {p1, p2, v0, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private a(IFZ)Landroid/text/StaticLayout;
    .locals 1

    .line 823
    :try_start_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->C:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    float-to-int p2, p2

    .line 824
    invoke-static {v0, p0, p2}, Lcom/google/android/material/internal/p;->a(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Lcom/google/android/material/internal/p;

    move-result-object p0

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 825
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/p;->a(Landroid/text/TextUtils$TruncateAt;)Lcom/google/android/material/internal/p;

    move-result-object p0

    .line 826
    invoke-virtual {p0, p3}, Lcom/google/android/material/internal/p;->b(Z)Lcom/google/android/material/internal/p;

    move-result-object p0

    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 827
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/p;->a(Landroid/text/Layout$Alignment;)Lcom/google/android/material/internal/p;

    move-result-object p0

    const/4 p2, 0x0

    .line 828
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/p;->a(Z)Lcom/google/android/material/internal/p;

    move-result-object p0

    .line 829
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/p;->c(I)Lcom/google/android/material/internal/p;

    move-result-object p0

    .line 830
    invoke-virtual {p0}, Lcom/google/android/material/internal/p;->a()Landroid/text/StaticLayout;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/material/internal/p$a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "CollapsingTextHelper"

    .line 832
    invoke-virtual {p0}, Lcom/google/android/material/internal/p$a;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    .line 835
    :goto_0
    invoke-static {p0}, Landroidx/core/m/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/StaticLayout;

    return-object p0
.end method

.method private a(Landroid/graphics/Canvas;FF)V
    .locals 12
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 693
    iget-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    move-result v0

    .line 695
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 697
    iget-object p2, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    iget p3, p0, Lcom/google/android/material/internal/a;->aa:F

    int-to-float v1, v0

    mul-float/2addr p3, v1

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 698
    iget-object p2, p0, Lcom/google/android/material/internal/a;->Y:Landroid/text/StaticLayout;

    invoke-virtual {p2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 701
    iget-object p2, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    iget p3, p0, Lcom/google/android/material/internal/a;->Z:F

    mul-float/2addr p3, v1

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 702
    iget-object p2, p0, Lcom/google/android/material/internal/a;->Y:Landroid/text/StaticLayout;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/text/StaticLayout;->getLineBaseline(I)I

    move-result p2

    .line 703
    iget-object v2, p0, Lcom/google/android/material/internal/a;->ac:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->ac:Ljava/lang/CharSequence;

    .line 706
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    int-to-float v10, p2

    iget-object v7, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move v6, v10

    .line 703
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 711
    iget-object p2, p0, Lcom/google/android/material/internal/a;->ac:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v1, "\u2026"

    .line 712
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v6, p2

    .line 716
    iget-object p2, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    const/4 v7, 0x0

    .line 717
    iget-object p2, p0, Lcom/google/android/material/internal/a;->Y:Landroid/text/StaticLayout;

    .line 720
    invoke-virtual {p2, p3}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result p2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result p3

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x0

    iget-object v11, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    move-object v5, p1

    .line 717
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 270
    iget v0, p0, Lcom/google/android/material/internal/a;->n:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 271
    iget-object p0, p0, Lcom/google/android/material/internal/a;->y:Landroid/graphics/Typeface;

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private static a(FF)Z
    .locals 0

    sub-float/2addr p0, p1

    .line 913
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3a83126f    # 0.001f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a(Landroid/graphics/Rect;IIII)Z
    .locals 1
    .param p0    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 948
    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->right:I

    if-ne p1, p3, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne p0, p4, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(Landroid/graphics/RectF;II)F
    .locals 2
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/16 v0, 0x11

    if-eq p3, v0, :cond_5

    and-int/lit8 v0, p3, 0x7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_3

    :cond_0
    const p2, 0x800005

    and-int v0, p3, p2

    if-eq v0, p2, :cond_3

    const/4 p2, 0x5

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_1

    goto :goto_1

    .line 245
    :cond_1
    iget-boolean p2, p0, Lcom/google/android/material/internal/a;->E:Z

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    int-to-float p0, p0

    goto :goto_0

    :cond_2
    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->a()F

    move-result p0

    add-float/2addr p0, p1

    :goto_0
    return p0

    .line 243
    :cond_3
    :goto_1
    iget-boolean p2, p0, Lcom/google/android/material/internal/a;->E:Z

    if-eqz p2, :cond_4

    iget p1, p1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->a()F

    move-result p0

    add-float/2addr p1, p0

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    int-to-float p1, p0

    :goto_2
    return p1

    :cond_5
    :goto_3
    int-to-float p1, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 240
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->a()F

    move-result p0

    div-float/2addr p0, p2

    add-float/2addr p1, p0

    return p1
.end method

.method private b(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 275
    iget v0, p0, Lcom/google/android/material/internal/a;->o:F

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 276
    iget-object p0, p0, Lcom/google/android/material/internal/a;->x:Landroid/graphics/Typeface;

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method private b(Ljava/lang/CharSequence;)Z
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 727
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->w()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 728
    sget-object p0, Landroidx/core/l/f;->d:Landroidx/core/l/e;

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/core/l/f;->c:Landroidx/core/l/e;

    :goto_0
    const/4 v0, 0x0

    .line 731
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p0, p1, v0, v1}, Landroidx/core/l/e;->a(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method private c(Landroid/content/res/ColorStateList;)I
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/k;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/a;->K:[I

    if-eqz v1, :cond_1

    .line 527
    iget-object p0, p0, Lcom/google/android/material/internal/a;->K:[I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    .line 529
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0
.end method

.method private d(F)V
    .locals 6

    .line 481
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/a;->e(F)V

    .line 482
    iget v0, p0, Lcom/google/android/material/internal/a;->t:F

    iget v1, p0, Lcom/google/android/material/internal/a;->u:F

    iget-object v2, p0, Lcom/google/android/material/internal/a;->O:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/a;->v:F

    .line 483
    iget v0, p0, Lcom/google/android/material/internal/a;->r:F

    iget v1, p0, Lcom/google/android/material/internal/a;->s:F

    iget-object v2, p0, Lcom/google/android/material/internal/a;->O:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/internal/a;->w:F

    .line 485
    iget v0, p0, Lcom/google/android/material/internal/a;->n:F

    iget v1, p0, Lcom/google/android/material/internal/a;->o:F

    iget-object v2, p0, Lcom/google/android/material/internal/a;->P:Landroid/animation/TimeInterpolator;

    .line 486
    invoke-static {v0, v1, p1, v2}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    .line 485
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->h(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    .line 488
    sget-object v2, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    const/4 v3, 0x0

    .line 489
    invoke-static {v3, v0, v1, v2}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    sub-float v1, v0, v1

    .line 488
    invoke-direct {p0, v1}, Lcom/google/android/material/internal/a;->f(F)V

    .line 490
    sget-object v1, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-static {v0, v3, p1, v1}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->g(F)V

    .line 492
    iget-object v0, p0, Lcom/google/android/material/internal/a;->q:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->p:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    .line 495
    iget-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    .line 496
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->t()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->m()I

    move-result v2

    invoke-static {v1, v2, p1}, Lcom/google/android/material/internal/a;->a(IIF)I

    move-result v1

    .line 495
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 501
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/a;->U:F

    iget v2, p0, Lcom/google/android/material/internal/a;->Q:F

    const/4 v3, 0x0

    .line 502
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/internal/a;->V:F

    iget v4, p0, Lcom/google/android/material/internal/a;->R:F

    .line 503
    invoke-static {v2, v4, p1, v3}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v2

    iget v4, p0, Lcom/google/android/material/internal/a;->W:F

    iget v5, p0, Lcom/google/android/material/internal/a;->S:F

    .line 504
    invoke-static {v4, v5, p1, v3}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/internal/a;->X:Landroid/content/res/ColorStateList;

    .line 506
    invoke-direct {p0, v4}, Lcom/google/android/material/internal/a;->c(Landroid/content/res/ColorStateList;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/material/internal/a;->T:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v5}, Lcom/google/android/material/internal/a;->c(Landroid/content/res/ColorStateList;)I

    move-result v5

    .line 505
    invoke-static {v4, v5, p1}, Lcom/google/android/material/internal/a;->a(IIF)I

    move-result p1

    .line 501
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 508
    iget-object p0, p0, Lcom/google/android/material/internal/a;->f:Landroid/view/View;

    invoke-static {p0}, Landroidx/core/n/af;->h(Landroid/view/View;)V

    return-void
.end method

.method private d(Landroid/graphics/Typeface;)Z
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/google/android/material/internal/a;->B:Lcom/google/android/material/q/a;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/google/android/material/internal/a;->B:Lcom/google/android/material/q/a;

    invoke-virtual {v0}, Lcom/google/android/material/q/a;->a()V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->x:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_1

    .line 404
    iput-object p1, p0, Lcom/google/android/material/internal/a;->x:Landroid/graphics/Typeface;

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private e(F)V
    .locals 4

    .line 625
    iget-object v0, p0, Lcom/google/android/material/internal/a;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/a;->O:Landroid/animation/TimeInterpolator;

    .line 626
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 627
    iget-object v0, p0, Lcom/google/android/material/internal/a;->k:Landroid/graphics/RectF;

    iget v1, p0, Lcom/google/android/material/internal/a;->r:F

    iget v2, p0, Lcom/google/android/material/internal/a;->s:F

    iget-object v3, p0, Lcom/google/android/material/internal/a;->O:Landroid/animation/TimeInterpolator;

    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 628
    iget-object v0, p0, Lcom/google/android/material/internal/a;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/material/internal/a;->O:Landroid/animation/TimeInterpolator;

    .line 629
    invoke-static {v1, v2, p1, v3}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 630
    iget-object v0, p0, Lcom/google/android/material/internal/a;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/google/android/material/internal/a;->O:Landroid/animation/TimeInterpolator;

    .line 631
    invoke-static {v1, v2, p1, p0}, Lcom/google/android/material/internal/a;->a(FFFLandroid/animation/TimeInterpolator;)F

    move-result p0

    iput p0, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private e(Landroid/graphics/Typeface;)Z
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/google/android/material/internal/a;->A:Lcom/google/android/material/q/a;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/google/android/material/internal/a;->A:Lcom/google/android/material/q/a;

    invoke-virtual {v0}, Lcom/google/android/material/q/a;->a()V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->y:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_1

    .line 418
    iput-object p1, p0, Lcom/google/android/material/internal/a;->y:Landroid/graphics/Typeface;

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private f(F)V
    .locals 0

    .line 635
    iput p1, p0, Lcom/google/android/material/internal/a;->Z:F

    .line 636
    iget-object p0, p0, Lcom/google/android/material/internal/a;->f:Landroid/view/View;

    invoke-static {p0}, Landroidx/core/n/af;->h(Landroid/view/View;)V

    return-void
.end method

.method private g(F)V
    .locals 0

    .line 640
    iput p1, p0, Lcom/google/android/material/internal/a;->aa:F

    .line 641
    iget-object p0, p0, Lcom/google/android/material/internal/a;->f:Landroid/view/View;

    invoke-static {p0}, Landroidx/core/n/af;->h(Landroid/view/View;)V

    return-void
.end method

.method private h(F)V
    .locals 1

    .line 739
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/a;->i(F)V

    .line 742
    sget-boolean p1, Lcom/google/android/material/internal/a;->a:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/google/android/material/internal/a;->I:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->F:Z

    .line 744
    iget-boolean p1, p0, Lcom/google/android/material/internal/a;->F:Z

    if-eqz p1, :cond_1

    .line 746
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->x()V

    .line 749
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/internal/a;->f:Landroid/view/View;

    invoke-static {p0}, Landroidx/core/n/af;->h(Landroid/view/View;)V

    return-void
.end method

.method private i(F)V
    .locals 8

    .line 754
    iget-object v0, p0, Lcom/google/android/material/internal/a;->C:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 759
    iget-object v1, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 765
    iget v2, p0, Lcom/google/android/material/internal/a;->o:F

    invoke-static {p1, v2}, Lcom/google/android/material/internal/a;->a(FF)Z

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    .line 766
    iget p1, p0, Lcom/google/android/material/internal/a;->o:F

    .line 767
    iput v3, p0, Lcom/google/android/material/internal/a;->I:F

    .line 768
    iget-object v1, p0, Lcom/google/android/material/internal/a;->z:Landroid/graphics/Typeface;

    iget-object v2, p0, Lcom/google/android/material/internal/a;->x:Landroid/graphics/Typeface;

    if-eq v1, v2, :cond_1

    .line 769
    iget-object v1, p0, Lcom/google/android/material/internal/a;->x:Landroid/graphics/Typeface;

    iput-object v1, p0, Lcom/google/android/material/internal/a;->z:Landroid/graphics/Typeface;

    move v1, v5

    goto :goto_3

    :cond_1
    move v1, v4

    goto :goto_3

    .line 774
    :cond_2
    iget v2, p0, Lcom/google/android/material/internal/a;->n:F

    .line 775
    iget-object v6, p0, Lcom/google/android/material/internal/a;->z:Landroid/graphics/Typeface;

    iget-object v7, p0, Lcom/google/android/material/internal/a;->y:Landroid/graphics/Typeface;

    if-eq v6, v7, :cond_3

    .line 776
    iget-object v6, p0, Lcom/google/android/material/internal/a;->y:Landroid/graphics/Typeface;

    iput-object v6, p0, Lcom/google/android/material/internal/a;->z:Landroid/graphics/Typeface;

    move v6, v5

    goto :goto_0

    :cond_3
    move v6, v4

    .line 779
    :goto_0
    iget v7, p0, Lcom/google/android/material/internal/a;->n:F

    invoke-static {p1, v7}, Lcom/google/android/material/internal/a;->a(FF)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 781
    iput v3, p0, Lcom/google/android/material/internal/a;->I:F

    goto :goto_1

    .line 784
    :cond_4
    iget v7, p0, Lcom/google/android/material/internal/a;->n:F

    div-float/2addr p1, v7

    iput p1, p0, Lcom/google/android/material/internal/a;->I:F

    .line 787
    :goto_1
    iget p1, p0, Lcom/google/android/material/internal/a;->o:F

    iget v7, p0, Lcom/google/android/material/internal/a;->n:F

    div-float/2addr p1, v7

    mul-float v7, v1, p1

    cmpl-float v7, v7, v0

    if-lez v7, :cond_5

    div-float/2addr v0, p1

    .line 798
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    move v0, p1

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    move p1, v2

    move v1, v6

    :goto_3
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_8

    .line 803
    iget v2, p0, Lcom/google/android/material/internal/a;->J:F

    cmpl-float v2, v2, p1

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/google/android/material/internal/a;->L:Z

    if-nez v2, :cond_7

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    move v1, v4

    goto :goto_5

    :cond_7
    :goto_4
    move v1, v5

    .line 804
    :goto_5
    iput p1, p0, Lcom/google/android/material/internal/a;->J:F

    .line 805
    iput-boolean v4, p0, Lcom/google/android/material/internal/a;->L:Z

    .line 808
    :cond_8
    iget-object p1, p0, Lcom/google/android/material/internal/a;->D:Ljava/lang/CharSequence;

    if-eqz p1, :cond_9

    if-eqz v1, :cond_c

    .line 809
    :cond_9
    iget-object p1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/a;->J:F

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 810
    iget-object p1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->z:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 812
    iget-object p1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    iget v1, p0, Lcom/google/android/material/internal/a;->I:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_a

    move v4, v5

    :cond_a
    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setLinearText(Z)V

    .line 814
    iget-object p1, p0, Lcom/google/android/material/internal/a;->C:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Lcom/google/android/material/internal/a;->b(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->E:Z

    .line 815
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->v()Z

    move-result p1

    if-eqz p1, :cond_b

    iget v5, p0, Lcom/google/android/material/internal/a;->ad:I

    :cond_b
    iget-boolean p1, p0, Lcom/google/android/material/internal/a;->E:Z

    invoke-direct {p0, v5, v0, p1}, Lcom/google/android/material/internal/a;->a(IFZ)Landroid/text/StaticLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/a;->Y:Landroid/text/StaticLayout;

    .line 816
    iget-object p1, p0, Lcom/google/android/material/internal/a;->Y:Landroid/text/StaticLayout;

    invoke-virtual {p1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/internal/a;->D:Ljava/lang/CharSequence;

    :cond_c
    return-void
.end method

.method private s()V
    .locals 1

    .line 477
    iget v0, p0, Lcom/google/android/material/internal/a;->h:F

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->d(F)V

    return-void
.end method

.method private t()I
    .locals 1
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 513
    iget-object v0, p0, Lcom/google/android/material/internal/a;->p:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->c(Landroid/content/res/ColorStateList;)I

    move-result p0

    return p0
.end method

.method private u()V
    .locals 13

    .line 533
    iget v0, p0, Lcom/google/android/material/internal/a;->J:F

    .line 536
    iget v1, p0, Lcom/google/android/material/internal/a;->o:F

    invoke-direct {p0, v1}, Lcom/google/android/material/internal/a;->i(F)V

    .line 537
    iget-object v1, p0, Lcom/google/android/material/internal/a;->D:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/internal/a;->Y:Landroid/text/StaticLayout;

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/google/android/material/internal/a;->D:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/google/android/material/internal/a;->Y:Landroid/text/StaticLayout;

    .line 539
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v1, v2, v3, v4}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/internal/a;->ac:Ljava/lang/CharSequence;

    .line 541
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/internal/a;->ac:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    iget-object v4, p0, Lcom/google/android/material/internal/a;->ac:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/google/android/material/internal/a;->ac:Ljava/lang/CharSequence;

    .line 543
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v1, v4, v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 545
    :goto_0
    iget v4, p0, Lcom/google/android/material/internal/a;->m:I

    iget-boolean v5, p0, Lcom/google/android/material/internal/a;->E:Z

    .line 546
    invoke-static {v4, v5}, Landroidx/core/n/h;->a(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_3

    if-eq v5, v6, :cond_2

    .line 559
    iget-object v5, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v9, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    div-float/2addr v5, v8

    .line 560
    iget-object v9, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v5

    iput v9, p0, Lcom/google/android/material/internal/a;->s:F

    goto :goto_1

    .line 552
    :cond_2
    iget-object v5, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget-object v9, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    add-float/2addr v5, v9

    iput v5, p0, Lcom/google/android/material/internal/a;->s:F

    goto :goto_1

    .line 555
    :cond_3
    iget-object v5, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iput v5, p0, Lcom/google/android/material/internal/a;->s:F

    :goto_1
    const v5, 0x800007

    and-int/2addr v4, v5

    const/4 v9, 0x5

    const/4 v10, 0x1

    if-eq v4, v10, :cond_5

    if-eq v4, v9, :cond_4

    .line 573
    iget-object v1, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/internal/a;->u:F

    goto :goto_2

    .line 569
    :cond_4
    iget-object v4, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/google/android/material/internal/a;->u:F

    goto :goto_2

    .line 566
    :cond_5
    iget-object v4, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v8

    sub-float/2addr v4, v1

    iput v4, p0, Lcom/google/android/material/internal/a;->u:F

    .line 577
    :goto_2
    iget v1, p0, Lcom/google/android/material/internal/a;->n:F

    invoke-direct {p0, v1}, Lcom/google/android/material/internal/a;->i(F)V

    .line 578
    iget-object v1, p0, Lcom/google/android/material/internal/a;->Y:Landroid/text/StaticLayout;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/material/internal/a;->Y:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    goto :goto_3

    :cond_6
    move v1, v3

    .line 580
    :goto_3
    iget-object v4, p0, Lcom/google/android/material/internal/a;->D:Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    iget-object v11, p0, Lcom/google/android/material/internal/a;->D:Ljava/lang/CharSequence;

    iget-object v12, p0, Lcom/google/android/material/internal/a;->D:Ljava/lang/CharSequence;

    .line 581
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-virtual {v4, v11, v2, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v4

    goto :goto_4

    :cond_7
    move v4, v3

    .line 582
    :goto_4
    iget-object v11, p0, Lcom/google/android/material/internal/a;->Y:Landroid/text/StaticLayout;

    if-eqz v11, :cond_8

    iget v11, p0, Lcom/google/android/material/internal/a;->ad:I

    if-le v11, v10, :cond_8

    iget-boolean v11, p0, Lcom/google/android/material/internal/a;->E:Z

    if-nez v11, :cond_8

    iget-object v4, p0, Lcom/google/android/material/internal/a;->Y:Landroid/text/StaticLayout;

    .line 583
    invoke-virtual {v4}, Landroid/text/StaticLayout;->getWidth()I

    move-result v4

    int-to-float v4, v4

    .line 585
    :cond_8
    iget-object v11, p0, Lcom/google/android/material/internal/a;->Y:Landroid/text/StaticLayout;

    if-eqz v11, :cond_9

    iget-object v3, p0, Lcom/google/android/material/internal/a;->Y:Landroid/text/StaticLayout;

    invoke-virtual {v3, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v3

    :cond_9
    iput v3, p0, Lcom/google/android/material/internal/a;->ab:F

    .line 587
    iget v2, p0, Lcom/google/android/material/internal/a;->l:I

    iget-boolean v3, p0, Lcom/google/android/material/internal/a;->E:Z

    .line 588
    invoke-static {v2, v3}, Landroidx/core/n/h;->a(II)I

    move-result v2

    and-int/lit8 v3, v2, 0x70

    if-eq v3, v7, :cond_b

    if-eq v3, v6, :cond_a

    div-float/2addr v1, v8

    .line 601
    iget-object v3, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iput v3, p0, Lcom/google/android/material/internal/a;->r:F

    goto :goto_5

    .line 593
    :cond_a
    iget-object v3, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iget-object v1, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v1

    add-float/2addr v3, v1

    iput v3, p0, Lcom/google/android/material/internal/a;->r:F

    goto :goto_5

    .line 596
    :cond_b
    iget-object v1, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/internal/a;->r:F

    :goto_5
    and-int v1, v2, v5

    if-eq v1, v10, :cond_d

    if-eq v1, v9, :cond_c

    .line 614
    iget-object v1, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, p0, Lcom/google/android/material/internal/a;->t:F

    goto :goto_6

    .line 610
    :cond_c
    iget-object v1, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/google/android/material/internal/a;->t:F

    goto :goto_6

    .line 607
    :cond_d
    iget-object v1, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v4, v8

    sub-float/2addr v1, v4

    iput v1, p0, Lcom/google/android/material/internal/a;->t:F

    .line 619
    :goto_6
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->y()V

    .line 621
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->h(F)V

    return-void
.end method

.method private v()Z
    .locals 2

    .line 689
    iget v0, p0, Lcom/google/android/material/internal/a;->ad:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/internal/a;->E:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/material/internal/a;->F:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private w()Z
    .locals 1

    .line 735
    iget-object p0, p0, Lcom/google/android/material/internal/a;->f:Landroid/view/View;

    invoke-static {p0}, Landroidx/core/n/af;->p(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private x()V
    .locals 3

    .line 839
    iget-object v0, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/internal/a;->D:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 843
    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->d(F)V

    .line 844
    iget-object v0, p0, Lcom/google/android/material/internal/a;->Y:Landroid/text/StaticLayout;

    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v0

    .line 845
    iget-object v1, p0, Lcom/google/android/material/internal/a;->Y:Landroid/text/StaticLayout;

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v1

    if-lez v0, :cond_3

    if-gtz v1, :cond_1

    goto :goto_0

    .line 851
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;

    .line 852
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 853
    iget-object v1, p0, Lcom/google/android/material/internal/a;->Y:Landroid/text/StaticLayout;

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 855
    iget-object v0, p0, Lcom/google/android/material/internal/a;->H:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 857
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/internal/a;->H:Landroid/graphics/Paint;

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private y()V
    .locals 1

    .line 890
    iget-object v0, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 892
    iput-object v0, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()F
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/google/android/material/internal/a;->C:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->N:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->b(Landroid/text/TextPaint;)V

    .line 254
    iget-object v0, p0, Lcom/google/android/material/internal/a;->N:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->C:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/google/android/material/internal/a;->C:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result p0

    return p0
.end method

.method public a(F)V
    .locals 1

    .line 166
    iget v0, p0, Lcom/google/android/material/internal/a;->n:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 167
    iput p1, p0, Lcom/google/android/material/internal/a;->n:F

    .line 168
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->n()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 288
    iget v0, p0, Lcom/google/android/material/internal/a;->l:I

    if-eq v0, p1, :cond_0

    .line 289
    iput p1, p0, Lcom/google/android/material/internal/a;->l:I

    .line 290
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->n()V

    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/a;->a(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 196
    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->L:Z

    .line 197
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->d()V

    :cond_0
    return-void
.end method

.method public a(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/google/android/material/internal/a;->P:Landroid/animation/TimeInterpolator;

    .line 157
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->n()V

    return-void
.end method

.method public a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/google/android/material/internal/a;->q:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 181
    iput-object p1, p0, Lcom/google/android/material/internal/a;->q:Landroid/content/res/ColorStateList;

    .line 182
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->n()V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 645
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 647
    iget-object v1, p0, Lcom/google/android/material/internal/a;->D:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/google/android/material/internal/a;->g:Z

    if-eqz v1, :cond_4

    .line 648
    iget v1, p0, Lcom/google/android/material/internal/a;->v:F

    iget-object v2, p0, Lcom/google/android/material/internal/a;->Y:Landroid/text/StaticLayout;

    const/4 v3, 0x0

    .line 649
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/internal/a;->ab:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    .line 651
    iget-object v2, p0, Lcom/google/android/material/internal/a;->M:Landroid/text/TextPaint;

    iget v4, p0, Lcom/google/android/material/internal/a;->J:F

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 652
    iget v2, p0, Lcom/google/android/material/internal/a;->v:F

    .line 653
    iget v4, p0, Lcom/google/android/material/internal/a;->w:F

    .line 654
    iget-boolean v5, p0, Lcom/google/android/material/internal/a;->F:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    .line 666
    :cond_0
    iget v5, p0, Lcom/google/android/material/internal/a;->I:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 667
    iget v5, p0, Lcom/google/android/material/internal/a;->I:F

    iget v6, p0, Lcom/google/android/material/internal/a;->I:F

    invoke-virtual {p1, v5, v6, v2, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_1
    if-eqz v3, :cond_2

    .line 672
    iget-object v1, p0, Lcom/google/android/material/internal/a;->G:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/google/android/material/internal/a;->H:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 673
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 677
    :cond_2
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->v()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 678
    invoke-direct {p0, p1, v1, v4}, Lcom/google/android/material/internal/a;->a(Landroid/graphics/Canvas;FF)V

    goto :goto_0

    .line 680
    :cond_3
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 681
    iget-object p0, p0, Lcom/google/android/material/internal/a;->Y:Landroid/text/StaticLayout;

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 684
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_4
    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 202
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/material/internal/a;->a(IIII)V

    return-void
.end method

.method public a(Landroid/graphics/RectF;II)V
    .locals 1
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 218
    iget-object v0, p0, Lcom/google/android/material/internal/a;->C:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/internal/a;->E:Z

    .line 219
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/internal/a;->a(II)F

    move-result v0

    iput v0, p1, Landroid/graphics/RectF;->left:F

    .line 220
    iget-object v0, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iput v0, p1, Landroid/graphics/RectF;->top:F

    .line 221
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/a;->b(Landroid/graphics/RectF;II)F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->right:F

    .line 222
    iget-object p2, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->c()F

    move-result p0

    add-float/2addr p2, p0

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 0

    .line 377
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/a;->d(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->n()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 876
    iget-object v0, p0, Lcom/google/android/material/internal/a;->C:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 877
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/internal/a;->C:Ljava/lang/CharSequence;

    const/4 p1, 0x0

    .line 878
    iput-object p1, p0, Lcom/google/android/material/internal/a;->D:Ljava/lang/CharSequence;

    .line 879
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->y()V

    .line 880
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->n()V

    :cond_1
    return-void
.end method

.method public final a([I)Z
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/google/android/material/internal/a;->K:[I

    .line 451
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 452
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->n()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()F
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/google/android/material/internal/a;->N:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->a(Landroid/text/TextPaint;)V

    .line 260
    iget-object p0, p0, Lcom/google/android/material/internal/a;->N:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->ascent()F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method public b(F)V
    .locals 1

    .line 173
    iget v0, p0, Lcom/google/android/material/internal/a;->o:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 174
    iput p1, p0, Lcom/google/android/material/internal/a;->o:F

    .line 175
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->n()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 299
    iget v0, p0, Lcom/google/android/material/internal/a;->m:I

    if-eq v0, p1, :cond_0

    .line 300
    iput p1, p0, Lcom/google/android/material/internal/a;->m:I

    .line 301
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->n()V

    :cond_0
    return-void
.end method

.method public b(IIII)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/google/android/material/internal/a;->a(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    .line 208
    iput-boolean p1, p0, Lcom/google/android/material/internal/a;->L:Z

    .line 209
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->d()V

    :cond_0
    return-void
.end method

.method public b(Landroid/animation/TimeInterpolator;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/google/android/material/internal/a;->O:Landroid/animation/TimeInterpolator;

    .line 162
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->n()V

    return-void
.end method

.method public b(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/android/material/internal/a;->p:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 188
    iput-object p1, p0, Lcom/google/android/material/internal/a;->p:Landroid/content/res/ColorStateList;

    .line 189
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->n()V

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 214
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/google/android/material/internal/a;->b(IIII)V

    return-void
.end method

.method public b(Landroid/graphics/Typeface;)V
    .locals 0

    .line 383
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/a;->e(Landroid/graphics/Typeface;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->n()V

    :cond_0
    return-void
.end method

.method public c()F
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/google/android/material/internal/a;->N:Landroid/text/TextPaint;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->b(Landroid/text/TextPaint;)V

    .line 266
    iget-object p0, p0, Lcom/google/android/material/internal/a;->N:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->ascent()F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method public c(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 440
    invoke-static {p1, v0, v1}, Landroidx/core/g/a;->a(FFF)F

    move-result p1

    .line 442
    iget v0, p0, Lcom/google/android/material/internal/a;->h:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 443
    iput p1, p0, Lcom/google/android/material/internal/a;->h:F

    .line 444
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->s()V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 3

    .line 310
    new-instance v0, Lcom/google/android/material/q/d;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/q/d;-><init>(Landroid/content/Context;I)V

    .line 312
    iget-object p1, v0, Lcom/google/android/material/q/d;->b:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 313
    iget-object p1, v0, Lcom/google/android/material/q/d;->b:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/internal/a;->q:Landroid/content/res/ColorStateList;

    .line 315
    :cond_0
    iget p1, v0, Lcom/google/android/material/q/d;->a:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_1

    .line 316
    iget p1, v0, Lcom/google/android/material/q/d;->a:F

    iput p1, p0, Lcom/google/android/material/internal/a;->o:F

    .line 318
    :cond_1
    iget-object p1, v0, Lcom/google/android/material/q/d;->i:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    .line 319
    iget-object p1, v0, Lcom/google/android/material/q/d;->i:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/internal/a;->T:Landroid/content/res/ColorStateList;

    .line 321
    :cond_2
    iget p1, v0, Lcom/google/android/material/q/d;->j:F

    iput p1, p0, Lcom/google/android/material/internal/a;->R:F

    .line 322
    iget p1, v0, Lcom/google/android/material/q/d;->k:F

    iput p1, p0, Lcom/google/android/material/internal/a;->S:F

    .line 323
    iget p1, v0, Lcom/google/android/material/q/d;->l:F

    iput p1, p0, Lcom/google/android/material/internal/a;->Q:F

    .line 326
    iget-object p1, p0, Lcom/google/android/material/internal/a;->B:Lcom/google/android/material/q/a;

    if-eqz p1, :cond_3

    .line 327
    iget-object p1, p0, Lcom/google/android/material/internal/a;->B:Lcom/google/android/material/q/a;

    invoke-virtual {p1}, Lcom/google/android/material/q/a;->a()V

    .line 329
    :cond_3
    new-instance p1, Lcom/google/android/material/q/a;

    new-instance v1, Lcom/google/android/material/internal/a$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/a$1;-><init>(Lcom/google/android/material/internal/a;)V

    .line 337
    invoke-virtual {v0}, Lcom/google/android/material/q/d;->a()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/android/material/q/a;-><init>(Lcom/google/android/material/q/a$a;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/google/android/material/internal/a;->B:Lcom/google/android/material/q/a;

    .line 338
    iget-object p1, p0, Lcom/google/android/material/internal/a;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/material/internal/a;->B:Lcom/google/android/material/q/a;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/q/d;->a(Landroid/content/Context;Lcom/google/android/material/q/f;)V

    .line 340
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->n()V

    return-void
.end method

.method public c(Landroid/graphics/Typeface;)V
    .locals 1

    .line 389
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/a;->d(Landroid/graphics/Typeface;)Z

    move-result v0

    .line 390
    invoke-direct {p0, p1}, Lcom/google/android/material/internal/a;->e(Landroid/graphics/Typeface;)Z

    move-result p1

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->n()V

    :cond_1
    return-void
.end method

.method d()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    .line 281
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/a;->j:Landroid/graphics/Rect;

    .line 282
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;

    .line 283
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/a;->i:Landroid/graphics/Rect;

    .line 284
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/material/internal/a;->g:Z

    return-void
.end method

.method public d(I)V
    .locals 3

    .line 344
    new-instance v0, Lcom/google/android/material/q/d;

    iget-object v1, p0, Lcom/google/android/material/internal/a;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/material/q/d;-><init>(Landroid/content/Context;I)V

    .line 345
    iget-object p1, v0, Lcom/google/android/material/q/d;->b:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_0

    .line 346
    iget-object p1, v0, Lcom/google/android/material/q/d;->b:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/internal/a;->p:Landroid/content/res/ColorStateList;

    .line 348
    :cond_0
    iget p1, v0, Lcom/google/android/material/q/d;->a:F

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_1

    .line 349
    iget p1, v0, Lcom/google/android/material/q/d;->a:F

    iput p1, p0, Lcom/google/android/material/internal/a;->n:F

    .line 351
    :cond_1
    iget-object p1, v0, Lcom/google/android/material/q/d;->i:Landroid/content/res/ColorStateList;

    if-eqz p1, :cond_2

    .line 352
    iget-object p1, v0, Lcom/google/android/material/q/d;->i:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Lcom/google/android/material/internal/a;->X:Landroid/content/res/ColorStateList;

    .line 354
    :cond_2
    iget p1, v0, Lcom/google/android/material/q/d;->j:F

    iput p1, p0, Lcom/google/android/material/internal/a;->V:F

    .line 355
    iget p1, v0, Lcom/google/android/material/q/d;->k:F

    iput p1, p0, Lcom/google/android/material/internal/a;->W:F

    .line 356
    iget p1, v0, Lcom/google/android/material/q/d;->l:F

    iput p1, p0, Lcom/google/android/material/internal/a;->U:F

    .line 359
    iget-object p1, p0, Lcom/google/android/material/internal/a;->A:Lcom/google/android/material/q/a;

    if-eqz p1, :cond_3

    .line 360
    iget-object p1, p0, Lcom/google/android/material/internal/a;->A:Lcom/google/android/material/q/a;

    invoke-virtual {p1}, Lcom/google/android/material/q/a;->a()V

    .line 362
    :cond_3
    new-instance p1, Lcom/google/android/material/q/a;

    new-instance v1, Lcom/google/android/material/internal/a$2;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/a$2;-><init>(Lcom/google/android/material/internal/a;)V

    .line 370
    invoke-virtual {v0}, Lcom/google/android/material/q/d;->a()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/android/material/q/a;-><init>(Lcom/google/android/material/q/a$a;Landroid/graphics/Typeface;)V

    iput-object p1, p0, Lcom/google/android/material/internal/a;->A:Lcom/google/android/material/q/a;

    .line 371
    iget-object p1, p0, Lcom/google/android/material/internal/a;->f:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/material/internal/a;->A:Lcom/google/android/material/q/a;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/material/q/d;->a(Landroid/content/Context;Lcom/google/android/material/q/f;)V

    .line 373
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->n()V

    return-void
.end method

.method public e()I
    .locals 0

    .line 295
    iget p0, p0, Lcom/google/android/material/internal/a;->l:I

    return p0
.end method

.method public e(I)V
    .locals 1

    .line 897
    iget v0, p0, Lcom/google/android/material/internal/a;->ad:I

    if-eq p1, v0, :cond_0

    .line 898
    iput p1, p0, Lcom/google/android/material/internal/a;->ad:I

    .line 899
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->y()V

    .line 900
    invoke-virtual {p0}, Lcom/google/android/material/internal/a;->n()V

    :cond_0
    return-void
.end method

.method public f()I
    .locals 0

    .line 306
    iget p0, p0, Lcom/google/android/material/internal/a;->m:I

    return p0
.end method

.method public g()Landroid/graphics/Typeface;
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/google/android/material/internal/a;->x:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/internal/a;->x:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object p0
.end method

.method public h()Landroid/graphics/Typeface;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/google/android/material/internal/a;->y:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/internal/a;->y:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object p0
.end method

.method public final i()Z
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/google/android/material/internal/a;->q:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/a;->q:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/a;->p:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/material/internal/a;->p:Landroid/content/res/ColorStateList;

    .line 461
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

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

.method public j()F
    .locals 0

    .line 465
    iget p0, p0, Lcom/google/android/material/internal/a;->h:F

    return p0
.end method

.method public k()F
    .locals 0

    .line 469
    iget p0, p0, Lcom/google/android/material/internal/a;->o:F

    return p0
.end method

.method public l()F
    .locals 0

    .line 473
    iget p0, p0, Lcom/google/android/material/internal/a;->n:F

    return p0
.end method

.method public m()I
    .locals 1
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/google/android/material/internal/a;->q:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/internal/a;->c(Landroid/content/res/ColorStateList;)I

    move-result p0

    return p0
.end method

.method public n()V
    .locals 1

    .line 862
    iget-object v0, p0, Lcom/google/android/material/internal/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/internal/a;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 865
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->u()V

    .line 866
    invoke-direct {p0}, Lcom/google/android/material/internal/a;->s()V

    :cond_0
    return-void
.end method

.method public o()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 886
    iget-object p0, p0, Lcom/google/android/material/internal/a;->C:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public p()I
    .locals 0

    .line 905
    iget p0, p0, Lcom/google/android/material/internal/a;->ad:I

    return p0
.end method

.method public q()Landroid/content/res/ColorStateList;
    .locals 0

    .line 917
    iget-object p0, p0, Lcom/google/android/material/internal/a;->p:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public r()Landroid/content/res/ColorStateList;
    .locals 0

    .line 921
    iget-object p0, p0, Lcom/google/android/material/internal/a;->q:Landroid/content/res/ColorStateList;

    return-object p0
.end method
