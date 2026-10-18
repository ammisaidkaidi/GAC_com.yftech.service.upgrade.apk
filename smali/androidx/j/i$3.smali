.class Landroidx/j/i$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/i;->a(Landroidx/j/an;Landroidx/j/an;Z)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/graphics/Matrix;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroidx/j/i$c;

.field final synthetic e:Landroidx/j/i$b;

.field final synthetic f:Landroidx/j/i;

.field private g:Z

.field private h:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Landroidx/j/i;ZLandroid/graphics/Matrix;Landroid/view/View;Landroidx/j/i$c;Landroidx/j/i$b;)V
    .locals 0

    .line 327
    iput-object p1, p0, Landroidx/j/i$3;->f:Landroidx/j/i;

    iput-boolean p2, p0, Landroidx/j/i$3;->a:Z

    iput-object p3, p0, Landroidx/j/i$3;->b:Landroid/graphics/Matrix;

    iput-object p4, p0, Landroidx/j/i$3;->c:Landroid/view/View;

    iput-object p5, p0, Landroidx/j/i$3;->d:Landroidx/j/i$c;

    iput-object p6, p0, Landroidx/j/i$3;->e:Landroidx/j/i$b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 329
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Landroidx/j/i$3;->h:Landroid/graphics/Matrix;

    return-void
.end method

.method private a(Landroid/graphics/Matrix;)V
    .locals 2

    .line 362
    iget-object v0, p0, Landroidx/j/i$3;->h:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 363
    iget-object p1, p0, Landroidx/j/i$3;->c:Landroid/view/View;

    sget v0, Landroidx/j/aa$e;->transition_transform:I

    iget-object v1, p0, Landroidx/j/i$3;->h:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 364
    iget-object p1, p0, Landroidx/j/i$3;->d:Landroidx/j/i$c;

    iget-object p0, p0, Landroidx/j/i$3;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroidx/j/i$c;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Landroidx/j/i$3;->g:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 338
    iget-boolean p1, p0, Landroidx/j/i$3;->g:Z

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 339
    iget-boolean p1, p0, Landroidx/j/i$3;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/j/i$3;->f:Landroidx/j/i;

    iget-boolean p1, p1, Landroidx/j/i;->a:Z

    if-eqz p1, :cond_0

    .line 340
    iget-object p1, p0, Landroidx/j/i$3;->b:Landroid/graphics/Matrix;

    invoke-direct {p0, p1}, Landroidx/j/i$3;->a(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 342
    :cond_0
    iget-object p1, p0, Landroidx/j/i$3;->c:Landroid/view/View;

    sget v1, Landroidx/j/aa$e;->transition_transform:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 343
    iget-object p1, p0, Landroidx/j/i$3;->c:Landroid/view/View;

    sget v1, Landroidx/j/aa$e;->parent_matrix:I

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 346
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/j/i$3;->c:Landroid/view/View;

    invoke-static {p1, v0}, Landroidx/j/ay;->c(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 347
    iget-object p1, p0, Landroidx/j/i$3;->d:Landroidx/j/i$c;

    iget-object p0, p0, Landroidx/j/i$3;->c:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroidx/j/i$c;->a(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 0

    .line 352
    iget-object p1, p0, Landroidx/j/i$3;->e:Landroidx/j/i$b;

    invoke-virtual {p1}, Landroidx/j/i$b;->a()Landroid/graphics/Matrix;

    move-result-object p1

    .line 353
    invoke-direct {p0, p1}, Landroidx/j/i$3;->a(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 0

    .line 358
    iget-object p0, p0, Landroidx/j/i$3;->c:Landroid/view/View;

    invoke-static {p0}, Landroidx/j/i;->a(Landroid/view/View;)V

    return-void
.end method
