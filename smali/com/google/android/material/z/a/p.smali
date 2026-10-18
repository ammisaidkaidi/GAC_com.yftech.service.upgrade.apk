.class public final Lcom/google/android/material/z/a/p;
.super Lcom/google/android/material/z/a/r;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/am;
    a = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/z/a/r<",
        "Lcom/google/android/material/z/a/e;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:F = 0.92f


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-static {}, Lcom/google/android/material/z/a/p;->a()Lcom/google/android/material/z/a/e;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/z/a/p;->c()Lcom/google/android/material/z/a/w;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/z/a/r;-><init>(Lcom/google/android/material/z/a/w;Lcom/google/android/material/z/a/w;)V

    return-void
.end method

.method private static a()Lcom/google/android/material/z/a/e;
    .locals 1

    .line 37
    new-instance v0, Lcom/google/android/material/z/a/e;

    invoke-direct {v0}, Lcom/google/android/material/z/a/e;-><init>()V

    return-object v0
.end method

.method private static c()Lcom/google/android/material/z/a/w;
    .locals 2

    .line 41
    new-instance v0, Lcom/google/android/material/z/a/s;

    invoke-direct {v0}, Lcom/google/android/material/z/a/s;-><init>()V

    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Lcom/google/android/material/z/a/s;->b(Z)V

    const v1, 0x3f6b851f    # 0.92f

    .line 43
    invoke-virtual {v0, v1}, Lcom/google/android/material/z/a/s;->c(F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/material/z/a/w;)V
    .locals 0
    .param p1    # Lcom/google/android/material/z/a/w;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 27
    invoke-super {p0, p1}, Lcom/google/android/material/z/a/r;->a(Lcom/google/android/material/z/a/w;)V

    return-void
.end method

.method public bridge synthetic b()Lcom/google/android/material/z/a/w;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 27
    invoke-super {p0}, Lcom/google/android/material/z/a/r;->b()Lcom/google/android/material/z/a/w;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/z/a/r;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/z/a/r;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method
