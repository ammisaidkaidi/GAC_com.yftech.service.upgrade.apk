.class Lcom/google/android/material/floatingactionbutton/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->a:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 34
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/a;->a:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public a(Landroid/animation/Animator;)V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/a;->a()V

    .line 29
    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/a;->a:Landroid/animation/Animator;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/a;->a:Landroid/animation/Animator;

    return-void
.end method
