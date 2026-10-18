.class public abstract Landroidx/recyclerview/widget/aa;
.super Landroidx/recyclerview/widget/RecyclerView$f;
.source "SourceFile"


# static fields
.field private static final a:Z = false

.field private static final b:Ljava/lang/String; = "SimpleItemAnimator"


# instance fields
.field m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$f;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Landroidx/recyclerview/widget/aa;->m:Z

    return-void
.end method


# virtual methods
.method public final a(Landroidx/recyclerview/widget/RecyclerView$z;Z)V
    .locals 0

    .line 316
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/aa;->d(Landroidx/recyclerview/widget/RecyclerView$z;Z)V

    .line 317
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/aa;->f(Landroidx/recyclerview/widget/RecyclerView$z;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 71
    iput-boolean p1, p0, Landroidx/recyclerview/widget/aa;->m:Z

    return-void
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$z;)Z
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$z;IIII)Z
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$f$d;Landroidx/recyclerview/widget/RecyclerView$f$d;)Z
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$f$d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$f$d;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 90
    iget v2, p2, Landroidx/recyclerview/widget/RecyclerView$f$d;->a:I

    .line 91
    iget v3, p2, Landroidx/recyclerview/widget/RecyclerView$f$d;->b:I

    .line 92
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$z;->a:Landroid/view/View;

    if-nez p3, :cond_0

    .line 93
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_0
    move v4, v0

    goto :goto_1

    :cond_0
    iget v0, p3, Landroidx/recyclerview/widget/RecyclerView$f$d;->a:I

    goto :goto_0

    :goto_1
    if-nez p3, :cond_1

    .line 94
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p3

    :goto_2
    move v5, p3

    goto :goto_3

    :cond_1
    iget p3, p3, Landroidx/recyclerview/widget/RecyclerView$f$d;->b:I

    goto :goto_2

    .line 95
    :goto_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$z;->s()Z

    move-result p3

    if-nez p3, :cond_3

    if-ne v2, v4, :cond_2

    if-eq v3, v5, :cond_3

    .line 97
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p3, v4

    .line 98
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v5

    .line 96
    invoke-virtual {p2, v4, v5, p3, v0}, Landroid/view/View;->layout(IIII)V

    move-object v0, p0

    move-object v1, p1

    .line 102
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/aa;->a(Landroidx/recyclerview/widget/RecyclerView$z;IIII)Z

    move-result p0

    return p0

    .line 107
    :cond_3
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/aa;->a(Landroidx/recyclerview/widget/RecyclerView$z;)Z

    move-result p0

    return p0
.end method

.method public abstract a(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$z;IIII)Z
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$f$d;Landroidx/recyclerview/widget/RecyclerView$f$d;)Z
    .locals 7
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$f$d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/RecyclerView$f$d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 151
    iget v3, p3, Landroidx/recyclerview/widget/RecyclerView$f$d;->a:I

    .line 152
    iget v4, p3, Landroidx/recyclerview/widget/RecyclerView$f$d;->b:I

    .line 154
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$z;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget p4, p3, Landroidx/recyclerview/widget/RecyclerView$f$d;->a:I

    .line 156
    iget p3, p3, Landroidx/recyclerview/widget/RecyclerView$f$d;->b:I

    move v6, p3

    move v5, p4

    goto :goto_0

    .line 158
    :cond_0
    iget p3, p4, Landroidx/recyclerview/widget/RecyclerView$f$d;->a:I

    .line 159
    iget p4, p4, Landroidx/recyclerview/widget/RecyclerView$f$d;->b:I

    move v5, p3

    move v6, p4

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 161
    invoke-virtual/range {v0 .. v6}, Landroidx/recyclerview/widget/aa;->a(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$z;IIII)Z

    move-result p0

    return p0
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView$z;Z)V
    .locals 0

    .line 357
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/aa;->c(Landroidx/recyclerview/widget/RecyclerView$z;Z)V

    return-void
.end method

.method public abstract b(Landroidx/recyclerview/widget/RecyclerView$z;)Z
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$f$d;Landroidx/recyclerview/widget/RecyclerView$f$d;)Z
    .locals 8
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$f$d;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$f$d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    if-eqz p2, :cond_1

    .line 114
    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$f$d;->a:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$f$d;->a:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$f$d;->b:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$f$d;->b:I

    if-eq v0, v1, :cond_1

    .line 120
    :cond_0
    iget v4, p2, Landroidx/recyclerview/widget/RecyclerView$f$d;->a:I

    iget v5, p2, Landroidx/recyclerview/widget/RecyclerView$f$d;->b:I

    iget v6, p3, Landroidx/recyclerview/widget/RecyclerView$f$d;->a:I

    iget v7, p3, Landroidx/recyclerview/widget/RecyclerView$f$d;->b:I

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/aa;->a(Landroidx/recyclerview/widget/RecyclerView$z;IIII)Z

    move-result p0

    return p0

    .line 126
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/aa;->b(Landroidx/recyclerview/widget/RecyclerView$z;)Z

    move-result p0

    return p0
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$z;Z)V
    .locals 0

    return-void
.end method

.method public c(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$f$d;Landroidx/recyclerview/widget/RecyclerView$f$d;)Z
    .locals 6
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$f$d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$f$d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 133
    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$f$d;->a:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$f$d;->a:I

    if-ne v0, v1, :cond_1

    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$f$d;->b:I

    iget v1, p3, Landroidx/recyclerview/widget/RecyclerView$f$d;->b:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/aa;->l(Landroidx/recyclerview/widget/RecyclerView$z;)V

    const/4 p0, 0x0

    return p0

    .line 138
    :cond_1
    :goto_0
    iget v2, p2, Landroidx/recyclerview/widget/RecyclerView$f$d;->a:I

    iget v3, p2, Landroidx/recyclerview/widget/RecyclerView$f$d;->b:I

    iget v4, p3, Landroidx/recyclerview/widget/RecyclerView$f$d;->a:I

    iget v5, p3, Landroidx/recyclerview/widget/RecyclerView$f$d;->b:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/aa;->a(Landroidx/recyclerview/widget/RecyclerView$z;IIII)Z

    move-result p0

    return p0
.end method

.method public d(Landroidx/recyclerview/widget/RecyclerView$z;Z)V
    .locals 0

    return-void
.end method

.method public j(Landroidx/recyclerview/widget/RecyclerView$z;)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 84
    iget-boolean p0, p0, Landroidx/recyclerview/widget/aa;->m:Z

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$z;->p()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final k(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    .line 276
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/aa;->r(Landroidx/recyclerview/widget/RecyclerView$z;)V

    .line 277
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/aa;->f(Landroidx/recyclerview/widget/RecyclerView$z;)V

    return-void
.end method

.method public k()Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Landroidx/recyclerview/widget/aa;->m:Z

    return p0
.end method

.method public final l(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    .line 291
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/aa;->v(Landroidx/recyclerview/widget/RecyclerView$z;)V

    .line 292
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/aa;->f(Landroidx/recyclerview/widget/RecyclerView$z;)V

    return-void
.end method

.method public final m(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    .line 301
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/aa;->t(Landroidx/recyclerview/widget/RecyclerView$z;)V

    .line 302
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/aa;->f(Landroidx/recyclerview/widget/RecyclerView$z;)V

    return-void
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    .line 326
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/aa;->q(Landroidx/recyclerview/widget/RecyclerView$z;)V

    return-void
.end method

.method public final o(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    .line 335
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/aa;->u(Landroidx/recyclerview/widget/RecyclerView$z;)V

    return-void
.end method

.method public final p(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    .line 344
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/aa;->s(Landroidx/recyclerview/widget/RecyclerView$z;)V

    return-void
.end method

.method public q(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    return-void
.end method

.method public r(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    return-void
.end method

.method public s(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    return-void
.end method

.method public t(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    return-void
.end method

.method public u(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    return-void
.end method

.method public v(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    return-void
.end method
