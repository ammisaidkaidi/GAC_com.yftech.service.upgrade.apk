.class public Landroidx/d/c/a/a/b;
.super Landroidx/d/c/a/c;
.source "SourceFile"


# instance fields
.field private d:F

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/d/c/a/e;)V
    .locals 1

    .line 33
    sget-object v0, Landroidx/d/c/a/e$d;->d:Landroidx/d/c/a/e$d;

    invoke-direct {p0, p1, v0}, Landroidx/d/c/a/c;-><init>(Landroidx/d/c/a/e;Landroidx/d/c/a/e$d;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 25
    iput p1, p0, Landroidx/d/c/a/a/b;->d:F

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .line 65
    iput p1, p0, Landroidx/d/c/a/a/b;->d:F

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 60
    iput-object p1, p0, Landroidx/d/c/a/a/b;->e:Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .line 61
    iput-object p1, p0, Landroidx/d/c/a/a/b;->f:Ljava/lang/Object;

    return-void
.end method

.method public c()V
    .locals 4

    .line 37
    iget-object v0, p0, Landroidx/d/c/a/a/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 38
    iget-object v2, p0, Landroidx/d/c/a/a/b;->a:Landroidx/d/c/a/e;

    invoke-virtual {v2, v1}, Landroidx/d/c/a/e;->d(Ljava/lang/Object;)Landroidx/d/c/a/a;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroidx/d/c/a/a;->g()Landroidx/d/c/a/a;

    .line 40
    iget-object v2, p0, Landroidx/d/c/a/a/b;->e:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 41
    iget-object v2, p0, Landroidx/d/c/a/a/b;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/d/c/a/a;->k(Ljava/lang/Object;)Landroidx/d/c/a/a;

    goto :goto_1

    .line 42
    :cond_1
    iget-object v2, p0, Landroidx/d/c/a/a/b;->f:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 43
    iget-object v2, p0, Landroidx/d/c/a/a/b;->f:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/d/c/a/a;->l(Ljava/lang/Object;)Landroidx/d/c/a/a;

    goto :goto_1

    .line 45
    :cond_2
    sget-object v2, Landroidx/d/c/a/e;->g:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Landroidx/d/c/a/a;->k(Ljava/lang/Object;)Landroidx/d/c/a/a;

    .line 47
    :goto_1
    iget-object v2, p0, Landroidx/d/c/a/a/b;->g:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 48
    iget-object v2, p0, Landroidx/d/c/a/a/b;->g:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/d/c/a/a;->m(Ljava/lang/Object;)Landroidx/d/c/a/a;

    goto :goto_2

    .line 49
    :cond_3
    iget-object v2, p0, Landroidx/d/c/a/a/b;->h:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 50
    iget-object v2, p0, Landroidx/d/c/a/a/b;->h:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroidx/d/c/a/a;->n(Ljava/lang/Object;)Landroidx/d/c/a/a;

    goto :goto_2

    .line 52
    :cond_4
    sget-object v2, Landroidx/d/c/a/e;->g:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Landroidx/d/c/a/a;->n(Ljava/lang/Object;)Landroidx/d/c/a/a;

    .line 54
    :goto_2
    iget v2, p0, Landroidx/d/c/a/a/b;->d:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 55
    iget v2, p0, Landroidx/d/c/a/a/b;->d:F

    invoke-virtual {v1, v2}, Landroidx/d/c/a/a;->b(F)Landroidx/d/c/a/a;

    goto :goto_0

    :cond_5
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .line 62
    iput-object p1, p0, Landroidx/d/c/a/a/b;->g:Ljava/lang/Object;

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    .line 63
    iput-object p1, p0, Landroidx/d/c/a/a/b;->h:Ljava/lang/Object;

    return-void
.end method
