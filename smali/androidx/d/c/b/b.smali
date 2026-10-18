.class public Landroidx/d/c/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z = false

.field private static final b:Z = false


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroidx/d/c/b/f;Landroidx/d/c/e;IILandroidx/d/c/b/c;)V
    .locals 46

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v1, p4

    .line 83
    iget-object v11, v1, Landroidx/d/c/b/c;->a:Landroidx/d/c/b/e;

    .line 84
    iget-object v12, v1, Landroidx/d/c/b/c;->c:Landroidx/d/c/b/e;

    .line 85
    iget-object v13, v1, Landroidx/d/c/b/c;->b:Landroidx/d/c/b/e;

    .line 86
    iget-object v14, v1, Landroidx/d/c/b/c;->d:Landroidx/d/c/b/e;

    .line 87
    iget-object v2, v1, Landroidx/d/c/b/c;->e:Landroidx/d/c/b/e;

    .line 93
    iget v3, v1, Landroidx/d/c/b/c;->k:F

    .line 94
    iget-object v4, v1, Landroidx/d/c/b/c;->f:Landroidx/d/c/b/e;

    .line 95
    iget-object v4, v1, Landroidx/d/c/b/c;->g:Landroidx/d/c/b/e;

    .line 97
    iget-object v4, v0, Landroidx/d/c/b/f;->ak:[Landroidx/d/c/b/e$a;

    aget-object v4, v4, p2

    sget-object v5, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    const/4 v7, 0x1

    if-ne v4, v5, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-nez p2, :cond_4

    .line 103
    iget v8, v2, Landroidx/d/c/b/e;->aN:I

    if-nez v8, :cond_1

    move v8, v7

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 104
    :goto_1
    iget v6, v2, Landroidx/d/c/b/e;->aN:I

    if-ne v6, v7, :cond_2

    move v6, v7

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    .line 105
    :goto_2
    iget v7, v2, Landroidx/d/c/b/e;->aN:I

    if-ne v7, v5, :cond_3

    :goto_3
    const/4 v5, 0x1

    goto :goto_4

    :cond_3
    const/4 v5, 0x0

    :goto_4
    move v7, v5

    move/from16 v18, v6

    move/from16 v17, v8

    move-object v6, v11

    const/4 v5, 0x0

    goto :goto_7

    .line 107
    :cond_4
    iget v6, v2, Landroidx/d/c/b/e;->aO:I

    if-nez v6, :cond_5

    const/4 v8, 0x1

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    .line 108
    :goto_5
    iget v6, v2, Landroidx/d/c/b/e;->aO:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    const/4 v6, 0x1

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    .line 109
    :goto_6
    iget v7, v2, Landroidx/d/c/b/e;->aO:I

    if-ne v7, v5, :cond_3

    goto :goto_3

    :goto_7
    const/16 v21, 0x0

    if-nez v5, :cond_13

    .line 126
    iget-object v8, v6, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v8, v8, p3

    if-eqz v7, :cond_7

    const/16 v20, 0x1

    goto :goto_8

    :cond_7
    const/16 v20, 0x4

    .line 132
    :goto_8
    invoke-virtual {v8}, Landroidx/d/c/b/d;->j()I

    move-result v22

    move/from16 v23, v3

    .line 133
    iget-object v3, v6, Landroidx/d/c/b/e;->ak:[Landroidx/d/c/b/e$a;

    aget-object v3, v3, p2

    move/from16 v24, v5

    sget-object v5, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v3, v5, :cond_8

    iget-object v3, v6, Landroidx/d/c/b/e;->I:[I

    aget v3, v3, p2

    if-nez v3, :cond_8

    const/4 v3, 0x1

    goto :goto_9

    :cond_8
    const/4 v3, 0x0

    .line 136
    :goto_9
    iget-object v5, v8, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v5, :cond_9

    if-eq v6, v11, :cond_9

    .line 137
    iget-object v5, v8, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    invoke-virtual {v5}, Landroidx/d/c/b/d;->j()I

    move-result v5

    add-int v22, v22, v5

    :cond_9
    move/from16 v5, v22

    if-eqz v7, :cond_a

    if-eq v6, v11, :cond_a

    if-eq v6, v13, :cond_a

    move-object/from16 v25, v2

    const/16 v20, 0x8

    goto :goto_a

    :cond_a
    move-object/from16 v25, v2

    .line 144
    :goto_a
    iget-object v2, v8, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v2, :cond_d

    if-ne v6, v13, :cond_b

    .line 146
    iget-object v2, v8, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    move-object/from16 v26, v11

    iget-object v11, v8, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v11, v11, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    move-object/from16 v27, v13

    const/4 v13, 0x6

    invoke-virtual {v9, v2, v11, v5, v13}, Landroidx/d/c/e;->a(Landroidx/d/c/i;Landroidx/d/c/i;II)V

    goto :goto_b

    :cond_b
    move-object/from16 v26, v11

    move-object/from16 v27, v13

    .line 149
    iget-object v2, v8, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    iget-object v11, v8, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v11, v11, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    const/16 v13, 0x8

    invoke-virtual {v9, v2, v11, v5, v13}, Landroidx/d/c/e;->a(Landroidx/d/c/i;Landroidx/d/c/i;II)V

    :goto_b
    if-eqz v3, :cond_c

    if-nez v7, :cond_c

    const/4 v2, 0x5

    goto :goto_c

    :cond_c
    move/from16 v2, v20

    .line 155
    :goto_c
    iget-object v3, v8, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    iget-object v8, v8, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v8, v8, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    invoke-virtual {v9, v3, v8, v5, v2}, Landroidx/d/c/e;->c(Landroidx/d/c/i;Landroidx/d/c/i;II)Landroidx/d/c/b;

    goto :goto_d

    :cond_d
    move-object/from16 v26, v11

    move-object/from16 v27, v13

    :goto_d
    if-eqz v4, :cond_f

    .line 160
    invoke-virtual {v6}, Landroidx/d/c/b/e;->E()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_e

    iget-object v2, v6, Landroidx/d/c/b/e;->ak:[Landroidx/d/c/b/e$a;

    aget-object v2, v2, p2

    sget-object v3, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v2, v3, :cond_e

    .line 162
    iget-object v2, v6, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    iget-object v3, v6, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    const/4 v5, 0x0

    const/4 v8, 0x5

    invoke-virtual {v9, v2, v3, v5, v8}, Landroidx/d/c/e;->a(Landroidx/d/c/i;Landroidx/d/c/i;II)V

    goto :goto_e

    :cond_e
    const/4 v5, 0x0

    .line 166
    :goto_e
    iget-object v2, v6, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    iget-object v3, v0, Landroidx/d/c/b/f;->ag:[Landroidx/d/c/b/d;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    const/16 v8, 0x8

    invoke-virtual {v9, v2, v3, v5, v8}, Landroidx/d/c/e;->a(Landroidx/d/c/i;Landroidx/d/c/i;II)V

    .line 172
    :cond_f
    iget-object v2, v6, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v2, :cond_11

    .line 174
    iget-object v2, v2, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    .line 175
    iget-object v3, v2, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v3, :cond_11

    iget-object v3, v2, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v3, v3, p3

    iget-object v3, v3, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v3, v3, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    if-eq v3, v6, :cond_10

    goto :goto_f

    :cond_10
    move-object/from16 v21, v2

    :cond_11
    :goto_f
    if-eqz v21, :cond_12

    move-object/from16 v6, v21

    move/from16 v5, v24

    goto :goto_10

    :cond_12
    const/4 v5, 0x1

    :goto_10
    move/from16 v3, v23

    move-object/from16 v2, v25

    move-object/from16 v11, v26

    move-object/from16 v13, v27

    goto/16 :goto_7

    :cond_13
    move-object/from16 v25, v2

    move/from16 v23, v3

    move-object/from16 v26, v11

    move-object/from16 v27, v13

    if-eqz v14, :cond_17

    .line 189
    iget-object v2, v12, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v2, :cond_17

    .line 190
    iget-object v2, v14, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v2, v2, v3

    .line 191
    iget-object v5, v14, Landroidx/d/c/b/e;->ak:[Landroidx/d/c/b/e$a;

    aget-object v5, v5, p2

    sget-object v6, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v5, v6, :cond_14

    iget-object v5, v14, Landroidx/d/c/b/e;->I:[I

    aget v5, v5, p2

    if-nez v5, :cond_14

    const/4 v5, 0x1

    goto :goto_11

    :cond_14
    const/4 v5, 0x0

    :goto_11
    if-eqz v5, :cond_15

    if-nez v7, :cond_15

    .line 193
    iget-object v5, v2, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v5, v5, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    if-ne v5, v0, :cond_15

    .line 194
    iget-object v5, v2, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    iget-object v6, v2, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v6, v6, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    invoke-virtual {v2}, Landroidx/d/c/b/d;->j()I

    move-result v8

    neg-int v8, v8

    const/4 v11, 0x5

    invoke-virtual {v9, v5, v6, v8, v11}, Landroidx/d/c/e;->c(Landroidx/d/c/i;Landroidx/d/c/i;II)Landroidx/d/c/b;

    goto :goto_12

    :cond_15
    const/4 v11, 0x5

    if-eqz v7, :cond_16

    .line 196
    iget-object v5, v2, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v5, v5, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    if-ne v5, v0, :cond_16

    .line 197
    iget-object v5, v2, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    iget-object v6, v2, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v6, v6, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    invoke-virtual {v2}, Landroidx/d/c/b/d;->j()I

    move-result v8

    neg-int v8, v8

    const/4 v13, 0x4

    invoke-virtual {v9, v5, v6, v8, v13}, Landroidx/d/c/e;->c(Landroidx/d/c/i;Landroidx/d/c/i;II)Landroidx/d/c/b;

    .line 200
    :cond_16
    :goto_12
    iget-object v5, v2, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    iget-object v6, v12, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v3, v6, v3

    iget-object v3, v3, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v3, v3, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    .line 201
    invoke-virtual {v2}, Landroidx/d/c/b/d;->j()I

    move-result v2

    neg-int v2, v2

    const/4 v6, 0x6

    .line 200
    invoke-virtual {v9, v5, v3, v2, v6}, Landroidx/d/c/e;->b(Landroidx/d/c/i;Landroidx/d/c/i;II)V

    goto :goto_13

    :cond_17
    const/4 v11, 0x5

    :goto_13
    if-eqz v4, :cond_18

    .line 207
    iget-object v0, v0, Landroidx/d/c/b/f;->ag:[Landroidx/d/c/b/d;

    add-int/lit8 v2, p3, 0x1

    aget-object v0, v0, v2

    iget-object v0, v0, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    iget-object v3, v12, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    iget-object v4, v12, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v2, v4, v2

    .line 209
    invoke-virtual {v2}, Landroidx/d/c/b/d;->j()I

    move-result v2

    const/16 v4, 0x8

    .line 207
    invoke-virtual {v9, v0, v3, v2, v4}, Landroidx/d/c/e;->a(Landroidx/d/c/i;Landroidx/d/c/i;II)V

    .line 213
    :cond_18
    iget-object v0, v1, Landroidx/d/c/b/c;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    .line 215
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1e

    .line 220
    iget-boolean v4, v1, Landroidx/d/c/b/c;->p:Z

    if-eqz v4, :cond_19

    iget-boolean v4, v1, Landroidx/d/c/b/c;->r:Z

    if-nez v4, :cond_19

    .line 221
    iget v4, v1, Landroidx/d/c/b/c;->j:I

    int-to-float v4, v4

    goto :goto_14

    :cond_19
    move/from16 v4, v23

    :goto_14
    const/4 v5, 0x0

    move/from16 v29, v5

    move-object/from16 v8, v21

    const/4 v6, 0x0

    :goto_15
    if-ge v6, v2, :cond_1e

    .line 225
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/d/c/b/e;

    .line 226
    iget-object v3, v13, Landroidx/d/c/b/e;->aR:[F

    aget v3, v3, p2

    cmpg-float v16, v3, v5

    if-gez v16, :cond_1b

    .line 229
    iget-boolean v3, v1, Landroidx/d/c/b/c;->r:Z

    if-eqz v3, :cond_1a

    .line 230
    iget-object v3, v13, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    add-int/lit8 v16, p3, 0x1

    aget-object v3, v3, v16

    iget-object v3, v3, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    iget-object v13, v13, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v13, v13, p3

    iget-object v13, v13, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    const/4 v5, 0x4

    const/4 v11, 0x0

    invoke-virtual {v9, v3, v13, v11, v5}, Landroidx/d/c/e;->c(Landroidx/d/c/i;Landroidx/d/c/i;II)Landroidx/d/c/b;

    move v5, v11

    goto :goto_17

    :cond_1a
    const/4 v5, 0x4

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_16

    :cond_1b
    const/4 v5, 0x4

    :goto_16
    const/4 v11, 0x0

    cmpl-float v16, v3, v11

    if-nez v16, :cond_1c

    .line 237
    iget-object v3, v13, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    add-int/lit8 v16, p3, 0x1

    aget-object v3, v3, v16

    iget-object v3, v3, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    iget-object v13, v13, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v13, v13, p3

    iget-object v13, v13, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    const/4 v5, 0x0

    const/16 v11, 0x8

    invoke-virtual {v9, v3, v13, v5, v11}, Landroidx/d/c/e;->c(Landroidx/d/c/i;Landroidx/d/c/i;II)Landroidx/d/c/b;

    :goto_17
    move-object/from16 v37, v0

    move/from16 v38, v2

    goto :goto_19

    :cond_1c
    const/4 v5, 0x0

    if-eqz v8, :cond_1d

    .line 243
    iget-object v11, v8, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v11, v11, p3

    iget-object v11, v11, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    .line 244
    iget-object v8, v8, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    add-int/lit8 v15, p3, 0x1

    aget-object v8, v8, v15

    iget-object v8, v8, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    .line 245
    iget-object v5, v13, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v5, v5, p3

    iget-object v5, v5, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    move-object/from16 v37, v0

    .line 246
    iget-object v0, v13, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v15

    iget-object v0, v0, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    move/from16 v38, v2

    .line 247
    invoke-virtual/range {p1 .. p1}, Landroidx/d/c/e;->c()Landroidx/d/c/b;

    move-result-object v2

    move-object/from16 v28, v2

    move/from16 v30, v4

    move/from16 v31, v3

    move-object/from16 v32, v11

    move-object/from16 v33, v8

    move-object/from16 v34, v5

    move-object/from16 v35, v0

    .line 248
    invoke-virtual/range {v28 .. v35}, Landroidx/d/c/b;->a(FFFLandroidx/d/c/i;Landroidx/d/c/i;Landroidx/d/c/i;Landroidx/d/c/i;)Landroidx/d/c/b;

    .line 250
    invoke-virtual {v9, v2}, Landroidx/d/c/e;->a(Landroidx/d/c/b;)V

    goto :goto_18

    :cond_1d
    move-object/from16 v37, v0

    move/from16 v38, v2

    :goto_18
    move/from16 v29, v3

    move-object v8, v13

    :goto_19
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v37

    move/from16 v2, v38

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v11, 0x5

    goto/16 :goto_15

    :cond_1e
    if-eqz v27, :cond_25

    move-object/from16 v11, v27

    if-eq v11, v14, :cond_20

    if-eqz v7, :cond_1f

    goto :goto_1a

    :cond_1f
    move-object/from16 v13, v26

    goto/16 :goto_1f

    :cond_20
    :goto_1a
    move-object/from16 v13, v26

    .line 272
    iget-object v0, v13, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, p3

    .line 273
    iget-object v1, v12, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 274
    iget-object v3, v0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v3, :cond_21

    iget-object v0, v0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v0, v0, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    move-object v3, v0

    goto :goto_1b

    :cond_21
    move-object/from16 v3, v21

    .line 275
    :goto_1b
    iget-object v0, v1, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v0, :cond_22

    iget-object v0, v1, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v0, v0, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    move-object v5, v0

    goto :goto_1c

    :cond_22
    move-object/from16 v5, v21

    .line 276
    :goto_1c
    iget-object v0, v11, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, p3

    .line 277
    iget-object v1, v14, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v1, v1, v2

    if-eqz v3, :cond_24

    if-eqz v5, :cond_24

    if-nez p2, :cond_23

    move-object/from16 v2, v25

    .line 281
    iget v2, v2, Landroidx/d/c/b/e;->aA:F

    :goto_1d
    move v4, v2

    goto :goto_1e

    :cond_23
    move-object/from16 v2, v25

    .line 283
    iget v2, v2, Landroidx/d/c/b/e;->aB:F

    goto :goto_1d

    .line 285
    :goto_1e
    invoke-virtual {v0}, Landroidx/d/c/b/d;->j()I

    move-result v6

    .line 286
    invoke-virtual {v1}, Landroidx/d/c/b/d;->j()I

    move-result v7

    .line 287
    iget-object v2, v0, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    iget-object v8, v1, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    const/4 v10, 0x7

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v6

    move-object v6, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Landroidx/d/c/e;->a(Landroidx/d/c/i;Landroidx/d/c/i;IFLandroidx/d/c/i;Landroidx/d/c/i;II)V

    :cond_24
    move-object v13, v9

    move-object/from16 v44, v12

    goto/16 :goto_39

    :cond_25
    move-object/from16 v13, v26

    move-object/from16 v11, v27

    :goto_1f
    if-eqz v17, :cond_38

    if-eqz v11, :cond_38

    .line 294
    iget v0, v1, Landroidx/d/c/b/c;->j:I

    if-lez v0, :cond_26

    iget v0, v1, Landroidx/d/c/b/c;->i:I

    iget v1, v1, Landroidx/d/c/b/c;->j:I

    if-ne v0, v1, :cond_26

    const/16 v36, 0x1

    goto :goto_20

    :cond_26
    const/16 v36, 0x0

    :goto_20
    move-object v7, v11

    move-object v8, v7

    :goto_21
    if-eqz v8, :cond_4a

    .line 296
    iget-object v0, v8, Landroidx/d/c/b/e;->aT:[Landroidx/d/c/b/e;

    aget-object v0, v0, p2

    move-object v6, v0

    :goto_22
    if-eqz v6, :cond_27

    .line 297
    invoke-virtual {v6}, Landroidx/d/c/b/e;->E()I

    move-result v0

    const/16 v5, 0x8

    if-ne v0, v5, :cond_28

    .line 298
    iget-object v0, v6, Landroidx/d/c/b/e;->aT:[Landroidx/d/c/b/e;

    aget-object v6, v0, p2

    goto :goto_22

    :cond_27
    const/16 v5, 0x8

    :cond_28
    if-nez v6, :cond_2a

    if-ne v8, v14, :cond_29

    goto :goto_23

    :cond_29
    move v9, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v16, v8

    goto/16 :goto_2b

    .line 301
    :cond_2a
    :goto_23
    iget-object v0, v8, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, p3

    .line 302
    iget-object v1, v0, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    .line 303
    iget-object v2, v0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v2, :cond_2b

    iget-object v2, v0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v2, v2, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    goto :goto_24

    :cond_2b
    move-object/from16 v2, v21

    :goto_24
    if-eq v7, v8, :cond_2c

    .line 305
    iget-object v2, v7, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    goto :goto_25

    :cond_2c
    if-ne v8, v11, :cond_2e

    if-ne v7, v8, :cond_2e

    .line 307
    iget-object v2, v13, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v2, :cond_2d

    iget-object v2, v13, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v2, v2, p3

    iget-object v2, v2, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v2, v2, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    goto :goto_25

    :cond_2d
    move-object/from16 v2, v21

    .line 313
    :cond_2e
    :goto_25
    invoke-virtual {v0}, Landroidx/d/c/b/d;->j()I

    move-result v0

    .line 314
    iget-object v3, v8, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    add-int/lit8 v4, p3, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroidx/d/c/b/d;->j()I

    move-result v3

    if-eqz v6, :cond_2f

    .line 317
    iget-object v5, v6, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v5, v5, p3

    move-object/from16 v39, v6

    .line 318
    iget-object v6, v5, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    move-object/from16 v40, v5

    .line 319
    iget-object v5, v8, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    :goto_26
    move-object/from16 v45, v6

    move-object v6, v5

    move-object/from16 v5, v45

    goto :goto_28

    :cond_2f
    move-object/from16 v39, v6

    .line 321
    iget-object v5, v12, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v5, :cond_30

    .line 323
    iget-object v6, v5, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    move-object/from16 v41, v5

    goto :goto_27

    :cond_30
    move-object/from16 v41, v5

    move-object/from16 v6, v21

    .line 325
    :goto_27
    iget-object v5, v8, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    move-object/from16 v40, v41

    goto :goto_26

    :goto_28
    if-eqz v40, :cond_31

    .line 329
    invoke-virtual/range {v40 .. v40}, Landroidx/d/c/b/d;->j()I

    move-result v15

    add-int/2addr v3, v15

    :cond_31
    if-eqz v7, :cond_32

    move/from16 v42, v3

    .line 332
    iget-object v3, v7, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroidx/d/c/b/d;->j()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_29

    :cond_32
    move/from16 v42, v3

    :goto_29
    if-eqz v1, :cond_36

    if-eqz v2, :cond_36

    if-eqz v5, :cond_36

    if-eqz v6, :cond_36

    if-ne v8, v11, :cond_33

    .line 337
    iget-object v0, v11, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroidx/d/c/b/d;->j()I

    move-result v0

    :cond_33
    move v3, v0

    if-ne v8, v14, :cond_34

    .line 341
    iget-object v0, v14, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Landroidx/d/c/b/d;->j()I

    move-result v0

    move/from16 v42, v0

    :cond_34
    if-eqz v36, :cond_35

    const/16 v15, 0x8

    goto :goto_2a

    :cond_35
    const/4 v15, 0x5

    :goto_2a
    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p1

    const/16 v16, 0x8

    move-object/from16 v19, v39

    move-object/from16 v20, v7

    move/from16 v7, v42

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v8, v15

    .line 347
    invoke-virtual/range {v0 .. v8}, Landroidx/d/c/e;->a(Landroidx/d/c/i;Landroidx/d/c/i;IFLandroidx/d/c/i;Landroidx/d/c/i;II)V

    goto :goto_2b

    :cond_36
    move-object/from16 v20, v7

    move-object/from16 v16, v8

    move-object/from16 v19, v39

    const/16 v9, 0x8

    .line 352
    :goto_2b
    invoke-virtual/range {v16 .. v16}, Landroidx/d/c/b/e;->E()I

    move-result v0

    if-eq v0, v9, :cond_37

    move-object/from16 v7, v16

    goto :goto_2c

    :cond_37
    move-object/from16 v7, v20

    :goto_2c
    move-object/from16 v8, v19

    move-object/from16 v9, p1

    goto/16 :goto_21

    :cond_38
    const/16 v9, 0x8

    if-eqz v18, :cond_4a

    if-eqz v11, :cond_4a

    .line 361
    iget v0, v1, Landroidx/d/c/b/c;->j:I

    if-lez v0, :cond_39

    iget v0, v1, Landroidx/d/c/b/c;->i:I

    iget v1, v1, Landroidx/d/c/b/c;->j:I

    if-ne v0, v1, :cond_39

    const/16 v36, 0x1

    goto :goto_2d

    :cond_39
    const/16 v36, 0x0

    :goto_2d
    move-object v7, v11

    move-object v8, v7

    :goto_2e
    if-eqz v8, :cond_46

    .line 363
    iget-object v0, v8, Landroidx/d/c/b/e;->aT:[Landroidx/d/c/b/e;

    aget-object v0, v0, p2

    :goto_2f
    if-eqz v0, :cond_3a

    .line 364
    invoke-virtual {v0}, Landroidx/d/c/b/e;->E()I

    move-result v1

    if-ne v1, v9, :cond_3a

    .line 365
    iget-object v0, v0, Landroidx/d/c/b/e;->aT:[Landroidx/d/c/b/e;

    aget-object v0, v0, p2

    goto :goto_2f

    :cond_3a
    if-eq v8, v11, :cond_44

    if-eq v8, v14, :cond_44

    if-eqz v0, :cond_44

    if-ne v0, v14, :cond_3b

    move-object/from16 v6, v21

    goto :goto_30

    :cond_3b
    move-object v6, v0

    .line 371
    :goto_30
    iget-object v0, v8, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, p3

    .line 372
    iget-object v1, v0, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    .line 373
    iget-object v2, v0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v2, :cond_3c

    iget-object v2, v0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v2, v2, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    .line 374
    :cond_3c
    iget-object v2, v7, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    add-int/lit8 v3, p3, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    .line 378
    invoke-virtual {v0}, Landroidx/d/c/b/d;->j()I

    move-result v0

    .line 379
    iget-object v4, v8, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroidx/d/c/b/d;->j()I

    move-result v4

    if-eqz v6, :cond_3e

    .line 382
    iget-object v5, v6, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v5, v5, p3

    .line 383
    iget-object v9, v5, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    move-object/from16 v43, v6

    .line 384
    iget-object v6, v5, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v6, :cond_3d

    iget-object v6, v5, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v6, v6, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    goto :goto_31

    :cond_3d
    move-object/from16 v6, v21

    :goto_31
    move-object/from16 v45, v9

    move-object v9, v6

    move-object/from16 v6, v45

    goto :goto_33

    :cond_3e
    move-object/from16 v43, v6

    .line 386
    iget-object v5, v14, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v5, v5, p3

    if-eqz v5, :cond_3f

    .line 388
    iget-object v6, v5, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    goto :goto_32

    :cond_3f
    move-object/from16 v6, v21

    .line 390
    :goto_32
    iget-object v9, v8, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v9, v9, v3

    iget-object v9, v9, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    :goto_33
    if-eqz v5, :cond_40

    .line 394
    invoke-virtual {v5}, Landroidx/d/c/b/d;->j()I

    move-result v5

    add-int/2addr v4, v5

    :cond_40
    move v15, v4

    if-eqz v7, :cond_41

    .line 397
    iget-object v4, v7, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Landroidx/d/c/b/d;->j()I

    move-result v3

    add-int/2addr v0, v3

    :cond_41
    move v3, v0

    if-eqz v36, :cond_42

    const/16 v16, 0x8

    goto :goto_34

    :cond_42
    const/16 v16, 0x4

    :goto_34
    if-eqz v1, :cond_43

    if-eqz v2, :cond_43

    if-eqz v6, :cond_43

    if-eqz v9, :cond_43

    const/high16 v4, 0x3f000000    # 0.5f

    move-object/from16 v0, p1

    const/16 v19, 0x4

    move-object v5, v6

    move-object/from16 v20, v43

    move-object v6, v9

    move-object v9, v7

    move v7, v15

    move-object v15, v8

    move/from16 v8, v16

    .line 404
    invoke-virtual/range {v0 .. v8}, Landroidx/d/c/e;->a(Landroidx/d/c/i;Landroidx/d/c/i;IFLandroidx/d/c/i;Landroidx/d/c/i;II)V

    goto :goto_35

    :cond_43
    move-object v9, v7

    move-object v15, v8

    move-object/from16 v20, v43

    const/16 v19, 0x4

    :goto_35
    move-object/from16 v8, v20

    goto :goto_36

    :cond_44
    move-object v9, v7

    move-object v15, v8

    const/16 v19, 0x4

    move-object v8, v0

    .line 409
    :goto_36
    invoke-virtual {v15}, Landroidx/d/c/b/e;->E()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_45

    move-object v7, v15

    goto :goto_37

    :cond_45
    move-object v7, v9

    :goto_37
    move v9, v1

    goto/16 :goto_2e

    .line 414
    :cond_46
    iget-object v0, v11, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, p3

    .line 415
    iget-object v1, v13, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v1, v1, p3

    iget-object v1, v1, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    .line 416
    iget-object v2, v14, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    add-int/lit8 v3, p3, 0x1

    aget-object v9, v2, v3

    .line 417
    iget-object v2, v12, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v2, v2, v3

    iget-object v10, v2, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v1, :cond_49

    if-eq v11, v14, :cond_48

    .line 421
    iget-object v2, v0, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    iget-object v1, v1, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    invoke-virtual {v0}, Landroidx/d/c/b/d;->j()I

    move-result v0

    const/4 v8, 0x5

    move-object/from16 v13, p1

    invoke-virtual {v13, v2, v1, v0, v8}, Landroidx/d/c/e;->c(Landroidx/d/c/i;Landroidx/d/c/i;II)Landroidx/d/c/b;

    :cond_47
    move-object/from16 v44, v12

    move v12, v8

    goto :goto_38

    :cond_48
    const/4 v8, 0x5

    move-object/from16 v13, p1

    if-eqz v10, :cond_47

    .line 423
    iget-object v2, v0, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    iget-object v3, v1, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    invoke-virtual {v0}, Landroidx/d/c/b/d;->j()I

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, v9, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    iget-object v7, v10, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    .line 424
    invoke-virtual {v9}, Landroidx/d/c/b/d;->j()I

    move-result v15

    const/16 v16, 0x5

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v15

    move-object/from16 v44, v12

    move v12, v8

    move/from16 v8, v16

    .line 423
    invoke-virtual/range {v0 .. v8}, Landroidx/d/c/e;->a(Landroidx/d/c/i;Landroidx/d/c/i;IFLandroidx/d/c/i;Landroidx/d/c/i;II)V

    goto :goto_38

    :cond_49
    move-object/from16 v44, v12

    const/4 v12, 0x5

    move-object/from16 v13, p1

    :goto_38
    if-eqz v10, :cond_4b

    if-eq v11, v14, :cond_4b

    .line 428
    iget-object v0, v9, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    iget-object v1, v10, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    invoke-virtual {v9}, Landroidx/d/c/b/d;->j()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v13, v0, v1, v2, v12}, Landroidx/d/c/e;->c(Landroidx/d/c/i;Landroidx/d/c/i;II)Landroidx/d/c/b;

    goto :goto_39

    :cond_4a
    move-object/from16 v44, v12

    move-object/from16 v13, p1

    :cond_4b
    :goto_39
    if-nez v17, :cond_4c

    if-eqz v18, :cond_53

    :cond_4c
    if-eqz v11, :cond_53

    if-eq v11, v14, :cond_53

    .line 435
    iget-object v0, v11, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, p3

    .line 436
    iget-object v1, v14, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    add-int/lit8 v2, p3, 0x1

    aget-object v1, v1, v2

    .line 437
    iget-object v3, v0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v3, :cond_4d

    iget-object v3, v0, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v3, v3, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    goto :goto_3a

    :cond_4d
    move-object/from16 v3, v21

    .line 438
    :goto_3a
    iget-object v4, v1, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v4, :cond_4e

    iget-object v4, v1, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v4, v4, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    move-object v5, v4

    :goto_3b
    move-object/from16 v4, v44

    goto :goto_3c

    :cond_4e
    move-object/from16 v5, v21

    goto :goto_3b

    :goto_3c
    if-eq v4, v14, :cond_50

    .line 440
    iget-object v5, v4, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v5, v5, v2

    .line 441
    iget-object v6, v5, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v6, :cond_4f

    iget-object v5, v5, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v5, v5, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    goto :goto_3d

    :cond_4f
    move-object/from16 v5, v21

    :cond_50
    :goto_3d
    if-ne v11, v14, :cond_51

    .line 444
    iget-object v0, v11, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v0, v0, p3

    .line 445
    iget-object v1, v11, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v1, v1, v2

    :cond_51
    if-eqz v3, :cond_53

    if-eqz v5, :cond_53

    const/high16 v6, 0x3f000000    # 0.5f

    .line 449
    invoke-virtual {v0}, Landroidx/d/c/b/d;->j()I

    move-result v7

    if-nez v14, :cond_52

    move-object v14, v4

    .line 454
    :cond_52
    iget-object v4, v14, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v2, v4, v2

    invoke-virtual {v2}, Landroidx/d/c/b/d;->j()I

    move-result v8

    .line 455
    iget-object v2, v0, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    iget-object v9, v1, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    const/4 v10, 0x5

    move-object/from16 v0, p1

    move-object v1, v2

    move-object v2, v3

    move v3, v7

    move v4, v6

    move-object v6, v9

    move v7, v8

    move v8, v10

    invoke-virtual/range {v0 .. v8}, Landroidx/d/c/e;->a(Landroidx/d/c/i;Landroidx/d/c/i;IFLandroidx/d/c/i;Landroidx/d/c/i;II)V

    :cond_53
    return-void
.end method

.method public static a(Landroidx/d/c/b/f;Landroidx/d/c/e;Ljava/util/ArrayList;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/d/c/b/f;",
            "Landroidx/d/c/e;",
            "Ljava/util/ArrayList<",
            "Landroidx/d/c/b/e;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 52
    iget v1, p0, Landroidx/d/c/b/f;->bd:I

    .line 53
    iget-object v2, p0, Landroidx/d/c/b/f;->bg:[Landroidx/d/c/b/c;

    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 56
    iget v2, p0, Landroidx/d/c/b/f;->be:I

    .line 57
    iget-object v3, p0, Landroidx/d/c/b/f;->bf:[Landroidx/d/c/b/c;

    move-object v6, v3

    move v3, v2

    move-object v2, v6

    :goto_0
    if-ge v0, v3, :cond_3

    .line 61
    aget-object v4, v2, v0

    .line 64
    invoke-virtual {v4}, Landroidx/d/c/b/c;->i()V

    if-eqz p2, :cond_1

    if-eqz p2, :cond_2

    .line 65
    iget-object v5, v4, Landroidx/d/c/b/c;->a:Landroidx/d/c/b/e;

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 66
    :cond_1
    invoke-static {p0, p1, p3, v1, v4}, Landroidx/d/c/b/b;->a(Landroidx/d/c/b/f;Landroidx/d/c/e;IILandroidx/d/c/b/c;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
