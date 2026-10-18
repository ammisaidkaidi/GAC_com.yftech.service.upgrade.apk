.class final Lcom/google/android/material/z/a/v$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/z/a/v$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/z/a/v;->a(Lcom/google/android/material/t/o;Lcom/google/android/material/t/o;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)Lcom/google/android/material/t/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/RectF;

.field final synthetic b:Landroid/graphics/RectF;

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:F


# direct methods
.method constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/google/android/material/z/a/v$2;->a:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/google/android/material/z/a/v$2;->b:Landroid/graphics/RectF;

    iput p3, p0, Lcom/google/android/material/z/a/v$2;->c:F

    iput p4, p0, Lcom/google/android/material/z/a/v$2;->d:F

    iput p5, p0, Lcom/google/android/material/z/a/v$2;->e:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/t/d;Lcom/google/android/material/t/d;)Lcom/google/android/material/t/d;
    .locals 2
    .param p1    # Lcom/google/android/material/t/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/t/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/google/android/material/z/a/v$2;->a:Landroid/graphics/RectF;

    invoke-interface {p1, v0}, Lcom/google/android/material/t/d;->a(Landroid/graphics/RectF;)F

    move-result p1

    .line 174
    iget-object v0, p0, Lcom/google/android/material/z/a/v$2;->b:Landroid/graphics/RectF;

    invoke-interface {p2, v0}, Lcom/google/android/material/t/d;->a(Landroid/graphics/RectF;)F

    move-result p2

    .line 175
    iget v0, p0, Lcom/google/android/material/z/a/v$2;->c:F

    iget v1, p0, Lcom/google/android/material/z/a/v$2;->d:F

    iget p0, p0, Lcom/google/android/material/z/a/v$2;->e:F

    .line 176
    invoke-static {p1, p2, v0, v1, p0}, Lcom/google/android/material/z/a/v;->a(FFFFF)F

    move-result p0

    .line 178
    new-instance p1, Lcom/google/android/material/t/a;

    invoke-direct {p1, p0}, Lcom/google/android/material/t/a;-><init>(F)V

    return-object p1
.end method
