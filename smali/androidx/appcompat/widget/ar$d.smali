.class public Landroidx/appcompat/widget/ar$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ar;

.field private b:Z

.field private c:I


# direct methods
.method protected constructor <init>(Landroidx/appcompat/widget/ar;)V
    .locals 0

    .line 572
    iput-object p1, p0, Landroidx/appcompat/widget/ar$d;->a:Landroidx/appcompat/widget/ar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 573
    iput-boolean p1, p0, Landroidx/appcompat/widget/ar$d;->b:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewPropertyAnimator;I)Landroidx/appcompat/widget/ar$d;
    .locals 0

    .line 578
    iput p2, p0, Landroidx/appcompat/widget/ar$d;->c:I

    .line 579
    iget-object p2, p0, Landroidx/appcompat/widget/ar$d;->a:Landroidx/appcompat/widget/ar;

    iput-object p1, p2, Landroidx/appcompat/widget/ar;->e:Landroid/view/ViewPropertyAnimator;

    return-object p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 599
    iput-boolean p1, p0, Landroidx/appcompat/widget/ar$d;->b:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 591
    iget-boolean p1, p0, Landroidx/appcompat/widget/ar$d;->b:Z

    if-eqz p1, :cond_0

    return-void

    .line 593
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/ar$d;->a:Landroidx/appcompat/widget/ar;

    const/4 v0, 0x0

    iput-object v0, p1, Landroidx/appcompat/widget/ar;->e:Landroid/view/ViewPropertyAnimator;

    .line 594
    iget-object p1, p0, Landroidx/appcompat/widget/ar$d;->a:Landroidx/appcompat/widget/ar;

    iget p0, p0, Landroidx/appcompat/widget/ar$d;->c:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ar;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 585
    iget-object p1, p0, Landroidx/appcompat/widget/ar$d;->a:Landroidx/appcompat/widget/ar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ar;->setVisibility(I)V

    .line 586
    iput-boolean v0, p0, Landroidx/appcompat/widget/ar$d;->b:Z

    return-void
.end method
