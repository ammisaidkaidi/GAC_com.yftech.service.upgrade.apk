.class public Landroidx/core/b/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/core/b/a/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/content/pm/ShortcutInfo;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/am;
        a = 0x19
    .end annotation

    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Landroidx/core/b/a/d;

    invoke-direct {v0}, Landroidx/core/b/a/d;-><init>()V

    iput-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    .line 342
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iput-object p1, v0, Landroidx/core/b/a/d;->a:Landroid/content/Context;

    .line 343
    iget-object p1, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroidx/core/b/a/d;->b:Ljava/lang/String;

    .line 344
    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getIntents()[Landroid/content/Intent;

    move-result-object p1

    .line 345
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/content/Intent;

    iput-object p1, v0, Landroidx/core/b/a/d;->c:[Landroid/content/Intent;

    .line 346
    iget-object p1, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p1, Landroidx/core/b/a/d;->d:Landroid/content/ComponentName;

    .line 347
    iget-object p1, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Landroidx/core/b/a/d;->e:Ljava/lang/CharSequence;

    .line 348
    iget-object p1, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Landroidx/core/b/a/d;->f:Ljava/lang/CharSequence;

    .line 349
    iget-object p1, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getDisabledMessage()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Landroidx/core/b/a/d;->g:Ljava/lang/CharSequence;

    .line 350
    iget-object p1, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getCategories()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p1, Landroidx/core/b/a/d;->k:Ljava/util/Set;

    .line 351
    iget-object p1, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/b/a/d;->a(Landroid/os/PersistableBundle;)[Landroidx/core/app/v;

    move-result-object v0

    iput-object v0, p1, Landroidx/core/b/a/d;->j:[Landroidx/core/app/v;

    .line 352
    iget-object p0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    invoke-virtual {p2}, Landroid/content/pm/ShortcutInfo;->getRank()I

    move-result p1

    iput p1, p0, Landroidx/core/b/a/d;->m:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v0, Landroidx/core/b/a/d;

    invoke-direct {v0}, Landroidx/core/b/a/d;-><init>()V

    iput-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    .line 306
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iput-object p1, v0, Landroidx/core/b/a/d;->a:Landroid/content/Context;

    .line 307
    iget-object p0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iput-object p2, p0, Landroidx/core/b/a/d;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/core/b/a/d;)V
    .locals 3
    .param p1    # Landroidx/core/b/a/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    new-instance v0, Landroidx/core/b/a/d;

    invoke-direct {v0}, Landroidx/core/b/a/d;-><init>()V

    iput-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    .line 316
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iget-object v1, p1, Landroidx/core/b/a/d;->a:Landroid/content/Context;

    iput-object v1, v0, Landroidx/core/b/a/d;->a:Landroid/content/Context;

    .line 317
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iget-object v1, p1, Landroidx/core/b/a/d;->b:Ljava/lang/String;

    iput-object v1, v0, Landroidx/core/b/a/d;->b:Ljava/lang/String;

    .line 318
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iget-object v1, p1, Landroidx/core/b/a/d;->c:[Landroid/content/Intent;

    iget-object v2, p1, Landroidx/core/b/a/d;->c:[Landroid/content/Intent;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/Intent;

    iput-object v1, v0, Landroidx/core/b/a/d;->c:[Landroid/content/Intent;

    .line 319
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iget-object v1, p1, Landroidx/core/b/a/d;->d:Landroid/content/ComponentName;

    iput-object v1, v0, Landroidx/core/b/a/d;->d:Landroid/content/ComponentName;

    .line 320
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iget-object v1, p1, Landroidx/core/b/a/d;->e:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/core/b/a/d;->e:Ljava/lang/CharSequence;

    .line 321
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iget-object v1, p1, Landroidx/core/b/a/d;->f:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/core/b/a/d;->f:Ljava/lang/CharSequence;

    .line 322
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iget-object v1, p1, Landroidx/core/b/a/d;->g:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/core/b/a/d;->g:Ljava/lang/CharSequence;

    .line 323
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iget-object v1, p1, Landroidx/core/b/a/d;->h:Landroidx/core/graphics/drawable/IconCompat;

    iput-object v1, v0, Landroidx/core/b/a/d;->h:Landroidx/core/graphics/drawable/IconCompat;

    .line 324
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iget-boolean v1, p1, Landroidx/core/b/a/d;->i:Z

    iput-boolean v1, v0, Landroidx/core/b/a/d;->i:Z

    .line 325
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iget-boolean v1, p1, Landroidx/core/b/a/d;->l:Z

    iput-boolean v1, v0, Landroidx/core/b/a/d;->l:Z

    .line 326
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iget v1, p1, Landroidx/core/b/a/d;->m:I

    iput v1, v0, Landroidx/core/b/a/d;->m:I

    .line 327
    iget-object v0, p1, Landroidx/core/b/a/d;->j:[Landroidx/core/app/v;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iget-object v1, p1, Landroidx/core/b/a/d;->j:[Landroidx/core/app/v;

    iget-object v2, p1, Landroidx/core/b/a/d;->j:[Landroidx/core/app/v;

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/core/app/v;

    iput-object v1, v0, Landroidx/core/b/a/d;->j:[Landroidx/core/app/v;

    .line 330
    :cond_0
    iget-object v0, p1, Landroidx/core/b/a/d;->k:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 331
    iget-object p0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    new-instance v0, Ljava/util/HashSet;

    iget-object p1, p1, Landroidx/core/b/a/d;->k:Ljava/util/Set;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroidx/core/b/a/d;->k:Ljava/util/Set;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()Landroidx/core/b/a/d$a;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 458
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/core/b/a/d;->i:Z

    return-object p0
.end method

.method public a(I)Landroidx/core/b/a/d$a;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 525
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iput p1, v0, Landroidx/core/b/a/d;->m:I

    return-object p0
.end method

.method public a(Landroid/content/ComponentName;)Landroidx/core/b/a/d$a;
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 440
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iput-object p1, v0, Landroidx/core/b/a/d;->d:Landroid/content/ComponentName;

    return-object p0
.end method

.method public a(Landroid/content/Intent;)Landroidx/core/b/a/d$a;
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x1

    .line 407
    new-array v0, v0, [Landroid/content/Intent;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroidx/core/b/a/d$a;->a([Landroid/content/Intent;)Landroidx/core/b/a/d$a;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroidx/core/app/v;)Landroidx/core/b/a/d$a;
    .locals 2
    .param p1    # Landroidx/core/app/v;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x1

    .line 472
    new-array v0, v0, [Landroidx/core/app/v;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroidx/core/b/a/d$a;->a([Landroidx/core/app/v;)Landroidx/core/b/a/d$a;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/b/a/d$a;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 427
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iput-object p1, v0, Landroidx/core/b/a/d;->h:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroidx/core/b/a/d$a;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 366
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iput-object p1, v0, Landroidx/core/b/a/d;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/util/Set;)Landroidx/core/b/a/d$a;
    .locals 1
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/core/b/a/d$a;"
        }
    .end annotation

    .line 492
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iput-object p1, v0, Landroidx/core/b/a/d;->k:Ljava/util/Set;

    return-object p0
.end method

.method public a(Z)Landroidx/core/b/a/d$a;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 513
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iput-boolean p1, v0, Landroidx/core/b/a/d;->l:Z

    return-object p0
.end method

.method public a([Landroid/content/Intent;)Landroidx/core/b/a/d$a;
    .locals 1
    .param p1    # [Landroid/content/Intent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 418
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iput-object p1, v0, Landroidx/core/b/a/d;->c:[Landroid/content/Intent;

    return-object p0
.end method

.method public a([Landroidx/core/app/v;)Landroidx/core/b/a/d$a;
    .locals 1
    .param p1    # [Landroidx/core/app/v;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 480
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iput-object p1, v0, Landroidx/core/b/a/d;->j:[Landroidx/core/app/v;

    return-object p0
.end method

.method public b()Landroidx/core/b/a/d$a;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 502
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/core/b/a/d;->l:Z

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroidx/core/b/a/d$a;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 380
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iput-object p1, v0, Landroidx/core/b/a/d;->f:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroidx/core/b/a/d$a;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 392
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iput-object p1, v0, Landroidx/core/b/a/d;->g:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c()Landroidx/core/b/a/d;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 535
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iget-object v0, v0, Landroidx/core/b/a/d;->e:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 538
    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iget-object v0, v0, Landroidx/core/b/a/d;->c:[Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    iget-object v0, v0, Landroidx/core/b/a/d;->c:[Landroid/content/Intent;

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 541
    iget-object p0, p0, Landroidx/core/b/a/d$a;->a:Landroidx/core/b/a/d;

    return-object p0

    .line 539
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Shortcut must have an intent"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 536
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Shortcut must have a non-empty label"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
