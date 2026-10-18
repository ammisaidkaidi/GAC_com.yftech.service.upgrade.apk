.class public final Lcom/google/android/material/z/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/z/v;


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 46
    invoke-direct {p0, v0}, Lcom/google/android/material/z/r;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    iput v0, p0, Lcom/google/android/material/z/r;->a:F

    const v1, 0x3f8ccccd    # 1.1f

    .line 38
    iput v1, p0, Lcom/google/android/material/z/r;->b:F

    const v1, 0x3f4ccccd    # 0.8f

    .line 39
    iput v1, p0, Lcom/google/android/material/z/r;->c:F

    .line 40
    iput v0, p0, Lcom/google/android/material/z/r;->d:F

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/google/android/material/z/r;->f:Z

    .line 50
    iput-boolean p1, p0, Lcom/google/android/material/z/r;->e:Z

    return-void
.end method

.method private static a(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 6

    const/4 v0, 0x2

    .line 171
    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v0, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v5, 0x1

    aput p2, v3, v5

    .line 173
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v0, v0, [F

    aput p1, v0, v4

    aput p2, v0, v5

    .line 174
    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v1, v5

    .line 171
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
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

    .line 149
    iget-boolean p1, p0, Lcom/google/android/material/z/r;->e:Z

    if-eqz p1, :cond_0

    .line 150
    iget p1, p0, Lcom/google/android/material/z/r;->c:F

    iget p0, p0, Lcom/google/android/material/z/r;->d:F

    invoke-static {p2, p1, p0}, Lcom/google/android/material/z/r;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    .line 152
    :cond_0
    iget p1, p0, Lcom/google/android/material/z/r;->b:F

    iget p0, p0, Lcom/google/android/material/z/r;->a:F

    invoke-static {p2, p1, p0}, Lcom/google/android/material/z/r;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public a(F)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/google/android/material/z/r;->a:F

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/google/android/material/z/r;->e:Z

    return-void
.end method

.method public a()Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/google/android/material/z/r;->e:Z

    return p0
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

    .line 159
    iget-boolean p1, p0, Lcom/google/android/material/z/r;->f:Z

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 163
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/z/r;->e:Z

    if-eqz p1, :cond_1

    .line 164
    iget p1, p0, Lcom/google/android/material/z/r;->a:F

    iget p0, p0, Lcom/google/android/material/z/r;->b:F

    invoke-static {p2, p1, p0}, Lcom/google/android/material/z/r;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    .line 166
    :cond_1
    iget p1, p0, Lcom/google/android/material/z/r;->d:F

    iget p0, p0, Lcom/google/android/material/z/r;->c:F

    invoke-static {p2, p1, p0}, Lcom/google/android/material/z/r;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public b(F)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/google/android/material/z/r;->b:F

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/google/android/material/z/r;->f:Z

    return-void
.end method

.method public b()Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/google/android/material/z/r;->f:Z

    return p0
.end method

.method public c()F
    .locals 0

    .line 87
    iget p0, p0, Lcom/google/android/material/z/r;->a:F

    return p0
.end method

.method public c(F)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/google/android/material/z/r;->c:F

    return-void
.end method

.method public d()F
    .locals 0

    .line 103
    iget p0, p0, Lcom/google/android/material/z/r;->b:F

    return p0
.end method

.method public d(F)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/google/android/material/z/r;->d:F

    return-void
.end method

.method public e()F
    .locals 0

    .line 119
    iget p0, p0, Lcom/google/android/material/z/r;->c:F

    return p0
.end method

.method public f()F
    .locals 0

    .line 135
    iget p0, p0, Lcom/google/android/material/z/r;->d:F

    return p0
.end method
