.class abstract Landroidx/k/b/a/i$e;
.super Landroidx/k/b/a/i$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/k/b/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "e"
.end annotation


# static fields
.field protected static final l:I


# instance fields
.field protected m:[Landroidx/core/graphics/h$b;

.field n:Ljava/lang/String;

.field o:I

.field p:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1693
    invoke-direct {p0, v0}, Landroidx/k/b/a/i$d;-><init>(Landroidx/k/b/a/i$1;)V

    .line 1687
    iput-object v0, p0, Landroidx/k/b/a/i$e;->m:[Landroidx/core/graphics/h$b;

    const/4 v0, 0x0

    .line 1690
    iput v0, p0, Landroidx/k/b/a/i$e;->o:I

    return-void
.end method

.method public constructor <init>(Landroidx/k/b/a/i$e;)V
    .locals 1

    const/4 v0, 0x0

    .line 1719
    invoke-direct {p0, v0}, Landroidx/k/b/a/i$d;-><init>(Landroidx/k/b/a/i$1;)V

    .line 1687
    iput-object v0, p0, Landroidx/k/b/a/i$e;->m:[Landroidx/core/graphics/h$b;

    const/4 v0, 0x0

    .line 1690
    iput v0, p0, Landroidx/k/b/a/i$e;->o:I

    .line 1720
    iget-object v0, p1, Landroidx/k/b/a/i$e;->n:Ljava/lang/String;

    iput-object v0, p0, Landroidx/k/b/a/i$e;->n:Ljava/lang/String;

    .line 1721
    iget v0, p1, Landroidx/k/b/a/i$e;->p:I

    iput v0, p0, Landroidx/k/b/a/i$e;->p:I

    .line 1722
    iget-object p1, p1, Landroidx/k/b/a/i$e;->m:[Landroidx/core/graphics/h$b;

    invoke-static {p1}, Landroidx/core/graphics/h;->a([Landroidx/core/graphics/h$b;)[Landroidx/core/graphics/h$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/k/b/a/i$e;->m:[Landroidx/core/graphics/h$b;

    return-void
.end method


# virtual methods
.method public a([Landroidx/core/graphics/h$b;)Ljava/lang/String;
    .locals 5

    const-string p0, " "

    const/4 v0, 0x0

    move-object v1, p0

    move p0, v0

    .line 1709
    :goto_0
    array-length v2, p1

    if-ge p0, v2, :cond_1

    .line 1710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, p0

    iget-char v1, v1, Landroidx/core/graphics/h$b;->a:C

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1711
    aget-object v2, p1, p0

    iget-object v2, v2, Landroidx/core/graphics/h$b;->b:[F

    move-object v3, v1

    move v1, v0

    .line 1712
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 1713
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v2, v1

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    move-object v1, v3

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public a(I)V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 1700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "VectorDrawableCompat"

    .line 1702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "current path is :"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/k/b/a/i$e;->n:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pathData is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/k/b/a/i$e;->m:[Landroidx/core/graphics/h$b;

    .line 1703
    invoke-virtual {p0, v0}, Landroidx/k/b/a/i$e;->a([Landroidx/core/graphics/h$b;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1702
    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/content/res/Resources$Theme;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Path;)V
    .locals 1

    .line 1726
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1727
    iget-object v0, p0, Landroidx/k/b/a/i$e;->m:[Landroidx/core/graphics/h$b;

    if-eqz v0, :cond_0

    .line 1728
    iget-object p0, p0, Landroidx/k/b/a/i$e;->m:[Landroidx/core/graphics/h$b;

    invoke-static {p0, p1}, Landroidx/core/graphics/h$b;->a([Landroidx/core/graphics/h$b;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPathData()[Landroidx/core/graphics/h$b;
    .locals 0

    .line 1750
    iget-object p0, p0, Landroidx/k/b/a/i$e;->m:[Landroidx/core/graphics/h$b;

    return-object p0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 0

    .line 1733
    iget-object p0, p0, Landroidx/k/b/a/i$e;->n:Ljava/lang/String;

    return-object p0
.end method

.method public setPathData([Landroidx/core/graphics/h$b;)V
    .locals 1

    .line 1755
    iget-object v0, p0, Landroidx/k/b/a/i$e;->m:[Landroidx/core/graphics/h$b;

    invoke-static {v0, p1}, Landroidx/core/graphics/h;->a([Landroidx/core/graphics/h$b;[Landroidx/core/graphics/h$b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1757
    invoke-static {p1}, Landroidx/core/graphics/h;->a([Landroidx/core/graphics/h$b;)[Landroidx/core/graphics/h$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/k/b/a/i$e;->m:[Landroidx/core/graphics/h$b;

    goto :goto_0

    .line 1759
    :cond_0
    iget-object p0, p0, Landroidx/k/b/a/i$e;->m:[Landroidx/core/graphics/h$b;

    invoke-static {p0, p1}, Landroidx/core/graphics/h;->b([Landroidx/core/graphics/h$b;[Landroidx/core/graphics/h$b;)V

    :goto_0
    return-void
.end method
