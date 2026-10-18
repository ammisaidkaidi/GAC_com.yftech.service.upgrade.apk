.class Lcom/yftech/service/upgrade/MainActivity$a;
.super Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/service/upgrade/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yftech/service/upgrade/MainActivity;


# direct methods
.method constructor <init>(Lcom/yftech/service/upgrade/MainActivity;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/yftech/service/upgrade/MainActivity$a;->a:Lcom/yftech/service/upgrade/MainActivity;

    invoke-direct {p0}, Lcom/yftech/car/upgrade/CarUpgradeManager$CarUpgradeCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpgradeProgress(II)V
    .locals 2

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpgradeProgress, module="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    .line 383
    iget-object p0, p0, Lcom/yftech/service/upgrade/MainActivity$a;->a:Lcom/yftech/service/upgrade/MainActivity;

    invoke-static {p0, p1, p2}, Lcom/yftech/service/upgrade/MainActivity;->a(Lcom/yftech/service/upgrade/MainActivity;II)V

    return-void
.end method

.method public onUpgradeState(II)V
    .locals 2

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpgradeState, module="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    .line 389
    iget-object p0, p0, Lcom/yftech/service/upgrade/MainActivity$a;->a:Lcom/yftech/service/upgrade/MainActivity;

    invoke-static {p0, p1, p2}, Lcom/yftech/service/upgrade/MainActivity;->b(Lcom/yftech/service/upgrade/MainActivity;II)V

    return-void
.end method
