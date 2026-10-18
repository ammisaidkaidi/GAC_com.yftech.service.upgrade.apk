.class public Lcom/yftech/service/upgrade/CarUpgradeService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/service/upgrade/CarUpgradeService$c;,
        Lcom/yftech/service/upgrade/CarUpgradeService$b;,
        Lcom/yftech/service/upgrade/CarUpgradeService$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yftech/service/upgrade/CarUpgradeService$c;

.field private final b:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/yftech/car/upgrade/ICarUpgradeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/yftech/service/upgrade/CarUpgradeService$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/yftech/service/upgrade/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/yftech/car/upgrade/CarUpgradeInfo;

.field private f:Z

.field private g:Lcom/yftech/service/upgrade/CarUpgradeService$b;

.field private h:Landroid/os/Handler;

.field private i:Lcom/yftech/service/upgrade/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UpgradeService"

    .line 60
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    new-instance v0, Lcom/yftech/service/upgrade/CarUpgradeService$c;

    invoke-direct {v0, p0}, Lcom/yftech/service/upgrade/CarUpgradeService$c;-><init>(Lcom/yftech/service/upgrade/CarUpgradeService;)V

    iput-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->a:Lcom/yftech/service/upgrade/CarUpgradeService$c;

    .line 51
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->b:Landroid/os/RemoteCallbackList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->f:Z

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->h:Landroid/os/Handler;

    .line 246
    new-instance v0, Lcom/yftech/service/upgrade/CarUpgradeService$1;

    invoke-direct {v0, p0}, Lcom/yftech/service/upgrade/CarUpgradeService$1;-><init>(Lcom/yftech/service/upgrade/CarUpgradeService;)V

    iput-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->i:Lcom/yftech/service/upgrade/b$a;

    return-void
.end method

.method private a(I)I
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->a:Lcom/yftech/service/upgrade/CarUpgradeService$c;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-boolean v1, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->f:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x3

    .line 157
    monitor-exit v0

    return p0

    .line 159
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 161
    iget-object v1, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->c:Ljava/util/ArrayList;

    monitor-enter v1

    .line 162
    :try_start_1
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/service/upgrade/CarUpgradeService$a;

    .line 163
    iget v3, v2, Lcom/yftech/service/upgrade/CarUpgradeService$a;->a:I

    if-ne v3, p1, :cond_1

    .line 164
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 168
    :cond_2
    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 159
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method static synthetic a(Lcom/yftech/service/upgrade/CarUpgradeService;I)I
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/CarUpgradeService;->a(I)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/yftech/service/upgrade/CarUpgradeService;)Lcom/yftech/car/upgrade/CarUpgradeInfo;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->e:Lcom/yftech/car/upgrade/CarUpgradeInfo;

    return-object p0
.end method

.method static synthetic a(Lcom/yftech/service/upgrade/CarUpgradeService;Lcom/yftech/car/upgrade/CarUpgradeInfo;)Lcom/yftech/car/upgrade/CarUpgradeInfo;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->e:Lcom/yftech/car/upgrade/CarUpgradeInfo;

    return-object p1
.end method

.method private a()V
    .locals 4

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->d:Ljava/util/HashMap;

    .line 83
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->d:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/yftech/service/upgrade/d/a;

    invoke-virtual {p0}, Lcom/yftech/service/upgrade/CarUpgradeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yftech/service/upgrade/d/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->d:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/yftech/service/upgrade/c/a;

    invoke-virtual {p0}, Lcom/yftech/service/upgrade/CarUpgradeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yftech/service/upgrade/c/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->d:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/yftech/service/upgrade/e/a;

    invoke-virtual {p0}, Lcom/yftech/service/upgrade/CarUpgradeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yftech/service/upgrade/e/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->d:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/yftech/service/upgrade/b/a;

    invoke-virtual {p0}, Lcom/yftech/service/upgrade/CarUpgradeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yftech/service/upgrade/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->d:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/yftech/service/upgrade/f/a;

    invoke-virtual {p0}, Lcom/yftech/service/upgrade/CarUpgradeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/yftech/service/upgrade/f/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/service/upgrade/b;

    .line 89
    iget-object v2, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->i:Lcom/yftech/service/upgrade/b$a;

    invoke-interface {v1, v2}, Lcom/yftech/service/upgrade/b;->a(Lcom/yftech/service/upgrade/b$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->b:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_0

    .line 223
    :try_start_1
    iget-object v1, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/upgrade/ICarUpgradeCallback;

    invoke-interface {v1, p1, p2}, Lcom/yftech/car/upgrade/ICarUpgradeCallback;->onUpgradeState(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 225
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    move v1, v2

    goto :goto_0

    .line 228
    :cond_0
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 229
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic a(Lcom/yftech/service/upgrade/CarUpgradeService;II)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/yftech/service/upgrade/CarUpgradeService;->a(II)V

    return-void
.end method

.method private a(I[Ljava/lang/String;)Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkUpgradeFile, do not support this module:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 105
    :cond_0
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yftech/service/upgrade/b;

    invoke-interface {p0, p2}, Lcom/yftech/service/upgrade/b;->a([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/yftech/service/upgrade/CarUpgradeService;I[Ljava/lang/String;)Z
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/yftech/service/upgrade/CarUpgradeService;->a(I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/yftech/service/upgrade/CarUpgradeService;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->f:Z

    return p1
.end method

.method private b(I[Ljava/lang/String;)I
    .locals 5

    .line 109
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->d:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "addUpgradeModule, do not this module:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    const/4 p0, 0x2

    return p0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->a:Lcom/yftech/service/upgrade/CarUpgradeService$c;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-boolean v1, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->f:Z

    if-eqz v1, :cond_1

    const-string p0, "addUpgradeModule, upgrading"

    .line 116
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    const/4 p0, 0x4

    .line 117
    monitor-exit v0

    return p0

    .line 119
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x5

    if-eqz p2, :cond_9

    .line 121
    array-length v1, p2

    if-nez v1, :cond_2

    goto/16 :goto_3

    .line 126
    :cond_2
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    aget-object v3, p2, v2

    .line 127
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const-string p0, "addUpgradeModule, path not exist"

    .line 129
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    return v0

    .line 134
    :cond_5
    iget-object v1, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->c:Ljava/util/ArrayList;

    monitor-enter v1

    .line 135
    :try_start_1
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/service/upgrade/CarUpgradeService$a;

    .line 136
    iget v2, v2, Lcom/yftech/service/upgrade/CarUpgradeService$a;->a:I

    if-ne v2, p1, :cond_6

    const-string p0, "addUpgradeModule, module has exist"

    .line 137
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    const/4 p0, 0x3

    .line 138
    monitor-exit v1

    return p0

    .line 143
    :cond_7
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/service/upgrade/CarUpgradeService$a;

    iget v0, v0, Lcom/yftech/service/upgrade/CarUpgradeService$a;->a:I

    if-ne v0, v2, :cond_8

    .line 144
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    new-instance v4, Lcom/yftech/service/upgrade/CarUpgradeService$a;

    invoke-direct {v4, p0, p1, p2}, Lcom/yftech/service/upgrade/CarUpgradeService$a;-><init>(Lcom/yftech/service/upgrade/CarUpgradeService;I[Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 147
    :cond_8
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->c:Ljava/util/ArrayList;

    new-instance v3, Lcom/yftech/service/upgrade/CarUpgradeService$a;

    invoke-direct {v3, p0, p1, p2}, Lcom/yftech/service/upgrade/CarUpgradeService$a;-><init>(Lcom/yftech/service/upgrade/CarUpgradeService;I[Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :goto_2
    monitor-exit v1

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_9
    :goto_3
    const-string p0, "addUpgradeModule, path param is empty"

    .line 122
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    return v0

    :catchall_1
    move-exception p0

    .line 119
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method static synthetic b(Lcom/yftech/service/upgrade/CarUpgradeService;I[Ljava/lang/String;)I
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/yftech/service/upgrade/CarUpgradeService;->b(I[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/yftech/service/upgrade/CarUpgradeService;)Lcom/yftech/service/upgrade/CarUpgradeService$b;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->g:Lcom/yftech/service/upgrade/CarUpgradeService$b;

    return-object p0
.end method

.method private b(II)V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->b:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-eqz v1, :cond_0

    .line 237
    :try_start_1
    iget-object v1, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/upgrade/ICarUpgradeCallback;

    invoke-interface {v1, p1, p2}, Lcom/yftech/car/upgrade/ICarUpgradeCallback;->onUpgradeProgress(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 239
    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    move v1, v2

    goto :goto_0

    .line 242
    :cond_0
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->b:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 243
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic b(Lcom/yftech/service/upgrade/CarUpgradeService;II)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/yftech/service/upgrade/CarUpgradeService;->b(II)V

    return-void
.end method

.method private b()Z
    .locals 7

    .line 174
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->a:Lcom/yftech/service/upgrade/CarUpgradeService$c;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-boolean v1, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->f:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p0, "startUpgrade, is upgrading"

    .line 176
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 177
    monitor-exit v0

    return v2

    :cond_0
    const/4 v1, 0x1

    .line 180
    iput-boolean v1, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->f:Z

    .line 181
    new-instance v3, Lcom/yftech/service/upgrade/CarUpgradeService$b;

    invoke-direct {v3, p0}, Lcom/yftech/service/upgrade/CarUpgradeService$b;-><init>(Lcom/yftech/service/upgrade/CarUpgradeService;)V

    iput-object v3, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->g:Lcom/yftech/service/upgrade/CarUpgradeService$b;

    .line 182
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 184
    iget-object v3, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->c:Ljava/util/ArrayList;

    monitor-enter v3

    .line 185
    :try_start_1
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->g:Lcom/yftech/service/upgrade/CarUpgradeService$b;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/yftech/service/upgrade/CarUpgradeService$b;->a:Ljava/util/List;

    .line 186
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yftech/service/upgrade/CarUpgradeService$a;

    .line 187
    new-instance v5, Lcom/yftech/car/upgrade/CarUpgradeInfo;

    iget v6, v4, Lcom/yftech/service/upgrade/CarUpgradeService$a;->a:I

    iget-object v4, v4, Lcom/yftech/service/upgrade/CarUpgradeService$a;->b:[Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lcom/yftech/car/upgrade/CarUpgradeInfo;-><init>(I[Ljava/lang/String;)V

    .line 188
    invoke-virtual {v5, v2}, Lcom/yftech/car/upgrade/CarUpgradeInfo;->setProgress(I)V

    const/4 v4, -0x1

    .line 189
    invoke-virtual {v5, v4}, Lcom/yftech/car/upgrade/CarUpgradeInfo;->setState(I)V

    .line 190
    iget-object v4, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->g:Lcom/yftech/service/upgrade/CarUpgradeService$b;

    iget-object v4, v4, Lcom/yftech/service/upgrade/CarUpgradeService$b;->a:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 192
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    new-instance v0, Ljava/lang/Thread;

    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->g:Lcom/yftech/service/upgrade/CarUpgradeService$b;

    const-string v2, "upgrade.thread"

    invoke-direct {v0, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return v1

    :catchall_0
    move-exception p0

    .line 192
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 182
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private c()Lcom/yftech/car/upgrade/CarUpgradeInfo;
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->f:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->e:Lcom/yftech/car/upgrade/CarUpgradeInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic c(Lcom/yftech/service/upgrade/CarUpgradeService;)Ljava/util/HashMap;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->d:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic d(Lcom/yftech/service/upgrade/CarUpgradeService;)Lcom/yftech/service/upgrade/CarUpgradeService$c;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->a:Lcom/yftech/service/upgrade/CarUpgradeService$c;

    return-object p0
.end method

.method private d()[I
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->c:Ljava/util/ArrayList;

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    .line 208
    monitor-exit v0

    return-object p0

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 211
    :goto_0
    iget-object v3, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 212
    iget-object v3, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yftech/service/upgrade/CarUpgradeService$a;

    iget v3, v3, Lcom/yftech/service/upgrade/CarUpgradeService$a;->a:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic e(Lcom/yftech/service/upgrade/CarUpgradeService;)Ljava/util/ArrayList;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic f(Lcom/yftech/service/upgrade/CarUpgradeService;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->b:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static synthetic g(Lcom/yftech/service/upgrade/CarUpgradeService;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/yftech/service/upgrade/CarUpgradeService;->b()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/yftech/service/upgrade/CarUpgradeService;)Lcom/yftech/car/upgrade/CarUpgradeInfo;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/yftech/service/upgrade/CarUpgradeService;->c()Lcom/yftech/car/upgrade/CarUpgradeInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcom/yftech/service/upgrade/CarUpgradeService;)[I
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/yftech/service/upgrade/CarUpgradeService;->d()[I

    move-result-object p0

    return-object p0
.end method

.method private native initJni()V
.end method

.method static synthetic j(Lcom/yftech/service/upgrade/CarUpgradeService;)Z
    .locals 0

    .line 48
    iget-boolean p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->f:Z

    return p0
.end method

.method static synthetic k(Lcom/yftech/service/upgrade/CarUpgradeService;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->h:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    if-eqz p3, :cond_11

    .line 737
    array-length v0, p3

    if-lez v0, :cond_11

    const-string p0, "log_debug"

    const/4 p1, 0x0

    .line 738
    aget-object v0, p3, p1

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 739
    array-length p0, p3

    const/4 v0, 0x2

    if-le p0, v0, :cond_f

    const/4 p0, 0x1

    .line 740
    aget-object v1, p3, p0

    .line 741
    aget-object p3, p3, v0

    const-string v0, "v"

    .line 742
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "open"

    .line 743
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->a(Z)V

    const-string p0, "success"

    .line 745
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string p0, "close"

    .line 746
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 747
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->a(Z)V

    const-string p0, "success"

    .line 748
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string p0, "value error"

    .line 750
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "d"

    .line 752
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "open"

    .line 753
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 754
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->b(Z)V

    const-string p0, "success"

    .line 755
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string p0, "close"

    .line 756
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 757
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->b(Z)V

    const-string p0, "success"

    .line 758
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string p0, "value error"

    .line 760
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "i"

    .line 762
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "open"

    .line 763
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 764
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->c(Z)V

    const-string p0, "success"

    .line 765
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string p0, "close"

    .line 766
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 767
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->c(Z)V

    const-string p0, "success"

    .line 768
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string p0, "value error"

    .line 770
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "file"

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "open"

    .line 773
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 774
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->d(Z)V

    const-string p0, "success"

    .line 775
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string p0, "close"

    .line 776
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 777
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->d(Z)V

    const-string p0, "success"

    .line 778
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const-string p0, "value error"

    .line 780
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    const-string v0, "save_always"

    .line 782
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "open"

    .line 783
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 784
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->e(Z)V

    const-string p0, "success"

    .line 785
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    const-string p0, "close"

    .line 786
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 787
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->e(Z)V

    const-string p0, "success"

    .line 788
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_d
    const-string p0, "value error"

    .line 790
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_e
    const-string p0, "params error"

    .line 793
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_f
    const-string p0, "dumpsys activity service CarMainService log_debug [level] [state]"

    .line 796
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    level: [v/d/i/file/save_always]"

    .line 797
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "    state: [open/close]"

    .line 798
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_10
    :goto_0
    return-void

    .line 803
    :cond_11
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "upgrade service start"

    .line 74
    invoke-static {v0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    .line 75
    invoke-direct {p0}, Lcom/yftech/service/upgrade/CarUpgradeService;->initJni()V

    .line 76
    invoke-direct {p0}, Lcom/yftech/service/upgrade/CarUpgradeService;->a()V

    .line 77
    invoke-virtual {p0}, Lcom/yftech/service/upgrade/CarUpgradeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/service/upgrade/adapter/a;->a(Landroid/content/Context;)Lcom/yftech/service/upgrade/adapter/a;

    const-string v0, "car_upgrade"

    .line 78
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService;->a:Lcom/yftech/service/upgrade/CarUpgradeService$c;

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 95
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string p0, "upgrade service stop"

    .line 96
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    return-void
.end method
