.class Landroidx/core/n/aj$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/n/aj;->a(Landroid/view/View;Landroidx/core/n/ak;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/n/ak;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/core/n/aj;


# direct methods
.method constructor <init>(Landroidx/core/n/aj;Landroidx/core/n/ak;Landroid/view/View;)V
    .locals 0

    .line 742
    iput-object p1, p0, Landroidx/core/n/aj$1;->c:Landroidx/core/n/aj;

    iput-object p2, p0, Landroidx/core/n/aj$1;->a:Landroidx/core/n/ak;

    iput-object p3, p0, Landroidx/core/n/aj$1;->b:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 745
    iget-object p1, p0, Landroidx/core/n/aj$1;->a:Landroidx/core/n/ak;

    iget-object p0, p0, Landroidx/core/n/aj$1;->b:Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/core/n/ak;->c(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 750
    iget-object p1, p0, Landroidx/core/n/aj$1;->a:Landroidx/core/n/ak;

    iget-object p0, p0, Landroidx/core/n/aj$1;->b:Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/core/n/ak;->b(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 755
    iget-object p1, p0, Landroidx/core/n/aj$1;->a:Landroidx/core/n/ak;

    iget-object p0, p0, Landroidx/core/n/aj$1;->b:Landroid/view/View;

    invoke-interface {p1, p0}, Landroidx/core/n/ak;->a(Landroid/view/View;)V

    return-void
.end method
