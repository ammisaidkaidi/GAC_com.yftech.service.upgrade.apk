.class Lcom/yftech/service/upgrade/CarUpgradeService$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/service/upgrade/CarUpgradeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:[Ljava/lang/String;

.field final synthetic c:Lcom/yftech/service/upgrade/CarUpgradeService;


# direct methods
.method constructor <init>(Lcom/yftech/service/upgrade/CarUpgradeService;I[Ljava/lang/String;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/yftech/service/upgrade/CarUpgradeService$a;->c:Lcom/yftech/service/upgrade/CarUpgradeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput p2, p0, Lcom/yftech/service/upgrade/CarUpgradeService$a;->a:I

    .line 283
    iput-object p3, p0, Lcom/yftech/service/upgrade/CarUpgradeService$a;->b:[Ljava/lang/String;

    return-void
.end method
