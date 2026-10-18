.class Landroidx/recyclerview/widget/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/ae$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/ae$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/e;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/e;)V
    .locals 0

    .line 212
    iput-object p1, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x0

    .line 282
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    iget-object v1, v1, Landroidx/recyclerview/widget/e;->g:Landroidx/recyclerview/widget/af;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/af;->a()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 283
    iget-object v1, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    iget-object v1, v1, Landroidx/recyclerview/widget/e;->i:Landroidx/recyclerview/widget/ae$a;

    iget-object v2, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    iget-object v2, v2, Landroidx/recyclerview/widget/e;->g:Landroidx/recyclerview/widget/af;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/af;->b(I)Landroidx/recyclerview/widget/af$a;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/recyclerview/widget/ae$a;->a(Landroidx/recyclerview/widget/af$a;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    iget-object p0, p0, Landroidx/recyclerview/widget/e;->g:Landroidx/recyclerview/widget/af;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/af;->b()V

    return-void
.end method

.method private a(I)Z
    .locals 0

    .line 289
    iget-object p0, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    iget p0, p0, Landroidx/recyclerview/widget/e;->p:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/e$1;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    iput p2, p1, Landroidx/recyclerview/widget/e;->n:I

    .line 222
    iget-object p1, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    iget-object p1, p1, Landroidx/recyclerview/widget/e;->f:Landroidx/recyclerview/widget/e$b;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/e$b;->a()V

    .line 223
    iget-object p1, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    iget-object p2, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    iget p2, p2, Landroidx/recyclerview/widget/e;->p:I

    iput p2, p1, Landroidx/recyclerview/widget/e;->o:I

    .line 224
    invoke-direct {p0}, Landroidx/recyclerview/widget/e$1;->a()V

    .line 226
    iget-object p1, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    const/4 p2, 0x0

    iput-boolean p2, p1, Landroidx/recyclerview/widget/e;->m:Z

    .line 228
    iget-object p0, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/e;->d()V

    return-void
.end method

.method public a(ILandroidx/recyclerview/widget/af$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/recyclerview/widget/af$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 233
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/e$1;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 237
    iget-object p0, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    iget-object p0, p0, Landroidx/recyclerview/widget/e;->i:Landroidx/recyclerview/widget/ae$a;

    invoke-interface {p0, p2}, Landroidx/recyclerview/widget/ae$a;->a(Landroidx/recyclerview/widget/af$a;)V

    return-void

    .line 240
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    iget-object p1, p1, Landroidx/recyclerview/widget/e;->g:Landroidx/recyclerview/widget/af;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/af;->a(Landroidx/recyclerview/widget/af$a;)Landroidx/recyclerview/widget/af$a;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "AsyncListUtil"

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "duplicate tile @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroidx/recyclerview/widget/af$a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    iget-object v0, v0, Landroidx/recyclerview/widget/e;->i:Landroidx/recyclerview/widget/ae$a;

    invoke-interface {v0, p1}, Landroidx/recyclerview/widget/ae$a;->a(Landroidx/recyclerview/widget/af$a;)V

    .line 249
    :cond_1
    iget p1, p2, Landroidx/recyclerview/widget/af$a;->b:I

    iget v0, p2, Landroidx/recyclerview/widget/af$a;->c:I

    add-int/2addr p1, v0

    const/4 v0, 0x0

    .line 251
    :goto_0
    iget-object v1, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    iget-object v1, v1, Landroidx/recyclerview/widget/e;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 252
    iget-object v1, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    iget-object v1, v1, Landroidx/recyclerview/widget/e;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 253
    iget v2, p2, Landroidx/recyclerview/widget/af$a;->b:I

    if-gt v2, v1, :cond_2

    if-ge v1, p1, :cond_2

    .line 254
    iget-object v2, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    iget-object v2, v2, Landroidx/recyclerview/widget/e;->q:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 255
    iget-object v2, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    iget-object v2, v2, Landroidx/recyclerview/widget/e;->f:Landroidx/recyclerview/widget/e$b;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/e$b;->a(I)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public b(II)V
    .locals 1

    .line 264
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/e$1;->a(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 267
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    iget-object p1, p1, Landroidx/recyclerview/widget/e;->g:Landroidx/recyclerview/widget/af;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/af;->c(I)Landroidx/recyclerview/widget/af$a;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "AsyncListUtil"

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "tile not found @"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 275
    :cond_1
    iget-object p0, p0, Landroidx/recyclerview/widget/e$1;->a:Landroidx/recyclerview/widget/e;

    iget-object p0, p0, Landroidx/recyclerview/widget/e;->i:Landroidx/recyclerview/widget/ae$a;

    invoke-interface {p0, p1}, Landroidx/recyclerview/widget/ae$a;->a(Landroidx/recyclerview/widget/af$a;)V

    return-void
.end method
