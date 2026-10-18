.class Landroidx/appcompat/app/q$1;
.super Landroidx/core/n/al;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/q;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/q;)V
    .locals 0

    .line 135
    iput-object p1, p0, Landroidx/appcompat/app/q$1;->a:Landroidx/appcompat/app/q;

    invoke-direct {p0}, Landroidx/core/n/al;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 138
    iget-object p1, p0, Landroidx/appcompat/app/q$1;->a:Landroidx/appcompat/app/q;

    iget-boolean p1, p1, Landroidx/appcompat/app/q;->s:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/app/q$1;->a:Landroidx/appcompat/app/q;

    iget-object p1, p1, Landroidx/appcompat/app/q;->n:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Landroidx/appcompat/app/q$1;->a:Landroidx/appcompat/app/q;

    iget-object p1, p1, Landroidx/appcompat/app/q;->n:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 140
    iget-object p1, p0, Landroidx/appcompat/app/q$1;->a:Landroidx/appcompat/app/q;

    iget-object p1, p1, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 142
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/q$1;->a:Landroidx/appcompat/app/q;

    iget-object p1, p1, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 143
    iget-object p1, p0, Landroidx/appcompat/app/q$1;->a:Landroidx/appcompat/app/q;

    iget-object p1, p1, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 144
    iget-object p1, p0, Landroidx/appcompat/app/q$1;->a:Landroidx/appcompat/app/q;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/q;->v:Landroidx/appcompat/view/h;

    .line 145
    iget-object p1, p0, Landroidx/appcompat/app/q$1;->a:Landroidx/appcompat/app/q;

    invoke-virtual {p1}, Landroidx/appcompat/app/q;->A()V

    .line 146
    iget-object p1, p0, Landroidx/appcompat/app/q$1;->a:Landroidx/appcompat/app/q;

    iget-object p1, p1, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_1

    .line 147
    iget-object p0, p0, Landroidx/appcompat/app/q$1;->a:Landroidx/appcompat/app/q;

    iget-object p0, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {p0}, Landroidx/core/n/af;->T(Landroid/view/View;)V

    :cond_1
    return-void
.end method
