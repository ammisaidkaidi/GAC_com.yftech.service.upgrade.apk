.class Lcom/yftech/service/upgrade/CarUpgradeService$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yftech/service/upgrade/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/service/upgrade/CarUpgradeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yftech/service/upgrade/CarUpgradeService;


# direct methods
.method constructor <init>(Lcom/yftech/service/upgrade/CarUpgradeService;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/yftech/service/upgrade/CarUpgradeService$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yftech/service/upgrade/b;I)V
    .locals 4

    .line 249
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v0}, Lcom/yftech/service/upgrade/CarUpgradeService;->a(Lcom/yftech/service/upgrade/CarUpgradeService;)Lcom/yftech/car/upgrade/CarUpgradeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v0}, Lcom/yftech/service/upgrade/CarUpgradeService;->a(Lcom/yftech/service/upgrade/CarUpgradeService;)Lcom/yftech/car/upgrade/CarUpgradeInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yftech/car/upgrade/CarUpgradeInfo;->setState(I)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v0}, Lcom/yftech/service/upgrade/CarUpgradeService;->b(Lcom/yftech/service/upgrade/CarUpgradeService;)Lcom/yftech/service/upgrade/CarUpgradeService$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v0}, Lcom/yftech/service/upgrade/CarUpgradeService;->b(Lcom/yftech/service/upgrade/CarUpgradeService;)Lcom/yftech/service/upgrade/CarUpgradeService$b;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/service/upgrade/CarUpgradeService$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/upgrade/CarUpgradeInfo;

    .line 254
    invoke-virtual {v1}, Lcom/yftech/car/upgrade/CarUpgradeInfo;->getModule()I

    move-result v2

    invoke-interface {p1}, Lcom/yftech/service/upgrade/b;->a()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 255
    invoke-virtual {v1, p2}, Lcom/yftech/car/upgrade/CarUpgradeInfo;->setState(I)V

    goto :goto_0

    .line 259
    :cond_2
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-interface {p1}, Lcom/yftech/service/upgrade/b;->a()I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/yftech/service/upgrade/CarUpgradeService;->a(Lcom/yftech/service/upgrade/CarUpgradeService;II)V

    return-void
.end method

.method public b(Lcom/yftech/service/upgrade/b;I)V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v0}, Lcom/yftech/service/upgrade/CarUpgradeService;->a(Lcom/yftech/service/upgrade/CarUpgradeService;)Lcom/yftech/car/upgrade/CarUpgradeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v0}, Lcom/yftech/service/upgrade/CarUpgradeService;->a(Lcom/yftech/service/upgrade/CarUpgradeService;)Lcom/yftech/car/upgrade/CarUpgradeInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/yftech/car/upgrade/CarUpgradeInfo;->setProgress(I)V

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v0}, Lcom/yftech/service/upgrade/CarUpgradeService;->b(Lcom/yftech/service/upgrade/CarUpgradeService;)Lcom/yftech/service/upgrade/CarUpgradeService$b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-static {v0}, Lcom/yftech/service/upgrade/CarUpgradeService;->b(Lcom/yftech/service/upgrade/CarUpgradeService;)Lcom/yftech/service/upgrade/CarUpgradeService$b;

    move-result-object v0

    iget-object v0, v0, Lcom/yftech/service/upgrade/CarUpgradeService$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yftech/car/upgrade/CarUpgradeInfo;

    .line 269
    invoke-virtual {v1}, Lcom/yftech/car/upgrade/CarUpgradeInfo;->getModule()I

    move-result v2

    invoke-interface {p1}, Lcom/yftech/service/upgrade/b;->a()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 270
    invoke-virtual {v1, p2}, Lcom/yftech/car/upgrade/CarUpgradeInfo;->setProgress(I)V

    goto :goto_0

    .line 274
    :cond_2
    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$1;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-interface {p1}, Lcom/yftech/service/upgrade/b;->a()I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/yftech/service/upgrade/CarUpgradeService;->b(Lcom/yftech/service/upgrade/CarUpgradeService;II)V

    return-void
.end method
