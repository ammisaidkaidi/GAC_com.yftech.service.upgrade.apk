.class public Landroidx/d/c/b/n;
.super Landroidx/d/c/b/e;
.source "SourceFile"


# instance fields
.field public bq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/d/c/b/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroidx/d/c/b/e;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/d/c/b/n;->bq:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroidx/d/c/b/e;-><init>(II)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/d/c/b/n;->bq:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/d/c/b/e;-><init>(IIII)V

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/d/c/b/n;->bq:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Landroidx/d/c/c;)V
    .locals 3

    .line 172
    invoke-super {p0, p1}, Landroidx/d/c/b/e;->a(Landroidx/d/c/c;)V

    .line 173
    iget-object v0, p0, Landroidx/d/c/b/n;->bq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 175
    iget-object v2, p0, Landroidx/d/c/b/n;->bq:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/c/b/e;

    .line 176
    invoke-virtual {v2, p1}, Landroidx/d/c/b/e;->a(Landroidx/d/c/c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs a([Landroidx/d/c/b/e;)V
    .locals 3

    .line 86
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 88
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroidx/d/c/b/n;->b(Landroidx/d/c/b/e;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public aA()V
    .locals 0

    .line 181
    iget-object p0, p0, Landroidx/d/c/b/n;->bq:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public at()V
    .locals 4

    .line 158
    iget-object v0, p0, Landroidx/d/c/b/n;->bq:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Landroidx/d/c/b/n;->bq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 163
    iget-object v2, p0, Landroidx/d/c/b/n;->bq:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/c/b/e;

    .line 164
    instance-of v3, v2, Landroidx/d/c/b/n;

    if-eqz v3, :cond_1

    .line 165
    check-cast v2, Landroidx/d/c/b/n;

    invoke-virtual {v2}, Landroidx/d/c/b/n;->at()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public ay()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/d/c/b/e;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object p0, p0, Landroidx/d/c/b/n;->bq:Ljava/util/ArrayList;

    return-object p0
.end method

.method public az()Landroidx/d/c/b/f;
    .locals 3

    .line 118
    invoke-virtual {p0}, Landroidx/d/c/b/e;->A()Landroidx/d/c/b/e;

    move-result-object v0

    .line 120
    instance-of v1, p0, Landroidx/d/c/b/f;

    if-eqz v1, :cond_0

    .line 121
    check-cast p0, Landroidx/d/c/b/f;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 125
    invoke-virtual {v0}, Landroidx/d/c/b/e;->A()Landroidx/d/c/b/e;

    move-result-object v1

    .line 126
    instance-of v2, v0, Landroidx/d/c/b/f;

    if-eqz v2, :cond_1

    .line 127
    move-object p0, v0

    check-cast p0, Landroidx/d/c/b/f;

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public b(Landroidx/d/c/b/e;)V
    .locals 1

    .line 72
    iget-object v0, p0, Landroidx/d/c/b/n;->bq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {p1}, Landroidx/d/c/b/e;->A()Landroidx/d/c/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1}, Landroidx/d/c/b/e;->A()Landroidx/d/c/b/e;

    move-result-object v0

    check-cast v0, Landroidx/d/c/b/n;

    .line 75
    invoke-virtual {v0, p1}, Landroidx/d/c/b/n;->c(Landroidx/d/c/b/e;)V

    .line 77
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/d/c/b/e;->a_(Landroidx/d/c/b/e;)V

    return-void
.end method

.method public c(Landroidx/d/c/b/e;)V
    .locals 0

    .line 98
    iget-object p0, p0, Landroidx/d/c/b/n;->bq:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p1}, Landroidx/d/c/b/e;->w()V

    return-void
.end method

.method public e(II)V
    .locals 3

    .line 146
    invoke-super {p0, p1, p2}, Landroidx/d/c/b/e;->e(II)V

    .line 147
    iget-object p1, p0, Landroidx/d/c/b/n;->bq:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 149
    iget-object v0, p0, Landroidx/d/c/b/n;->bq:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/c/b/e;

    .line 150
    invoke-virtual {p0}, Landroidx/d/c/b/n;->M()I

    move-result v1

    invoke-virtual {p0}, Landroidx/d/c/b/n;->N()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/d/c/b/e;->e(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w()V
    .locals 1

    .line 62
    iget-object v0, p0, Landroidx/d/c/b/n;->bq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    invoke-super {p0}, Landroidx/d/c/b/e;->w()V

    return-void
.end method
