.class public abstract Landroidx/core/app/m;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/m$a;,
        Landroidx/core/app/m$d;,
        Landroidx/core/app/m$e;,
        Landroidx/core/app/m$g;,
        Landroidx/core/app/m$f;,
        Landroidx/core/app/m$c;,
        Landroidx/core/app/m$b;,
        Landroidx/core/app/m$h;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "JobIntentService"

.field static final b:Z = false

.field static final j:Ljava/lang/Object;

.field static final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Landroidx/core/app/m$h;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field c:Landroidx/core/app/m$b;

.field d:Landroidx/core/app/m$h;

.field e:Landroidx/core/app/m$a;

.field f:Z

.field g:Z

.field h:Z

.field final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/m$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 105
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/app/m;->j:Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/core/app/m;->k:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 416
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Landroidx/core/app/m;->f:Z

    .line 100
    iput-boolean v0, p0, Landroidx/core/app/m;->g:Z

    .line 101
    iput-boolean v0, p0, Landroidx/core/app/m;->h:Z

    .line 417
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 418
    iput-object v0, p0, Landroidx/core/app/m;->i:Ljava/util/ArrayList;

    goto :goto_0

    .line 420
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/m;->i:Ljava/util/ArrayList;

    :goto_0
    return-void
.end method

.method static a(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/m$h;
    .locals 2

    .line 529
    sget-object v0, Landroidx/core/app/m;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/core/app/m$h;

    if-nez v0, :cond_2

    .line 531
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 535
    new-instance p2, Landroidx/core/app/m$g;

    invoke-direct {p2, p0, p1, p3}, Landroidx/core/app/m$g;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 533
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t be here without a job id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 537
    :cond_1
    new-instance p2, Landroidx/core/app/m$c;

    invoke-direct {p2, p0, p1}, Landroidx/core/app/m$c;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V

    :goto_0
    move-object v0, p2

    .line 539
    sget-object p0, Landroidx/core/app/m;->k:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    if-eqz p3, :cond_0

    .line 520
    sget-object v0, Landroidx/core/app/m;->j:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 521
    :try_start_0
    invoke-static {p0, p1, v1, p2}, Landroidx/core/app/m;->a(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/m$h;

    move-result-object p0

    .line 522
    invoke-virtual {p0, p2}, Landroidx/core/app/m$h;->a(I)V

    .line 523
    invoke-virtual {p0, p3}, Landroidx/core/app/m$h;->a(Landroid/content/Intent;)V

    .line 524
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 518
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "work must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;I",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 501
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0, v0, p2, p3}, Landroidx/core/app/m;->a(Landroid/content/Context;Landroid/content/ComponentName;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Intent;)V
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
.end method

.method public a(Z)V
    .locals 0

    .line 572
    iput-boolean p1, p0, Landroidx/core/app/m;->f:Z

    return-void
.end method

.method public a()Z
    .locals 0

    .line 580
    iget-boolean p0, p0, Landroidx/core/app/m;->g:Z

    return p0
.end method

.method b(Z)V
    .locals 1

    .line 607
    iget-object v0, p0, Landroidx/core/app/m;->e:Landroidx/core/app/m$a;

    if-nez v0, :cond_1

    .line 608
    new-instance v0, Landroidx/core/app/m$a;

    invoke-direct {v0, p0}, Landroidx/core/app/m$a;-><init>(Landroidx/core/app/m;)V

    iput-object v0, p0, Landroidx/core/app/m;->e:Landroidx/core/app/m$a;

    .line 609
    iget-object v0, p0, Landroidx/core/app/m;->d:Landroidx/core/app/m$h;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 610
    iget-object p1, p0, Landroidx/core/app/m;->d:Landroidx/core/app/m$h;

    invoke-virtual {p1}, Landroidx/core/app/m$h;->b()V

    .line 613
    :cond_0
    iget-object p0, p0, Landroidx/core/app/m;->e:Landroidx/core/app/m$a;

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Landroidx/core/app/m$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method c()Z
    .locals 2

    .line 599
    iget-object v0, p0, Landroidx/core/app/m;->e:Landroidx/core/app/m$a;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Landroidx/core/app/m;->e:Landroidx/core/app/m$a;

    iget-boolean v1, p0, Landroidx/core/app/m;->f:Z

    invoke-virtual {v0, v1}, Landroidx/core/app/m$a;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x1

    .line 602
    iput-boolean v0, p0, Landroidx/core/app/m;->g:Z

    .line 603
    invoke-virtual {p0}, Landroidx/core/app/m;->b()Z

    move-result p0

    return p0
.end method

.method d()V
    .locals 2

    .line 618
    iget-object v0, p0, Landroidx/core/app/m;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 619
    iget-object v0, p0, Landroidx/core/app/m;->i:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 620
    :try_start_0
    iput-object v1, p0, Landroidx/core/app/m;->e:Landroidx/core/app/m$a;

    .line 629
    iget-object v1, p0, Landroidx/core/app/m;->i:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/core/app/m;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 630
    invoke-virtual {p0, v1}, Landroidx/core/app/m;->b(Z)V

    goto :goto_0

    .line 631
    :cond_0
    iget-boolean v1, p0, Landroidx/core/app/m;->h:Z

    if-nez v1, :cond_1

    .line 632
    iget-object p0, p0, Landroidx/core/app/m;->d:Landroidx/core/app/m$h;

    invoke-virtual {p0}, Landroidx/core/app/m$h;->c()V

    .line 634
    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method e()Landroidx/core/app/m$e;
    .locals 2

    .line 639
    iget-object v0, p0, Landroidx/core/app/m;->c:Landroidx/core/app/m$b;

    if-eqz v0, :cond_0

    .line 640
    iget-object p0, p0, Landroidx/core/app/m;->c:Landroidx/core/app/m$b;

    invoke-interface {p0}, Landroidx/core/app/m$b;->b()Landroidx/core/app/m$e;

    move-result-object p0

    return-object p0

    .line 642
    :cond_0
    iget-object v0, p0, Landroidx/core/app/m;->i:Ljava/util/ArrayList;

    monitor-enter v0

    .line 643
    :try_start_0
    iget-object v1, p0, Landroidx/core/app/m;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 644
    iget-object p0, p0, Landroidx/core/app/m;->i:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/app/m$e;

    monitor-exit v0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    .line 646
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 648
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 465
    iget-object p1, p0, Landroidx/core/app/m;->c:Landroidx/core/app/m$b;

    if-eqz p1, :cond_0

    .line 466
    iget-object p0, p0, Landroidx/core/app/m;->c:Landroidx/core/app/m$b;

    invoke-interface {p0}, Landroidx/core/app/m$b;->a()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 3

    .line 426
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 428
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 429
    new-instance v0, Landroidx/core/app/m$f;

    invoke-direct {v0, p0}, Landroidx/core/app/m$f;-><init>(Landroidx/core/app/m;)V

    iput-object v0, p0, Landroidx/core/app/m;->c:Landroidx/core/app/m$b;

    .line 430
    iput-object v1, p0, Landroidx/core/app/m;->d:Landroidx/core/app/m$h;

    goto :goto_0

    .line 432
    :cond_0
    iput-object v1, p0, Landroidx/core/app/m;->c:Landroidx/core/app/m$b;

    .line 433
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    .line 434
    invoke-static {p0, v0, v1, v1}, Landroidx/core/app/m;->a(Landroid/content/Context;Landroid/content/ComponentName;ZI)Landroidx/core/app/m$h;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/m;->d:Landroidx/core/app/m$h;

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 476
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 477
    iget-object v0, p0, Landroidx/core/app/m;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Landroidx/core/app/m;->i:Ljava/util/ArrayList;

    monitor-enter v0

    const/4 v1, 0x1

    .line 479
    :try_start_0
    iput-boolean v1, p0, Landroidx/core/app/m;->h:Z

    .line 480
    iget-object p0, p0, Landroidx/core/app/m;->d:Landroidx/core/app/m$h;

    invoke-virtual {p0}, Landroidx/core/app/m$h;->c()V

    .line 481
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 444
    iget-object p2, p0, Landroidx/core/app/m;->i:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 445
    iget-object p2, p0, Landroidx/core/app/m;->d:Landroidx/core/app/m$h;

    invoke-virtual {p2}, Landroidx/core/app/m$h;->a()V

    .line 447
    iget-object p2, p0, Landroidx/core/app/m;->i:Ljava/util/ArrayList;

    monitor-enter p2

    .line 448
    :try_start_0
    iget-object v0, p0, Landroidx/core/app/m;->i:Ljava/util/ArrayList;

    new-instance v1, Landroidx/core/app/m$d;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :goto_0
    invoke-direct {v1, p0, p1, p3}, Landroidx/core/app/m$d;-><init>(Landroidx/core/app/m;Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 450
    invoke-virtual {p0, p1}, Landroidx/core/app/m;->b(Z)V

    .line 451
    monitor-exit p2

    const/4 p0, 0x3

    return p0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method
