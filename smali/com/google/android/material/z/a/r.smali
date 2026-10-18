.class abstract Lcom/google/android/material/z/a/r;
.super Landroid/transition/Visibility;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/am;
    a = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/google/android/material/z/a/w;",
        ">",
        "Landroid/transition/Visibility;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/z/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/material/z/a/w;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/material/z/a/w;Lcom/google/android/material/z/a/w;)V
    .locals 0
    .param p2    # Lcom/google/android/material/z/a/w;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/google/android/material/z/a/w;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Landroid/transition/Visibility;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/material/z/a/r;->a:Lcom/google/android/material/z/a/w;

    .line 47
    iput-object p2, p0, Lcom/google/android/material/z/a/r;->b:Lcom/google/android/material/z/a/w;

    .line 48
    sget-object p1, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1}, Lcom/google/android/material/z/a/r;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/Animator;
    .locals 3

    .line 79
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 80
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    .line 82
    iget-object v2, p0, Lcom/google/android/material/z/a/r;->a:Lcom/google/android/material/z/a/w;

    .line 84
    invoke-interface {v2, p1, p2}, Lcom/google/android/material/z/a/w;->a(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/z/a/r;->a:Lcom/google/android/material/z/a/w;

    .line 85
    invoke-interface {v2, p1, p2}, Lcom/google/android/material/z/a/w;->b(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    .line 87
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/z/a/r;->b:Lcom/google/android/material/z/a/w;

    if-eqz v2, :cond_3

    if-eqz p3, :cond_2

    .line 91
    iget-object p0, p0, Lcom/google/android/material/z/a/r;->b:Lcom/google/android/material/z/a/w;

    .line 93
    invoke-interface {p0, p1, p2}, Lcom/google/android/material/z/a/w;->a(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/z/a/r;->b:Lcom/google/android/material/z/a/w;

    .line 94
    invoke-interface {p0, p1, p2}, Lcom/google/android/material/z/a/w;->b(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_3

    .line 96
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_3
    invoke-static {v0, v1}, Lcom/google/android/material/a/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/material/z/a/w;)V
    .locals 0
    .param p1    # Lcom/google/android/material/z/a/w;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 63
    iput-object p1, p0, Lcom/google/android/material/z/a/r;->b:Lcom/google/android/material/z/a/w;

    return-void
.end method

.method public b()Lcom/google/android/material/z/a/w;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 58
    iget-object p0, p0, Lcom/google/android/material/z/a/r;->b:Lcom/google/android/material/z/a/w;

    return-object p0
.end method

.method public d()Lcom/google/android/material/z/a/w;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 53
    iget-object p0, p0, Lcom/google/android/material/z/a/r;->a:Lcom/google/android/material/z/a/w;

    return-object p0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    const/4 p3, 0x1

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/z/a/r;->a(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    const/4 p3, 0x0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/z/a/r;->a(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method
