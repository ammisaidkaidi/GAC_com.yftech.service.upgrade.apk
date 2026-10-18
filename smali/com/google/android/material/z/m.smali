.class public final Lcom/google/android/material/z/m;
.super Lcom/google/android/material/z/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/z/q<",
        "Lcom/google/android/material/z/r;",
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

    .line 33
    invoke-static {p1}, Lcom/google/android/material/z/m;->a(Z)Lcom/google/android/material/z/r;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/z/m;->v()Lcom/google/android/material/z/v;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/z/q;-><init>(Lcom/google/android/material/z/v;Lcom/google/android/material/z/v;)V

    .line 34
    iput-boolean p1, p0, Lcom/google/android/material/z/m;->b:Z

    return-void
.end method

.method private static a(Z)Lcom/google/android/material/z/r;
    .locals 1

    .line 42
    new-instance v0, Lcom/google/android/material/z/r;

    invoke-direct {v0, p0}, Lcom/google/android/material/z/r;-><init>(Z)V

    const p0, 0x3f59999a    # 0.85f

    .line 43
    invoke-virtual {v0, p0}, Lcom/google/android/material/z/r;->b(F)V

    .line 44
    invoke-virtual {v0, p0}, Lcom/google/android/material/z/r;->c(F)V

    return-object v0
.end method

.method private static v()Lcom/google/android/material/z/v;
    .locals 1

    .line 49
    new-instance v0, Lcom/google/android/material/z/d;

    invoke-direct {v0}, Lcom/google/android/material/z/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;
    .locals 0

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/z/q;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/android/material/z/v;)V
    .locals 0
    .param p1    # Lcom/google/android/material/z/v;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 26
    invoke-super {p0, p1}, Lcom/google/android/material/z/q;->a(Lcom/google/android/material/z/v;)V

    return-void
.end method

.method public bridge synthetic b(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;
    .locals 0

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/z/q;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public b()Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/google/android/material/z/m;->b:Z

    return p0
.end method

.method public bridge synthetic u()Lcom/google/android/material/z/v;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 26
    invoke-super {p0}, Lcom/google/android/material/z/q;->u()Lcom/google/android/material/z/v;

    move-result-object p0

    return-object p0
.end method
