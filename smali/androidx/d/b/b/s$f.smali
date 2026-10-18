.class Landroidx/d/b/b/s$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/b/b/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:I

.field d:I

.field final e:Ljava/lang/String;

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final synthetic i:Landroidx/d/b/b/s;


# direct methods
.method constructor <init>(Landroidx/d/b/b/s;)V
    .locals 0

    .line 1362
    iput-object p1, p0, Landroidx/d/b/b/s$f;->i:Landroidx/d/b/b/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 1363
    iput p1, p0, Landroidx/d/b/b/s$f;->a:F

    .line 1364
    iput p1, p0, Landroidx/d/b/b/s$f;->b:F

    const/4 p1, -0x1

    .line 1365
    iput p1, p0, Landroidx/d/b/b/s$f;->c:I

    .line 1366
    iput p1, p0, Landroidx/d/b/b/s$f;->d:I

    const-string p1, "motion.progress"

    .line 1367
    iput-object p1, p0, Landroidx/d/b/b/s$f;->e:Ljava/lang/String;

    const-string p1, "motion.velocity"

    .line 1368
    iput-object p1, p0, Landroidx/d/b/b/s$f;->f:Ljava/lang/String;

    const-string p1, "motion.StartState"

    .line 1369
    iput-object p1, p0, Landroidx/d/b/b/s$f;->g:Ljava/lang/String;

    const-string p1, "motion.EndState"

    .line 1370
    iput-object p1, p0, Landroidx/d/b/b/s$f;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 1373
    iget v0, p0, Landroidx/d/b/b/s$f;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/d/b/b/s$f;->d:I

    if-eq v0, v1, :cond_3

    .line 1374
    :cond_0
    iget v0, p0, Landroidx/d/b/b/s$f;->c:I

    if-ne v0, v1, :cond_1

    .line 1375
    iget-object v0, p0, Landroidx/d/b/b/s$f;->i:Landroidx/d/b/b/s;

    iget v2, p0, Landroidx/d/b/b/s$f;->d:I

    invoke-virtual {v0, v2}, Landroidx/d/b/b/s;->b(I)V

    goto :goto_0

    .line 1376
    :cond_1
    iget v0, p0, Landroidx/d/b/b/s$f;->d:I

    if-ne v0, v1, :cond_2

    .line 1377
    iget-object v0, p0, Landroidx/d/b/b/s$f;->i:Landroidx/d/b/b/s;

    iget v2, p0, Landroidx/d/b/b/s$f;->c:I

    invoke-virtual {v0, v2, v1, v1}, Landroidx/d/b/b/s;->a(III)V

    goto :goto_0

    .line 1379
    :cond_2
    iget-object v0, p0, Landroidx/d/b/b/s$f;->i:Landroidx/d/b/b/s;

    iget v2, p0, Landroidx/d/b/b/s$f;->c:I

    iget v3, p0, Landroidx/d/b/b/s$f;->d:I

    invoke-virtual {v0, v2, v3}, Landroidx/d/b/b/s;->a(II)V

    .line 1381
    :goto_0
    iget-object v0, p0, Landroidx/d/b/b/s$f;->i:Landroidx/d/b/b/s;

    sget-object v2, Landroidx/d/b/b/s$h;->b:Landroidx/d/b/b/s$h;

    invoke-virtual {v0, v2}, Landroidx/d/b/b/s;->setState(Landroidx/d/b/b/s$h;)V

    .line 1383
    :cond_3
    iget v0, p0, Landroidx/d/b/b/s$f;->b:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1384
    iget v0, p0, Landroidx/d/b/b/s$f;->a:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 1387
    :cond_4
    iget-object v0, p0, Landroidx/d/b/b/s$f;->i:Landroidx/d/b/b/s;

    iget p0, p0, Landroidx/d/b/b/s$f;->a:F

    invoke-virtual {v0, p0}, Landroidx/d/b/b/s;->setProgress(F)V

    return-void

    .line 1390
    :cond_5
    iget-object v0, p0, Landroidx/d/b/b/s$f;->i:Landroidx/d/b/b/s;

    iget v2, p0, Landroidx/d/b/b/s$f;->a:F

    iget v3, p0, Landroidx/d/b/b/s$f;->b:F

    invoke-virtual {v0, v2, v3}, Landroidx/d/b/b/s;->a(FF)V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1391
    iput v0, p0, Landroidx/d/b/b/s$f;->a:F

    .line 1392
    iput v0, p0, Landroidx/d/b/b/s$f;->b:F

    .line 1393
    iput v1, p0, Landroidx/d/b/b/s$f;->c:I

    .line 1394
    iput v1, p0, Landroidx/d/b/b/s$f;->d:I

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 1414
    iput p1, p0, Landroidx/d/b/b/s$f;->a:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 1418
    iput p1, p0, Landroidx/d/b/b/s$f;->d:I

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "motion.progress"

    .line 1407
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/d/b/b/s$f;->a:F

    const-string v0, "motion.velocity"

    .line 1408
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Landroidx/d/b/b/s$f;->b:F

    const-string v0, "motion.StartState"

    .line 1409
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/d/b/b/s$f;->c:I

    const-string v0, "motion.EndState"

    .line 1410
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroidx/d/b/b/s$f;->d:I

    return-void
.end method

.method public b()Landroid/os/Bundle;
    .locals 3

    .line 1398
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "motion.progress"

    .line 1399
    iget v2, p0, Landroidx/d/b/b/s$f;->a:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "motion.velocity"

    .line 1400
    iget v2, p0, Landroidx/d/b/b/s$f;->b:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "motion.StartState"

    .line 1401
    iget v2, p0, Landroidx/d/b/b/s$f;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "motion.EndState"

    .line 1402
    iget p0, p0, Landroidx/d/b/b/s$f;->d:I

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public b(F)V
    .locals 0

    .line 1422
    iput p1, p0, Landroidx/d/b/b/s$f;->b:F

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1426
    iput p1, p0, Landroidx/d/b/b/s$f;->c:I

    return-void
.end method

.method public c()V
    .locals 1

    .line 1430
    iget-object v0, p0, Landroidx/d/b/b/s$f;->i:Landroidx/d/b/b/s;

    invoke-static {v0}, Landroidx/d/b/b/s;->a(Landroidx/d/b/b/s;)I

    move-result v0

    iput v0, p0, Landroidx/d/b/b/s$f;->d:I

    .line 1431
    iget-object v0, p0, Landroidx/d/b/b/s$f;->i:Landroidx/d/b/b/s;

    invoke-static {v0}, Landroidx/d/b/b/s;->b(Landroidx/d/b/b/s;)I

    move-result v0

    iput v0, p0, Landroidx/d/b/b/s$f;->c:I

    .line 1432
    iget-object v0, p0, Landroidx/d/b/b/s$f;->i:Landroidx/d/b/b/s;

    invoke-virtual {v0}, Landroidx/d/b/b/s;->getVelocity()F

    move-result v0

    iput v0, p0, Landroidx/d/b/b/s$f;->b:F

    .line 1433
    iget-object v0, p0, Landroidx/d/b/b/s$f;->i:Landroidx/d/b/b/s;

    invoke-virtual {v0}, Landroidx/d/b/b/s;->getProgress()F

    move-result v0

    iput v0, p0, Landroidx/d/b/b/s$f;->a:F

    return-void
.end method
