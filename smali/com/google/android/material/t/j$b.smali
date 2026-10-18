.class final Lcom/google/android/material/t/j$b;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/t/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/google/android/material/t/o;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field public b:Lcom/google/android/material/k/a;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field public c:Landroid/graphics/ColorFilter;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field public d:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field public e:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field public f:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field public g:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field public h:Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field public i:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field public j:F

.field public k:F

.field public l:F

.field public m:I

.field public n:F

.field public o:F

.field public p:F

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:Z

.field public v:Landroid/graphics/Paint$Style;


# direct methods
.method public constructor <init>(Lcom/google/android/material/t/j$b;)V
    .locals 2
    .param p1    # Lcom/google/android/material/t/j$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1406
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 1375
    iput-object v0, p0, Lcom/google/android/material/t/j$b;->d:Landroid/content/res/ColorStateList;

    .line 1376
    iput-object v0, p0, Lcom/google/android/material/t/j$b;->e:Landroid/content/res/ColorStateList;

    .line 1377
    iput-object v0, p0, Lcom/google/android/material/t/j$b;->f:Landroid/content/res/ColorStateList;

    .line 1378
    iput-object v0, p0, Lcom/google/android/material/t/j$b;->g:Landroid/content/res/ColorStateList;

    .line 1379
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lcom/google/android/material/t/j$b;->h:Landroid/graphics/PorterDuff$Mode;

    .line 1380
    iput-object v0, p0, Lcom/google/android/material/t/j$b;->i:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1382
    iput v0, p0, Lcom/google/android/material/t/j$b;->j:F

    .line 1383
    iput v0, p0, Lcom/google/android/material/t/j$b;->k:F

    const/16 v0, 0xff

    .line 1386
    iput v0, p0, Lcom/google/android/material/t/j$b;->m:I

    const/4 v0, 0x0

    .line 1387
    iput v0, p0, Lcom/google/android/material/t/j$b;->n:F

    .line 1388
    iput v0, p0, Lcom/google/android/material/t/j$b;->o:F

    .line 1389
    iput v0, p0, Lcom/google/android/material/t/j$b;->p:F

    const/4 v0, 0x0

    .line 1390
    iput v0, p0, Lcom/google/android/material/t/j$b;->q:I

    .line 1391
    iput v0, p0, Lcom/google/android/material/t/j$b;->r:I

    .line 1392
    iput v0, p0, Lcom/google/android/material/t/j$b;->s:I

    .line 1393
    iput v0, p0, Lcom/google/android/material/t/j$b;->t:I

    .line 1395
    iput-boolean v0, p0, Lcom/google/android/material/t/j$b;->u:Z

    .line 1397
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/google/android/material/t/j$b;->v:Landroid/graphics/Paint$Style;

    .line 1407
    iget-object v0, p1, Lcom/google/android/material/t/j$b;->a:Lcom/google/android/material/t/o;

    iput-object v0, p0, Lcom/google/android/material/t/j$b;->a:Lcom/google/android/material/t/o;

    .line 1408
    iget-object v0, p1, Lcom/google/android/material/t/j$b;->b:Lcom/google/android/material/k/a;

    iput-object v0, p0, Lcom/google/android/material/t/j$b;->b:Lcom/google/android/material/k/a;

    .line 1409
    iget v0, p1, Lcom/google/android/material/t/j$b;->l:F

    iput v0, p0, Lcom/google/android/material/t/j$b;->l:F

    .line 1410
    iget-object v0, p1, Lcom/google/android/material/t/j$b;->c:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Lcom/google/android/material/t/j$b;->c:Landroid/graphics/ColorFilter;

    .line 1411
    iget-object v0, p1, Lcom/google/android/material/t/j$b;->d:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/t/j$b;->d:Landroid/content/res/ColorStateList;

    .line 1412
    iget-object v0, p1, Lcom/google/android/material/t/j$b;->e:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/t/j$b;->e:Landroid/content/res/ColorStateList;

    .line 1413
    iget-object v0, p1, Lcom/google/android/material/t/j$b;->h:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Lcom/google/android/material/t/j$b;->h:Landroid/graphics/PorterDuff$Mode;

    .line 1414
    iget-object v0, p1, Lcom/google/android/material/t/j$b;->g:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/t/j$b;->g:Landroid/content/res/ColorStateList;

    .line 1415
    iget v0, p1, Lcom/google/android/material/t/j$b;->m:I

    iput v0, p0, Lcom/google/android/material/t/j$b;->m:I

    .line 1416
    iget v0, p1, Lcom/google/android/material/t/j$b;->j:F

    iput v0, p0, Lcom/google/android/material/t/j$b;->j:F

    .line 1417
    iget v0, p1, Lcom/google/android/material/t/j$b;->s:I

    iput v0, p0, Lcom/google/android/material/t/j$b;->s:I

    .line 1418
    iget v0, p1, Lcom/google/android/material/t/j$b;->q:I

    iput v0, p0, Lcom/google/android/material/t/j$b;->q:I

    .line 1419
    iget-boolean v0, p1, Lcom/google/android/material/t/j$b;->u:Z

    iput-boolean v0, p0, Lcom/google/android/material/t/j$b;->u:Z

    .line 1420
    iget v0, p1, Lcom/google/android/material/t/j$b;->k:F

    iput v0, p0, Lcom/google/android/material/t/j$b;->k:F

    .line 1421
    iget v0, p1, Lcom/google/android/material/t/j$b;->n:F

    iput v0, p0, Lcom/google/android/material/t/j$b;->n:F

    .line 1422
    iget v0, p1, Lcom/google/android/material/t/j$b;->o:F

    iput v0, p0, Lcom/google/android/material/t/j$b;->o:F

    .line 1423
    iget v0, p1, Lcom/google/android/material/t/j$b;->p:F

    iput v0, p0, Lcom/google/android/material/t/j$b;->p:F

    .line 1424
    iget v0, p1, Lcom/google/android/material/t/j$b;->r:I

    iput v0, p0, Lcom/google/android/material/t/j$b;->r:I

    .line 1425
    iget v0, p1, Lcom/google/android/material/t/j$b;->t:I

    iput v0, p0, Lcom/google/android/material/t/j$b;->t:I

    .line 1426
    iget-object v0, p1, Lcom/google/android/material/t/j$b;->f:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/google/android/material/t/j$b;->f:Landroid/content/res/ColorStateList;

    .line 1427
    iget-object v0, p1, Lcom/google/android/material/t/j$b;->v:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/google/android/material/t/j$b;->v:Landroid/graphics/Paint$Style;

    .line 1428
    iget-object v0, p1, Lcom/google/android/material/t/j$b;->i:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 1429
    new-instance v0, Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/google/android/material/t/j$b;->i:Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/google/android/material/t/j$b;->i:Landroid/graphics/Rect;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/t/o;Lcom/google/android/material/k/a;)V
    .locals 2

    .line 1401
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    .line 1375
    iput-object v0, p0, Lcom/google/android/material/t/j$b;->d:Landroid/content/res/ColorStateList;

    .line 1376
    iput-object v0, p0, Lcom/google/android/material/t/j$b;->e:Landroid/content/res/ColorStateList;

    .line 1377
    iput-object v0, p0, Lcom/google/android/material/t/j$b;->f:Landroid/content/res/ColorStateList;

    .line 1378
    iput-object v0, p0, Lcom/google/android/material/t/j$b;->g:Landroid/content/res/ColorStateList;

    .line 1379
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    iput-object v1, p0, Lcom/google/android/material/t/j$b;->h:Landroid/graphics/PorterDuff$Mode;

    .line 1380
    iput-object v0, p0, Lcom/google/android/material/t/j$b;->i:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1382
    iput v0, p0, Lcom/google/android/material/t/j$b;->j:F

    .line 1383
    iput v0, p0, Lcom/google/android/material/t/j$b;->k:F

    const/16 v0, 0xff

    .line 1386
    iput v0, p0, Lcom/google/android/material/t/j$b;->m:I

    const/4 v0, 0x0

    .line 1387
    iput v0, p0, Lcom/google/android/material/t/j$b;->n:F

    .line 1388
    iput v0, p0, Lcom/google/android/material/t/j$b;->o:F

    .line 1389
    iput v0, p0, Lcom/google/android/material/t/j$b;->p:F

    const/4 v0, 0x0

    .line 1390
    iput v0, p0, Lcom/google/android/material/t/j$b;->q:I

    .line 1391
    iput v0, p0, Lcom/google/android/material/t/j$b;->r:I

    .line 1392
    iput v0, p0, Lcom/google/android/material/t/j$b;->s:I

    .line 1393
    iput v0, p0, Lcom/google/android/material/t/j$b;->t:I

    .line 1395
    iput-boolean v0, p0, Lcom/google/android/material/t/j$b;->u:Z

    .line 1397
    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/google/android/material/t/j$b;->v:Landroid/graphics/Paint$Style;

    .line 1402
    iput-object p1, p0, Lcom/google/android/material/t/j$b;->a:Lcom/google/android/material/t/o;

    .line 1403
    iput-object p2, p0, Lcom/google/android/material/t/j$b;->b:Lcom/google/android/material/k/a;

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1436
    new-instance v0, Lcom/google/android/material/t/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/t/j;-><init>(Lcom/google/android/material/t/j$b;Lcom/google/android/material/t/j$1;)V

    const/4 p0, 0x1

    .line 1438
    invoke-static {v0, p0}, Lcom/google/android/material/t/j;->a(Lcom/google/android/material/t/j;Z)Z

    return-object v0
.end method
