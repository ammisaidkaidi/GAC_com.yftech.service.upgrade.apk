.class public Landroidx/d/c/b/g;
.super Landroidx/d/c/b/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/d/c/b/g$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final aY:I = 0x2

.field public static final aZ:I = 0x3

.field public static final b:I = 0x1

.field public static final ba:I = 0x0

.field public static final bb:I = 0x1

.field public static final bc:I = 0x2

.field public static final c:I = 0x2

.field public static final d:I = 0x0

.field public static final e:I = 0x1


# instance fields
.field private bA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/d/c/b/g$a;",
            ">;"
        }
    .end annotation
.end field

.field private bB:[Landroidx/d/c/b/e;

.field private bC:[Landroidx/d/c/b/e;

.field private bD:[I

.field private bE:[Landroidx/d/c/b/e;

.field private bF:I

.field private bh:I

.field private bi:I

.field private bj:I

.field private bk:I

.field private bl:I

.field private bm:I

.field private bn:F

.field private bo:F

.field private bp:F

.field private bq:F

.field private br:F

.field private bs:F

.field private bt:I

.field private bu:I

.field private bv:I

.field private bw:I

.field private bx:I

.field private by:I

.field private bz:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Landroidx/d/c/b/m;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Landroidx/d/c/b/g;->bh:I

    .line 48
    iput v0, p0, Landroidx/d/c/b/g;->bi:I

    .line 49
    iput v0, p0, Landroidx/d/c/b/g;->bj:I

    .line 50
    iput v0, p0, Landroidx/d/c/b/g;->bk:I

    .line 51
    iput v0, p0, Landroidx/d/c/b/g;->bl:I

    .line 52
    iput v0, p0, Landroidx/d/c/b/g;->bm:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 54
    iput v1, p0, Landroidx/d/c/b/g;->bn:F

    .line 55
    iput v1, p0, Landroidx/d/c/b/g;->bo:F

    .line 56
    iput v1, p0, Landroidx/d/c/b/g;->bp:F

    .line 57
    iput v1, p0, Landroidx/d/c/b/g;->bq:F

    .line 58
    iput v1, p0, Landroidx/d/c/b/g;->br:F

    .line 59
    iput v1, p0, Landroidx/d/c/b/g;->bs:F

    const/4 v1, 0x0

    .line 61
    iput v1, p0, Landroidx/d/c/b/g;->bt:I

    .line 62
    iput v1, p0, Landroidx/d/c/b/g;->bu:I

    const/4 v2, 0x2

    .line 64
    iput v2, p0, Landroidx/d/c/b/g;->bv:I

    .line 65
    iput v2, p0, Landroidx/d/c/b/g;->bw:I

    .line 66
    iput v1, p0, Landroidx/d/c/b/g;->bx:I

    .line 68
    iput v0, p0, Landroidx/d/c/b/g;->by:I

    .line 70
    iput v1, p0, Landroidx/d/c/b/g;->bz:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/d/c/b/g;->bA:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Landroidx/d/c/b/g;->bB:[Landroidx/d/c/b/e;

    .line 77
    iput-object v0, p0, Landroidx/d/c/b/g;->bC:[Landroidx/d/c/b/e;

    .line 78
    iput-object v0, p0, Landroidx/d/c/b/g;->bD:[I

    .line 80
    iput v1, p0, Landroidx/d/c/b/g;->bF:I

    return-void
.end method

.method private final a(Landroidx/d/c/b/e;I)I
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroidx/d/c/b/e;->aj()Landroidx/d/c/b/e$a;

    move-result-object v1

    sget-object v2, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v1, v2, :cond_5

    .line 181
    iget v1, p1, Landroidx/d/c/b/e;->G:I

    if-nez v1, :cond_1

    return v0

    .line 183
    :cond_1
    iget v0, p1, Landroidx/d/c/b/e;->G:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 184
    iget v0, p1, Landroidx/d/c/b/e;->L:F

    int-to-float p2, p2

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 185
    invoke-virtual {p1}, Landroidx/d/c/b/e;->I()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 186
    invoke-virtual {p1, v2}, Landroidx/d/c/b/e;->e(Z)V

    .line 187
    sget-object v5, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    invoke-virtual {p1}, Landroidx/d/c/b/e;->ak()Landroidx/d/c/b/e$a;

    move-result-object v7

    invoke-virtual {p1}, Landroidx/d/c/b/e;->L()I

    move-result v8

    move-object v3, p0

    move-object v4, p1

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/d/c/b/g;->a(Landroidx/d/c/b/e;Landroidx/d/c/b/e$a;ILandroidx/d/c/b/e$a;I)V

    :cond_2
    return p2

    .line 190
    :cond_3
    iget p0, p1, Landroidx/d/c/b/e;->G:I

    if-ne p0, v2, :cond_4

    .line 191
    invoke-virtual {p1}, Landroidx/d/c/b/e;->I()I

    move-result p0

    return p0

    .line 192
    :cond_4
    iget p0, p1, Landroidx/d/c/b/e;->G:I

    const/4 p2, 0x3

    if-ne p0, p2, :cond_5

    .line 193
    invoke-virtual {p1}, Landroidx/d/c/b/e;->L()I

    move-result p0

    int-to-float p0, p0

    iget p1, p1, Landroidx/d/c/b/e;->ao:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    .line 196
    :cond_5
    invoke-virtual {p1}, Landroidx/d/c/b/e;->I()I

    move-result p0

    return p0
.end method

.method static synthetic a(Landroidx/d/c/b/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/d/c/b/g;->bt:I

    return p0
.end method

.method static synthetic a(Landroidx/d/c/b/g;Landroidx/d/c/b/e;I)I
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/d/c/b/g;->a(Landroidx/d/c/b/e;I)I

    move-result p0

    return p0
.end method

.method private a([Landroidx/d/c/b/e;III[I)V
    .locals 27

    move-object/from16 v8, p0

    move/from16 v10, p2

    move/from16 v15, p4

    if-nez v10, :cond_0

    return-void

    .line 782
    :cond_0
    iget-object v0, v8, Landroidx/d/c/b/g;->bA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 783
    new-instance v11, Landroidx/d/c/b/g$a;

    iget-object v3, v8, Landroidx/d/c/b/g;->T:Landroidx/d/c/b/d;

    iget-object v4, v8, Landroidx/d/c/b/g;->U:Landroidx/d/c/b/d;

    iget-object v5, v8, Landroidx/d/c/b/g;->V:Landroidx/d/c/b/d;

    iget-object v6, v8, Landroidx/d/c/b/g;->W:Landroidx/d/c/b/d;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/d/c/b/g$a;-><init>(Landroidx/d/c/b/g;ILandroidx/d/c/b/d;Landroidx/d/c/b/d;Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    .line 784
    iget-object v0, v8, Landroidx/d/c/b/g;->bA:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x1

    const/16 v21, 0x0

    if-nez p3, :cond_7

    move-object v2, v11

    move/from16 v0, v21

    move v1, v0

    move v11, v1

    :goto_0
    if-ge v11, v10, :cond_e

    .line 791
    aget-object v12, p1, v11

    .line 792
    invoke-direct {v8, v12, v15}, Landroidx/d/c/b/g;->a(Landroidx/d/c/b/e;I)I

    move-result v13

    .line 793
    invoke-virtual {v12}, Landroidx/d/c/b/e;->aj()Landroidx/d/c/b/e$a;

    move-result-object v3

    sget-object v4, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    move v14, v0

    if-eq v1, v15, :cond_2

    .line 796
    iget v0, v8, Landroidx/d/c/b/g;->bt:I

    add-int/2addr v0, v1

    add-int/2addr v0, v13

    if-le v0, v15, :cond_3

    :cond_2
    invoke-static {v2}, Landroidx/d/c/b/g$a;->a(Landroidx/d/c/b/g$a;)Landroidx/d/c/b/e;

    move-result-object v0

    if-eqz v0, :cond_3

    move/from16 v0, v20

    goto :goto_1

    :cond_3
    move/from16 v0, v21

    :goto_1
    if-nez v0, :cond_4

    if-lez v11, :cond_4

    .line 797
    iget v3, v8, Landroidx/d/c/b/g;->by:I

    if-lez v3, :cond_4

    iget v3, v8, Landroidx/d/c/b/g;->by:I

    rem-int v3, v11, v3

    if-nez v3, :cond_4

    move/from16 v0, v20

    :cond_4
    if-eqz v0, :cond_5

    .line 802
    new-instance v7, Landroidx/d/c/b/g$a;

    iget-object v3, v8, Landroidx/d/c/b/g;->T:Landroidx/d/c/b/d;

    iget-object v4, v8, Landroidx/d/c/b/g;->U:Landroidx/d/c/b/d;

    iget-object v5, v8, Landroidx/d/c/b/g;->V:Landroidx/d/c/b/d;

    iget-object v6, v8, Landroidx/d/c/b/g;->W:Landroidx/d/c/b/d;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v22, v14

    move-object v14, v7

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/d/c/b/g$a;-><init>(Landroidx/d/c/b/g;ILandroidx/d/c/b/d;Landroidx/d/c/b/d;Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    .line 803
    invoke-virtual {v14, v11}, Landroidx/d/c/b/g$a;->a(I)V

    .line 804
    iget-object v0, v8, Landroidx/d/c/b/g;->bA:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v13

    move-object v2, v14

    goto :goto_2

    :cond_5
    move/from16 v22, v14

    if-lez v11, :cond_6

    .line 807
    iget v0, v8, Landroidx/d/c/b/g;->bt:I

    add-int/2addr v0, v13

    add-int/2addr v1, v0

    goto :goto_2

    :cond_6
    move v1, v13

    .line 812
    :goto_2
    invoke-virtual {v2, v12}, Landroidx/d/c/b/g$a;->a(Landroidx/d/c/b/e;)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v22

    goto :goto_0

    :cond_7
    move-object v2, v11

    move/from16 v0, v21

    move v1, v0

    move v11, v1

    :goto_3
    if-ge v11, v10, :cond_e

    .line 817
    aget-object v12, p1, v11

    .line 818
    invoke-direct {v8, v12, v15}, Landroidx/d/c/b/g;->b(Landroidx/d/c/b/e;I)I

    move-result v13

    .line 819
    invoke-virtual {v12}, Landroidx/d/c/b/e;->ak()Landroidx/d/c/b/e$a;

    move-result-object v3

    sget-object v4, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v3, v4, :cond_8

    add-int/lit8 v0, v0, 0x1

    :cond_8
    move v14, v0

    if-eq v1, v15, :cond_9

    .line 822
    iget v0, v8, Landroidx/d/c/b/g;->bu:I

    add-int/2addr v0, v1

    add-int/2addr v0, v13

    if-le v0, v15, :cond_a

    :cond_9
    invoke-static {v2}, Landroidx/d/c/b/g$a;->a(Landroidx/d/c/b/g$a;)Landroidx/d/c/b/e;

    move-result-object v0

    if-eqz v0, :cond_a

    move/from16 v0, v20

    goto :goto_4

    :cond_a
    move/from16 v0, v21

    :goto_4
    if-nez v0, :cond_b

    if-lez v11, :cond_b

    .line 823
    iget v3, v8, Landroidx/d/c/b/g;->by:I

    if-lez v3, :cond_b

    iget v3, v8, Landroidx/d/c/b/g;->by:I

    rem-int v3, v11, v3

    if-nez v3, :cond_b

    move/from16 v0, v20

    :cond_b
    if-eqz v0, :cond_d

    .line 828
    new-instance v7, Landroidx/d/c/b/g$a;

    iget-object v3, v8, Landroidx/d/c/b/g;->T:Landroidx/d/c/b/d;

    iget-object v4, v8, Landroidx/d/c/b/g;->U:Landroidx/d/c/b/d;

    iget-object v5, v8, Landroidx/d/c/b/g;->V:Landroidx/d/c/b/d;

    iget-object v6, v8, Landroidx/d/c/b/g;->W:Landroidx/d/c/b/d;

    move-object v0, v7

    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object v9, v7

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/d/c/b/g$a;-><init>(Landroidx/d/c/b/g;ILandroidx/d/c/b/d;Landroidx/d/c/b/d;Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    .line 829
    invoke-virtual {v9, v11}, Landroidx/d/c/b/g$a;->a(I)V

    .line 830
    iget-object v0, v8, Landroidx/d/c/b/g;->bA:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v9

    :cond_c
    move v1, v13

    goto :goto_5

    :cond_d
    if-lez v11, :cond_c

    .line 833
    iget v0, v8, Landroidx/d/c/b/g;->bu:I

    add-int/2addr v0, v13

    add-int/2addr v1, v0

    .line 838
    :goto_5
    invoke-virtual {v2, v12}, Landroidx/d/c/b/g$a;->a(Landroidx/d/c/b/e;)V

    add-int/lit8 v11, v11, 0x1

    move v0, v14

    goto :goto_3

    .line 841
    :cond_e
    iget-object v1, v8, Landroidx/d/c/b/g;->bA:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 843
    iget-object v2, v8, Landroidx/d/c/b/g;->T:Landroidx/d/c/b/d;

    .line 844
    iget-object v3, v8, Landroidx/d/c/b/g;->U:Landroidx/d/c/b/d;

    .line 845
    iget-object v4, v8, Landroidx/d/c/b/g;->V:Landroidx/d/c/b/d;

    .line 846
    iget-object v5, v8, Landroidx/d/c/b/g;->W:Landroidx/d/c/b/d;

    .line 848
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/g;->f()I

    move-result v6

    .line 849
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/g;->b()I

    move-result v7

    .line 850
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/g;->g()I

    move-result v9

    .line 851
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/g;->c()I

    move-result v10

    .line 857
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/g;->aj()Landroidx/d/c/b/e$a;

    move-result-object v11

    sget-object v12, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-eq v11, v12, :cond_10

    .line 858
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/g;->ak()Landroidx/d/c/b/e$a;

    move-result-object v11

    sget-object v12, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-ne v11, v12, :cond_f

    goto :goto_6

    :cond_f
    move/from16 v11, v21

    goto :goto_7

    :cond_10
    :goto_6
    move/from16 v11, v20

    :goto_7
    if-lez v0, :cond_12

    if-eqz v11, :cond_12

    move/from16 v0, v21

    :goto_8
    if-ge v0, v1, :cond_12

    .line 863
    iget-object v11, v8, Landroidx/d/c/b/g;->bA:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/d/c/b/g$a;

    if-nez p3, :cond_11

    .line 865
    invoke-virtual {v11}, Landroidx/d/c/b/g$a;->b()I

    move-result v12

    sub-int v12, v15, v12

    invoke-virtual {v11, v12}, Landroidx/d/c/b/g$a;->b(I)V

    goto :goto_9

    .line 867
    :cond_11
    invoke-virtual {v11}, Landroidx/d/c/b/g$a;->c()I

    move-result v12

    sub-int v12, v15, v12

    invoke-virtual {v11, v12}, Landroidx/d/c/b/g$a;->b(I)V

    :goto_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    move-object/from16 v24, v5

    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v25, v10

    move/from16 v0, v21

    move-object v5, v3

    move v7, v6

    move v3, v0

    move-object v6, v4

    move-object v4, v2

    move v2, v3

    :goto_a
    if-ge v0, v1, :cond_18

    .line 873
    iget-object v9, v8, Landroidx/d/c/b/g;->bA:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v26, v9

    check-cast v26, Landroidx/d/c/b/g$a;

    if-nez p3, :cond_15

    add-int/lit8 v9, v1, -0x1

    if-ge v0, v9, :cond_13

    .line 876
    iget-object v9, v8, Landroidx/d/c/b/g;->bA:Ljava/util/ArrayList;

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/d/c/b/g$a;

    .line 877
    invoke-static {v9}, Landroidx/d/c/b/g$a;->a(Landroidx/d/c/b/g$a;)Landroidx/d/c/b/e;

    move-result-object v9

    iget-object v9, v9, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    move-object/from16 v24, v9

    move/from16 v25, v21

    goto :goto_b

    .line 880
    :cond_13
    iget-object v9, v8, Landroidx/d/c/b/g;->W:Landroidx/d/c/b/d;

    .line 881
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/g;->c()I

    move-result v10

    move-object/from16 v24, v9

    move/from16 v25, v10

    .line 883
    :goto_b
    invoke-static/range {v26 .. v26}, Landroidx/d/c/b/g$a;->a(Landroidx/d/c/b/g$a;)Landroidx/d/c/b/e;

    move-result-object v9

    iget-object v14, v9, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    move-object/from16 v9, v26

    move/from16 v10, p3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move-object v5, v14

    move-object/from16 v14, v24

    move v15, v7

    move/from16 v16, v22

    move/from16 v17, v23

    move/from16 v18, v25

    move/from16 v19, p4

    .line 884
    invoke-virtual/range {v9 .. v19}, Landroidx/d/c/b/g$a;->a(ILandroidx/d/c/b/d;Landroidx/d/c/b/d;Landroidx/d/c/b/d;Landroidx/d/c/b/d;IIIII)V

    .line 888
    invoke-virtual/range {v26 .. v26}, Landroidx/d/c/b/g$a;->b()I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 889
    invoke-virtual/range {v26 .. v26}, Landroidx/d/c/b/g$a;->c()I

    move-result v9

    add-int/2addr v3, v9

    if-lez v0, :cond_14

    .line 891
    iget v9, v8, Landroidx/d/c/b/g;->bu:I

    add-int/2addr v3, v9

    :cond_14
    move/from16 v22, v21

    goto :goto_d

    :cond_15
    add-int/lit8 v6, v1, -0x1

    if-ge v0, v6, :cond_16

    .line 895
    iget-object v6, v8, Landroidx/d/c/b/g;->bA:Ljava/util/ArrayList;

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/d/c/b/g$a;

    .line 896
    invoke-static {v6}, Landroidx/d/c/b/g$a;->a(Landroidx/d/c/b/g$a;)Landroidx/d/c/b/e;

    move-result-object v6

    iget-object v6, v6, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    move/from16 v23, v21

    goto :goto_c

    .line 899
    :cond_16
    iget-object v6, v8, Landroidx/d/c/b/g;->V:Landroidx/d/c/b/d;

    .line 900
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/g;->g()I

    move-result v9

    move/from16 v23, v9

    .line 902
    :goto_c
    invoke-static/range {v26 .. v26}, Landroidx/d/c/b/g$a;->a(Landroidx/d/c/b/g$a;)Landroidx/d/c/b/e;

    move-result-object v9

    iget-object v15, v9, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    move-object/from16 v9, v26

    move/from16 v10, p3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v6

    move-object/from16 v14, v24

    move-object v4, v15

    move v15, v7

    move/from16 v16, v22

    move/from16 v17, v23

    move/from16 v18, v25

    move/from16 v19, p4

    .line 903
    invoke-virtual/range {v9 .. v19}, Landroidx/d/c/b/g$a;->a(ILandroidx/d/c/b/d;Landroidx/d/c/b/d;Landroidx/d/c/b/d;Landroidx/d/c/b/d;IIIII)V

    .line 907
    invoke-virtual/range {v26 .. v26}, Landroidx/d/c/b/g$a;->b()I

    move-result v7

    add-int/2addr v2, v7

    .line 908
    invoke-virtual/range {v26 .. v26}, Landroidx/d/c/b/g$a;->c()I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lez v0, :cond_17

    .line 910
    iget v7, v8, Landroidx/d/c/b/g;->bt:I

    add-int/2addr v2, v7

    :cond_17
    move/from16 v7, v21

    :goto_d
    add-int/lit8 v0, v0, 0x1

    move/from16 v15, p4

    goto/16 :goto_a

    .line 914
    :cond_18
    aput v2, p5, v21

    .line 915
    aput v3, p5, v20

    return-void
.end method

.method private final b(Landroidx/d/c/b/e;I)I
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroidx/d/c/b/e;->ak()Landroidx/d/c/b/e$a;

    move-result-object v1

    sget-object v2, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v1, v2, :cond_5

    .line 204
    iget v1, p1, Landroidx/d/c/b/e;->H:I

    if-nez v1, :cond_1

    return v0

    .line 206
    :cond_1
    iget v0, p1, Landroidx/d/c/b/e;->H:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_3

    .line 207
    iget v0, p1, Landroidx/d/c/b/e;->O:F

    int-to-float p2, p2

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 208
    invoke-virtual {p1}, Landroidx/d/c/b/e;->L()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 209
    invoke-virtual {p1, v2}, Landroidx/d/c/b/e;->e(Z)V

    .line 210
    invoke-virtual {p1}, Landroidx/d/c/b/e;->aj()Landroidx/d/c/b/e$a;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/d/c/b/e;->I()I

    move-result v6

    sget-object v7, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    move-object v3, p0

    move-object v4, p1

    move v8, p2

    invoke-virtual/range {v3 .. v8}, Landroidx/d/c/b/g;->a(Landroidx/d/c/b/e;Landroidx/d/c/b/e$a;ILandroidx/d/c/b/e$a;I)V

    :cond_2
    return p2

    .line 213
    :cond_3
    iget p0, p1, Landroidx/d/c/b/e;->H:I

    if-ne p0, v2, :cond_4

    .line 214
    invoke-virtual {p1}, Landroidx/d/c/b/e;->L()I

    move-result p0

    return p0

    .line 215
    :cond_4
    iget p0, p1, Landroidx/d/c/b/e;->H:I

    const/4 p2, 0x3

    if-ne p0, p2, :cond_5

    .line 216
    invoke-virtual {p1}, Landroidx/d/c/b/e;->I()I

    move-result p0

    int-to-float p0, p0

    iget p1, p1, Landroidx/d/c/b/e;->ao:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    .line 219
    :cond_5
    invoke-virtual {p1}, Landroidx/d/c/b/e;->L()I

    move-result p0

    return p0
.end method

.method static synthetic b(Landroidx/d/c/b/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/d/c/b/g;->bu:I

    return p0
.end method

.method static synthetic b(Landroidx/d/c/b/g;Landroidx/d/c/b/e;I)I
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/d/c/b/g;->b(Landroidx/d/c/b/e;I)I

    move-result p0

    return p0
.end method

.method private b([Landroidx/d/c/b/e;III[I)V
    .locals 22

    move-object/from16 v8, p0

    move/from16 v9, p2

    if-nez v9, :cond_0

    return-void

    .line 935
    :cond_0
    iget-object v0, v8, Landroidx/d/c/b/g;->bA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_1

    .line 936
    new-instance v11, Landroidx/d/c/b/g$a;

    iget-object v3, v8, Landroidx/d/c/b/g;->T:Landroidx/d/c/b/d;

    iget-object v4, v8, Landroidx/d/c/b/g;->U:Landroidx/d/c/b/d;

    iget-object v5, v8, Landroidx/d/c/b/g;->V:Landroidx/d/c/b/d;

    iget-object v6, v8, Landroidx/d/c/b/g;->W:Landroidx/d/c/b/d;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/d/c/b/g$a;-><init>(Landroidx/d/c/b/g;ILandroidx/d/c/b/d;Landroidx/d/c/b/d;Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    .line 937
    iget-object v0, v8, Landroidx/d/c/b/g;->bA:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 939
    :cond_1
    iget-object v0, v8, Landroidx/d/c/b/g;->bA:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/c/b/g$a;

    .line 940
    invoke-virtual {v0}, Landroidx/d/c/b/g$a;->a()V

    .line 941
    iget-object v13, v8, Landroidx/d/c/b/g;->T:Landroidx/d/c/b/d;

    iget-object v14, v8, Landroidx/d/c/b/g;->U:Landroidx/d/c/b/d;

    iget-object v1, v8, Landroidx/d/c/b/g;->V:Landroidx/d/c/b/d;

    iget-object v2, v8, Landroidx/d/c/b/g;->W:Landroidx/d/c/b/d;

    .line 942
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/g;->f()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/g;->b()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/g;->g()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/g;->c()I

    move-result v20

    move-object v11, v0

    move/from16 v12, p3

    move-object v15, v1

    move-object/from16 v16, v2

    move/from16 v21, p4

    .line 941
    invoke-virtual/range {v11 .. v21}, Landroidx/d/c/b/g$a;->a(ILandroidx/d/c/b/d;Landroidx/d/c/b/d;Landroidx/d/c/b/d;Landroidx/d/c/b/d;IIIII)V

    :goto_0
    move v0, v10

    :goto_1
    if-ge v0, v9, :cond_2

    .line 946
    aget-object v2, p1, v0

    .line 947
    invoke-virtual {v11, v2}, Landroidx/d/c/b/g$a;->a(Landroidx/d/c/b/e;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 950
    :cond_2
    invoke-virtual {v11}, Landroidx/d/c/b/g$a;->b()I

    move-result v0

    aput v0, p5, v10

    .line 951
    invoke-virtual {v11}, Landroidx/d/c/b/g$a;->c()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p5, v1

    return-void
.end method

.method static synthetic c(Landroidx/d/c/b/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/d/c/b/g;->bF:I

    return p0
.end method

.method private c([Landroidx/d/c/b/e;III[I)V
    .locals 10

    const/4 v0, 0x0

    if-nez p3, :cond_5

    .line 972
    iget v1, p0, Landroidx/d/c/b/g;->by:I

    if-gtz v1, :cond_3

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, p2, :cond_4

    if-lez v1, :cond_0

    .line 979
    iget v4, p0, Landroidx/d/c/b/g;->bt:I

    add-int/2addr v2, v4

    .line 981
    :cond_0
    aget-object v4, p1, v1

    if-nez v4, :cond_1

    goto :goto_1

    .line 985
    :cond_1
    invoke-direct {p0, v4, p4}, Landroidx/d/c/b/g;->a(Landroidx/d/c/b/e;I)I

    move-result v4

    add-int/2addr v2, v4

    if-le v2, p4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v3, v1

    :cond_4
    :goto_2
    move v1, v0

    goto :goto_6

    .line 993
    :cond_5
    iget v1, p0, Landroidx/d/c/b/g;->by:I

    if-gtz v1, :cond_a

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_3
    if-ge v1, p2, :cond_9

    if-lez v1, :cond_6

    .line 1000
    iget v4, p0, Landroidx/d/c/b/g;->bu:I

    add-int/2addr v2, v4

    .line 1002
    :cond_6
    aget-object v4, p1, v1

    if-nez v4, :cond_7

    goto :goto_4

    .line 1006
    :cond_7
    invoke-direct {p0, v4, p4}, Landroidx/d/c/b/g;->b(Landroidx/d/c/b/e;I)I

    move-result v4

    add-int/2addr v2, v4

    if-le v2, p4, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    move v1, v3

    :cond_a
    move v3, v0

    .line 1015
    :goto_6
    iget-object v2, p0, Landroidx/d/c/b/g;->bD:[I

    if-nez v2, :cond_b

    const/4 v2, 0x2

    .line 1016
    new-array v2, v2, [I

    iput-object v2, p0, Landroidx/d/c/b/g;->bD:[I

    :cond_b
    const/4 v2, 0x1

    if-nez v1, :cond_c

    if-eq p3, v2, :cond_d

    :cond_c
    if-nez v3, :cond_f

    if-nez p3, :cond_f

    :cond_d
    move v4, v1

    :cond_e
    move v1, v2

    goto :goto_7

    :cond_f
    move v4, v1

    move v1, v0

    :goto_7
    if-nez v1, :cond_25

    if-nez p3, :cond_10

    int-to-float v4, p2

    int-to-float v5, v3

    div-float/2addr v4, v5

    float-to-double v4, v4

    .line 1029
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    goto :goto_8

    :cond_10
    int-to-float v3, p2

    int-to-float v5, v4

    div-float/2addr v3, v5

    float-to-double v5, v3

    .line 1031
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v3, v5

    .line 1034
    :goto_8
    iget-object v5, p0, Landroidx/d/c/b/g;->bC:[Landroidx/d/c/b/e;

    const/4 v6, 0x0

    if-eqz v5, :cond_12

    iget-object v5, p0, Landroidx/d/c/b/g;->bC:[Landroidx/d/c/b/e;

    array-length v5, v5

    if-ge v5, v3, :cond_11

    goto :goto_9

    .line 1037
    :cond_11
    iget-object v5, p0, Landroidx/d/c/b/g;->bC:[Landroidx/d/c/b/e;

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    .line 1035
    :cond_12
    :goto_9
    new-array v5, v3, [Landroidx/d/c/b/e;

    iput-object v5, p0, Landroidx/d/c/b/g;->bC:[Landroidx/d/c/b/e;

    .line 1039
    :goto_a
    iget-object v5, p0, Landroidx/d/c/b/g;->bB:[Landroidx/d/c/b/e;

    if-eqz v5, :cond_14

    iget-object v5, p0, Landroidx/d/c/b/g;->bB:[Landroidx/d/c/b/e;

    array-length v5, v5

    if-ge v5, v4, :cond_13

    goto :goto_b

    .line 1042
    :cond_13
    iget-object v5, p0, Landroidx/d/c/b/g;->bB:[Landroidx/d/c/b/e;

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_c

    .line 1040
    :cond_14
    :goto_b
    new-array v5, v4, [Landroidx/d/c/b/e;

    iput-object v5, p0, Landroidx/d/c/b/g;->bB:[Landroidx/d/c/b/e;

    :goto_c
    move v5, v0

    :goto_d
    if-ge v5, v3, :cond_1d

    move v6, v0

    :goto_e
    if-ge v6, v4, :cond_1c

    mul-int v7, v6, v3

    add-int/2addr v7, v5

    if-ne p3, v2, :cond_15

    mul-int v7, v5, v4

    add-int/2addr v7, v6

    .line 1051
    :cond_15
    array-length v8, p1

    if-lt v7, v8, :cond_16

    goto :goto_f

    .line 1054
    :cond_16
    aget-object v7, p1, v7

    if-nez v7, :cond_17

    goto :goto_f

    .line 1058
    :cond_17
    invoke-direct {p0, v7, p4}, Landroidx/d/c/b/g;->a(Landroidx/d/c/b/e;I)I

    move-result v8

    .line 1059
    iget-object v9, p0, Landroidx/d/c/b/g;->bC:[Landroidx/d/c/b/e;

    aget-object v9, v9, v5

    if-eqz v9, :cond_18

    iget-object v9, p0, Landroidx/d/c/b/g;->bC:[Landroidx/d/c/b/e;

    aget-object v9, v9, v5

    .line 1060
    invoke-virtual {v9}, Landroidx/d/c/b/e;->I()I

    move-result v9

    if-ge v9, v8, :cond_19

    .line 1061
    :cond_18
    iget-object v8, p0, Landroidx/d/c/b/g;->bC:[Landroidx/d/c/b/e;

    aput-object v7, v8, v5

    .line 1063
    :cond_19
    invoke-direct {p0, v7, p4}, Landroidx/d/c/b/g;->b(Landroidx/d/c/b/e;I)I

    move-result v8

    .line 1064
    iget-object v9, p0, Landroidx/d/c/b/g;->bB:[Landroidx/d/c/b/e;

    aget-object v9, v9, v6

    if-eqz v9, :cond_1a

    iget-object v9, p0, Landroidx/d/c/b/g;->bB:[Landroidx/d/c/b/e;

    aget-object v9, v9, v6

    .line 1065
    invoke-virtual {v9}, Landroidx/d/c/b/e;->L()I

    move-result v9

    if-ge v9, v8, :cond_1b

    .line 1066
    :cond_1a
    iget-object v8, p0, Landroidx/d/c/b/g;->bB:[Landroidx/d/c/b/e;

    aput-object v7, v8, v6

    :cond_1b
    :goto_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_1d
    move v5, v0

    move v6, v5

    :goto_10
    if-ge v5, v3, :cond_20

    .line 1073
    iget-object v7, p0, Landroidx/d/c/b/g;->bC:[Landroidx/d/c/b/e;

    aget-object v7, v7, v5

    if-eqz v7, :cond_1f

    if-lez v5, :cond_1e

    .line 1076
    iget v8, p0, Landroidx/d/c/b/g;->bt:I

    add-int/2addr v6, v8

    .line 1078
    :cond_1e
    invoke-direct {p0, v7, p4}, Landroidx/d/c/b/g;->a(Landroidx/d/c/b/e;I)I

    move-result v7

    add-int/2addr v6, v7

    :cond_1f
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_20
    move v5, v0

    move v7, v5

    :goto_11
    if-ge v5, v4, :cond_23

    .line 1083
    iget-object v8, p0, Landroidx/d/c/b/g;->bB:[Landroidx/d/c/b/e;

    aget-object v8, v8, v5

    if-eqz v8, :cond_22

    if-lez v5, :cond_21

    .line 1086
    iget v9, p0, Landroidx/d/c/b/g;->bu:I

    add-int/2addr v7, v9

    .line 1088
    :cond_21
    invoke-direct {p0, v8, p4}, Landroidx/d/c/b/g;->b(Landroidx/d/c/b/e;I)I

    move-result v8

    add-int/2addr v7, v8

    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 1091
    :cond_23
    aput v6, p5, v0

    .line 1092
    aput v7, p5, v2

    if-nez p3, :cond_24

    if-le v6, p4, :cond_e

    if-le v3, v2, :cond_e

    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_7

    :cond_24
    if-le v7, p4, :cond_e

    if-le v4, v2, :cond_e

    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_7

    .line 1116
    :cond_25
    iget-object p1, p0, Landroidx/d/c/b/g;->bD:[I

    aput v3, p1, v0

    .line 1117
    iget-object p0, p0, Landroidx/d/c/b/g;->bD:[I

    aput v4, p0, v2

    return-void
.end method

.method static synthetic d(Landroidx/d/c/b/g;)[Landroidx/d/c/b/e;
    .locals 0

    .line 32
    iget-object p0, p0, Landroidx/d/c/b/g;->bE:[Landroidx/d/c/b/e;

    return-object p0
.end method

.method static synthetic e(Landroidx/d/c/b/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/d/c/b/g;->bi:I

    return p0
.end method

.method static synthetic f(Landroidx/d/c/b/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/d/c/b/g;->bw:I

    return p0
.end method

.method static synthetic g(Landroidx/d/c/b/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/d/c/b/g;->bh:I

    return p0
.end method

.method static synthetic h(Landroidx/d/c/b/g;)F
    .locals 0

    .line 32
    iget p0, p0, Landroidx/d/c/b/g;->bn:F

    return p0
.end method

.method static synthetic i(Landroidx/d/c/b/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/d/c/b/g;->bj:I

    return p0
.end method

.method private i(Z)V
    .locals 11

    .line 1121
    iget-object v0, p0, Landroidx/d/c/b/g;->bD:[I

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroidx/d/c/b/g;->bC:[Landroidx/d/c/b/e;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroidx/d/c/b/g;->bB:[Landroidx/d/c/b/e;

    if-nez v0, :cond_0

    goto/16 :goto_9

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1127
    :goto_0
    iget v2, p0, Landroidx/d/c/b/g;->bF:I

    if-ge v1, v2, :cond_1

    .line 1128
    iget-object v2, p0, Landroidx/d/c/b/g;->bE:[Landroidx/d/c/b/e;

    aget-object v2, v2, v1

    .line 1129
    invoke-virtual {v2}, Landroidx/d/c/b/e;->ai()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1132
    :cond_1
    iget-object v1, p0, Landroidx/d/c/b/g;->bD:[I

    aget v1, v1, v0

    .line 1133
    iget-object v2, p0, Landroidx/d/c/b/g;->bD:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    const/4 v4, 0x0

    move-object v5, v4

    move v4, v0

    :goto_1
    const/16 v6, 0x8

    if-ge v4, v1, :cond_8

    if-eqz p1, :cond_2

    sub-int v7, v1, v4

    sub-int/2addr v7, v3

    goto :goto_2

    :cond_2
    move v7, v4

    .line 1141
    :goto_2
    iget-object v8, p0, Landroidx/d/c/b/g;->bC:[Landroidx/d/c/b/e;

    aget-object v7, v8, v7

    if-eqz v7, :cond_7

    .line 1142
    invoke-virtual {v7}, Landroidx/d/c/b/e;->E()I

    move-result v8

    if-ne v8, v6, :cond_3

    goto :goto_3

    :cond_3
    if-nez v4, :cond_4

    .line 1146
    iget-object v6, v7, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    iget-object v8, p0, Landroidx/d/c/b/g;->T:Landroidx/d/c/b/d;

    invoke-virtual {p0}, Landroidx/d/c/b/g;->f()I

    move-result v9

    invoke-virtual {v7, v6, v8, v9}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    .line 1147
    iget v6, p0, Landroidx/d/c/b/g;->bh:I

    invoke-virtual {v7, v6}, Landroidx/d/c/b/e;->w(I)V

    .line 1148
    iget v6, p0, Landroidx/d/c/b/g;->bn:F

    invoke-virtual {v7, v6}, Landroidx/d/c/b/e;->a(F)V

    :cond_4
    add-int/lit8 v6, v1, -0x1

    if-ne v4, v6, :cond_5

    .line 1151
    iget-object v6, v7, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget-object v8, p0, Landroidx/d/c/b/g;->V:Landroidx/d/c/b/d;

    invoke-virtual {p0}, Landroidx/d/c/b/g;->g()I

    move-result v9

    invoke-virtual {v7, v6, v8, v9}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    :cond_5
    if-lez v4, :cond_6

    .line 1154
    iget-object v6, v7, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    iget-object v8, v5, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget v9, p0, Landroidx/d/c/b/g;->bt:I

    invoke-virtual {v7, v6, v8, v9}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    .line 1155
    iget-object v6, v5, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget-object v8, v7, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    invoke-virtual {v5, v6, v8, v0}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    :cond_6
    move-object v5, v7

    :cond_7
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    move p1, v0

    :goto_4
    if-ge p1, v2, :cond_e

    .line 1160
    iget-object v4, p0, Landroidx/d/c/b/g;->bB:[Landroidx/d/c/b/e;

    aget-object v4, v4, p1

    if-eqz v4, :cond_d

    .line 1161
    invoke-virtual {v4}, Landroidx/d/c/b/e;->E()I

    move-result v7

    if-ne v7, v6, :cond_9

    goto :goto_5

    :cond_9
    if-nez p1, :cond_a

    .line 1165
    iget-object v7, v4, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    iget-object v8, p0, Landroidx/d/c/b/g;->U:Landroidx/d/c/b/d;

    invoke-virtual {p0}, Landroidx/d/c/b/g;->b()I

    move-result v9

    invoke-virtual {v4, v7, v8, v9}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    .line 1166
    iget v7, p0, Landroidx/d/c/b/g;->bi:I

    invoke-virtual {v4, v7}, Landroidx/d/c/b/e;->x(I)V

    .line 1167
    iget v7, p0, Landroidx/d/c/b/g;->bo:F

    invoke-virtual {v4, v7}, Landroidx/d/c/b/e;->b(F)V

    :cond_a
    add-int/lit8 v7, v2, -0x1

    if-ne p1, v7, :cond_b

    .line 1170
    iget-object v7, v4, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    iget-object v8, p0, Landroidx/d/c/b/g;->W:Landroidx/d/c/b/d;

    invoke-virtual {p0}, Landroidx/d/c/b/g;->c()I

    move-result v9

    invoke-virtual {v4, v7, v8, v9}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    :cond_b
    if-lez p1, :cond_c

    .line 1173
    iget-object v7, v4, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    iget-object v8, v5, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    iget v9, p0, Landroidx/d/c/b/g;->bu:I

    invoke-virtual {v4, v7, v8, v9}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    .line 1174
    iget-object v7, v5, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    iget-object v8, v4, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    invoke-virtual {v5, v7, v8, v0}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    :cond_c
    move-object v5, v4

    :cond_d
    :goto_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_e
    move p1, v0

    :goto_6
    if-ge p1, v1, :cond_15

    move v4, v0

    :goto_7
    if-ge v4, v2, :cond_14

    mul-int v5, v4, v1

    add-int/2addr v5, p1

    .line 1182
    iget v7, p0, Landroidx/d/c/b/g;->bz:I

    if-ne v7, v3, :cond_f

    mul-int v5, p1, v2

    add-int/2addr v5, v4

    .line 1185
    :cond_f
    iget-object v7, p0, Landroidx/d/c/b/g;->bE:[Landroidx/d/c/b/e;

    array-length v7, v7

    if-lt v5, v7, :cond_10

    goto :goto_8

    .line 1188
    :cond_10
    iget-object v7, p0, Landroidx/d/c/b/g;->bE:[Landroidx/d/c/b/e;

    aget-object v5, v7, v5

    if-eqz v5, :cond_13

    .line 1189
    invoke-virtual {v5}, Landroidx/d/c/b/e;->E()I

    move-result v7

    if-ne v7, v6, :cond_11

    goto :goto_8

    .line 1192
    :cond_11
    iget-object v7, p0, Landroidx/d/c/b/g;->bC:[Landroidx/d/c/b/e;

    aget-object v7, v7, p1

    .line 1193
    iget-object v8, p0, Landroidx/d/c/b/g;->bB:[Landroidx/d/c/b/e;

    aget-object v8, v8, v4

    if-eq v5, v7, :cond_12

    .line 1195
    iget-object v9, v5, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    iget-object v10, v7, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    invoke-virtual {v5, v9, v10, v0}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    .line 1196
    iget-object v9, v5, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget-object v7, v7, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    invoke-virtual {v5, v9, v7, v0}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    :cond_12
    if-eq v5, v8, :cond_13

    .line 1199
    iget-object v7, v5, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    iget-object v9, v8, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    invoke-virtual {v5, v7, v9, v0}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    .line 1200
    iget-object v7, v5, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    iget-object v8, v8, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    invoke-virtual {v5, v7, v8, v0}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d;Landroidx/d/c/b/d;I)V

    :cond_13
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_14
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_15
    return-void

    :cond_16
    :goto_9
    return-void
.end method

.method static synthetic j(Landroidx/d/c/b/g;)F
    .locals 0

    .line 32
    iget p0, p0, Landroidx/d/c/b/g;->bp:F

    return p0
.end method

.method static synthetic k(Landroidx/d/c/b/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/d/c/b/g;->bl:I

    return p0
.end method

.method static synthetic l(Landroidx/d/c/b/g;)F
    .locals 0

    .line 32
    iget p0, p0, Landroidx/d/c/b/g;->br:F

    return p0
.end method

.method static synthetic m(Landroidx/d/c/b/g;)F
    .locals 0

    .line 32
    iget p0, p0, Landroidx/d/c/b/g;->bo:F

    return p0
.end method

.method static synthetic n(Landroidx/d/c/b/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/d/c/b/g;->bk:I

    return p0
.end method

.method static synthetic o(Landroidx/d/c/b/g;)F
    .locals 0

    .line 32
    iget p0, p0, Landroidx/d/c/b/g;->bq:F

    return p0
.end method

.method static synthetic p(Landroidx/d/c/b/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/d/c/b/g;->bm:I

    return p0
.end method

.method static synthetic q(Landroidx/d/c/b/g;)F
    .locals 0

    .line 32
    iget p0, p0, Landroidx/d/c/b/g;->bs:F

    return p0
.end method

.method static synthetic r(Landroidx/d/c/b/g;)I
    .locals 0

    .line 32
    iget p0, p0, Landroidx/d/c/b/g;->bv:I

    return p0
.end method


# virtual methods
.method public B(I)V
    .locals 0

    .line 124
    iput p1, p0, Landroidx/d/c/b/g;->bk:I

    return-void
.end method

.method public C(I)V
    .locals 0

    .line 126
    iput p1, p0, Landroidx/d/c/b/g;->bl:I

    return-void
.end method

.method public D(I)V
    .locals 0

    .line 128
    iput p1, p0, Landroidx/d/c/b/g;->bm:I

    return-void
.end method

.method public E(I)V
    .locals 0

    .line 131
    iput p1, p0, Landroidx/d/c/b/g;->bh:I

    return-void
.end method

.method public F(I)V
    .locals 0

    .line 135
    iput p1, p0, Landroidx/d/c/b/g;->bi:I

    return-void
.end method

.method public G(I)V
    .locals 0

    .line 155
    iput p1, p0, Landroidx/d/c/b/g;->bv:I

    return-void
.end method

.method public H(I)V
    .locals 0

    .line 159
    iput p1, p0, Landroidx/d/c/b/g;->bw:I

    return-void
.end method

.method public I(I)V
    .locals 0

    .line 163
    iput p1, p0, Landroidx/d/c/b/g;->bx:I

    return-void
.end method

.method public J(I)V
    .locals 0

    .line 166
    iput p1, p0, Landroidx/d/c/b/g;->bt:I

    return-void
.end method

.method public K(I)V
    .locals 0

    .line 168
    iput p1, p0, Landroidx/d/c/b/g;->bu:I

    return-void
.end method

.method public L(I)V
    .locals 0

    .line 170
    iput p1, p0, Landroidx/d/c/b/g;->by:I

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 119
    iput p1, p0, Landroidx/d/c/b/g;->bz:I

    return-void
.end method

.method public a(Landroidx/d/c/b/e;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/d/c/b/e;",
            "Ljava/util/HashMap<",
            "Landroidx/d/c/b/e;",
            "Landroidx/d/c/b/e;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-super {p0, p1, p2}, Landroidx/d/c/b/m;->a(Landroidx/d/c/b/e;Ljava/util/HashMap;)V

    .line 86
    check-cast p1, Landroidx/d/c/b/g;

    .line 88
    iget p2, p1, Landroidx/d/c/b/g;->bh:I

    iput p2, p0, Landroidx/d/c/b/g;->bh:I

    .line 89
    iget p2, p1, Landroidx/d/c/b/g;->bi:I

    iput p2, p0, Landroidx/d/c/b/g;->bi:I

    .line 90
    iget p2, p1, Landroidx/d/c/b/g;->bj:I

    iput p2, p0, Landroidx/d/c/b/g;->bj:I

    .line 91
    iget p2, p1, Landroidx/d/c/b/g;->bk:I

    iput p2, p0, Landroidx/d/c/b/g;->bk:I

    .line 92
    iget p2, p1, Landroidx/d/c/b/g;->bl:I

    iput p2, p0, Landroidx/d/c/b/g;->bl:I

    .line 93
    iget p2, p1, Landroidx/d/c/b/g;->bm:I

    iput p2, p0, Landroidx/d/c/b/g;->bm:I

    .line 95
    iget p2, p1, Landroidx/d/c/b/g;->bn:F

    iput p2, p0, Landroidx/d/c/b/g;->bn:F

    .line 96
    iget p2, p1, Landroidx/d/c/b/g;->bo:F

    iput p2, p0, Landroidx/d/c/b/g;->bo:F

    .line 97
    iget p2, p1, Landroidx/d/c/b/g;->bp:F

    iput p2, p0, Landroidx/d/c/b/g;->bp:F

    .line 98
    iget p2, p1, Landroidx/d/c/b/g;->bq:F

    iput p2, p0, Landroidx/d/c/b/g;->bq:F

    .line 99
    iget p2, p1, Landroidx/d/c/b/g;->br:F

    iput p2, p0, Landroidx/d/c/b/g;->br:F

    .line 100
    iget p2, p1, Landroidx/d/c/b/g;->bs:F

    iput p2, p0, Landroidx/d/c/b/g;->bs:F

    .line 102
    iget p2, p1, Landroidx/d/c/b/g;->bt:I

    iput p2, p0, Landroidx/d/c/b/g;->bt:I

    .line 103
    iget p2, p1, Landroidx/d/c/b/g;->bu:I

    iput p2, p0, Landroidx/d/c/b/g;->bu:I

    .line 105
    iget p2, p1, Landroidx/d/c/b/g;->bv:I

    iput p2, p0, Landroidx/d/c/b/g;->bv:I

    .line 106
    iget p2, p1, Landroidx/d/c/b/g;->bw:I

    iput p2, p0, Landroidx/d/c/b/g;->bw:I

    .line 107
    iget p2, p1, Landroidx/d/c/b/g;->bx:I

    iput p2, p0, Landroidx/d/c/b/g;->bx:I

    .line 109
    iget p2, p1, Landroidx/d/c/b/g;->by:I

    iput p2, p0, Landroidx/d/c/b/g;->by:I

    .line 111
    iget p1, p1, Landroidx/d/c/b/g;->bz:I

    iput p1, p0, Landroidx/d/c/b/g;->bz:I

    return-void
.end method

.method public a(Landroidx/d/c/e;Z)V
    .locals 5

    .line 1218
    invoke-super {p0, p1, p2}, Landroidx/d/c/b/m;->a(Landroidx/d/c/e;Z)V

    .line 1220
    invoke-virtual {p0}, Landroidx/d/c/b/g;->A()Landroidx/d/c/b/e;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/d/c/b/g;->A()Landroidx/d/c/b/e;

    move-result-object p1

    check-cast p1, Landroidx/d/c/b/f;

    invoke-virtual {p1}, Landroidx/d/c/b/f;->as()Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p2

    .line 1221
    :goto_0
    iget v0, p0, Landroidx/d/c/b/g;->bx:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 1237
    :pswitch_0
    invoke-direct {p0, p1}, Landroidx/d/c/b/g;->i(Z)V

    goto :goto_3

    .line 1223
    :pswitch_1
    iget-object v0, p0, Landroidx/d/c/b/g;->bA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, p2

    :goto_1
    if-ge v2, v0, :cond_2

    .line 1225
    iget-object v3, p0, Landroidx/d/c/b/g;->bA:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/d/c/b/g$a;

    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_1

    move v4, v1

    goto :goto_2

    :cond_1
    move v4, p2

    .line 1226
    :goto_2
    invoke-virtual {v3, p1, v2, v4}, Landroidx/d/c/b/g$a;->a(ZIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1230
    :pswitch_2
    iget-object v0, p0, Landroidx/d/c/b/g;->bA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1231
    iget-object v0, p0, Landroidx/d/c/b/g;->bA:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/c/b/g$a;

    .line 1232
    invoke-virtual {v0, p1, p2, v1}, Landroidx/d/c/b/g$a;->a(ZIZ)V

    .line 1240
    :cond_2
    :goto_3
    invoke-virtual {p0, p2}, Landroidx/d/c/b/g;->h(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(I)V
    .locals 0

    .line 122
    iput p1, p0, Landroidx/d/c/b/g;->bj:I

    return-void
.end method

.method public b(IIII)V
    .locals 18

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 227
    iget v0, v6, Landroidx/d/c/b/g;->be:I

    const/4 v11, 0x0

    if-lez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/g;->as()Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {v6, v11, v11}, Landroidx/d/c/b/g;->k(II)V

    .line 229
    invoke-virtual {v6, v11}, Landroidx/d/c/b/g;->h(Z)V

    return-void

    .line 235
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/g;->f()I

    move-result v12

    .line 236
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/g;->g()I

    move-result v13

    .line 237
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/g;->b()I

    move-result v14

    .line 238
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/g;->c()I

    move-result v15

    const/4 v0, 0x2

    .line 240
    new-array v5, v0, [I

    sub-int v0, v8, v12

    sub-int/2addr v0, v13

    .line 242
    iget v1, v6, Landroidx/d/c/b/g;->bz:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    sub-int v0, v10, v14

    sub-int/2addr v0, v15

    :cond_1
    move/from16 v16, v0

    .line 246
    iget v0, v6, Landroidx/d/c/b/g;->bz:I

    const/4 v1, -0x1

    if-nez v0, :cond_3

    .line 247
    iget v0, v6, Landroidx/d/c/b/g;->bh:I

    if-ne v0, v1, :cond_2

    .line 248
    iput v11, v6, Landroidx/d/c/b/g;->bh:I

    .line 250
    :cond_2
    iget v0, v6, Landroidx/d/c/b/g;->bi:I

    if-ne v0, v1, :cond_5

    .line 251
    iput v11, v6, Landroidx/d/c/b/g;->bi:I

    goto :goto_0

    .line 254
    :cond_3
    iget v0, v6, Landroidx/d/c/b/g;->bh:I

    if-ne v0, v1, :cond_4

    .line 255
    iput v11, v6, Landroidx/d/c/b/g;->bh:I

    .line 257
    :cond_4
    iget v0, v6, Landroidx/d/c/b/g;->bi:I

    if-ne v0, v1, :cond_5

    .line 258
    iput v11, v6, Landroidx/d/c/b/g;->bi:I

    .line 262
    :cond_5
    :goto_0
    iget-object v0, v6, Landroidx/d/c/b/g;->bd:[Landroidx/d/c/b/e;

    move v1, v11

    move v2, v1

    .line 265
    :goto_1
    iget v3, v6, Landroidx/d/c/b/g;->be:I

    const/16 v4, 0x8

    if-ge v1, v3, :cond_7

    .line 266
    iget-object v3, v6, Landroidx/d/c/b/g;->bd:[Landroidx/d/c/b/e;

    aget-object v3, v3, v1

    .line 267
    invoke-virtual {v3}, Landroidx/d/c/b/e;->E()I

    move-result v3

    if-ne v3, v4, :cond_6

    add-int/lit8 v2, v2, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    const/4 v4, 0x1

    goto :goto_1

    .line 271
    :cond_7
    iget v1, v6, Landroidx/d/c/b/g;->be:I

    if-lez v2, :cond_9

    .line 273
    iget v0, v6, Landroidx/d/c/b/g;->be:I

    sub-int/2addr v0, v2

    new-array v0, v0, [Landroidx/d/c/b/e;

    move v1, v11

    move v2, v1

    .line 275
    :goto_2
    iget v3, v6, Landroidx/d/c/b/g;->be:I

    if-ge v1, v3, :cond_a

    .line 276
    iget-object v3, v6, Landroidx/d/c/b/g;->bd:[Landroidx/d/c/b/e;

    aget-object v3, v3, v1

    .line 277
    invoke-virtual {v3}, Landroidx/d/c/b/e;->E()I

    move-result v11

    if-eq v11, v4, :cond_8

    .line 278
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    const/4 v11, 0x0

    goto :goto_2

    :cond_9
    move v2, v1

    :cond_a
    move-object v1, v0

    .line 284
    iput-object v1, v6, Landroidx/d/c/b/g;->bE:[Landroidx/d/c/b/e;

    .line 285
    iput v2, v6, Landroidx/d/c/b/g;->bF:I

    .line 286
    iget v0, v6, Landroidx/d/c/b/g;->bx:I

    packed-switch v0, :pswitch_data_0

    move-object/from16 v17, v5

    const/4 v11, 0x1

    :goto_3
    const/4 v0, 0x0

    goto :goto_4

    .line 288
    :pswitch_0
    iget v3, v6, Landroidx/d/c/b/g;->bz:I

    move-object/from16 v0, p0

    const/4 v11, 0x1

    move/from16 v4, v16

    move-object/from16 v17, v5

    invoke-direct/range {v0 .. v5}, Landroidx/d/c/b/g;->c([Landroidx/d/c/b/e;III[I)V

    goto :goto_3

    :pswitch_1
    move-object/from16 v17, v5

    const/4 v11, 0x1

    .line 292
    iget v3, v6, Landroidx/d/c/b/g;->bz:I

    move-object/from16 v0, p0

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Landroidx/d/c/b/g;->a([Landroidx/d/c/b/e;III[I)V

    goto :goto_3

    :pswitch_2
    move-object/from16 v17, v5

    const/4 v11, 0x1

    .line 296
    iget v3, v6, Landroidx/d/c/b/g;->bz:I

    move-object/from16 v0, p0

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Landroidx/d/c/b/g;->b([Landroidx/d/c/b/e;III[I)V

    goto :goto_3

    .line 301
    :goto_4
    aget v1, v17, v0

    add-int/2addr v1, v12

    add-int/2addr v1, v13

    .line 302
    aget v2, v17, v11

    add-int/2addr v2, v14

    add-int/2addr v2, v15

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v7, v4, :cond_b

    move v1, v8

    goto :goto_5

    :cond_b
    if-ne v7, v3, :cond_c

    .line 310
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_5

    :cond_c
    if-nez v7, :cond_d

    goto :goto_5

    :cond_d
    move v1, v0

    :goto_5
    if-ne v9, v4, :cond_e

    move v2, v10

    goto :goto_6

    :cond_e
    if-ne v9, v3, :cond_f

    .line 318
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_6

    :cond_f
    if-nez v9, :cond_10

    goto :goto_6

    :cond_10
    move v2, v0

    .line 323
    :goto_6
    invoke-virtual {v6, v1, v2}, Landroidx/d/c/b/g;->k(II)V

    .line 324
    invoke-virtual {v6, v1}, Landroidx/d/c/b/g;->p(I)V

    .line 325
    invoke-virtual {v6, v2}, Landroidx/d/c/b/g;->q(I)V

    .line 326
    iget v1, v6, Landroidx/d/c/b/g;->be:I

    if-lez v1, :cond_11

    goto :goto_7

    :cond_11
    move v11, v0

    :goto_7
    invoke-virtual {v6, v11}, Landroidx/d/c/b/g;->h(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(F)V
    .locals 0

    .line 139
    iput p1, p0, Landroidx/d/c/b/g;->bn:F

    return-void
.end method

.method public f(F)V
    .locals 0

    .line 143
    iput p1, p0, Landroidx/d/c/b/g;->bo:F

    return-void
.end method

.method public g(F)V
    .locals 0

    .line 146
    iput p1, p0, Landroidx/d/c/b/g;->bp:F

    return-void
.end method

.method public h(F)V
    .locals 0

    .line 148
    iput p1, p0, Landroidx/d/c/b/g;->bq:F

    return-void
.end method

.method public i(F)V
    .locals 0

    .line 150
    iput p1, p0, Landroidx/d/c/b/g;->br:F

    return-void
.end method

.method public j(F)V
    .locals 0

    .line 152
    iput p1, p0, Landroidx/d/c/b/g;->bs:F

    return-void
.end method
