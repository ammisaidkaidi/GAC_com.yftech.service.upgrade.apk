.class public Lcom/google/android/material/t/q$e;
.super Lcom/google/android/material/t/q$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/t/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:F

.field private b:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 445
    invoke-direct {p0}, Lcom/google/android/material/t/q$f;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/t/q$e;)F
    .locals 0

    .line 445
    iget p0, p0, Lcom/google/android/material/t/q$e;->b:F

    return p0
.end method

.method static synthetic a(Lcom/google/android/material/t/q$e;F)F
    .locals 0

    .line 445
    iput p1, p0, Lcom/google/android/material/t/q$e;->a:F

    return p1
.end method

.method static synthetic b(Lcom/google/android/material/t/q$e;)F
    .locals 0

    .line 445
    iget p0, p0, Lcom/google/android/material/t/q$e;->a:F

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/t/q$e;F)F
    .locals 0

    .line 445
    iput p1, p0, Lcom/google/android/material/t/q$e;->b:F

    return p1
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 1
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 451
    iget-object v0, p0, Lcom/google/android/material/t/q$e;->g:Landroid/graphics/Matrix;

    .line 452
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 453
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 454
    iget v0, p0, Lcom/google/android/material/t/q$e;->a:F

    iget p0, p0, Lcom/google/android/material/t/q$e;->b:F

    invoke-virtual {p2, v0, p0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 455
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
