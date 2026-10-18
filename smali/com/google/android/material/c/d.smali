.class public Lcom/google/android/material/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/n;


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/c/d$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/appcompat/view/menu/g;

.field private b:Lcom/google/android/material/c/c;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/google/android/material/c/d;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/o;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/android/material/c/d;->b:Lcom/google/android/material/c/c;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/google/android/material/c/d;->d:I

    return-void
.end method

.method public a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V
    .locals 0

    .line 52
    iput-object p2, p0, Lcom/google/android/material/c/d;->a:Landroidx/appcompat/view/menu/g;

    .line 53
    iget-object p1, p0, Lcom/google/android/material/c/d;->b:Lcom/google/android/material/c/c;

    iget-object p0, p0, Lcom/google/android/material/c/d;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1, p0}, Lcom/google/android/material/c/c;->a(Landroidx/appcompat/view/menu/g;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 2

    .line 120
    instance-of v0, p1, Lcom/google/android/material/c/d$a;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/google/android/material/c/d;->b:Lcom/google/android/material/c/c;

    check-cast p1, Lcom/google/android/material/c/d$a;

    iget v1, p1, Lcom/google/android/material/c/d$a;->a:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/c/c;->b(I)V

    .line 122
    iget-object v0, p0, Lcom/google/android/material/c/d;->b:Lcom/google/android/material/c/c;

    .line 124
    invoke-virtual {v0}, Lcom/google/android/material/c/c;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/material/c/d$a;->b:Lcom/google/android/material/internal/k;

    .line 123
    invoke-static {v0, p1}, Lcom/google/android/material/b/b;->a(Landroid/content/Context;Lcom/google/android/material/internal/k;)Landroid/util/SparseArray;

    move-result-object p1

    .line 125
    iget-object p0, p0, Lcom/google/android/material/c/d;->b:Lcom/google/android/material/c/c;

    invoke-virtual {p0, p1}, Lcom/google/android/material/c/c;->setBadgeDrawables(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Z)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/n$a;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/material/c/c;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/google/android/material/c/d;->b:Lcom/google/android/material/c/c;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/google/android/material/c/d;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 67
    iget-object p0, p0, Lcom/google/android/material/c/d;->b:Lcom/google/android/material/c/c;

    invoke-virtual {p0}, Lcom/google/android/material/c/c;->b()V

    goto :goto_0

    .line 69
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/c/d;->b:Lcom/google/android/material/c/c;

    invoke-virtual {p0}, Lcom/google/android/material/c/c;->c()V

    :goto_0
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/j;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a(Landroidx/appcompat/view/menu/s;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b(Z)V
    .locals 0

    .line 130
    iput-boolean p1, p0, Lcom/google/android/material/c/d;->c:Z

    return-void
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b(Landroidx/appcompat/view/menu/g;Landroidx/appcompat/view/menu/j;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c()I
    .locals 0

    .line 105
    iget p0, p0, Lcom/google/android/material/c/d;->d:I

    return p0
.end method

.method public f()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 111
    new-instance v0, Lcom/google/android/material/c/d$a;

    invoke-direct {v0}, Lcom/google/android/material/c/d$a;-><init>()V

    .line 112
    iget-object v1, p0, Lcom/google/android/material/c/d;->b:Lcom/google/android/material/c/c;

    invoke-virtual {v1}, Lcom/google/android/material/c/c;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lcom/google/android/material/c/d$a;->a:I

    .line 113
    iget-object p0, p0, Lcom/google/android/material/c/d;->b:Lcom/google/android/material/c/c;

    .line 114
    invoke-virtual {p0}, Lcom/google/android/material/c/c;->getBadgeDrawables()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/material/b/b;->a(Landroid/util/SparseArray;)Lcom/google/android/material/internal/k;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/material/c/d$a;->b:Lcom/google/android/material/internal/k;

    return-object v0
.end method
