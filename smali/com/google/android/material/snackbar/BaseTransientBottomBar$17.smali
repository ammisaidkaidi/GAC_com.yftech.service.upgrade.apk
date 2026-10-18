.class Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;->p()V
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

    .line 841
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 844
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    if-nez v0, :cond_0

    return-void

    .line 848
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->setVisibility(I)V

    .line 849
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    iget-object v0, v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->k:Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getAnimationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 850
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->g(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    goto :goto_0

    .line 852
    :cond_1
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$17;->a:Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    invoke-static {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->h(Lcom/google/android/material/snackbar/BaseTransientBottomBar;)V

    :goto_0
    return-void
.end method
