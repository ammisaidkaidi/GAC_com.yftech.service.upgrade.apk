.class public Landroidx/d/b/b/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x0

.field public static final h:I = 0x1

.field public static final i:I = 0x2

.field public static final j:I = 0x3

.field public static final k:I = 0x4

.field public static final l:I = 0x5

.field public static final m:I = 0x6

.field private static final u:Ljava/lang/String; = "MotionController"

.field private static final v:Z = false

.field private static final w:Z = false


# instance fields
.field private A:Landroidx/d/b/b/o;

.field private B:Landroidx/d/b/b/o;

.field private C:[Landroidx/d/b/a/b;

.field private D:Landroidx/d/b/a/b;

.field private E:[I

.field private F:[D

.field private G:[D

.field private H:[Ljava/lang/String;

.field private I:[I

.field private J:I

.field private K:[F

.field private L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/d/b/b/t;",
            ">;"
        }
    .end annotation
.end field

.field private M:[F

.field private N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/d/b/b/e;",
            ">;"
        }
    .end annotation
.end field

.field private O:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/d/b/b/x;",
            ">;"
        }
    .end annotation
.end field

.field private P:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/d/b/b/w;",
            ">;"
        }
    .end annotation
.end field

.field private Q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/d/b/b/i;",
            ">;"
        }
    .end annotation
.end field

.field private R:[Landroidx/d/b/b/n;

.field private S:I

.field n:Landroid/view/View;

.field o:I

.field p:Ljava/lang/String;

.field q:F

.field r:F

.field s:F

.field t:[Ljava/lang/String;

.field private x:I

.field private y:Landroidx/d/b/b/t;

.field private z:Landroidx/d/b/b/t;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Landroidx/d/b/b/p;->x:I

    .line 72
    new-instance v0, Landroidx/d/b/b/t;

    invoke-direct {v0}, Landroidx/d/b/b/t;-><init>()V

    iput-object v0, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    .line 73
    new-instance v0, Landroidx/d/b/b/t;

    invoke-direct {v0}, Landroidx/d/b/b/t;-><init>()V

    iput-object v0, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    .line 75
    new-instance v0, Landroidx/d/b/b/o;

    invoke-direct {v0}, Landroidx/d/b/b/o;-><init>()V

    iput-object v0, p0, Landroidx/d/b/b/p;->A:Landroidx/d/b/b/o;

    .line 76
    new-instance v0, Landroidx/d/b/b/o;

    invoke-direct {v0}, Landroidx/d/b/b/o;-><init>()V

    iput-object v0, p0, Landroidx/d/b/b/p;->B:Landroidx/d/b/b/o;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 80
    iput v0, p0, Landroidx/d/b/b/p;->q:F

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Landroidx/d/b/b/p;->r:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    iput v0, p0, Landroidx/d/b/b/p;->s:F

    const/4 v0, 0x4

    .line 89
    iput v0, p0, Landroidx/d/b/b/p;->J:I

    .line 90
    iget v0, p0, Landroidx/d/b/b/p;->J:I

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/d/b/b/p;->K:[F

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/d/b/b/p;->L:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 92
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/d/b/b/p;->M:[F

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/d/b/b/p;->N:Ljava/util/ArrayList;

    .line 99
    sget v0, Landroidx/d/b/b/e;->a:I

    iput v0, p0, Landroidx/d/b/b/p;->S:I

    .line 106
    invoke-virtual {p0, p1}, Landroidx/d/b/b/p;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(F[F)F
    .locals 8

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 877
    aput v1, p2, v2

    goto :goto_0

    .line 878
    :cond_0
    iget v3, p0, Landroidx/d/b/b/p;->s:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v3, v5

    if-eqz v3, :cond_2

    .line 879
    iget v3, p0, Landroidx/d/b/b/p;->r:F

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    move p1, v0

    .line 882
    :cond_1
    iget v3, p0, Landroidx/d/b/b/p;->r:F

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    float-to-double v3, p1

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2

    .line 883
    iget v3, p0, Landroidx/d/b/b/p;->r:F

    sub-float/2addr p1, v3

    .line 884
    iget v3, p0, Landroidx/d/b/b/p;->s:F

    mul-float/2addr p1, v3

    .line 890
    :cond_2
    :goto_0
    iget-object v3, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v3, v3, Landroidx/d/b/b/t;->n:Landroidx/d/b/a/c;

    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 893
    iget-object p0, p0, Landroidx/d/b/b/p;->L:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/d/b/b/t;

    .line 894
    iget-object v6, v5, Landroidx/d/b/b/t;->n:Landroidx/d/b/a/c;

    if-eqz v6, :cond_3

    .line 895
    iget v6, v5, Landroidx/d/b/b/t;->p:F

    cmpg-float v6, v6, p1

    if-gez v6, :cond_4

    .line 896
    iget-object v0, v5, Landroidx/d/b/b/t;->n:Landroidx/d/b/a/c;

    .line 897
    iget v3, v5, Landroidx/d/b/b/t;->p:F

    move v7, v3

    move-object v3, v0

    move v0, v7

    goto :goto_1

    .line 899
    :cond_4
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 900
    iget v4, v5, Landroidx/d/b/b/t;->p:F

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_8

    .line 907
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    move v1, v4

    :goto_2
    sub-float/2addr p1, v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    float-to-double p0, p1

    .line 911
    invoke-virtual {v3, p0, p1}, Landroidx/d/b/a/c;->a(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v0, v4

    if-eqz p2, :cond_7

    .line 914
    invoke-virtual {v3, p0, p1}, Landroidx/d/b/a/c;->b(D)D

    move-result-wide p0

    double-to-float p0, p0

    aput p0, p2, v2

    :cond_7
    move p1, v0

    :cond_8
    return p1
.end method

.method private a(Landroidx/d/b/b/t;)V
    .locals 4

    .line 444
    iget-object v0, p0, Landroidx/d/b/b/p;->L:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "MotionController"

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " KeyPath positon \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroidx/d/b/b/t;->q:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "\" outside of range"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    iget-object p0, p0, Landroidx/d/b/b/p;->L:Ljava/util/ArrayList;

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private b(Landroidx/d/b/b/t;)V
    .locals 3

    .line 826
    iget-object v0, p0, Landroidx/d/b/b/p;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/d/b/b/p;->n:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/d/b/b/p;->n:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object p0, p0, Landroidx/d/b/b/p;->n:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroidx/d/b/b/t;->a(FFFF)V

    return-void
.end method

.method private g()F
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x2

    .line 268
    new-array v1, v1, [F

    const/16 v2, 0x63

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    const-wide/16 v4, 0x0

    move-wide v8, v4

    move-wide v10, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/16 v12, 0x64

    if-ge v4, v12, :cond_6

    int-to-float v12, v4

    mul-float/2addr v12, v2

    float-to-double v13, v12

    .line 277
    iget-object v15, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v15, v15, Landroidx/d/b/b/t;->n:Landroidx/d/b/a/c;

    const/high16 v16, 0x7fc00000    # Float.NaN

    .line 280
    iget-object v3, v0, Landroidx/d/b/b/p;->L:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/16 v17, 0x0

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v6, v18

    check-cast v6, Landroidx/d/b/b/t;

    .line 281
    iget-object v7, v6, Landroidx/d/b/b/t;->n:Landroidx/d/b/a/c;

    if-eqz v7, :cond_0

    .line 282
    iget v7, v6, Landroidx/d/b/b/t;->p:F

    cmpg-float v7, v7, v12

    if-gez v7, :cond_1

    .line 283
    iget-object v7, v6, Landroidx/d/b/b/t;->n:Landroidx/d/b/a/c;

    .line 284
    iget v6, v6, Landroidx/d/b/b/t;->p:F

    move/from16 v17, v6

    move-object v15, v7

    goto :goto_1

    .line 286
    :cond_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 287
    iget v6, v6, Landroidx/d/b/b/t;->p:F

    move/from16 v16, v6

    goto :goto_1

    :cond_2
    if-eqz v15, :cond_4

    .line 294
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_3

    const/high16 v16, 0x3f800000    # 1.0f

    :cond_3
    sub-float v12, v12, v17

    sub-float v16, v16, v17

    div-float v12, v12, v16

    float-to-double v6, v12

    .line 298
    invoke-virtual {v15, v6, v7}, Landroidx/d/b/a/c;->a(D)D

    move-result-wide v6

    double-to-float v3, v6

    mul-float v3, v3, v16

    add-float v3, v3, v17

    float-to-double v13, v3

    .line 303
    :cond_4
    iget-object v3, v0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    const/4 v6, 0x0

    aget-object v3, v3, v6

    iget-object v7, v0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v3, v13, v14, v7}, Landroidx/d/b/a/b;->a(D[D)V

    .line 304
    iget-object v3, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v7, v0, Landroidx/d/b/b/p;->E:[I

    iget-object v12, v0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v3, v7, v12, v1, v6}, Landroidx/d/b/b/t;->a([I[D[FI)V

    const/4 v3, 0x1

    if-lez v4, :cond_5

    float-to-double v12, v5

    .line 306
    aget v5, v1, v3

    float-to-double v14, v5

    sub-double/2addr v8, v14

    aget v5, v1, v6

    float-to-double v14, v5

    sub-double/2addr v10, v14

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    add-double/2addr v12, v7

    double-to-float v5, v12

    .line 308
    :cond_5
    aget v7, v1, v6

    float-to-double v10, v7

    .line 309
    aget v3, v1, v3

    float-to-double v8, v3

    add-int/lit8 v4, v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_0

    :cond_6
    return v5
.end method


# virtual methods
.method a()F
    .locals 0

    .line 110
    iget-object p0, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget p0, p0, Landroidx/d/b/b/t;->r:F

    return p0
.end method

.method a(IFF)F
    .locals 8

    .line 409
    iget-object v0, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v0, v0, Landroidx/d/b/b/t;->r:F

    iget-object v1, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v1, v1, Landroidx/d/b/b/t;->r:F

    sub-float/2addr v0, v1

    .line 410
    iget-object v1, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v1, v1, Landroidx/d/b/b/t;->s:F

    iget-object v2, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v2, v2, Landroidx/d/b/b/t;->s:F

    sub-float/2addr v1, v2

    .line 411
    iget-object v2, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v2, v2, Landroidx/d/b/b/t;->r:F

    iget-object v3, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v3, v3, Landroidx/d/b/b/t;->t:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 412
    iget-object v3, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v3, v3, Landroidx/d/b/b/t;->s:F

    iget-object p0, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget p0, p0, Landroidx/d/b/b/t;->u:F

    div-float/2addr p0, v4

    add-float/2addr v3, p0

    float-to-double v4, v0

    float-to-double v6, v1

    .line 413
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float p0, v4

    float-to-double v4, p0

    const-wide v6, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    :cond_0
    sub-float/2addr p2, v2

    sub-float/2addr p3, v3

    float-to-double v2, p2

    float-to-double v4, p3

    .line 420
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    return v3

    :cond_1
    mul-float v2, p2, v0

    mul-float v4, p3, v1

    add-float/2addr v2, v4

    packed-switch p1, :pswitch_data_0

    return v3

    :pswitch_0
    div-float/2addr p3, v1

    return p3

    :pswitch_1
    div-float/2addr p2, v1

    return p2

    :pswitch_2
    div-float/2addr p3, v0

    return p3

    :pswitch_3
    div-float/2addr p2, v0

    return p2

    :pswitch_4
    mul-float/2addr p0, p0

    mul-float/2addr v2, v2

    sub-float/2addr p0, v2

    float-to-double p0, p0

    .line 430
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0

    :pswitch_5
    div-float/2addr v2, p0

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(I[I)I
    .locals 12

    const/4 v0, 0x2

    .line 1237
    new-array v0, v0, [F

    .line 1239
    iget-object v1, p0, Landroidx/d/b/b/p;->N:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/d/b/b/e;

    .line 1240
    iget v6, v5, Landroidx/d/b/b/e;->e:I

    if-eq v6, p1, :cond_0

    const/4 v6, -0x1

    if-ne p1, v6, :cond_0

    goto :goto_0

    .line 1244
    :cond_0
    aput v2, p2, v4

    add-int/lit8 v6, v4, 0x1

    .line 1246
    iget v7, v5, Landroidx/d/b/b/e;->e:I

    aput v7, p2, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 1247
    iget v8, v5, Landroidx/d/b/b/e;->b:I

    aput v8, p2, v6

    .line 1249
    iget v8, v5, Landroidx/d/b/b/e;->b:I

    int-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    .line 1250
    iget-object v9, p0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    aget-object v9, v9, v2

    float-to-double v10, v8

    iget-object v8, p0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v9, v10, v11, v8}, Landroidx/d/b/a/b;->a(D[D)V

    .line 1251
    iget-object v8, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v9, p0, Landroidx/d/b/b/p;->E:[I

    iget-object v10, p0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v8, v9, v10, v0, v2}, Landroidx/d/b/b/t;->a([I[D[FI)V

    add-int/2addr v6, v7

    .line 1252
    aget v8, v0, v2

    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    aput v8, p2, v6

    add-int/2addr v6, v7

    .line 1253
    aget v8, v0, v7

    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    aput v8, p2, v6

    .line 1254
    instance-of v8, v5, Landroidx/d/b/b/k;

    if-eqz v8, :cond_1

    .line 1255
    check-cast v5, Landroidx/d/b/b/k;

    add-int/lit8 v6, v6, 0x1

    .line 1256
    iget v8, v5, Landroidx/d/b/b/k;->L:I

    aput v8, p2, v6

    add-int/2addr v6, v7

    .line 1258
    iget v8, v5, Landroidx/d/b/b/k;->E:F

    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    aput v8, p2, v6

    add-int/2addr v6, v7

    .line 1259
    iget v5, v5, Landroidx/d/b/b/k;->F:F

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    aput v5, p2, v6

    :cond_1
    add-int/lit8 v5, v6, 0x1

    sub-int v6, v5, v4

    .line 1262
    aput v6, p2, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    :cond_2
    return v3
.end method

.method a(Ljava/lang/String;[FI)I
    .locals 0

    .line 381
    iget-object p0, p0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/d/b/b/w;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p1, 0x0

    .line 385
    :goto_0
    array-length p3, p2

    if-ge p1, p3, :cond_1

    .line 386
    array-length p3, p2

    add-int/lit8 p3, p3, -0x1

    div-int p3, p1, p3

    int-to-float p3, p3

    invoke-virtual {p0, p3}, Landroidx/d/b/b/w;->a(F)F

    move-result p3

    aput p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 388
    :cond_1
    array-length p0, p2

    return p0
.end method

.method a([F[I)I
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 338
    iget-object v1, p0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/d/b/a/b;->a()[D

    move-result-object v1

    if-eqz p2, :cond_0

    .line 340
    iget-object v2, p0, Landroidx/d/b/b/p;->L:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/d/b/b/t;

    add-int/lit8 v5, v3, 0x1

    .line 341
    iget v4, v4, Landroidx/d/b/b/t;->z:I

    aput v4, p2, v3

    move v3, v5

    goto :goto_0

    :cond_0
    move p2, v0

    move v2, p2

    .line 346
    :goto_1
    array-length v3, v1

    if-ge p2, v3, :cond_1

    .line 347
    iget-object v3, p0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    aget-object v3, v3, v0

    aget-wide v4, v1, p2

    iget-object v6, p0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v3, v4, v5, v6}, Landroidx/d/b/a/b;->a(D[D)V

    .line 348
    iget-object v3, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v4, p0, Landroidx/d/b/b/p;->E:[I

    iget-object v5, p0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v3, v4, v5, p1, v2}, Landroidx/d/b/b/t;->a([I[D[FI)V

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 351
    :cond_1
    div-int/lit8 v2, v2, 0x2

    return v2

    :cond_2
    return v0
.end method

.method public a([I[F)I
    .locals 8

    .line 1208
    iget-object v0, p0, Landroidx/d/b/b/p;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/d/b/b/e;

    add-int/lit8 v5, v2, 0x1

    .line 1209
    iget v6, v4, Landroidx/d/b/b/e;->b:I

    iget v7, v4, Landroidx/d/b/b/e;->e:I

    mul-int/lit16 v7, v7, 0x3e8

    add-int/2addr v6, v7

    aput v6, p1, v2

    .line 1210
    iget v2, v4, Landroidx/d/b/b/e;->b:I

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    .line 1211
    iget-object v4, p0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    aget-object v4, v4, v1

    float-to-double v6, v2

    iget-object v2, p0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v4, v6, v7, v2}, Landroidx/d/b/a/b;->a(D[D)V

    .line 1212
    iget-object v2, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v4, p0, Landroidx/d/b/b/p;->E:[I

    iget-object v6, p0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v2, v4, v6, p2, v3}, Landroidx/d/b/b/t;->a([I[D[FI)V

    add-int/lit8 v3, v3, 0x2

    move v2, v5

    goto :goto_0

    :cond_0
    return v2
.end method

.method a(IIFF)Landroidx/d/b/b/l;
    .locals 10

    .line 315
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 316
    iget-object v0, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v0, v0, Landroidx/d/b/b/t;->r:F

    iput v0, v7, Landroid/graphics/RectF;->left:F

    .line 317
    iget-object v0, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v0, v0, Landroidx/d/b/b/t;->s:F

    iput v0, v7, Landroid/graphics/RectF;->top:F

    .line 318
    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v1, v1, Landroidx/d/b/b/t;->t:F

    add-float/2addr v0, v1

    iput v0, v7, Landroid/graphics/RectF;->right:F

    .line 319
    iget v0, v7, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v1, v1, Landroidx/d/b/b/t;->u:F

    add-float/2addr v0, v1

    iput v0, v7, Landroid/graphics/RectF;->bottom:F

    .line 320
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 321
    iget-object v0, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v0, v0, Landroidx/d/b/b/t;->r:F

    iput v0, v8, Landroid/graphics/RectF;->left:F

    .line 322
    iget-object v0, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v0, v0, Landroidx/d/b/b/t;->s:F

    iput v0, v8, Landroid/graphics/RectF;->top:F

    .line 323
    iget v0, v8, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v1, v1, Landroidx/d/b/b/t;->t:F

    add-float/2addr v0, v1

    iput v0, v8, Landroid/graphics/RectF;->right:F

    .line 324
    iget v0, v8, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v1, v1, Landroidx/d/b/b/t;->u:F

    add-float/2addr v0, v1

    iput v0, v8, Landroid/graphics/RectF;->bottom:F

    .line 325
    iget-object p0, p0, Landroidx/d/b/b/p;->N:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/b/b/e;

    .line 326
    instance-of v1, v0, Landroidx/d/b/b/l;

    if-eqz v1, :cond_0

    .line 327
    move-object v9, v0

    check-cast v9, Landroidx/d/b/b/l;

    move-object v0, v9

    move v1, p1

    move v2, p2

    move-object v3, v7

    move-object v4, v8

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/d/b/b/l;->a(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v9

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method a(I)Landroidx/d/b/b/t;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/d/b/b/p;->L:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/d/b/b/t;

    return-object p0
.end method

.method a(FFF[F)V
    .locals 13

    move-object v0, p0

    .line 1054
    iget-object v4, v0, Landroidx/d/b/b/p;->M:[F

    move v5, p1

    invoke-direct {p0, p1, v4}, Landroidx/d/b/b/p;->a(F[F)F

    move-result v4

    .line 1056
    iget-object v5, v0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 1057
    iget-object v5, v0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    aget-object v5, v5, v6

    float-to-double v7, v4

    iget-object v4, v0, Landroidx/d/b/b/p;->G:[D

    invoke-virtual {v5, v7, v8, v4}, Landroidx/d/b/a/b;->b(D[D)V

    .line 1058
    iget-object v4, v0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    aget-object v4, v4, v6

    iget-object v5, v0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v4, v7, v8, v5}, Landroidx/d/b/a/b;->a(D[D)V

    .line 1059
    iget-object v4, v0, Landroidx/d/b/b/p;->M:[F

    aget v4, v4, v6

    .line 1060
    :goto_0
    iget-object v5, v0, Landroidx/d/b/b/p;->G:[D

    array-length v5, v5

    if-ge v6, v5, :cond_0

    .line 1061
    iget-object v5, v0, Landroidx/d/b/b/p;->G:[D

    aget-wide v9, v5, v6

    float-to-double v11, v4

    mul-double/2addr v9, v11

    aput-wide v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1064
    :cond_0
    iget-object v4, v0, Landroidx/d/b/b/p;->D:Landroidx/d/b/a/b;

    if-eqz v4, :cond_2

    .line 1065
    iget-object v4, v0, Landroidx/d/b/b/p;->F:[D

    array-length v4, v4

    if-lez v4, :cond_1

    .line 1066
    iget-object v4, v0, Landroidx/d/b/b/p;->D:Landroidx/d/b/a/b;

    iget-object v5, v0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v4, v7, v8, v5}, Landroidx/d/b/a/b;->a(D[D)V

    .line 1067
    iget-object v4, v0, Landroidx/d/b/b/p;->D:Landroidx/d/b/a/b;

    iget-object v5, v0, Landroidx/d/b/b/p;->G:[D

    invoke-virtual {v4, v7, v8, v5}, Landroidx/d/b/a/b;->b(D[D)V

    .line 1068
    iget-object v4, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v5, v0, Landroidx/d/b/b/p;->E:[I

    iget-object v6, v0, Landroidx/d/b/b/p;->G:[D

    iget-object v7, v0, Landroidx/d/b/b/p;->F:[D

    move-object v0, v4

    move v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Landroidx/d/b/b/t;->a(FF[F[I[D[D)V

    :cond_1
    return-void

    .line 1072
    :cond_2
    iget-object v4, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v5, v0, Landroidx/d/b/b/p;->E:[I

    iget-object v6, v0, Landroidx/d/b/b/p;->G:[D

    iget-object v7, v0, Landroidx/d/b/b/p;->F:[D

    move-object v0, v4

    move v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Landroidx/d/b/b/t;->a(FF[F[I[D[D)V

    return-void

    .line 1076
    :cond_3
    iget-object v4, v0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v4, v4, Landroidx/d/b/b/t;->r:F

    iget-object v5, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v5, v5, Landroidx/d/b/b/t;->r:F

    sub-float/2addr v4, v5

    .line 1077
    iget-object v5, v0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v5, v5, Landroidx/d/b/b/t;->s:F

    iget-object v7, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v7, v7, Landroidx/d/b/b/t;->s:F

    sub-float/2addr v5, v7

    .line 1078
    iget-object v7, v0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v7, v7, Landroidx/d/b/b/t;->t:F

    iget-object v8, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v8, v8, Landroidx/d/b/b/t;->t:F

    sub-float/2addr v7, v8

    .line 1079
    iget-object v8, v0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v8, v8, Landroidx/d/b/b/t;->u:F

    iget-object v0, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v0, v0, Landroidx/d/b/b/t;->u:F

    sub-float/2addr v8, v0

    add-float/2addr v7, v4

    add-float/2addr v8, v5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v9, v0, p2

    mul-float/2addr v4, v9

    mul-float/2addr v7, p2

    add-float/2addr v4, v7

    .line 1082
    aput v4, p4, v6

    sub-float v0, v0, p3

    mul-float/2addr v5, v0

    mul-float v8, v8, p3

    add-float/2addr v5, v8

    const/4 v0, 0x1

    .line 1083
    aput v5, p4, v0

    return-void
.end method

.method a(FIIFF[F)V
    .locals 19

    move-object/from16 v0, p0

    .line 1101
    iget-object v1, v0, Landroidx/d/b/b/p;->M:[F

    move/from16 v2, p1

    invoke-direct {v0, v2, v1}, Landroidx/d/b/b/p;->a(F[F)F

    move-result v1

    .line 1103
    iget-object v2, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    const-string v4, "translationX"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/b/b/w;

    .line 1104
    :goto_0
    iget-object v4, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    if-nez v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    iget-object v4, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    const-string v5, "translationY"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/d/b/b/w;

    .line 1105
    :goto_1
    iget-object v5, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    if-nez v5, :cond_2

    move-object v5, v3

    goto :goto_2

    :cond_2
    iget-object v5, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    const-string v6, "rotation"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/d/b/b/w;

    .line 1106
    :goto_2
    iget-object v6, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    if-nez v6, :cond_3

    move-object v6, v3

    goto :goto_3

    :cond_3
    iget-object v6, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    const-string v7, "scaleX"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/d/b/b/w;

    .line 1107
    :goto_3
    iget-object v7, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    if-nez v7, :cond_4

    move-object v7, v3

    goto :goto_4

    :cond_4
    iget-object v7, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    const-string v8, "scaleY"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/d/b/b/w;

    .line 1109
    :goto_4
    iget-object v8, v0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    if-nez v8, :cond_5

    move-object v8, v3

    goto :goto_5

    :cond_5
    iget-object v8, v0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    const-string v9, "translationX"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/d/b/b/i;

    .line 1110
    :goto_5
    iget-object v9, v0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    if-nez v9, :cond_6

    move-object v9, v3

    goto :goto_6

    :cond_6
    iget-object v9, v0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    const-string v10, "translationY"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/d/b/b/i;

    .line 1111
    :goto_6
    iget-object v10, v0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    if-nez v10, :cond_7

    move-object v10, v3

    goto :goto_7

    :cond_7
    iget-object v10, v0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    const-string v11, "rotation"

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/d/b/b/i;

    .line 1112
    :goto_7
    iget-object v11, v0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    if-nez v11, :cond_8

    move-object v11, v3

    goto :goto_8

    :cond_8
    iget-object v11, v0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    const-string v12, "scaleX"

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/d/b/b/i;

    .line 1113
    :goto_8
    iget-object v12, v0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    if-nez v12, :cond_9

    goto :goto_9

    :cond_9
    iget-object v3, v0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    const-string v12, "scaleY"

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/d/b/b/i;

    .line 1115
    :goto_9
    new-instance v12, Landroidx/d/b/a/i;

    invoke-direct {v12}, Landroidx/d/b/a/i;-><init>()V

    .line 1116
    invoke-virtual {v12}, Landroidx/d/b/a/i;->a()V

    .line 1117
    invoke-virtual {v12, v5, v1}, Landroidx/d/b/a/i;->a(Landroidx/d/b/b/w;F)V

    .line 1118
    invoke-virtual {v12, v2, v4, v1}, Landroidx/d/b/a/i;->a(Landroidx/d/b/b/w;Landroidx/d/b/b/w;F)V

    .line 1119
    invoke-virtual {v12, v6, v7, v1}, Landroidx/d/b/a/i;->b(Landroidx/d/b/b/w;Landroidx/d/b/b/w;F)V

    .line 1120
    invoke-virtual {v12, v10, v1}, Landroidx/d/b/a/i;->a(Landroidx/d/b/b/i;F)V

    .line 1121
    invoke-virtual {v12, v8, v9, v1}, Landroidx/d/b/a/i;->a(Landroidx/d/b/b/i;Landroidx/d/b/b/i;F)V

    .line 1122
    invoke-virtual {v12, v11, v3, v1}, Landroidx/d/b/a/i;->b(Landroidx/d/b/b/i;Landroidx/d/b/b/i;F)V

    move-object v13, v3

    .line 1123
    iget-object v3, v0, Landroidx/d/b/b/p;->D:Landroidx/d/b/a/b;

    if-eqz v3, :cond_b

    .line 1124
    iget-object v2, v0, Landroidx/d/b/b/p;->F:[D

    array-length v2, v2

    if-lez v2, :cond_a

    .line 1125
    iget-object v2, v0, Landroidx/d/b/b/p;->D:Landroidx/d/b/a/b;

    float-to-double v3, v1

    iget-object v1, v0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v2, v3, v4, v1}, Landroidx/d/b/a/b;->a(D[D)V

    .line 1126
    iget-object v1, v0, Landroidx/d/b/b/p;->D:Landroidx/d/b/a/b;

    iget-object v2, v0, Landroidx/d/b/b/p;->G:[D

    invoke-virtual {v1, v3, v4, v2}, Landroidx/d/b/a/b;->b(D[D)V

    .line 1127
    iget-object v1, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v4, v0, Landroidx/d/b/b/p;->E:[I

    iget-object v5, v0, Landroidx/d/b/b/p;->G:[D

    iget-object v6, v0, Landroidx/d/b/b/p;->F:[D

    move-object v0, v1

    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/d/b/b/t;->a(FF[F[I[D[D)V

    :cond_a
    move-object v0, v12

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    .line 1129
    invoke-virtual/range {v0 .. v5}, Landroidx/d/b/a/i;->a(FFII[F)V

    return-void

    .line 1132
    :cond_b
    iget-object v3, v0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    const/4 v14, 0x0

    if-eqz v3, :cond_d

    .line 1133
    iget-object v2, v0, Landroidx/d/b/b/p;->M:[F

    invoke-direct {v0, v1, v2}, Landroidx/d/b/b/p;->a(F[F)F

    move-result v1

    .line 1134
    iget-object v2, v0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    aget-object v2, v2, v14

    float-to-double v3, v1

    iget-object v1, v0, Landroidx/d/b/b/p;->G:[D

    invoke-virtual {v2, v3, v4, v1}, Landroidx/d/b/a/b;->b(D[D)V

    .line 1135
    iget-object v1, v0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    aget-object v1, v1, v14

    iget-object v2, v0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v1, v3, v4, v2}, Landroidx/d/b/a/b;->a(D[D)V

    .line 1136
    iget-object v1, v0, Landroidx/d/b/b/p;->M:[F

    aget v1, v1, v14

    move v2, v14

    .line 1137
    :goto_a
    iget-object v3, v0, Landroidx/d/b/b/p;->G:[D

    array-length v3, v3

    if-ge v2, v3, :cond_c

    .line 1138
    iget-object v3, v0, Landroidx/d/b/b/p;->G:[D

    aget-wide v4, v3, v2

    float-to-double v7, v1

    mul-double/2addr v4, v7

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1140
    :cond_c
    iget-object v1, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v4, v0, Landroidx/d/b/b/p;->E:[I

    iget-object v5, v0, Landroidx/d/b/b/p;->G:[D

    iget-object v6, v0, Landroidx/d/b/b/p;->F:[D

    move-object v0, v1

    move/from16 v1, p4

    move/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual/range {v0 .. v6}, Landroidx/d/b/b/t;->a(FF[F[I[D[D)V

    move-object v0, v12

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    .line 1142
    invoke-virtual/range {v0 .. v5}, Landroidx/d/b/a/i;->a(FFII[F)V

    return-void

    .line 1147
    :cond_d
    iget-object v3, v0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v3, v3, Landroidx/d/b/b/t;->r:F

    move-object v15, v11

    iget-object v11, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v11, v11, Landroidx/d/b/b/t;->r:F

    sub-float/2addr v3, v11

    .line 1148
    iget-object v11, v0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v11, v11, Landroidx/d/b/b/t;->s:F

    move-object/from16 v16, v8

    iget-object v8, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v8, v8, Landroidx/d/b/b/t;->s:F

    sub-float/2addr v11, v8

    .line 1149
    iget-object v8, v0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v8, v8, Landroidx/d/b/b/t;->t:F

    move-object/from16 v17, v9

    iget-object v9, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v9, v9, Landroidx/d/b/b/t;->t:F

    sub-float/2addr v8, v9

    .line 1150
    iget-object v9, v0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v9, v9, Landroidx/d/b/b/t;->u:F

    iget-object v0, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v0, v0, Landroidx/d/b/b/t;->u:F

    sub-float/2addr v9, v0

    add-float/2addr v8, v3

    add-float/2addr v9, v11

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v18, v0, p4

    mul-float v3, v3, v18

    mul-float v8, v8, p4

    add-float/2addr v3, v8

    .line 1153
    aput v3, p6, v14

    sub-float v0, v0, p5

    mul-float/2addr v11, v0

    mul-float v9, v9, p5

    add-float/2addr v11, v9

    const/4 v0, 0x1

    .line 1154
    aput v11, p6, v0

    .line 1156
    invoke-virtual {v12}, Landroidx/d/b/a/i;->a()V

    .line 1157
    invoke-virtual {v12, v5, v1}, Landroidx/d/b/a/i;->a(Landroidx/d/b/b/w;F)V

    .line 1158
    invoke-virtual {v12, v2, v4, v1}, Landroidx/d/b/a/i;->a(Landroidx/d/b/b/w;Landroidx/d/b/b/w;F)V

    .line 1159
    invoke-virtual {v12, v6, v7, v1}, Landroidx/d/b/a/i;->b(Landroidx/d/b/b/w;Landroidx/d/b/b/w;F)V

    .line 1160
    invoke-virtual {v12, v10, v1}, Landroidx/d/b/a/i;->a(Landroidx/d/b/b/i;F)V

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    .line 1161
    invoke-virtual {v12, v8, v9, v1}, Landroidx/d/b/a/i;->a(Landroidx/d/b/b/i;Landroidx/d/b/b/i;F)V

    move-object v3, v13

    move-object v11, v15

    .line 1162
    invoke-virtual {v12, v11, v3, v1}, Landroidx/d/b/a/i;->b(Landroidx/d/b/b/i;Landroidx/d/b/b/i;F)V

    move-object v0, v12

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    .line 1163
    invoke-virtual/range {v0 .. v5}, Landroidx/d/b/a/i;->a(FFII[F)V

    return-void
.end method

.method a(F[FI)V
    .locals 3

    const/4 v0, 0x0

    .line 392
    invoke-direct {p0, p1, v0}, Landroidx/d/b/b/p;->a(F[F)F

    move-result p1

    .line 393
    iget-object v0, p0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    float-to-double v1, p1

    iget-object p1, p0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v0, v1, v2, p1}, Landroidx/d/b/a/b;->a(D[D)V

    .line 394
    iget-object p1, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v0, p0, Landroidx/d/b/b/p;->E:[I

    iget-object p0, p0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {p1, v0, p0, p2, p3}, Landroidx/d/b/b/t;->c([I[D[FI)V

    return-void
.end method

.method public a(IIFJ)V
    .locals 17

    move-object/from16 v0, p0

    .line 475
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 476
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 477
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 478
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 479
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 491
    iget v5, v0, Landroidx/d/b/b/p;->S:I

    sget v6, Landroidx/d/b/b/e;->a:I

    if-eq v5, v6, :cond_0

    .line 492
    iget-object v5, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v6, v0, Landroidx/d/b/b/p;->S:I

    iput v6, v5, Landroidx/d/b/b/t;->x:I

    .line 495
    :cond_0
    iget-object v5, v0, Landroidx/d/b/b/p;->A:Landroidx/d/b/b/o;

    iget-object v6, v0, Landroidx/d/b/b/p;->B:Landroidx/d/b/b/o;

    invoke-virtual {v5, v6, v2}, Landroidx/d/b/b/o;->a(Landroidx/d/b/b/o;Ljava/util/HashSet;)V

    .line 501
    iget-object v5, v0, Landroidx/d/b/b/p;->N:Ljava/util/ArrayList;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    .line 502
    iget-object v5, v0, Landroidx/d/b/b/p;->N:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v7, v6

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/d/b/b/e;

    .line 503
    instance-of v9, v8, Landroidx/d/b/b/k;

    if-eqz v9, :cond_2

    .line 504
    check-cast v8, Landroidx/d/b/b/k;

    .line 505
    new-instance v9, Landroidx/d/b/b/t;

    iget-object v14, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v15, v0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    move-object v10, v9

    move/from16 v11, p1

    move/from16 v12, p2

    move-object v13, v8

    invoke-direct/range {v10 .. v15}, Landroidx/d/b/b/t;-><init>(IILandroidx/d/b/b/k;Landroidx/d/b/b/t;Landroidx/d/b/b/t;)V

    invoke-direct {v0, v9}, Landroidx/d/b/b/p;->a(Landroidx/d/b/b/t;)V

    .line 506
    iget v9, v8, Landroidx/d/b/b/k;->O:I

    sget v10, Landroidx/d/b/b/e;->a:I

    if-eq v9, v10, :cond_1

    .line 507
    iget v8, v8, Landroidx/d/b/b/k;->O:I

    iput v8, v0, Landroidx/d/b/b/p;->x:I

    goto :goto_0

    .line 509
    :cond_2
    instance-of v9, v8, Landroidx/d/b/b/h;

    if-eqz v9, :cond_3

    .line 510
    invoke-virtual {v8, v3}, Landroidx/d/b/b/e;->a(Ljava/util/HashSet;)V

    goto :goto_0

    .line 511
    :cond_3
    instance-of v9, v8, Landroidx/d/b/b/m;

    if-eqz v9, :cond_4

    .line 512
    invoke-virtual {v8, v1}, Landroidx/d/b/b/e;->a(Ljava/util/HashSet;)V

    goto :goto_0

    .line 513
    :cond_4
    instance-of v9, v8, Landroidx/d/b/b/n;

    if-eqz v9, :cond_6

    if-nez v7, :cond_5

    .line 515
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 517
    :cond_5
    check-cast v8, Landroidx/d/b/b/n;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 519
    :cond_6
    invoke-virtual {v8, v4}, Landroidx/d/b/b/e;->b(Ljava/util/HashMap;)V

    .line 520
    invoke-virtual {v8, v2}, Landroidx/d/b/b/e;->a(Ljava/util/HashSet;)V

    goto :goto_0

    :cond_7
    move-object v7, v6

    :cond_8
    const/4 v5, 0x0

    if-eqz v7, :cond_9

    .line 528
    new-array v8, v5, [Landroidx/d/b/b/n;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroidx/d/b/b/n;

    iput-object v7, v0, Landroidx/d/b/b/p;->R:[Landroidx/d/b/b/n;

    .line 556
    :cond_9
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_13

    .line 557
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    .line 558
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "CUSTOM,"

    .line 560
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 561
    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    const-string v11, ","

    .line 562
    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v8

    .line 563
    iget-object v12, v0, Landroidx/d/b/b/p;->N:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_a
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/d/b/b/e;

    .line 564
    iget-object v14, v13, Landroidx/d/b/b/e;->f:Ljava/util/HashMap;

    if-nez v14, :cond_b

    goto :goto_2

    .line 567
    :cond_b
    iget-object v14, v13, Landroidx/d/b/b/e;->f:Ljava/util/HashMap;

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/d/e/b;

    if-eqz v14, :cond_a

    .line 569
    iget v13, v13, Landroidx/d/b/b/e;->b:I

    invoke-virtual {v10, v13, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_2

    .line 572
    :cond_c
    invoke-static {v9, v10}, Landroidx/d/b/b/w;->a(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/d/b/b/w;

    move-result-object v10

    goto :goto_3

    .line 574
    :cond_d
    invoke-static {v9}, Landroidx/d/b/b/w;->b(Ljava/lang/String;)Landroidx/d/b/b/w;

    move-result-object v10

    :goto_3
    if-nez v10, :cond_e

    goto :goto_1

    .line 579
    :cond_e
    invoke-virtual {v10, v9}, Landroidx/d/b/b/w;->a(Ljava/lang/String;)V

    .line 580
    iget-object v11, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    invoke-virtual {v11, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 582
    :cond_f
    iget-object v7, v0, Landroidx/d/b/b/p;->N:Ljava/util/ArrayList;

    if-eqz v7, :cond_11

    .line 583
    iget-object v7, v0, Landroidx/d/b/b/p;->N:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_10
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/d/b/b/e;

    .line 584
    instance-of v10, v9, Landroidx/d/b/b/f;

    if-eqz v10, :cond_10

    .line 585
    iget-object v10, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    invoke-virtual {v9, v10}, Landroidx/d/b/b/e;->a(Ljava/util/HashMap;)V

    goto :goto_4

    .line 589
    :cond_11
    iget-object v7, v0, Landroidx/d/b/b/p;->A:Landroidx/d/b/b/o;

    iget-object v9, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    invoke-virtual {v7, v9, v5}, Landroidx/d/b/b/o;->a(Ljava/util/HashMap;I)V

    .line 590
    iget-object v7, v0, Landroidx/d/b/b/p;->B:Landroidx/d/b/b/o;

    iget-object v9, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    const/16 v10, 0x64

    invoke-virtual {v7, v9, v10}, Landroidx/d/b/b/o;->a(Ljava/util/HashMap;I)V

    .line 592
    iget-object v7, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 594
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 595
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_6

    :cond_12
    move v10, v5

    .line 597
    :goto_6
    iget-object v11, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/d/b/b/w;

    invoke-virtual {v9, v10}, Landroidx/d/b/b/w;->a(I)V

    goto :goto_5

    .line 602
    :cond_13
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1f

    .line 603
    iget-object v7, v0, Landroidx/d/b/b/p;->O:Ljava/util/HashMap;

    if-nez v7, :cond_14

    .line 604
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Landroidx/d/b/b/p;->O:Ljava/util/HashMap;

    .line 606
    :cond_14
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 607
    iget-object v9, v0, Landroidx/d/b/b/p;->O:Ljava/util/HashMap;

    invoke-virtual {v9, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    goto :goto_7

    :cond_15
    const-string v9, "CUSTOM,"

    .line 612
    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 613
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    const-string v10, ","

    .line 614
    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v8

    .line 615
    iget-object v11, v0, Landroidx/d/b/b/p;->N:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_16
    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/d/b/b/e;

    .line 616
    iget-object v13, v12, Landroidx/d/b/b/e;->f:Ljava/util/HashMap;

    if-nez v13, :cond_17

    goto :goto_8

    .line 619
    :cond_17
    iget-object v13, v12, Landroidx/d/b/b/e;->f:Ljava/util/HashMap;

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/d/e/b;

    if-eqz v13, :cond_16

    .line 621
    iget v12, v12, Landroidx/d/b/b/e;->b:I

    invoke-virtual {v9, v12, v13}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_8

    .line 624
    :cond_18
    invoke-static {v7, v9}, Landroidx/d/b/b/x;->a(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/d/b/b/x;

    move-result-object v9

    move-object v11, v9

    move-wide/from16 v9, p4

    goto :goto_9

    :cond_19
    move-wide/from16 v9, p4

    .line 626
    invoke-static {v7, v9, v10}, Landroidx/d/b/b/x;->a(Ljava/lang/String;J)Landroidx/d/b/b/x;

    move-result-object v11

    :goto_9
    if-nez v11, :cond_1a

    goto :goto_7

    .line 632
    :cond_1a
    invoke-virtual {v11, v7}, Landroidx/d/b/b/x;->a(Ljava/lang/String;)V

    .line 633
    iget-object v12, v0, Landroidx/d/b/b/p;->O:Ljava/util/HashMap;

    invoke-virtual {v12, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 636
    :cond_1b
    iget-object v1, v0, Landroidx/d/b/b/p;->N:Ljava/util/ArrayList;

    if-eqz v1, :cond_1d

    .line 637
    iget-object v1, v0, Landroidx/d/b/b/p;->N:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/d/b/b/e;

    .line 638
    instance-of v9, v7, Landroidx/d/b/b/m;

    if-eqz v9, :cond_1c

    .line 639
    check-cast v7, Landroidx/d/b/b/m;

    iget-object v9, v0, Landroidx/d/b/b/p;->O:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Landroidx/d/b/b/m;->c(Ljava/util/HashMap;)V

    goto :goto_a

    .line 644
    :cond_1d
    iget-object v1, v0, Landroidx/d/b/b/p;->O:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 646
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    .line 647
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_c

    :cond_1e
    move v9, v5

    .line 649
    :goto_c
    iget-object v10, v0, Landroidx/d/b/b/p;->O:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/d/b/b/x;

    invoke-virtual {v7, v9}, Landroidx/d/b/b/x;->a(I)V

    goto :goto_b

    .line 655
    :cond_1f
    iget-object v1, v0, Landroidx/d/b/b/p;->L:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x2

    add-int/2addr v1, v4

    new-array v1, v1, [Landroidx/d/b/b/t;

    .line 657
    iget-object v7, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    aput-object v7, v1, v5

    .line 658
    array-length v7, v1

    sub-int/2addr v7, v8

    iget-object v9, v0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    aput-object v9, v1, v7

    .line 659
    iget-object v7, v0, Landroidx/d/b/b/p;->L:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_20

    iget v7, v0, Landroidx/d/b/b/p;->x:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_20

    .line 660
    iput v5, v0, Landroidx/d/b/b/p;->x:I

    .line 662
    :cond_20
    iget-object v7, v0, Landroidx/d/b/b/p;->L:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v9, v8

    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_21

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/d/b/b/t;

    add-int/lit8 v11, v9, 0x1

    .line 663
    aput-object v10, v1, v9

    move v9, v11

    goto :goto_d

    :cond_21
    const/16 v7, 0x12

    .line 668
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 669
    iget-object v10, v0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget-object v10, v10, Landroidx/d/b/b/t;->y:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_22
    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_23

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 670
    iget-object v12, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v12, v12, Landroidx/d/b/b/t;->y:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v11}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_22

    .line 671
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CUSTOM,"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_22

    .line 672
    invoke-virtual {v9, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 676
    :cond_23
    new-array v2, v5, [Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v0, Landroidx/d/b/b/p;->H:[Ljava/lang/String;

    .line 680
    iget-object v2, v0, Landroidx/d/b/b/p;->H:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, v0, Landroidx/d/b/b/p;->I:[I

    move v2, v5

    .line 681
    :goto_f
    iget-object v9, v0, Landroidx/d/b/b/p;->H:[Ljava/lang/String;

    array-length v9, v9

    if-ge v2, v9, :cond_26

    .line 682
    iget-object v9, v0, Landroidx/d/b/b/p;->H:[Ljava/lang/String;

    aget-object v9, v9, v2

    .line 683
    iget-object v10, v0, Landroidx/d/b/b/p;->I:[I

    aput v5, v10, v2

    move v10, v5

    .line 684
    :goto_10
    array-length v11, v1

    if-ge v10, v11, :cond_25

    .line 685
    aget-object v11, v1, v10

    iget-object v11, v11, Landroidx/d/b/b/t;->y:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v9}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_24

    .line 686
    iget-object v11, v0, Landroidx/d/b/b/p;->I:[I

    aget v12, v11, v2

    aget-object v10, v1, v10

    iget-object v10, v10, Landroidx/d/b/b/t;->y:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/d/e/b;

    invoke-virtual {v9}, Landroidx/d/e/b;->b()I

    move-result v9

    add-int/2addr v12, v9

    aput v12, v11, v2

    goto :goto_11

    :cond_24
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    :cond_25
    :goto_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 691
    :cond_26
    aget-object v2, v1, v5

    iget v2, v2, Landroidx/d/b/b/t;->x:I

    sget v9, Landroidx/d/b/b/e;->a:I

    if-eq v2, v9, :cond_27

    move v2, v8

    goto :goto_12

    :cond_27
    move v2, v5

    .line 692
    :goto_12
    iget-object v9, v0, Landroidx/d/b/b/p;->H:[Ljava/lang/String;

    array-length v9, v9

    add-int/2addr v7, v9

    new-array v7, v7, [Z

    move v9, v8

    .line 693
    :goto_13
    array-length v10, v1

    if-ge v9, v10, :cond_28

    .line 694
    aget-object v10, v1, v9

    add-int/lit8 v11, v9, -0x1

    aget-object v11, v1, v11

    iget-object v12, v0, Landroidx/d/b/b/p;->H:[Ljava/lang/String;

    invoke-virtual {v10, v11, v7, v12, v2}, Landroidx/d/b/b/t;->a(Landroidx/d/b/b/t;[Z[Ljava/lang/String;Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_28
    move v9, v5

    move v2, v8

    .line 698
    :goto_14
    array-length v10, v7

    if-ge v2, v10, :cond_2a

    .line 699
    aget-boolean v10, v7, v2

    if-eqz v10, :cond_29

    add-int/lit8 v9, v9, 0x1

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 704
    :cond_2a
    new-array v2, v9, [I

    iput-object v2, v0, Landroidx/d/b/b/p;->E:[I

    .line 705
    iget-object v2, v0, Landroidx/d/b/b/p;->E:[I

    array-length v2, v2

    new-array v2, v2, [D

    iput-object v2, v0, Landroidx/d/b/b/p;->F:[D

    .line 706
    iget-object v2, v0, Landroidx/d/b/b/p;->E:[I

    array-length v2, v2

    new-array v2, v2, [D

    iput-object v2, v0, Landroidx/d/b/b/p;->G:[D

    move v9, v5

    move v2, v8

    .line 709
    :goto_15
    array-length v10, v7

    if-ge v2, v10, :cond_2c

    .line 710
    aget-boolean v10, v7, v2

    if-eqz v10, :cond_2b

    .line 711
    iget-object v10, v0, Landroidx/d/b/b/p;->E:[I

    add-int/lit8 v11, v9, 0x1

    aput v2, v10, v9

    move v9, v11

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 714
    :cond_2c
    array-length v2, v1

    iget-object v7, v0, Landroidx/d/b/b/p;->E:[I

    array-length v7, v7

    filled-new-array {v2, v7}, [I

    move-result-object v2

    const-class v7, D

    invoke-static {v7, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 715
    array-length v7, v1

    new-array v7, v7, [D

    move v9, v5

    .line 717
    :goto_16
    array-length v10, v1

    if-ge v9, v10, :cond_2d

    .line 718
    aget-object v10, v1, v9

    aget-object v11, v2, v9

    iget-object v12, v0, Landroidx/d/b/b/p;->E:[I

    invoke-virtual {v10, v11, v12}, Landroidx/d/b/b/t;->a([D[I)V

    .line 719
    aget-object v10, v1, v9

    iget v10, v10, Landroidx/d/b/b/t;->p:F

    float-to-double v10, v10

    aput-wide v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_16

    :cond_2d
    move v9, v5

    .line 722
    :goto_17
    iget-object v10, v0, Landroidx/d/b/b/p;->E:[I

    array-length v10, v10

    if-ge v9, v10, :cond_2f

    .line 723
    iget-object v10, v0, Landroidx/d/b/b/p;->E:[I

    aget v10, v10, v9

    .line 724
    sget-object v11, Landroidx/d/b/b/t;->m:[Ljava/lang/String;

    array-length v11, v11

    if-ge v10, v11, :cond_2e

    .line 725
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroidx/d/b/b/t;->m:[Ljava/lang/String;

    iget-object v12, v0, Landroidx/d/b/b/p;->E:[I

    aget v12, v12, v9

    aget-object v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v10

    move v10, v5

    .line 726
    :goto_18
    array-length v12, v1

    if-ge v10, v12, :cond_2e

    .line 727
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v2, v10

    aget-wide v13, v11, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    :cond_2e
    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    .line 731
    :cond_2f
    iget-object v9, v0, Landroidx/d/b/b/p;->H:[Ljava/lang/String;

    array-length v9, v9

    add-int/2addr v9, v8

    new-array v9, v9, [Landroidx/d/b/a/b;

    iput-object v9, v0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    move v9, v5

    .line 733
    :goto_19
    iget-object v10, v0, Landroidx/d/b/b/p;->H:[Ljava/lang/String;

    array-length v10, v10

    if-ge v9, v10, :cond_33

    .line 735
    move-object v10, v6

    check-cast v10, [[D

    .line 737
    iget-object v11, v0, Landroidx/d/b/b/p;->H:[Ljava/lang/String;

    aget-object v11, v11, v9

    move v13, v5

    move-object v12, v6

    move-object v14, v10

    move v10, v13

    .line 739
    :goto_1a
    array-length v15, v1

    if-ge v10, v15, :cond_32

    .line 740
    aget-object v15, v1, v10

    invoke-virtual {v15, v11}, Landroidx/d/b/b/t;->a(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_31

    if-nez v14, :cond_30

    .line 742
    array-length v12, v1

    new-array v12, v12, [D

    .line 743
    array-length v14, v1

    aget-object v15, v1, v10

    invoke-virtual {v15, v11}, Landroidx/d/b/b/t;->b(Ljava/lang/String;)I

    move-result v15

    filled-new-array {v14, v15}, [I

    move-result-object v14

    const-class v15, D

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[D

    .line 745
    :cond_30
    aget-object v15, v1, v10

    iget v15, v15, Landroidx/d/b/b/t;->p:F

    move-object/from16 v16, v7

    float-to-double v6, v15

    aput-wide v6, v12, v13

    .line 746
    aget-object v6, v1, v10

    aget-object v7, v14, v13

    invoke-virtual {v6, v11, v7, v5}, Landroidx/d/b/b/t;->a(Ljava/lang/String;[DI)I

    add-int/lit8 v13, v13, 0x1

    goto :goto_1b

    :cond_31
    move-object/from16 v16, v7

    :goto_1b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v7, v16

    const/4 v6, 0x0

    goto :goto_1a

    :cond_32
    move-object/from16 v16, v7

    .line 750
    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v6

    .line 751
    invoke-static {v14, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    .line 752
    iget-object v10, v0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    add-int/lit8 v9, v9, 0x1

    iget v11, v0, Landroidx/d/b/b/p;->x:I

    invoke-static {v11, v6, v7}, Landroidx/d/b/a/b;->a(I[D[[D)Landroidx/d/b/a/b;

    move-result-object v6

    aput-object v6, v10, v9

    move-object/from16 v7, v16

    const/4 v6, 0x0

    goto :goto_19

    :cond_33
    move-object/from16 v16, v7

    .line 755
    iget-object v6, v0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    iget v7, v0, Landroidx/d/b/b/p;->x:I

    move-object/from16 v9, v16

    invoke-static {v7, v9, v2}, Landroidx/d/b/a/b;->a(I[D[[D)Landroidx/d/b/a/b;

    move-result-object v2

    aput-object v2, v6, v5

    .line 757
    aget-object v2, v1, v5

    iget v2, v2, Landroidx/d/b/b/t;->x:I

    sget v6, Landroidx/d/b/b/e;->a:I

    if-eq v2, v6, :cond_35

    .line 758
    array-length v2, v1

    .line 759
    new-array v6, v2, [I

    .line 760
    new-array v7, v2, [D

    .line 761
    filled-new-array {v2, v4}, [I

    move-result-object v4

    const-class v9, D

    invoke-static {v9, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    move v9, v5

    :goto_1c
    if-ge v9, v2, :cond_34

    .line 763
    aget-object v10, v1, v9

    iget v10, v10, Landroidx/d/b/b/t;->x:I

    aput v10, v6, v9

    .line 764
    aget-object v10, v1, v9

    iget v10, v10, Landroidx/d/b/b/t;->p:F

    float-to-double v10, v10

    aput-wide v10, v7, v9

    .line 765
    aget-object v10, v4, v9

    aget-object v11, v1, v9

    iget v11, v11, Landroidx/d/b/b/t;->r:F

    float-to-double v11, v11

    aput-wide v11, v10, v5

    .line 766
    aget-object v10, v4, v9

    aget-object v11, v1, v9

    iget v11, v11, Landroidx/d/b/b/t;->s:F

    float-to-double v11, v11

    aput-wide v11, v10, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    .line 769
    :cond_34
    invoke-static {v6, v7, v4}, Landroidx/d/b/a/b;->a([I[D[[D)Landroidx/d/b/a/b;

    move-result-object v1

    iput-object v1, v0, Landroidx/d/b/b/p;->D:Landroidx/d/b/a/b;

    :cond_35
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 774
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    .line 775
    iget-object v2, v0, Landroidx/d/b/b/p;->N:Ljava/util/ArrayList;

    if-eqz v2, :cond_3b

    .line 776
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 777
    invoke-static {v3}, Landroidx/d/b/b/i;->b(Ljava/lang/String;)Landroidx/d/b/b/i;

    move-result-object v4

    if-nez v4, :cond_36

    goto :goto_1d

    .line 782
    :cond_36
    invoke-virtual {v4}, Landroidx/d/b/b/i;->a()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 783
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 784
    invoke-direct/range {p0 .. p0}, Landroidx/d/b/b/p;->g()F

    move-result v1

    .line 787
    :cond_37
    invoke-virtual {v4, v3}, Landroidx/d/b/b/i;->a(Ljava/lang/String;)V

    .line 788
    iget-object v5, v0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 790
    :cond_38
    iget-object v2, v0, Landroidx/d/b/b/p;->N:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_39
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/d/b/b/e;

    .line 791
    instance-of v4, v3, Landroidx/d/b/b/h;

    if-eqz v4, :cond_39

    .line 792
    check-cast v3, Landroidx/d/b/b/h;

    iget-object v4, v0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroidx/d/b/b/h;->c(Ljava/util/HashMap;)V

    goto :goto_1e

    .line 795
    :cond_3a
    iget-object v0, v0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/b/b/i;

    .line 796
    invoke-virtual {v2, v1}, Landroidx/d/b/b/i;->c(F)V

    goto :goto_1f

    :cond_3b
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .line 830
    iput-object p1, p0, Landroidx/d/b/b/p;->n:Landroid/view/View;

    .line 831
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Landroidx/d/b/b/p;->o:I

    .line 832
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 833
    instance-of v0, p1, Landroidx/d/e/d$a;

    if-eqz v0, :cond_0

    .line 834
    check-cast p1, Landroidx/d/e/d$a;

    invoke-virtual {p1}, Landroidx/d/e/d$a;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/d/b/b/p;->p:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method a(Landroid/view/View;Landroidx/d/b/b/l;FF[Ljava/lang/String;[F)V
    .locals 8

    .line 1185
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 1186
    iget-object v0, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v0, v0, Landroidx/d/b/b/t;->r:F

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 1187
    iget-object v0, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v0, v0, Landroidx/d/b/b/t;->s:F

    iput v0, v2, Landroid/graphics/RectF;->top:F

    .line 1188
    iget v0, v2, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v1, v1, Landroidx/d/b/b/t;->t:F

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 1189
    iget v0, v2, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v1, v1, Landroidx/d/b/b/t;->u:F

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 1190
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 1191
    iget-object v0, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v0, v0, Landroidx/d/b/b/t;->r:F

    iput v0, v3, Landroid/graphics/RectF;->left:F

    .line 1192
    iget-object v0, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v0, v0, Landroidx/d/b/b/t;->s:F

    iput v0, v3, Landroid/graphics/RectF;->top:F

    .line 1193
    iget v0, v3, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v1, v1, Landroidx/d/b/b/t;->t:F

    add-float/2addr v0, v1

    iput v0, v3, Landroid/graphics/RectF;->right:F

    .line 1194
    iget v0, v3, Landroid/graphics/RectF;->top:F

    iget-object p0, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget p0, p0, Landroidx/d/b/b/t;->u:F

    add-float/2addr v0, p0

    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    move-object v0, p2

    move-object v1, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1195
    invoke-virtual/range {v0 .. v7}, Landroidx/d/b/b/l;->a(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    return-void
.end method

.method a(Landroidx/d/b/b/e;)V
    .locals 0

    .line 461
    iget-object p0, p0, Landroidx/d/b/b/p;->N:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Landroidx/d/c/b/e;Landroidx/d/e/g;)V
    .locals 5

    .line 846
    iget-object v0, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/d/b/b/t;->p:F

    .line 847
    iget-object v0, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iput v1, v0, Landroidx/d/b/b/t;->q:F

    .line 848
    iget-object v0, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    invoke-direct {p0, v0}, Landroidx/d/b/b/p;->b(Landroidx/d/b/b/t;)V

    .line 849
    iget-object v0, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    invoke-virtual {p1}, Landroidx/d/c/b/e;->G()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/d/c/b/e;->H()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/d/c/b/e;->I()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroidx/d/c/b/e;->L()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/d/b/b/t;->a(FFFF)V

    .line 850
    iget v0, p0, Landroidx/d/b/b/p;->o:I

    invoke-virtual {p2, v0}, Landroidx/d/e/g;->a(I)Landroidx/d/e/g$a;

    move-result-object v0

    .line 851
    iget-object v1, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    invoke-virtual {v1, v0}, Landroidx/d/b/b/t;->a(Landroidx/d/e/g$a;)V

    .line 852
    iget-object v0, v0, Landroidx/d/e/g$a;->c:Landroidx/d/e/g$c;

    iget v0, v0, Landroidx/d/e/g$c;->f:F

    iput v0, p0, Landroidx/d/b/b/p;->q:F

    .line 853
    iget-object v0, p0, Landroidx/d/b/b/p;->A:Landroidx/d/b/b/o;

    iget p0, p0, Landroidx/d/b/b/p;->o:I

    invoke-virtual {v0, p1, p2, p0}, Landroidx/d/b/b/o;->a(Landroidx/d/c/b/e;Landroidx/d/e/g;I)V

    return-void
.end method

.method a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/d/b/b/e;",
            ">;)V"
        }
    .end annotation

    .line 452
    iget-object p0, p0, Landroidx/d/b/b/p;->N:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method a([FI)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    add-int/lit8 v3, v2, -0x1

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    .line 136
    iget-object v5, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    const/4 v6, 0x0

    if-nez v5, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    iget-object v5, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    const-string v7, "translationX"

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/d/b/b/w;

    .line 137
    :goto_0
    iget-object v7, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    if-nez v7, :cond_1

    move-object v7, v6

    goto :goto_1

    :cond_1
    iget-object v7, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    const-string v8, "translationY"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/d/b/b/w;

    .line 138
    :goto_1
    iget-object v8, v0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    if-nez v8, :cond_2

    move-object v8, v6

    goto :goto_2

    :cond_2
    iget-object v8, v0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    const-string v9, "translationX"

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/d/b/b/i;

    .line 139
    :goto_2
    iget-object v9, v0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    if-nez v9, :cond_3

    goto :goto_3

    :cond_3
    iget-object v6, v0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    const-string v9, "translationY"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/d/b/b/i;

    :goto_3
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v2, :cond_10

    int-to-float v11, v10

    mul-float/2addr v11, v3

    .line 143
    iget v12, v0, Landroidx/d/b/b/p;->s:F

    cmpl-float v12, v12, v4

    const/4 v13, 0x0

    if-eqz v12, :cond_5

    .line 144
    iget v12, v0, Landroidx/d/b/b/p;->r:F

    cmpg-float v12, v11, v12

    if-gez v12, :cond_4

    move v11, v13

    .line 147
    :cond_4
    iget v12, v0, Landroidx/d/b/b/p;->r:F

    cmpl-float v12, v11, v12

    if-lez v12, :cond_5

    float-to-double v14, v11

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v14, v16

    if-gez v12, :cond_5

    .line 148
    iget v12, v0, Landroidx/d/b/b/p;->r:F

    sub-float/2addr v11, v12

    .line 149
    iget v12, v0, Landroidx/d/b/b/p;->s:F

    mul-float/2addr v11, v12

    :cond_5
    float-to-double v14, v11

    .line 154
    iget-object v12, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v12, v12, Landroidx/d/b/b/t;->n:Landroidx/d/b/a/c;

    const/high16 v16, 0x7fc00000    # Float.NaN

    .line 157
    iget-object v4, v0, Landroidx/d/b/b/p;->L:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v9, v17

    check-cast v9, Landroidx/d/b/b/t;

    .line 158
    iget-object v2, v9, Landroidx/d/b/b/t;->n:Landroidx/d/b/a/c;

    if-eqz v2, :cond_7

    .line 159
    iget v2, v9, Landroidx/d/b/b/t;->p:F

    cmpg-float v2, v2, v11

    if-gez v2, :cond_6

    .line 160
    iget-object v2, v9, Landroidx/d/b/b/t;->n:Landroidx/d/b/a/c;

    .line 161
    iget v9, v9, Landroidx/d/b/b/t;->p:F

    move-object v12, v2

    move v13, v9

    goto :goto_6

    .line 163
    :cond_6
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 164
    iget v2, v9, Landroidx/d/b/b/t;->p:F

    move/from16 v16, v2

    :cond_7
    :goto_6
    move/from16 v2, p2

    goto :goto_5

    :cond_8
    if-eqz v12, :cond_a

    .line 171
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_9

    const/high16 v16, 0x3f800000    # 1.0f

    :cond_9
    sub-float v2, v11, v13

    sub-float v16, v16, v13

    div-float v2, v2, v16

    float-to-double v14, v2

    .line 175
    invoke-virtual {v12, v14, v15}, Landroidx/d/b/a/c;->a(D)D

    move-result-wide v14

    double-to-float v2, v14

    mul-float v2, v2, v16

    add-float/2addr v2, v13

    float-to-double v14, v2

    .line 180
    :cond_a
    iget-object v2, v0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    iget-object v9, v0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v2, v14, v15, v9}, Landroidx/d/b/a/b;->a(D[D)V

    .line 181
    iget-object v2, v0, Landroidx/d/b/b/p;->D:Landroidx/d/b/a/b;

    if-eqz v2, :cond_b

    .line 182
    iget-object v2, v0, Landroidx/d/b/b/p;->F:[D

    array-length v2, v2

    if-lez v2, :cond_b

    .line 183
    iget-object v2, v0, Landroidx/d/b/b/p;->D:Landroidx/d/b/a/b;

    iget-object v9, v0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v2, v14, v15, v9}, Landroidx/d/b/a/b;->a(D[D)V

    .line 186
    :cond_b
    iget-object v2, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v9, v0, Landroidx/d/b/b/p;->E:[I

    iget-object v12, v0, Landroidx/d/b/b/p;->F:[D

    mul-int/lit8 v13, v10, 0x2

    invoke-virtual {v2, v9, v12, v1, v13}, Landroidx/d/b/b/t;->a([I[D[FI)V

    if-eqz v8, :cond_c

    .line 189
    aget v2, v1, v13

    invoke-virtual {v8, v11}, Landroidx/d/b/b/i;->a(F)F

    move-result v9

    add-float/2addr v2, v9

    aput v2, v1, v13

    goto :goto_7

    :cond_c
    if-eqz v5, :cond_d

    .line 191
    aget v2, v1, v13

    invoke-virtual {v5, v11}, Landroidx/d/b/b/w;->a(F)F

    move-result v9

    add-float/2addr v2, v9

    aput v2, v1, v13

    :cond_d
    :goto_7
    if-eqz v6, :cond_e

    add-int/lit8 v13, v13, 0x1

    .line 194
    aget v2, v1, v13

    invoke-virtual {v6, v11}, Landroidx/d/b/b/i;->a(F)F

    move-result v9

    add-float/2addr v2, v9

    aput v2, v1, v13

    goto :goto_8

    :cond_e
    if-eqz v7, :cond_f

    add-int/lit8 v13, v13, 0x1

    .line 196
    aget v2, v1, v13

    invoke-virtual {v7, v11}, Landroidx/d/b/b/w;->a(F)F

    move-result v9

    add-float/2addr v2, v9

    aput v2, v1, v13

    :cond_f
    :goto_8
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, p2

    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_4

    :cond_10
    return-void
.end method

.method a(Landroid/view/View;FJLandroidx/d/b/b/g;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    const/4 v1, 0x0

    move/from16 v2, p2

    .line 932
    invoke-direct {v0, v2, v1}, Landroidx/d/b/b/p;->a(F[F)F

    move-result v12

    .line 935
    iget-object v2, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 936
    iget-object v2, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/d/b/b/w;

    .line 937
    invoke-virtual {v3, v11, v12}, Landroidx/d/b/b/w;->a(Landroid/view/View;F)V

    goto :goto_0

    .line 941
    :cond_0
    iget-object v2, v0, Landroidx/d/b/b/p;->O:Ljava/util/HashMap;

    const/4 v13, 0x0

    if-eqz v2, :cond_3

    .line 942
    iget-object v2, v0, Landroidx/d/b/b/p;->O:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v9, v1

    move v8, v13

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/b/b/x;

    .line 943
    instance-of v2, v1, Landroidx/d/b/b/x$d;

    if-eqz v2, :cond_1

    .line 944
    move-object v9, v1

    check-cast v9, Landroidx/d/b/b/x$d;

    goto :goto_1

    :cond_1
    move-object/from16 v2, p1

    move v3, v12

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    .line 947
    invoke-virtual/range {v1 .. v6}, Landroidx/d/b/b/x;->a(Landroid/view/View;FJLandroidx/d/b/b/g;)Z

    move-result v1

    or-int/2addr v8, v1

    goto :goto_1

    :cond_2
    move v14, v8

    goto :goto_2

    :cond_3
    move-object v9, v1

    move v14, v13

    .line 953
    :goto_2
    iget-object v1, v0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    const/4 v15, 0x1

    if-eqz v1, :cond_c

    .line 954
    iget-object v1, v0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    aget-object v1, v1, v13

    float-to-double v7, v12

    iget-object v2, v0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v1, v7, v8, v2}, Landroidx/d/b/a/b;->a(D[D)V

    .line 955
    iget-object v1, v0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    aget-object v1, v1, v13

    iget-object v2, v0, Landroidx/d/b/b/p;->G:[D

    invoke-virtual {v1, v7, v8, v2}, Landroidx/d/b/a/b;->b(D[D)V

    .line 956
    iget-object v1, v0, Landroidx/d/b/b/p;->D:Landroidx/d/b/a/b;

    if-eqz v1, :cond_4

    .line 957
    iget-object v1, v0, Landroidx/d/b/b/p;->F:[D

    array-length v1, v1

    if-lez v1, :cond_4

    .line 958
    iget-object v1, v0, Landroidx/d/b/b/p;->D:Landroidx/d/b/a/b;

    iget-object v2, v0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v1, v7, v8, v2}, Landroidx/d/b/a/b;->a(D[D)V

    .line 959
    iget-object v1, v0, Landroidx/d/b/b/p;->D:Landroidx/d/b/a/b;

    iget-object v2, v0, Landroidx/d/b/b/p;->G:[D

    invoke-virtual {v1, v7, v8, v2}, Landroidx/d/b/a/b;->b(D[D)V

    .line 962
    :cond_4
    iget-object v1, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v3, v0, Landroidx/d/b/b/p;->E:[I

    iget-object v4, v0, Landroidx/d/b/b/p;->F:[D

    iget-object v5, v0, Landroidx/d/b/b/p;->G:[D

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/d/b/b/t;->a(Landroid/view/View;[I[D[D[D)V

    .line 963
    iget-object v1, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    if-eqz v1, :cond_6

    .line 964
    iget-object v1, v0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/b/b/w;

    .line 965
    instance-of v2, v1, Landroidx/d/b/b/w$d;

    if-eqz v2, :cond_5

    .line 966
    check-cast v1, Landroidx/d/b/b/w$d;

    iget-object v2, v0, Landroidx/d/b/b/p;->G:[D

    aget-wide v4, v2, v13

    iget-object v2, v0, Landroidx/d/b/b/p;->G:[D

    aget-wide v16, v2, v15

    move-object/from16 v2, p1

    move v3, v12

    move-wide/from16 v18, v7

    move-wide/from16 v6, v16

    invoke-virtual/range {v1 .. v7}, Landroidx/d/b/b/w$d;->a(Landroid/view/View;FDD)V

    goto :goto_4

    :cond_5
    move-wide/from16 v18, v7

    :goto_4
    move-wide/from16 v7, v18

    goto :goto_3

    :cond_6
    move-wide/from16 v18, v7

    if-eqz v9, :cond_7

    .line 972
    iget-object v1, v0, Landroidx/d/b/b/p;->G:[D

    aget-wide v7, v1, v13

    iget-object v1, v0, Landroidx/d/b/b/p;->G:[D

    aget-wide v16, v1, v15

    move-object v1, v9

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move v4, v12

    move-wide/from16 v5, p3

    move-wide/from16 v9, v16

    invoke-virtual/range {v1 .. v10}, Landroidx/d/b/b/x$d;->a(Landroid/view/View;Landroidx/d/b/b/g;FJDD)Z

    move-result v1

    or-int/2addr v1, v14

    move v14, v1

    :cond_7
    move v1, v15

    .line 976
    :goto_5
    iget-object v2, v0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 977
    iget-object v2, v0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    aget-object v2, v2, v1

    .line 978
    iget-object v3, v0, Landroidx/d/b/b/p;->K:[F

    move-wide/from16 v4, v18

    invoke-virtual {v2, v4, v5, v3}, Landroidx/d/b/a/b;->a(D[F)V

    .line 979
    iget-object v2, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v2, v2, Landroidx/d/b/b/t;->y:Ljava/util/LinkedHashMap;

    iget-object v3, v0, Landroidx/d/b/b/p;->H:[Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/e/b;

    iget-object v3, v0, Landroidx/d/b/b/p;->K:[F

    invoke-virtual {v2, v11, v3}, Landroidx/d/e/b;->a(Landroid/view/View;[F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 982
    :cond_8
    iget-object v1, v0, Landroidx/d/b/b/p;->A:Landroidx/d/b/b/o;

    iget v1, v1, Landroidx/d/b/b/o;->c:I

    if-nez v1, :cond_b

    const/4 v1, 0x0

    cmpg-float v1, v12, v1

    if-gtz v1, :cond_9

    .line 984
    iget-object v1, v0, Landroidx/d/b/b/p;->A:Landroidx/d/b/b/o;

    iget v1, v1, Landroidx/d/b/b/o;->d:I

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    :cond_9
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v12, v1

    if-ltz v1, :cond_a

    .line 986
    iget-object v1, v0, Landroidx/d/b/b/p;->B:Landroidx/d/b/b/o;

    iget v1, v1, Landroidx/d/b/b/o;->d:I

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 987
    :cond_a
    iget-object v1, v0, Landroidx/d/b/b/p;->B:Landroidx/d/b/b/o;

    iget v1, v1, Landroidx/d/b/b/o;->d:I

    iget-object v2, v0, Landroidx/d/b/b/p;->A:Landroidx/d/b/b/o;

    iget v2, v2, Landroidx/d/b/b/o;->d:I

    if-eq v1, v2, :cond_b

    .line 988
    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 992
    :cond_b
    :goto_6
    iget-object v1, v0, Landroidx/d/b/b/p;->R:[Landroidx/d/b/b/n;

    if-eqz v1, :cond_f

    move v1, v13

    .line 993
    :goto_7
    iget-object v2, v0, Landroidx/d/b/b/p;->R:[Landroidx/d/b/b/n;

    array-length v2, v2

    if-ge v1, v2, :cond_f

    .line 994
    iget-object v2, v0, Landroidx/d/b/b/p;->R:[Landroidx/d/b/b/n;

    aget-object v2, v2, v1

    invoke-virtual {v2, v12, v11}, Landroidx/d/b/b/n;->a(FLandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1000
    :cond_c
    iget-object v1, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v1, v1, Landroidx/d/b/b/t;->r:F

    iget-object v2, v0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v2, v2, Landroidx/d/b/b/t;->r:F

    iget-object v3, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v3, v3, Landroidx/d/b/b/t;->r:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v12

    add-float/2addr v1, v2

    .line 1001
    iget-object v2, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v2, v2, Landroidx/d/b/b/t;->s:F

    iget-object v3, v0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v3, v3, Landroidx/d/b/b/t;->s:F

    iget-object v4, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v4, v4, Landroidx/d/b/b/t;->s:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v12

    add-float/2addr v2, v3

    .line 1002
    iget-object v3, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v3, v3, Landroidx/d/b/b/t;->t:F

    iget-object v4, v0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v4, v4, Landroidx/d/b/b/t;->t:F

    iget-object v5, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v5, v5, Landroidx/d/b/b/t;->t:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v12

    add-float/2addr v3, v4

    .line 1003
    iget-object v4, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v4, v4, Landroidx/d/b/b/t;->u:F

    iget-object v5, v0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v5, v5, Landroidx/d/b/b/t;->u:F

    iget-object v6, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v6, v6, Landroidx/d/b/b/t;->u:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v12

    add-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v1, v5

    float-to-int v6, v1

    add-float/2addr v2, v5

    float-to-int v5, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-float/2addr v2, v4

    float-to-int v2, v2

    sub-int v3, v1, v6

    sub-int v4, v2, v5

    .line 1019
    iget-object v7, v0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v7, v7, Landroidx/d/b/b/t;->t:F

    iget-object v8, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v8, v8, Landroidx/d/b/b/t;->t:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_d

    iget-object v7, v0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v7, v7, Landroidx/d/b/b/t;->u:F

    iget-object v8, v0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v8, v8, Landroidx/d/b/b/t;->u:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_e

    :cond_d
    const/high16 v7, 0x40000000    # 2.0f

    .line 1021
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1022
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1023
    invoke-virtual {v11, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1025
    :cond_e
    invoke-virtual {v11, v6, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1028
    :cond_f
    iget-object v1, v0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    if-eqz v1, :cond_11

    .line 1029
    iget-object v1, v0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/b/b/i;

    .line 1030
    instance-of v2, v1, Landroidx/d/b/b/i$g;

    if-eqz v2, :cond_10

    .line 1031
    check-cast v1, Landroidx/d/b/b/i$g;

    iget-object v2, v0, Landroidx/d/b/b/p;->G:[D

    aget-wide v4, v2, v13

    iget-object v2, v0, Landroidx/d/b/b/p;->G:[D

    aget-wide v6, v2, v15

    move-object/from16 v2, p1

    move v3, v12

    invoke-virtual/range {v1 .. v7}, Landroidx/d/b/b/i$g;->a(Landroid/view/View;FDD)V

    goto :goto_8

    .line 1034
    :cond_10
    invoke-virtual {v1, v11, v12}, Landroidx/d/b/b/i;->a(Landroid/view/View;F)V

    goto :goto_8

    :cond_11
    return v14
.end method

.method b()F
    .locals 0

    .line 114
    iget-object p0, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget p0, p0, Landroidx/d/b/b/t;->s:F

    return p0
.end method

.method b([F[I)I
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 359
    iget-object v1, p0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/d/b/a/b;->a()[D

    move-result-object v1

    if-eqz p2, :cond_0

    .line 361
    iget-object v2, p0, Landroidx/d/b/b/p;->L:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/d/b/b/t;

    add-int/lit8 v5, v3, 0x1

    .line 362
    iget v4, v4, Landroidx/d/b/b/t;->z:I

    aput v4, p2, v3

    move v3, v5

    goto :goto_0

    :cond_0
    move p2, v0

    move v2, p2

    .line 367
    :goto_1
    array-length v3, v1

    if-ge p2, v3, :cond_1

    .line 368
    iget-object v3, p0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    aget-object v3, v3, v0

    aget-wide v4, v1, p2

    iget-object v6, p0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v3, v4, v5, v6}, Landroidx/d/b/a/b;->a(D[D)V

    .line 369
    iget-object v3, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v4, p0, Landroidx/d/b/b/p;->E:[I

    iget-object v5, p0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v3, v4, v5, p1, v2}, Landroidx/d/b/b/t;->b([I[D[FI)V

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 372
    :cond_1
    div-int/lit8 v2, v2, 0x2

    return v2

    :cond_2
    return v0
.end method

.method public b(I)V
    .locals 0

    .line 468
    iput p1, p0, Landroidx/d/b/b/p;->S:I

    return-void
.end method

.method b(Landroid/view/View;)V
    .locals 5

    .line 839
    iget-object v0, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/d/b/b/t;->p:F

    .line 840
    iget-object v0, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iput v1, v0, Landroidx/d/b/b/t;->q:F

    .line 841
    iget-object v0, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/d/b/b/t;->a(FFFF)V

    .line 842
    iget-object p0, p0, Landroidx/d/b/b/p;->A:Landroidx/d/b/b/o;

    invoke-virtual {p0, p1}, Landroidx/d/b/b/o;->b(Landroid/view/View;)V

    return-void
.end method

.method b(Landroidx/d/c/b/e;Landroidx/d/e/g;)V
    .locals 5

    .line 857
    iget-object v0, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroidx/d/b/b/t;->p:F

    .line 858
    iget-object v0, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iput v1, v0, Landroidx/d/b/b/t;->q:F

    .line 859
    iget-object v0, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    invoke-direct {p0, v0}, Landroidx/d/b/b/p;->b(Landroidx/d/b/b/t;)V

    .line 860
    iget-object v0, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    invoke-virtual {p1}, Landroidx/d/c/b/e;->G()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/d/c/b/e;->H()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/d/c/b/e;->I()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroidx/d/c/b/e;->L()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/d/b/b/t;->a(FFFF)V

    .line 861
    iget-object v0, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v1, p0, Landroidx/d/b/b/p;->o:I

    invoke-virtual {p2, v1}, Landroidx/d/e/g;->a(I)Landroidx/d/e/g$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/d/b/b/t;->a(Landroidx/d/e/g$a;)V

    .line 863
    iget-object v0, p0, Landroidx/d/b/b/p;->B:Landroidx/d/b/b/o;

    iget p0, p0, Landroidx/d/b/b/p;->o:I

    invoke-virtual {v0, p1, p2, p0}, Landroidx/d/b/b/o;->a(Landroidx/d/c/b/e;Landroidx/d/e/g;I)V

    return-void
.end method

.method b([FI)V
    .locals 13

    add-int/lit8 v0, p2, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 212
    iget-object v2, p0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    const-string v3, "translationX"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/b/b/w;

    .line 213
    :goto_0
    iget-object v2, p0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/d/b/b/p;->P:Ljava/util/HashMap;

    const-string v3, "translationY"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/b/b/w;

    .line 214
    :goto_1
    iget-object v2, p0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v2, p0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    const-string v3, "translationX"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/b/b/i;

    .line 215
    :goto_2
    iget-object v2, p0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Landroidx/d/b/b/p;->Q:Ljava/util/HashMap;

    const-string v3, "translationY"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/b/b/i;

    :goto_3
    const/4 v2, 0x0

    move v3, v2

    :goto_4
    if-ge v3, p2, :cond_c

    int-to-float v4, v3

    mul-float/2addr v4, v0

    .line 219
    iget v5, p0, Landroidx/d/b/b/p;->s:F

    cmpl-float v5, v5, v1

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    .line 220
    iget v5, p0, Landroidx/d/b/b/p;->r:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_4

    move v4, v6

    .line 223
    :cond_4
    iget v5, p0, Landroidx/d/b/b/p;->r:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    float-to-double v7, v4

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v7, v9

    if-gez v5, :cond_5

    .line 224
    iget v5, p0, Landroidx/d/b/b/p;->r:F

    sub-float/2addr v4, v5

    .line 225
    iget v5, p0, Landroidx/d/b/b/p;->s:F

    mul-float/2addr v4, v5

    :cond_5
    float-to-double v7, v4

    .line 230
    iget-object v5, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v5, v5, Landroidx/d/b/b/t;->n:Landroidx/d/b/a/c;

    const/high16 v9, 0x7fc00000    # Float.NaN

    .line 233
    iget-object v10, p0, Landroidx/d/b/b/p;->L:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_6
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/d/b/b/t;

    .line 234
    iget-object v12, v11, Landroidx/d/b/b/t;->n:Landroidx/d/b/a/c;

    if-eqz v12, :cond_6

    .line 235
    iget v12, v11, Landroidx/d/b/b/t;->p:F

    cmpg-float v12, v12, v4

    if-gez v12, :cond_7

    .line 236
    iget-object v5, v11, Landroidx/d/b/b/t;->n:Landroidx/d/b/a/c;

    .line 237
    iget v6, v11, Landroidx/d/b/b/t;->p:F

    goto :goto_5

    .line 239
    :cond_7
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 240
    iget v9, v11, Landroidx/d/b/b/t;->p:F

    goto :goto_5

    :cond_8
    if-eqz v5, :cond_a

    .line 247
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_9

    move v9, v1

    :cond_9
    sub-float/2addr v4, v6

    sub-float/2addr v9, v6

    div-float/2addr v4, v9

    float-to-double v7, v4

    .line 251
    invoke-virtual {v5, v7, v8}, Landroidx/d/b/a/c;->a(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v4, v9

    add-float/2addr v4, v6

    float-to-double v7, v4

    .line 256
    :cond_a
    iget-object v4, p0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    aget-object v4, v4, v2

    iget-object v5, p0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v4, v7, v8, v5}, Landroidx/d/b/a/b;->a(D[D)V

    .line 257
    iget-object v4, p0, Landroidx/d/b/b/p;->D:Landroidx/d/b/a/b;

    if-eqz v4, :cond_b

    .line 258
    iget-object v4, p0, Landroidx/d/b/b/p;->F:[D

    array-length v4, v4

    if-lez v4, :cond_b

    .line 259
    iget-object v4, p0, Landroidx/d/b/b/p;->D:Landroidx/d/b/a/b;

    iget-object v5, p0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v4, v7, v8, v5}, Landroidx/d/b/a/b;->a(D[D)V

    .line 262
    :cond_b
    iget-object v4, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v5, p0, Landroidx/d/b/b/p;->E:[I

    iget-object v6, p0, Landroidx/d/b/b/p;->F:[D

    mul-int/lit8 v7, v3, 0x2

    invoke-virtual {v4, v5, v6, p1, v7}, Landroidx/d/b/b/t;->b([I[D[FI)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    :cond_c
    return-void
.end method

.method c()F
    .locals 0

    .line 118
    iget-object p0, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget p0, p0, Landroidx/d/b/b/t;->r:F

    return p0
.end method

.method public c(I)V
    .locals 0

    .line 1176
    iget-object p0, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iput p1, p0, Landroidx/d/b/b/t;->o:I

    return-void
.end method

.method c([FI)V
    .locals 7

    add-int/lit8 v0, p2, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_0

    int-to-float v3, v2

    mul-float/2addr v3, v1

    const/4 v4, 0x0

    .line 401
    invoke-direct {p0, v3, v4}, Landroidx/d/b/b/p;->a(F[F)F

    move-result v3

    .line 402
    iget-object v4, p0, Landroidx/d/b/b/p;->C:[Landroidx/d/b/a/b;

    aget-object v4, v4, v0

    float-to-double v5, v3

    iget-object v3, p0, Landroidx/d/b/b/p;->F:[D

    invoke-virtual {v4, v5, v6, v3}, Landroidx/d/b/a/b;->a(D[D)V

    .line 403
    iget-object v3, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget-object v4, p0, Landroidx/d/b/b/p;->E:[I

    iget-object v5, p0, Landroidx/d/b/b/p;->F:[D

    mul-int/lit8 v6, v2, 0x8

    invoke-virtual {v3, v4, v5, p1, v6}, Landroidx/d/b/b/t;->c([I[D[FI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method d()F
    .locals 0

    .line 122
    iget-object p0, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget p0, p0, Landroidx/d/b/b/t;->s:F

    return p0
.end method

.method public e()I
    .locals 3

    .line 1167
    iget-object v0, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v0, v0, Landroidx/d/b/b/t;->o:I

    .line 1168
    iget-object v1, p0, Landroidx/d/b/b/p;->L:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/b/b/t;

    .line 1169
    iget v2, v2, Landroidx/d/b/b/t;->o:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 1171
    :cond_0
    iget-object p0, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget p0, p0, Landroidx/d/b/b/t;->o:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .line 1180
    iget-object v0, p0, Landroidx/d/b/b/p;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1181
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Landroidx/d/b/b/p;->n:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " start: x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v1, v1, Landroidx/d/b/b/t;->r:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/d/b/b/p;->y:Landroidx/d/b/b/t;

    iget v1, v1, Landroidx/d/b/b/t;->s:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " end: x: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget v1, v1, Landroidx/d/b/b/t;->r:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/d/b/b/p;->z:Landroidx/d/b/b/t;

    iget p0, p0, Landroidx/d/b/b/t;->s:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
