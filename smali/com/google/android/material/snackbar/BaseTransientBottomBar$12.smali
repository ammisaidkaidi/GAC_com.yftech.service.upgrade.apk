.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$12;
.super Landroidx/core/n/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/google/android/material/snackbar/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;


# direct methods
.method constructor <init>(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$12;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Landroidx/core/n/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/n/a/d;)V
    .locals 0
    .param p2    # Landroidx/core/n/a/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 404
    invoke-super {p0, p1, p2}, Landroidx/core/n/a;->a(Landroid/view/View;Landroidx/core/n/a/d;)V

    const/high16 p0, 0x100000

    .line 405
    invoke-virtual {p2, p0}, Landroidx/core/n/a/d;->d(I)V

    const/4 p0, 0x1

    .line 406
    invoke-virtual {p2, p0}, Landroidx/core/n/a/d;->q(Z)V

    return-void
.end method

.method public a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_0

    .line 412
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$12;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k()V

    const/4 p0, 0x1

    return p0

    .line 415
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/n/a;->a(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
