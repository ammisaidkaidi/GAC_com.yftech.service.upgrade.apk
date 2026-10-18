.class Landroidx/fragment/app/k$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation


# instance fields
.field final a:Z

.field final b:Landroidx/fragment/app/a;

.field private c:I


# direct methods
.method constructor <init>(Landroidx/fragment/app/a;Z)V
    .locals 0

    .line 3329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3330
    iput-boolean p2, p0, Landroidx/fragment/app/k$g;->a:Z

    .line 3331
    iput-object p1, p0, Landroidx/fragment/app/k$g;->b:Landroidx/fragment/app/a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 3341
    iget v0, p0, Landroidx/fragment/app/k$g;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/fragment/app/k$g;->c:I

    .line 3342
    iget v0, p0, Landroidx/fragment/app/k$g;->c:I

    if-eqz v0, :cond_0

    return-void

    .line 3345
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/k$g;->b:Landroidx/fragment/app/a;

    iget-object p0, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->p()V

    return-void
.end method

.method public b()V
    .locals 1

    .line 3355
    iget v0, p0, Landroidx/fragment/app/k$g;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/fragment/app/k$g;->c:I

    return-void
.end method

.method public c()Z
    .locals 0

    .line 3362
    iget p0, p0, Landroidx/fragment/app/k$g;->c:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d()V
    .locals 7

    .line 3372
    iget v0, p0, Landroidx/fragment/app/k$g;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 3373
    :goto_0
    iget-object v3, p0, Landroidx/fragment/app/k$g;->b:Landroidx/fragment/app/a;

    iget-object v3, v3, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    .line 3374
    iget-object v4, v3, Landroidx/fragment/app/k;->l:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_2

    .line 3376
    iget-object v5, v3, Landroidx/fragment/app/k;->l:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/d;

    const/4 v6, 0x0

    .line 3377
    invoke-virtual {v5, v6}, Landroidx/fragment/app/d;->a(Landroidx/fragment/app/d$c;)V

    if-eqz v0, :cond_1

    .line 3378
    invoke-virtual {v5}, Landroidx/fragment/app/d;->aI()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3379
    invoke-virtual {v5}, Landroidx/fragment/app/d;->an()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3382
    :cond_2
    iget-object v1, p0, Landroidx/fragment/app/k$g;->b:Landroidx/fragment/app/a;

    iget-object v1, v1, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    iget-object v3, p0, Landroidx/fragment/app/k$g;->b:Landroidx/fragment/app/a;

    iget-boolean p0, p0, Landroidx/fragment/app/k$g;->a:Z

    xor-int/2addr v0, v2

    invoke-virtual {v1, v3, p0, v0, v2}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/a;ZZZ)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 3390
    iget-object v0, p0, Landroidx/fragment/app/k$g;->b:Landroidx/fragment/app/a;

    iget-object v0, v0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    iget-object v1, p0, Landroidx/fragment/app/k$g;->b:Landroidx/fragment/app/a;

    iget-boolean p0, p0, Landroidx/fragment/app/k$g;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2, v2}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/a;ZZZ)V

    return-void
.end method
