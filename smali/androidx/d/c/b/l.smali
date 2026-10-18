.class public Landroidx/d/c/b/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 50
    iget v0, p0, Landroidx/d/c/b/l;->a:I

    iget p0, p0, Landroidx/d/c/b/l;->c:I

    add-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method a(II)V
    .locals 1

    .line 34
    iget v0, p0, Landroidx/d/c/b/l;->a:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/d/c/b/l;->a:I

    .line 35
    iget v0, p0, Landroidx/d/c/b/l;->b:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroidx/d/c/b/l;->b:I

    .line 36
    iget v0, p0, Landroidx/d/c/b/l;->c:I

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/d/c/b/l;->c:I

    .line 37
    iget p1, p0, Landroidx/d/c/b/l;->d:I

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/d/c/b/l;->d:I

    return-void
.end method

.method public a(IIII)V
    .locals 0

    .line 28
    iput p1, p0, Landroidx/d/c/b/l;->a:I

    .line 29
    iput p2, p0, Landroidx/d/c/b/l;->b:I

    .line 30
    iput p3, p0, Landroidx/d/c/b/l;->c:I

    .line 31
    iput p4, p0, Landroidx/d/c/b/l;->d:I

    return-void
.end method

.method a(Landroidx/d/c/b/l;)Z
    .locals 3

    .line 41
    iget v0, p0, Landroidx/d/c/b/l;->a:I

    iget v1, p1, Landroidx/d/c/b/l;->a:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroidx/d/c/b/l;->a:I

    iget v1, p1, Landroidx/d/c/b/l;->a:I

    iget v2, p1, Landroidx/d/c/b/l;->c:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroidx/d/c/b/l;->b:I

    iget v1, p1, Landroidx/d/c/b/l;->b:I

    if-lt v0, v1, :cond_0

    iget p0, p0, Landroidx/d/c/b/l;->b:I

    iget v0, p1, Landroidx/d/c/b/l;->b:I

    iget p1, p1, Landroidx/d/c/b/l;->d:I

    add-int/2addr v0, p1

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()I
    .locals 1

    .line 51
    iget v0, p0, Landroidx/d/c/b/l;->b:I

    iget p0, p0, Landroidx/d/c/b/l;->d:I

    add-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public b(II)Z
    .locals 2

    .line 46
    iget v0, p0, Landroidx/d/c/b/l;->a:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Landroidx/d/c/b/l;->a:I

    iget v1, p0, Landroidx/d/c/b/l;->c:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget p1, p0, Landroidx/d/c/b/l;->b:I

    if-lt p2, p1, :cond_0

    iget p1, p0, Landroidx/d/c/b/l;->b:I

    iget p0, p0, Landroidx/d/c/b/l;->d:I

    add-int/2addr p1, p0

    if-ge p2, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
