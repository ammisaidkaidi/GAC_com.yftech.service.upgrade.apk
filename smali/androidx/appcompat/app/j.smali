.class public Landroidx/appcompat/app/j;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 43
    new-instance p1, Landroidx/appcompat/app/i;

    invoke-virtual {p0}, Landroidx/appcompat/app/j;->y()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/j;->h()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroidx/appcompat/app/i;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public a(Landroid/app/Dialog;I)V
    .locals 1
    .param p1    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 50
    instance-of v0, p1, Landroidx/appcompat/app/i;

    if-eqz v0, :cond_0

    .line 52
    move-object p0, p1

    check-cast p0, Landroidx/appcompat/app/i;

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 55
    :pswitch_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x18

    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    :pswitch_1
    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/i;->e(I)Z

    goto :goto_0

    .line 65
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/c;->a(Landroid/app/Dialog;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
