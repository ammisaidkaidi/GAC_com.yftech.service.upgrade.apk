.class final Lcom/google/android/material/z/a/v$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/t/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/z/a/v;->a(Lcom/google/android/material/t/o;Landroid/graphics/RectF;)Lcom/google/android/material/t/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Landroid/graphics/RectF;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/google/android/material/z/a/v$1;->a:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/d;
    .locals 2
    .param p1    # Lcom/google/android/material/t/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 57
    instance-of v0, p1, Lcom/google/android/material/t/m;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/material/t/m;

    iget-object v1, p0, Lcom/google/android/material/z/a/v$1;->a:Landroid/graphics/RectF;

    .line 59
    invoke-interface {p1, v1}, Lcom/google/android/material/t/d;->a(Landroid/graphics/RectF;)F

    move-result p1

    iget-object p0, p0, Lcom/google/android/material/z/a/v$1;->a:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr p1, p0

    invoke-direct {v0, p1}, Lcom/google/android/material/t/m;-><init>(F)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
