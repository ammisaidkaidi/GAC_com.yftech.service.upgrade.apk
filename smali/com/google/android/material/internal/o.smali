.class public final Lcom/google/android/material/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/internal/o$a;
    }
.end annotation


# instance fields
.field a:Landroid/animation/ValueAnimator;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/internal/o$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/material/internal/o$a;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private final d:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/internal/o;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/google/android/material/internal/o;->c:Lcom/google/android/material/internal/o$a;

    .line 42
    iput-object v0, p0, Lcom/google/android/material/internal/o;->a:Landroid/animation/ValueAnimator;

    .line 44
    new-instance v0, Lcom/google/android/material/internal/o$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/internal/o$1;-><init>(Lcom/google/android/material/internal/o;)V

    iput-object v0, p0, Lcom/google/android/material/internal/o;->d:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method

.method private a(Lcom/google/android/material/internal/o$a;)V
    .locals 0
    .param p1    # Lcom/google/android/material/internal/o$a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 93
    iget-object p1, p1, Lcom/google/android/material/internal/o$a;->b:Landroid/animation/ValueAnimator;

    iput-object p1, p0, Lcom/google/android/material/internal/o;->a:Landroid/animation/ValueAnimator;

    .line 94
    iget-object p0, p0, Lcom/google/android/material/internal/o;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private b()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/android/material/internal/o;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/google/android/material/internal/o;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/google/android/material/internal/o;->a:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/google/android/material/internal/o;->a:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/google/android/material/internal/o;->a:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/google/android/material/internal/o;->a:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method public a([I)V
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/google/android/material/internal/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 72
    iget-object v2, p0, Lcom/google/android/material/internal/o;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/o$a;

    .line 73
    iget-object v3, v2, Lcom/google/android/material/internal/o$a;->a:[I

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 78
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/internal/o;->c:Lcom/google/android/material/internal/o$a;

    if-ne v2, p1, :cond_2

    return-void

    .line 81
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/internal/o;->c:Lcom/google/android/material/internal/o$a;

    if-eqz p1, :cond_3

    .line 82
    invoke-direct {p0}, Lcom/google/android/material/internal/o;->b()V

    .line 85
    :cond_3
    iput-object v2, p0, Lcom/google/android/material/internal/o;->c:Lcom/google/android/material/internal/o$a;

    if-eqz v2, :cond_4

    .line 88
    invoke-direct {p0, v2}, Lcom/google/android/material/internal/o;->a(Lcom/google/android/material/internal/o$a;)V

    :cond_4
    return-void
.end method

.method public a([ILandroid/animation/ValueAnimator;)V
    .locals 1

    .line 62
    new-instance v0, Lcom/google/android/material/internal/o$a;

    invoke-direct {v0, p1, p2}, Lcom/google/android/material/internal/o$a;-><init>([ILandroid/animation/ValueAnimator;)V

    .line 63
    iget-object p1, p0, Lcom/google/android/material/internal/o;->d:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 64
    iget-object p0, p0, Lcom/google/android/material/internal/o;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
