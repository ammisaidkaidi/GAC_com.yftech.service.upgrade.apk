.class Landroidx/d/b/b/w$b;
.super Landroidx/d/b/b/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/b/b/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field d:Ljava/lang/String;

.field e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/d/e/b;",
            ">;"
        }
    .end annotation
.end field

.field f:[F


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/d/e/b;",
            ">;)V"
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Landroidx/d/b/b/w;-><init>()V

    const-string v0, ","

    .line 260
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    iput-object p1, p0, Landroidx/d/b/b/w$b;->d:Ljava/lang/String;

    .line 261
    iput-object p2, p0, Landroidx/d/b/b/w$b;->e:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 11

    .line 265
    iget-object v0, p0, Landroidx/d/b/b/w$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 266
    iget-object v1, p0, Landroidx/d/b/b/w$b;->e:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/e/b;

    invoke-virtual {v1}, Landroidx/d/e/b;->b()I

    move-result v1

    .line 267
    new-array v3, v0, [D

    .line 268
    new-array v4, v1, [F

    iput-object v4, p0, Landroidx/d/b/b/w$b;->f:[F

    .line 269
    filled-new-array {v0, v1}, [I

    move-result-object v1

    const-class v4, D

    invoke-static {v4, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_1

    .line 272
    iget-object v5, p0, Landroidx/d/b/b/w$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 273
    iget-object v6, p0, Landroidx/d/b/b/w$b;->e:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/d/e/b;

    int-to-double v7, v5

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v7, v9

    .line 275
    aput-wide v7, v3, v4

    .line 276
    iget-object v5, p0, Landroidx/d/b/b/w$b;->f:[F

    invoke-virtual {v6, v5}, Landroidx/d/e/b;->a([F)V

    move v5, v2

    .line 277
    :goto_1
    iget-object v6, p0, Landroidx/d/b/b/w$b;->f:[F

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 278
    aget-object v6, v1, v4

    iget-object v7, p0, Landroidx/d/b/b/w$b;->f:[F

    aget v7, v7, v5

    float-to-double v7, v7

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 282
    :cond_1
    invoke-static {p1, v3, v1}, Landroidx/d/b/a/b;->a(I[D[[D)Landroidx/d/b/a/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/d/b/b/w$b;->a:Landroidx/d/b/a/b;

    return-void
.end method

.method public a(IF)V
    .locals 0

    .line 287
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "don\'t call for custom attribute call setPoint(pos, ConstraintAttribute)"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(ILandroidx/d/e/b;)V
    .locals 0

    .line 291
    iget-object p0, p0, Landroidx/d/b/b/w$b;->e:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 3

    .line 296
    iget-object v0, p0, Landroidx/d/b/b/w$b;->a:Landroidx/d/b/a/b;

    float-to-double v1, p2

    iget-object p2, p0, Landroidx/d/b/b/w$b;->f:[F

    invoke-virtual {v0, v1, v2, p2}, Landroidx/d/b/a/b;->a(D[F)V

    .line 297
    iget-object p2, p0, Landroidx/d/b/b/w$b;->e:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/d/e/b;

    iget-object p0, p0, Landroidx/d/b/b/w$b;->f:[F

    invoke-virtual {p2, p1, p0}, Landroidx/d/e/b;->a(Landroid/view/View;[F)V

    return-void
.end method
