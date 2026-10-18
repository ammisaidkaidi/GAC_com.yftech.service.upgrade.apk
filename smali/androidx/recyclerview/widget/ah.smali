.class Landroidx/recyclerview/widget/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ah$a;,
        Landroidx/recyclerview/widget/ah$b;
    }
.end annotation


# static fields
.field private static final c:Z = false


# instance fields
.field final a:Landroidx/c/i;
    .annotation build Landroidx/annotation/ax;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/i<",
            "Landroidx/recyclerview/widget/RecyclerView$z;",
            "Landroidx/recyclerview/widget/ah$a;",
            ">;"
        }
    .end annotation
.end field

.field final b:Landroidx/c/f;
    .annotation build Landroidx/annotation/ax;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/f<",
            "Landroidx/recyclerview/widget/RecyclerView$z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroidx/c/i;

    invoke-direct {v0}, Landroidx/c/i;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ah;->a:Landroidx/c/i;

    .line 47
    new-instance v0, Landroidx/c/f;

    invoke-direct {v0}, Landroidx/c/f;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/ah;->b:Landroidx/c/f;

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/RecyclerView$z;I)Landroidx/recyclerview/widget/RecyclerView$f$d;
    .locals 3

    .line 101
    iget-object v0, p0, Landroidx/recyclerview/widget/ah;->a:Landroidx/c/i;

    invoke-virtual {v0, p1}, Landroidx/c/i;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 105
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/ah;->a:Landroidx/c/i;

    invoke-virtual {v1, p1}, Landroidx/c/i;->c(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/ah$a;

    if-eqz v1, :cond_4

    .line 106
    iget v2, v1, Landroidx/recyclerview/widget/ah$a;->h:I

    and-int/2addr v2, p2

    if-eqz v2, :cond_4

    .line 107
    iget v0, v1, Landroidx/recyclerview/widget/ah$a;->h:I

    not-int v2, p2

    and-int/2addr v0, v2

    iput v0, v1, Landroidx/recyclerview/widget/ah$a;->h:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 110
    iget-object p2, v1, Landroidx/recyclerview/widget/ah$a;->i:Landroidx/recyclerview/widget/RecyclerView$f$d;

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    if-ne p2, v0, :cond_3

    .line 112
    iget-object p2, v1, Landroidx/recyclerview/widget/ah$a;->j:Landroidx/recyclerview/widget/RecyclerView$f$d;

    .line 117
    :goto_0
    iget v0, v1, Landroidx/recyclerview/widget/ah$a;->h:I

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_2

    .line 118
    iget-object p0, p0, Landroidx/recyclerview/widget/ah;->a:Landroidx/c/i;

    invoke-virtual {p0, p1}, Landroidx/c/i;->d(I)Ljava/lang/Object;

    .line 119
    invoke-static {v1}, Landroidx/recyclerview/widget/ah$a;->a(Landroidx/recyclerview/widget/ah$a;)V

    :cond_2
    return-object p2

    .line 114
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must provide flag PRE or POST"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return-object v0
.end method


# virtual methods
.method a(J)Landroidx/recyclerview/widget/RecyclerView$z;
    .locals 0

    .line 173
    iget-object p0, p0, Landroidx/recyclerview/widget/ah;->b:Landroidx/c/f;

    invoke-virtual {p0, p1, p2}, Landroidx/c/f;->a(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/RecyclerView$z;

    return-object p0
.end method

.method a()V
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/recyclerview/widget/ah;->a:Landroidx/c/i;

    invoke-virtual {v0}, Landroidx/c/i;->clear()V

    .line 55
    iget-object p0, p0, Landroidx/recyclerview/widget/ah;->b:Landroidx/c/f;

    invoke-virtual {p0}, Landroidx/c/f;->d()V

    return-void
.end method

.method a(JLandroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    .line 132
    iget-object p0, p0, Landroidx/recyclerview/widget/ah;->b:Landroidx/c/f;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/c/f;->d(JLjava/lang/Object;)V

    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$f$d;)V
    .locals 1

    .line 64
    iget-object v0, p0, Landroidx/recyclerview/widget/ah;->a:Landroidx/c/i;

    invoke-virtual {v0, p1}, Landroidx/c/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ah$a;

    if-nez v0, :cond_0

    .line 66
    invoke-static {}, Landroidx/recyclerview/widget/ah$a;->a()Landroidx/recyclerview/widget/ah$a;

    move-result-object v0

    .line 67
    iget-object p0, p0, Landroidx/recyclerview/widget/ah;->a:Landroidx/c/i;

    invoke-virtual {p0, p1, v0}, Landroidx/c/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    iput-object p2, v0, Landroidx/recyclerview/widget/ah$a;->i:Landroidx/recyclerview/widget/RecyclerView$f$d;

    .line 70
    iget p0, v0, Landroidx/recyclerview/widget/ah$a;->h:I

    or-int/lit8 p0, p0, 0x4

    iput p0, v0, Landroidx/recyclerview/widget/ah$a;->h:I

    return-void
.end method

.method a(Landroidx/recyclerview/widget/ah$b;)V
    .locals 5

    .line 219
    iget-object v0, p0, Landroidx/recyclerview/widget/ah;->a:Landroidx/c/i;

    invoke-virtual {v0}, Landroidx/c/i;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_7

    .line 220
    iget-object v1, p0, Landroidx/recyclerview/widget/ah;->a:Landroidx/c/i;

    invoke-virtual {v1, v0}, Landroidx/c/i;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$z;

    .line 221
    iget-object v2, p0, Landroidx/recyclerview/widget/ah;->a:Landroidx/c/i;

    invoke-virtual {v2, v0}, Landroidx/c/i;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/ah$a;

    .line 222
    iget v3, v2, Landroidx/recyclerview/widget/ah$a;->h:I

    const/4 v4, 0x3

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    .line 224
    invoke-interface {p1, v1}, Landroidx/recyclerview/widget/ah$b;->a(Landroidx/recyclerview/widget/RecyclerView$z;)V

    goto :goto_1

    .line 225
    :cond_0
    iget v3, v2, Landroidx/recyclerview/widget/ah$a;->h:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 227
    iget-object v3, v2, Landroidx/recyclerview/widget/ah$a;->i:Landroidx/recyclerview/widget/RecyclerView$f$d;

    if-nez v3, :cond_1

    .line 230
    invoke-interface {p1, v1}, Landroidx/recyclerview/widget/ah$b;->a(Landroidx/recyclerview/widget/RecyclerView$z;)V

    goto :goto_1

    .line 232
    :cond_1
    iget-object v3, v2, Landroidx/recyclerview/widget/ah$a;->i:Landroidx/recyclerview/widget/RecyclerView$f$d;

    iget-object v4, v2, Landroidx/recyclerview/widget/ah$a;->j:Landroidx/recyclerview/widget/RecyclerView$f$d;

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/ah$b;->a(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$f$d;Landroidx/recyclerview/widget/RecyclerView$f$d;)V

    goto :goto_1

    .line 234
    :cond_2
    iget v3, v2, Landroidx/recyclerview/widget/ah$a;->h:I

    const/16 v4, 0xe

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    .line 236
    iget-object v3, v2, Landroidx/recyclerview/widget/ah$a;->i:Landroidx/recyclerview/widget/RecyclerView$f$d;

    iget-object v4, v2, Landroidx/recyclerview/widget/ah$a;->j:Landroidx/recyclerview/widget/RecyclerView$f$d;

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/ah$b;->b(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$f$d;Landroidx/recyclerview/widget/RecyclerView$f$d;)V

    goto :goto_1

    .line 237
    :cond_3
    iget v3, v2, Landroidx/recyclerview/widget/ah$a;->h:I

    const/16 v4, 0xc

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    .line 239
    iget-object v3, v2, Landroidx/recyclerview/widget/ah$a;->i:Landroidx/recyclerview/widget/RecyclerView$f$d;

    iget-object v4, v2, Landroidx/recyclerview/widget/ah$a;->j:Landroidx/recyclerview/widget/RecyclerView$f$d;

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/ah$b;->c(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$f$d;Landroidx/recyclerview/widget/RecyclerView$f$d;)V

    goto :goto_1

    .line 240
    :cond_4
    iget v3, v2, Landroidx/recyclerview/widget/ah$a;->h:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    .line 242
    iget-object v3, v2, Landroidx/recyclerview/widget/ah$a;->i:Landroidx/recyclerview/widget/RecyclerView$f$d;

    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/ah$b;->a(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$f$d;Landroidx/recyclerview/widget/RecyclerView$f$d;)V

    goto :goto_1

    .line 243
    :cond_5
    iget v3, v2, Landroidx/recyclerview/widget/ah$a;->h:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    .line 245
    iget-object v3, v2, Landroidx/recyclerview/widget/ah$a;->i:Landroidx/recyclerview/widget/RecyclerView$f$d;

    iget-object v4, v2, Landroidx/recyclerview/widget/ah$a;->j:Landroidx/recyclerview/widget/RecyclerView$f$d;

    invoke-interface {p1, v1, v3, v4}, Landroidx/recyclerview/widget/ah$b;->b(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$f$d;Landroidx/recyclerview/widget/RecyclerView$f$d;)V

    goto :goto_1

    .line 246
    :cond_6
    iget v1, v2, Landroidx/recyclerview/widget/ah$a;->h:I

    .line 251
    :goto_1
    invoke-static {v2}, Landroidx/recyclerview/widget/ah$a;->a(Landroidx/recyclerview/widget/ah$a;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$z;)Z
    .locals 0

    .line 74
    iget-object p0, p0, Landroidx/recyclerview/widget/ah;->a:Landroidx/c/i;

    invoke-virtual {p0, p1}, Landroidx/c/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/ah$a;

    const/4 p1, 0x1

    if-eqz p0, :cond_0

    .line 75
    iget p0, p0, Landroidx/recyclerview/widget/ah$a;->h:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView$z;)Landroidx/recyclerview/widget/RecyclerView$f$d;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    const/4 v0, 0x4

    .line 86
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/ah;->a(Landroidx/recyclerview/widget/RecyclerView$z;I)Landroidx/recyclerview/widget/RecyclerView$f$d;

    move-result-object p0

    return-object p0
.end method

.method b()V
    .locals 0

    .line 273
    invoke-static {}, Landroidx/recyclerview/widget/ah$a;->b()V

    return-void
.end method

.method b(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$f$d;)V
    .locals 1

    .line 145
    iget-object v0, p0, Landroidx/recyclerview/widget/ah;->a:Landroidx/c/i;

    invoke-virtual {v0, p1}, Landroidx/c/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ah$a;

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Landroidx/recyclerview/widget/ah$a;->a()Landroidx/recyclerview/widget/ah$a;

    move-result-object v0

    .line 148
    iget-object p0, p0, Landroidx/recyclerview/widget/ah;->a:Landroidx/c/i;

    invoke-virtual {p0, p1, v0}, Landroidx/c/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    iget p0, v0, Landroidx/recyclerview/widget/ah$a;->h:I

    or-int/lit8 p0, p0, 0x2

    iput p0, v0, Landroidx/recyclerview/widget/ah$a;->h:I

    .line 151
    iput-object p2, v0, Landroidx/recyclerview/widget/ah$a;->i:Landroidx/recyclerview/widget/RecyclerView$f$d;

    return-void
.end method

.method c(Landroidx/recyclerview/widget/RecyclerView$z;)Landroidx/recyclerview/widget/RecyclerView$f$d;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    const/16 v0, 0x8

    .line 97
    invoke-direct {p0, p1, v0}, Landroidx/recyclerview/widget/ah;->a(Landroidx/recyclerview/widget/RecyclerView$z;I)Landroidx/recyclerview/widget/RecyclerView$f$d;

    move-result-object p0

    return-object p0
.end method

.method c(Landroidx/recyclerview/widget/RecyclerView$z;Landroidx/recyclerview/widget/RecyclerView$f$d;)V
    .locals 1

    .line 182
    iget-object v0, p0, Landroidx/recyclerview/widget/ah;->a:Landroidx/c/i;

    invoke-virtual {v0, p1}, Landroidx/c/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ah$a;

    if-nez v0, :cond_0

    .line 184
    invoke-static {}, Landroidx/recyclerview/widget/ah$a;->a()Landroidx/recyclerview/widget/ah$a;

    move-result-object v0

    .line 185
    iget-object p0, p0, Landroidx/recyclerview/widget/ah;->a:Landroidx/c/i;

    invoke-virtual {p0, p1, v0}, Landroidx/c/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_0
    iput-object p2, v0, Landroidx/recyclerview/widget/ah$a;->j:Landroidx/recyclerview/widget/RecyclerView$f$d;

    .line 188
    iget p0, v0, Landroidx/recyclerview/widget/ah$a;->h:I

    or-int/lit8 p0, p0, 0x8

    iput p0, v0, Landroidx/recyclerview/widget/ah$a;->h:I

    return-void
.end method

.method d(Landroidx/recyclerview/widget/RecyclerView$z;)Z
    .locals 0

    .line 161
    iget-object p0, p0, Landroidx/recyclerview/widget/ah;->a:Landroidx/c/i;

    invoke-virtual {p0, p1}, Landroidx/c/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/ah$a;

    if-eqz p0, :cond_0

    .line 162
    iget p0, p0, Landroidx/recyclerview/widget/ah$a;->h:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method e(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 1

    .line 198
    iget-object v0, p0, Landroidx/recyclerview/widget/ah;->a:Landroidx/c/i;

    invoke-virtual {v0, p1}, Landroidx/c/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ah$a;

    if-nez v0, :cond_0

    .line 200
    invoke-static {}, Landroidx/recyclerview/widget/ah$a;->a()Landroidx/recyclerview/widget/ah$a;

    move-result-object v0

    .line 201
    iget-object p0, p0, Landroidx/recyclerview/widget/ah;->a:Landroidx/c/i;

    invoke-virtual {p0, p1, v0}, Landroidx/c/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_0
    iget p0, v0, Landroidx/recyclerview/widget/ah$a;->h:I

    or-int/lit8 p0, p0, 0x1

    iput p0, v0, Landroidx/recyclerview/widget/ah$a;->h:I

    return-void
.end method

.method f(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    .line 211
    iget-object p0, p0, Landroidx/recyclerview/widget/ah;->a:Landroidx/c/i;

    invoke-virtual {p0, p1}, Landroidx/c/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/ah$a;

    if-nez p0, :cond_0

    return-void

    .line 215
    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/ah$a;->h:I

    and-int/lit8 p1, p1, -0x2

    iput p1, p0, Landroidx/recyclerview/widget/ah$a;->h:I

    return-void
.end method

.method g(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 2

    .line 260
    iget-object v0, p0, Landroidx/recyclerview/widget/ah;->b:Landroidx/c/f;

    invoke-virtual {v0}, Landroidx/c/f;->b()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 261
    iget-object v1, p0, Landroidx/recyclerview/widget/ah;->b:Landroidx/c/f;

    invoke-virtual {v1, v0}, Landroidx/c/f;->c(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 262
    iget-object v1, p0, Landroidx/recyclerview/widget/ah;->b:Landroidx/c/f;

    invoke-virtual {v1, v0}, Landroidx/c/f;->a(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 266
    :cond_1
    :goto_1
    iget-object p0, p0, Landroidx/recyclerview/widget/ah;->a:Landroidx/c/i;

    invoke-virtual {p0, p1}, Landroidx/c/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/ah$a;

    if-eqz p0, :cond_2

    .line 268
    invoke-static {p0}, Landroidx/recyclerview/widget/ah$a;->a(Landroidx/recyclerview/widget/ah$a;)V

    :cond_2
    return-void
.end method

.method public h(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    .line 277
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/ah;->f(Landroidx/recyclerview/widget/RecyclerView$z;)V

    return-void
.end method
