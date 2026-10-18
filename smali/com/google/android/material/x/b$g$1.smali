.class Lcom/google/android/material/x/b$g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/x/b$g;->a(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/material/x/b$g;


# direct methods
.method constructor <init>(Lcom/google/android/material/x/b$g;II)V
    .locals 0

    .line 3072
    iput-object p1, p0, Lcom/google/android/material/x/b$g$1;->c:Lcom/google/android/material/x/b$g;

    iput p2, p0, Lcom/google/android/material/x/b$g$1;->a:I

    iput p3, p0, Lcom/google/android/material/x/b$g$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1    # Landroid/animation/ValueAnimator;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 3075
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 3076
    iget-object v0, p0, Lcom/google/android/material/x/b$g$1;->c:Lcom/google/android/material/x/b$g;

    iget-object v1, p0, Lcom/google/android/material/x/b$g$1;->c:Lcom/google/android/material/x/b$g;

    .line 3077
    invoke-static {v1}, Lcom/google/android/material/x/b$g;->a(Lcom/google/android/material/x/b$g;)I

    move-result v1

    iget v2, p0, Lcom/google/android/material/x/b$g$1;->a:I

    invoke-static {v1, v2, p1}, Lcom/google/android/material/a/a;->a(IIF)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/x/b$g$1;->c:Lcom/google/android/material/x/b$g;

    .line 3078
    invoke-static {v2}, Lcom/google/android/material/x/b$g;->b(Lcom/google/android/material/x/b$g;)I

    move-result v2

    iget p0, p0, Lcom/google/android/material/x/b$g$1;->b:I

    invoke-static {v2, p0, p1}, Lcom/google/android/material/a/a;->a(IIF)I

    move-result p0

    .line 3076
    invoke-virtual {v0, v1, p0}, Lcom/google/android/material/x/b$g;->a(II)V

    return-void
.end method
