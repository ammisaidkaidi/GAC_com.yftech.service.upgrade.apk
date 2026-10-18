.class public Lcom/google/android/material/t/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFLcom/google/android/material/t/q;)V
    .locals 0
    .param p3    # Lcom/google/android/material/t/q;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public a(Lcom/google/android/material/t/q;FFF)V
    .locals 0
    .param p1    # Lcom/google/android/material/t/q;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 70
    invoke-virtual {p0, p2, p3, p1}, Lcom/google/android/material/t/e;->a(FFLcom/google/android/material/t/q;)V

    return-void
.end method

.method public a(Lcom/google/android/material/t/q;FFLandroid/graphics/RectF;Lcom/google/android/material/t/d;)V
    .locals 0
    .param p1    # Lcom/google/android/material/t/q;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/material/t/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 98
    invoke-interface {p5, p4}, Lcom/google/android/material/t/d;->a(Landroid/graphics/RectF;)F

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/t/e;->a(Lcom/google/android/material/t/q;FFF)V

    return-void
.end method
