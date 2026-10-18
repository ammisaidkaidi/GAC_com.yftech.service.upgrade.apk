.class public Landroidx/d/c/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/d/c/b/d$a;
    }
.end annotation


# static fields
.field private static final g:Z = false

.field private static final k:I = -0x1


# instance fields
.field public final a:Landroidx/d/c/b/e;

.field public final b:Landroidx/d/c/b/d$a;

.field public c:Landroidx/d/c/b/d;

.field public d:I

.field e:I

.field f:Landroidx/d/c/i;

.field private h:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/d/c/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Landroidx/d/c/b/e;Landroidx/d/c/b/d$a;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Landroidx/d/c/b/d;->d:I

    const/4 v0, -0x1

    .line 99
    iput v0, p0, Landroidx/d/c/b/d;->e:I

    .line 132
    iput-object p1, p0, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    .line 133
    iput-object p2, p0, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    return-void
.end method

.method private a(Landroidx/d/c/b/e;Ljava/util/HashSet;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/d/c/b/e;",
            "Ljava/util/HashSet<",
            "Landroidx/d/c/b/e;",
            ">;)Z"
        }
    .end annotation

    .line 464
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 467
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-virtual {p0}, Landroidx/d/c/b/d;->h()Landroidx/d/c/b/e;

    move-result-object v0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    return v2

    .line 472
    :cond_1
    invoke-virtual {p1}, Landroidx/d/c/b/e;->ab()Ljava/util/ArrayList;

    move-result-object p1

    .line 473
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    .line 474
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/d/c/b/d;

    .line 475
    invoke-virtual {v4, p0}, Landroidx/d/c/b/d;->b(Landroidx/d/c/b/d;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroidx/d/c/b/d;->m()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 476
    invoke-virtual {v4}, Landroidx/d/c/b/d;->k()Landroidx/d/c/b/d;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/d/c/b/d;->h()Landroidx/d/c/b/e;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/e;Ljava/util/HashSet;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method


# virtual methods
.method public a()Ljava/util/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Landroidx/d/c/b/d;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object p0, p0, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 70
    iput p1, p0, Landroidx/d/c/b/d;->i:I

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Landroidx/d/c/b/d;->j:Z

    return-void
.end method

.method public a(ILjava/util/ArrayList;Landroidx/d/c/b/a/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Landroidx/d/c/b/a/o;",
            ">;",
            "Landroidx/d/c/b/a/o;",
            ")V"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 42
    iget-object p0, p0, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/c/b/d;

    .line 43
    iget-object v0, v0, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    invoke-static {v0, p1, p2, p3}, Landroidx/d/c/b/a/i;->a(Landroidx/d/c/b/e;ILjava/util/ArrayList;Landroidx/d/c/b/a/o;)Landroidx/d/c/b/a/o;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroidx/d/c/b/d;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/d/c/b/d;",
            "Ljava/util/HashMap<",
            "Landroidx/d/c/b/e;",
            "Landroidx/d/c/b/e;",
            ">;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v0, v0, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v0, v0, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    iget-object v0, p1, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p1, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    invoke-virtual {v0}, Landroidx/d/c/b/d;->i()Landroidx/d/c/b/d$a;

    move-result-object v0

    .line 111
    iget-object v1, p1, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v1, v1, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/d/c/b/e;

    .line 112
    invoke-virtual {p2, v0}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d$a;)Landroidx/d/c/b/d;

    move-result-object p2

    iput-object p2, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 114
    iput-object p2, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    .line 116
    :goto_0
    iget-object p2, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz p2, :cond_3

    .line 117
    iget-object p2, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object p2, p2, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    if-nez p2, :cond_2

    .line 118
    iget-object p2, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p2, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    .line 120
    :cond_2
    iget-object p2, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object p2, p2, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    invoke-virtual {p2, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_3
    iget p2, p1, Landroidx/d/c/b/d;->d:I

    iput p2, p0, Landroidx/d/c/b/d;->d:I

    .line 123
    iget p1, p1, Landroidx/d/c/b/d;->e:I

    iput p1, p0, Landroidx/d/c/b/d;->e:I

    return-void
.end method

.method public a(Landroidx/d/c/c;)V
    .locals 2

    .line 146
    iget-object p1, p0, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    if-nez p1, :cond_0

    .line 147
    new-instance p1, Landroidx/d/c/i;

    sget-object v0, Landroidx/d/c/i$a;->a:Landroidx/d/c/i$a;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/d/c/i;-><init>(Landroidx/d/c/i$a;Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    goto :goto_0

    .line 149
    :cond_0
    iget-object p0, p0, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    invoke-virtual {p0}, Landroidx/d/c/i;->d()V

    :goto_0
    return-void
.end method

.method public a(Landroidx/d/c/b/d;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 266
    :cond_0
    invoke-virtual {p1}, Landroidx/d/c/b/d;->i()Landroidx/d/c/b/d$a;

    move-result-object v1

    .line 267
    iget-object v2, p0, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    .line 268
    iget-object v1, p0, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    sget-object v2, Landroidx/d/c/b/d$a;->f:Landroidx/d/c/b/d$a;

    if-ne v1, v2, :cond_2

    .line 269
    invoke-virtual {p1}, Landroidx/d/c/b/d;->h()Landroidx/d/c/b/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/d/c/b/e;->Y()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/d/c/b/d;->h()Landroidx/d/c/b/e;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/d/c/b/e;->Y()Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    return v0

    :cond_2
    return v3

    .line 274
    :cond_3
    sget-object v2, Landroidx/d/c/b/d$1;->a:[I

    iget-object v4, p0, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    invoke-virtual {v4}, Landroidx/d/c/b/d$a;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 302
    new-instance p1, Ljava/lang/AssertionError;

    iget-object p0, p0, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    invoke-virtual {p0}, Landroidx/d/c/b/d$a;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    return v0

    .line 290
    :pswitch_1
    sget-object p0, Landroidx/d/c/b/d$a;->c:Landroidx/d/c/b/d$a;

    if-eq v1, p0, :cond_5

    sget-object p0, Landroidx/d/c/b/d$a;->e:Landroidx/d/c/b/d$a;

    if-ne v1, p0, :cond_4

    goto :goto_0

    :cond_4
    move p0, v0

    goto :goto_1

    :cond_5
    :goto_0
    move p0, v3

    .line 291
    :goto_1
    invoke-virtual {p1}, Landroidx/d/c/b/d;->h()Landroidx/d/c/b/e;

    move-result-object p1

    instance-of p1, p1, Landroidx/d/c/b/h;

    if-eqz p1, :cond_8

    if-nez p0, :cond_7

    .line 292
    sget-object p0, Landroidx/d/c/b/d$a;->i:Landroidx/d/c/b/d$a;

    if-ne v1, p0, :cond_6

    goto :goto_2

    :cond_6
    move p0, v0

    goto :goto_3

    :cond_7
    :goto_2
    move p0, v3

    :cond_8
    :goto_3
    return p0

    .line 282
    :pswitch_2
    sget-object p0, Landroidx/d/c/b/d$a;->b:Landroidx/d/c/b/d$a;

    if-eq v1, p0, :cond_a

    sget-object p0, Landroidx/d/c/b/d$a;->d:Landroidx/d/c/b/d$a;

    if-ne v1, p0, :cond_9

    goto :goto_4

    :cond_9
    move p0, v0

    goto :goto_5

    :cond_a
    :goto_4
    move p0, v3

    .line 283
    :goto_5
    invoke-virtual {p1}, Landroidx/d/c/b/d;->h()Landroidx/d/c/b/e;

    move-result-object p1

    instance-of p1, p1, Landroidx/d/c/b/h;

    if-eqz p1, :cond_d

    if-nez p0, :cond_c

    .line 284
    sget-object p0, Landroidx/d/c/b/d$a;->h:Landroidx/d/c/b/d$a;

    if-ne v1, p0, :cond_b

    goto :goto_6

    :cond_b
    move p0, v0

    goto :goto_7

    :cond_c
    :goto_6
    move p0, v3

    :cond_d
    :goto_7
    return p0

    .line 277
    :pswitch_3
    sget-object p0, Landroidx/d/c/b/d$a;->f:Landroidx/d/c/b/d$a;

    if-eq v1, p0, :cond_e

    sget-object p0, Landroidx/d/c/b/d$a;->h:Landroidx/d/c/b/d$a;

    if-eq v1, p0, :cond_e

    sget-object p0, Landroidx/d/c/b/d$a;->i:Landroidx/d/c/b/d$a;

    if-eq v1, p0, :cond_e

    move v0, v3

    :cond_e
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroidx/d/c/b/d;I)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 246
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;IIZ)Z

    move-result p0

    return p0
.end method

.method public a(Landroidx/d/c/b/d;IIZ)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 216
    invoke-virtual {p0}, Landroidx/d/c/b/d;->l()V

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p4, :cond_1

    .line 219
    invoke-virtual {p0, p1}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/d;)Z

    move-result p4

    if-nez p4, :cond_1

    return v1

    .line 222
    :cond_1
    iput-object p1, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    .line 223
    iget-object p1, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object p1, p1, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    if-nez p1, :cond_2

    .line 224
    iget-object p1, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iput-object p4, p1, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    .line 226
    :cond_2
    iget-object p1, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object p1, p1, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    if-eqz p1, :cond_3

    .line 227
    iget-object p1, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object p1, p1, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    invoke-virtual {p1, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    if-lez p2, :cond_4

    .line 230
    iput p2, p0, Landroidx/d/c/b/d;->d:I

    goto :goto_0

    .line 232
    :cond_4
    iput v1, p0, Landroidx/d/c/b/d;->d:I

    .line 234
    :goto_0
    iput p3, p0, Landroidx/d/c/b/d;->e:I

    return v0
.end method

.method public a(Landroidx/d/c/b/e;)Z
    .locals 2

    .line 442
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 443
    invoke-direct {p0, p1, v0}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/e;Ljava/util/HashSet;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 446
    :cond_0
    invoke-virtual {p0}, Landroidx/d/c/b/d;->h()Landroidx/d/c/b/e;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/d/c/b/e;->A()Landroidx/d/c/b/e;

    move-result-object p0

    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 450
    :cond_1
    invoke-virtual {p1}, Landroidx/d/c/b/e;->A()Landroidx/d/c/b/e;

    move-result-object p1

    if-ne p1, p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public a(Landroidx/d/c/b/e;Landroidx/d/c/b/d;)Z
    .locals 0

    .line 429
    invoke-virtual {p0, p1}, Landroidx/d/c/b/d;->a(Landroidx/d/c/b/e;)Z

    move-result p0

    return p0
.end method

.method public b(I)V
    .locals 1

    .line 365
    invoke-virtual {p0}, Landroidx/d/c/b/d;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iput p1, p0, Landroidx/d/c/b/d;->d:I

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .line 50
    iget-object v0, p0, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 53
    :cond_0
    iget-object p0, p0, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public b(Landroidx/d/c/b/d;)Z
    .locals 3

    .line 335
    invoke-virtual {p1}, Landroidx/d/c/b/d;->i()Landroidx/d/c/b/d$a;

    move-result-object p1

    .line 336
    iget-object v0, p0, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 339
    :cond_0
    sget-object v0, Landroidx/d/c/b/d$1;->a:[I

    iget-object v2, p0, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    invoke-virtual {v2}, Landroidx/d/c/b/d$a;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 357
    new-instance p1, Ljava/lang/AssertionError;

    iget-object p0, p0, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    invoke-virtual {p0}, Landroidx/d/c/b/d$a;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    return v2

    .line 352
    :pswitch_1
    sget-object p0, Landroidx/d/c/b/d$a;->c:Landroidx/d/c/b/d$a;

    if-eq p1, p0, :cond_2

    sget-object p0, Landroidx/d/c/b/d$a;->e:Landroidx/d/c/b/d$a;

    if-eq p1, p0, :cond_2

    sget-object p0, Landroidx/d/c/b/d$a;->i:Landroidx/d/c/b/d$a;

    if-eq p1, p0, :cond_2

    sget-object p0, Landroidx/d/c/b/d$a;->f:Landroidx/d/c/b/d$a;

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    .line 346
    :pswitch_2
    sget-object p0, Landroidx/d/c/b/d$a;->b:Landroidx/d/c/b/d$a;

    if-eq p1, p0, :cond_4

    sget-object p0, Landroidx/d/c/b/d$a;->d:Landroidx/d/c/b/d$a;

    if-eq p1, p0, :cond_4

    sget-object p0, Landroidx/d/c/b/d$a;->h:Landroidx/d/c/b/d$a;

    if-ne p1, p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1

    .line 341
    :pswitch_3
    sget-object p0, Landroidx/d/c/b/d$a;->f:Landroidx/d/c/b/d$a;

    if-eq p1, p0, :cond_5

    goto :goto_2

    :cond_5
    move v1, v2

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(I)V
    .locals 1

    .line 375
    invoke-virtual {p0}, Landroidx/d/c/b/d;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iput p1, p0, Landroidx/d/c/b/d;->e:I

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    .line 57
    iget-object v0, p0, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 60
    :cond_0
    iget-object p0, p0, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/c/b/d;

    .line 61
    invoke-virtual {v0}, Landroidx/d/c/b/d;->p()Landroidx/d/c/b/d;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroidx/d/c/b/d;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public d()I
    .locals 1

    .line 75
    iget-boolean v0, p0, Landroidx/d/c/b/d;->j:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 78
    :cond_0
    iget p0, p0, Landroidx/d/c/b/d;->i:I

    return p0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Landroidx/d/c/b/d;->j:Z

    .line 83
    iput v0, p0, Landroidx/d/c/b/d;->i:I

    return-void
.end method

.method public f()Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Landroidx/d/c/b/d;->j:Z

    return p0
.end method

.method public g()Landroidx/d/c/i;
    .locals 0

    .line 140
    iget-object p0, p0, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    return-object p0
.end method

.method public h()Landroidx/d/c/b/e;
    .locals 0

    .line 157
    iget-object p0, p0, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    return-object p0
.end method

.method public i()Landroidx/d/c/b/d$a;
    .locals 0

    .line 163
    iget-object p0, p0, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    return-object p0
.end method

.method public j()I
    .locals 3

    .line 170
    iget-object v0, p0, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->E()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 173
    :cond_0
    iget v0, p0, Landroidx/d/c/b/d;->e:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget-object v0, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v0, v0, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    .line 174
    invoke-virtual {v0}, Landroidx/d/c/b/e;->E()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 175
    iget p0, p0, Landroidx/d/c/b/d;->e:I

    return p0

    .line 177
    :cond_1
    iget p0, p0, Landroidx/d/c/b/d;->d:I

    return p0
.end method

.method public k()Landroidx/d/c/b/d;
    .locals 0

    .line 184
    iget-object p0, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    return-object p0
.end method

.method public l()V
    .locals 2

    .line 190
    iget-object v0, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v0, v0, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v0, v0, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v0, v0, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iput-object v1, v0, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    .line 196
    :cond_0
    iput-object v1, p0, Landroidx/d/c/b/d;->h:Ljava/util/HashSet;

    .line 197
    iput-object v1, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    const/4 v0, 0x0

    .line 198
    iput v0, p0, Landroidx/d/c/b/d;->d:I

    const/4 v1, -0x1

    .line 199
    iput v1, p0, Landroidx/d/c/b/d;->e:I

    .line 200
    iput-boolean v0, p0, Landroidx/d/c/b/d;->j:Z

    .line 201
    iput v0, p0, Landroidx/d/c/b/d;->i:I

    return-void
.end method

.method public m()Z
    .locals 0

    .line 254
    iget-object p0, p0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public n()Z
    .locals 2

    .line 311
    sget-object v0, Landroidx/d/c/b/d$1;->a:[I

    iget-object v1, p0, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    invoke-virtual {v1}, Landroidx/d/c/b/d$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 324
    new-instance v0, Ljava/lang/AssertionError;

    iget-object p0, p0, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    invoke-virtual {p0}, Landroidx/d/c/b/d$a;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public o()Z
    .locals 2

    .line 386
    sget-object v0, Landroidx/d/c/b/d$1;->a:[I

    iget-object v1, p0, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    invoke-virtual {v1}, Landroidx/d/c/b/d$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 399
    new-instance v0, Ljava/lang/AssertionError;

    iget-object p0, p0, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    invoke-virtual {p0}, Landroidx/d/c/b/d$a;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final p()Landroidx/d/c/b/d;
    .locals 2

    .line 489
    sget-object v0, Landroidx/d/c/b/d$1;->a:[I

    iget-object v1, p0, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    invoke-virtual {v1}, Landroidx/d/c/b/d$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 509
    new-instance v0, Ljava/lang/AssertionError;

    iget-object p0, p0, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    invoke-virtual {p0}, Landroidx/d/c/b/d$a;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 500
    :pswitch_0
    iget-object p0, p0, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    iget-object p0, p0, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    return-object p0

    .line 497
    :pswitch_1
    iget-object p0, p0, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    iget-object p0, p0, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    return-object p0

    .line 494
    :pswitch_2
    iget-object p0, p0, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    iget-object p0, p0, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    return-object p0

    .line 491
    :pswitch_3
    iget-object p0, p0, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    iget-object p0, p0, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    return-object p0

    :pswitch_4
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    invoke-virtual {v1}, Landroidx/d/c/b/e;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/d/c/b/d;->b:Landroidx/d/c/b/d$a;

    invoke-virtual {p0}, Landroidx/d/c/b/d$a;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
