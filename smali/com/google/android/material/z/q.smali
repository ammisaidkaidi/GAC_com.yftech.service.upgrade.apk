.class abstract Lcom/google/android/material/z/q;
.super Landroidx/j/bf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lcom/google/android/material/z/v;",
        ">",
        "Landroidx/j/bf;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/z/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TP;"
        }
    .end annotation
.end field

.field private b:Lcom/google/android/material/z/v;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/material/z/v;Lcom/google/android/material/z/v;)V
    .locals 0
    .param p2    # Lcom/google/android/material/z/v;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;",
            "Lcom/google/android/material/z/v;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroidx/j/bf;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/android/material/z/q;->a:Lcom/google/android/material/z/v;

    .line 42
    iput-object p2, p0, Lcom/google/android/material/z/q;->b:Lcom/google/android/material/z/v;

    .line 43
    sget-object p1, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1}, Lcom/google/android/material/z/q;->a(Landroid/animation/TimeInterpolator;)Landroidx/j/ag;

    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/Animator;
    .locals 3

    .line 74
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_0

    .line 77
    iget-object v2, p0, Lcom/google/android/material/z/q;->a:Lcom/google/android/material/z/v;

    .line 79
    invoke-interface {v2, p1, p2}, Lcom/google/android/material/z/v;->a(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/material/z/q;->a:Lcom/google/android/material/z/v;

    .line 80
    invoke-interface {v2, p1, p2}, Lcom/google/android/material/z/v;->b(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    .line 82
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_1
    iget-object v2, p0, Lcom/google/android/material/z/q;->b:Lcom/google/android/material/z/v;

    if-eqz v2, :cond_3

    if-eqz p3, :cond_2

    .line 86
    iget-object p0, p0, Lcom/google/android/material/z/q;->b:Lcom/google/android/material/z/v;

    .line 88
    invoke-interface {p0, p1, p2}, Lcom/google/android/material/z/v;->a(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/google/android/material/z/q;->b:Lcom/google/android/material/z/v;

    .line 89
    invoke-interface {p0, p1, p2}, Lcom/google/android/material/z/v;->b(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_3

    .line 91
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_3
    invoke-static {v0, v1}, Lcom/google/android/material/a/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;
    .locals 0

    const/4 p3, 0x1

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/z/q;->a(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/google/android/material/z/v;)V
    .locals 0
    .param p1    # Lcom/google/android/material/z/v;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 58
    iput-object p1, p0, Lcom/google/android/material/z/q;->b:Lcom/google/android/material/z/v;

    return-void
.end method

.method public b(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;
    .locals 0

    const/4 p3, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/z/q;->a(Landroid/view/ViewGroup;Landroid/view/View;Z)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public u()Lcom/google/android/material/z/v;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 53
    iget-object p0, p0, Lcom/google/android/material/z/q;->b:Lcom/google/android/material/z/v;

    return-object p0
.end method

.method public w()Lcom/google/android/material/z/v;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/google/android/material/z/q;->a:Lcom/google/android/material/z/v;

    return-object p0
.end method
