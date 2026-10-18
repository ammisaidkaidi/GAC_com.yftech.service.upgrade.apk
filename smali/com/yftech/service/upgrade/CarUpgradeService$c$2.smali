.class Lcom/yftech/service/upgrade/CarUpgradeService$c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/service/upgrade/CarUpgradeService$c;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/yftech/service/upgrade/CarUpgradeService$c;


# direct methods
.method constructor <init>(Lcom/yftech/service/upgrade/CarUpgradeService$c;Ljava/lang/String;)V
    .locals 0

    .line 725
    iput-object p1, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c$2;->b:Lcom/yftech/service/upgrade/CarUpgradeService$c;

    iput-object p2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c$2;->b:Lcom/yftech/service/upgrade/CarUpgradeService$c;

    iget-object v0, v0, Lcom/yftech/service/upgrade/CarUpgradeService$c;->a:Lcom/yftech/service/upgrade/CarUpgradeService;

    iget-object p0, p0, Lcom/yftech/service/upgrade/CarUpgradeService$c$2;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
