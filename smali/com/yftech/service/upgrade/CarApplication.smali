.class public Lcom/yftech/service/upgrade/CarApplication;
.super Landroid/app/Application;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 16
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "UpgradeService"

    .line 17
    new-instance v1, Lcom/yftech/service/upgrade/CarApplication$1;

    invoke-direct {v1, p0}, Lcom/yftech/service/upgrade/CarApplication$1;-><init>(Lcom/yftech/service/upgrade/CarApplication;)V

    invoke-static {v0, v1}, Lcom/yftech/car/permission/CarPermission;->initAsync(Ljava/lang/String;Ljava/lang/Runnable;)V

    const-string p0, "upgrade app start"

    .line 23
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public onTerminate()V
    .locals 0

    .line 28
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    const-string p0, "upgrade app stop"

    .line 29
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    return-void
.end method
