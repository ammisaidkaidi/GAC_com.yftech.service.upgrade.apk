.class Lcom/google/android/material/appbar/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/google/android/material/appbar/e;->f:Z

    .line 38
    iput-boolean v0, p0, Lcom/google/android/material/appbar/e;->g:Z

    .line 41
    iput-object p1, p0, Lcom/google/android/material/appbar/e;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/android/material/appbar/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/e;->b:I

    .line 47
    iget-object v0, p0, Lcom/google/android/material/appbar/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/e;->c:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/google/android/material/appbar/e;->f:Z

    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/google/android/material/appbar/e;->f:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/appbar/e;->d:I

    if-eq v0, p1, :cond_0

    .line 63
    iput p1, p0, Lcom/google/android/material/appbar/e;->d:I

    .line 64
    invoke-virtual {p0}, Lcom/google/android/material/appbar/e;->b()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method b()V
    .locals 4

    .line 51
    iget-object v0, p0, Lcom/google/android/material/appbar/e;->a:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/appbar/e;->d:I

    iget-object v2, p0, Lcom/google/android/material/appbar/e;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, Lcom/google/android/material/appbar/e;->b:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/n/af;->n(Landroid/view/View;I)V

    .line 52
    iget-object v0, p0, Lcom/google/android/material/appbar/e;->a:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/appbar/e;->e:I

    iget-object v2, p0, Lcom/google/android/material/appbar/e;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget p0, p0, Lcom/google/android/material/appbar/e;->c:I

    sub-int/2addr v2, p0

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Landroidx/core/n/af;->o(Landroid/view/View;I)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/google/android/material/appbar/e;->g:Z

    return-void
.end method

.method public b(I)Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/google/android/material/appbar/e;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/material/appbar/e;->e:I

    if-eq v0, p1, :cond_0

    .line 78
    iput p1, p0, Lcom/google/android/material/appbar/e;->e:I

    .line 79
    invoke-virtual {p0}, Lcom/google/android/material/appbar/e;->b()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()I
    .locals 0

    .line 86
    iget p0, p0, Lcom/google/android/material/appbar/e;->d:I

    return p0
.end method

.method public d()I
    .locals 0

    .line 90
    iget p0, p0, Lcom/google/android/material/appbar/e;->e:I

    return p0
.end method

.method public e()I
    .locals 0

    .line 94
    iget p0, p0, Lcom/google/android/material/appbar/e;->b:I

    return p0
.end method

.method public f()I
    .locals 0

    .line 98
    iget p0, p0, Lcom/google/android/material/appbar/e;->c:I

    return p0
.end method

.method public g()Z
    .locals 0

    .line 106
    iget-boolean p0, p0, Lcom/google/android/material/appbar/e;->f:Z

    return p0
.end method

.method public h()Z
    .locals 0

    .line 114
    iget-boolean p0, p0, Lcom/google/android/material/appbar/e;->g:Z

    return p0
.end method
