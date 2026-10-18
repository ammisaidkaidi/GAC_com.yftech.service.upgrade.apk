.class public final Lcom/google/android/material/z/i;
.super Landroidx/j/bf;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroidx/j/bf;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroidx/j/an;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p4    # Landroidx/j/an;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 p0, 0x1

    .line 41
    new-array p0, p0, [F

    const/4 p1, 0x0

    const/4 p2, 0x0

    aput p2, p0, p1

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroidx/j/an;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p4    # Landroidx/j/an;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 p0, 0x1

    .line 51
    new-array p0, p0, [F

    const/4 p1, 0x0

    const/4 p2, 0x0

    aput p2, p0, p1

    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method
