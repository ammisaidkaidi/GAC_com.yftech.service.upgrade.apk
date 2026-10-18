.class Landroidx/l/a/c$a;
.super Landroid/database/DataSetObserver;
.source "SourceFile"

# interfaces
.implements Landroidx/l/a/d$e;
.implements Landroidx/l/a/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/l/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/l/a/c;

.field private b:I


# direct methods
.method constructor <init>(Landroidx/l/a/c;)V
    .locals 0

    .line 475
    iput-object p1, p0, Landroidx/l/a/c$a;->a:Landroidx/l/a/c;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 489
    iget p1, p0, Landroidx/l/a/c$a;->b:I

    if-nez p1, :cond_1

    .line 491
    iget-object p1, p0, Landroidx/l/a/c$a;->a:Landroidx/l/a/c;

    iget-object v0, p0, Landroidx/l/a/c$a;->a:Landroidx/l/a/c;

    iget-object v0, v0, Landroidx/l/a/c;->a:Landroidx/l/a/d;

    invoke-virtual {v0}, Landroidx/l/a/d;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Landroidx/l/a/c$a;->a:Landroidx/l/a/c;

    iget-object v1, v1, Landroidx/l/a/c;->a:Landroidx/l/a/d;

    invoke-virtual {v1}, Landroidx/l/a/d;->getAdapter()Landroidx/l/a/a;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/l/a/c;->a(ILandroidx/l/a/a;)V

    .line 493
    iget-object p1, p0, Landroidx/l/a/c$a;->a:Landroidx/l/a/c;

    iget p1, p1, Landroidx/l/a/c;->e:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p1, p0, Landroidx/l/a/c$a;->a:Landroidx/l/a/c;

    iget v0, p1, Landroidx/l/a/c;->e:F

    .line 494
    :cond_0
    iget-object p1, p0, Landroidx/l/a/c$a;->a:Landroidx/l/a/c;

    iget-object p0, p0, Landroidx/l/a/c$a;->a:Landroidx/l/a/c;

    iget-object p0, p0, Landroidx/l/a/c;->a:Landroidx/l/a/d;

    invoke-virtual {p0}, Landroidx/l/a/d;->getCurrentItem()I

    move-result p0

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Landroidx/l/a/c;->a(IFZ)V

    :cond_1
    return-void
.end method

.method public a(IFI)V
    .locals 0

    const/high16 p3, 0x3f000000    # 0.5f

    cmpl-float p3, p2, p3

    if-lez p3, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 484
    :cond_0
    iget-object p0, p0, Landroidx/l/a/c$a;->a:Landroidx/l/a/c;

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/l/a/c;->a(IFZ)V

    return-void
.end method

.method public a(Landroidx/l/a/d;Landroidx/l/a/a;Landroidx/l/a/a;)V
    .locals 0

    .line 506
    iget-object p0, p0, Landroidx/l/a/c$a;->a:Landroidx/l/a/c;

    invoke-virtual {p0, p2, p3}, Landroidx/l/a/c;->a(Landroidx/l/a/a;Landroidx/l/a/a;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 500
    iput p1, p0, Landroidx/l/a/c$a;->b:I

    return-void
.end method

.method public onChanged()V
    .locals 3

    .line 511
    iget-object v0, p0, Landroidx/l/a/c$a;->a:Landroidx/l/a/c;

    iget-object v1, p0, Landroidx/l/a/c$a;->a:Landroidx/l/a/c;

    iget-object v1, v1, Landroidx/l/a/c;->a:Landroidx/l/a/d;

    invoke-virtual {v1}, Landroidx/l/a/d;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Landroidx/l/a/c$a;->a:Landroidx/l/a/c;

    iget-object v2, v2, Landroidx/l/a/c;->a:Landroidx/l/a/d;

    invoke-virtual {v2}, Landroidx/l/a/d;->getAdapter()Landroidx/l/a/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/l/a/c;->a(ILandroidx/l/a/a;)V

    .line 513
    iget-object v0, p0, Landroidx/l/a/c$a;->a:Landroidx/l/a/c;

    iget v0, v0, Landroidx/l/a/c;->e:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroidx/l/a/c$a;->a:Landroidx/l/a/c;

    iget v1, v0, Landroidx/l/a/c;->e:F

    .line 514
    :cond_0
    iget-object v0, p0, Landroidx/l/a/c$a;->a:Landroidx/l/a/c;

    iget-object p0, p0, Landroidx/l/a/c$a;->a:Landroidx/l/a/c;

    iget-object p0, p0, Landroidx/l/a/c;->a:Landroidx/l/a/d;

    invoke-virtual {p0}, Landroidx/l/a/d;->getCurrentItem()I

    move-result p0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroidx/l/a/c;->a(IFZ)V

    return-void
.end method
