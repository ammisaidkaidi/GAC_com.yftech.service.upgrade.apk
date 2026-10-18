.class Landroidx/j/ag$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/ag;->a(Landroid/animation/Animator;Landroidx/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/c/a;

.field final synthetic b:Landroidx/j/ag;


# direct methods
.method constructor <init>(Landroidx/j/ag;Landroidx/c/a;)V
    .locals 0

    .line 898
    iput-object p1, p0, Landroidx/j/ag$2;->b:Landroidx/j/ag;

    iput-object p2, p0, Landroidx/j/ag$2;->a:Landroidx/c/a;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 906
    iget-object v0, p0, Landroidx/j/ag$2;->a:Landroidx/c/a;

    invoke-virtual {v0, p1}, Landroidx/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    iget-object p0, p0, Landroidx/j/ag$2;->b:Landroidx/j/ag;

    iget-object p0, p0, Landroidx/j/ag;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 901
    iget-object p0, p0, Landroidx/j/ag$2;->b:Landroidx/j/ag;

    iget-object p0, p0, Landroidx/j/ag;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
