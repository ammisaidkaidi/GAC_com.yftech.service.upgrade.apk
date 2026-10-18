.class Landroidx/d/b/a/b$a;
.super Landroidx/d/b/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/b/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:D

.field b:[D


# direct methods
.method constructor <init>(D[D)V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroidx/d/b/a/b;-><init>()V

    .line 64
    iput-wide p1, p0, Landroidx/d/b/a/b$a;->a:D

    .line 65
    iput-object p3, p0, Landroidx/d/b/a/b$a;->b:[D

    return-void
.end method


# virtual methods
.method public a(DI)D
    .locals 0

    .line 82
    iget-object p0, p0, Landroidx/d/b/a/b$a;->b:[D

    aget-wide p1, p0, p3

    return-wide p1
.end method

.method public a(D[D)V
    .locals 0

    .line 70
    iget-object p1, p0, Landroidx/d/b/a/b$a;->b:[D

    iget-object p0, p0, Landroidx/d/b/a/b$a;->b:[D

    array-length p0, p0

    const/4 p2, 0x0

    invoke-static {p1, p2, p3, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public a(D[F)V
    .locals 2

    const/4 p1, 0x0

    .line 75
    :goto_0
    iget-object p2, p0, Landroidx/d/b/a/b$a;->b:[D

    array-length p2, p2

    if-ge p1, p2, :cond_0

    .line 76
    iget-object p2, p0, Landroidx/d/b/a/b$a;->b:[D

    aget-wide v0, p2, p1

    double-to-float p2, v0

    aput p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()[D
    .locals 3

    const/4 v0, 0x1

    .line 99
    new-array v0, v0, [D

    iget-wide v1, p0, Landroidx/d/b/a/b$a;->a:D

    const/4 p0, 0x0

    aput-wide v1, v0, p0

    return-object v0
.end method

.method public b(DI)D
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public b(D[D)V
    .locals 2

    const/4 p1, 0x0

    .line 87
    :goto_0
    iget-object p2, p0, Landroidx/d/b/a/b$a;->b:[D

    array-length p2, p2

    if-ge p1, p2, :cond_0

    const-wide/16 v0, 0x0

    .line 88
    aput-wide v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
