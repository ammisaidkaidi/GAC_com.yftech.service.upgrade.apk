.class public Lcom/google/android/material/t/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/google/android/material/t/j;

.field private c:Landroid/widget/ScrollView;

.field private final d:[I

.field private final e:[I

.field private final f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/material/t/j;Landroid/widget/ScrollView;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 31
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/google/android/material/t/h;->d:[I

    .line 32
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/material/t/h;->e:[I

    .line 33
    new-instance v0, Lcom/google/android/material/t/h$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/t/h$1;-><init>(Lcom/google/android/material/t/h;)V

    iput-object v0, p0, Lcom/google/android/material/t/h;->f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 53
    iput-object p1, p0, Lcom/google/android/material/t/h;->a:Landroid/view/View;

    .line 54
    iput-object p2, p0, Lcom/google/android/material/t/h;->b:Lcom/google/android/material/t/j;

    .line 55
    iput-object p3, p0, Lcom/google/android/material/t/h;->c:Landroid/widget/ScrollView;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/google/android/material/t/h;->c:Landroid/widget/ScrollView;

    if-nez v0, :cond_0

    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/t/h;->c:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/google/android/material/t/h;->c:Landroid/widget/ScrollView;

    iget-object v1, p0, Lcom/google/android/material/t/h;->d:[I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    .line 112
    iget-object v0, p0, Lcom/google/android/material/t/h;->c:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/t/h;->e:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 113
    iget-object v0, p0, Lcom/google/android/material/t/h;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/t/h;->d:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/material/t/h;->e:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 114
    iget-object v1, p0, Lcom/google/android/material/t/h;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 115
    iget-object v2, p0, Lcom/google/android/material/t/h;->c:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-gez v0, :cond_1

    .line 119
    iget-object v2, p0, Lcom/google/android/material/t/h;->b:Lcom/google/android/material/t/j;

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v4

    .line 120
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 119
    invoke-virtual {v2, v0}, Lcom/google/android/material/t/j;->p(F)V

    .line 121
    iget-object p0, p0, Lcom/google/android/material/t/h;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    :cond_1
    add-int/2addr v0, v1

    if-le v0, v2, :cond_2

    sub-int/2addr v0, v2

    .line 124
    iget-object v2, p0, Lcom/google/android/material/t/h;->b:Lcom/google/android/material/t/j;

    int-to-float v0, v0

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float v0, v4, v0

    .line 125
    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 124
    invoke-virtual {v2, v0}, Lcom/google/android/material/t/j;->p(F)V

    .line 126
    iget-object p0, p0, Lcom/google/android/material/t/h;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/t/h;->b:Lcom/google/android/material/t/j;

    invoke-virtual {v0}, Lcom/google/android/material/t/j;->ae()F

    move-result v0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    .line 128
    iget-object v0, p0, Lcom/google/android/material/t/h;->b:Lcom/google/android/material/t/j;

    invoke-virtual {v0, v4}, Lcom/google/android/material/t/j;->p(F)V

    .line 129
    iget-object p0, p0, Lcom/google/android/material/t/h;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_3
    :goto_0
    return-void

    .line 107
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Scroll bar must contain a child to calculate interpolation."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Landroid/view/ViewTreeObserver;)V
    .locals 0
    .param p1    # Landroid/view/ViewTreeObserver;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 83
    iget-object p0, p0, Lcom/google/android/material/t/h;->f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method

.method public a(Landroid/widget/ScrollView;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/google/android/material/t/h;->c:Landroid/widget/ScrollView;

    return-void
.end method

.method public a(Lcom/google/android/material/t/j;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/google/android/material/t/h;->b:Lcom/google/android/material/t/j;

    return-void
.end method

.method public b(Landroid/view/ViewTreeObserver;)V
    .locals 0
    .param p1    # Landroid/view/ViewTreeObserver;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 93
    iget-object p0, p0, Lcom/google/android/material/t/h;->f:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-void
.end method
