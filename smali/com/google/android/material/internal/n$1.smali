.class Lcom/google/android/material/internal/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/n/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/n;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/n;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/google/android/material/internal/n$1;->a:Lcom/google/android/material/internal/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/n/ao;)Landroidx/core/n/ao;
    .locals 4
    .param p2    # Landroidx/core/n/ao;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 78
    iget-object p1, p0, Lcom/google/android/material/internal/n$1;->a:Lcom/google/android/material/internal/n;

    iget-object p1, p1, Lcom/google/android/material/internal/n;->b:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/google/android/material/internal/n$1;->a:Lcom/google/android/material/internal/n;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p1, Lcom/google/android/material/internal/n;->b:Landroid/graphics/Rect;

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/n$1;->a:Lcom/google/android/material/internal/n;

    iget-object p1, p1, Lcom/google/android/material/internal/n;->b:Landroid/graphics/Rect;

    .line 82
    invoke-virtual {p2}, Landroidx/core/n/ao;->a()I

    move-result v0

    .line 83
    invoke-virtual {p2}, Landroidx/core/n/ao;->b()I

    move-result v1

    .line 84
    invoke-virtual {p2}, Landroidx/core/n/ao;->c()I

    move-result v2

    .line 85
    invoke-virtual {p2}, Landroidx/core/n/ao;->d()I

    move-result v3

    .line 81
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 86
    iget-object p1, p0, Lcom/google/android/material/internal/n$1;->a:Lcom/google/android/material/internal/n;

    invoke-virtual {p1, p2}, Lcom/google/android/material/internal/n;->a(Landroidx/core/n/ao;)V

    .line 87
    iget-object p1, p0, Lcom/google/android/material/internal/n$1;->a:Lcom/google/android/material/internal/n;

    invoke-virtual {p2}, Landroidx/core/n/ao;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/n$1;->a:Lcom/google/android/material/internal/n;

    iget-object v0, v0, Lcom/google/android/material/internal/n;->a:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/n;->setWillNotDraw(Z)V

    .line 88
    iget-object p0, p0, Lcom/google/android/material/internal/n$1;->a:Lcom/google/android/material/internal/n;

    invoke-static {p0}, Landroidx/core/n/af;->h(Landroid/view/View;)V

    .line 89
    invoke-virtual {p2}, Landroidx/core/n/ao;->i()Landroidx/core/n/ao;

    move-result-object p0

    return-object p0
.end method
