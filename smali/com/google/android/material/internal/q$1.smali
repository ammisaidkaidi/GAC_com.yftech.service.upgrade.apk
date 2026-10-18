.class Lcom/google/android/material/internal/q$1;
.super Lcom/google/android/material/q/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/q;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/q;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/google/android/material/internal/q$1;->a:Lcom/google/android/material/internal/q;

    invoke-direct {p0}, Lcom/google/android/material/q/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 59
    iget-object p1, p0, Lcom/google/android/material/internal/q$1;->a:Lcom/google/android/material/internal/q;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/material/internal/q;->a(Lcom/google/android/material/internal/q;Z)Z

    .line 61
    iget-object p0, p0, Lcom/google/android/material/internal/q$1;->a:Lcom/google/android/material/internal/q;

    invoke-static {p0}, Lcom/google/android/material/internal/q;->a(Lcom/google/android/material/internal/q;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/q$a;

    if-eqz p0, :cond_0

    .line 63
    invoke-interface {p0}, Lcom/google/android/material/internal/q$a;->i()V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/Typeface;Z)V
    .locals 0
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/internal/q$1;->a:Lcom/google/android/material/internal/q;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/google/android/material/internal/q;->a(Lcom/google/android/material/internal/q;Z)Z

    .line 51
    iget-object p0, p0, Lcom/google/android/material/internal/q$1;->a:Lcom/google/android/material/internal/q;

    invoke-static {p0}, Lcom/google/android/material/internal/q;->a(Lcom/google/android/material/internal/q;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/q$a;

    if-eqz p0, :cond_1

    .line 53
    invoke-interface {p0}, Lcom/google/android/material/internal/q$a;->i()V

    :cond_1
    return-void
.end method
