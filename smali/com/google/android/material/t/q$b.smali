.class Lcom/google/android/material/t/q$b;
.super Lcom/google/android/material/t/q$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/t/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/t/q$e;

.field private final b:F

.field private final c:F


# direct methods
.method public constructor <init>(Lcom/google/android/material/t/q$e;FF)V
    .locals 0

    .line 382
    invoke-direct {p0}, Lcom/google/android/material/t/q$h;-><init>()V

    .line 383
    iput-object p1, p0, Lcom/google/android/material/t/q$b;->a:Lcom/google/android/material/t/q$e;

    .line 384
    iput p2, p0, Lcom/google/android/material/t/q$b;->b:F

    .line 385
    iput p3, p0, Lcom/google/android/material/t/q$b;->c:F

    return-void
.end method


# virtual methods
.method a()F
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/google/android/material/t/q$b;->a:Lcom/google/android/material/t/q$e;

    invoke-static {v0}, Lcom/google/android/material/t/q$e;->a(Lcom/google/android/material/t/q$e;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/t/q$b;->c:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/t/q$b;->a:Lcom/google/android/material/t/q$e;

    invoke-static {v1}, Lcom/google/android/material/t/q$e;->b(Lcom/google/android/material/t/q$e;)F

    move-result v1

    iget p0, p0, Lcom/google/android/material/t/q$b;->b:F

    sub-float/2addr v1, p0

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public a(Landroid/graphics/Matrix;Lcom/google/android/material/s/b;ILandroid/graphics/Canvas;)V
    .locals 5
    .param p2    # Lcom/google/android/material/s/b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 394
    iget-object v0, p0, Lcom/google/android/material/t/q$b;->a:Lcom/google/android/material/t/q$e;

    invoke-static {v0}, Lcom/google/android/material/t/q$e;->a(Lcom/google/android/material/t/q$e;)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/t/q$b;->c:F

    sub-float/2addr v0, v1

    .line 395
    iget-object v1, p0, Lcom/google/android/material/t/q$b;->a:Lcom/google/android/material/t/q$e;

    invoke-static {v1}, Lcom/google/android/material/t/q$e;->b(Lcom/google/android/material/t/q$e;)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/t/q$b;->b:F

    sub-float/2addr v1, v2

    .line 396
    new-instance v2, Landroid/graphics/RectF;

    float-to-double v3, v0

    float-to-double v0, v1

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {v2, v1, v1, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 397
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 399
    iget p1, p0, Lcom/google/android/material/t/q$b;->b:F

    iget v1, p0, Lcom/google/android/material/t/q$b;->c:F

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 400
    invoke-virtual {p0}, Lcom/google/android/material/t/q$b;->a()F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 401
    invoke-virtual {p2, p4, v0, v2, p3}, Lcom/google/android/material/s/b;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;I)V

    return-void
.end method
