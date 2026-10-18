.class public final Lcom/google/android/material/z/a/s;
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

.field private b:F

.field private c:F

.field private d:F

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, v0}, Lcom/google/android/material/z/a/s;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 42
    iput v0, p0, Lcom/google/android/material/z/a/s;->a:F

    const v1, 0x3f8ccccd    # 1.1f

    .line 43
    iput v1, p0, Lcom/google/android/material/z/a/s;->b:F

    const v1, 0x3f4ccccd    # 0.8f

    .line 44
    iput v1, p0, Lcom/google/android/material/z/a/s;->c:F

    .line 45
    iput v0, p0, Lcom/google/android/material/z/a/s;->d:F

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/google/android/material/z/a/s;->f:Z

    .line 55
    iput-boolean p1, p0, Lcom/google/android/material/z/a/s;->e:Z

    return-void
.end method

.method private static a(Landroid/view/View;FF)Landroid/animation/Animator;
    .locals 6

    const/4 v0, 0x2

    .line 176
    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v3, v0, [F

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v5, 0x1

    aput p2, v3, v5

    .line 178
    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v0, v0, [F

    aput p1, v0, v4

    aput p2, v0, v5

    .line 179
    invoke-static {v2, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v1, v5

    .line 176
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

    .line 154
    iget-boolean p1, p0, Lcom/google/android/material/z/a/s;->e:Z

    if-eqz p1, :cond_0

    .line 155
    iget p1, p0, Lcom/google/android/material/z/a/s;->c:F

    iget p0, p0, Lcom/google/android/material/z/a/s;->d:F

    invoke-static {p2, p1, p0}, Lcom/google/android/material/z/a/s;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    .line 157
    :cond_0
    iget p1, p0, Lcom/google/android/material/z/a/s;->b:F

    iget p0, p0, Lcom/google/android/material/z/a/s;->a:F

    invoke-static {p2, p1, p0}, Lcom/google/android/material/z/a/s;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public a(F)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/google/android/material/z/a/s;->a:F

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/google/android/material/z/a/s;->e:Z

    return-void
.end method

.method public a()Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/google/android/material/z/a/s;->e:Z

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

    .line 164
    iget-boolean p1, p0, Lcom/google/android/material/z/a/s;->f:Z

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 168
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/z/a/s;->e:Z

    if-eqz p1, :cond_1

    .line 169
    iget p1, p0, Lcom/google/android/material/z/a/s;->a:F

    iget p0, p0, Lcom/google/android/material/z/a/s;->b:F

    invoke-static {p2, p1, p0}, Lcom/google/android/material/z/a/s;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0

    .line 171
    :cond_1
    iget p1, p0, Lcom/google/android/material/z/a/s;->d:F

    iget p0, p0, Lcom/google/android/material/z/a/s;->c:F

    invoke-static {p2, p1, p0}, Lcom/google/android/material/z/a/s;->a(Landroid/view/View;FF)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public b(F)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/google/android/material/z/a/s;->b:F

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/google/android/material/z/a/s;->f:Z

    return-void
.end method

.method public b()Z
    .locals 0

    .line 74
    iget-boolean p0, p0, Lcom/google/android/material/z/a/s;->f:Z

    return p0
.end method

.method public c()F
    .locals 0

    .line 92
    iget p0, p0, Lcom/google/android/material/z/a/s;->a:F

    return p0
.end method

.method public c(F)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/google/android/material/z/a/s;->c:F

    return-void
.end method

.method public d()F
    .locals 0

    .line 108
    iget p0, p0, Lcom/google/android/material/z/a/s;->b:F

    return p0
.end method

.method public d(F)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/google/android/material/z/a/s;->d:F

    return-void
.end method

.method public e()F
    .locals 0

    .line 124
    iget p0, p0, Lcom/google/android/material/z/a/s;->c:F

    return p0
.end method

.method public f()F
    .locals 0

    .line 140
    iget p0, p0, Lcom/google/android/material/z/a/s;->d:F

    return p0
.end method
