.class public Lcom/google/android/material/h/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:F = 1.0f

.field public static final b:F = 0.54f

.field public static final c:F = 0.38f

.field public static final d:F = 0.32f

.field public static final e:F = 0.12f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(II)I
    .locals 0
    .param p0    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 139
    invoke-static {p1, p0}, Landroidx/core/graphics/e;->a(II)I

    move-result p0

    return p0
.end method

.method public static a(IIF)I
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param
    .param p2    # F
        .annotation build Landroidx/annotation/r;
            a = 0.0
            b = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 128
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 129
    invoke-static {p1, p2}, Landroidx/core/graphics/e;->c(II)I

    move-result p1

    .line 130
    invoke-static {p0, p1}, Lcom/google/android/material/h/a;->a(II)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;II)I
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/f;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 84
    invoke-static {p0, p1}, Lcom/google/android/material/q/b;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 86
    iget p0, p0, Landroid/util/TypedValue;->data:I

    return p0

    :cond_0
    return p2
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;)I
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/f;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 64
    invoke-static {p0, p1, p2}, Lcom/google/android/material/q/b;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/view/View;I)I
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/f;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 53
    invoke-static {p0, p1}, Lcom/google/android/material/q/b;->a(Landroid/view/View;I)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/view/View;II)I
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/f;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/google/android/material/h/a;->a(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/view/View;IIF)I
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/f;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/f;
        .end annotation
    .end param
    .param p3    # F
        .annotation build Landroidx/annotation/r;
            a = 0.0
            b = 1.0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 114
    invoke-static {p0, p1}, Lcom/google/android/material/h/a;->a(Landroid/view/View;I)I

    move-result p1

    .line 115
    invoke-static {p0, p2}, Lcom/google/android/material/h/a;->a(Landroid/view/View;I)I

    move-result p0

    .line 116
    invoke-static {p1, p0, p3}, Lcom/google/android/material/h/a;->a(IIF)I

    move-result p0

    return p0
.end method

.method public static b(II)I
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/z;
            a = 0x0L
            b = 0xffL
        .end annotation
    .end param
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 153
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    mul-int/2addr v0, p1

    div-int/lit16 v0, v0, 0xff

    .line 154
    invoke-static {p0, v0}, Landroidx/core/graphics/e;->c(II)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/view/View;II)I
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/f;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/f;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/k;
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 101
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/material/h/a;->a(Landroid/view/View;IIF)I

    move-result p0

    return p0
.end method
