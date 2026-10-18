.class Landroidx/appcompat/widget/an$3;
.super Landroidx/appcompat/widget/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/an;->b()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/an;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/an;Landroid/view/View;)V
    .locals 0

    .line 175
    iput-object p1, p0, Landroidx/appcompat/widget/an$3;->a:Landroidx/appcompat/widget/an;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/ai;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/q;
    .locals 0

    .line 191
    iget-object p0, p0, Landroidx/appcompat/widget/an$3;->a:Landroidx/appcompat/widget/an;

    iget-object p0, p0, Landroidx/appcompat/widget/an;->a:Landroidx/appcompat/view/menu/m;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m;->d()Landroidx/appcompat/view/menu/l;

    move-result-object p0

    return-object p0
.end method

.method protected b()Z
    .locals 0

    .line 178
    iget-object p0, p0, Landroidx/appcompat/widget/an$3;->a:Landroidx/appcompat/widget/an;

    invoke-virtual {p0}, Landroidx/appcompat/widget/an;->e()V

    const/4 p0, 0x1

    return p0
.end method

.method protected c()Z
    .locals 0

    .line 184
    iget-object p0, p0, Landroidx/appcompat/widget/an$3;->a:Landroidx/appcompat/widget/an;

    invoke-virtual {p0}, Landroidx/appcompat/widget/an;->f()V

    const/4 p0, 0x1

    return p0
.end method
