.class Lcom/yftech/service/upgrade/CarUpgradeService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/service/upgrade/CarUpgradeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yftech/car/upgrade/CarUpgradeInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/yftech/service/upgrade/CarUpgradeService;


# direct methods
.method constructor <init>(Lcom/yftech/service/upgrade/CarUpgradeService;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/yftech/service/upgrade/CarUpgradeService$b;->b:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "UpgradeRunnable, start upgrade"

    .line 292
    invoke-static {v0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/yftech/service/upgrade/jni/McuCommJni;->notifyMcuUpgradeStart()V

    .line 294
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/upgrade/CarUpgradeInfo;

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UpgradeRunnable, start module("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/yftech/car/upgrade/CarUpgradeInfo;->getModule()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") upgrade"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    .line 296
    iget-object v3, p0, Lcom/yftech/service/upgrade/CarUpgradeService$b;->b:Lcom/yftech/service/upgrade/CarUpgradeService;

    new-instance v4, Lcom/yftech/car/upgrade/CarUpgradeInfo;

    invoke-virtual {v1}, Lcom/yftech/car/upgrade/CarUpgradeInfo;->getModule()I

    move-result v5

    invoke-virtual {v1}, Lcom/yftech/car/upgrade/CarUpgradeInfo;->getPath()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/yftech/car/upgrade/CarUpgradeInfo;-><init>(I[Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/yftech/service/upgrade/CarUpgradeService;->a(Lcom/yftech/service/upgrade/CarUpgradeService;Lcom/yftech/car/upgrade/CarUpgradeInfo;)Lcom/yftech/car/upgrade/CarUpgradeInfo;

    .line 297
    iget-object v3, p0, Lcom/yftech/service/upgrade/CarUpgradeService$b;->b:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v3}, Lcom/yftech/service/upgrade/CarUpgradeService;->a(Lcom/yftech/service/upgrade/CarUpgradeService;)Lcom/yftech/car/upgrade/CarUpgradeInfo;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/yftech/car/upgrade/CarUpgradeInfo;->setProgress(I)V

    .line 298
    iget-object v2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$b;->b:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v2}, Lcom/yftech/service/upgrade/CarUpgradeService;->c(Lcom/yftech/service/upgrade/CarUpgradeService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yftech/car/upgrade/CarUpgradeInfo;->getModule()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/service/upgrade/b;

    invoke-virtual {v1}, Lcom/yftech/car/upgrade/CarUpgradeInfo;->getPath()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/yftech/service/upgrade/b;->b([Ljava/lang/String;)Z

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$b;->b:Lcom/yftech/service/upgrade/CarUpgradeService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yftech/service/upgrade/CarUpgradeService;->a(Lcom/yftech/service/upgrade/CarUpgradeService;Lcom/yftech/car/upgrade/CarUpgradeInfo;)Lcom/yftech/car/upgrade/CarUpgradeInfo;

    .line 302
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$b;->b:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v0}, Lcom/yftech/service/upgrade/CarUpgradeService;->d(Lcom/yftech/service/upgrade/CarUpgradeService;)Lcom/yftech/service/upgrade/CarUpgradeService$c;

    move-result-object v0

    monitor-enter v0

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/yftech/service/upgrade/CarUpgradeService$b;->b:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v1, v2}, Lcom/yftech/service/upgrade/CarUpgradeService;->a(Lcom/yftech/service/upgrade/CarUpgradeService;Z)Z

    .line 304
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 305
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$b;->b:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v0}, Lcom/yftech/service/upgrade/CarUpgradeService;->e(Lcom/yftech/service/upgrade/CarUpgradeService;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 306
    :try_start_1
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$b;->b:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {p0}, Lcom/yftech/service/upgrade/CarUpgradeService;->e(Lcom/yftech/service/upgrade/CarUpgradeService;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 307
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    invoke-static {}, Lcom/yftech/service/upgrade/jni/McuCommJni;->notifyMcuUpgradeEnd()V

    return-void

    :catchall_0
    move-exception p0

    .line 307
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 304
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
