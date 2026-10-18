.class Lcom/google/android/material/z/a/l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/z/a/l;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/z/a/l$f;

.field final synthetic b:Lcom/google/android/material/z/a/l;


# direct methods
.method constructor <init>(Lcom/google/android/material/z/a/l;Lcom/google/android/material/z/a/l$f;)V
    .locals 0

    .line 948
    iput-object p1, p0, Lcom/google/android/material/z/a/l$1;->b:Lcom/google/android/material/z/a/l;

    iput-object p2, p0, Lcom/google/android/material/z/a/l$1;->a:Lcom/google/android/material/z/a/l$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 951
    iget-object p0, p0, Lcom/google/android/material/z/a/l$1;->a:Lcom/google/android/material/z/a/l$f;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {p0, p1}, Lcom/google/android/material/z/a/l$f;->a(Lcom/google/android/material/z/a/l$f;F)V

    return-void
.end method
