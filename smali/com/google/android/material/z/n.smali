.class public final Lcom/google/android/material/z/n;
.super Lcom/google/android/material/z/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/z/q<",
        "Lcom/google/android/material/z/d;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:F = 0.8f

.field private static final b:F = 0.3f


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-static {}, Lcom/google/android/material/z/n;->b()Lcom/google/android/material/z/d;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/z/n;->v()Lcom/google/android/material/z/v;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/z/q;-><init>(Lcom/google/android/material/z/v;Lcom/google/android/material/z/v;)V

    return-void
.end method

.method private static b()Lcom/google/android/material/z/d;
    .locals 2

    .line 33
    new-instance v0, Lcom/google/android/material/z/d;

    invoke-direct {v0}, Lcom/google/android/material/z/d;-><init>()V

    const v1, 0x3e99999a    # 0.3f

    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/material/z/d;->a(F)V

    return-object v0
.end method

.method private static v()Lcom/google/android/material/z/v;
    .locals 2

    .line 39
    new-instance v0, Lcom/google/android/material/z/r;

    invoke-direct {v0}, Lcom/google/android/material/z/r;-><init>()V

    const/4 v1, 0x0

    .line 40
    invoke-virtual {v0, v1}, Lcom/google/android/material/z/r;->b(Z)V

    const v1, 0x3f4ccccd    # 0.8f

    .line 41
    invoke-virtual {v0, v1}, Lcom/google/android/material/z/r;->c(F)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;
    .locals 0

    .line 23
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

    .line 23
    invoke-super {p0, p1}, Lcom/google/android/material/z/q;->a(Lcom/google/android/material/z/v;)V

    return-void
.end method

.method public bridge synthetic b(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;
    .locals 0

    .line 23
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/z/q;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic u()Lcom/google/android/material/z/v;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 23
    invoke-super {p0}, Lcom/google/android/material/z/q;->u()Lcom/google/android/material/z/v;

    move-result-object p0

    return-object p0
.end method
