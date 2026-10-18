.class public final Lcom/google/android/material/z/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/z/a/w;


# annotations
.annotation build Landroidx/annotation/am;
    a = 0x15
.end annotation


# instance fields
.field private a:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 38
    iput v0, p0, Lcom/google/android/material/z/a/d;->a:F

    return-void
.end method

.method private static a(Landroid/view/View;FFFF)Landroid/animation/Animator;
    .locals 8
    .param p3    # F
        .annotation build Landroidx/annotation/r;
            a = 0.0
            b = 1.0
        .end annotation
    .end param
    .param p4    # F
        .annotation build Landroidx/annotation/r;
            a = 0.0
            b = 1.0
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 89
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 90
    new-instance v7, Lcom/google/android/material/z/a/d$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/z/a/d$1;-><init>(Landroid/view/View;FFFF)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a()F
    .locals 0

    .line 46
    iget p0, p0, Lcom/google/android/material/z/a/d;->a:F

    return p0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 64
    iget p0, p0, Lcom/google/android/material/z/a/d;->a:F

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, p1, v0, p1, p0}, Lcom/google/android/material/z/a/d;->a(Landroid/view/View;FFFF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public a(F)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/google/android/material/z/a/d;->a:F

    return-void
.end method

.method public b(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    const/4 p0, 0x0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 75
    invoke-static {p2, p1, p0, p0, p1}, Lcom/google/android/material/z/a/d;->a(Landroid/view/View;FFFF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method
