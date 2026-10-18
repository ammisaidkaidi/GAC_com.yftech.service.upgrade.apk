.class Landroidx/fragment/app/k$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/k$3;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/k$3;


# direct methods
.method constructor <init>(Landroidx/fragment/app/k$3;)V
    .locals 0

    .line 1094
    iput-object p1, p0, Landroidx/fragment/app/k$3$1;->a:Landroidx/fragment/app/k$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1097
    iget-object v0, p0, Landroidx/fragment/app/k$3$1;->a:Landroidx/fragment/app/k$3;

    iget-object v0, v0, Landroidx/fragment/app/k$3;->b:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->aF()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Landroidx/fragment/app/k$3$1;->a:Landroidx/fragment/app/k$3;

    iget-object v0, v0, Landroidx/fragment/app/k$3;->b:Landroidx/fragment/app/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/d;->c(Landroid/view/View;)V

    .line 1099
    iget-object v0, p0, Landroidx/fragment/app/k$3$1;->a:Landroidx/fragment/app/k$3;

    iget-object v1, v0, Landroidx/fragment/app/k$3;->c:Landroidx/fragment/app/k;

    iget-object v0, p0, Landroidx/fragment/app/k$3$1;->a:Landroidx/fragment/app/k$3;

    iget-object v2, v0, Landroidx/fragment/app/k$3;->b:Landroidx/fragment/app/d;

    iget-object p0, p0, Landroidx/fragment/app/k$3$1;->a:Landroidx/fragment/app/k$3;

    iget-object p0, p0, Landroidx/fragment/app/k$3;->b:Landroidx/fragment/app/d;

    invoke-virtual {p0}, Landroidx/fragment/app/d;->aH()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/d;IIIZ)V

    :cond_0
    return-void
.end method
