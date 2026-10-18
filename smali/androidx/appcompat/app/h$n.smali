.class final Landroidx/appcompat/app/h$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "n"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/h;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h;)V
    .locals 0

    .line 2727
    iput-object p1, p0, Landroidx/appcompat/app/h$n;->a:Landroidx/appcompat/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 4
    .param p1    # Landroidx/appcompat/view/menu/g;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2732
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->r()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2734
    :goto_0
    iget-object v3, p0, Landroidx/appcompat/app/h$n;->a:Landroidx/appcompat/app/h;

    if-eqz v2, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {v3, p1}, Landroidx/appcompat/app/h;->a(Landroid/view/Menu;)Landroidx/appcompat/app/h$m;

    move-result-object p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_2

    .line 2737
    iget-object p2, p0, Landroidx/appcompat/app/h$n;->a:Landroidx/appcompat/app/h;

    iget v2, p1, Landroidx/appcompat/app/h$m;->a:I

    invoke-virtual {p2, v2, p1, v0}, Landroidx/appcompat/app/h;->a(ILandroidx/appcompat/app/h$m;Landroid/view/Menu;)V

    .line 2738
    iget-object p0, p0, Landroidx/appcompat/app/h$n;->a:Landroidx/appcompat/app/h;

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/h;->a(Landroidx/appcompat/app/h$m;Z)V

    goto :goto_1

    .line 2742
    :cond_2
    iget-object p0, p0, Landroidx/appcompat/app/h$n;->a:Landroidx/appcompat/app/h;

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/h;->a(Landroidx/appcompat/app/h$m;Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;)Z
    .locals 1
    .param p1    # Landroidx/appcompat/view/menu/g;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2750
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->r()Landroidx/appcompat/view/menu/g;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/h$n;->a:Landroidx/appcompat/app/h;

    iget-boolean v0, v0, Landroidx/appcompat/app/h;->z:Z

    if-eqz v0, :cond_0

    .line 2751
    iget-object v0, p0, Landroidx/appcompat/app/h$n;->a:Landroidx/appcompat/app/h;

    invoke-virtual {v0}, Landroidx/appcompat/app/h;->p()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2752
    iget-object p0, p0, Landroidx/appcompat/app/h$n;->a:Landroidx/appcompat/app/h;

    iget-boolean p0, p0, Landroidx/appcompat/app/h;->E:Z

    if-nez p0, :cond_0

    const/16 p0, 0x6c

    .line 2753
    invoke-interface {v0, p0, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
