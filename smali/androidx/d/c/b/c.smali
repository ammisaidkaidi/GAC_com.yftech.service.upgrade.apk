.class public Landroidx/d/c/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroidx/d/c/b/e;

.field protected b:Landroidx/d/c/b/e;

.field protected c:Landroidx/d/c/b/e;

.field protected d:Landroidx/d/c/b/e;

.field protected e:Landroidx/d/c/b/e;

.field protected f:Landroidx/d/c/b/e;

.field protected g:Landroidx/d/c/b/e;

.field protected h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/d/c/b/e;",
            ">;"
        }
    .end annotation
.end field

.field protected i:I

.field protected j:I

.field protected k:F

.field l:I

.field m:I

.field n:I

.field o:Z

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field protected s:Z

.field private t:I

.field private u:Z

.field private v:Z


# direct methods
.method public constructor <init>(Landroidx/d/c/b/e;IZ)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroidx/d/c/b/c;->k:F

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Landroidx/d/c/b/c;->u:Z

    .line 64
    iput-object p1, p0, Landroidx/d/c/b/c;->a:Landroidx/d/c/b/e;

    .line 65
    iput p2, p0, Landroidx/d/c/b/c;->t:I

    .line 66
    iput-boolean p3, p0, Landroidx/d/c/b/c;->u:Z

    return-void
.end method

.method private static a(Landroidx/d/c/b/e;I)Z
    .locals 2

    .line 77
    invoke-virtual {p0}, Landroidx/d/c/b/e;->E()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroidx/d/c/b/e;->ak:[Landroidx/d/c/b/e$a;

    aget-object v0, v0, p1

    sget-object v1, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/d/c/b/e;->I:[I

    aget v0, v0, p1

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/d/c/b/e;->I:[I

    aget p0, p0, p1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private j()V
    .locals 13

    .line 84
    iget v0, p0, Landroidx/d/c/b/c;->t:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    .line 85
    iget-object v2, p0, Landroidx/d/c/b/c;->a:Landroidx/d/c/b/e;

    const/4 v3, 0x1

    .line 86
    iput-boolean v3, p0, Landroidx/d/c/b/c;->o:Z

    .line 89
    iget-object v4, p0, Landroidx/d/c/b/c;->a:Landroidx/d/c/b/e;

    .line 90
    iget-object v5, p0, Landroidx/d/c/b/c;->a:Landroidx/d/c/b/e;

    const/4 v5, 0x0

    move-object v6, v2

    move v2, v5

    :goto_0
    if-nez v2, :cond_15

    .line 93
    iget v7, p0, Landroidx/d/c/b/c;->i:I

    add-int/2addr v7, v3

    iput v7, p0, Landroidx/d/c/b/c;->i:I

    .line 94
    iget-object v7, v4, Landroidx/d/c/b/e;->aT:[Landroidx/d/c/b/e;

    iget v8, p0, Landroidx/d/c/b/c;->t:I

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 95
    iget-object v7, v4, Landroidx/d/c/b/e;->aS:[Landroidx/d/c/b/e;

    iget v8, p0, Landroidx/d/c/b/c;->t:I

    aput-object v9, v7, v8

    .line 96
    invoke-virtual {v4}, Landroidx/d/c/b/e;->E()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_10

    .line 97
    iget v7, p0, Landroidx/d/c/b/c;->l:I

    add-int/2addr v7, v3

    iput v7, p0, Landroidx/d/c/b/c;->l:I

    .line 98
    iget v7, p0, Landroidx/d/c/b/c;->t:I

    invoke-virtual {v4, v7}, Landroidx/d/c/b/e;->y(I)Landroidx/d/c/b/e$a;

    move-result-object v7

    sget-object v8, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-eq v7, v8, :cond_0

    .line 99
    iget v7, p0, Landroidx/d/c/b/c;->m:I

    iget v8, p0, Landroidx/d/c/b/c;->t:I

    invoke-virtual {v4, v8}, Landroidx/d/c/b/e;->l(I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Landroidx/d/c/b/c;->m:I

    .line 101
    :cond_0
    iget v7, p0, Landroidx/d/c/b/c;->m:I

    iget-object v8, v4, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Landroidx/d/c/b/d;->j()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Landroidx/d/c/b/c;->m:I

    .line 102
    iget v7, p0, Landroidx/d/c/b/c;->m:I

    iget-object v8, v4, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    add-int/lit8 v10, v0, 0x1

    aget-object v8, v8, v10

    invoke-virtual {v8}, Landroidx/d/c/b/d;->j()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Landroidx/d/c/b/c;->m:I

    .line 103
    iget v7, p0, Landroidx/d/c/b/c;->n:I

    iget-object v8, v4, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v8, v8, v0

    invoke-virtual {v8}, Landroidx/d/c/b/d;->j()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Landroidx/d/c/b/c;->n:I

    .line 104
    iget v7, p0, Landroidx/d/c/b/c;->n:I

    iget-object v8, v4, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v8, v8, v10

    invoke-virtual {v8}, Landroidx/d/c/b/d;->j()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, p0, Landroidx/d/c/b/c;->n:I

    .line 106
    iget-object v7, p0, Landroidx/d/c/b/c;->b:Landroidx/d/c/b/e;

    if-nez v7, :cond_1

    .line 107
    iput-object v4, p0, Landroidx/d/c/b/c;->b:Landroidx/d/c/b/e;

    .line 109
    :cond_1
    iput-object v4, p0, Landroidx/d/c/b/c;->d:Landroidx/d/c/b/e;

    .line 112
    iget-object v7, v4, Landroidx/d/c/b/e;->ak:[Landroidx/d/c/b/e$a;

    iget v8, p0, Landroidx/d/c/b/c;->t:I

    aget-object v7, v7, v8

    sget-object v8, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v7, v8, :cond_10

    .line 113
    iget-object v7, v4, Landroidx/d/c/b/e;->I:[I

    iget v8, p0, Landroidx/d/c/b/c;->t:I

    aget v7, v7, v8

    const/4 v8, 0x0

    if-eqz v7, :cond_2

    iget-object v7, v4, Landroidx/d/c/b/e;->I:[I

    iget v10, p0, Landroidx/d/c/b/c;->t:I

    aget v7, v7, v10

    const/4 v10, 0x3

    if-eq v7, v10, :cond_2

    iget-object v7, v4, Landroidx/d/c/b/e;->I:[I

    iget v10, p0, Landroidx/d/c/b/c;->t:I

    aget v7, v7, v10

    if-ne v7, v1, :cond_9

    .line 116
    :cond_2
    iget v7, p0, Landroidx/d/c/b/c;->j:I

    add-int/2addr v7, v3

    iput v7, p0, Landroidx/d/c/b/c;->j:I

    .line 117
    iget-object v7, v4, Landroidx/d/c/b/e;->aR:[F

    iget v10, p0, Landroidx/d/c/b/c;->t:I

    aget v7, v7, v10

    cmpl-float v10, v7, v8

    if-lez v10, :cond_3

    .line 119
    iget v10, p0, Landroidx/d/c/b/c;->k:F

    iget-object v11, v4, Landroidx/d/c/b/e;->aR:[F

    iget v12, p0, Landroidx/d/c/b/c;->t:I

    aget v11, v11, v12

    add-float/2addr v10, v11

    iput v10, p0, Landroidx/d/c/b/c;->k:F

    .line 122
    :cond_3
    iget v10, p0, Landroidx/d/c/b/c;->t:I

    invoke-static {v4, v10}, Landroidx/d/c/b/c;->a(Landroidx/d/c/b/e;I)Z

    move-result v10

    if-eqz v10, :cond_6

    cmpg-float v7, v7, v8

    if-gez v7, :cond_4

    .line 124
    iput-boolean v3, p0, Landroidx/d/c/b/c;->p:Z

    goto :goto_1

    .line 126
    :cond_4
    iput-boolean v3, p0, Landroidx/d/c/b/c;->q:Z

    .line 128
    :goto_1
    iget-object v7, p0, Landroidx/d/c/b/c;->h:Ljava/util/ArrayList;

    if-nez v7, :cond_5

    .line 129
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroidx/d/c/b/c;->h:Ljava/util/ArrayList;

    .line 131
    :cond_5
    iget-object v7, p0, Landroidx/d/c/b/c;->h:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_6
    iget-object v7, p0, Landroidx/d/c/b/c;->f:Landroidx/d/c/b/e;

    if-nez v7, :cond_7

    .line 135
    iput-object v4, p0, Landroidx/d/c/b/c;->f:Landroidx/d/c/b/e;

    .line 137
    :cond_7
    iget-object v7, p0, Landroidx/d/c/b/c;->g:Landroidx/d/c/b/e;

    if-eqz v7, :cond_8

    .line 138
    iget-object v7, p0, Landroidx/d/c/b/c;->g:Landroidx/d/c/b/e;

    iget-object v7, v7, Landroidx/d/c/b/e;->aS:[Landroidx/d/c/b/e;

    iget v10, p0, Landroidx/d/c/b/c;->t:I

    aput-object v4, v7, v10

    .line 140
    :cond_8
    iput-object v4, p0, Landroidx/d/c/b/c;->g:Landroidx/d/c/b/e;

    .line 142
    :cond_9
    iget v7, p0, Landroidx/d/c/b/c;->t:I

    if-nez v7, :cond_c

    .line 143
    iget v7, v4, Landroidx/d/c/b/e;->G:I

    if-eqz v7, :cond_a

    .line 144
    iput-boolean v5, p0, Landroidx/d/c/b/c;->o:Z

    goto :goto_2

    .line 145
    :cond_a
    iget v7, v4, Landroidx/d/c/b/e;->J:I

    if-nez v7, :cond_b

    iget v7, v4, Landroidx/d/c/b/e;->K:I

    if-eqz v7, :cond_f

    .line 146
    :cond_b
    iput-boolean v5, p0, Landroidx/d/c/b/c;->o:Z

    goto :goto_2

    .line 149
    :cond_c
    iget v7, v4, Landroidx/d/c/b/e;->H:I

    if-eqz v7, :cond_d

    .line 150
    iput-boolean v5, p0, Landroidx/d/c/b/c;->o:Z

    goto :goto_2

    .line 151
    :cond_d
    iget v7, v4, Landroidx/d/c/b/e;->M:I

    if-nez v7, :cond_e

    iget v7, v4, Landroidx/d/c/b/e;->N:I

    if-eqz v7, :cond_f

    .line 152
    :cond_e
    iput-boolean v5, p0, Landroidx/d/c/b/c;->o:Z

    .line 155
    :cond_f
    :goto_2
    iget v7, v4, Landroidx/d/c/b/e;->ao:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_10

    .line 157
    iput-boolean v5, p0, Landroidx/d/c/b/c;->o:Z

    .line 158
    iput-boolean v3, p0, Landroidx/d/c/b/c;->s:Z

    :cond_10
    if-eq v6, v4, :cond_11

    .line 163
    iget-object v6, v6, Landroidx/d/c/b/e;->aT:[Landroidx/d/c/b/e;

    iget v7, p0, Landroidx/d/c/b/c;->t:I

    aput-object v4, v6, v7

    .line 168
    :cond_11
    iget-object v6, v4, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v6, :cond_13

    .line 170
    iget-object v6, v6, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    .line 171
    iget-object v7, v6, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v7, v7, v0

    iget-object v7, v7, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    if-eqz v7, :cond_13

    iget-object v7, v6, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v7, v7, v0

    iget-object v7, v7, Landroidx/d/c/b/d;->c:Landroidx/d/c/b/d;

    iget-object v7, v7, Landroidx/d/c/b/d;->a:Landroidx/d/c/b/e;

    if-eq v7, v4, :cond_12

    goto :goto_3

    :cond_12
    move-object v9, v6

    :cond_13
    :goto_3
    if-eqz v9, :cond_14

    goto :goto_4

    :cond_14
    move v2, v3

    move-object v9, v4

    :goto_4
    move-object v6, v4

    move-object v4, v9

    goto/16 :goto_0

    .line 184
    :cond_15
    iget-object v1, p0, Landroidx/d/c/b/c;->b:Landroidx/d/c/b/e;

    if-eqz v1, :cond_16

    .line 185
    iget v1, p0, Landroidx/d/c/b/c;->m:I

    iget-object v2, p0, Landroidx/d/c/b/c;->b:Landroidx/d/c/b/e;

    iget-object v2, v2, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/d/c/b/d;->j()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroidx/d/c/b/c;->m:I

    .line 187
    :cond_16
    iget-object v1, p0, Landroidx/d/c/b/c;->d:Landroidx/d/c/b/e;

    if-eqz v1, :cond_17

    .line 188
    iget v1, p0, Landroidx/d/c/b/c;->m:I

    iget-object v2, p0, Landroidx/d/c/b/c;->d:Landroidx/d/c/b/e;

    iget-object v2, v2, Landroidx/d/c/b/e;->ag:[Landroidx/d/c/b/d;

    add-int/2addr v0, v3

    aget-object v0, v2, v0

    invoke-virtual {v0}, Landroidx/d/c/b/d;->j()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/d/c/b/c;->m:I

    .line 190
    :cond_17
    iput-object v4, p0, Landroidx/d/c/b/c;->c:Landroidx/d/c/b/e;

    .line 192
    iget v0, p0, Landroidx/d/c/b/c;->t:I

    if-nez v0, :cond_18

    iget-boolean v0, p0, Landroidx/d/c/b/c;->u:Z

    if-eqz v0, :cond_18

    .line 193
    iget-object v0, p0, Landroidx/d/c/b/c;->c:Landroidx/d/c/b/e;

    iput-object v0, p0, Landroidx/d/c/b/c;->e:Landroidx/d/c/b/e;

    goto :goto_5

    .line 195
    :cond_18
    iget-object v0, p0, Landroidx/d/c/b/c;->a:Landroidx/d/c/b/e;

    iput-object v0, p0, Landroidx/d/c/b/c;->e:Landroidx/d/c/b/e;

    .line 198
    :goto_5
    iget-boolean v0, p0, Landroidx/d/c/b/c;->q:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Landroidx/d/c/b/c;->p:Z

    if-eqz v0, :cond_19

    goto :goto_6

    :cond_19
    move v3, v5

    :goto_6
    iput-boolean v3, p0, Landroidx/d/c/b/c;->r:Z

    return-void
.end method


# virtual methods
.method public a()Landroidx/d/c/b/e;
    .locals 0

    .line 202
    iget-object p0, p0, Landroidx/d/c/b/c;->a:Landroidx/d/c/b/e;

    return-object p0
.end method

.method public b()Landroidx/d/c/b/e;
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/d/c/b/c;->b:Landroidx/d/c/b/e;

    return-object p0
.end method

.method public c()Landroidx/d/c/b/e;
    .locals 0

    .line 210
    iget-object p0, p0, Landroidx/d/c/b/c;->c:Landroidx/d/c/b/e;

    return-object p0
.end method

.method public d()Landroidx/d/c/b/e;
    .locals 0

    .line 214
    iget-object p0, p0, Landroidx/d/c/b/c;->d:Landroidx/d/c/b/e;

    return-object p0
.end method

.method public e()Landroidx/d/c/b/e;
    .locals 0

    .line 218
    iget-object p0, p0, Landroidx/d/c/b/c;->e:Landroidx/d/c/b/e;

    return-object p0
.end method

.method public f()Landroidx/d/c/b/e;
    .locals 0

    .line 222
    iget-object p0, p0, Landroidx/d/c/b/c;->f:Landroidx/d/c/b/e;

    return-object p0
.end method

.method public g()Landroidx/d/c/b/e;
    .locals 0

    .line 226
    iget-object p0, p0, Landroidx/d/c/b/c;->g:Landroidx/d/c/b/e;

    return-object p0
.end method

.method public h()F
    .locals 0

    .line 230
    iget p0, p0, Landroidx/d/c/b/c;->k:F

    return p0
.end method

.method public i()V
    .locals 1

    .line 234
    iget-boolean v0, p0, Landroidx/d/c/b/c;->v:Z

    if-nez v0, :cond_0

    .line 235
    invoke-direct {p0}, Landroidx/d/c/b/c;->j()V

    :cond_0
    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Landroidx/d/c/b/c;->v:Z

    return-void
.end method
