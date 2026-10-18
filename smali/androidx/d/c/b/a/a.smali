.class Landroidx/d/c/b/a/a;
.super Landroidx/d/c/b/a/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/d/c/b/a/p;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroidx/d/c/b/a/g;-><init>(Landroidx/d/c/b/a/p;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/d/c/b/a/f;)V
    .locals 1

    .line 26
    iget-object p1, p0, Landroidx/d/c/b/a/a;->d:Landroidx/d/c/b/a/p;

    check-cast p1, Landroidx/d/c/b/a/n;

    .line 27
    iget-object p1, p1, Landroidx/d/c/b/a/n;->a:Landroidx/d/c/b/a/f;

    iget-object v0, p0, Landroidx/d/c/b/a/a;->d:Landroidx/d/c/b/a/p;

    iget-object v0, v0, Landroidx/d/c/b/a/p;->d:Landroidx/d/c/b/e;

    invoke-virtual {v0}, Landroidx/d/c/b/e;->Z()I

    move-result v0

    iput v0, p1, Landroidx/d/c/b/a/f;->f:I

    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Landroidx/d/c/b/a/a;->j:Z

    return-void
.end method
