.class public final Lcom/google/android/material/z/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/z/a/w;


# annotations
.annotation build Landroidx/annotation/am;
    a = 0x15
.end annotation


# static fields
.field static final a:F = 0.35f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 72
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 73
    new-instance v7, Lcom/google/android/material/z/a/e$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/z/a/e$1;-><init>(Landroid/view/View;FFFF)V

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

    const/high16 p0, 0x3f800000    # 1.0f

    const/4 p1, 0x0

    const v0, 0x3eb33333    # 0.35f

    .line 47
    invoke-static {p2, p1, p0, v0, p0}, Lcom/google/android/material/z/a/e;->a(Landroid/view/View;FFFF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
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

    const/4 p0, 0x0

    const/high16 p1, 0x3f800000    # 1.0f

    const v0, 0x3eb33333    # 0.35f

    .line 58
    invoke-static {p2, p1, p0, p0, v0}, Lcom/google/android/material/z/a/e;->a(Landroid/view/View;FFFF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method
