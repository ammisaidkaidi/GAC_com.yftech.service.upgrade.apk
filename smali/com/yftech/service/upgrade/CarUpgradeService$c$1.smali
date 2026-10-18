.class Lcom/yftech/service/upgrade/CarUpgradeService$c$1;
.super Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/service/upgrade/CarUpgradeService$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yftech/service/upgrade/CarUpgradeService$c;


# direct methods
.method constructor <init>(Lcom/yftech/service/upgrade/CarUpgradeService$c;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService$c;

    invoke-direct {p0}, Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpgradeState(II)V
    .locals 4

    .line 476
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService$c;

    invoke-static {v0}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a(Lcom/yftech/service/upgrade/CarUpgradeService$c;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-ne p2, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_6

    goto :goto_1

    :pswitch_1
    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_6

    goto :goto_1

    :pswitch_2
    if-ne p2, v2, :cond_3

    goto :goto_0

    :cond_3
    if-ne p2, v1, :cond_6

    goto :goto_1

    :pswitch_3
    if-ne p2, v2, :cond_4

    goto :goto_0

    :cond_4
    if-ne p2, v1, :cond_6

    goto :goto_1

    :pswitch_4
    if-ne p2, v2, :cond_5

    :goto_0
    move p2, v0

    move v0, v2

    goto :goto_3

    :cond_5
    if-ne p2, v1, :cond_6

    :goto_1
    move p2, v2

    goto :goto_3

    :cond_6
    :goto_2
    move p2, v0

    :goto_3
    if-nez v0, :cond_7

    if-eqz p2, :cond_a

    .line 522
    :cond_7
    iget-object p2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService$c;

    invoke-static {p2}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a(Lcom/yftech/service/upgrade/CarUpgradeService$c;)Ljava/util/Set;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 523
    iget-object p2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService$c;

    invoke-static {p2}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a(Lcom/yftech/service/upgrade/CarUpgradeService$c;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 524
    iget-object p2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService$c;

    const/4 v0, 0x3

    const-string v1, "all upgrade finish"

    invoke-static {p2, v0, v1}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a(Lcom/yftech/service/upgrade/CarUpgradeService$c;ILjava/lang/String;)V

    goto :goto_4

    :cond_8
    if-eqz v0, :cond_9

    .line 527
    iget-object p2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService$c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upgrade "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v2, v0}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a(Lcom/yftech/service/upgrade/CarUpgradeService$c;ILjava/lang/String;)V

    goto :goto_4

    .line 529
    :cond_9
    iget-object p2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService$c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upgrade "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " fail"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a(Lcom/yftech/service/upgrade/CarUpgradeService$c;ILjava/lang/String;)V

    :goto_4
    packed-switch p1, :pswitch_data_1

    goto :goto_5

    .line 547
    :pswitch_5
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService$c;

    invoke-static {p0}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->b(Lcom/yftech/service/upgrade/CarUpgradeService$c;)Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/upgrade/CarUpgradeManager;->unregisterCarScreenMcuUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;)V

    goto :goto_5

    .line 544
    :pswitch_6
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService$c;

    invoke-static {p0}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->b(Lcom/yftech/service/upgrade/CarUpgradeService$c;)Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/upgrade/CarUpgradeManager;->unregisterCarDSPUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;)V

    goto :goto_5

    .line 541
    :pswitch_7
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService$c;

    invoke-static {p0}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->b(Lcom/yftech/service/upgrade/CarUpgradeService$c;)Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/upgrade/CarUpgradeManager;->unregisterCarScreenUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;)V

    goto :goto_5

    .line 538
    :pswitch_8
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService$c;

    invoke-static {p0}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->b(Lcom/yftech/service/upgrade/CarUpgradeService$c;)Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/upgrade/CarUpgradeManager;->unregisterCarMCUUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;)V

    goto :goto_5

    .line 535
    :pswitch_9
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService$c;

    invoke-static {p0}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->b(Lcom/yftech/service/upgrade/CarUpgradeService$c;)Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/car/upgrade/CarUpgradeManager;->unregisterCarOSUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;)V

    :cond_a
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
