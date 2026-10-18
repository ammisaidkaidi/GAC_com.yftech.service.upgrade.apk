.class Landroidx/j/l$1;
.super Landroidx/j/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/l;->a(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroidx/j/l;


# direct methods
.method constructor <init>(Landroidx/j/l;Landroid/view/View;)V
    .locals 0

    .line 135
    iput-object p1, p0, Landroidx/j/l$1;->b:Landroidx/j/l;

    iput-object p2, p0, Landroidx/j/l$1;->a:Landroid/view/View;

    invoke-direct {p0}, Landroidx/j/ai;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/j/ag;)V
    .locals 2
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 138
    iget-object v0, p0, Landroidx/j/l$1;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/j/ay;->a(Landroid/view/View;F)V

    .line 139
    iget-object v0, p0, Landroidx/j/l$1;->a:Landroid/view/View;

    invoke-static {v0}, Landroidx/j/ay;->e(Landroid/view/View;)V

    .line 140
    invoke-virtual {p1, p0}, Landroidx/j/ag;->b(Landroidx/j/ag$e;)Landroidx/j/ag;

    return-void
.end method
