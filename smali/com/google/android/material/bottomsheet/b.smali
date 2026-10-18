.class public Lcom/google/android/material/bottomsheet/b;
.super Landroidx/appcompat/app/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/bottomsheet/b$a;
    }
.end annotation


# instance fields
.field private an:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/appcompat/app/j;-><init>()V

    return-void
.end method

.method private a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 2
    .param p1    # Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "*>;Z)V"
        }
    .end annotation

    .line 79
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/b;->an:Z

    .line 81
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->k()I

    move-result p2

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/b;->aK()V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/b;->e()Landroid/app/Dialog;

    move-result-object p2

    instance-of p2, p2, Lcom/google/android/material/bottomsheet/a;

    if-eqz p2, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/b;->e()Landroid/app/Dialog;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {p2}, Lcom/google/android/material/bottomsheet/a;->f()V

    .line 87
    :cond_1
    new-instance p2, Lcom/google/android/material/bottomsheet/b$a;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v1}, Lcom/google/android/material/bottomsheet/b$a;-><init>(Lcom/google/android/material/bottomsheet/b;Lcom/google/android/material/bottomsheet/b$1;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->b(Lcom/google/android/material/bottomsheet/BottomSheetBehavior$a;)V

    .line 88
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(I)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/bottomsheet/b;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/b;->aK()V

    return-void
.end method

.method private aK()V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/google/android/material/bottomsheet/b;->an:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-super {p0}, Landroidx/appcompat/app/j;->b()V

    goto :goto_0

    .line 96
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/j;->a()V

    :goto_0
    return-void
.end method

.method private p(Z)Z
    .locals 3

    .line 64
    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/b;->e()Landroid/app/Dialog;

    move-result-object v0

    .line 65
    instance-of v1, v0, Lcom/google/android/material/bottomsheet/a;

    if-eqz v1, :cond_0

    .line 66
    check-cast v0, Lcom/google/android/material/bottomsheet/a;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->a()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0, v1, p1}, Lcom/google/android/material/bottomsheet/b;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 42
    new-instance p1, Lcom/google/android/material/bottomsheet/a;

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/b;->y()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/bottomsheet/b;->h()I

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/google/android/material/bottomsheet/a;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/b;->p(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    invoke-super {p0}, Landroidx/appcompat/app/j;->a()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 54
    invoke-direct {p0, v0}, Lcom/google/android/material/bottomsheet/b;->p(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-super {p0}, Landroidx/appcompat/app/j;->b()V

    :cond_0
    return-void
.end method
