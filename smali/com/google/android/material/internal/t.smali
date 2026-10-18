.class Lcom/google/android/material/internal/t;
.super Lcom/google/android/material/internal/w;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/v;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/w;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static a(Landroid/view/ViewGroup;)Lcom/google/android/material/internal/t;
    .locals 0

    .line 31
    invoke-static {p0}, Lcom/google/android/material/internal/w;->c(Landroid/view/View;)Lcom/google/android/material/internal/w;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/t;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 36
    iget-object p0, p0, Lcom/google/android/material/internal/t;->a:Lcom/google/android/material/internal/w$a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/w$a;->a(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 41
    iget-object p0, p0, Lcom/google/android/material/internal/t;->a:Lcom/google/android/material/internal/w$a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/w$a;->b(Landroid/view/View;)V

    return-void
.end method
