.class public final Lcom/google/android/material/l/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/view/View;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private b:Z

.field private c:I
    .annotation build Landroidx/annotation/w;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/material/l/b;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/google/android/material/l/c;->b:Z

    .line 37
    iput v0, p0, Lcom/google/android/material/l/c;->c:I

    .line 41
    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/google/android/material/l/c;->a:Landroid/view/View;

    return-void
.end method

.method private d()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/google/android/material/l/c;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 92
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    .line 93
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object p0, p0, Lcom/google/android/material/l/c;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param

    .line 81
    iput p1, p0, Lcom/google/android/material/l/c;->c:I

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const-string v0, "expanded"

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/material/l/c;->b:Z

    const-string v0, "expandedComponentIdHint"

    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/l/c;->c:I

    .line 74
    iget-boolean p1, p0, Lcom/google/android/material/l/c;->b:Z

    if-eqz p1, :cond_0

    .line 75
    invoke-direct {p0}, Lcom/google/android/material/l/c;->d()V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/google/android/material/l/c;->b:Z

    return p0
.end method

.method public a(Z)Z
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/google/android/material/l/c;->b:Z

    if-eq v0, p1, :cond_0

    .line 47
    iput-boolean p1, p0, Lcom/google/android/material/l/c;->b:Z

    .line 48
    invoke-direct {p0}, Lcom/google/android/material/l/c;->d()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "expanded"

    .line 63
    iget-boolean v2, p0, Lcom/google/android/material/l/c;->b:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "expandedComponentIdHint"

    .line 64
    iget p0, p0, Lcom/google/android/material/l/c;->c:I

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public c()I
    .locals 0
    .annotation build Landroidx/annotation/w;
    .end annotation

    .line 87
    iget p0, p0, Lcom/google/android/material/l/c;->c:I

    return p0
.end method
