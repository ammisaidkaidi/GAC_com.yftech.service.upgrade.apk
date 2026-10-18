.class Lcom/google/android/material/internal/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/w$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/google/android/material/internal/w$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lcom/google/android/material/internal/w$a;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/google/android/material/internal/w$a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/internal/w;)V

    iput-object v0, p0, Lcom/google/android/material/internal/w;->a:Lcom/google/android/material/internal/w$a;

    return-void
.end method

.method static c(Landroid/view/View;)Lcom/google/android/material/internal/w;
    .locals 5

    .line 50
    invoke-static {p0}, Lcom/google/android/material/internal/z;->f(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 54
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 55
    instance-of v4, v3, Lcom/google/android/material/internal/w$a;

    if-eqz v4, :cond_0

    .line 56
    check-cast v3, Lcom/google/android/material/internal/w$a;

    iget-object p0, v3, Lcom/google/android/material/internal/w$a;->e:Lcom/google/android/material/internal/w;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_1
    new-instance v1, Lcom/google/android/material/internal/t;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0, p0}, Lcom/google/android/material/internal/t;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 66
    iget-object p0, p0, Lcom/google/android/material/internal/w;->a:Lcom/google/android/material/internal/w$a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/w$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 71
    iget-object p0, p0, Lcom/google/android/material/internal/w;->a:Lcom/google/android/material/internal/w$a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/w$a;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
