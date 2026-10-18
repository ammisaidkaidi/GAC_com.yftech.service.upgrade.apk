.class Landroidx/d/b/b/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/d/b/b/t;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "MotionPaths"

.field public static final b:Z = false

.field public static final c:Z = false

.field static final d:I = 0x0

.field static final e:I = 0x1

.field static final f:I = 0x2

.field static final g:I = 0x3

.field static final h:I = 0x4

.field static final i:I = 0x5

.field static final j:I = 0x1

.field static final k:I = 0x2

.field static final l:I = 0x3

.field static m:[Ljava/lang/String;


# instance fields
.field A:[D

.field B:[D

.field n:Landroidx/d/b/a/c;

.field o:I

.field p:F

.field q:F

.field r:F

.field s:F

.field t:F

.field u:F

.field v:F

.field w:F

.field x:I

.field y:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroidx/d/e/b;",
            ">;"
        }
    .end annotation
.end field

.field z:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "position"

    const-string v1, "x"

    const-string v2, "y"

    const-string v3, "width"

    const-string v4, "height"

    const-string v5, "pathRotate"

    .line 52
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/d/b/b/t;->m:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Landroidx/d/b/b/t;->o:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 61
    iput v1, p0, Landroidx/d/b/b/t;->v:F

    .line 62
    iput v1, p0, Landroidx/d/b/b/t;->w:F

    .line 63
    sget v1, Landroidx/d/b/b/e;->a:I

    iput v1, p0, Landroidx/d/b/b/t;->x:I

    .line 65
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/d/b/b/t;->y:Ljava/util/LinkedHashMap;

    .line 66
    iput v0, p0, Landroidx/d/b/b/t;->z:I

    const/16 v0, 0x12

    .line 308
    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/d/b/b/t;->A:[D

    .line 309
    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/d/b/b/t;->B:[D

    return-void
.end method

.method public constructor <init>(IILandroidx/d/b/b/k;Landroidx/d/b/b/t;Landroidx/d/b/b/t;)V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Landroidx/d/b/b/t;->o:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 61
    iput v1, p0, Landroidx/d/b/b/t;->v:F

    .line 62
    iput v1, p0, Landroidx/d/b/b/t;->w:F

    .line 63
    sget v1, Landroidx/d/b/b/e;->a:I

    iput v1, p0, Landroidx/d/b/b/t;->x:I

    .line 65
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroidx/d/b/b/t;->y:Ljava/util/LinkedHashMap;

    .line 66
    iput v0, p0, Landroidx/d/b/b/t;->z:I

    const/16 v0, 0x12

    .line 308
    new-array v1, v0, [D

    iput-object v1, p0, Landroidx/d/b/b/t;->A:[D

    .line 309
    new-array v0, v0, [D

    iput-object v0, p0, Landroidx/d/b/b/t;->B:[D

    .line 125
    iget v0, p3, Landroidx/d/b/b/k;->L:I

    packed-switch v0, :pswitch_data_0

    .line 134
    invoke-virtual {p0, p3, p4, p5}, Landroidx/d/b/b/t;->a(Landroidx/d/b/b/k;Landroidx/d/b/b/t;Landroidx/d/b/b/t;)V

    return-void

    .line 127
    :pswitch_0
    invoke-virtual/range {p0 .. p5}, Landroidx/d/b/b/t;->a(IILandroidx/d/b/b/k;Landroidx/d/b/b/t;Landroidx/d/b/b/t;)V

    return-void

    .line 130
    :pswitch_1
    invoke-virtual {p0, p3, p4, p5}, Landroidx/d/b/b/t;->b(Landroidx/d/b/b/k;Landroidx/d/b/b/t;Landroidx/d/b/b/t;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final a(FFFFFF)F
    .locals 0

    sub-float/2addr p4, p2

    sub-float/2addr p5, p3

    mul-float/2addr p4, p1

    mul-float/2addr p5, p0

    sub-float/2addr p4, p5

    add-float/2addr p4, p2

    return p4
.end method

.method private a(FF)Z
    .locals 2

    .line 236
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_2

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, p2

    .line 239
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x358637bd    # 1.0E-6f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 237
    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eq p0, p1, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method private static final b(FFFFFF)F
    .locals 0

    sub-float/2addr p4, p2

    sub-float/2addr p5, p3

    mul-float/2addr p4, p0

    mul-float/2addr p5, p1

    add-float/2addr p4, p5

    add-float/2addr p4, p3

    return p4
.end method


# virtual methods
.method public a(Landroidx/d/b/b/t;)I
    .locals 0
    .param p1    # Landroidx/d/b/b/t;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 676
    iget p0, p0, Landroidx/d/b/b/t;->q:F

    iget p1, p1, Landroidx/d/b/b/t;->q:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method a(Ljava/lang/String;[DI)I
    .locals 4

    .line 652
    iget-object p0, p0, Landroidx/d/b/b/t;->y:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/d/e/b;

    .line 653
    invoke-virtual {p0}, Landroidx/d/e/b;->b()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 654
    invoke-virtual {p0}, Landroidx/d/e/b;->c()F

    move-result p0

    float-to-double p0, p0

    aput-wide p0, p2, p3

    return v0

    .line 657
    :cond_0
    invoke-virtual {p0}, Landroidx/d/e/b;->b()I

    move-result p1

    .line 658
    new-array v0, p1, [F

    .line 659
    invoke-virtual {p0, v0}, Landroidx/d/e/b;->a([F)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, p1, :cond_1

    add-int/lit8 v1, p3, 0x1

    .line 661
    aget v2, v0, p0

    float-to-double v2, v2

    aput-wide v2, p2, p3

    add-int/lit8 p0, p0, 0x1

    move p3, v1

    goto :goto_0

    :cond_1
    return p1
.end method

.method a(FFFF)V
    .locals 0

    .line 668
    iput p1, p0, Landroidx/d/b/b/t;->r:F

    .line 669
    iput p2, p0, Landroidx/d/b/b/t;->s:F

    .line 670
    iput p3, p0, Landroidx/d/b/b/t;->t:F

    .line 671
    iput p4, p0, Landroidx/d/b/b/t;->u:F

    return-void
.end method

.method a(FF[F[I[D[D)V
    .locals 9

    const/4 p0, 0x0

    const/4 v0, 0x0

    move v1, p0

    move v2, v0

    move v3, v2

    move v4, v3

    move v5, v4

    .line 572
    :goto_0
    array-length v6, p4

    if-ge v1, v6, :cond_0

    .line 573
    aget-wide v6, p5, v1

    double-to-float v6, v6

    .line 574
    aget-wide v7, p6, v1

    .line 578
    aget v7, p4, v1

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v5, v6

    goto :goto_1

    :pswitch_1
    move v3, v6

    goto :goto_1

    :pswitch_2
    move v4, v6

    goto :goto_1

    :pswitch_3
    move v2, v6

    :goto_1
    :pswitch_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    mul-float p4, v0, v3

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p4, p5

    sub-float/2addr v2, p4

    mul-float p4, v0, v5

    div-float/2addr p4, p5

    sub-float/2addr v4, p4

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float/2addr v3, p4

    mul-float/2addr v5, p4

    add-float/2addr v3, v2

    add-float/2addr v5, v4

    sub-float p5, p4, p1

    mul-float/2addr v2, p5

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    .line 629
    aput v2, p3, p0

    sub-float/2addr p4, p2

    mul-float/2addr v4, p4

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    add-float/2addr v4, v0

    const/4 p0, 0x1

    .line 630
    aput v4, p3, p0

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(IILandroidx/d/b/b/k;Landroidx/d/b/b/t;Landroidx/d/b/b/t;)V
    .locals 10

    .line 140
    iget v0, p3, Landroidx/d/b/b/k;->b:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 142
    iput v0, p0, Landroidx/d/b/b/t;->p:F

    .line 144
    iget v1, p3, Landroidx/d/b/b/k;->B:I

    iput v1, p0, Landroidx/d/b/b/t;->o:I

    .line 145
    iget v1, p3, Landroidx/d/b/b/k;->C:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p3, Landroidx/d/b/b/k;->C:F

    .line 146
    :goto_0
    iget v2, p3, Landroidx/d/b/b/k;->D:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    iget v2, p3, Landroidx/d/b/b/k;->D:F

    .line 148
    :goto_1
    iget v3, p5, Landroidx/d/b/b/t;->t:F

    iget v4, p4, Landroidx/d/b/b/t;->t:F

    sub-float/2addr v3, v4

    .line 149
    iget v4, p5, Landroidx/d/b/b/t;->u:F

    iget v5, p4, Landroidx/d/b/b/t;->u:F

    sub-float/2addr v4, v5

    .line 151
    iget v5, p0, Landroidx/d/b/b/t;->p:F

    iput v5, p0, Landroidx/d/b/b/t;->q:F

    .line 155
    iget v5, p4, Landroidx/d/b/b/t;->r:F

    iget v6, p4, Landroidx/d/b/b/t;->t:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 156
    iget v6, p4, Landroidx/d/b/b/t;->s:F

    iget v8, p4, Landroidx/d/b/b/t;->u:F

    div-float/2addr v8, v7

    add-float/2addr v6, v8

    .line 157
    iget v8, p5, Landroidx/d/b/b/t;->r:F

    iget v9, p5, Landroidx/d/b/b/t;->t:F

    div-float/2addr v9, v7

    add-float/2addr v8, v9

    .line 158
    iget v9, p5, Landroidx/d/b/b/t;->s:F

    iget p5, p5, Landroidx/d/b/b/t;->u:F

    div-float/2addr p5, v7

    add-float/2addr v9, p5

    sub-float/2addr v8, v5

    sub-float/2addr v9, v6

    .line 161
    iget p5, p4, Landroidx/d/b/b/t;->r:F

    mul-float/2addr v8, v0

    add-float/2addr p5, v8

    mul-float/2addr v3, v1

    div-float v1, v3, v7

    sub-float/2addr p5, v1

    float-to-int p5, p5

    int-to-float p5, p5

    iput p5, p0, Landroidx/d/b/b/t;->r:F

    .line 162
    iget p5, p4, Landroidx/d/b/b/t;->s:F

    mul-float/2addr v9, v0

    add-float/2addr p5, v9

    mul-float/2addr v4, v2

    div-float v0, v4, v7

    sub-float/2addr p5, v0

    float-to-int p5, p5

    int-to-float p5, p5

    iput p5, p0, Landroidx/d/b/b/t;->s:F

    .line 163
    iget p5, p4, Landroidx/d/b/b/t;->t:F

    add-float/2addr p5, v3

    float-to-int p5, p5

    int-to-float p5, p5

    iput p5, p0, Landroidx/d/b/b/t;->t:F

    .line 164
    iget p4, p4, Landroidx/d/b/b/t;->u:F

    add-float/2addr p4, v4

    float-to-int p4, p4

    int-to-float p4, p4

    iput p4, p0, Landroidx/d/b/b/t;->u:F

    const/4 p4, 0x3

    .line 166
    iput p4, p0, Landroidx/d/b/b/t;->z:I

    .line 167
    iget p4, p3, Landroidx/d/b/b/k;->E:F

    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result p4

    if-nez p4, :cond_2

    int-to-float p1, p1

    .line 168
    iget p4, p0, Landroidx/d/b/b/t;->t:F

    sub-float/2addr p1, p4

    float-to-int p1, p1

    .line 169
    iget p4, p3, Landroidx/d/b/b/k;->E:F

    int-to-float p1, p1

    mul-float/2addr p4, p1

    float-to-int p1, p4

    int-to-float p1, p1

    iput p1, p0, Landroidx/d/b/b/t;->r:F

    .line 171
    :cond_2
    iget p1, p3, Landroidx/d/b/b/k;->F:F

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_3

    int-to-float p1, p2

    .line 172
    iget p2, p0, Landroidx/d/b/b/t;->u:F

    sub-float/2addr p1, p2

    float-to-int p1, p1

    .line 173
    iget p2, p3, Landroidx/d/b/b/k;->F:F

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    int-to-float p1, p1

    iput p1, p0, Landroidx/d/b/b/t;->s:F

    .line 176
    :cond_3
    iget-object p1, p3, Landroidx/d/b/b/k;->z:Ljava/lang/String;

    invoke-static {p1}, Landroidx/d/b/a/c;->a(Ljava/lang/String;)Landroidx/d/b/a/c;

    move-result-object p1

    iput-object p1, p0, Landroidx/d/b/b/t;->n:Landroidx/d/b/a/c;

    .line 177
    iget p1, p3, Landroidx/d/b/b/k;->A:I

    iput p1, p0, Landroidx/d/b/b/t;->x:I

    return-void
.end method

.method a(Landroid/view/View;[I[D[D[D)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 313
    iget v4, v0, Landroidx/d/b/b/t;->r:F

    .line 314
    iget v5, v0, Landroidx/d/b/b/t;->s:F

    .line 315
    iget v6, v0, Landroidx/d/b/b/t;->t:F

    .line 316
    iget v7, v0, Landroidx/d/b/b/t;->u:F

    .line 329
    array-length v8, v2

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    iget-object v8, v0, Landroidx/d/b/b/t;->A:[D

    array-length v8, v8

    array-length v10, v2

    sub-int/2addr v10, v9

    aget v10, v2, v10

    if-gt v8, v10, :cond_0

    .line 330
    array-length v8, v2

    sub-int/2addr v8, v9

    aget v8, v2, v8

    add-int/2addr v8, v9

    .line 331
    new-array v10, v8, [D

    iput-object v10, v0, Landroidx/d/b/b/t;->A:[D

    .line 332
    new-array v8, v8, [D

    iput-object v8, v0, Landroidx/d/b/b/t;->B:[D

    .line 334
    :cond_0
    iget-object v8, v0, Landroidx/d/b/b/t;->A:[D

    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v8, v10, v11}, Ljava/util/Arrays;->fill([DD)V

    const/4 v10, 0x0

    .line 335
    :goto_0
    array-length v11, v2

    if-ge v10, v11, :cond_1

    .line 336
    iget-object v11, v0, Landroidx/d/b/b/t;->A:[D

    aget v12, v2, v10

    aget-wide v14, p3, v10

    aput-wide v14, v11, v12

    .line 337
    iget-object v11, v0, Landroidx/d/b/b/t;->B:[D

    aget v12, v2, v10

    aget-wide v15, p4, v10

    aput-wide v15, v11, v12

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    move v13, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    const/4 v4, 0x0

    const/high16 v5, 0x7fc00000    # Float.NaN

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 340
    :goto_1
    iget-object v8, v0, Landroidx/d/b/b/t;->A:[D

    array-length v8, v8

    if-ge v4, v8, :cond_6

    .line 341
    iget-object v8, v0, Landroidx/d/b/b/t;->A:[D

    aget-wide v18, v8, v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    const-wide/16 v18, 0x0

    if-eqz v8, :cond_2

    if-eqz p5, :cond_5

    aget-wide v20, p5, v4

    cmpl-double v8, v20, v18

    if-nez v8, :cond_2

    goto :goto_4

    :cond_2
    if-eqz p5, :cond_3

    .line 344
    aget-wide v18, p5, v4

    .line 345
    :cond_3
    iget-object v8, v0, Landroidx/d/b/b/t;->A:[D

    aget-wide v20, v8, v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_2
    move-wide/from16 v9, v18

    goto :goto_3

    :cond_4
    iget-object v8, v0, Landroidx/d/b/b/t;->A:[D

    aget-wide v20, v8, v4

    add-double v18, v20, v18

    goto :goto_2

    :goto_3
    double-to-float v8, v9

    .line 346
    iget-object v9, v0, Landroidx/d/b/b/t;->B:[D

    aget-wide v2, v9, v4

    double-to-float v2, v2

    packed-switch v4, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    move v5, v8

    goto :goto_4

    :pswitch_1
    move v12, v2

    move/from16 v16, v8

    goto :goto_4

    :pswitch_2
    move v7, v2

    move v15, v8

    goto :goto_4

    :pswitch_3
    move v11, v2

    move v14, v8

    goto :goto_4

    :pswitch_4
    move v6, v2

    move v13, v8

    :cond_5
    :goto_4
    :pswitch_5
    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x1

    goto :goto_1

    .line 377
    :cond_6
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_7

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 378
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_9

    .line 379
    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_5

    :cond_7
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 382
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v0, 0x0

    :cond_8
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v7, v2

    add-float/2addr v6, v7

    div-float/2addr v12, v2

    add-float/2addr v11, v12

    float-to-double v2, v0

    float-to-double v4, v5

    float-to-double v7, v11

    float-to-double v9, v6

    .line 391
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    add-double/2addr v2, v4

    double-to-float v0, v2

    .line 392
    invoke-virtual {v1, v0}, Landroid/view/View;->setRotation(F)V

    :cond_9
    :goto_5
    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v13, v0

    float-to-int v2, v13

    add-float/2addr v14, v0

    float-to-int v0, v14

    add-float/2addr v13, v15

    float-to-int v3, v13

    add-float v14, v14, v16

    float-to-int v4, v14

    sub-int v5, v3, v2

    sub-int v6, v4, v0

    .line 414
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    if-ne v5, v7, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    if-eq v6, v7, :cond_a

    goto :goto_6

    :cond_a
    const/16 v17, 0x0

    goto :goto_7

    :cond_b
    :goto_6
    const/16 v17, 0x1

    :goto_7
    if-eqz v17, :cond_c

    const/high16 v7, 0x40000000    # 2.0f

    .line 417
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 418
    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 420
    invoke-virtual {v1, v5, v6}, Landroid/view/View;->measure(II)V

    .line 423
    :cond_c
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    return-void

    nop

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

.method a(Landroidx/d/b/b/k;Landroidx/d/b/b/t;Landroidx/d/b/b/t;)V
    .locals 10

    .line 80
    iget v0, p1, Landroidx/d/b/b/k;->b:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 82
    iput v0, p0, Landroidx/d/b/b/t;->p:F

    .line 84
    iget v1, p1, Landroidx/d/b/b/k;->B:I

    iput v1, p0, Landroidx/d/b/b/t;->o:I

    .line 85
    iget v1, p1, Landroidx/d/b/b/k;->C:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p1, Landroidx/d/b/b/k;->C:F

    .line 86
    :goto_0
    iget v2, p1, Landroidx/d/b/b/k;->D:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    iget v2, p1, Landroidx/d/b/b/k;->D:F

    .line 87
    :goto_1
    iget v3, p3, Landroidx/d/b/b/t;->t:F

    iget v4, p2, Landroidx/d/b/b/t;->t:F

    sub-float/2addr v3, v4

    .line 88
    iget v4, p3, Landroidx/d/b/b/t;->u:F

    iget v5, p2, Landroidx/d/b/b/t;->u:F

    sub-float/2addr v4, v5

    .line 90
    iget v5, p0, Landroidx/d/b/b/t;->p:F

    iput v5, p0, Landroidx/d/b/b/t;->q:F

    .line 94
    iget v5, p2, Landroidx/d/b/b/t;->r:F

    iget v6, p2, Landroidx/d/b/b/t;->t:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 95
    iget v6, p2, Landroidx/d/b/b/t;->s:F

    iget v8, p2, Landroidx/d/b/b/t;->u:F

    div-float/2addr v8, v7

    add-float/2addr v6, v8

    .line 96
    iget v8, p3, Landroidx/d/b/b/t;->r:F

    iget v9, p3, Landroidx/d/b/b/t;->t:F

    div-float/2addr v9, v7

    add-float/2addr v8, v9

    .line 97
    iget v9, p3, Landroidx/d/b/b/t;->s:F

    iget p3, p3, Landroidx/d/b/b/t;->u:F

    div-float/2addr p3, v7

    add-float/2addr v9, p3

    sub-float/2addr v8, v5

    sub-float/2addr v9, v6

    .line 100
    iget p3, p2, Landroidx/d/b/b/t;->r:F

    mul-float v5, v8, v0

    add-float/2addr p3, v5

    mul-float/2addr v3, v1

    div-float v1, v3, v7

    sub-float/2addr p3, v1

    float-to-int p3, p3

    int-to-float p3, p3

    iput p3, p0, Landroidx/d/b/b/t;->r:F

    .line 101
    iget p3, p2, Landroidx/d/b/b/t;->s:F

    mul-float v5, v9, v0

    add-float/2addr p3, v5

    mul-float/2addr v4, v2

    div-float v2, v4, v7

    sub-float/2addr p3, v2

    float-to-int p3, p3

    int-to-float p3, p3

    iput p3, p0, Landroidx/d/b/b/t;->s:F

    .line 102
    iget p3, p2, Landroidx/d/b/b/t;->t:F

    add-float/2addr p3, v3

    float-to-int p3, p3

    int-to-float p3, p3

    iput p3, p0, Landroidx/d/b/b/t;->t:F

    .line 103
    iget p3, p2, Landroidx/d/b/b/t;->u:F

    add-float/2addr p3, v4

    float-to-int p3, p3

    int-to-float p3, p3

    iput p3, p0, Landroidx/d/b/b/t;->u:F

    .line 105
    iget p3, p1, Landroidx/d/b/b/k;->E:F

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-eqz p3, :cond_2

    move p3, v0

    goto :goto_2

    :cond_2
    iget p3, p1, Landroidx/d/b/b/k;->E:F

    .line 106
    :goto_2
    iget v3, p1, Landroidx/d/b/b/k;->H:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    iget v3, p1, Landroidx/d/b/b/k;->H:F

    .line 107
    :goto_3
    iget v5, p1, Landroidx/d/b/b/k;->F:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    iget v0, p1, Landroidx/d/b/b/k;->F:F

    .line 108
    :goto_4
    iget v5, p1, Landroidx/d/b/b/k;->G:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_5

    :cond_5
    iget v4, p1, Landroidx/d/b/b/k;->G:F

    :goto_5
    const/4 v5, 0x2

    .line 109
    iput v5, p0, Landroidx/d/b/b/t;->z:I

    .line 110
    iget v5, p2, Landroidx/d/b/b/t;->r:F

    mul-float/2addr p3, v8

    add-float/2addr v5, p3

    mul-float/2addr v4, v9

    add-float/2addr v5, v4

    sub-float/2addr v5, v1

    float-to-int p3, v5

    int-to-float p3, p3

    iput p3, p0, Landroidx/d/b/b/t;->r:F

    .line 111
    iget p2, p2, Landroidx/d/b/b/t;->s:F

    mul-float/2addr v8, v3

    add-float/2addr p2, v8

    mul-float/2addr v9, v0

    add-float/2addr p2, v9

    sub-float/2addr p2, v2

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/d/b/b/t;->s:F

    .line 113
    iget-object p2, p1, Landroidx/d/b/b/k;->z:Ljava/lang/String;

    invoke-static {p2}, Landroidx/d/b/a/c;->a(Ljava/lang/String;)Landroidx/d/b/a/c;

    move-result-object p2

    iput-object p2, p0, Landroidx/d/b/b/t;->n:Landroidx/d/b/a/c;

    .line 114
    iget p1, p1, Landroidx/d/b/b/k;->A:I

    iput p1, p0, Landroidx/d/b/b/t;->x:I

    return-void
.end method

.method a(Landroidx/d/b/b/t;[Z[Ljava/lang/String;Z)V
    .locals 3

    const/4 p3, 0x0

    .line 244
    aget-boolean v0, p2, p3

    iget v1, p0, Landroidx/d/b/b/t;->q:F

    iget v2, p1, Landroidx/d/b/b/t;->q:F

    invoke-direct {p0, v1, v2}, Landroidx/d/b/b/t;->a(FF)Z

    move-result v1

    or-int/2addr v0, v1

    aput-boolean v0, p2, p3

    const/4 p3, 0x1

    .line 245
    aget-boolean v0, p2, p3

    iget v1, p0, Landroidx/d/b/b/t;->r:F

    iget v2, p1, Landroidx/d/b/b/t;->r:F

    invoke-direct {p0, v1, v2}, Landroidx/d/b/b/t;->a(FF)Z

    move-result v1

    or-int/2addr v1, p4

    or-int/2addr v0, v1

    aput-boolean v0, p2, p3

    const/4 p3, 0x2

    .line 246
    aget-boolean v0, p2, p3

    iget v1, p0, Landroidx/d/b/b/t;->s:F

    iget v2, p1, Landroidx/d/b/b/t;->s:F

    invoke-direct {p0, v1, v2}, Landroidx/d/b/b/t;->a(FF)Z

    move-result v1

    or-int/2addr p4, v1

    or-int/2addr p4, v0

    aput-boolean p4, p2, p3

    const/4 p3, 0x3

    .line 247
    aget-boolean p4, p2, p3

    iget v0, p0, Landroidx/d/b/b/t;->t:F

    iget v1, p1, Landroidx/d/b/b/t;->t:F

    invoke-direct {p0, v0, v1}, Landroidx/d/b/b/t;->a(FF)Z

    move-result v0

    or-int/2addr p4, v0

    aput-boolean p4, p2, p3

    const/4 p3, 0x4

    .line 248
    aget-boolean p4, p2, p3

    iget v0, p0, Landroidx/d/b/b/t;->u:F

    iget p1, p1, Landroidx/d/b/b/t;->u:F

    invoke-direct {p0, v0, p1}, Landroidx/d/b/b/t;->a(FF)Z

    move-result p0

    or-int/2addr p0, p4

    aput-boolean p0, p2, p3

    return-void
.end method

.method public a(Landroidx/d/e/g$a;)V
    .locals 5

    .line 681
    iget-object v0, p1, Landroidx/d/e/g$a;->c:Landroidx/d/e/g$c;

    iget-object v0, v0, Landroidx/d/e/g$c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroidx/d/b/a/c;->a(Ljava/lang/String;)Landroidx/d/b/a/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/d/b/b/t;->n:Landroidx/d/b/a/c;

    .line 682
    iget-object v0, p1, Landroidx/d/e/g$a;->c:Landroidx/d/e/g$c;

    iget v0, v0, Landroidx/d/e/g$c;->d:I

    iput v0, p0, Landroidx/d/b/b/t;->x:I

    .line 683
    iget-object v0, p1, Landroidx/d/e/g$a;->c:Landroidx/d/e/g$c;

    iget v0, v0, Landroidx/d/e/g$c;->g:F

    iput v0, p0, Landroidx/d/b/b/t;->v:F

    .line 684
    iget-object v0, p1, Landroidx/d/e/g$a;->c:Landroidx/d/e/g$c;

    iget v0, v0, Landroidx/d/e/g$c;->e:I

    iput v0, p0, Landroidx/d/b/b/t;->o:I

    .line 685
    iget-object v0, p1, Landroidx/d/e/g$a;->b:Landroidx/d/e/g$d;

    iget v0, v0, Landroidx/d/e/g$d;->e:F

    iput v0, p0, Landroidx/d/b/b/t;->w:F

    .line 686
    iget-object v0, p1, Landroidx/d/e/g$a;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 687
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 688
    iget-object v2, p1, Landroidx/d/e/g$a;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/e/b;

    .line 689
    invoke-virtual {v2}, Landroidx/d/e/b;->a()Landroidx/d/e/b$a;

    move-result-object v3

    sget-object v4, Landroidx/d/e/b$a;->e:Landroidx/d/e/b$a;

    if-eq v3, v4, :cond_0

    .line 690
    iget-object v3, p0, Landroidx/d/b/b/t;->y:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method a([D[I)V
    .locals 5

    const/4 v0, 0x6

    .line 634
    new-array v0, v0, [F

    iget v1, p0, Landroidx/d/b/b/t;->q:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Landroidx/d/b/b/t;->r:F

    const/4 v3, 0x1

    aput v1, v0, v3

    iget v1, p0, Landroidx/d/b/b/t;->s:F

    const/4 v3, 0x2

    aput v1, v0, v3

    iget v1, p0, Landroidx/d/b/b/t;->t:F

    const/4 v3, 0x3

    aput v1, v0, v3

    iget v1, p0, Landroidx/d/b/b/t;->u:F

    const/4 v3, 0x4

    aput v1, v0, v3

    iget p0, p0, Landroidx/d/b/b/t;->v:F

    const/4 v1, 0x5

    aput p0, v0, v1

    move p0, v2

    .line 636
    :goto_0
    array-length v1, p2

    if-ge v2, v1, :cond_1

    .line 637
    aget v1, p2, v2

    array-length v3, v0

    if-ge v1, v3, :cond_0

    add-int/lit8 v1, p0, 0x1

    .line 638
    aget v3, p2, v2

    aget v3, v0, v3

    float-to-double v3, v3

    aput-wide v3, p1, p0

    move p0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method a([I[D[FI)V
    .locals 6

    .line 253
    iget v0, p0, Landroidx/d/b/b/t;->r:F

    .line 254
    iget v1, p0, Landroidx/d/b/b/t;->s:F

    .line 255
    iget v2, p0, Landroidx/d/b/b/t;->t:F

    .line 256
    iget p0, p0, Landroidx/d/b/b/t;->u:F

    const/4 v3, 0x0

    .line 258
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 259
    aget-wide v4, p2, v3

    double-to-float v4, v4

    .line 261
    aget v5, p1, v3

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move p0, v4

    goto :goto_1

    :pswitch_1
    move v2, v4

    goto :goto_1

    :pswitch_2
    move v1, v4

    goto :goto_1

    :pswitch_3
    move v0, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v2, p1

    add-float/2addr v0, v2

    const/4 p2, 0x0

    add-float/2addr v0, p2

    .line 276
    aput v0, p3, p4

    add-int/lit8 p4, p4, 0x1

    div-float/2addr p0, p1

    add-float/2addr v1, p0

    add-float/2addr v1, p2

    .line 277
    aput v1, p3, p4

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Ljava/lang/String;)Z
    .locals 0

    .line 644
    iget-object p0, p0, Landroidx/d/b/b/t;->y:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method b(Ljava/lang/String;)I
    .locals 0

    .line 648
    iget-object p0, p0, Landroidx/d/b/b/t;->y:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/d/e/b;

    invoke-virtual {p0}, Landroidx/d/e/b;->b()I

    move-result p0

    return p0
.end method

.method b(Landroidx/d/b/b/k;Landroidx/d/b/b/t;Landroidx/d/b/b/t;)V
    .locals 10

    .line 182
    iget v0, p1, Landroidx/d/b/b/k;->b:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 184
    iput v0, p0, Landroidx/d/b/b/t;->p:F

    .line 186
    iget v1, p1, Landroidx/d/b/b/k;->B:I

    iput v1, p0, Landroidx/d/b/b/t;->o:I

    .line 187
    iget v1, p1, Landroidx/d/b/b/k;->C:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p1, Landroidx/d/b/b/k;->C:F

    .line 188
    :goto_0
    iget v2, p1, Landroidx/d/b/b/k;->D:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    iget v2, p1, Landroidx/d/b/b/k;->D:F

    .line 190
    :goto_1
    iget v3, p3, Landroidx/d/b/b/t;->t:F

    iget v4, p2, Landroidx/d/b/b/t;->t:F

    sub-float/2addr v3, v4

    .line 191
    iget v4, p3, Landroidx/d/b/b/t;->u:F

    iget v5, p2, Landroidx/d/b/b/t;->u:F

    sub-float/2addr v4, v5

    .line 193
    iget v5, p0, Landroidx/d/b/b/t;->p:F

    iput v5, p0, Landroidx/d/b/b/t;->q:F

    .line 195
    iget v5, p1, Landroidx/d/b/b/k;->E:F

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    iget v0, p1, Landroidx/d/b/b/k;->E:F

    .line 197
    :goto_2
    iget v5, p2, Landroidx/d/b/b/t;->r:F

    iget v6, p2, Landroidx/d/b/b/t;->t:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 198
    iget v6, p2, Landroidx/d/b/b/t;->s:F

    iget v8, p2, Landroidx/d/b/b/t;->u:F

    div-float/2addr v8, v7

    add-float/2addr v6, v8

    .line 199
    iget v8, p3, Landroidx/d/b/b/t;->r:F

    iget v9, p3, Landroidx/d/b/b/t;->t:F

    div-float/2addr v9, v7

    add-float/2addr v8, v9

    .line 200
    iget v9, p3, Landroidx/d/b/b/t;->s:F

    iget p3, p3, Landroidx/d/b/b/t;->u:F

    div-float/2addr p3, v7

    add-float/2addr v9, p3

    sub-float/2addr v8, v5

    sub-float/2addr v9, v6

    .line 203
    iget p3, p2, Landroidx/d/b/b/t;->r:F

    mul-float v5, v8, v0

    add-float/2addr p3, v5

    mul-float/2addr v3, v1

    div-float v1, v3, v7

    sub-float/2addr p3, v1

    float-to-int p3, p3

    int-to-float p3, p3

    iput p3, p0, Landroidx/d/b/b/t;->r:F

    .line 204
    iget p3, p2, Landroidx/d/b/b/t;->s:F

    mul-float/2addr v0, v9

    add-float/2addr p3, v0

    mul-float/2addr v4, v2

    div-float v2, v4, v7

    sub-float/2addr p3, v2

    float-to-int p3, p3

    int-to-float p3, p3

    iput p3, p0, Landroidx/d/b/b/t;->s:F

    .line 205
    iget p3, p2, Landroidx/d/b/b/t;->t:F

    add-float/2addr p3, v3

    float-to-int p3, p3

    int-to-float p3, p3

    iput p3, p0, Landroidx/d/b/b/t;->t:F

    .line 206
    iget p3, p2, Landroidx/d/b/b/t;->u:F

    add-float/2addr p3, v4

    float-to-int p3, p3

    int-to-float p3, p3

    iput p3, p0, Landroidx/d/b/b/t;->u:F

    .line 207
    iget p3, p1, Landroidx/d/b/b/k;->F:F

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result p3

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    goto :goto_3

    :cond_3
    iget p3, p1, Landroidx/d/b/b/k;->F:F

    :goto_3
    neg-float v3, v9

    mul-float/2addr v3, p3

    mul-float/2addr v8, p3

    const/4 p3, 0x1

    .line 213
    iput p3, p0, Landroidx/d/b/b/t;->z:I

    .line 214
    iget p3, p2, Landroidx/d/b/b/t;->r:F

    add-float/2addr p3, v5

    sub-float/2addr p3, v1

    float-to-int p3, p3

    int-to-float p3, p3

    iput p3, p0, Landroidx/d/b/b/t;->r:F

    .line 215
    iget p2, p2, Landroidx/d/b/b/t;->s:F

    add-float/2addr p2, v0

    sub-float/2addr p2, v2

    float-to-int p2, p2

    int-to-float p2, p2

    iput p2, p0, Landroidx/d/b/b/t;->s:F

    .line 216
    iget p2, p0, Landroidx/d/b/b/t;->r:F

    add-float/2addr p2, v3

    iput p2, p0, Landroidx/d/b/b/t;->r:F

    .line 217
    iget p2, p0, Landroidx/d/b/b/t;->s:F

    add-float/2addr p2, v8

    iput p2, p0, Landroidx/d/b/b/t;->s:F

    .line 219
    iget-object p2, p1, Landroidx/d/b/b/k;->z:Ljava/lang/String;

    invoke-static {p2}, Landroidx/d/b/a/c;->a(Ljava/lang/String;)Landroidx/d/b/a/c;

    move-result-object p2

    iput-object p2, p0, Landroidx/d/b/b/t;->n:Landroidx/d/b/a/c;

    .line 220
    iget p1, p1, Landroidx/d/b/b/k;->A:I

    iput p1, p0, Landroidx/d/b/b/t;->x:I

    return-void
.end method

.method b([I[D[FI)V
    .locals 4

    .line 281
    iget v0, p0, Landroidx/d/b/b/t;->r:F

    .line 282
    iget v0, p0, Landroidx/d/b/b/t;->s:F

    .line 283
    iget v0, p0, Landroidx/d/b/b/t;->t:F

    .line 284
    iget p0, p0, Landroidx/d/b/b/t;->u:F

    const/4 v1, 0x0

    .line 286
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 287
    aget-wide v2, p2, v1

    double-to-float v2, v2

    .line 289
    aget v3, p1, v1

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move p0, v2

    goto :goto_1

    :pswitch_1
    move v0, v2

    :goto_1
    :pswitch_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_0
    aput v0, p3, p4

    add-int/lit8 p4, p4, 0x1

    .line 305
    aput p0, p3, p4

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method c([I[D[FI)V
    .locals 6

    .line 432
    iget v0, p0, Landroidx/d/b/b/t;->r:F

    .line 433
    iget v1, p0, Landroidx/d/b/b/t;->s:F

    .line 434
    iget v2, p0, Landroidx/d/b/b/t;->t:F

    .line 435
    iget p0, p0, Landroidx/d/b/b/t;->u:F

    const/4 v3, 0x0

    .line 450
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 451
    aget-wide v4, p2, v3

    double-to-float v4, v4

    .line 453
    aget v5, p1, v3

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move p0, v4

    goto :goto_1

    :pswitch_1
    move v2, v4

    goto :goto_1

    :pswitch_2
    move v1, v4

    goto :goto_1

    :pswitch_3
    move v0, v4

    :goto_1
    :pswitch_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-float/2addr v2, v0

    add-float/2addr p0, v1

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 486
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    .line 489
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    const/4 p1, 0x0

    add-float p2, v0, p1

    add-float v3, v1, p1

    add-float v4, v2, p1

    add-float/2addr v1, p1

    add-float/2addr v2, p1

    add-float v5, p0, p1

    add-float/2addr v0, p1

    add-float/2addr p0, p1

    add-int/lit8 p1, p4, 0x1

    .line 537
    aput p2, p3, p4

    add-int/lit8 p2, p1, 0x1

    .line 538
    aput v3, p3, p1

    add-int/lit8 p1, p2, 0x1

    .line 539
    aput v4, p3, p2

    add-int/lit8 p2, p1, 0x1

    .line 540
    aput v1, p3, p1

    add-int/lit8 p1, p2, 0x1

    .line 541
    aput v2, p3, p2

    add-int/lit8 p2, p1, 0x1

    .line 542
    aput v5, p3, p1

    add-int/lit8 p1, p2, 0x1

    .line 543
    aput v0, p3, p2

    .line 544
    aput p0, p3, p1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 38
    check-cast p1, Landroidx/d/b/b/t;

    invoke-virtual {p0, p1}, Landroidx/d/b/b/t;->a(Landroidx/d/b/b/t;)I

    move-result p0

    return p0
.end method
