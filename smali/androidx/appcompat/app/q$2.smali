.class Landroidx/appcompat/app/q$2;
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

    .line 152
    iput-object p1, p0, Landroidx/appcompat/app/q$2;->a:Landroidx/appcompat/app/q;

    invoke-direct {p0}, Landroidx/core/n/al;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    .line 155
    iget-object p1, p0, Landroidx/appcompat/app/q$2;->a:Landroidx/appcompat/app/q;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/app/q;->v:Landroidx/appcompat/view/h;

    .line 156
    iget-object p0, p0, Landroidx/appcompat/app/q$2;->a:Landroidx/appcompat/app/q;

    iget-object p0, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->requestLayout()V

    return-void
.end method
