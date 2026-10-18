.class Landroidx/j/r$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/j/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/j/r;


# direct methods
.method constructor <init>(Landroidx/j/r;)V
    .locals 0

    .line 52
    iput-object p1, p0, Landroidx/j/r$1;->a:Landroidx/j/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 56
    iget-object v0, p0, Landroidx/j/r$1;->a:Landroidx/j/r;

    invoke-static {v0}, Landroidx/core/n/af;->h(Landroid/view/View;)V

    .line 57
    iget-object v0, p0, Landroidx/j/r$1;->a:Landroidx/j/r;

    iget-object v0, v0, Landroidx/j/r;->a:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/j/r$1;->a:Landroidx/j/r;

    iget-object v0, v0, Landroidx/j/r;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Landroidx/j/r$1;->a:Landroidx/j/r;

    iget-object v0, v0, Landroidx/j/r;->a:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/j/r$1;->a:Landroidx/j/r;

    iget-object v1, v1, Landroidx/j/r;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Landroidx/j/r$1;->a:Landroidx/j/r;

    iget-object v0, v0, Landroidx/j/r;->a:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/n/af;->h(Landroid/view/View;)V

    .line 60
    iget-object v0, p0, Landroidx/j/r$1;->a:Landroidx/j/r;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/j/r;->a:Landroid/view/ViewGroup;

    .line 61
    iget-object p0, p0, Landroidx/j/r$1;->a:Landroidx/j/r;

    iput-object v1, p0, Landroidx/j/r;->b:Landroid/view/View;

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
