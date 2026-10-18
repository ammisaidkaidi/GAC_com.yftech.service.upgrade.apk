.class final Landroidx/appcompat/app/n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/n;

.field private b:Z


# direct methods
.method constructor <init>(Landroidx/appcompat/app/n;)V
    .locals 0

    .line 555
    iput-object p1, p0, Landroidx/appcompat/app/n$a;->a:Landroidx/appcompat/app/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 1
    .param p1    # Landroidx/appcompat/view/menu/g;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 569
    iget-boolean p2, p0, Landroidx/appcompat/app/n$a;->b:Z

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 573
    iput-boolean p2, p0, Landroidx/appcompat/app/n$a;->b:Z

    .line 574
    iget-object p2, p0, Landroidx/appcompat/app/n$a;->a:Landroidx/appcompat/app/n;

    iget-object p2, p2, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p2}, Landroidx/appcompat/widget/ae;->q()V

    .line 575
    iget-object p2, p0, Landroidx/appcompat/app/n$a;->a:Landroidx/appcompat/app/n;

    iget-object p2, p2, Landroidx/appcompat/app/n;->k:Landroid/view/Window$Callback;

    if-eqz p2, :cond_1

    .line 576
    iget-object p2, p0, Landroidx/appcompat/app/n$a;->a:Landroidx/appcompat/app/n;

    iget-object p2, p2, Landroidx/appcompat/app/n;->k:Landroid/view/Window$Callback;

    const/16 v0, 0x6c

    invoke-interface {p2, v0, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    .line 578
    iput-boolean p1, p0, Landroidx/appcompat/app/n$a;->b:Z

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;)Z
    .locals 1
    .param p1    # Landroidx/appcompat/view/menu/g;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 560
    iget-object v0, p0, Landroidx/appcompat/app/n$a;->a:Landroidx/appcompat/app/n;

    iget-object v0, v0, Landroidx/appcompat/app/n;->k:Landroid/view/Window$Callback;

    if-eqz v0, :cond_0

    .line 561
    iget-object p0, p0, Landroidx/appcompat/app/n$a;->a:Landroidx/appcompat/app/n;

    iget-object p0, p0, Landroidx/appcompat/app/n;->k:Landroid/view/Window$Callback;

    const/16 v0, 0x6c

    invoke-interface {p0, v0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
