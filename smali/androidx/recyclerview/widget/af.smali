.class Landroidx/recyclerview/widget/af;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/af$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:I

.field b:Landroidx/recyclerview/widget/af$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/af$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/recyclerview/widget/af$a<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroidx/recyclerview/widget/af;->c:Landroid/util/SparseArray;

    .line 36
    iput p1, p0, Landroidx/recyclerview/widget/af;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 52
    iget-object p0, p0, Landroidx/recyclerview/widget/af;->c:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public a(Landroidx/recyclerview/widget/af$a;)Landroidx/recyclerview/widget/af$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/af$a<",
            "TT;>;)",
            "Landroidx/recyclerview/widget/af$a<",
            "TT;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Landroidx/recyclerview/widget/af;->c:Landroid/util/SparseArray;

    iget v1, p1, Landroidx/recyclerview/widget/af$a;->b:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 66
    iget-object p0, p0, Landroidx/recyclerview/widget/af;->c:Landroid/util/SparseArray;

    iget v0, p1, Landroidx/recyclerview/widget/af$a;->b:I

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/af;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/af$a;

    .line 70
    iget-object v2, p0, Landroidx/recyclerview/widget/af;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 71
    iget-object v0, p0, Landroidx/recyclerview/widget/af;->b:Landroidx/recyclerview/widget/af$a;

    if-ne v0, v1, :cond_1

    .line 72
    iput-object p1, p0, Landroidx/recyclerview/widget/af;->b:Landroidx/recyclerview/widget/af$a;

    :cond_1
    return-object v1
.end method

.method public a(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Landroidx/recyclerview/widget/af;->b:Landroidx/recyclerview/widget/af$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/recyclerview/widget/af;->b:Landroidx/recyclerview/widget/af$a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/af$a;->a(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    :cond_0
    iget v0, p0, Landroidx/recyclerview/widget/af;->a:I

    rem-int v0, p1, v0

    sub-int v0, p1, v0

    .line 42
    iget-object v1, p0, Landroidx/recyclerview/widget/af;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_1
    iget-object v1, p0, Landroidx/recyclerview/widget/af;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/af$a;

    iput-object v0, p0, Landroidx/recyclerview/widget/af;->b:Landroidx/recyclerview/widget/af$a;

    .line 48
    :cond_2
    iget-object p0, p0, Landroidx/recyclerview/widget/af;->b:Landroidx/recyclerview/widget/af$a;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/af$a;->b(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public b(I)Landroidx/recyclerview/widget/af$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/recyclerview/widget/af$a<",
            "TT;>;"
        }
    .end annotation

    .line 60
    iget-object p0, p0, Landroidx/recyclerview/widget/af;->c:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/af$a;

    return-object p0
.end method

.method public b()V
    .locals 0

    .line 56
    iget-object p0, p0, Landroidx/recyclerview/widget/af;->c:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public c(I)Landroidx/recyclerview/widget/af$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroidx/recyclerview/widget/af$a<",
            "TT;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Landroidx/recyclerview/widget/af;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/af$a;

    .line 79
    iget-object v1, p0, Landroidx/recyclerview/widget/af;->b:Landroidx/recyclerview/widget/af$a;

    if-ne v1, v0, :cond_0

    const/4 v1, 0x0

    .line 80
    iput-object v1, p0, Landroidx/recyclerview/widget/af;->b:Landroidx/recyclerview/widget/af$a;

    .line 82
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/af;->c:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-object v0
.end method
