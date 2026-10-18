.class Landroidx/recyclerview/widget/m$3;
.super Landroidx/recyclerview/widget/m$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/m;->a(Landroidx/recyclerview/widget/RecyclerView$z;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroidx/recyclerview/widget/RecyclerView$z;

.field final synthetic c:Landroidx/recyclerview/widget/m;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/m;Landroidx/recyclerview/widget/RecyclerView$z;IIFFFFILandroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    .line 635
    iput-object v1, v0, Landroidx/recyclerview/widget/m$3;->c:Landroidx/recyclerview/widget/m;

    move/from16 v1, p9

    iput v1, v0, Landroidx/recyclerview/widget/m$3;->a:I

    move-object/from16 v1, p10

    iput-object v1, v0, Landroidx/recyclerview/widget/m$3;->b:Landroidx/recyclerview/widget/RecyclerView$z;

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Landroidx/recyclerview/widget/m$c;-><init>(Landroidx/recyclerview/widget/RecyclerView$z;IIFFFF)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 638
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/m$c;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 639
    iget-boolean p1, p0, Landroidx/recyclerview/widget/m$3;->n:Z

    if-eqz p1, :cond_0

    return-void

    .line 642
    :cond_0
    iget p1, p0, Landroidx/recyclerview/widget/m$3;->a:I

    if-gtz p1, :cond_1

    .line 644
    iget-object p1, p0, Landroidx/recyclerview/widget/m$3;->c:Landroidx/recyclerview/widget/m;

    iget-object p1, p1, Landroidx/recyclerview/widget/m;->w:Landroidx/recyclerview/widget/m$a;

    iget-object v0, p0, Landroidx/recyclerview/widget/m$3;->c:Landroidx/recyclerview/widget/m;

    iget-object v0, v0, Landroidx/recyclerview/widget/m;->z:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Landroidx/recyclerview/widget/m$3;->b:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p1, v0, v1}, Landroidx/recyclerview/widget/m$a;->e(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)V

    goto :goto_0

    .line 648
    :cond_1
    iget-object p1, p0, Landroidx/recyclerview/widget/m$3;->c:Landroidx/recyclerview/widget/m;

    iget-object p1, p1, Landroidx/recyclerview/widget/m;->p:Ljava/util/List;

    iget-object v0, p0, Landroidx/recyclerview/widget/m$3;->b:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 649
    iput-boolean p1, p0, Landroidx/recyclerview/widget/m$3;->k:Z

    .line 650
    iget p1, p0, Landroidx/recyclerview/widget/m$3;->a:I

    if-lez p1, :cond_2

    .line 653
    iget-object p1, p0, Landroidx/recyclerview/widget/m$3;->c:Landroidx/recyclerview/widget/m;

    iget v0, p0, Landroidx/recyclerview/widget/m$3;->a:I

    invoke-virtual {p1, p0, v0}, Landroidx/recyclerview/widget/m;->a(Landroidx/recyclerview/widget/m$c;I)V

    .line 657
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/recyclerview/widget/m$3;->c:Landroidx/recyclerview/widget/m;

    iget-object p1, p1, Landroidx/recyclerview/widget/m;->C:Landroid/view/View;

    iget-object v0, p0, Landroidx/recyclerview/widget/m$3;->b:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$z;->a:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 658
    iget-object p1, p0, Landroidx/recyclerview/widget/m$3;->c:Landroidx/recyclerview/widget/m;

    iget-object p0, p0, Landroidx/recyclerview/widget/m$3;->b:Landroidx/recyclerview/widget/RecyclerView$z;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$z;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/m;->c(Landroid/view/View;)V

    :cond_3
    return-void
.end method
