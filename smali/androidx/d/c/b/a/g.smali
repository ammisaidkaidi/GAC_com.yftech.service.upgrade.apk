.class Landroidx/d/c/b/a/g;
.super Landroidx/d/c/b/a/f;
.source "SourceFile"


# instance fields
.field public m:I


# direct methods
.method public constructor <init>(Landroidx/d/c/b/a/p;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroidx/d/c/b/a/f;-><init>(Landroidx/d/c/b/a/p;)V

    .line 25
    instance-of p1, p1, Landroidx/d/c/b/a/l;

    if-eqz p1, :cond_0

    .line 26
    sget-object p1, Landroidx/d/c/b/a/f$a;->b:Landroidx/d/c/b/a/f$a;

    iput-object p1, p0, Landroidx/d/c/b/a/g;->e:Landroidx/d/c/b/a/f$a;

    goto :goto_0

    .line 28
    :cond_0
    sget-object p1, Landroidx/d/c/b/a/f$a;->c:Landroidx/d/c/b/a/f$a;

    iput-object p1, p0, Landroidx/d/c/b/a/g;->e:Landroidx/d/c/b/a/f$a;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 33
    iget-boolean v0, p0, Landroidx/d/c/b/a/g;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Landroidx/d/c/b/a/g;->j:Z

    .line 37
    iput p1, p0, Landroidx/d/c/b/a/g;->g:I

    .line 38
    iget-object p0, p0, Landroidx/d/c/b/a/g;->k:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/d/c/b/a/d;

    .line 39
    invoke-interface {p1, p1}, Landroidx/d/c/b/a/d;->a(Landroidx/d/c/b/a/d;)V

    goto :goto_0

    :cond_1
    return-void
.end method
