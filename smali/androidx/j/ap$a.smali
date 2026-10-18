.class Landroidx/j/ap$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"

# interfaces
.implements Landroidx/j/ag$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/j/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Landroid/view/View;

.field private final c:I

.field private final d:I

.field private e:[I

.field private f:F

.field private g:F

.field private final h:F

.field private final i:F


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .locals 0

    .line 99
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 100
    iput-object p1, p0, Landroidx/j/ap$a;->b:Landroid/view/View;

    .line 101
    iput-object p2, p0, Landroidx/j/ap$a;->a:Landroid/view/View;

    .line 102
    iget-object p1, p0, Landroidx/j/ap$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p3, p1

    iput p3, p0, Landroidx/j/ap$a;->c:I

    .line 103
    iget-object p1, p0, Landroidx/j/ap$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p4, p1

    iput p4, p0, Landroidx/j/ap$a;->d:I

    .line 104
    iput p5, p0, Landroidx/j/ap$a;->h:F

    .line 105
    iput p6, p0, Landroidx/j/ap$a;->i:F

    .line 106
    iget-object p1, p0, Landroidx/j/ap$a;->a:Landroid/view/View;

    sget p2, Landroidx/j/aa$e;->transition_position:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroidx/j/ap$a;->e:[I

    .line 107
    iget-object p1, p0, Landroidx/j/ap$a;->e:[I

    if-eqz p1, :cond_0

    .line 108
    iget-object p0, p0, Landroidx/j/ap$a;->a:Landroid/view/View;

    sget p1, Landroidx/j/aa$e;->transition_position:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/j/ag;)V
    .locals 0
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    return-void
.end method

.method public b(Landroidx/j/ag;)V
    .locals 2
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 142
    iget-object v0, p0, Landroidx/j/ap$a;->b:Landroid/view/View;

    iget v1, p0, Landroidx/j/ap$a;->h:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 143
    iget-object v0, p0, Landroidx/j/ap$a;->b:Landroid/view/View;

    iget v1, p0, Landroidx/j/ap$a;->i:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 144
    invoke-virtual {p1, p0}, Landroidx/j/ag;->b(Landroidx/j/ag$e;)Landroidx/j/ag;

    return-void
.end method

.method public c(Landroidx/j/ag;)V
    .locals 0
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    return-void
.end method

.method public d(Landroidx/j/ag;)V
    .locals 0
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    return-void
.end method

.method public e(Landroidx/j/ag;)V
    .locals 0
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 114
    iget-object p1, p0, Landroidx/j/ap$a;->e:[I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    .line 115
    new-array p1, p1, [I

    iput-object p1, p0, Landroidx/j/ap$a;->e:[I

    .line 117
    :cond_0
    iget-object p1, p0, Landroidx/j/ap$a;->e:[I

    const/4 v0, 0x0

    iget v1, p0, Landroidx/j/ap$a;->c:I

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/j/ap$a;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p1, v0

    .line 118
    iget-object p1, p0, Landroidx/j/ap$a;->e:[I

    const/4 v0, 0x1

    iget v1, p0, Landroidx/j/ap$a;->d:I

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/j/ap$a;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p1, v0

    .line 119
    iget-object p1, p0, Landroidx/j/ap$a;->a:Landroid/view/View;

    sget v0, Landroidx/j/aa$e;->transition_position:I

    iget-object p0, p0, Landroidx/j/ap$a;->e:[I

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    .line 124
    iget-object p1, p0, Landroidx/j/ap$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Landroidx/j/ap$a;->f:F

    .line 125
    iget-object p1, p0, Landroidx/j/ap$a;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Landroidx/j/ap$a;->g:F

    .line 126
    iget-object p1, p0, Landroidx/j/ap$a;->b:Landroid/view/View;

    iget v0, p0, Landroidx/j/ap$a;->h:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 127
    iget-object p1, p0, Landroidx/j/ap$a;->b:Landroid/view/View;

    iget p0, p0, Landroidx/j/ap$a;->i:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    .line 132
    iget-object p1, p0, Landroidx/j/ap$a;->b:Landroid/view/View;

    iget v0, p0, Landroidx/j/ap$a;->f:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 133
    iget-object p1, p0, Landroidx/j/ap$a;->b:Landroid/view/View;

    iget p0, p0, Landroidx/j/ap$a;->g:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
