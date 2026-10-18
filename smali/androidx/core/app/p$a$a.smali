.class public final Landroidx/core/app/p$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/p$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/core/graphics/drawable/IconCompat;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Landroid/app/PendingIntent;

.field private d:Z

.field private final e:Landroid/os/Bundle;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/w;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    const-string v1, ""

    .line 3477
    invoke-static {v0, v1, p1}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v10}, Landroidx/core/app/p$a$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/w;ZIZZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/p$a;)V
    .locals 10

    .line 3493
    invoke-virtual {p1}, Landroidx/core/app/p$a;->b()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    iget-object v2, p1, Landroidx/core/app/p$a;->q:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroidx/core/app/p$a;->r:Landroid/app/PendingIntent;

    new-instance v4, Landroid/os/Bundle;

    iget-object v0, p1, Landroidx/core/app/p$a;->n:Landroid/os/Bundle;

    invoke-direct {v4, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 3495
    invoke-virtual {p1}, Landroidx/core/app/p$a;->g()[Landroidx/core/app/w;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/core/app/p$a;->f()Z

    move-result v6

    .line 3496
    invoke-virtual {p1}, Landroidx/core/app/p$a;->h()I

    move-result v7

    iget-boolean v8, p1, Landroidx/core/app/p$a;->o:Z

    .line 3497
    invoke-virtual {p1}, Landroidx/core/app/p$a;->i()Z

    move-result v9

    move-object v0, p0

    .line 3493
    invoke-direct/range {v0 .. v9}, Landroidx/core/app/p$a$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/w;ZIZZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 10
    .param p1    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 3466
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v9}, Landroidx/core/app/p$a$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/w;ZIZZ)V

    return-void
.end method

.method private constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/w;ZIZZ)V
    .locals 1
    .param p1    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 3504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3448
    iput-boolean v0, p0, Landroidx/core/app/p$a$a;->d:Z

    .line 3452
    iput-boolean v0, p0, Landroidx/core/app/p$a$a;->h:Z

    .line 3505
    iput-object p1, p0, Landroidx/core/app/p$a$a;->a:Landroidx/core/graphics/drawable/IconCompat;

    .line 3506
    invoke-static {p2}, Landroidx/core/app/p$f;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/p$a$a;->b:Ljava/lang/CharSequence;

    .line 3507
    iput-object p3, p0, Landroidx/core/app/p$a$a;->c:Landroid/app/PendingIntent;

    .line 3508
    iput-object p4, p0, Landroidx/core/app/p$a$a;->e:Landroid/os/Bundle;

    if-nez p5, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3509
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 3510
    invoke-static {p5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object p1, p0, Landroidx/core/app/p$a$a;->f:Ljava/util/ArrayList;

    .line 3511
    iput-boolean p6, p0, Landroidx/core/app/p$a$a;->d:Z

    .line 3512
    iput p7, p0, Landroidx/core/app/p$a$a;->g:I

    .line 3513
    iput-boolean p8, p0, Landroidx/core/app/p$a$a;->h:Z

    .line 3514
    iput-boolean p9, p0, Landroidx/core/app/p$a$a;->i:Z

    return-void
.end method

.method private c()V
    .locals 1

    .line 3620
    iget-boolean v0, p0, Landroidx/core/app/p$a$a;->i:Z

    if-nez v0, :cond_0

    return-void

    .line 3622
    :cond_0
    iget-object p0, p0, Landroidx/core/app/p$a$a;->c:Landroid/app/PendingIntent;

    if-eqz p0, :cond_1

    return-void

    .line 3623
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Contextual Actions must contain a valid PendingIntent"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 0

    .line 3537
    iget-object p0, p0, Landroidx/core/app/p$a$a;->e:Landroid/os/Bundle;

    return-object p0
.end method

.method public a(I)Landroidx/core/app/p$a$a;
    .locals 0

    .line 3578
    iput p1, p0, Landroidx/core/app/p$a$a;->g:I

    return-object p0
.end method

.method public a(Landroid/os/Bundle;)Landroidx/core/app/p$a$a;
    .locals 1

    if-eqz p1, :cond_0

    .line 3526
    iget-object v0, p0, Landroidx/core/app/p$a$a;->e:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-object p0
.end method

.method public a(Landroidx/core/app/p$a$b;)Landroidx/core/app/p$a$a;
    .locals 0

    .line 3611
    invoke-interface {p1, p0}, Landroidx/core/app/p$a$b;->a(Landroidx/core/app/p$a$a;)Landroidx/core/app/p$a$a;

    return-object p0
.end method

.method public a(Landroidx/core/app/w;)Landroidx/core/app/p$a$a;
    .locals 1

    .line 3548
    iget-object v0, p0, Landroidx/core/app/p$a$a;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/p$a$a;->f:Ljava/util/ArrayList;

    .line 3551
    :cond_0
    iget-object v0, p0, Landroidx/core/app/p$a$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Z)Landroidx/core/app/p$a$a;
    .locals 0

    .line 3565
    iput-boolean p1, p0, Landroidx/core/app/p$a$a;->d:Z

    return-object p0
.end method

.method public b(Z)Landroidx/core/app/p$a$a;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 3589
    iput-boolean p1, p0, Landroidx/core/app/p$a$a;->i:Z

    return-object p0
.end method

.method public b()Landroidx/core/app/p$a;
    .locals 15

    .line 3636
    invoke-direct {p0}, Landroidx/core/app/p$a$a;->c()V

    .line 3638
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3639
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3640
    iget-object v2, p0, Landroidx/core/app/p$a$a;->f:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 3641
    iget-object v2, p0, Landroidx/core/app/p$a$a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/core/app/w;

    .line 3642
    invoke-virtual {v3}, Landroidx/core/app/w;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3643
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3645
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3649
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    move-object v10, v3

    goto :goto_1

    .line 3650
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroidx/core/app/w;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/core/app/w;

    move-object v10, v0

    .line 3651
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_2
    move-object v9, v3

    goto :goto_3

    .line 3652
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/core/app/w;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroidx/core/app/w;

    goto :goto_2

    .line 3653
    :goto_3
    new-instance v0, Landroidx/core/app/p$a;

    iget-object v5, p0, Landroidx/core/app/p$a$a;->a:Landroidx/core/graphics/drawable/IconCompat;

    iget-object v6, p0, Landroidx/core/app/p$a$a;->b:Ljava/lang/CharSequence;

    iget-object v7, p0, Landroidx/core/app/p$a$a;->c:Landroid/app/PendingIntent;

    iget-object v8, p0, Landroidx/core/app/p$a$a;->e:Landroid/os/Bundle;

    iget-boolean v11, p0, Landroidx/core/app/p$a$a;->d:Z

    iget v12, p0, Landroidx/core/app/p$a$a;->g:I

    iget-boolean v13, p0, Landroidx/core/app/p$a$a;->h:Z

    iget-boolean v14, p0, Landroidx/core/app/p$a$a;->i:Z

    move-object v4, v0

    invoke-direct/range {v4 .. v14}, Landroidx/core/app/p$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/w;[Landroidx/core/app/w;ZIZZ)V

    return-object v0
.end method

.method public c(Z)Landroidx/core/app/p$a$a;
    .locals 0

    .line 3602
    iput-boolean p1, p0, Landroidx/core/app/p$a$a;->h:Z

    return-object p0
.end method
