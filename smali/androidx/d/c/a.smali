.class public Landroidx/d/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/d/c/b$a;


# static fields
.field static final a:I = -0x1

.field private static final d:Z = false

.field private static final e:Z = false

.field private static o:F = 0.001f


# instance fields
.field b:I

.field protected final c:Landroidx/d/c/c;

.field private final f:Landroidx/d/c/b;

.field private g:I

.field private h:Landroidx/d/c/i;

.field private i:[I

.field private j:[I

.field private k:[F

.field private l:I

.field private m:I

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroidx/d/c/b;Landroidx/d/c/c;)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Landroidx/d/c/a;->b:I

    const/16 v1, 0x8

    .line 48
    iput v1, p0, Landroidx/d/c/a;->g:I

    const/4 v1, 0x0

    .line 50
    iput-object v1, p0, Landroidx/d/c/a;->h:Landroidx/d/c/i;

    .line 53
    iget v1, p0, Landroidx/d/c/a;->g:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/d/c/a;->i:[I

    .line 56
    iget v1, p0, Landroidx/d/c/a;->g:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/d/c/a;->j:[I

    .line 59
    iget v1, p0, Landroidx/d/c/a;->g:I

    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/d/c/a;->k:[F

    const/4 v1, -0x1

    .line 62
    iput v1, p0, Landroidx/d/c/a;->l:I

    .line 78
    iput v1, p0, Landroidx/d/c/a;->m:I

    .line 81
    iput-boolean v0, p0, Landroidx/d/c/a;->n:Z

    .line 102
    iput-object p1, p0, Landroidx/d/c/a;->f:Landroidx/d/c/b;

    .line 103
    iput-object p2, p0, Landroidx/d/c/a;->c:Landroidx/d/c/c;

    return-void
.end method


# virtual methods
.method public a(Landroidx/d/c/b;Z)F
    .locals 5

    .line 349
    iget-object v0, p1, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    invoke-virtual {p0, v0}, Landroidx/d/c/a;->c(Landroidx/d/c/i;)F

    move-result v0

    .line 350
    iget-object v1, p1, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    invoke-virtual {p0, v1, p2}, Landroidx/d/c/a;->a(Landroidx/d/c/i;Z)F

    .line 351
    iget-object p1, p1, Landroidx/d/c/b;->e:Landroidx/d/c/b$a;

    .line 352
    invoke-interface {p1}, Landroidx/d/c/b$a;->e()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 354
    invoke-interface {p1, v2}, Landroidx/d/c/b$a;->d(I)Landroidx/d/c/i;

    move-result-object v3

    .line 355
    invoke-interface {p1, v3}, Landroidx/d/c/b$a;->c(Landroidx/d/c/i;)F

    move-result v4

    mul-float/2addr v4, v0

    .line 356
    invoke-virtual {p0, v3, v4, p2}, Landroidx/d/c/a;->a(Landroidx/d/c/i;FZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final a(Landroidx/d/c/i;Z)F
    .locals 8

    .line 369
    iget-object v0, p0, Landroidx/d/c/a;->h:Landroidx/d/c/i;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 370
    iput-object v0, p0, Landroidx/d/c/a;->h:Landroidx/d/c/i;

    .line 372
    :cond_0
    iget v0, p0, Landroidx/d/c/a;->l:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    .line 375
    :cond_1
    iget v0, p0, Landroidx/d/c/a;->l:I

    const/4 v3, 0x0

    move v4, v2

    :goto_0
    if-eq v0, v2, :cond_6

    .line 378
    iget v5, p0, Landroidx/d/c/a;->b:I

    if-ge v3, v5, :cond_6

    .line 379
    iget-object v5, p0, Landroidx/d/c/a;->i:[I

    aget v5, v5, v0

    .line 380
    iget v6, p1, Landroidx/d/c/i;->k:I

    if-ne v5, v6, :cond_5

    .line 381
    iget v1, p0, Landroidx/d/c/a;->l:I

    if-ne v0, v1, :cond_2

    .line 382
    iget-object v1, p0, Landroidx/d/c/a;->j:[I

    aget v1, v1, v0

    iput v1, p0, Landroidx/d/c/a;->l:I

    goto :goto_1

    .line 384
    :cond_2
    iget-object v1, p0, Landroidx/d/c/a;->j:[I

    iget-object v3, p0, Landroidx/d/c/a;->j:[I

    aget v3, v3, v0

    aput v3, v1, v4

    :goto_1
    if-eqz p2, :cond_3

    .line 388
    iget-object p2, p0, Landroidx/d/c/a;->f:Landroidx/d/c/b;

    invoke-virtual {p1, p2}, Landroidx/d/c/i;->b(Landroidx/d/c/b;)V

    .line 390
    :cond_3
    iget p2, p1, Landroidx/d/c/i;->v:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Landroidx/d/c/i;->v:I

    .line 391
    iget p1, p0, Landroidx/d/c/a;->b:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/d/c/a;->b:I

    .line 392
    iget-object p1, p0, Landroidx/d/c/a;->i:[I

    aput v2, p1, v0

    .line 393
    iget-boolean p1, p0, Landroidx/d/c/a;->n:Z

    if-eqz p1, :cond_4

    .line 395
    iput v0, p0, Landroidx/d/c/a;->m:I

    .line 397
    :cond_4
    iget-object p0, p0, Landroidx/d/c/a;->k:[F

    aget p0, p0, v0

    return p0

    .line 400
    :cond_5
    iget-object v4, p0, Landroidx/d/c/a;->j:[I

    aget v4, v4, v0

    add-int/lit8 v3, v3, 0x1

    move v7, v4

    move v4, v0

    move v0, v7

    goto :goto_0

    :cond_6
    return v1
.end method

.method public final a(I)I
    .locals 0

    .line 512
    iget-object p0, p0, Landroidx/d/c/a;->i:[I

    aget p0, p0, p1

    return p0
.end method

.method public final a()V
    .locals 5

    .line 409
    iget v0, p0, Landroidx/d/c/a;->l:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 411
    iget v4, p0, Landroidx/d/c/a;->b:I

    if-ge v2, v4, :cond_1

    .line 412
    iget-object v3, p0, Landroidx/d/c/a;->c:Landroidx/d/c/c;

    iget-object v3, v3, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    iget-object v4, p0, Landroidx/d/c/a;->i:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    .line 414
    iget-object v4, p0, Landroidx/d/c/a;->f:Landroidx/d/c/b;

    invoke-virtual {v3, v4}, Landroidx/d/c/i;->b(Landroidx/d/c/b;)V

    .line 416
    :cond_0
    iget-object v3, p0, Landroidx/d/c/a;->j:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 419
    :cond_1
    iput v3, p0, Landroidx/d/c/a;->l:I

    .line 420
    iput v3, p0, Landroidx/d/c/a;->m:I

    .line 421
    iput-boolean v1, p0, Landroidx/d/c/a;->n:Z

    .line 422
    iput v1, p0, Landroidx/d/c/a;->b:I

    return-void
.end method

.method public a(F)V
    .locals 4

    .line 500
    iget v0, p0, Landroidx/d/c/a;->l:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 502
    iget v2, p0, Landroidx/d/c/a;->b:I

    if-ge v1, v2, :cond_0

    .line 503
    iget-object v2, p0, Landroidx/d/c/a;->k:[F

    aget v3, v2, v0

    div-float/2addr v3, p1

    aput v3, v2, v0

    .line 504
    iget-object v2, p0, Landroidx/d/c/a;->j:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Landroidx/d/c/i;F)V
    .locals 8

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 119
    invoke-virtual {p0, p1, v1}, Landroidx/d/c/a;->a(Landroidx/d/c/i;Z)F

    return-void

    .line 123
    :cond_0
    iget v0, p0, Landroidx/d/c/a;->l:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 124
    iput v2, p0, Landroidx/d/c/a;->l:I

    .line 125
    iget-object v0, p0, Landroidx/d/c/a;->k:[F

    iget v2, p0, Landroidx/d/c/a;->l:I

    aput p2, v0, v2

    .line 126
    iget-object p2, p0, Landroidx/d/c/a;->i:[I

    iget v0, p0, Landroidx/d/c/a;->l:I

    iget v2, p1, Landroidx/d/c/i;->k:I

    aput v2, p2, v0

    .line 127
    iget-object p2, p0, Landroidx/d/c/a;->j:[I

    iget v0, p0, Landroidx/d/c/a;->l:I

    aput v3, p2, v0

    .line 128
    iget p2, p1, Landroidx/d/c/i;->v:I

    add-int/2addr p2, v1

    iput p2, p1, Landroidx/d/c/i;->v:I

    .line 129
    iget-object p2, p0, Landroidx/d/c/a;->f:Landroidx/d/c/b;

    invoke-virtual {p1, p2}, Landroidx/d/c/i;->a(Landroidx/d/c/b;)V

    .line 130
    iget p1, p0, Landroidx/d/c/a;->b:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/d/c/a;->b:I

    .line 131
    iget-boolean p1, p0, Landroidx/d/c/a;->n:Z

    if-nez p1, :cond_1

    .line 133
    iget p1, p0, Landroidx/d/c/a;->m:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/d/c/a;->m:I

    .line 134
    iget p1, p0, Landroidx/d/c/a;->m:I

    iget-object p2, p0, Landroidx/d/c/a;->i:[I

    array-length p2, p2

    if-lt p1, p2, :cond_1

    .line 135
    iput-boolean v1, p0, Landroidx/d/c/a;->n:Z

    .line 136
    iget-object p1, p0, Landroidx/d/c/a;->i:[I

    array-length p1, p1

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/d/c/a;->m:I

    :cond_1
    return-void

    .line 141
    :cond_2
    iget v0, p0, Landroidx/d/c/a;->l:I

    move v4, v2

    move v5, v3

    :goto_0
    if-eq v0, v3, :cond_5

    .line 144
    iget v6, p0, Landroidx/d/c/a;->b:I

    if-ge v4, v6, :cond_5

    .line 145
    iget-object v6, p0, Landroidx/d/c/a;->i:[I

    aget v6, v6, v0

    iget v7, p1, Landroidx/d/c/i;->k:I

    if-ne v6, v7, :cond_3

    .line 146
    iget-object p0, p0, Landroidx/d/c/a;->k:[F

    aput p2, p0, v0

    return-void

    .line 149
    :cond_3
    iget-object v6, p0, Landroidx/d/c/a;->i:[I

    aget v6, v6, v0

    iget v7, p1, Landroidx/d/c/i;->k:I

    if-ge v6, v7, :cond_4

    move v5, v0

    .line 152
    :cond_4
    iget-object v6, p0, Landroidx/d/c/a;->j:[I

    aget v0, v6, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    :cond_5
    iget v0, p0, Landroidx/d/c/a;->m:I

    add-int/2addr v0, v1

    .line 159
    iget-boolean v4, p0, Landroidx/d/c/a;->n:Z

    if-eqz v4, :cond_7

    .line 162
    iget-object v0, p0, Landroidx/d/c/a;->i:[I

    iget v4, p0, Landroidx/d/c/a;->m:I

    aget v0, v0, v4

    if-ne v0, v3, :cond_6

    .line 163
    iget v0, p0, Landroidx/d/c/a;->m:I

    goto :goto_1

    .line 165
    :cond_6
    iget-object v0, p0, Landroidx/d/c/a;->i:[I

    array-length v0, v0

    .line 168
    :cond_7
    :goto_1
    iget-object v4, p0, Landroidx/d/c/a;->i:[I

    array-length v4, v4

    if-lt v0, v4, :cond_9

    .line 169
    iget v4, p0, Landroidx/d/c/a;->b:I

    iget-object v6, p0, Landroidx/d/c/a;->i:[I

    array-length v6, v6

    if-ge v4, v6, :cond_9

    move v4, v2

    .line 171
    :goto_2
    iget-object v6, p0, Landroidx/d/c/a;->i:[I

    array-length v6, v6

    if-ge v4, v6, :cond_9

    .line 172
    iget-object v6, p0, Landroidx/d/c/a;->i:[I

    aget v6, v6, v4

    if-ne v6, v3, :cond_8

    move v0, v4

    goto :goto_3

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 180
    :cond_9
    :goto_3
    iget-object v4, p0, Landroidx/d/c/a;->i:[I

    array-length v4, v4

    if-lt v0, v4, :cond_a

    .line 181
    iget-object v0, p0, Landroidx/d/c/a;->i:[I

    array-length v0, v0

    .line 182
    iget v4, p0, Landroidx/d/c/a;->g:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroidx/d/c/a;->g:I

    .line 183
    iput-boolean v2, p0, Landroidx/d/c/a;->n:Z

    add-int/lit8 v2, v0, -0x1

    .line 184
    iput v2, p0, Landroidx/d/c/a;->m:I

    .line 185
    iget-object v2, p0, Landroidx/d/c/a;->k:[F

    iget v4, p0, Landroidx/d/c/a;->g:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v2

    iput-object v2, p0, Landroidx/d/c/a;->k:[F

    .line 186
    iget-object v2, p0, Landroidx/d/c/a;->i:[I

    iget v4, p0, Landroidx/d/c/a;->g:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/d/c/a;->i:[I

    .line 187
    iget-object v2, p0, Landroidx/d/c/a;->j:[I

    iget v4, p0, Landroidx/d/c/a;->g:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iput-object v2, p0, Landroidx/d/c/a;->j:[I

    .line 191
    :cond_a
    iget-object v2, p0, Landroidx/d/c/a;->i:[I

    iget v4, p1, Landroidx/d/c/i;->k:I

    aput v4, v2, v0

    .line 192
    iget-object v2, p0, Landroidx/d/c/a;->k:[F

    aput p2, v2, v0

    if-eq v5, v3, :cond_b

    .line 194
    iget-object p2, p0, Landroidx/d/c/a;->j:[I

    iget-object v2, p0, Landroidx/d/c/a;->j:[I

    aget v2, v2, v5

    aput v2, p2, v0

    .line 195
    iget-object p2, p0, Landroidx/d/c/a;->j:[I

    aput v0, p2, v5

    goto :goto_4

    .line 197
    :cond_b
    iget-object p2, p0, Landroidx/d/c/a;->j:[I

    iget v2, p0, Landroidx/d/c/a;->l:I

    aput v2, p2, v0

    .line 198
    iput v0, p0, Landroidx/d/c/a;->l:I

    .line 200
    :goto_4
    iget p2, p1, Landroidx/d/c/i;->v:I

    add-int/2addr p2, v1

    iput p2, p1, Landroidx/d/c/i;->v:I

    .line 201
    iget-object p2, p0, Landroidx/d/c/a;->f:Landroidx/d/c/b;

    invoke-virtual {p1, p2}, Landroidx/d/c/i;->a(Landroidx/d/c/b;)V

    .line 202
    iget p1, p0, Landroidx/d/c/a;->b:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/d/c/a;->b:I

    .line 203
    iget-boolean p1, p0, Landroidx/d/c/a;->n:Z

    if-nez p1, :cond_c

    .line 205
    iget p1, p0, Landroidx/d/c/a;->m:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/d/c/a;->m:I

    .line 207
    :cond_c
    iget p1, p0, Landroidx/d/c/a;->b:I

    iget-object p2, p0, Landroidx/d/c/a;->i:[I

    array-length p2, p2

    if-lt p1, p2, :cond_d

    .line 208
    iput-boolean v1, p0, Landroidx/d/c/a;->n:Z

    .line 210
    :cond_d
    iget p1, p0, Landroidx/d/c/a;->m:I

    iget-object p2, p0, Landroidx/d/c/a;->i:[I

    array-length p2, p2

    if-lt p1, p2, :cond_e

    .line 211
    iput-boolean v1, p0, Landroidx/d/c/a;->n:Z

    .line 212
    iget-object p1, p0, Landroidx/d/c/a;->i:[I

    array-length p1, p1

    sub-int/2addr p1, v1

    iput p1, p0, Landroidx/d/c/a;->m:I

    :cond_e
    return-void
.end method

.method public a(Landroidx/d/c/i;FZ)V
    .locals 8

    .line 226
    sget v0, Landroidx/d/c/a;->o:F

    neg-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    sget v0, Landroidx/d/c/a;->o:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget v0, p0, Landroidx/d/c/a;->l:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 231
    iput v1, p0, Landroidx/d/c/a;->l:I

    .line 232
    iget-object p3, p0, Landroidx/d/c/a;->k:[F

    iget v0, p0, Landroidx/d/c/a;->l:I

    aput p2, p3, v0

    .line 233
    iget-object p2, p0, Landroidx/d/c/a;->i:[I

    iget p3, p0, Landroidx/d/c/a;->l:I

    iget v0, p1, Landroidx/d/c/i;->k:I

    aput v0, p2, p3

    .line 234
    iget-object p2, p0, Landroidx/d/c/a;->j:[I

    iget p3, p0, Landroidx/d/c/a;->l:I

    aput v2, p2, p3

    .line 235
    iget p2, p1, Landroidx/d/c/i;->v:I

    add-int/2addr p2, v3

    iput p2, p1, Landroidx/d/c/i;->v:I

    .line 236
    iget-object p2, p0, Landroidx/d/c/a;->f:Landroidx/d/c/b;

    invoke-virtual {p1, p2}, Landroidx/d/c/i;->a(Landroidx/d/c/b;)V

    .line 237
    iget p1, p0, Landroidx/d/c/a;->b:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/d/c/a;->b:I

    .line 238
    iget-boolean p1, p0, Landroidx/d/c/a;->n:Z

    if-nez p1, :cond_1

    .line 240
    iget p1, p0, Landroidx/d/c/a;->m:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/d/c/a;->m:I

    .line 241
    iget p1, p0, Landroidx/d/c/a;->m:I

    iget-object p2, p0, Landroidx/d/c/a;->i:[I

    array-length p2, p2

    if-lt p1, p2, :cond_1

    .line 242
    iput-boolean v3, p0, Landroidx/d/c/a;->n:Z

    .line 243
    iget-object p1, p0, Landroidx/d/c/a;->i:[I

    array-length p1, p1

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/d/c/a;->m:I

    :cond_1
    return-void

    .line 248
    :cond_2
    iget v0, p0, Landroidx/d/c/a;->l:I

    move v4, v1

    move v5, v2

    :goto_0
    if-eq v0, v2, :cond_a

    .line 251
    iget v6, p0, Landroidx/d/c/a;->b:I

    if-ge v4, v6, :cond_a

    .line 252
    iget-object v6, p0, Landroidx/d/c/a;->i:[I

    aget v6, v6, v0

    .line 253
    iget v7, p1, Landroidx/d/c/i;->k:I

    if-ne v6, v7, :cond_8

    .line 254
    iget-object v1, p0, Landroidx/d/c/a;->k:[F

    aget v1, v1, v0

    add-float/2addr v1, p2

    .line 255
    sget p2, Landroidx/d/c/a;->o:F

    neg-float p2, p2

    cmpl-float p2, v1, p2

    const/4 v2, 0x0

    if-lez p2, :cond_3

    sget p2, Landroidx/d/c/a;->o:F

    cmpg-float p2, v1, p2

    if-gez p2, :cond_3

    move v1, v2

    .line 258
    :cond_3
    iget-object p2, p0, Landroidx/d/c/a;->k:[F

    aput v1, p2, v0

    cmpl-float p2, v1, v2

    if-nez p2, :cond_7

    .line 261
    iget p2, p0, Landroidx/d/c/a;->l:I

    if-ne v0, p2, :cond_4

    .line 262
    iget-object p2, p0, Landroidx/d/c/a;->j:[I

    aget p2, p2, v0

    iput p2, p0, Landroidx/d/c/a;->l:I

    goto :goto_1

    .line 264
    :cond_4
    iget-object p2, p0, Landroidx/d/c/a;->j:[I

    iget-object v1, p0, Landroidx/d/c/a;->j:[I

    aget v1, v1, v0

    aput v1, p2, v5

    :goto_1
    if-eqz p3, :cond_5

    .line 267
    iget-object p2, p0, Landroidx/d/c/a;->f:Landroidx/d/c/b;

    invoke-virtual {p1, p2}, Landroidx/d/c/i;->b(Landroidx/d/c/b;)V

    .line 269
    :cond_5
    iget-boolean p2, p0, Landroidx/d/c/a;->n:Z

    if-eqz p2, :cond_6

    .line 271
    iput v0, p0, Landroidx/d/c/a;->m:I

    .line 273
    :cond_6
    iget p2, p1, Landroidx/d/c/i;->v:I

    sub-int/2addr p2, v3

    iput p2, p1, Landroidx/d/c/i;->v:I

    .line 274
    iget p1, p0, Landroidx/d/c/a;->b:I

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/d/c/a;->b:I

    :cond_7
    return-void

    .line 278
    :cond_8
    iget-object v6, p0, Landroidx/d/c/a;->i:[I

    aget v6, v6, v0

    iget v7, p1, Landroidx/d/c/i;->k:I

    if-ge v6, v7, :cond_9

    move v5, v0

    .line 281
    :cond_9
    iget-object v6, p0, Landroidx/d/c/a;->j:[I

    aget v0, v6, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 287
    :cond_a
    iget p3, p0, Landroidx/d/c/a;->m:I

    add-int/2addr p3, v3

    .line 288
    iget-boolean v0, p0, Landroidx/d/c/a;->n:Z

    if-eqz v0, :cond_c

    .line 291
    iget-object p3, p0, Landroidx/d/c/a;->i:[I

    iget v0, p0, Landroidx/d/c/a;->m:I

    aget p3, p3, v0

    if-ne p3, v2, :cond_b

    .line 292
    iget p3, p0, Landroidx/d/c/a;->m:I

    goto :goto_2

    .line 294
    :cond_b
    iget-object p3, p0, Landroidx/d/c/a;->i:[I

    array-length p3, p3

    .line 297
    :cond_c
    :goto_2
    iget-object v0, p0, Landroidx/d/c/a;->i:[I

    array-length v0, v0

    if-lt p3, v0, :cond_e

    .line 298
    iget v0, p0, Landroidx/d/c/a;->b:I

    iget-object v4, p0, Landroidx/d/c/a;->i:[I

    array-length v4, v4

    if-ge v0, v4, :cond_e

    move v0, v1

    .line 300
    :goto_3
    iget-object v4, p0, Landroidx/d/c/a;->i:[I

    array-length v4, v4

    if-ge v0, v4, :cond_e

    .line 301
    iget-object v4, p0, Landroidx/d/c/a;->i:[I

    aget v4, v4, v0

    if-ne v4, v2, :cond_d

    move p3, v0

    goto :goto_4

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 309
    :cond_e
    :goto_4
    iget-object v0, p0, Landroidx/d/c/a;->i:[I

    array-length v0, v0

    if-lt p3, v0, :cond_f

    .line 310
    iget-object p3, p0, Landroidx/d/c/a;->i:[I

    array-length p3, p3

    .line 311
    iget v0, p0, Landroidx/d/c/a;->g:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/d/c/a;->g:I

    .line 312
    iput-boolean v1, p0, Landroidx/d/c/a;->n:Z

    add-int/lit8 v0, p3, -0x1

    .line 313
    iput v0, p0, Landroidx/d/c/a;->m:I

    .line 314
    iget-object v0, p0, Landroidx/d/c/a;->k:[F

    iget v1, p0, Landroidx/d/c/a;->g:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/d/c/a;->k:[F

    .line 315
    iget-object v0, p0, Landroidx/d/c/a;->i:[I

    iget v1, p0, Landroidx/d/c/a;->g:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/d/c/a;->i:[I

    .line 316
    iget-object v0, p0, Landroidx/d/c/a;->j:[I

    iget v1, p0, Landroidx/d/c/a;->g:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/d/c/a;->j:[I

    .line 320
    :cond_f
    iget-object v0, p0, Landroidx/d/c/a;->i:[I

    iget v1, p1, Landroidx/d/c/i;->k:I

    aput v1, v0, p3

    .line 321
    iget-object v0, p0, Landroidx/d/c/a;->k:[F

    aput p2, v0, p3

    if-eq v5, v2, :cond_10

    .line 323
    iget-object p2, p0, Landroidx/d/c/a;->j:[I

    iget-object v0, p0, Landroidx/d/c/a;->j:[I

    aget v0, v0, v5

    aput v0, p2, p3

    .line 324
    iget-object p2, p0, Landroidx/d/c/a;->j:[I

    aput p3, p2, v5

    goto :goto_5

    .line 326
    :cond_10
    iget-object p2, p0, Landroidx/d/c/a;->j:[I

    iget v0, p0, Landroidx/d/c/a;->l:I

    aput v0, p2, p3

    .line 327
    iput p3, p0, Landroidx/d/c/a;->l:I

    .line 329
    :goto_5
    iget p2, p1, Landroidx/d/c/i;->v:I

    add-int/2addr p2, v3

    iput p2, p1, Landroidx/d/c/i;->v:I

    .line 330
    iget-object p2, p0, Landroidx/d/c/a;->f:Landroidx/d/c/b;

    invoke-virtual {p1, p2}, Landroidx/d/c/i;->a(Landroidx/d/c/b;)V

    .line 331
    iget p1, p0, Landroidx/d/c/a;->b:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/d/c/a;->b:I

    .line 332
    iget-boolean p1, p0, Landroidx/d/c/a;->n:Z

    if-nez p1, :cond_11

    .line 334
    iget p1, p0, Landroidx/d/c/a;->m:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/d/c/a;->m:I

    .line 336
    :cond_11
    iget p1, p0, Landroidx/d/c/a;->m:I

    iget-object p2, p0, Landroidx/d/c/a;->i:[I

    array-length p2, p2

    if-lt p1, p2, :cond_12

    .line 337
    iput-boolean v3, p0, Landroidx/d/c/a;->n:Z

    .line 338
    iget-object p1, p0, Landroidx/d/c/a;->i:[I

    array-length p1, p1

    sub-int/2addr p1, v3

    iput p1, p0, Landroidx/d/c/a;->m:I

    :cond_12
    return-void
.end method

.method public a(Landroidx/d/c/i;)Z
    .locals 6

    .line 432
    iget v0, p0, Landroidx/d/c/a;->l:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 435
    :cond_0
    iget v0, p0, Landroidx/d/c/a;->l:I

    move v3, v2

    :goto_0
    if-eq v0, v1, :cond_2

    .line 437
    iget v4, p0, Landroidx/d/c/a;->b:I

    if-ge v3, v4, :cond_2

    .line 438
    iget-object v4, p0, Landroidx/d/c/a;->i:[I

    aget v4, v4, v0

    iget v5, p1, Landroidx/d/c/i;->k:I

    if-ne v4, v5, :cond_1

    const/4 p0, 0x1

    return p0

    .line 441
    :cond_1
    iget-object v4, p0, Landroidx/d/c/a;->j:[I

    aget v0, v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public final b(I)F
    .locals 0

    .line 516
    iget-object p0, p0, Landroidx/d/c/a;->k:[F

    aget p0, p0, p1

    return p0
.end method

.method public b(Landroidx/d/c/i;)I
    .locals 5

    .line 448
    iget v0, p0, Landroidx/d/c/a;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 451
    :cond_0
    iget v0, p0, Landroidx/d/c/a;->l:I

    const/4 v2, 0x0

    :goto_0
    if-eq v0, v1, :cond_2

    .line 453
    iget v3, p0, Landroidx/d/c/a;->b:I

    if-ge v2, v3, :cond_2

    .line 454
    iget-object v3, p0, Landroidx/d/c/a;->i:[I

    aget v3, v3, v0

    iget v4, p1, Landroidx/d/c/i;->k:I

    if-ne v3, v4, :cond_1

    return v0

    .line 457
    :cond_1
    iget-object v3, p0, Landroidx/d/c/a;->j:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method b()Z
    .locals 5

    .line 470
    iget v0, p0, Landroidx/d/c/a;->l:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 472
    iget v3, p0, Landroidx/d/c/a;->b:I

    if-ge v2, v3, :cond_1

    .line 473
    iget-object v3, p0, Landroidx/d/c/a;->k:[F

    aget v3, v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    const/4 p0, 0x1

    return p0

    .line 476
    :cond_0
    iget-object v3, p0, Landroidx/d/c/a;->j:[I

    aget v0, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final c(Landroidx/d/c/i;)F
    .locals 4

    .line 593
    iget v0, p0, Landroidx/d/c/a;->l:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 595
    iget v2, p0, Landroidx/d/c/a;->b:I

    if-ge v1, v2, :cond_1

    .line 596
    iget-object v2, p0, Landroidx/d/c/a;->i:[I

    aget v2, v2, v0

    iget v3, p1, Landroidx/d/c/i;->k:I

    if-ne v2, v3, :cond_0

    .line 597
    iget-object p0, p0, Landroidx/d/c/a;->k:[F

    aget p0, p0, v0

    return p0

    .line 599
    :cond_0
    iget-object v2, p0, Landroidx/d/c/a;->j:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final c(I)I
    .locals 0

    .line 520
    iget-object p0, p0, Landroidx/d/c/a;->j:[I

    aget p0, p0, p1

    return p0
.end method

.method public c()V
    .locals 5

    .line 485
    iget v0, p0, Landroidx/d/c/a;->l:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 487
    iget v2, p0, Landroidx/d/c/a;->b:I

    if-ge v1, v2, :cond_0

    .line 488
    iget-object v2, p0, Landroidx/d/c/a;->k:[F

    aget v3, v2, v0

    const/high16 v4, -0x40800000    # -1.0f

    mul-float/2addr v3, v4

    aput v3, v2, v0

    .line 489
    iget-object v2, p0, Landroidx/d/c/a;->j:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d()I
    .locals 0

    .line 508
    iget p0, p0, Landroidx/d/c/a;->l:I

    return p0
.end method

.method public d(I)Landroidx/d/c/i;
    .locals 3

    .line 558
    iget v0, p0, Landroidx/d/c/a;->l:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 560
    iget v2, p0, Landroidx/d/c/a;->b:I

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    .line 562
    iget-object p1, p0, Landroidx/d/c/a;->c:Landroidx/d/c/c;

    iget-object p1, p1, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    iget-object p0, p0, Landroidx/d/c/a;->i:[I

    aget p0, p0, v0

    aget-object p0, p1, p0

    return-object p0

    .line 564
    :cond_0
    iget-object v2, p0, Landroidx/d/c/a;->j:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public e(I)F
    .locals 3

    .line 576
    iget v0, p0, Landroidx/d/c/a;->l:I

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 578
    iget v2, p0, Landroidx/d/c/a;->b:I

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    .line 580
    iget-object p0, p0, Landroidx/d/c/a;->k:[F

    aget p0, p0, v0

    return p0

    .line 582
    :cond_0
    iget-object v2, p0, Landroidx/d/c/a;->j:[I

    aget v0, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public e()I
    .locals 0

    .line 509
    iget p0, p0, Landroidx/d/c/a;->b:I

    return p0
.end method

.method f()Landroidx/d/c/i;
    .locals 6

    .line 529
    iget-object v0, p0, Landroidx/d/c/a;->h:Landroidx/d/c/i;

    if-nez v0, :cond_3

    .line 531
    iget v0, p0, Landroidx/d/c/a;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 534
    iget v3, p0, Landroidx/d/c/a;->b:I

    if-ge v1, v3, :cond_2

    .line 535
    iget-object v3, p0, Landroidx/d/c/a;->k:[F

    aget v3, v3, v0

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 539
    iget-object v3, p0, Landroidx/d/c/a;->c:Landroidx/d/c/c;

    iget-object v3, v3, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    iget-object v4, p0, Landroidx/d/c/a;->i:[I

    aget v4, v4, v0

    aget-object v3, v3, v4

    if-eqz v2, :cond_0

    .line 540
    iget v4, v2, Landroidx/d/c/i;->m:I

    iget v5, v3, Landroidx/d/c/i;->m:I

    if-ge v4, v5, :cond_1

    :cond_0
    move-object v2, v3

    .line 544
    :cond_1
    iget-object v3, p0, Landroidx/d/c/a;->j:[I

    aget v0, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v2

    .line 548
    :cond_3
    iget-object p0, p0, Landroidx/d/c/a;->h:Landroidx/d/c/i;

    return-object p0
.end method

.method public g()I
    .locals 0

    .line 608
    iget-object p0, p0, Landroidx/d/c/a;->i:[I

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x4

    mul-int/lit8 p0, p0, 0x3

    add-int/lit8 p0, p0, 0x0

    add-int/lit8 p0, p0, 0x24

    return p0
.end method

.method public h()V
    .locals 5

    .line 614
    iget v0, p0, Landroidx/d/c/a;->b:I

    .line 615
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "{ "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 617
    invoke-virtual {p0, v1}, Landroidx/d/c/a;->d(I)Landroidx/d/c/i;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 621
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroidx/d/c/a;->e(I)F

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, " }"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 634
    iget v1, p0, Landroidx/d/c/a;->l:I

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 636
    iget v3, p0, Landroidx/d/c/a;->b:I

    if-ge v2, v3, :cond_0

    .line 637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 638
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/d/c/a;->k:[F

    aget v0, v0, v1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/d/c/a;->c:Landroidx/d/c/c;

    iget-object v0, v0, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    iget-object v4, p0, Landroidx/d/c/a;->i:[I

    aget v4, v4, v1

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 640
    iget-object v3, p0, Landroidx/d/c/a;->j:[I

    aget v1, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
