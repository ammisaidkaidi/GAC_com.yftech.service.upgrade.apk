.class public Landroidx/recyclerview/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/e$b;,
        Landroidx/recyclerview/widget/e$a;
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


# static fields
.field static final a:Ljava/lang/String; = "AsyncListUtil"

.field static final b:Z = false


# instance fields
.field final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Landroidx/recyclerview/widget/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/e$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final f:Landroidx/recyclerview/widget/e$b;

.field final g:Landroidx/recyclerview/widget/af;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/af<",
            "TT;>;"
        }
    .end annotation
.end field

.field final h:Landroidx/recyclerview/widget/ae$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ae$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final i:Landroidx/recyclerview/widget/ae$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ae$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final j:[I

.field final k:[I

.field final l:[I

.field m:Z

.field n:I

.field o:I

.field p:I

.field final q:Landroid/util/SparseIntArray;

.field private r:I

.field private final s:Landroidx/recyclerview/widget/ae$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ae$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final t:Landroidx/recyclerview/widget/ae$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ae$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;ILandroidx/recyclerview/widget/e$a;Landroidx/recyclerview/widget/e$b;)V
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/e$a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # Landroidx/recyclerview/widget/e$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Landroidx/recyclerview/widget/e$a<",
            "TT;>;",
            "Landroidx/recyclerview/widget/e$b;",
            ")V"
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 64
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/e;->j:[I

    .line 65
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/recyclerview/widget/e;->k:[I

    .line 66
    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->l:[I

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Landroidx/recyclerview/widget/e;->r:I

    .line 71
    iput v0, p0, Landroidx/recyclerview/widget/e;->n:I

    .line 73
    iput v0, p0, Landroidx/recyclerview/widget/e;->o:I

    .line 74
    iget v0, p0, Landroidx/recyclerview/widget/e;->o:I

    iput v0, p0, Landroidx/recyclerview/widget/e;->p:I

    .line 76
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->q:Landroid/util/SparseIntArray;

    .line 211
    new-instance v0, Landroidx/recyclerview/widget/e$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/e$1;-><init>(Landroidx/recyclerview/widget/e;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->s:Landroidx/recyclerview/widget/ae$b;

    .line 293
    new-instance v0, Landroidx/recyclerview/widget/e$2;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/e$2;-><init>(Landroidx/recyclerview/widget/e;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/e;->t:Landroidx/recyclerview/widget/ae$a;

    .line 92
    iput-object p1, p0, Landroidx/recyclerview/widget/e;->c:Ljava/lang/Class;

    .line 93
    iput p2, p0, Landroidx/recyclerview/widget/e;->d:I

    .line 94
    iput-object p3, p0, Landroidx/recyclerview/widget/e;->e:Landroidx/recyclerview/widget/e$a;

    .line 95
    iput-object p4, p0, Landroidx/recyclerview/widget/e;->f:Landroidx/recyclerview/widget/e$b;

    .line 97
    new-instance p1, Landroidx/recyclerview/widget/af;

    iget p2, p0, Landroidx/recyclerview/widget/e;->d:I

    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/af;-><init>(I)V

    iput-object p1, p0, Landroidx/recyclerview/widget/e;->g:Landroidx/recyclerview/widget/af;

    .line 99
    new-instance p1, Landroidx/recyclerview/widget/u;

    invoke-direct {p1}, Landroidx/recyclerview/widget/u;-><init>()V

    .line 100
    iget-object p2, p0, Landroidx/recyclerview/widget/e;->s:Landroidx/recyclerview/widget/ae$b;

    invoke-interface {p1, p2}, Landroidx/recyclerview/widget/ae;->a(Landroidx/recyclerview/widget/ae$b;)Landroidx/recyclerview/widget/ae$b;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/e;->h:Landroidx/recyclerview/widget/ae$b;

    .line 101
    iget-object p2, p0, Landroidx/recyclerview/widget/e;->t:Landroidx/recyclerview/widget/ae$a;

    invoke-interface {p1, p2}, Landroidx/recyclerview/widget/ae;->a(Landroidx/recyclerview/widget/ae$a;)Landroidx/recyclerview/widget/ae$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/recyclerview/widget/e;->i:Landroidx/recyclerview/widget/ae$a;

    .line 103
    invoke-virtual {p0}, Landroidx/recyclerview/widget/e;->b()V

    return-void
.end method

.method private e()Z
    .locals 1

    .line 107
    iget v0, p0, Landroidx/recyclerview/widget/e;->p:I

    iget p0, p0, Landroidx/recyclerview/widget/e;->o:I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    if-ltz p1, :cond_1

    .line 155
    iget v0, p0, Landroidx/recyclerview/widget/e;->n:I

    if-ge p1, v0, :cond_1

    .line 158
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->g:Landroidx/recyclerview/widget/af;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/af;->a(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 159
    invoke-direct {p0}, Landroidx/recyclerview/widget/e;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    iget-object p0, p0, Landroidx/recyclerview/widget/e;->q:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-object v0

    .line 156
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not within 0 and "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/recyclerview/widget/e;->n:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()V
    .locals 1

    .line 119
    invoke-direct {p0}, Landroidx/recyclerview/widget/e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/e;->d()V

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Landroidx/recyclerview/widget/e;->m:Z

    return-void
.end method

.method varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string p0, "AsyncListUtil"

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[MAIN] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b()V
    .locals 2

    .line 133
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 134
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->i:Landroidx/recyclerview/widget/ae$a;

    iget v1, p0, Landroidx/recyclerview/widget/e;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/recyclerview/widget/e;->p:I

    invoke-interface {v0, v1}, Landroidx/recyclerview/widget/ae$a;->a(I)V

    return-void
.end method

.method public c()I
    .locals 0

    .line 175
    iget p0, p0, Landroidx/recyclerview/widget/e;->n:I

    return p0
.end method

.method d()V
    .locals 10

    .line 179
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->f:Landroidx/recyclerview/widget/e$b;

    iget-object v1, p0, Landroidx/recyclerview/widget/e;->j:[I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/e$b;->a([I)V

    .line 180
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->j:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Landroidx/recyclerview/widget/e;->j:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-gt v0, v2, :cond_7

    iget-object v0, p0, Landroidx/recyclerview/widget/e;->j:[I

    aget v0, v0, v1

    if-gez v0, :cond_0

    goto/16 :goto_2

    .line 183
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->j:[I

    aget v0, v0, v3

    iget v2, p0, Landroidx/recyclerview/widget/e;->n:I

    if-lt v0, v2, :cond_1

    return-void

    .line 188
    :cond_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/e;->m:Z

    if-nez v0, :cond_2

    .line 189
    iput v1, p0, Landroidx/recyclerview/widget/e;->r:I

    goto :goto_1

    .line 190
    :cond_2
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->j:[I

    aget v0, v0, v1

    iget-object v2, p0, Landroidx/recyclerview/widget/e;->k:[I

    aget v2, v2, v3

    if-gt v0, v2, :cond_5

    iget-object v0, p0, Landroidx/recyclerview/widget/e;->k:[I

    aget v0, v0, v1

    iget-object v2, p0, Landroidx/recyclerview/widget/e;->j:[I

    aget v2, v2, v3

    if-le v0, v2, :cond_3

    goto :goto_0

    .line 193
    :cond_3
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->j:[I

    aget v0, v0, v1

    iget-object v2, p0, Landroidx/recyclerview/widget/e;->k:[I

    aget v2, v2, v1

    if-ge v0, v2, :cond_4

    .line 194
    iput v3, p0, Landroidx/recyclerview/widget/e;->r:I

    goto :goto_1

    .line 195
    :cond_4
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->j:[I

    aget v0, v0, v1

    iget-object v2, p0, Landroidx/recyclerview/widget/e;->k:[I

    aget v2, v2, v1

    if-le v0, v2, :cond_6

    const/4 v0, 0x2

    .line 196
    iput v0, p0, Landroidx/recyclerview/widget/e;->r:I

    goto :goto_1

    .line 192
    :cond_5
    :goto_0
    iput v1, p0, Landroidx/recyclerview/widget/e;->r:I

    .line 199
    :cond_6
    :goto_1
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->k:[I

    iget-object v2, p0, Landroidx/recyclerview/widget/e;->j:[I

    aget v2, v2, v1

    aput v2, v0, v1

    .line 200
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->k:[I

    iget-object v2, p0, Landroidx/recyclerview/widget/e;->j:[I

    aget v2, v2, v3

    aput v2, v0, v3

    .line 202
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->f:Landroidx/recyclerview/widget/e$b;

    iget-object v2, p0, Landroidx/recyclerview/widget/e;->j:[I

    iget-object v4, p0, Landroidx/recyclerview/widget/e;->l:[I

    iget v5, p0, Landroidx/recyclerview/widget/e;->r:I

    invoke-virtual {v0, v2, v4, v5}, Landroidx/recyclerview/widget/e$b;->a([I[II)V

    .line 203
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->l:[I

    iget-object v2, p0, Landroidx/recyclerview/widget/e;->j:[I

    aget v2, v2, v1

    iget-object v4, p0, Landroidx/recyclerview/widget/e;->l:[I

    aget v4, v4, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v0, v1

    .line 204
    iget-object v0, p0, Landroidx/recyclerview/widget/e;->l:[I

    iget-object v2, p0, Landroidx/recyclerview/widget/e;->j:[I

    aget v2, v2, v3

    iget-object v4, p0, Landroidx/recyclerview/widget/e;->l:[I

    aget v4, v4, v3

    iget v5, p0, Landroidx/recyclerview/widget/e;->n:I

    sub-int/2addr v5, v3

    .line 205
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v0, v3

    .line 207
    iget-object v4, p0, Landroidx/recyclerview/widget/e;->i:Landroidx/recyclerview/widget/ae$a;

    iget-object v0, p0, Landroidx/recyclerview/widget/e;->j:[I

    aget v5, v0, v1

    iget-object v0, p0, Landroidx/recyclerview/widget/e;->j:[I

    aget v6, v0, v3

    iget-object v0, p0, Landroidx/recyclerview/widget/e;->l:[I

    aget v7, v0, v1

    iget-object v0, p0, Landroidx/recyclerview/widget/e;->l:[I

    aget v8, v0, v3

    iget v9, p0, Landroidx/recyclerview/widget/e;->r:I

    invoke-interface/range {v4 .. v9}, Landroidx/recyclerview/widget/ae$a;->a(IIIII)V

    return-void

    :cond_7
    :goto_2
    return-void
.end method
