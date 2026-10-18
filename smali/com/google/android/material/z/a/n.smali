.class public final Lcom/google/android/material/z/a/n;
.super Lcom/google/android/material/z/a/r;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/am;
    a = 0x15
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/z/a/r<",
        "Lcom/google/android/material/z/a/s;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:F = 0.85f


# instance fields
.field private final b:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 38
    invoke-static {p1}, Lcom/google/android/material/z/a/n;->a(Z)Lcom/google/android/material/z/a/s;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/z/a/n;->c()Lcom/google/android/material/z/a/w;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/z/a/r;-><init>(Lcom/google/android/material/z/a/w;Lcom/google/android/material/z/a/w;)V

    .line 39
    iput-boolean p1, p0, Lcom/google/android/material/z/a/n;->b:Z

    return-void
.end method

.method private static a(Z)Lcom/google/android/material/z/a/s;
    .locals 1

    .line 47
    new-instance v0, Lcom/google/android/material/z/a/s;

    invoke-direct {v0, p0}, Lcom/google/android/material/z/a/s;-><init>(Z)V

    const p0, 0x3f59999a    # 0.85f

    .line 48
    invoke-virtual {v0, p0}, Lcom/google/android/material/z/a/s;->b(F)V

    .line 49
    invoke-virtual {v0, p0}, Lcom/google/android/material/z/a/s;->c(F)V

    return-object v0
.end method

.method private static c()Lcom/google/android/material/z/a/w;
    .locals 1

    .line 54
    new-instance v0, Lcom/google/android/material/z/a/d;

    invoke-direct {v0}, Lcom/google/android/material/z/a/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/material/z/a/w;)V
    .locals 0
    .param p1    # Lcom/google/android/material/z/a/w;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 30
    invoke-super {p0, p1}, Lcom/google/android/material/z/a/r;->a(Lcom/google/android/material/z/a/w;)V

    return-void
.end method

.method public a()Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/google/android/material/z/a/n;->b:Z

    return p0
.end method

.method public bridge synthetic b()Lcom/google/android/material/z/a/w;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 30
    invoke-super {p0}, Lcom/google/android/material/z/a/r;->b()Lcom/google/android/material/z/a/w;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/z/a/r;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/z/a/r;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method
