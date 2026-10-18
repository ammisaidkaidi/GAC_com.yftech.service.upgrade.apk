.class Landroidx/recyclerview/widget/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I = -0x1

.field static final b:I = 0x1

.field static final c:I = -0x80000000

.field static final d:I = -0x1

.field static final e:I = 0x1


# instance fields
.field f:Z

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:Z

.field n:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Landroidx/recyclerview/widget/p;->f:Z

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Landroidx/recyclerview/widget/p;->k:I

    .line 72
    iput v0, p0, Landroidx/recyclerview/widget/p;->l:I

    return-void
.end method


# virtual methods
.method a(Landroidx/recyclerview/widget/RecyclerView$q;)Landroid/view/View;
    .locals 2

    .line 98
    iget v0, p0, Landroidx/recyclerview/widget/p;->h:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$q;->c(I)Landroid/view/View;

    move-result-object p1

    .line 99
    iget v0, p0, Landroidx/recyclerview/widget/p;->h:I

    iget v1, p0, Landroidx/recyclerview/widget/p;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/recyclerview/widget/p;->h:I

    return-object p1
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView$w;)Z
    .locals 1

    .line 88
    iget v0, p0, Landroidx/recyclerview/widget/p;->h:I

    if-ltz v0, :cond_0

    iget p0, p0, Landroidx/recyclerview/widget/p;->h:I

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$w;->h()I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LayoutState{mAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/p;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/p;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mItemDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/p;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/p;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStartLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/recyclerview/widget/p;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEndLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/recyclerview/widget/p;->l:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
