.class public Landroidx/d/c/b/m;
.super Landroidx/d/c/b/j;
.source "SourceFile"


# instance fields
.field private a:I

.field private aY:I

.field private aZ:I

.field private b:I

.field private ba:I

.field private bb:Z

.field private bc:I

.field protected bf:Landroidx/d/c/b/a/b$a;

.field bg:Landroidx/d/c/b/a/b$b;

.field private bh:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroidx/d/c/b/j;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Landroidx/d/c/b/m;->a:I

    .line 29
    iput v0, p0, Landroidx/d/c/b/m;->b:I

    .line 30
    iput v0, p0, Landroidx/d/c/b/m;->c:I

    .line 31
    iput v0, p0, Landroidx/d/c/b/m;->d:I

    .line 32
    iput v0, p0, Landroidx/d/c/b/m;->e:I

    .line 33
    iput v0, p0, Landroidx/d/c/b/m;->aY:I

    .line 34
    iput v0, p0, Landroidx/d/c/b/m;->aZ:I

    .line 35
    iput v0, p0, Landroidx/d/c/b/m;->ba:I

    .line 37
    iput-boolean v0, p0, Landroidx/d/c/b/m;->bb:Z

    .line 38
    iput v0, p0, Landroidx/d/c/b/m;->bc:I

    .line 39
    iput v0, p0, Landroidx/d/c/b/m;->bh:I

    .line 41
    new-instance v0, Landroidx/d/c/b/a/b$a;

    invoke-direct {v0}, Landroidx/d/c/b/a/b$a;-><init>()V

    iput-object v0, p0, Landroidx/d/c/b/m;->bf:Landroidx/d/c/b/a/b$a;

    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Landroidx/d/c/b/m;->bg:Landroidx/d/c/b/a/b$b;

    return-void
.end method


# virtual methods
.method public N(I)V
    .locals 0

    .line 48
    iput p1, p0, Landroidx/d/c/b/m;->c:I

    .line 49
    iput p1, p0, Landroidx/d/c/b/m;->a:I

    .line 50
    iput p1, p0, Landroidx/d/c/b/m;->d:I

    .line 51
    iput p1, p0, Landroidx/d/c/b/m;->b:I

    .line 52
    iput p1, p0, Landroidx/d/c/b/m;->e:I

    .line 53
    iput p1, p0, Landroidx/d/c/b/m;->aY:I

    return-void
.end method

.method public O(I)V
    .locals 0

    .line 57
    iput p1, p0, Landroidx/d/c/b/m;->e:I

    .line 58
    iput p1, p0, Landroidx/d/c/b/m;->aZ:I

    .line 59
    iput p1, p0, Landroidx/d/c/b/m;->ba:I

    return-void
.end method

.method public P(I)V
    .locals 0

    .line 63
    iput p1, p0, Landroidx/d/c/b/m;->aY:I

    return-void
.end method

.method public Q(I)V
    .locals 0

    .line 67
    iput p1, p0, Landroidx/d/c/b/m;->c:I

    .line 68
    iput p1, p0, Landroidx/d/c/b/m;->aZ:I

    return-void
.end method

.method public R(I)V
    .locals 0

    .line 84
    iput p1, p0, Landroidx/d/c/b/m;->a:I

    return-void
.end method

.method public S(I)V
    .locals 0

    .line 88
    iput p1, p0, Landroidx/d/c/b/m;->d:I

    .line 89
    iput p1, p0, Landroidx/d/c/b/m;->ba:I

    return-void
.end method

.method public T(I)V
    .locals 0

    .line 93
    iput p1, p0, Landroidx/d/c/b/m;->b:I

    return-void
.end method

.method protected a(Landroidx/d/c/b/e;Landroidx/d/c/b/e$a;ILandroidx/d/c/b/e$a;I)V
    .locals 1

    .line 207
    :goto_0
    iget-object v0, p0, Landroidx/d/c/b/m;->bg:Landroidx/d/c/b/a/b$b;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/d/c/b/m;->A()Landroidx/d/c/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Landroidx/d/c/b/m;->A()Landroidx/d/c/b/e;

    move-result-object v0

    check-cast v0, Landroidx/d/c/b/f;

    .line 209
    invoke-virtual {v0}, Landroidx/d/c/b/f;->h()Landroidx/d/c/b/a/b$b;

    move-result-object v0

    iput-object v0, p0, Landroidx/d/c/b/m;->bg:Landroidx/d/c/b/a/b$b;

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Landroidx/d/c/b/m;->bf:Landroidx/d/c/b/a/b$a;

    iput-object p2, v0, Landroidx/d/c/b/a/b$a;->d:Landroidx/d/c/b/e$a;

    .line 212
    iget-object p2, p0, Landroidx/d/c/b/m;->bf:Landroidx/d/c/b/a/b$a;

    iput-object p4, p2, Landroidx/d/c/b/a/b$a;->e:Landroidx/d/c/b/e$a;

    .line 213
    iget-object p2, p0, Landroidx/d/c/b/m;->bf:Landroidx/d/c/b/a/b$a;

    iput p3, p2, Landroidx/d/c/b/a/b$a;->f:I

    .line 214
    iget-object p2, p0, Landroidx/d/c/b/m;->bf:Landroidx/d/c/b/a/b$a;

    iput p5, p2, Landroidx/d/c/b/a/b$a;->g:I

    .line 215
    iget-object p2, p0, Landroidx/d/c/b/m;->bg:Landroidx/d/c/b/a/b$b;

    iget-object p3, p0, Landroidx/d/c/b/m;->bf:Landroidx/d/c/b/a/b$a;

    invoke-interface {p2, p1, p3}, Landroidx/d/c/b/a/b$b;->a(Landroidx/d/c/b/e;Landroidx/d/c/b/a/b$a;)V

    .line 216
    iget-object p2, p0, Landroidx/d/c/b/m;->bf:Landroidx/d/c/b/a/b$a;

    iget p2, p2, Landroidx/d/c/b/a/b$a;->h:I

    invoke-virtual {p1, p2}, Landroidx/d/c/b/e;->p(I)V

    .line 217
    iget-object p2, p0, Landroidx/d/c/b/m;->bf:Landroidx/d/c/b/a/b$a;

    iget p2, p2, Landroidx/d/c/b/a/b$a;->i:I

    invoke-virtual {p1, p2}, Landroidx/d/c/b/e;->q(I)V

    .line 218
    iget-object p2, p0, Landroidx/d/c/b/m;->bf:Landroidx/d/c/b/a/b$a;

    iget-boolean p2, p2, Landroidx/d/c/b/a/b$a;->k:Z

    invoke-virtual {p1, p2}, Landroidx/d/c/b/e;->c(Z)V

    .line 219
    iget-object p0, p0, Landroidx/d/c/b/m;->bf:Landroidx/d/c/b/a/b$a;

    iget p0, p0, Landroidx/d/c/b/a/b$a;->j:I

    invoke-virtual {p1, p0}, Landroidx/d/c/b/e;->u(I)V

    return-void
.end method

.method public a(Landroidx/d/c/b/f;)V
    .locals 0

    .line 126
    invoke-virtual {p0}, Landroidx/d/c/b/m;->i()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 72
    iget v0, p0, Landroidx/d/c/b/m;->e:I

    if-gtz v0, :cond_0

    iget v0, p0, Landroidx/d/c/b/m;->aY:I

    if-lez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 74
    iget p1, p0, Landroidx/d/c/b/m;->aY:I

    iput p1, p0, Landroidx/d/c/b/m;->aZ:I

    .line 75
    iget p1, p0, Landroidx/d/c/b/m;->e:I

    iput p1, p0, Landroidx/d/c/b/m;->ba:I

    goto :goto_0

    .line 77
    :cond_1
    iget p1, p0, Landroidx/d/c/b/m;->e:I

    iput p1, p0, Landroidx/d/c/b/m;->aZ:I

    .line 78
    iget p1, p0, Landroidx/d/c/b/m;->aY:I

    iput p1, p0, Landroidx/d/c/b/m;->ba:I

    :cond_2
    :goto_0
    return-void
.end method

.method public aq()I
    .locals 0

    .line 139
    iget p0, p0, Landroidx/d/c/b/m;->bc:I

    return p0
.end method

.method public ar()I
    .locals 0

    .line 143
    iget p0, p0, Landroidx/d/c/b/m;->bh:I

    return p0
.end method

.method protected as()Z
    .locals 8

    .line 153
    iget-object v0, p0, Landroidx/d/c/b/m;->al:Landroidx/d/c/b/e;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Landroidx/d/c/b/m;->al:Landroidx/d/c/b/e;

    check-cast v0, Landroidx/d/c/b/f;

    invoke-virtual {v0}, Landroidx/d/c/b/f;->h()Landroidx/d/c/b/a/b$b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move v2, v1

    .line 160
    :goto_1
    iget v3, p0, Landroidx/d/c/b/m;->be:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_8

    .line 161
    iget-object v3, p0, Landroidx/d/c/b/m;->bd:[Landroidx/d/c/b/e;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    goto :goto_3

    .line 166
    :cond_2
    instance-of v5, v3, Landroidx/d/c/b/h;

    if-eqz v5, :cond_3

    goto :goto_3

    .line 170
    :cond_3
    invoke-virtual {v3, v1}, Landroidx/d/c/b/e;->y(I)Landroidx/d/c/b/e$a;

    move-result-object v5

    .line 171
    invoke-virtual {v3, v4}, Landroidx/d/c/b/e;->y(I)Landroidx/d/c/b/e$a;

    move-result-object v6

    .line 173
    sget-object v7, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v5, v7, :cond_4

    iget v7, v3, Landroidx/d/c/b/e;->G:I

    if-eq v7, v4, :cond_4

    sget-object v7, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v6, v7, :cond_4

    iget v7, v3, Landroidx/d/c/b/e;->H:I

    if-eq v7, v4, :cond_4

    goto :goto_2

    :cond_4
    move v4, v1

    :goto_2
    if-eqz v4, :cond_5

    goto :goto_3

    .line 184
    :cond_5
    sget-object v4, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v5, v4, :cond_6

    .line 185
    sget-object v5, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    .line 187
    :cond_6
    sget-object v4, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v6, v4, :cond_7

    .line 188
    sget-object v6, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    .line 190
    :cond_7
    iget-object v4, p0, Landroidx/d/c/b/m;->bf:Landroidx/d/c/b/a/b$a;

    iput-object v5, v4, Landroidx/d/c/b/a/b$a;->d:Landroidx/d/c/b/e$a;

    .line 191
    iget-object v4, p0, Landroidx/d/c/b/m;->bf:Landroidx/d/c/b/a/b$a;

    iput-object v6, v4, Landroidx/d/c/b/a/b$a;->e:Landroidx/d/c/b/e$a;

    .line 192
    iget-object v4, p0, Landroidx/d/c/b/m;->bf:Landroidx/d/c/b/a/b$a;

    invoke-virtual {v3}, Landroidx/d/c/b/e;->I()I

    move-result v5

    iput v5, v4, Landroidx/d/c/b/a/b$a;->f:I

    .line 193
    iget-object v4, p0, Landroidx/d/c/b/m;->bf:Landroidx/d/c/b/a/b$a;

    invoke-virtual {v3}, Landroidx/d/c/b/e;->L()I

    move-result v5

    iput v5, v4, Landroidx/d/c/b/a/b$a;->g:I

    .line 194
    iget-object v4, p0, Landroidx/d/c/b/m;->bf:Landroidx/d/c/b/a/b$a;

    invoke-interface {v0, v3, v4}, Landroidx/d/c/b/a/b$b;->a(Landroidx/d/c/b/e;Landroidx/d/c/b/a/b$a;)V

    .line 195
    iget-object v4, p0, Landroidx/d/c/b/m;->bf:Landroidx/d/c/b/a/b$a;

    iget v4, v4, Landroidx/d/c/b/a/b$a;->h:I

    invoke-virtual {v3, v4}, Landroidx/d/c/b/e;->p(I)V

    .line 196
    iget-object v4, p0, Landroidx/d/c/b/m;->bf:Landroidx/d/c/b/a/b$a;

    iget v4, v4, Landroidx/d/c/b/a/b$a;->i:I

    invoke-virtual {v3, v4}, Landroidx/d/c/b/e;->q(I)V

    .line 197
    iget-object v4, p0, Landroidx/d/c/b/m;->bf:Landroidx/d/c/b/a/b$a;

    iget v4, v4, Landroidx/d/c/b/a/b$a;->j:I

    invoke-virtual {v3, v4}, Landroidx/d/c/b/e;->u(I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    return v4
.end method

.method public b()I
    .locals 0

    .line 96
    iget p0, p0, Landroidx/d/c/b/m;->a:I

    return p0
.end method

.method public b(IIII)V
    .locals 0

    return-void
.end method

.method public c()I
    .locals 0

    .line 98
    iget p0, p0, Landroidx/d/c/b/m;->b:I

    return p0
.end method

.method public f()I
    .locals 0

    .line 100
    iget p0, p0, Landroidx/d/c/b/m;->aZ:I

    return p0
.end method

.method public g()I
    .locals 0

    .line 102
    iget p0, p0, Landroidx/d/c/b/m;->ba:I

    return p0
.end method

.method protected h(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Landroidx/d/c/b/m;->bb:Z

    return-void
.end method

.method public h()Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Landroidx/d/c/b/m;->bb:Z

    return p0
.end method

.method public i()V
    .locals 3

    const/4 v0, 0x0

    .line 130
    :goto_0
    iget v1, p0, Landroidx/d/c/b/m;->be:I

    if-ge v0, v1, :cond_1

    .line 131
    iget-object v1, p0, Landroidx/d/c/b/m;->bd:[Landroidx/d/c/b/e;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 133
    invoke-virtual {v1, v2}, Landroidx/d/c/b/e;->b(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k(II)V
    .locals 0

    .line 147
    iput p1, p0, Landroidx/d/c/b/m;->bc:I

    .line 148
    iput p2, p0, Landroidx/d/c/b/m;->bh:I

    return-void
.end method
