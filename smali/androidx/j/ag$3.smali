.class Landroidx/j/ag$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/ag;->a(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/j/ag;


# direct methods
.method constructor <init>(Landroidx/j/ag;)V
    .locals 0

    .line 1911
    iput-object p1, p0, Landroidx/j/ag$3;->a:Landroidx/j/ag;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1914
    iget-object v0, p0, Landroidx/j/ag$3;->a:Landroidx/j/ag;

    invoke-virtual {v0}, Landroidx/j/ag;->m()V

    .line 1915
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
