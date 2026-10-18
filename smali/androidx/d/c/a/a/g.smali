.class public Landroidx/d/c/a/a/g;
.super Landroidx/d/c/a/a/d;
.source "SourceFile"


# instance fields
.field private f:Ljava/lang/Object;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/d/c/a/e;)V
    .locals 1

    .line 31
    sget-object v0, Landroidx/d/c/a/e$d;->b:Landroidx/d/c/a/e$d;

    invoke-direct {p0, p1, v0}, Landroidx/d/c/a/a/d;-><init>(Landroidx/d/c/a/e;Landroidx/d/c/a/e$d;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 88
    iput-object p1, p0, Landroidx/d/c/a/a/g;->f:Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .line 89
    iput-object p1, p0, Landroidx/d/c/a/a/g;->g:Ljava/lang/Object;

    return-void
.end method

.method public c()V
    .locals 5

    .line 37
    iget-object v0, p0, Landroidx/d/c/a/a/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 38
    iget-object v2, p0, Landroidx/d/c/a/a/g;->a:Landroidx/d/c/a/e;

    invoke-virtual {v2, v1}, Landroidx/d/c/a/e;->d(Ljava/lang/Object;)Landroidx/d/c/a/a;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Landroidx/d/c/a/a;->g()Landroidx/d/c/a/a;

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Landroidx/d/c/a/a/g;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 43
    iget-object v4, p0, Landroidx/d/c/a/a/g;->a:Landroidx/d/c/a/e;

    invoke-virtual {v4, v3}, Landroidx/d/c/a/e;->d(Ljava/lang/Object;)Landroidx/d/c/a/a;

    move-result-object v3

    if-nez v1, :cond_3

    .line 46
    iget-object v1, p0, Landroidx/d/c/a/a/g;->f:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 47
    iget-object v1, p0, Landroidx/d/c/a/a/g;->f:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Landroidx/d/c/a/a;->k(Ljava/lang/Object;)Landroidx/d/c/a/a;

    goto :goto_2

    .line 48
    :cond_1
    iget-object v1, p0, Landroidx/d/c/a/a/g;->g:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 49
    iget-object v1, p0, Landroidx/d/c/a/a/g;->g:Ljava/lang/Object;

    invoke-virtual {v3, v1}, Landroidx/d/c/a/a;->l(Ljava/lang/Object;)Landroidx/d/c/a/a;

    goto :goto_2

    .line 51
    :cond_2
    sget-object v1, Landroidx/d/c/a/e;->g:Ljava/lang/Integer;

    invoke-virtual {v3, v1}, Landroidx/d/c/a/a;->k(Ljava/lang/Object;)Landroidx/d/c/a/a;

    :goto_2
    move-object v1, v3

    :cond_3
    if-eqz v2, :cond_4

    .line 55
    invoke-virtual {v3}, Landroidx/d/c/a/a;->a()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/d/c/a/a;->m(Ljava/lang/Object;)Landroidx/d/c/a/a;

    .line 56
    invoke-virtual {v2}, Landroidx/d/c/a/a;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/d/c/a/a;->l(Ljava/lang/Object;)Landroidx/d/c/a/a;

    :cond_4
    move-object v2, v3

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_8

    .line 62
    iget-object v0, p0, Landroidx/d/c/a/a/g;->h:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 63
    iget-object v0, p0, Landroidx/d/c/a/a/g;->h:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Landroidx/d/c/a/a;->m(Ljava/lang/Object;)Landroidx/d/c/a/a;

    goto :goto_3

    .line 64
    :cond_6
    iget-object v0, p0, Landroidx/d/c/a/a/g;->i:Ljava/lang/Object;

    if-eqz v0, :cond_7

    .line 65
    iget-object v0, p0, Landroidx/d/c/a/a/g;->i:Ljava/lang/Object;

    invoke-virtual {v2, v0}, Landroidx/d/c/a/a;->n(Ljava/lang/Object;)Landroidx/d/c/a/a;

    goto :goto_3

    .line 67
    :cond_7
    sget-object v0, Landroidx/d/c/a/e;->g:Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Landroidx/d/c/a/a;->n(Ljava/lang/Object;)Landroidx/d/c/a/a;

    :cond_8
    :goto_3
    if-eqz v1, :cond_9

    .line 71
    iget v0, p0, Landroidx/d/c/a/a/g;->d:F

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_9

    .line 72
    iget v0, p0, Landroidx/d/c/a/a/g;->d:F

    invoke-virtual {v1, v0}, Landroidx/d/c/a/a;->b(F)Landroidx/d/c/a/a;

    .line 75
    :cond_9
    sget-object v0, Landroidx/d/c/a/a/g$1;->a:[I

    iget-object p0, p0, Landroidx/d/c/a/a/g;->e:Landroidx/d/c/a/e$a;

    invoke-virtual {p0}, Landroidx/d/c/a/e$a;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const/4 p0, 0x2

    .line 83
    invoke-virtual {v1, p0}, Landroidx/d/c/a/a;->b(I)V

    goto :goto_4

    :pswitch_1
    const/4 p0, 0x1

    .line 80
    invoke-virtual {v1, p0}, Landroidx/d/c/a/a;->b(I)V

    goto :goto_4

    :pswitch_2
    const/4 p0, 0x0

    .line 77
    invoke-virtual {v1, p0}, Landroidx/d/c/a/a;->b(I)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    .line 90
    iput-object p1, p0, Landroidx/d/c/a/a/g;->h:Ljava/lang/Object;

    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    .line 91
    iput-object p1, p0, Landroidx/d/c/a/a/g;->i:Ljava/lang/Object;

    return-void
.end method
