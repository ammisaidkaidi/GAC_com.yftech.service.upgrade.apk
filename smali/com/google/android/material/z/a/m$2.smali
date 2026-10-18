.class Lcom/google/android/material/z/a/m$2;
.super Lcom/google/android/material/z/a/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/z/a/m;->a(Landroid/app/Activity;Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/google/android/material/z/a/m;


# direct methods
.method constructor <init>(Lcom/google/android/material/z/a/m;Landroid/app/Activity;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/google/android/material/z/a/m$2;->b:Lcom/google/android/material/z/a/m;

    iput-object p2, p0, Lcom/google/android/material/z/a/m$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/material/z/a/u;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 1

    .line 265
    invoke-static {}, Lcom/google/android/material/z/a/m;->d()Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 266
    invoke-static {}, Lcom/google/android/material/z/a/m;->d()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 268
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    .line 269
    invoke-static {p1}, Lcom/google/android/material/z/a/m;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/z/a/m$2;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 275
    iget-object p0, p0, Lcom/google/android/material/z/a/m$2;->a:Landroid/app/Activity;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
