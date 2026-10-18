.class public Landroidx/d/c/a/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/d/c/a/d;


# instance fields
.field final a:Landroidx/d/c/a/e;

.field private b:I

.field private c:Landroidx/d/c/b/h;

.field private d:I

.field private e:I

.field private f:F

.field private g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/d/c/a/e;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Landroidx/d/c/a/a/e;->d:I

    .line 30
    iput v0, p0, Landroidx/d/c/a/a/e;->e:I

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Landroidx/d/c/a/a/e;->f:F

    .line 43
    iput-object p1, p0, Landroidx/d/c/a/a/e;->a:Landroidx/d/c/a/e;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 0

    .line 39
    iget-object p0, p0, Landroidx/d/c/a/a/e;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public a(F)V
    .locals 1

    const/4 v0, -0x1

    .line 59
    iput v0, p0, Landroidx/d/c/a/a/e;->d:I

    .line 60
    iput v0, p0, Landroidx/d/c/a/a/e;->e:I

    .line 61
    iput p1, p0, Landroidx/d/c/a/a/e;->f:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 65
    iput p1, p0, Landroidx/d/c/a/a/e;->b:I

    return-void
.end method

.method public a(Landroidx/d/c/b/e;)V
    .locals 1

    .line 93
    instance-of v0, p1, Landroidx/d/c/b/h;

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Landroidx/d/c/b/h;

    iput-object p1, p0, Landroidx/d/c/a/a/e;->c:Landroidx/d/c/b/h;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 96
    iput-object p1, p0, Landroidx/d/c/a/a/e;->c:Landroidx/d/c/b/h;

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 36
    iput-object p1, p0, Landroidx/d/c/a/a/e;->g:Ljava/lang/Object;

    return-void
.end method

.method public b()I
    .locals 0

    .line 69
    iget p0, p0, Landroidx/d/c/a/a/e;->b:I

    return p0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1

    .line 47
    iget-object v0, p0, Landroidx/d/c/a/a/e;->a:Landroidx/d/c/a/e;

    invoke-virtual {v0, p1}, Landroidx/d/c/a/e;->a(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/d/c/a/a/e;->d:I

    const/4 p1, -0x1

    .line 48
    iput p1, p0, Landroidx/d/c/a/a/e;->e:I

    const/4 p1, 0x0

    .line 49
    iput p1, p0, Landroidx/d/c/a/a/e;->f:F

    return-void
.end method

.method public c()Landroidx/d/c/b/e;
    .locals 1

    .line 85
    iget-object v0, p0, Landroidx/d/c/a/a/e;->c:Landroidx/d/c/b/h;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Landroidx/d/c/b/h;

    invoke-direct {v0}, Landroidx/d/c/b/h;-><init>()V

    iput-object v0, p0, Landroidx/d/c/a/a/e;->c:Landroidx/d/c/b/h;

    .line 88
    :cond_0
    iget-object p0, p0, Landroidx/d/c/a/a/e;->c:Landroidx/d/c/b/h;

    return-object p0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Landroidx/d/c/a/a/e;->d:I

    .line 54
    iget-object v0, p0, Landroidx/d/c/a/a/e;->a:Landroidx/d/c/a/e;

    invoke-virtual {v0, p1}, Landroidx/d/c/a/e;->a(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/d/c/a/a/e;->e:I

    const/4 p1, 0x0

    .line 55
    iput p1, p0, Landroidx/d/c/a/a/e;->f:F

    return-void
.end method

.method public s()V
    .locals 2

    .line 73
    iget-object v0, p0, Landroidx/d/c/a/a/e;->c:Landroidx/d/c/b/h;

    iget v1, p0, Landroidx/d/c/a/a/e;->b:I

    invoke-virtual {v0, v1}, Landroidx/d/c/b/h;->a(I)V

    .line 74
    iget v0, p0, Landroidx/d/c/a/a/e;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Landroidx/d/c/a/a/e;->c:Landroidx/d/c/b/h;

    iget p0, p0, Landroidx/d/c/a/a/e;->d:I

    invoke-virtual {v0, p0}, Landroidx/d/c/b/h;->C(I)V

    goto :goto_0

    .line 76
    :cond_0
    iget v0, p0, Landroidx/d/c/a/a/e;->e:I

    if-eq v0, v1, :cond_1

    .line 77
    iget-object v0, p0, Landroidx/d/c/a/a/e;->c:Landroidx/d/c/b/h;

    iget p0, p0, Landroidx/d/c/a/a/e;->e:I

    invoke-virtual {v0, p0}, Landroidx/d/c/b/h;->D(I)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Landroidx/d/c/a/a/e;->c:Landroidx/d/c/b/h;

    iget p0, p0, Landroidx/d/c/a/a/e;->f:F

    invoke-virtual {v0, p0}, Landroidx/d/c/b/h;->e(F)V

    :goto_0
    return-void
.end method
