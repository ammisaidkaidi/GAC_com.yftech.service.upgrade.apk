.class public abstract Lcom/yftech/service/upgrade/adapter/screen/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yftech/service/upgrade/adapter/IScreenAdapter;


# instance fields
.field private a:Lcom/yftech/service/upgrade/adapter/IScreenAdapter$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yftech/service/upgrade/adapter/IScreenAdapter$a;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/yftech/service/upgrade/adapter/screen/a/a;->a:Lcom/yftech/service/upgrade/adapter/IScreenAdapter$a;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onUpgradeProgressChanged(I)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/yftech/service/upgrade/adapter/screen/a/a;->a:Lcom/yftech/service/upgrade/adapter/IScreenAdapter$a;

    if-eqz v0, :cond_0

    .line 28
    iget-object p0, p0, Lcom/yftech/service/upgrade/adapter/screen/a/a;->a:Lcom/yftech/service/upgrade/adapter/IScreenAdapter$a;

    invoke-interface {p0, p1}, Lcom/yftech/service/upgrade/adapter/IScreenAdapter$a;->b(I)V

    :cond_0
    return-void
.end method

.method public onUpgradeStateChanged(I)V
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/yftech/service/upgrade/adapter/screen/a/a;->a:Lcom/yftech/service/upgrade/adapter/IScreenAdapter$a;

    if-eqz v0, :cond_0

    .line 21
    iget-object p0, p0, Lcom/yftech/service/upgrade/adapter/screen/a/a;->a:Lcom/yftech/service/upgrade/adapter/IScreenAdapter$a;

    invoke-interface {p0, p1}, Lcom/yftech/service/upgrade/adapter/IScreenAdapter$a;->a(I)V

    :cond_0
    return-void
.end method
