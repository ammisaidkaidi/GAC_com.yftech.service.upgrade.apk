.class Landroidx/d/b/b/s$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/b/b/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroidx/d/c/b/f;

.field b:Landroidx/d/c/b/f;

.field c:Landroidx/d/e/g;

.field d:Landroidx/d/e/g;

.field e:I

.field f:I

.field final synthetic g:Landroidx/d/b/b/s;


# direct methods
.method constructor <init>(Landroidx/d/b/b/s;)V
    .locals 0

    .line 1994
    iput-object p1, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1995
    new-instance p1, Landroidx/d/c/b/f;

    invoke-direct {p1}, Landroidx/d/c/b/f;-><init>()V

    iput-object p1, p0, Landroidx/d/b/b/s$c;->a:Landroidx/d/c/b/f;

    .line 1996
    new-instance p1, Landroidx/d/c/b/f;

    invoke-direct {p1}, Landroidx/d/c/b/f;-><init>()V

    iput-object p1, p0, Landroidx/d/b/b/s$c;->b:Landroidx/d/c/b/f;

    const/4 p1, 0x0

    .line 1997
    iput-object p1, p0, Landroidx/d/b/b/s$c;->c:Landroidx/d/e/g;

    .line 1998
    iput-object p1, p0, Landroidx/d/b/b/s$c;->d:Landroidx/d/e/g;

    return-void
.end method

.method private a(Landroidx/d/c/b/f;Landroidx/d/e/g;)V
    .locals 12

    .line 2087
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 2088
    new-instance v7, Landroidx/d/e/h$a;

    const/4 v0, -0x2

    invoke-direct {v7, v0, v0}, Landroidx/d/e/h$a;-><init>(II)V

    .line 2090
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    const/4 v8, 0x0

    .line 2091
    invoke-virtual {v6, v8, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2092
    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    invoke-virtual {v0}, Landroidx/d/b/b/s;->getId()I

    move-result v0

    invoke-virtual {v6, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2095
    invoke-virtual {p1}, Landroidx/d/c/b/f;->ay()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/c/b/e;

    .line 2096
    invoke-virtual {v1}, Landroidx/d/c/b/e;->aa()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2097
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v6, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 2100
    :cond_0
    invoke-virtual {p1}, Landroidx/d/c/b/f;->ay()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/d/c/b/e;

    .line 2101
    invoke-virtual {v10}, Landroidx/d/c/b/e;->aa()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/view/View;

    .line 2102
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0, v7}, Landroidx/d/e/g;->a(ILandroidx/d/e/d$a;)V

    .line 2104
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/d/e/g;->f(I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroidx/d/c/b/e;->p(I)V

    .line 2105
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/d/e/g;->e(I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroidx/d/c/b/e;->q(I)V

    .line 2106
    instance-of v0, v11, Landroidx/d/e/c;

    if-eqz v0, :cond_1

    .line 2107
    move-object v0, v11

    check-cast v0, Landroidx/d/e/c;

    invoke-virtual {p2, v0, v10, v7, v6}, Landroidx/d/e/g;->a(Landroidx/d/e/c;Landroidx/d/c/b/e;Landroidx/d/e/d$a;Landroid/util/SparseArray;)V

    .line 2108
    instance-of v0, v11, Landroidx/d/e/a;

    if-eqz v0, :cond_1

    .line 2109
    move-object v0, v11

    check-cast v0, Landroidx/d/e/a;

    invoke-virtual {v0}, Landroidx/d/e/a;->c()V

    .line 2119
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    .line 2120
    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    invoke-virtual {v0}, Landroidx/d/b/b/s;->getLayoutDirection()I

    move-result v0

    invoke-virtual {v7, v0}, Landroidx/d/e/h$a;->resolveLayoutDirection(I)V

    goto :goto_2

    .line 2122
    :cond_2
    invoke-virtual {v7, v8}, Landroidx/d/e/h$a;->resolveLayoutDirection(I)V

    .line 2124
    :goto_2
    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    const/4 v1, 0x0

    move-object v2, v11

    move-object v3, v10

    move-object v4, v7

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Landroidx/d/b/b/s;->a(Landroidx/d/b/b/s;ZLandroid/view/View;Landroidx/d/c/b/e;Landroidx/d/e/d$a;Landroid/util/SparseArray;)V

    .line 2125
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/d/e/g;->c(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 2126
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {v10, v0}, Landroidx/d/c/b/e;->k(I)V

    goto :goto_1

    .line 2128
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/d/e/g;->d(I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroidx/d/c/b/e;->k(I)V

    goto/16 :goto_1

    .line 2131
    :cond_4
    invoke-virtual {p1}, Landroidx/d/c/b/f;->ay()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/d/c/b/e;

    .line 2132
    instance-of v0, p2, Landroidx/d/c/b/m;

    if-eqz v0, :cond_5

    .line 2133
    invoke-virtual {p2}, Landroidx/d/c/b/e;->aa()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/e/c;

    .line 2134
    check-cast p2, Landroidx/d/c/b/i;

    .line 2135
    invoke-virtual {v0, p1, p2, v6}, Landroidx/d/e/c;->a(Landroidx/d/c/b/f;Landroidx/d/c/b/i;Landroid/util/SparseArray;)V

    .line 2136
    check-cast p2, Landroidx/d/c/b/m;

    .line 2137
    invoke-virtual {p2}, Landroidx/d/c/b/m;->i()V

    goto :goto_3

    :cond_6
    return-void
.end method

.method private a(Ljava/lang/String;Landroidx/d/c/b/e;)V
    .locals 3

    const-string p0, " "

    .line 2177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    iget-object p0, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "T"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    iget-object v1, v1, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v1, v1, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    sget-object v2, Landroidx/d/c/b/d$a;->c:Landroidx/d/c/b/d$a;

    if-ne v1, v2, :cond_0

    const-string v1, "T"

    goto :goto_0

    :cond_0
    const-string v1, "B"

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, "__"

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    iget-object p0, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "B"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    iget-object v1, v1, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v1, v1, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    sget-object v2, Landroidx/d/c/b/d$a;->c:Landroidx/d/c/b/d$a;

    if-ne v1, v2, :cond_2

    const-string v1, "T"

    goto :goto_2

    :cond_2
    const-string v1, "B"

    :goto_2
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    const-string p0, "__"

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    iget-object p0, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "L"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    iget-object v1, v1, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v1, v1, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    sget-object v2, Landroidx/d/c/b/d$a;->b:Landroidx/d/c/b/d$a;

    if-ne v1, v2, :cond_4

    const-string v1, "L"

    goto :goto_4

    :cond_4
    const-string v1, "R"

    :goto_4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_5
    const-string p0, "__"

    :goto_5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p2, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget-object p0, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "R"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget-object v1, v1, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v1, v1, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    sget-object v2, Landroidx/d/c/b/d$a;->b:Landroidx/d/c/b/d$a;

    if-ne v1, v2, :cond_6

    const-string v1, "L"

    goto :goto_6

    :cond_6
    const-string v1, "R"

    :goto_6
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_7
    const-string p0, "__"

    :goto_7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MotionLayout"

    .line 2181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ---  "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Ljava/lang/String;Landroidx/d/c/b/f;)V
    .locals 7

    .line 2185
    invoke-virtual {p2}, Landroidx/d/c/b/f;->aa()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 2186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/d/b/b/c;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MotionLayout"

    .line 2187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  ========= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    invoke-virtual {p2}, Landroidx/d/c/b/f;->ay()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_5

    .line 2190
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2191
    invoke-virtual {p2}, Landroidx/d/c/b/f;->ay()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/c/b/e;

    const-string v3, ""

    .line 2193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    iget-object v3, v3, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v3, :cond_0

    const-string v3, "T"

    goto :goto_1

    :cond_0
    const-string v3, "_"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    iget-object v3, v3, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v3, :cond_1

    const-string v3, "B"

    goto :goto_2

    :cond_1
    const-string v3, "_"

    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    iget-object v3, v3, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v3, :cond_2

    const-string v3, "L"

    goto :goto_3

    :cond_2
    const-string v3, "_"

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget-object v3, v3, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v3, :cond_3

    const-string v3, "R"

    goto :goto_4

    :cond_3
    const-string v3, "_"

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2197
    invoke-virtual {v2}, Landroidx/d/c/b/e;->aa()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2198
    invoke-static {v4}, Landroidx/d/b/b/c;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    .line 2199
    instance-of v6, v4, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    .line 2200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    const-string v4, "MotionLayout"

    .line 2202
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_5
    const-string p1, "MotionLayout"

    .line 2204
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " done. "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Ljava/lang/String;Landroidx/d/e/d$a;)V
    .locals 2

    const-string p0, " "

    .line 2160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p2, Landroidx/d/e/d$a;->I:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    const-string p0, "SS"

    goto :goto_0

    :cond_0
    const-string p0, "__"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p2, Landroidx/d/e/d$a;->H:I

    if-eq p0, v1, :cond_1

    const-string p0, "|SE"

    goto :goto_1

    :cond_1
    const-string p0, "|__"

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p2, Landroidx/d/e/d$a;->J:I

    if-eq p0, v1, :cond_2

    const-string p0, "|ES"

    goto :goto_2

    :cond_2
    const-string p0, "|__"

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p2, Landroidx/d/e/d$a;->K:I

    if-eq p0, v1, :cond_3

    const-string p0, "|EE"

    goto :goto_3

    :cond_3
    const-string p0, "|__"

    :goto_3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p2, Landroidx/d/e/d$a;->v:I

    if-eq p0, v1, :cond_4

    const-string p0, "|LL"

    goto :goto_4

    :cond_4
    const-string p0, "|__"

    :goto_4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p2, Landroidx/d/e/d$a;->w:I

    if-eq p0, v1, :cond_5

    const-string p0, "|LR"

    goto :goto_5

    :cond_5
    const-string p0, "|__"

    :goto_5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p2, Landroidx/d/e/d$a;->x:I

    if-eq p0, v1, :cond_6

    const-string p0, "|RL"

    goto :goto_6

    :cond_6
    const-string p0, "|__"

    :goto_6
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p2, Landroidx/d/e/d$a;->y:I

    if-eq p0, v1, :cond_7

    const-string p0, "|RR"

    goto :goto_7

    :cond_7
    const-string p0, "|__"

    :goto_7
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p2, Landroidx/d/e/d$a;->z:I

    if-eq p0, v1, :cond_8

    const-string p0, "|TT"

    goto :goto_8

    :cond_8
    const-string p0, "|__"

    :goto_8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p2, Landroidx/d/e/d$a;->A:I

    if-eq p0, v1, :cond_9

    const-string p0, "|TB"

    goto :goto_9

    :cond_9
    const-string p0, "|__"

    :goto_9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p2, Landroidx/d/e/d$a;->B:I

    if-eq p0, v1, :cond_a

    const-string p0, "|BT"

    goto :goto_a

    :cond_a
    const-string p0, "|__"

    :goto_a
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p2, Landroidx/d/e/d$a;->C:I

    if-eq p0, v1, :cond_b

    const-string p0, "|BB"

    goto :goto_b

    :cond_b
    const-string p0, "|__"

    :goto_b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MotionLayout"

    .line 2172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method a(Landroidx/d/c/b/f;Landroid/view/View;)Landroidx/d/c/b/e;
    .locals 3

    .line 2143
    invoke-virtual {p1}, Landroidx/d/c/b/f;->aa()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, p2, :cond_0

    return-object p1

    .line 2146
    :cond_0
    invoke-virtual {p1}, Landroidx/d/c/b/f;->ay()Ljava/util/ArrayList;

    move-result-object p0

    .line 2147
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 2149
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/c/b/e;

    .line 2150
    invoke-virtual {v1}, Landroidx/d/c/b/e;->aa()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public a()V
    .locals 2

    .line 2208
    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    invoke-static {v0}, Landroidx/d/b/b/s;->i(Landroidx/d/b/b/s;)I

    move-result v0

    iget-object v1, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    invoke-static {v1}, Landroidx/d/b/b/s;->j(Landroidx/d/b/b/s;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/d/b/b/s$c;->a(II)V

    .line 2209
    iget-object p0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    invoke-static {p0}, Landroidx/d/b/b/s;->k(Landroidx/d/b/b/s;)V

    return-void
.end method

.method public a(II)V
    .locals 13

    .line 2213
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2214
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 2216
    iget-object v2, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iput v0, v2, Landroidx/d/b/b/s;->S:I

    .line 2217
    iget-object v2, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iput v1, v2, Landroidx/d/b/b/s;->T:I

    .line 2218
    iget-object v2, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    invoke-virtual {v2}, Landroidx/d/b/b/s;->getOptimizationLevel()I

    move-result v2

    .line 2220
    iget-object v3, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v3, v3, Landroidx/d/b/b/s;->l:I

    iget-object v4, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    invoke-virtual {v4}, Landroidx/d/b/b/s;->getStartState()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 2221
    iget-object v3, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget-object v4, p0, Landroidx/d/b/b/s$c;->b:Landroidx/d/c/b/f;

    invoke-static {v3, v4, v2, p1, p2}, Landroidx/d/b/b/s;->a(Landroidx/d/b/b/s;Landroidx/d/c/b/f;III)V

    .line 2222
    iget-object v3, p0, Landroidx/d/b/b/s$c;->c:Landroidx/d/e/g;

    if-eqz v3, :cond_2

    .line 2223
    iget-object v3, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget-object v4, p0, Landroidx/d/b/b/s$c;->a:Landroidx/d/c/b/f;

    invoke-static {v3, v4, v2, p1, p2}, Landroidx/d/b/b/s;->b(Landroidx/d/b/b/s;Landroidx/d/c/b/f;III)V

    goto :goto_0

    .line 2226
    :cond_0
    iget-object v3, p0, Landroidx/d/b/b/s$c;->c:Landroidx/d/e/g;

    if-eqz v3, :cond_1

    .line 2227
    iget-object v3, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget-object v4, p0, Landroidx/d/b/b/s$c;->a:Landroidx/d/c/b/f;

    invoke-static {v3, v4, v2, p1, p2}, Landroidx/d/b/b/s;->c(Landroidx/d/b/b/s;Landroidx/d/c/b/f;III)V

    .line 2229
    :cond_1
    iget-object v3, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget-object v4, p0, Landroidx/d/b/b/s$c;->b:Landroidx/d/c/b/f;

    invoke-static {v3, v4, v2, p1, p2}, Landroidx/d/b/b/s;->d(Landroidx/d/b/b/s;Landroidx/d/c/b/f;III)V

    .line 2238
    :cond_2
    :goto_0
    iget-object v3, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    invoke-virtual {v3}, Landroidx/d/b/b/s;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroidx/d/b/b/s;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_3

    if-ne v1, v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    if-eqz v3, :cond_9

    .line 2242
    iget-object v3, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iput v0, v3, Landroidx/d/b/b/s;->S:I

    .line 2243
    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iput v1, v0, Landroidx/d/b/b/s;->T:I

    .line 2244
    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v0, v0, Landroidx/d/b/b/s;->l:I

    iget-object v1, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    invoke-virtual {v1}, Landroidx/d/b/b/s;->getStartState()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 2245
    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget-object v1, p0, Landroidx/d/b/b/s$c;->b:Landroidx/d/c/b/f;

    invoke-static {v0, v1, v2, p1, p2}, Landroidx/d/b/b/s;->e(Landroidx/d/b/b/s;Landroidx/d/c/b/f;III)V

    .line 2246
    iget-object v0, p0, Landroidx/d/b/b/s$c;->c:Landroidx/d/e/g;

    if-eqz v0, :cond_6

    .line 2247
    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget-object v1, p0, Landroidx/d/b/b/s$c;->a:Landroidx/d/c/b/f;

    invoke-static {v0, v1, v2, p1, p2}, Landroidx/d/b/b/s;->f(Landroidx/d/b/b/s;Landroidx/d/c/b/f;III)V

    goto :goto_2

    .line 2250
    :cond_4
    iget-object v0, p0, Landroidx/d/b/b/s$c;->c:Landroidx/d/e/g;

    if-eqz v0, :cond_5

    .line 2251
    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget-object v1, p0, Landroidx/d/b/b/s$c;->a:Landroidx/d/c/b/f;

    invoke-static {v0, v1, v2, p1, p2}, Landroidx/d/b/b/s;->g(Landroidx/d/b/b/s;Landroidx/d/c/b/f;III)V

    .line 2253
    :cond_5
    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget-object v1, p0, Landroidx/d/b/b/s$c;->b:Landroidx/d/c/b/f;

    invoke-static {v0, v1, v2, p1, p2}, Landroidx/d/b/b/s;->h(Landroidx/d/b/b/s;Landroidx/d/c/b/f;III)V

    .line 2256
    :cond_6
    :goto_2
    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget-object v1, p0, Landroidx/d/b/b/s$c;->a:Landroidx/d/c/b/f;

    invoke-virtual {v1}, Landroidx/d/c/b/f;->I()I

    move-result v1

    iput v1, v0, Landroidx/d/b/b/s;->O:I

    .line 2257
    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget-object v1, p0, Landroidx/d/b/b/s$c;->a:Landroidx/d/c/b/f;

    invoke-virtual {v1}, Landroidx/d/c/b/f;->L()I

    move-result v1

    iput v1, v0, Landroidx/d/b/b/s;->P:I

    .line 2258
    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget-object v1, p0, Landroidx/d/b/b/s$c;->b:Landroidx/d/c/b/f;

    invoke-virtual {v1}, Landroidx/d/c/b/f;->I()I

    move-result v1

    iput v1, v0, Landroidx/d/b/b/s;->Q:I

    .line 2259
    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget-object v1, p0, Landroidx/d/b/b/s$c;->b:Landroidx/d/c/b/f;

    invoke-virtual {v1}, Landroidx/d/c/b/f;->L()I

    move-result v1

    iput v1, v0, Landroidx/d/b/b/s;->R:I

    .line 2260
    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget-object v1, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v1, v1, Landroidx/d/b/b/s;->O:I

    iget-object v2, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v2, v2, Landroidx/d/b/b/s;->Q:I

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v1, v1, Landroidx/d/b/b/s;->P:I

    iget-object v2, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v2, v2, Landroidx/d/b/b/s;->R:I

    if-eq v1, v2, :cond_7

    goto :goto_3

    :cond_7
    move v1, v4

    goto :goto_4

    :cond_8
    :goto_3
    move v1, v5

    :goto_4
    iput-boolean v1, v0, Landroidx/d/b/b/s;->N:Z

    .line 2264
    :cond_9
    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v0, v0, Landroidx/d/b/b/s;->O:I

    .line 2265
    iget-object v1, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v1, v1, Landroidx/d/b/b/s;->P:I

    .line 2266
    iget-object v2, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v2, v2, Landroidx/d/b/b/s;->S:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_b

    iget-object v2, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v2, v2, Landroidx/d/b/b/s;->S:I

    if-nez v2, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    move v9, v0

    goto :goto_7

    .line 2267
    :cond_b
    :goto_6
    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v0, v0, Landroidx/d/b/b/s;->O:I

    int-to-float v0, v0

    iget-object v2, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v2, v2, Landroidx/d/b/b/s;->U:F

    iget-object v6, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v6, v6, Landroidx/d/b/b/s;->Q:I

    iget-object v7, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v7, v7, Landroidx/d/b/b/s;->O:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    mul-float/2addr v2, v6

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_5

    .line 2269
    :goto_7
    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v0, v0, Landroidx/d/b/b/s;->T:I

    if-eq v0, v3, :cond_d

    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v0, v0, Landroidx/d/b/b/s;->T:I

    if-nez v0, :cond_c

    goto :goto_9

    :cond_c
    :goto_8
    move v10, v1

    goto :goto_a

    .line 2270
    :cond_d
    :goto_9
    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v0, v0, Landroidx/d/b/b/s;->P:I

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v1, v1, Landroidx/d/b/b/s;->U:F

    iget-object v2, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v2, v2, Landroidx/d/b/b/s;->R:I

    iget-object v3, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v3, v3, Landroidx/d/b/b/s;->P:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v1, v0

    goto :goto_8

    .line 2273
    :goto_a
    iget-object v0, p0, Landroidx/d/b/b/s$c;->a:Landroidx/d/c/b/f;

    invoke-virtual {v0}, Landroidx/d/c/b/f;->aq()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroidx/d/b/b/s$c;->b:Landroidx/d/c/b/f;

    .line 2274
    invoke-virtual {v0}, Landroidx/d/c/b/f;->aq()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_b

    :cond_e
    move v11, v4

    goto :goto_c

    :cond_f
    :goto_b
    move v11, v5

    .line 2275
    :goto_c
    iget-object v0, p0, Landroidx/d/b/b/s$c;->a:Landroidx/d/c/b/f;

    invoke-virtual {v0}, Landroidx/d/c/b/f;->ar()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Landroidx/d/b/b/s$c;->b:Landroidx/d/c/b/f;

    .line 2276
    invoke-virtual {v0}, Landroidx/d/c/b/f;->ar()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_d

    :cond_10
    move v12, v4

    goto :goto_e

    :cond_11
    :goto_d
    move v12, v5

    .line 2277
    :goto_e
    iget-object v6, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    move v7, p1

    move v8, p2

    invoke-static/range {v6 .. v12}, Landroidx/d/b/b/s;->a(Landroidx/d/b/b/s;IIIIZZ)V

    return-void
.end method

.method a(Landroidx/d/c/b/f;Landroidx/d/c/b/f;)V
    .locals 3

    .line 2003
    invoke-virtual {p1}, Landroidx/d/c/b/f;->ay()Ljava/util/ArrayList;

    move-result-object p0

    .line 2004
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2005
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2006
    invoke-virtual {p2}, Landroidx/d/c/b/f;->ay()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2007
    invoke-virtual {p2, p1, v0}, Landroidx/d/c/b/f;->a(Landroidx/d/c/b/e;Ljava/util/HashMap;)V

    .line 2008
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/c/b/e;

    .line 2010
    instance-of v2, v1, Landroidx/d/c/b/a;

    if-eqz v2, :cond_0

    .line 2011
    new-instance v2, Landroidx/d/c/b/a;

    invoke-direct {v2}, Landroidx/d/c/b/a;-><init>()V

    goto :goto_1

    .line 2012
    :cond_0
    instance-of v2, v1, Landroidx/d/c/b/h;

    if-eqz v2, :cond_1

    .line 2013
    new-instance v2, Landroidx/d/c/b/h;

    invoke-direct {v2}, Landroidx/d/c/b/h;-><init>()V

    goto :goto_1

    .line 2014
    :cond_1
    instance-of v2, v1, Landroidx/d/c/b/g;

    if-eqz v2, :cond_2

    .line 2015
    new-instance v2, Landroidx/d/c/b/g;

    invoke-direct {v2}, Landroidx/d/c/b/g;-><init>()V

    goto :goto_1

    .line 2016
    :cond_2
    instance-of v2, v1, Landroidx/d/c/b/i;

    if-eqz v2, :cond_3

    .line 2017
    new-instance v2, Landroidx/d/c/b/j;

    invoke-direct {v2}, Landroidx/d/c/b/j;-><init>()V

    goto :goto_1

    .line 2019
    :cond_3
    new-instance v2, Landroidx/d/c/b/e;

    invoke-direct {v2}, Landroidx/d/c/b/e;-><init>()V

    .line 2021
    :goto_1
    invoke-virtual {p2, v2}, Landroidx/d/c/b/f;->b(Landroidx/d/c/b/e;)V

    .line 2022
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2024
    :cond_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/d/c/b/e;

    .line 2025
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/d/c/b/e;

    invoke-virtual {p2, p1, v0}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/e;Ljava/util/HashMap;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method a(Landroidx/d/c/b/f;Landroidx/d/e/g;Landroidx/d/e/g;)V
    .locals 4

    .line 2030
    iput-object p2, p0, Landroidx/d/b/b/s$c;->c:Landroidx/d/e/g;

    .line 2031
    iput-object p3, p0, Landroidx/d/b/b/s$c;->d:Landroidx/d/e/g;

    .line 2032
    new-instance p1, Landroidx/d/c/b/f;

    invoke-direct {p1}, Landroidx/d/c/b/f;-><init>()V

    iput-object p1, p0, Landroidx/d/b/b/s$c;->a:Landroidx/d/c/b/f;

    .line 2033
    new-instance p1, Landroidx/d/c/b/f;

    invoke-direct {p1}, Landroidx/d/c/b/f;-><init>()V

    iput-object p1, p0, Landroidx/d/b/b/s$c;->b:Landroidx/d/c/b/f;

    .line 2034
    iget-object p1, p0, Landroidx/d/b/b/s$c;->a:Landroidx/d/c/b/f;

    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    invoke-static {v0}, Landroidx/d/b/b/s;->c(Landroidx/d/b/b/s;)Landroidx/d/c/b/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/d/c/b/f;->h()Landroidx/d/c/b/a/b$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/d/c/b/f;->a(Landroidx/d/c/b/a/b$b;)V

    .line 2035
    iget-object p1, p0, Landroidx/d/b/b/s$c;->b:Landroidx/d/c/b/f;

    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    invoke-static {v0}, Landroidx/d/b/b/s;->d(Landroidx/d/b/b/s;)Landroidx/d/c/b/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/d/c/b/f;->h()Landroidx/d/c/b/a/b$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/d/c/b/f;->a(Landroidx/d/c/b/a/b$b;)V

    .line 2036
    iget-object p1, p0, Landroidx/d/b/b/s$c;->a:Landroidx/d/c/b/f;

    invoke-virtual {p1}, Landroidx/d/c/b/f;->aA()V

    .line 2037
    iget-object p1, p0, Landroidx/d/b/b/s$c;->b:Landroidx/d/c/b/f;

    invoke-virtual {p1}, Landroidx/d/c/b/f;->aA()V

    .line 2038
    iget-object p1, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    invoke-static {p1}, Landroidx/d/b/b/s;->e(Landroidx/d/b/b/s;)Landroidx/d/c/b/f;

    move-result-object p1

    iget-object v0, p0, Landroidx/d/b/b/s$c;->a:Landroidx/d/c/b/f;

    invoke-virtual {p0, p1, v0}, Landroidx/d/b/b/s$c;->a(Landroidx/d/c/b/f;Landroidx/d/c/b/f;)V

    .line 2039
    iget-object p1, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    invoke-static {p1}, Landroidx/d/b/b/s;->f(Landroidx/d/b/b/s;)Landroidx/d/c/b/f;

    move-result-object p1

    iget-object v0, p0, Landroidx/d/b/b/s$c;->b:Landroidx/d/c/b/f;

    invoke-virtual {p0, p1, v0}, Landroidx/d/b/b/s$c;->a(Landroidx/d/c/b/f;Landroidx/d/c/b/f;)V

    .line 2040
    iget-object p1, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget p1, p1, Landroidx/d/b/b/s;->o:F

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v0, v2

    if-lez p1, :cond_1

    if-eqz p2, :cond_0

    .line 2042
    iget-object p1, p0, Landroidx/d/b/b/s$c;->a:Landroidx/d/c/b/f;

    invoke-direct {p0, p1, p2}, Landroidx/d/b/b/s$c;->a(Landroidx/d/c/b/f;Landroidx/d/e/g;)V

    .line 2044
    :cond_0
    iget-object p1, p0, Landroidx/d/b/b/s$c;->b:Landroidx/d/c/b/f;

    invoke-direct {p0, p1, p3}, Landroidx/d/b/b/s$c;->a(Landroidx/d/c/b/f;Landroidx/d/e/g;)V

    goto :goto_0

    .line 2046
    :cond_1
    iget-object p1, p0, Landroidx/d/b/b/s$c;->b:Landroidx/d/c/b/f;

    invoke-direct {p0, p1, p3}, Landroidx/d/b/b/s$c;->a(Landroidx/d/c/b/f;Landroidx/d/e/g;)V

    if-eqz p2, :cond_2

    .line 2048
    iget-object p1, p0, Landroidx/d/b/b/s$c;->a:Landroidx/d/c/b/f;

    invoke-direct {p0, p1, p2}, Landroidx/d/b/b/s$c;->a(Landroidx/d/c/b/f;Landroidx/d/e/g;)V

    .line 2055
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/d/b/b/s$c;->a:Landroidx/d/c/b/f;

    iget-object p2, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    invoke-static {p2}, Landroidx/d/b/b/s;->g(Landroidx/d/b/b/s;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/d/c/b/f;->i(Z)V

    .line 2056
    iget-object p1, p0, Landroidx/d/b/b/s$c;->a:Landroidx/d/c/b/f;

    invoke-virtual {p1}, Landroidx/d/c/b/f;->g()V

    .line 2065
    iget-object p1, p0, Landroidx/d/b/b/s$c;->b:Landroidx/d/c/b/f;

    iget-object p2, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    invoke-static {p2}, Landroidx/d/b/b/s;->h(Landroidx/d/b/b/s;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/d/c/b/f;->i(Z)V

    .line 2066
    iget-object p1, p0, Landroidx/d/b/b/s$c;->b:Landroidx/d/c/b/f;

    invoke-virtual {p1}, Landroidx/d/c/b/f;->g()V

    .line 2073
    iget-object p1, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    invoke-virtual {p1}, Landroidx/d/b/b/s;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2075
    iget p2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 p3, -0x2

    if-ne p2, p3, :cond_3

    .line 2076
    iget-object p2, p0, Landroidx/d/b/b/s$c;->a:Landroidx/d/c/b/f;

    sget-object v0, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    invoke-virtual {p2, v0}, Landroidx/d/c/b/f;->a(Landroidx/d/c/b/e$a;)V

    .line 2077
    iget-object p2, p0, Landroidx/d/b/b/s$c;->b:Landroidx/d/c/b/f;

    sget-object v0, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    invoke-virtual {p2, v0}, Landroidx/d/c/b/f;->a(Landroidx/d/c/b/e$a;)V

    .line 2079
    :cond_3
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, p3, :cond_4

    .line 2080
    iget-object p1, p0, Landroidx/d/b/b/s$c;->a:Landroidx/d/c/b/f;

    sget-object p2, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    invoke-virtual {p1, p2}, Landroidx/d/c/b/f;->b(Landroidx/d/c/b/e$a;)V

    .line 2081
    iget-object p0, p0, Landroidx/d/b/b/s$c;->b:Landroidx/d/c/b/f;

    sget-object p1, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    invoke-virtual {p0, p1}, Landroidx/d/c/b/f;->b(Landroidx/d/c/b/e$a;)V

    :cond_4
    return-void
.end method

.method public b()V
    .locals 7

    .line 2288
    iget-object v0, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    invoke-virtual {v0}, Landroidx/d/b/b/s;->getChildCount()I

    move-result v0

    .line 2289
    iget-object v1, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget-object v1, v1, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2292
    iget-object v3, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    invoke-virtual {v3, v2}, Landroidx/d/b/b/s;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2293
    new-instance v4, Landroidx/d/b/b/p;

    invoke-direct {v4, v3}, Landroidx/d/b/b/p;-><init>(Landroid/view/View;)V

    .line 2295
    iget-object v5, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget-object v5, v5, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v0, :cond_6

    .line 2298
    iget-object v2, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    invoke-virtual {v2, v1}, Landroidx/d/b/b/s;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2299
    iget-object v3, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget-object v3, v3, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/d/b/b/p;

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 2303
    :cond_1
    iget-object v4, p0, Landroidx/d/b/b/s$c;->c:Landroidx/d/e/g;

    if-eqz v4, :cond_3

    .line 2304
    iget-object v4, p0, Landroidx/d/b/b/s$c;->a:Landroidx/d/c/b/f;

    invoke-virtual {p0, v4, v2}, Landroidx/d/b/b/s$c;->a(Landroidx/d/c/b/f;Landroid/view/View;)Landroidx/d/c/b/e;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2306
    iget-object v5, p0, Landroidx/d/b/b/s$c;->c:Landroidx/d/e/g;

    invoke-virtual {v3, v4, v5}, Landroidx/d/b/b/p;->a(Landroidx/d/c/b/e;Landroidx/d/e/g;)V

    goto :goto_2

    .line 2308
    :cond_2
    iget-object v4, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v4, v4, Landroidx/d/b/b/s;->v:I

    if-eqz v4, :cond_3

    const-string v4, "MotionLayout"

    .line 2309
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/d/b/b/c;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "no widget for  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroidx/d/b/b/c;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    :cond_3
    :goto_2
    iget-object v4, p0, Landroidx/d/b/b/s$c;->d:Landroidx/d/e/g;

    if-eqz v4, :cond_5

    .line 2314
    iget-object v4, p0, Landroidx/d/b/b/s$c;->b:Landroidx/d/c/b/f;

    invoke-virtual {p0, v4, v2}, Landroidx/d/b/b/s$c;->a(Landroidx/d/c/b/f;Landroid/view/View;)Landroidx/d/c/b/e;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2316
    iget-object v2, p0, Landroidx/d/b/b/s$c;->d:Landroidx/d/e/g;

    invoke-virtual {v3, v4, v2}, Landroidx/d/b/b/p;->b(Landroidx/d/c/b/e;Landroidx/d/e/g;)V

    goto :goto_3

    .line 2318
    :cond_4
    iget-object v3, p0, Landroidx/d/b/b/s$c;->g:Landroidx/d/b/b/s;

    iget v3, v3, Landroidx/d/b/b/s;->v:I

    if-eqz v3, :cond_5

    const-string v3, "MotionLayout"

    .line 2319
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/d/b/b/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "no widget for  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroidx/d/b/b/c;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method public b(II)V
    .locals 0

    .line 2327
    iput p1, p0, Landroidx/d/b/b/s$c;->e:I

    .line 2328
    iput p2, p0, Landroidx/d/b/b/s$c;->f:I

    return-void
.end method

.method public c(II)Z
    .locals 1

    .line 2332
    iget v0, p0, Landroidx/d/b/b/s$c;->e:I

    if-ne p1, v0, :cond_1

    iget p0, p0, Landroidx/d/b/b/s$c;->f:I

    if-eq p2, p0, :cond_0

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
