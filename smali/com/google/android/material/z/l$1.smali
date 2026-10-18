.class Lcom/google/android/material/z/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/z/l;->a(Landroid/view/ViewGroup;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/z/l$f;

.field final synthetic b:Lcom/google/android/material/z/l;


# direct methods
.method constructor <init>(Lcom/google/android/material/z/l;Lcom/google/android/material/z/l$f;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lcom/google/android/material/z/l$1;->b:Lcom/google/android/material/z/l;

    iput-object p2, p0, Lcom/google/android/material/z/l$1;->a:Lcom/google/android/material/z/l$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 946
    iget-object p0, p0, Lcom/google/android/material/z/l$1;->a:Lcom/google/android/material/z/l$f;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {p0, p1}, Lcom/google/android/material/z/l$f;->a(Lcom/google/android/material/z/l$f;F)V

    return-void
.end method
