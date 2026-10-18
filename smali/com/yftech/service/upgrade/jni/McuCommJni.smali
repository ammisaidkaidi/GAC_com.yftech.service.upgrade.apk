.class public Lcom/yftech/service/upgrade/jni/McuCommJni;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native notifyMcuUpgradeEnd()V
.end method

.method public static native notifyMcuUpgradeStart()V
.end method
