.class public Lcom/google/android/material/behavior/SwipeDismissBehavior;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/behavior/SwipeDismissBehavior$b;,
        Lcom/google/android/material/behavior/SwipeDismissBehavior$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$b<",
        "TV;>;"
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field private static final m:F = 0.5f

.field private static final n:F = 0.0f

.field private static final o:F = 0.5f


# instance fields
.field g:Landroidx/f/b/c;

.field h:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

.field i:I

.field j:F

.field k:F

.field l:F

.field private p:Z

.field private q:F

.field private r:Z

.field private final s:Landroidx/f/b/c$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->q:F

    const/4 v1, 0x2

    .line 92
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->i:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 93
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->j:F

    .line 94
    iput v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->k:F

    .line 95
    iput v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->l:F

    .line 231
    new-instance v0, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior$1;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    iput-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->s:Landroidx/f/b/c$a;

    return-void
.end method

.method static a(FFF)F
    .locals 0

    .line 439
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method static a(III)I
    .locals 0

    .line 443
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Landroidx/f/b/c;

    if-nez v0, :cond_1

    .line 380
    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->r:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->q:F

    iget-object v1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->s:Landroidx/f/b/c$a;

    .line 382
    invoke-static {p1, v0, v1}, Landroidx/f/b/c;->a(Landroid/view/ViewGroup;FLandroidx/f/b/c$a;)Landroidx/f/b/c;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->s:Landroidx/f/b/c$a;

    .line 383
    invoke-static {p1, v0}, Landroidx/f/b/c;->a(Landroid/view/ViewGroup;Landroidx/f/b/c$a;)Landroidx/f/b/c;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Landroidx/f/b/c;

    :cond_1
    return-void
.end method

.method static b(FFF)F
    .locals 0

    sub-float/2addr p2, p0

    sub-float/2addr p1, p0

    div-float/2addr p2, p1

    return p2
.end method

.method private c(Landroid/view/View;)V
    .locals 3

    const/high16 v0, 0x100000

    .line 409
    invoke-static {p1, v0}, Landroidx/core/n/af;->f(Landroid/view/View;I)V

    .line 410
    invoke-virtual {p0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    sget-object v0, Landroidx/core/n/a/d$a;->u:Landroidx/core/n/a/d$a;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;

    invoke-direct {v2, p0}, Lcom/google/android/material/behavior/SwipeDismissBehavior$2;-><init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V

    invoke-static {p1, v0, v1, v2}, Landroidx/core/n/af;->a(Landroid/view/View;Landroidx/core/n/a/d$a;Ljava/lang/CharSequence;Landroidx/core/n/a/g;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 142
    invoke-static {v0, p1, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->j:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->i:I

    return-void
.end method

.method public a(Lcom/google/android/material/behavior/SwipeDismissBehavior$a;)V
    .locals 0
    .param p1    # Lcom/google/android/material/behavior/SwipeDismissBehavior$a;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 117
    iput-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->h:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

    return-void
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 178
    invoke-super {p0, p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;->a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result p1

    .line 179
    invoke-static {p2}, Landroidx/core/n/af;->i(Landroid/view/View;)I

    move-result p3

    if-nez p3, :cond_0

    const/4 p3, 0x1

    .line 181
    invoke-static {p2, p3}, Landroidx/core/n/af;->e(Landroid/view/View;I)V

    .line 182
    invoke-direct {p0, p2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->c(Landroid/view/View;)V

    :cond_0
    return p1
.end method

.method public a(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 190
    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->p:Z

    .line 192
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 195
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1, p2, v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->p:Z

    .line 196
    iget-boolean v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->p:Z

    goto :goto_0

    .line 201
    :cond_0
    :pswitch_1
    iput-boolean v3, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->p:Z

    :goto_0
    if-eqz v0, :cond_1

    .line 206
    invoke-direct {p0, p1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(Landroid/view/ViewGroup;)V

    .line 207
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Landroidx/f/b/c;

    invoke-virtual {p0, p3}, Landroidx/f/b/c;->a(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_1
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()Lcom/google/android/material/behavior/SwipeDismissBehavior$a;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation build Landroidx/annotation/ax;
    .end annotation

    .line 123
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->h:Lcom/google/android/material/behavior/SwipeDismissBehavior$a;

    return-object p0
.end method

.method public b(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 151
    invoke-static {v0, p1, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->k:F

    return-void
.end method

.method public b(Landroid/view/View;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 p0, 0x1

    return p0
.end method

.method public b(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 214
    iget-object p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Landroidx/f/b/c;

    if-eqz p1, :cond_0

    .line 215
    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Landroidx/f/b/c;

    invoke-virtual {p0, p3}, Landroidx/f/b/c;->b(Landroid/view/MotionEvent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()I
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Landroidx/f/b/c;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:Landroidx/f/b/c;

    invoke-virtual {p0}, Landroidx/f/b/c;->b()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 160
    invoke-static {v0, p1, v1}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->a(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->l:F

    return-void
.end method

.method public d(F)V
    .locals 0

    .line 171
    iput p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->q:F

    const/4 p1, 0x1

    .line 172
    iput-boolean p1, p0, Lcom/google/android/material/behavior/SwipeDismissBehavior;->r:Z

    return-void
.end method
