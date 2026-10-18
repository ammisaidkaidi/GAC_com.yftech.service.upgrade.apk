.class Landroidx/appcompat/view/menu/t;
.super Landroidx/appcompat/view/menu/p;
.source "SourceFile"

# interfaces
.implements Landroid/view/SubMenu;


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
    }
.end annotation


# instance fields
.field private final b:Landroidx/core/e/a/c;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/e/a/c;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/menu/p;-><init>(Landroid/content/Context;Landroidx/core/e/a/a;)V

    .line 40
    iput-object p2, p0, Landroidx/appcompat/view/menu/t;->b:Landroidx/core/e/a/c;

    return-void
.end method


# virtual methods
.method public clearHeader()V
    .locals 0

    .line 75
    iget-object p0, p0, Landroidx/appcompat/view/menu/t;->b:Landroidx/core/e/a/c;

    invoke-interface {p0}, Landroidx/core/e/a/c;->clearHeader()V

    return-void
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .line 92
    iget-object v0, p0, Landroidx/appcompat/view/menu/t;->b:Landroidx/core/e/a/c;

    invoke-interface {v0}, Landroidx/core/e/a/c;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/view/menu/t;->a(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 57
    iget-object v0, p0, Landroidx/appcompat/view/menu/t;->b:Landroidx/core/e/a/c;

    invoke-interface {v0, p1}, Landroidx/core/e/a/c;->setHeaderIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 63
    iget-object v0, p0, Landroidx/appcompat/view/menu/t;->b:Landroidx/core/e/a/c;

    invoke-interface {v0, p1}, Landroidx/core/e/a/c;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    .line 45
    iget-object v0, p0, Landroidx/appcompat/view/menu/t;->b:Landroidx/core/e/a/c;

    invoke-interface {v0, p1}, Landroidx/core/e/a/c;->setHeaderTitle(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .line 51
    iget-object v0, p0, Landroidx/appcompat/view/menu/t;->b:Landroidx/core/e/a/c;

    invoke-interface {v0, p1}, Landroidx/core/e/a/c;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    .line 69
    iget-object v0, p0, Landroidx/appcompat/view/menu/t;->b:Landroidx/core/e/a/c;

    invoke-interface {v0, p1}, Landroidx/core/e/a/c;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 80
    iget-object v0, p0, Landroidx/appcompat/view/menu/t;->b:Landroidx/core/e/a/c;

    invoke-interface {v0, p1}, Landroidx/core/e/a/c;->setIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 86
    iget-object v0, p0, Landroidx/appcompat/view/menu/t;->b:Landroidx/core/e/a/c;

    invoke-interface {v0, p1}, Landroidx/core/e/a/c;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method
