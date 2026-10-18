.class Lcom/yftech/service/upgrade/CarApplication$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/service/upgrade/CarApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yftech/service/upgrade/CarApplication;


# direct methods
.method constructor <init>(Lcom/yftech/service/upgrade/CarApplication;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/yftech/service/upgrade/CarApplication$1;->a:Lcom/yftech/service/upgrade/CarApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    const-string p0, "permission init finish"

    .line 20
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    return-void
.end method
