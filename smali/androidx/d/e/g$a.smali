.class public Landroidx/d/e/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field public final b:Landroidx/d/e/g$d;

.field public final c:Landroidx/d/e/g$c;

.field public final d:Landroidx/d/e/g$b;

.field public final e:Landroidx/d/e/g$e;

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/d/e/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1259
    new-instance v0, Landroidx/d/e/g$d;

    invoke-direct {v0}, Landroidx/d/e/g$d;-><init>()V

    iput-object v0, p0, Landroidx/d/e/g$a;->b:Landroidx/d/e/g$d;

    .line 1260
    new-instance v0, Landroidx/d/e/g$c;

    invoke-direct {v0}, Landroidx/d/e/g$c;-><init>()V

    iput-object v0, p0, Landroidx/d/e/g$a;->c:Landroidx/d/e/g$c;

    .line 1261
    new-instance v0, Landroidx/d/e/g$b;

    invoke-direct {v0}, Landroidx/d/e/g$b;-><init>()V

    iput-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    .line 1262
    new-instance v0, Landroidx/d/e/g$e;

    invoke-direct {v0}, Landroidx/d/e/g$e;-><init>()V

    iput-object v0, p0, Landroidx/d/e/g$a;->e:Landroidx/d/e/g$e;

    .line 1263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/d/e/g$a;->f:Ljava/util/HashMap;

    return-void
.end method

.method private a(Ljava/lang/String;Landroidx/d/e/b$a;)Landroidx/d/e/b;
    .locals 1

    .line 1267
    iget-object v0, p0, Landroidx/d/e/g$a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1268
    iget-object p0, p0, Landroidx/d/e/g$a;->f:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/d/e/b;

    .line 1269
    invoke-virtual {p0}, Landroidx/d/e/b;->a()Landroidx/d/e/b$a;

    move-result-object p1

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 1270
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ConstraintAttribute is already a "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    invoke-virtual {p0}, Landroidx/d/e/b;->a()Landroidx/d/e/b$a;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/d/e/b$a;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1274
    :cond_1
    new-instance v0, Landroidx/d/e/b;

    invoke-direct {v0, p1, p2}, Landroidx/d/e/b;-><init>(Ljava/lang/String;Landroidx/d/e/b$a;)V

    .line 1275
    iget-object p0, p0, Landroidx/d/e/g$a;->f:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method private a(ILandroidx/d/e/d$a;)V
    .locals 1

    .line 1336
    iput p1, p0, Landroidx/d/e/g$a;->a:I

    .line 1337
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->v:I

    iput v0, p1, Landroidx/d/e/g$b;->i:I

    .line 1338
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->w:I

    iput v0, p1, Landroidx/d/e/g$b;->j:I

    .line 1339
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->x:I

    iput v0, p1, Landroidx/d/e/g$b;->k:I

    .line 1340
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->y:I

    iput v0, p1, Landroidx/d/e/g$b;->l:I

    .line 1341
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->z:I

    iput v0, p1, Landroidx/d/e/g$b;->m:I

    .line 1342
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->A:I

    iput v0, p1, Landroidx/d/e/g$b;->n:I

    .line 1343
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->B:I

    iput v0, p1, Landroidx/d/e/g$b;->o:I

    .line 1344
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->C:I

    iput v0, p1, Landroidx/d/e/g$b;->p:I

    .line 1345
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->D:I

    iput v0, p1, Landroidx/d/e/g$b;->q:I

    .line 1346
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->H:I

    iput v0, p1, Landroidx/d/e/g$b;->r:I

    .line 1347
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->I:I

    iput v0, p1, Landroidx/d/e/g$b;->s:I

    .line 1348
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->J:I

    iput v0, p1, Landroidx/d/e/g$b;->t:I

    .line 1349
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->K:I

    iput v0, p1, Landroidx/d/e/g$b;->u:I

    .line 1351
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->R:F

    iput v0, p1, Landroidx/d/e/g$b;->v:F

    .line 1352
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->S:F

    iput v0, p1, Landroidx/d/e/g$b;->w:F

    .line 1353
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget-object v0, p2, Landroidx/d/e/d$a;->T:Ljava/lang/String;

    iput-object v0, p1, Landroidx/d/e/g$b;->x:Ljava/lang/String;

    .line 1355
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->E:I

    iput v0, p1, Landroidx/d/e/g$b;->y:I

    .line 1356
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->F:I

    iput v0, p1, Landroidx/d/e/g$b;->z:I

    .line 1357
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->G:F

    iput v0, p1, Landroidx/d/e/g$b;->A:F

    .line 1359
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->ai:I

    iput v0, p1, Landroidx/d/e/g$b;->B:I

    .line 1360
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->aj:I

    iput v0, p1, Landroidx/d/e/g$b;->C:I

    .line 1361
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->ak:I

    iput v0, p1, Landroidx/d/e/g$b;->D:I

    .line 1362
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->u:F

    iput v0, p1, Landroidx/d/e/g$b;->h:F

    .line 1363
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->s:I

    iput v0, p1, Landroidx/d/e/g$b;->f:I

    .line 1364
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->t:I

    iput v0, p1, Landroidx/d/e/g$b;->g:I

    .line 1365
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->width:I

    iput v0, p1, Landroidx/d/e/g$b;->c:I

    .line 1366
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->height:I

    iput v0, p1, Landroidx/d/e/g$b;->d:I

    .line 1367
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->leftMargin:I

    iput v0, p1, Landroidx/d/e/g$b;->E:I

    .line 1368
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->rightMargin:I

    iput v0, p1, Landroidx/d/e/g$b;->F:I

    .line 1369
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->topMargin:I

    iput v0, p1, Landroidx/d/e/g$b;->G:I

    .line 1370
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->bottomMargin:I

    iput v0, p1, Landroidx/d/e/g$b;->H:I

    .line 1371
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->X:F

    iput v0, p1, Landroidx/d/e/g$b;->Q:F

    .line 1372
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->W:F

    iput v0, p1, Landroidx/d/e/g$b;->R:F

    .line 1373
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->Z:I

    iput v0, p1, Landroidx/d/e/g$b;->T:I

    .line 1374
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->Y:I

    iput v0, p1, Landroidx/d/e/g$b;->S:I

    .line 1375
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget-boolean v0, p2, Landroidx/d/e/d$a;->al:Z

    iput-boolean v0, p1, Landroidx/d/e/g$b;->ai:Z

    .line 1376
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget-boolean v0, p2, Landroidx/d/e/d$a;->am:Z

    iput-boolean v0, p1, Landroidx/d/e/g$b;->aj:Z

    .line 1377
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->aa:I

    iput v0, p1, Landroidx/d/e/g$b;->U:I

    .line 1378
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->ab:I

    iput v0, p1, Landroidx/d/e/g$b;->V:I

    .line 1379
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->ae:I

    iput v0, p1, Landroidx/d/e/g$b;->W:I

    .line 1380
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->af:I

    iput v0, p1, Landroidx/d/e/g$b;->X:I

    .line 1381
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->ac:I

    iput v0, p1, Landroidx/d/e/g$b;->Y:I

    .line 1382
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->ad:I

    iput v0, p1, Landroidx/d/e/g$b;->Z:I

    .line 1383
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->ag:F

    iput v0, p1, Landroidx/d/e/g$b;->aa:F

    .line 1384
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->ah:F

    iput v0, p1, Landroidx/d/e/g$b;->ab:F

    .line 1385
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget-object v0, p2, Landroidx/d/e/d$a;->an:Ljava/lang/String;

    iput-object v0, p1, Landroidx/d/e/g$b;->ah:Ljava/lang/String;

    .line 1386
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->M:I

    iput v0, p1, Landroidx/d/e/g$b;->L:I

    .line 1387
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->O:I

    iput v0, p1, Landroidx/d/e/g$b;->N:I

    .line 1388
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->L:I

    iput v0, p1, Landroidx/d/e/g$b;->K:I

    .line 1389
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->N:I

    iput v0, p1, Landroidx/d/e/g$b;->M:I

    .line 1390
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->P:I

    iput v0, p1, Landroidx/d/e/g$b;->P:I

    .line 1391
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, p2, Landroidx/d/e/d$a;->Q:I

    iput v0, p1, Landroidx/d/e/g$b;->O:I

    .line 1393
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 1395
    iget-object p1, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    invoke-virtual {p2}, Landroidx/d/e/d$a;->getMarginEnd()I

    move-result v0

    iput v0, p1, Landroidx/d/e/g$b;->I:I

    .line 1396
    iget-object p0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    invoke-virtual {p2}, Landroidx/d/e/d$a;->getMarginStart()I

    move-result p1

    iput p1, p0, Landroidx/d/e/g$b;->J:I

    :cond_0
    return-void
.end method

.method private a(ILandroidx/d/e/h$a;)V
    .locals 1

    .line 1319
    invoke-direct {p0, p1, p2}, Landroidx/d/e/g$a;->a(ILandroidx/d/e/d$a;)V

    .line 1320
    iget-object p1, p0, Landroidx/d/e/g$a;->b:Landroidx/d/e/g$d;

    iget v0, p2, Landroidx/d/e/h$a;->aH:F

    iput v0, p1, Landroidx/d/e/g$d;->d:F

    .line 1321
    iget-object p1, p0, Landroidx/d/e/g$a;->e:Landroidx/d/e/g$e;

    iget v0, p2, Landroidx/d/e/h$a;->aK:F

    iput v0, p1, Landroidx/d/e/g$e;->b:F

    .line 1322
    iget-object p1, p0, Landroidx/d/e/g$a;->e:Landroidx/d/e/g$e;

    iget v0, p2, Landroidx/d/e/h$a;->aL:F

    iput v0, p1, Landroidx/d/e/g$e;->c:F

    .line 1323
    iget-object p1, p0, Landroidx/d/e/g$a;->e:Landroidx/d/e/g$e;

    iget v0, p2, Landroidx/d/e/h$a;->aM:F

    iput v0, p1, Landroidx/d/e/g$e;->d:F

    .line 1324
    iget-object p1, p0, Landroidx/d/e/g$a;->e:Landroidx/d/e/g$e;

    iget v0, p2, Landroidx/d/e/h$a;->aN:F

    iput v0, p1, Landroidx/d/e/g$e;->e:F

    .line 1325
    iget-object p1, p0, Landroidx/d/e/g$a;->e:Landroidx/d/e/g$e;

    iget v0, p2, Landroidx/d/e/h$a;->aO:F

    iput v0, p1, Landroidx/d/e/g$e;->f:F

    .line 1326
    iget-object p1, p0, Landroidx/d/e/g$a;->e:Landroidx/d/e/g$e;

    iget v0, p2, Landroidx/d/e/h$a;->aP:F

    iput v0, p1, Landroidx/d/e/g$e;->g:F

    .line 1327
    iget-object p1, p0, Landroidx/d/e/g$a;->e:Landroidx/d/e/g$e;

    iget v0, p2, Landroidx/d/e/h$a;->aQ:F

    iput v0, p1, Landroidx/d/e/g$e;->h:F

    .line 1328
    iget-object p1, p0, Landroidx/d/e/g$a;->e:Landroidx/d/e/g$e;

    iget v0, p2, Landroidx/d/e/h$a;->aR:F

    iput v0, p1, Landroidx/d/e/g$e;->i:F

    .line 1329
    iget-object p1, p0, Landroidx/d/e/g$a;->e:Landroidx/d/e/g$e;

    iget v0, p2, Landroidx/d/e/h$a;->aS:F

    iput v0, p1, Landroidx/d/e/g$e;->j:F

    .line 1330
    iget-object p1, p0, Landroidx/d/e/g$a;->e:Landroidx/d/e/g$e;

    iget v0, p2, Landroidx/d/e/h$a;->aT:F

    iput v0, p1, Landroidx/d/e/g$e;->k:F

    .line 1331
    iget-object p1, p0, Landroidx/d/e/g$a;->e:Landroidx/d/e/g$e;

    iget v0, p2, Landroidx/d/e/h$a;->aJ:F

    iput v0, p1, Landroidx/d/e/g$e;->m:F

    .line 1332
    iget-object p0, p0, Landroidx/d/e/g$a;->e:Landroidx/d/e/g$e;

    iget-boolean p1, p2, Landroidx/d/e/h$a;->aI:Z

    iput-boolean p1, p0, Landroidx/d/e/g$e;->l:Z

    return-void
.end method

.method private a(Landroidx/d/e/c;ILandroidx/d/e/h$a;)V
    .locals 0

    .line 1308
    invoke-direct {p0, p2, p3}, Landroidx/d/e/g$a;->a(ILandroidx/d/e/h$a;)V

    .line 1309
    instance-of p2, p1, Landroidx/d/e/a;

    if-eqz p2, :cond_0

    .line 1310
    iget-object p2, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    const/4 p3, 0x1

    iput p3, p2, Landroidx/d/e/g$b;->ae:I

    .line 1311
    check-cast p1, Landroidx/d/e/a;

    .line 1312
    iget-object p2, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    invoke-virtual {p1}, Landroidx/d/e/a;->getType()I

    move-result p3

    iput p3, p2, Landroidx/d/e/g$b;->ac:I

    .line 1313
    iget-object p2, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    invoke-virtual {p1}, Landroidx/d/e/a;->getReferencedIds()[I

    move-result-object p3

    iput-object p3, p2, Landroidx/d/e/g$b;->af:[I

    .line 1314
    iget-object p0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    invoke-virtual {p1}, Landroidx/d/e/a;->getMargin()I

    move-result p1

    iput p1, p0, Landroidx/d/e/g$b;->ad:I

    :cond_0
    return-void
.end method

.method static synthetic a(Landroidx/d/e/g$a;ILandroidx/d/e/d$a;)V
    .locals 0

    .line 1256
    invoke-direct {p0, p1, p2}, Landroidx/d/e/g$a;->a(ILandroidx/d/e/d$a;)V

    return-void
.end method

.method static synthetic a(Landroidx/d/e/g$a;ILandroidx/d/e/h$a;)V
    .locals 0

    .line 1256
    invoke-direct {p0, p1, p2}, Landroidx/d/e/g$a;->a(ILandroidx/d/e/h$a;)V

    return-void
.end method

.method static synthetic a(Landroidx/d/e/g$a;Landroidx/d/e/c;ILandroidx/d/e/h$a;)V
    .locals 0

    .line 1256
    invoke-direct {p0, p1, p2, p3}, Landroidx/d/e/g$a;->a(Landroidx/d/e/c;ILandroidx/d/e/h$a;)V

    return-void
.end method

.method static synthetic a(Landroidx/d/e/g$a;Ljava/lang/String;F)V
    .locals 0

    .line 1256
    invoke-direct {p0, p1, p2}, Landroidx/d/e/g$a;->a(Ljava/lang/String;F)V

    return-void
.end method

.method static synthetic a(Landroidx/d/e/g$a;Ljava/lang/String;I)V
    .locals 0

    .line 1256
    invoke-direct {p0, p1, p2}, Landroidx/d/e/g$a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Landroidx/d/e/g$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1256
    invoke-direct {p0, p1, p2}, Landroidx/d/e/g$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;F)V
    .locals 1

    .line 1285
    sget-object v0, Landroidx/d/e/b$a;->b:Landroidx/d/e/b$a;

    invoke-direct {p0, p1, v0}, Landroidx/d/e/g$a;->a(Ljava/lang/String;Landroidx/d/e/b$a;)Landroidx/d/e/b;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/d/e/b;->a(F)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .line 1289
    sget-object v0, Landroidx/d/e/b$a;->a:Landroidx/d/e/b$a;

    invoke-direct {p0, p1, v0}, Landroidx/d/e/g$a;->a(Ljava/lang/String;Landroidx/d/e/b$a;)Landroidx/d/e/b;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/d/e/b;->b(I)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1281
    sget-object v0, Landroidx/d/e/b$a;->e:Landroidx/d/e/b$a;

    invoke-direct {p0, p1, v0}, Landroidx/d/e/g$a;->a(Ljava/lang/String;Landroidx/d/e/b$a;)Landroidx/d/e/b;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/d/e/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Landroidx/d/e/g$a;Ljava/lang/String;I)V
    .locals 0

    .line 1256
    invoke-direct {p0, p1, p2}, Landroidx/d/e/g$a;->b(Ljava/lang/String;I)V

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 1

    .line 1293
    sget-object v0, Landroidx/d/e/b$a;->c:Landroidx/d/e/b$a;

    invoke-direct {p0, p1, v0}, Landroidx/d/e/g$a;->a(Ljava/lang/String;Landroidx/d/e/b$a;)Landroidx/d/e/b;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroidx/d/e/b;->a(I)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/d/e/g$a;
    .locals 3

    .line 1297
    new-instance v0, Landroidx/d/e/g$a;

    invoke-direct {v0}, Landroidx/d/e/g$a;-><init>()V

    .line 1298
    iget-object v1, v0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget-object v2, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    invoke-virtual {v1, v2}, Landroidx/d/e/g$b;->a(Landroidx/d/e/g$b;)V

    .line 1299
    iget-object v1, v0, Landroidx/d/e/g$a;->c:Landroidx/d/e/g$c;

    iget-object v2, p0, Landroidx/d/e/g$a;->c:Landroidx/d/e/g$c;

    invoke-virtual {v1, v2}, Landroidx/d/e/g$c;->a(Landroidx/d/e/g$c;)V

    .line 1300
    iget-object v1, v0, Landroidx/d/e/g$a;->b:Landroidx/d/e/g$d;

    iget-object v2, p0, Landroidx/d/e/g$a;->b:Landroidx/d/e/g$d;

    invoke-virtual {v1, v2}, Landroidx/d/e/g$d;->a(Landroidx/d/e/g$d;)V

    .line 1301
    iget-object v1, v0, Landroidx/d/e/g$a;->e:Landroidx/d/e/g$e;

    iget-object v2, p0, Landroidx/d/e/g$a;->e:Landroidx/d/e/g$e;

    invoke-virtual {v1, v2}, Landroidx/d/e/g$e;->a(Landroidx/d/e/g$e;)V

    .line 1302
    iget p0, p0, Landroidx/d/e/g$a;->a:I

    iput p0, v0, Landroidx/d/e/g$a;->a:I

    return-object v0
.end method

.method public a(Landroidx/d/e/d$a;)V
    .locals 2

    .line 1401
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->i:I

    iput v0, p1, Landroidx/d/e/d$a;->v:I

    .line 1402
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->j:I

    iput v0, p1, Landroidx/d/e/d$a;->w:I

    .line 1403
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->k:I

    iput v0, p1, Landroidx/d/e/d$a;->x:I

    .line 1404
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->l:I

    iput v0, p1, Landroidx/d/e/d$a;->y:I

    .line 1406
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->m:I

    iput v0, p1, Landroidx/d/e/d$a;->z:I

    .line 1407
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->n:I

    iput v0, p1, Landroidx/d/e/d$a;->A:I

    .line 1408
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->o:I

    iput v0, p1, Landroidx/d/e/d$a;->B:I

    .line 1409
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->p:I

    iput v0, p1, Landroidx/d/e/d$a;->C:I

    .line 1411
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->q:I

    iput v0, p1, Landroidx/d/e/d$a;->D:I

    .line 1413
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->r:I

    iput v0, p1, Landroidx/d/e/d$a;->H:I

    .line 1414
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->s:I

    iput v0, p1, Landroidx/d/e/d$a;->I:I

    .line 1415
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->t:I

    iput v0, p1, Landroidx/d/e/d$a;->J:I

    .line 1416
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->u:I

    iput v0, p1, Landroidx/d/e/d$a;->K:I

    .line 1418
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->E:I

    iput v0, p1, Landroidx/d/e/d$a;->leftMargin:I

    .line 1419
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->F:I

    iput v0, p1, Landroidx/d/e/d$a;->rightMargin:I

    .line 1420
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->G:I

    iput v0, p1, Landroidx/d/e/d$a;->topMargin:I

    .line 1421
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->H:I

    iput v0, p1, Landroidx/d/e/d$a;->bottomMargin:I

    .line 1422
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->P:I

    iput v0, p1, Landroidx/d/e/d$a;->P:I

    .line 1423
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->O:I

    iput v0, p1, Landroidx/d/e/d$a;->Q:I

    .line 1424
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->L:I

    iput v0, p1, Landroidx/d/e/d$a;->M:I

    .line 1425
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->N:I

    iput v0, p1, Landroidx/d/e/d$a;->O:I

    .line 1427
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->v:F

    iput v0, p1, Landroidx/d/e/d$a;->R:F

    .line 1428
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->w:F

    iput v0, p1, Landroidx/d/e/d$a;->S:F

    .line 1430
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->y:I

    iput v0, p1, Landroidx/d/e/d$a;->E:I

    .line 1431
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->z:I

    iput v0, p1, Landroidx/d/e/d$a;->F:I

    .line 1432
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->A:F

    iput v0, p1, Landroidx/d/e/d$a;->G:F

    .line 1434
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget-object v0, v0, Landroidx/d/e/g$b;->x:Ljava/lang/String;

    iput-object v0, p1, Landroidx/d/e/d$a;->T:Ljava/lang/String;

    .line 1435
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->B:I

    iput v0, p1, Landroidx/d/e/d$a;->ai:I

    .line 1436
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->C:I

    iput v0, p1, Landroidx/d/e/d$a;->aj:I

    .line 1437
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->Q:F

    iput v0, p1, Landroidx/d/e/d$a;->X:F

    .line 1438
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->R:F

    iput v0, p1, Landroidx/d/e/d$a;->W:F

    .line 1439
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->T:I

    iput v0, p1, Landroidx/d/e/d$a;->Z:I

    .line 1440
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->S:I

    iput v0, p1, Landroidx/d/e/d$a;->Y:I

    .line 1441
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget-boolean v0, v0, Landroidx/d/e/g$b;->ai:Z

    iput-boolean v0, p1, Landroidx/d/e/d$a;->al:Z

    .line 1442
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget-boolean v0, v0, Landroidx/d/e/g$b;->aj:Z

    iput-boolean v0, p1, Landroidx/d/e/d$a;->am:Z

    .line 1443
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->U:I

    iput v0, p1, Landroidx/d/e/d$a;->aa:I

    .line 1444
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->V:I

    iput v0, p1, Landroidx/d/e/d$a;->ab:I

    .line 1445
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->W:I

    iput v0, p1, Landroidx/d/e/d$a;->ae:I

    .line 1446
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->X:I

    iput v0, p1, Landroidx/d/e/d$a;->af:I

    .line 1447
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->Y:I

    iput v0, p1, Landroidx/d/e/d$a;->ac:I

    .line 1448
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->Z:I

    iput v0, p1, Landroidx/d/e/d$a;->ad:I

    .line 1449
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->aa:F

    iput v0, p1, Landroidx/d/e/d$a;->ag:F

    .line 1450
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->ab:F

    iput v0, p1, Landroidx/d/e/d$a;->ah:F

    .line 1451
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->D:I

    iput v0, p1, Landroidx/d/e/d$a;->ak:I

    .line 1452
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->h:F

    iput v0, p1, Landroidx/d/e/d$a;->u:F

    .line 1453
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->f:I

    iput v0, p1, Landroidx/d/e/d$a;->s:I

    .line 1454
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->g:I

    iput v0, p1, Landroidx/d/e/d$a;->t:I

    .line 1455
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->c:I

    iput v0, p1, Landroidx/d/e/d$a;->width:I

    .line 1456
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->d:I

    iput v0, p1, Landroidx/d/e/d$a;->height:I

    .line 1457
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget-object v0, v0, Landroidx/d/e/g$b;->ah:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget-object v0, v0, Landroidx/d/e/g$b;->ah:Ljava/lang/String;

    iput-object v0, p1, Landroidx/d/e/d$a;->an:Ljava/lang/String;

    .line 1461
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 1462
    iget-object v0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget v0, v0, Landroidx/d/e/g$b;->J:I

    invoke-virtual {p1, v0}, Landroidx/d/e/d$a;->setMarginStart(I)V

    .line 1463
    iget-object p0, p0, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget p0, p0, Landroidx/d/e/g$b;->I:I

    invoke-virtual {p1, p0}, Landroidx/d/e/d$a;->setMarginEnd(I)V

    .line 1466
    :cond_1
    invoke-virtual {p1}, Landroidx/d/e/d$a;->c()V

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1256
    invoke-virtual {p0}, Landroidx/d/e/g$a;->a()Landroidx/d/e/g$a;

    move-result-object p0

    return-object p0
.end method
