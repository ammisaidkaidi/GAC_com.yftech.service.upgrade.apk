.class Landroidx/core/n/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/n/o;->a(Landroid/view/MenuItem;Landroidx/core/n/o$a;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/n/o$a;


# direct methods
.method constructor <init>(Landroidx/core/n/o$a;)V
    .locals 0

    .line 302
    iput-object p1, p0, Landroidx/core/n/o$1;->a:Landroidx/core/n/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 0

    .line 310
    iget-object p0, p0, Landroidx/core/n/o$1;->a:Landroidx/core/n/o$a;

    invoke-interface {p0, p1}, Landroidx/core/n/o$a;->b(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 0

    .line 305
    iget-object p0, p0, Landroidx/core/n/o$1;->a:Landroidx/core/n/o$a;

    invoke-interface {p0, p1}, Landroidx/core/n/o$a;->a(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method
