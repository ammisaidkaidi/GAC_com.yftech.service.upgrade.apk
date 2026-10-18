.class Landroidx/d/b/b/s$a;
.super Landroidx/d/b/b/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/b/b/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:F

.field final synthetic d:Landroidx/d/b/b/s;


# direct methods
.method constructor <init>(Landroidx/d/b/b/s;)V
    .locals 0

    .line 1695
    iput-object p1, p0, Landroidx/d/b/b/s$a;->d:Landroidx/d/b/b/s;

    invoke-direct {p0}, Landroidx/d/b/b/r;-><init>()V

    const/4 p1, 0x0

    .line 1696
    iput p1, p0, Landroidx/d/b/b/s$a;->a:F

    .line 1697
    iput p1, p0, Landroidx/d/b/b/s$a;->b:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 0

    .line 1728
    iget-object p0, p0, Landroidx/d/b/b/s$a;->d:Landroidx/d/b/b/s;

    iget p0, p0, Landroidx/d/b/b/s;->k:F

    return p0
.end method

.method public a(FFF)V
    .locals 0

    .line 1701
    iput p1, p0, Landroidx/d/b/b/s$a;->a:F

    .line 1702
    iput p2, p0, Landroidx/d/b/b/s$a;->b:F

    .line 1703
    iput p3, p0, Landroidx/d/b/b/s$a;->c:F

    return-void
.end method

.method public getInterpolation(F)F
    .locals 4

    .line 1708
    iget v0, p0, Landroidx/d/b/b/s$a;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-lez v0, :cond_1

    .line 1709
    iget v0, p0, Landroidx/d/b/b/s$a;->a:F

    iget v2, p0, Landroidx/d/b/b/s$a;->c:F

    div-float/2addr v0, v2

    cmpg-float v0, v0, p1

    if-gez v0, :cond_0

    .line 1710
    iget p1, p0, Landroidx/d/b/b/s$a;->a:F

    iget v0, p0, Landroidx/d/b/b/s$a;->c:F

    div-float/2addr p1, v0

    .line 1712
    :cond_0
    iget-object v0, p0, Landroidx/d/b/b/s$a;->d:Landroidx/d/b/b/s;

    iget v2, p0, Landroidx/d/b/b/s$a;->a:F

    iget v3, p0, Landroidx/d/b/b/s$a;->c:F

    mul-float/2addr v3, p1

    sub-float/2addr v2, v3

    iput v2, v0, Landroidx/d/b/b/s;->k:F

    .line 1713
    iget v0, p0, Landroidx/d/b/b/s$a;->a:F

    mul-float/2addr v0, p1

    iget v2, p0, Landroidx/d/b/b/s$a;->c:F

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 1714
    iget p0, p0, Landroidx/d/b/b/s$a;->b:F

    add-float/2addr v0, p0

    return v0

    .line 1717
    :cond_1
    iget v0, p0, Landroidx/d/b/b/s$a;->a:F

    neg-float v0, v0

    iget v2, p0, Landroidx/d/b/b/s$a;->c:F

    div-float/2addr v0, v2

    cmpg-float v0, v0, p1

    if-gez v0, :cond_2

    .line 1718
    iget p1, p0, Landroidx/d/b/b/s$a;->a:F

    neg-float p1, p1

    iget v0, p0, Landroidx/d/b/b/s$a;->c:F

    div-float/2addr p1, v0

    .line 1720
    :cond_2
    iget-object v0, p0, Landroidx/d/b/b/s$a;->d:Landroidx/d/b/b/s;

    iget v2, p0, Landroidx/d/b/b/s$a;->a:F

    iget v3, p0, Landroidx/d/b/b/s$a;->c:F

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, v0, Landroidx/d/b/b/s;->k:F

    .line 1721
    iget v0, p0, Landroidx/d/b/b/s$a;->a:F

    mul-float/2addr v0, p1

    iget v2, p0, Landroidx/d/b/b/s$a;->c:F

    mul-float/2addr v2, p1

    mul-float/2addr v2, p1

    div-float/2addr v2, v1

    add-float/2addr v0, v2

    .line 1722
    iget p0, p0, Landroidx/d/b/b/s$a;->b:F

    add-float/2addr v0, p0

    return v0
.end method
