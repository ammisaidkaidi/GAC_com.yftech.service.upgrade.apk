.class Landroidx/core/l/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/l/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/core/l/a/b$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/l/a/b$a;Landroidx/core/l/a/b$a;)I
    .locals 3

    .line 62
    iget p0, p1, Landroidx/core/l/a/b$a;->c:I

    iget v0, p2, Landroidx/core/l/a/b$a;->c:I

    const/4 v1, -0x1

    if-ge p0, v0, :cond_0

    return v1

    .line 66
    :cond_0
    iget p0, p1, Landroidx/core/l/a/b$a;->c:I

    iget v0, p2, Landroidx/core/l/a/b$a;->c:I

    const/4 v2, 0x1

    if-le p0, v0, :cond_1

    return v2

    .line 70
    :cond_1
    iget p0, p1, Landroidx/core/l/a/b$a;->d:I

    iget v0, p2, Landroidx/core/l/a/b$a;->d:I

    if-ge p0, v0, :cond_2

    return v2

    .line 74
    :cond_2
    iget p0, p1, Landroidx/core/l/a/b$a;->d:I

    iget p1, p2, Landroidx/core/l/a/b$a;->d:I

    if-le p0, p1, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 59
    check-cast p1, Landroidx/core/l/a/b$a;

    check-cast p2, Landroidx/core/l/a/b$a;

    invoke-virtual {p0, p1, p2}, Landroidx/core/l/a/b$1;->a(Landroidx/core/l/a/b$a;Landroidx/core/l/a/b$a;)I

    move-result p0

    return p0
.end method
