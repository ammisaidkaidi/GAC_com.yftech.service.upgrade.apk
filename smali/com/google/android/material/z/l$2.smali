.class Lcom/google/android/material/z/l$2;
.super Lcom/google/android/material/z/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/z/l;->a(Landroid/view/ViewGroup;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/android/material/z/l$f;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/view/View;

.field final synthetic e:Lcom/google/android/material/z/l;


# direct methods
.method constructor <init>(Lcom/google/android/material/z/l;Landroid/view/View;Lcom/google/android/material/z/l$f;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 951
    iput-object p1, p0, Lcom/google/android/material/z/l$2;->e:Lcom/google/android/material/z/l;

    iput-object p2, p0, Lcom/google/android/material/z/l$2;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/material/z/l$2;->b:Lcom/google/android/material/z/l$f;

    iput-object p4, p0, Lcom/google/android/material/z/l$2;->c:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/material/z/l$2;->d:Landroid/view/View;

    invoke-direct {p0}, Lcom/google/android/material/z/t;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/j/ag;)V
    .locals 1
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 964
    iget-object p1, p0, Lcom/google/android/material/z/l$2;->e:Lcom/google/android/material/z/l;

    invoke-virtual {p1, p0}, Lcom/google/android/material/z/l;->b(Landroidx/j/ag$e;)Landroidx/j/ag;

    .line 965
    iget-object p1, p0, Lcom/google/android/material/z/l$2;->e:Lcom/google/android/material/z/l;

    invoke-static {p1}, Lcom/google/android/material/z/l;->a(Lcom/google/android/material/z/l;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 970
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/z/l$2;->c:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 971
    iget-object p1, p0, Lcom/google/android/material/z/l$2;->d:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 974
    iget-object p1, p0, Lcom/google/android/material/z/l$2;->a:Landroid/view/View;

    invoke-static {p1}, Lcom/google/android/material/internal/z;->e(Landroid/view/View;)Lcom/google/android/material/internal/y;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/z/l$2;->b:Lcom/google/android/material/z/l$f;

    invoke-interface {p1, p0}, Lcom/google/android/material/internal/y;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public e(Landroidx/j/ag;)V
    .locals 1
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 955
    iget-object p1, p0, Lcom/google/android/material/z/l$2;->a:Landroid/view/View;

    invoke-static {p1}, Lcom/google/android/material/internal/z;->e(Landroid/view/View;)Lcom/google/android/material/internal/y;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/z/l$2;->b:Lcom/google/android/material/z/l$f;

    invoke-interface {p1, v0}, Lcom/google/android/material/internal/y;->a(Landroid/graphics/drawable/Drawable;)V

    .line 958
    iget-object p1, p0, Lcom/google/android/material/z/l$2;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 959
    iget-object p0, p0, Lcom/google/android/material/z/l$2;->d:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
