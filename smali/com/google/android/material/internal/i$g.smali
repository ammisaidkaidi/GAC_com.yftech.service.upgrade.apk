.class Lcom/google/android/material/internal/i$g;
.super Landroidx/recyclerview/widget/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation


# instance fields
.field final synthetic b:Lcom/google/android/material/internal/i;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/i;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .param p2    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 776
    iput-object p1, p0, Lcom/google/android/material/internal/i$g;->b:Lcom/google/android/material/internal/i;

    .line 777
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/y;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/n/a/d;)V
    .locals 0
    .param p2    # Landroidx/core/n/a/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 783
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/y;->a(Landroid/view/View;Landroidx/core/n/a/d;)V

    .line 784
    iget-object p0, p0, Lcom/google/android/material/internal/i$g;->b:Lcom/google/android/material/internal/i;

    iget-object p0, p0, Lcom/google/android/material/internal/i;->c:Lcom/google/android/material/internal/i$b;

    invoke-virtual {p0}, Lcom/google/android/material/internal/i$b;->h()I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p0, p1, p1}, Landroidx/core/n/a/d$b;->a(IIZ)Landroidx/core/n/a/d$b;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/n/a/d;->b(Ljava/lang/Object;)V

    return-void
.end method
