.class Landroidx/fragment/app/k$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/k;->a(Landroidx/fragment/app/d;Landroidx/fragment/app/k$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Landroidx/fragment/app/d;

.field final synthetic d:Landroidx/fragment/app/k;


# direct methods
.method constructor <init>(Landroidx/fragment/app/k;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/d;)V
    .locals 0

    .line 1114
    iput-object p1, p0, Landroidx/fragment/app/k$4;->d:Landroidx/fragment/app/k;

    iput-object p2, p0, Landroidx/fragment/app/k$4;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/k$4;->b:Landroid/view/View;

    iput-object p4, p0, Landroidx/fragment/app/k$4;->c:Landroidx/fragment/app/d;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 1117
    iget-object p1, p0, Landroidx/fragment/app/k$4;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/k$4;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1120
    iget-object p1, p0, Landroidx/fragment/app/k$4;->c:Landroidx/fragment/app/d;

    invoke-virtual {p1}, Landroidx/fragment/app/d;->aG()Landroid/animation/Animator;

    move-result-object p1

    .line 1121
    iget-object v0, p0, Landroidx/fragment/app/k$4;->c:Landroidx/fragment/app/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/d;->a(Landroid/animation/Animator;)V

    if-eqz p1, :cond_0

    .line 1122
    iget-object p1, p0, Landroidx/fragment/app/k$4;->a:Landroid/view/ViewGroup;

    iget-object v0, p0, Landroidx/fragment/app/k$4;->b:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-gez p1, :cond_0

    .line 1123
    iget-object v0, p0, Landroidx/fragment/app/k$4;->d:Landroidx/fragment/app/k;

    iget-object v1, p0, Landroidx/fragment/app/k$4;->c:Landroidx/fragment/app/d;

    iget-object p0, p0, Landroidx/fragment/app/k$4;->c:Landroidx/fragment/app/d;

    invoke-virtual {p0}, Landroidx/fragment/app/d;->aH()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/d;IIIZ)V

    :cond_0
    return-void
.end method
