.class Landroidx/appcompat/widget/an$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/an;-><init>(Landroid/content/Context;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/an;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/an;)V
    .locals 0

    .line 109
    iput-object p1, p0, Landroidx/appcompat/widget/an$1;->a:Landroidx/appcompat/widget/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/g;)V
    .locals 0
    .param p1    # Landroidx/appcompat/view/menu/g;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .locals 0
    .param p1    # Landroidx/appcompat/view/menu/g;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 112
    iget-object p1, p0, Landroidx/appcompat/widget/an$1;->a:Landroidx/appcompat/widget/an;

    iget-object p1, p1, Landroidx/appcompat/widget/an;->b:Landroidx/appcompat/widget/an$b;

    if-eqz p1, :cond_0

    .line 113
    iget-object p0, p0, Landroidx/appcompat/widget/an$1;->a:Landroidx/appcompat/widget/an;

    iget-object p0, p0, Landroidx/appcompat/widget/an;->b:Landroidx/appcompat/widget/an$b;

    invoke-interface {p0, p2}, Landroidx/appcompat/widget/an$b;->a(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
