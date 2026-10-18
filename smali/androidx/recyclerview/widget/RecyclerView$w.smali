.class public Landroidx/recyclerview/widget/RecyclerView$w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "w"
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x4


# instance fields
.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z

.field o:I

.field p:J

.field q:I

.field r:I

.field s:I

.field private t:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12377
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:I

    const/4 v0, 0x0

    .line 12388
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->e:I

    .line 12394
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->f:I

    const/4 v1, 0x1

    .line 12406
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:I

    .line 12412
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->h:I

    .line 12414
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->i:Z

    .line 12421
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:Z

    .line 12423
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->k:Z

    .line 12425
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->l:Z

    .line 12431
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->m:Z

    .line 12433
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->n:Z

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 3

    .line 12368
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    return-void

    .line 12369
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout state should be one of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12370
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but it is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:I

    .line 12371
    invoke-static {p0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    .line 12552
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->t:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 12553
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->t:Landroid/util/SparseArray;

    .line 12555
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->t:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 12459
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->g:I

    .line 12460
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result p1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->h:I

    const/4 p1, 0x0

    .line 12461
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:Z

    .line 12462
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->k:Z

    .line 12463
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->l:Z

    return-void
.end method

.method public a()Z
    .locals 0

    .line 12481
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->l:Z

    return p0
.end method

.method public b(I)V
    .locals 1

    .line 12521
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->t:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    .line 12524
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->t:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public b()Z
    .locals 0

    .line 12490
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:Z

    return p0
.end method

.method public c(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .line 12537
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->t:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 12540
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->t:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public c()Z
    .locals 0

    .line 12501
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->n:Z

    return p0
.end method

.method public d()Z
    .locals 0

    .line 12512
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->m:Z

    return p0
.end method

.method public e()I
    .locals 0

    .line 12566
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:I

    return p0
.end method

.method public f()Z
    .locals 1

    .line 12575
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g()Z
    .locals 0

    .line 12583
    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->i:Z

    return p0
.end method

.method public h()I
    .locals 1

    .line 12611
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->e:I

    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->f:I

    sub-int/2addr v0, p0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->h:I

    :goto_0
    return v0
.end method

.method public i()I
    .locals 0

    .line 12624
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->r:I

    return p0
.end method

.method public j()I
    .locals 0

    .line 12635
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->s:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 12640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State{mTargetPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->t:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsMeasuring="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviousLayoutItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDeletedInvisibleItemCountSincePreviousLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStructureChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mInPreLayout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRunSimpleAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$w;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRunPredictiveAnimations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/recyclerview/widget/RecyclerView$w;->n:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
