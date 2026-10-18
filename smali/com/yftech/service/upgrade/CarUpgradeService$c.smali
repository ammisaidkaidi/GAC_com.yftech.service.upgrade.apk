.class Lcom/yftech/service/upgrade/CarUpgradeService$c;
.super Lcom/yftech/car/upgrade/ICarUpgradeService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/service/upgrade/CarUpgradeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# static fields
.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3


# instance fields
.field final synthetic a:Lcom/yftech/service/upgrade/CarUpgradeService;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;


# direct methods
.method constructor <init>(Lcom/yftech/service/upgrade/CarUpgradeService;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-direct {p0}, Lcom/yftech/car/upgrade/ICarUpgradeService$Stub;-><init>()V

    .line 472
    new-instance p1, Landroidx/c/b;

    invoke-direct {p1}, Landroidx/c/b;-><init>()V

    iput-object p1, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->e:Ljava/util/Set;

    .line 473
    new-instance p1, Lcom/yftech/service/upgrade/CarUpgradeService$c$1;

    invoke-direct {p1, p0}, Lcom/yftech/service/upgrade/CarUpgradeService$c$1;-><init>(Lcom/yftech/service/upgrade/CarUpgradeService$c;)V

    iput-object p1, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->f:Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;

    return-void
.end method

.method static synthetic a(Lcom/yftech/service/upgrade/CarUpgradeService$c;)Ljava/util/Set;
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->e:Ljava/util/Set;

    return-object p0
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/yftech/service/upgrade/CarUpgradeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x5

    .line 718
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x7

    .line 715
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    :pswitch_2
    const/4 p1, 0x0

    .line 712
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 724
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 725
    iget-object p1, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {p1}, Lcom/yftech/service/upgrade/CarUpgradeService;->k(Lcom/yftech/service/upgrade/CarUpgradeService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/service/upgrade/CarUpgradeService$c$2;

    invoke-direct {v0, p0, p2}, Lcom/yftech/service/upgrade/CarUpgradeService$c$2;-><init>(Lcom/yftech/service/upgrade/CarUpgradeService$c;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/yftech/service/upgrade/CarUpgradeService$c;ILjava/lang/String;)V
    .locals 0

    .line 312
    invoke-direct {p0, p1, p2}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a(ILjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    .line 564
    aget-object v1, p2, v0

    const-string v2, "add"

    .line 565
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_7

    .line 566
    array-length v1, p2

    if-ge v1, v5, :cond_0

    const-string p0, "add command exec failed: length of params is not right"

    .line 567
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 571
    :cond_0
    aget-object v1, p2, v7

    .line 572
    array-length v2, p2

    sub-int/2addr v2, v6

    new-array v2, v2, [Ljava/lang/String;

    .line 573
    array-length v8, p2

    sub-int/2addr v8, v6

    invoke-static {p2, v6, v2, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string p2, "os"

    .line 577
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 579
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object p2

    aget-object v3, v2, v0

    invoke-virtual {p2, v3}, Lcom/yftech/car/upgrade/CarUpgradeManager;->addOSUpgradeModule(Ljava/lang/String;)I

    move-result p2

    move v3, v7

    goto :goto_0

    :cond_1
    const-string p2, "mcu"

    .line 580
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 582
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object p2

    aget-object v3, v2, v0

    invoke-virtual {p2, v3}, Lcom/yftech/car/upgrade/CarUpgradeManager;->addMCUUpgradeModule(Ljava/lang/String;)I

    move-result p2

    move v3, v6

    goto :goto_0

    :cond_2
    const-string p2, "screen"

    .line 583
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 585
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object p2

    aget-object v3, v2, v0

    invoke-virtual {p2, v3}, Lcom/yftech/car/upgrade/CarUpgradeManager;->addScreenUpgradeModule(Ljava/lang/String;)I

    move-result p2

    move v3, v5

    goto :goto_0

    :cond_3
    const-string p2, "dsp"

    .line 586
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 588
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object p2

    aget-object v3, v2, v0

    invoke-virtual {p2, v3}, Lcom/yftech/car/upgrade/CarUpgradeManager;->addDSPUpgradeModule(Ljava/lang/String;)I

    move-result p2

    move v3, v4

    goto :goto_0

    :cond_4
    const-string p2, "screenmcu"

    .line 589
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 591
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object p2

    aget-object v4, v2, v0

    invoke-virtual {p2, v4}, Lcom/yftech/car/upgrade/CarUpgradeManager;->addScreenMcuUpgradeModule(Ljava/lang/String;)I

    move-result p2

    :goto_0
    if-ne p2, v7, :cond_5

    .line 598
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->e:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 599
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "add command exec success for module("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") and path("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    .line 602
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add command exec failed for module("

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") and path("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), error code is "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 593
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "add command exec failed: unknown module("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_7
    const-string v2, "remove"

    .line 605
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 606
    array-length v1, p2

    if-eq v1, v6, :cond_8

    const-string p0, "remove command exec failed: length of params is not right"

    .line 607
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 611
    :cond_8
    aget-object p2, p2, v7

    const-string v1, "os"

    .line 614
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 616
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/upgrade/CarUpgradeManager;->removeOSUpgradeModule()I

    move-result v1

    move v3, v7

    goto :goto_1

    :cond_9
    const-string v1, "mcu"

    .line 617
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 619
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/upgrade/CarUpgradeManager;->removeMCUUpgradeModule()I

    move-result v1

    move v3, v6

    goto :goto_1

    :cond_a
    const-string v1, "screen"

    .line 620
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 622
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/upgrade/CarUpgradeManager;->removeScreenUpgradeModule()I

    move-result v1

    move v3, v5

    goto :goto_1

    :cond_b
    const-string v1, "dsp"

    .line 623
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 625
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/upgrade/CarUpgradeManager;->removeDSPUpgradeModule()I

    move-result v1

    move v3, v4

    goto :goto_1

    :cond_c
    const-string v1, "screenmcu"

    .line 626
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 628
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/car/upgrade/CarUpgradeManager;->removeScreenMcuUpgradeModule()I

    move-result v1

    :goto_1
    if-ne v1, v7, :cond_d

    .line 635
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->e:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 636
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "remove command exec success for module("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    .line 639
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove command exec failed for module("

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "), error code is "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 630
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove command exec failed: unknown module("

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    :cond_f
    const-string p2, "start"

    .line 642
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_14

    .line 643
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getCurUpgradingInfo()Lcom/yftech/car/upgrade/CarUpgradeInfo;

    move-result-object p2

    if-eqz p2, :cond_10

    const-string p0, "start command exec failed: upgrading"

    .line 644
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 647
    :cond_10
    iget-object p2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->e:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 648
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 662
    :pswitch_0
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->f:Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-virtual {v4}, Lcom/yftech/service/upgrade/CarUpgradeService;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/upgrade/CarUpgradeManager;->registerCarScreenMcuUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;Landroid/os/Handler;)V

    goto :goto_2

    .line 659
    :pswitch_1
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->f:Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-virtual {v4}, Lcom/yftech/service/upgrade/CarUpgradeService;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/upgrade/CarUpgradeManager;->registerCarDSPUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;Landroid/os/Handler;)V

    goto :goto_2

    .line 656
    :pswitch_2
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->f:Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-virtual {v4}, Lcom/yftech/service/upgrade/CarUpgradeService;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/upgrade/CarUpgradeManager;->registerCarScreenUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;Landroid/os/Handler;)V

    goto :goto_2

    .line 653
    :pswitch_3
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->f:Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-virtual {v4}, Lcom/yftech/service/upgrade/CarUpgradeService;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/upgrade/CarUpgradeManager;->registerCarMCUUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;Landroid/os/Handler;)V

    goto :goto_2

    .line 650
    :pswitch_4
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->f:Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-virtual {v4}, Lcom/yftech/service/upgrade/CarUpgradeService;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v2, v3}, Lcom/yftech/car/upgrade/CarUpgradeManager;->registerCarOSUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;Landroid/os/Handler;)V

    goto :goto_2

    .line 668
    :cond_11
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/yftech/car/upgrade/CarUpgradeManager;->startUpgrade()Z

    move-result p2

    if-eqz p2, :cond_12

    const-string p0, "start command exec success"

    .line 669
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v7

    .line 672
    :cond_12
    iget-object p2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->e:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 673
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    goto :goto_3

    .line 687
    :pswitch_5
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->f:Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;

    invoke-virtual {v1, v2}, Lcom/yftech/car/upgrade/CarUpgradeManager;->unregisterCarScreenMcuUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;)V

    goto :goto_3

    .line 684
    :pswitch_6
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->f:Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;

    invoke-virtual {v1, v2}, Lcom/yftech/car/upgrade/CarUpgradeManager;->unregisterCarDSPUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;)V

    goto :goto_3

    .line 681
    :pswitch_7
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->f:Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;

    invoke-virtual {v1, v2}, Lcom/yftech/car/upgrade/CarUpgradeManager;->unregisterCarScreenUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;)V

    goto :goto_3

    .line 678
    :pswitch_8
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->f:Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;

    invoke-virtual {v1, v2}, Lcom/yftech/car/upgrade/CarUpgradeManager;->unregisterCarMCUUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;)V

    goto :goto_3

    .line 675
    :pswitch_9
    invoke-static {}, Lcom/yftech/car/upgrade/CarUpgradeManager;->getInstance()Lcom/yftech/car/upgrade/CarUpgradeManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->f:Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;

    invoke-virtual {v1, v2}, Lcom/yftech/car/upgrade/CarUpgradeManager;->unregisterCarOSUpgradeCallback(Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;)V

    goto :goto_3

    :cond_13
    const-string p0, "start command exec failed"

    .line 693
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

    .line 697
    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "command of "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "is unknown"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v0

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

.method static synthetic b(Lcom/yftech/service/upgrade/CarUpgradeService$c;)Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->f:Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;

    return-object p0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 316
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 317
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/yftech/service/upgrade/CarUpgradeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 318
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 319
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 320
    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    .line 321
    iget-object v0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public addUpgradeModule(I[Ljava/lang/String;)I
    .locals 2

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addUpgradeModule, pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", module:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pathList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    invoke-static {v0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    const-string v1, "com.yftech.permission.service.upgrade.upgrade"

    invoke-static {v0, v1}, Lcom/yftech/car/permission/CarPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {p0, p1, p2}, Lcom/yftech/service/upgrade/CarUpgradeService;->b(Lcom/yftech/service/upgrade/CarUpgradeService;I[Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "addUpgradeModule, permission not granted"

    .line 367
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 368
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "require com.yftech.permission.service.upgrade.upgrade"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkUpgradeFile(I[Ljava/lang/String;)Z
    .locals 2

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkUpgradeFile, pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", module:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", pathList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-static {v0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    const-string v1, "com.yftech.permission.service.upgrade.upgrade"

    invoke-static {v0, v1}, Lcom/yftech/car/permission/CarPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {p0, p1, p2}, Lcom/yftech/service/upgrade/CarUpgradeService;->a(Lcom/yftech/service/upgrade/CarUpgradeService;I[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "checkUpgradeFile, permission not granted"

    .line 356
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 357
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "require com.yftech.permission.service.upgrade.upgrade"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-eqz p3, :cond_1

    .line 426
    array-length v0, p3

    if-lez v0, :cond_1

    const-string v0, "-a"

    const/4 v1, 0x0

    .line 428
    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 431
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 433
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move p1, v1

    :goto_0
    if-eqz p1, :cond_0

    const/4 p1, 0x2

    const-string p2, "command exec success"

    .line 437
    invoke-direct {p0, p1, p2}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    const-string p2, "command exec fail"

    .line 439
    invoke-direct {p0, p1, p2}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a(ILjava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "----upgrade service----"

    .line 445
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v0}, Lcom/yftech/service/upgrade/CarUpgradeService;->e(Lcom/yftech/service/upgrade/CarUpgradeService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    const-string v1, "add upgrade module list:"

    .line 447
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 448
    iget-object v1, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v1}, Lcom/yftech/service/upgrade/CarUpgradeService;->e(Lcom/yftech/service/upgrade/CarUpgradeService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/service/upgrade/CarUpgradeService$a;

    .line 449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tmodule:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/yftech/service/upgrade/CarUpgradeService$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pathList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/yftech/service/upgrade/CarUpgradeService$a;->b:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 451
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is upgrading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v1}, Lcom/yftech/service/upgrade/CarUpgradeService;->j(Lcom/yftech/service/upgrade/CarUpgradeService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v0}, Lcom/yftech/service/upgrade/CarUpgradeService;->b(Lcom/yftech/service/upgrade/CarUpgradeService;)Lcom/yftech/service/upgrade/CarUpgradeService$b;

    move-result-object v0

    .line 454
    iget-object v1, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v1}, Lcom/yftech/service/upgrade/CarUpgradeService;->j(Lcom/yftech/service/upgrade/CarUpgradeService;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    const-string v1, "upgrading module list:"

    .line 455
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    iget-object v1, v0, Lcom/yftech/service/upgrade/CarUpgradeService$b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yftech/car/upgrade/CarUpgradeInfo;

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tmodule:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/yftech/car/upgrade/CarUpgradeInfo;->getModule()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/yftech/car/upgrade/CarUpgradeInfo;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", progress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    invoke-virtual {v2}, Lcom/yftech/car/upgrade/CarUpgradeInfo;->getProgress()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pathList:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/yftech/car/upgrade/CarUpgradeInfo;->getPath()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 457
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v1, "upgrade module detailed state:"

    .line 460
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    iget-object v0, v0, Lcom/yftech/service/upgrade/CarUpgradeService$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/upgrade/CarUpgradeInfo;

    .line 462
    iget-object v2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v2}, Lcom/yftech/service/upgrade/CarUpgradeService;->c(Lcom/yftech/service/upgrade/CarUpgradeService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/yftech/car/upgrade/CarUpgradeInfo;->getModule()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/service/upgrade/b;

    invoke-interface {v1, p1, p2, p3}, Lcom/yftech/service/upgrade/b;->a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_4

    .line 466
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/yftech/car/upgrade/ICarUpgradeService$Stub;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 451
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getCurUpgradeingInfo()Lcom/yftech/car/upgrade/CarUpgradeInfo;
    .locals 2

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurUpgradeingInfo, pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    const-string v1, "com.yftech.permission.service.upgrade.upgrade"

    invoke-static {v0, v1}, Lcom/yftech/car/permission/CarPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {p0}, Lcom/yftech/service/upgrade/CarUpgradeService;->h(Lcom/yftech/service/upgrade/CarUpgradeService;)Lcom/yftech/car/upgrade/CarUpgradeInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "getCurUpgradeingInfo, permission not granted"

    .line 398
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 399
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "require com.yftech.permission.service.upgrade.upgrade"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getHasAddUpgradeModule()[I
    .locals 2

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHasAddUpgradeModule, pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    const-string v1, "com.yftech.permission.service.upgrade.upgrade"

    invoke-static {v0, v1}, Lcom/yftech/car/permission/CarPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {p0}, Lcom/yftech/service/upgrade/CarUpgradeService;->i(Lcom/yftech/service/upgrade/CarUpgradeService;)[I

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "getHasAddUpgradeModule, permission not granted"

    .line 408
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 409
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "require com.yftech.permission.service.upgrade.upgrade"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVersion(I)Ljava/lang/String;
    .locals 2

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVersion, pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", module="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    .line 417
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    const-string p1, "com.yftech.permission.service.upgrade.upgrade"

    invoke-static {p0, p1}, Lcom/yftech/car/permission/CarPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "getVersion, permission not granted"

    .line 418
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 419
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "require com.yftech.permission.service.upgrade.upgrade"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerListener(Lcom/yftech/car/upgrade/ICarUpgradeCallback;)V
    .locals 2

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener, pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    const-string v1, "com.yftech.permission.service.upgrade.upgrade"

    invoke-static {v0, v1}, Lcom/yftech/car/permission/CarPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v0}, Lcom/yftech/service/upgrade/CarUpgradeService;->f(Lcom/yftech/service/upgrade/CarUpgradeService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    .line 335
    :try_start_0
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {p0}, Lcom/yftech/service/upgrade/CarUpgradeService;->f(Lcom/yftech/service/upgrade/CarUpgradeService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 336
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const-string p0, "registerListener, permission not granted"

    .line 331
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 332
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "require com.yftech.permission.service.upgrade.upgrade"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeUpgradeModule(I)I
    .locals 2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeUpgradeModule, pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "module:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    const-string v1, "com.yftech.permission.service.upgrade.upgrade"

    invoke-static {v0, v1}, Lcom/yftech/car/permission/CarPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {p0, p1}, Lcom/yftech/service/upgrade/CarUpgradeService;->a(Lcom/yftech/service/upgrade/CarUpgradeService;I)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "removeUpgradeModule, permission not granted"

    .line 378
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 379
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "require com.yftech.permission.service.upgrade.upgrade"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startUpgrade()Z
    .locals 2

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startUpgrade, pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    const-string v1, "com.yftech.permission.service.upgrade.upgrade"

    invoke-static {v0, v1}, Lcom/yftech/car/permission/CarPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {p0}, Lcom/yftech/service/upgrade/CarUpgradeService;->g(Lcom/yftech/service/upgrade/CarUpgradeService;)Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "startUpgrade, permission not granted"

    .line 388
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 389
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "require com.yftech.permission.service.upgrade.upgrade"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterListener(Lcom/yftech/car/upgrade/ICarUpgradeCallback;)V
    .locals 2

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterListener, pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    const-string v1, "com.yftech.permission.service.upgrade.upgrade"

    invoke-static {v0, v1}, Lcom/yftech/car/permission/CarPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v0}, Lcom/yftech/service/upgrade/CarUpgradeService;->f(Lcom/yftech/service/upgrade/CarUpgradeService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    .line 347
    :try_start_0
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {p0}, Lcom/yftech/service/upgrade/CarUpgradeService;->f(Lcom/yftech/service/upgrade/CarUpgradeService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 348
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const-string p0, "unregisterListener, permission not granted"

    .line 343
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 344
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "require com.yftech.permission.service.upgrade.upgrade"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
