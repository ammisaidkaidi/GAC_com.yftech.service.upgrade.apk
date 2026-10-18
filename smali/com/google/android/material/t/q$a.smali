.class Lcom/google/android/material/t/q$a;
.super Lcom/google/android/material/t/q$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/t/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/t/q$c;


# direct methods
.method public constructor <init>(Lcom/google/android/material/t/q$c;)V
    .locals 0

    .line 414
    invoke-direct {p0}, Lcom/google/android/material/t/q$h;-><init>()V

    .line 415
    iput-object p1, p0, Lcom/google/android/material/t/q$a;->a:Lcom/google/android/material/t/q$c;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Lcom/google/android/material/s/b;ILandroid/graphics/Canvas;)V
    .locals 8
    .param p2    # Lcom/google/android/material/s/b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 424
    iget-object v0, p0, Lcom/google/android/material/t/q$a;->a:Lcom/google/android/material/t/q$c;

    invoke-static {v0}, Lcom/google/android/material/t/q$c;->a(Lcom/google/android/material/t/q$c;)F

    move-result v6

    .line 425
    iget-object v0, p0, Lcom/google/android/material/t/q$a;->a:Lcom/google/android/material/t/q$c;

    invoke-static {v0}, Lcom/google/android/material/t/q$c;->b(Lcom/google/android/material/t/q$c;)F

    move-result v7

    .line 426
    new-instance v4, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/google/android/material/t/q$a;->a:Lcom/google/android/material/t/q$c;

    .line 428
    invoke-static {v0}, Lcom/google/android/material/t/q$c;->c(Lcom/google/android/material/t/q$c;)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/t/q$a;->a:Lcom/google/android/material/t/q$c;

    invoke-static {v1}, Lcom/google/android/material/t/q$c;->d(Lcom/google/android/material/t/q$c;)F

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/t/q$a;->a:Lcom/google/android/material/t/q$c;

    invoke-static {v2}, Lcom/google/android/material/t/q$c;->e(Lcom/google/android/material/t/q$c;)F

    move-result v2

    iget-object p0, p0, Lcom/google/android/material/t/q$a;->a:Lcom/google/android/material/t/q$c;

    invoke-static {p0}, Lcom/google/android/material/t/q$c;->f(Lcom/google/android/material/t/q$c;)F

    move-result p0

    invoke-direct {v4, v0, v1, v2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v1, p2

    move-object v2, p4

    move-object v3, p1

    move v5, p3

    .line 429
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/material/s/b;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/graphics/RectF;IFF)V

    return-void
.end method
