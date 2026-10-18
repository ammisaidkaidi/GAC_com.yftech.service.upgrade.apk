.class Landroidx/appcompat/app/h$7;
.super Landroidx/core/n/al;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/h;->b(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/h;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h;)V
    .locals 0

    .line 1332
    iput-object p1, p0, Landroidx/appcompat/app/h$7;->a:Landroidx/appcompat/app/h;

    invoke-direct {p0}, Landroidx/core/n/al;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1335
    iget-object p1, p0, Landroidx/appcompat/app/h$7;->a:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->u:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 1336
    iget-object p1, p0, Landroidx/appcompat/app/h$7;->a:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->u:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 1338
    iget-object p1, p0, Landroidx/appcompat/app/h$7;->a:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->u:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 1339
    iget-object p0, p0, Landroidx/appcompat/app/h$7;->a:Landroidx/appcompat/app/h;

    iget-object p0, p0, Landroidx/appcompat/app/h;->u:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Landroidx/core/n/af;->T(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 1345
    iget-object p1, p0, Landroidx/appcompat/app/h$7;->a:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->u:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1346
    iget-object p1, p0, Landroidx/appcompat/app/h$7;->a:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->x:Landroidx/core/n/aj;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/n/aj;->a(Landroidx/core/n/ak;)Landroidx/core/n/aj;

    .line 1347
    iget-object p0, p0, Landroidx/appcompat/app/h$7;->a:Landroidx/appcompat/app/h;

    iput-object v0, p0, Landroidx/appcompat/app/h;->x:Landroidx/core/n/aj;

    return-void
.end method
