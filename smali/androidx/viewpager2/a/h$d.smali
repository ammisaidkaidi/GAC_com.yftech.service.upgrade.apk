.class Landroidx/viewpager2/a/h$d;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager2/a/h;


# direct methods
.method constructor <init>(Landroidx/viewpager2/a/h;Landroid/content/Context;)V
    .locals 0

    .line 1001
    iput-object p1, p0, Landroidx/viewpager2/a/h$d;->a:Landroidx/viewpager2/a/h;

    .line 1002
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView$q;Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/core/n/a/d;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$q;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$w;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroidx/core/n/a/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1017
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$q;Landroidx/recyclerview/widget/RecyclerView$w;Landroidx/core/n/a/d;)V

    .line 1018
    iget-object p0, p0, Landroidx/viewpager2/a/h$d;->a:Landroidx/viewpager2/a/h;

    iget-object p0, p0, Landroidx/viewpager2/a/h;->l:Landroidx/viewpager2/a/h$a;

    invoke-virtual {p0, p3}, Landroidx/viewpager2/a/h$a;->a(Landroidx/core/n/a/d;)V

    return-void
.end method

.method protected a(Landroidx/recyclerview/widget/RecyclerView$w;[I)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$w;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1024
    iget-object v0, p0, Landroidx/viewpager2/a/h$d;->a:Landroidx/viewpager2/a/h;

    invoke-virtual {v0}, Landroidx/viewpager2/a/h;->getOffscreenPageLimit()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1027
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$w;[I)V

    return-void

    .line 1030
    :cond_0
    iget-object p0, p0, Landroidx/viewpager2/a/h$d;->a:Landroidx/viewpager2/a/h;

    invoke-virtual {p0}, Landroidx/viewpager2/a/h;->getPageSize()I

    move-result p0

    mul-int/2addr p0, v0

    const/4 p1, 0x0

    .line 1031
    aput p0, p2, p1

    const/4 p1, 0x1

    .line 1032
    aput p0, p2, p1

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$q;Landroidx/recyclerview/widget/RecyclerView$w;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$q;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$w;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1008
    iget-object v0, p0, Landroidx/viewpager2/a/h$d;->a:Landroidx/viewpager2/a/h;

    iget-object v0, v0, Landroidx/viewpager2/a/h;->l:Landroidx/viewpager2/a/h$a;

    invoke-virtual {v0, p3}, Landroidx/viewpager2/a/h$a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    iget-object p0, p0, Landroidx/viewpager2/a/h$d;->a:Landroidx/viewpager2/a/h;

    iget-object p0, p0, Landroidx/viewpager2/a/h;->l:Landroidx/viewpager2/a/h$a;

    invoke-virtual {p0, p3}, Landroidx/viewpager2/a/h$a;->b(I)Z

    move-result p0

    return p0

    .line 1011
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->a(Landroidx/recyclerview/widget/RecyclerView$q;Landroidx/recyclerview/widget/RecyclerView$w;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method
