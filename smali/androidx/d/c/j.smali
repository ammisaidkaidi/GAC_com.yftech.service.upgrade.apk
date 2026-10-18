.class public Landroidx/d/c/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/d/c/b$a;


# static fields
.field private static final j:Z = false

.field private static final k:Z = true

.field private static l:F = 0.001f


# instance fields
.field a:[I

.field b:[I

.field c:[I

.field d:[F

.field e:[I

.field f:[I

.field g:I

.field h:I

.field protected final i:Landroidx/d/c/c;

.field private final m:I

.field private n:I

.field private o:I

.field private final p:Landroidx/d/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroidx/d/c/b;Landroidx/d/c/c;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Landroidx/d/c/j;->m:I

    const/16 v1, 0x10

    .line 30
    iput v1, p0, Landroidx/d/c/j;->n:I

    .line 31
    iput v1, p0, Landroidx/d/c/j;->o:I

    .line 33
    iget v1, p0, Landroidx/d/c/j;->n:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/d/c/j;->a:[I

    .line 34
    iget v1, p0, Landroidx/d/c/j;->n:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/d/c/j;->b:[I

    .line 36
    iget v1, p0, Landroidx/d/c/j;->n:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/d/c/j;->c:[I

    .line 37
    iget v1, p0, Landroidx/d/c/j;->n:I

    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/d/c/j;->d:[F

    .line 38
    iget v1, p0, Landroidx/d/c/j;->n:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/d/c/j;->e:[I

    .line 39
    iget v1, p0, Landroidx/d/c/j;->n:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroidx/d/c/j;->f:[I

    const/4 v1, 0x0

    .line 40
    iput v1, p0, Landroidx/d/c/j;->g:I

    .line 41
    iput v0, p0, Landroidx/d/c/j;->h:I

    .line 47
    iput-object p1, p0, Landroidx/d/c/j;->p:Landroidx/d/c/b;

    .line 48
    iput-object p2, p0, Landroidx/d/c/j;->i:Landroidx/d/c/c;

    .line 49
    invoke-virtual {p0}, Landroidx/d/c/j;->a()V

    return-void
.end method

.method private a(ILandroidx/d/c/i;F)V
    .locals 2

    .line 289
    iget-object v0, p0, Landroidx/d/c/j;->c:[I

    iget v1, p2, Landroidx/d/c/i;->k:I

    aput v1, v0, p1

    .line 290
    iget-object v0, p0, Landroidx/d/c/j;->d:[F

    aput p3, v0, p1

    .line 291
    iget-object p3, p0, Landroidx/d/c/j;->e:[I

    const/4 v0, -0x1

    aput v0, p3, p1

    .line 292
    iget-object p3, p0, Landroidx/d/c/j;->f:[I

    aput v0, p3, p1

    .line 293
    iget-object p1, p0, Landroidx/d/c/j;->p:Landroidx/d/c/b;

    invoke-virtual {p2, p1}, Landroidx/d/c/i;->a(Landroidx/d/c/b;)V

    .line 294
    iget p1, p2, Landroidx/d/c/i;->v:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p2, Landroidx/d/c/i;->v:I

    .line 295
    iget p1, p0, Landroidx/d/c/j;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/d/c/j;->g:I

    return-void
.end method

.method private a(Landroidx/d/c/i;I)V
    .locals 2

    .line 216
    iget p1, p1, Landroidx/d/c/i;->k:I

    iget v0, p0, Landroidx/d/c/j;->o:I

    rem-int/2addr p1, v0

    .line 217
    iget-object v0, p0, Landroidx/d/c/j;->a:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Landroidx/d/c/j;->a:[I

    aput p2, v0, p1

    goto :goto_1

    .line 224
    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/d/c/j;->b:[I

    aget p1, p1, v0

    if-eq p1, v1, :cond_1

    .line 225
    iget-object p1, p0, Landroidx/d/c/j;->b:[I

    aget v0, p1, v0

    goto :goto_0

    .line 227
    :cond_1
    iget-object p1, p0, Landroidx/d/c/j;->b:[I

    aput p2, p1, v0

    .line 232
    :goto_1
    iget-object p0, p0, Landroidx/d/c/j;->b:[I

    aput v1, p0, p2

    return-void
.end method

.method private b()V
    .locals 4

    .line 199
    iget v0, p0, Landroidx/d/c/j;->n:I

    mul-int/lit8 v0, v0, 0x2

    .line 200
    iget-object v1, p0, Landroidx/d/c/j;->c:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/d/c/j;->c:[I

    .line 201
    iget-object v1, p0, Landroidx/d/c/j;->d:[F

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    iput-object v1, p0, Landroidx/d/c/j;->d:[F

    .line 202
    iget-object v1, p0, Landroidx/d/c/j;->e:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/d/c/j;->e:[I

    .line 203
    iget-object v1, p0, Landroidx/d/c/j;->f:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/d/c/j;->f:[I

    .line 204
    iget-object v1, p0, Landroidx/d/c/j;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, p0, Landroidx/d/c/j;->b:[I

    .line 205
    iget v1, p0, Landroidx/d/c/j;->n:I

    :goto_0
    if-ge v1, v0, :cond_0

    .line 206
    iget-object v2, p0, Landroidx/d/c/j;->c:[I

    const/4 v3, -0x1

    aput v3, v2, v1

    .line 207
    iget-object v2, p0, Landroidx/d/c/j;->b:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_0
    iput v0, p0, Landroidx/d/c/j;->n:I

    return-void
.end method

.method private b(ILandroidx/d/c/i;F)V
    .locals 3

    .line 308
    invoke-direct {p0}, Landroidx/d/c/j;->f()I

    move-result v0

    .line 309
    invoke-direct {p0, v0, p2, p3}, Landroidx/d/c/j;->a(ILandroidx/d/c/i;F)V

    const/4 p3, -0x1

    if-eq p1, p3, :cond_0

    .line 311
    iget-object v1, p0, Landroidx/d/c/j;->e:[I

    aput p1, v1, v0

    .line 312
    iget-object v1, p0, Landroidx/d/c/j;->f:[I

    iget-object v2, p0, Landroidx/d/c/j;->f:[I

    aget v2, v2, p1

    aput v2, v1, v0

    .line 313
    iget-object v1, p0, Landroidx/d/c/j;->f:[I

    aput v0, v1, p1

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Landroidx/d/c/j;->e:[I

    aput p3, p1, v0

    .line 316
    iget p1, p0, Landroidx/d/c/j;->g:I

    if-lez p1, :cond_1

    .line 317
    iget-object p1, p0, Landroidx/d/c/j;->f:[I

    iget v1, p0, Landroidx/d/c/j;->h:I

    aput v1, p1, v0

    .line 318
    iput v0, p0, Landroidx/d/c/j;->h:I

    goto :goto_0

    .line 320
    :cond_1
    iget-object p1, p0, Landroidx/d/c/j;->f:[I

    aput p3, p1, v0

    .line 323
    :goto_0
    iget-object p1, p0, Landroidx/d/c/j;->f:[I

    aget p1, p1, v0

    if-eq p1, p3, :cond_2

    .line 324
    iget-object p1, p0, Landroidx/d/c/j;->e:[I

    iget-object p3, p0, Landroidx/d/c/j;->f:[I

    aget p3, p3, v0

    aput v0, p1, p3

    .line 326
    :cond_2
    invoke-direct {p0, p2, v0}, Landroidx/d/c/j;->a(Landroidx/d/c/i;I)V

    return-void
.end method

.method private d()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 239
    :goto_0
    iget v2, p0, Landroidx/d/c/j;->o:I

    if-ge v1, v2, :cond_3

    .line 240
    iget-object v2, p0, Landroidx/d/c/j;->a:[I

    aget v2, v2, v1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hash ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] => "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    iget-object v4, p0, Landroidx/d/c/j;->a:[I

    aget v4, v4, v1

    move v5, v4

    move-object v4, v2

    move v2, v0

    :goto_1
    if-nez v2, :cond_1

    .line 245
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroidx/d/c/j;->c:[I

    aget v4, v4, v5

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 246
    iget-object v6, p0, Landroidx/d/c/j;->b:[I

    aget v6, v6, v5

    if-eq v6, v3, :cond_0

    .line 247
    iget-object v6, p0, Landroidx/d/c/j;->b:[I

    aget v5, v6, v5

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_1

    .line 252
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private d(Landroidx/d/c/i;)V
    .locals 4

    .line 260
    iget v0, p1, Landroidx/d/c/i;->k:I

    iget v1, p0, Landroidx/d/c/j;->o:I

    rem-int/2addr v0, v1

    .line 261
    iget-object v1, p0, Landroidx/d/c/j;->a:[I

    aget v1, v1, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 268
    :cond_0
    iget p1, p1, Landroidx/d/c/i;->k:I

    .line 270
    iget-object v3, p0, Landroidx/d/c/j;->c:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_1

    .line 271
    iget-object p1, p0, Landroidx/d/c/j;->a:[I

    iget-object v3, p0, Landroidx/d/c/j;->b:[I

    aget v3, v3, v1

    aput v3, p1, v0

    .line 272
    iget-object p0, p0, Landroidx/d/c/j;->b:[I

    aput v2, p0, v1

    goto :goto_1

    .line 274
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/d/c/j;->b:[I

    aget v0, v0, v1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Landroidx/d/c/j;->c:[I

    iget-object v3, p0, Landroidx/d/c/j;->b:[I

    aget v3, v3, v1

    aget v0, v0, v3

    if-eq v0, p1, :cond_2

    .line 275
    iget-object v0, p0, Landroidx/d/c/j;->b:[I

    aget v1, v0, v1

    goto :goto_0

    .line 277
    :cond_2
    iget-object v0, p0, Landroidx/d/c/j;->b:[I

    aget v0, v0, v1

    if-eq v0, v2, :cond_3

    .line 278
    iget-object v3, p0, Landroidx/d/c/j;->c:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_3

    .line 279
    iget-object p1, p0, Landroidx/d/c/j;->b:[I

    iget-object v3, p0, Landroidx/d/c/j;->b:[I

    aget v3, v3, v0

    aput v3, p1, v1

    .line 280
    iget-object p0, p0, Landroidx/d/c/j;->b:[I

    aput v2, p0, v0

    :cond_3
    :goto_1
    return-void
.end method

.method private f()I
    .locals 3

    const/4 v0, 0x0

    .line 299
    :goto_0
    iget v1, p0, Landroidx/d/c/j;->n:I

    const/4 v2, -0x1

    if-ge v0, v1, :cond_1

    .line 300
    iget-object v1, p0, Landroidx/d/c/j;->c:[I

    aget v1, v1, v0

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public a(Landroidx/d/c/b;Z)F
    .locals 7

    .line 427
    iget-object v0, p1, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    invoke-virtual {p0, v0}, Landroidx/d/c/j;->c(Landroidx/d/c/i;)F

    move-result v0

    .line 428
    iget-object v1, p1, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    invoke-virtual {p0, v1, p2}, Landroidx/d/c/j;->a(Landroidx/d/c/i;Z)F

    .line 439
    iget-object p1, p1, Landroidx/d/c/b;->e:Landroidx/d/c/b$a;

    check-cast p1, Landroidx/d/c/j;

    .line 440
    invoke-virtual {p1}, Landroidx/d/c/j;->e()I

    move-result v1

    .line 441
    iget v2, p1, Landroidx/d/c/j;->h:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    .line 455
    iget-object v4, p1, Landroidx/d/c/j;->c:[I

    aget v4, v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 456
    iget-object v4, p1, Landroidx/d/c/j;->d:[F

    aget v4, v4, v3

    .line 457
    iget-object v5, p0, Landroidx/d/c/j;->i:Landroidx/d/c/c;

    iget-object v5, v5, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    iget-object v6, p1, Landroidx/d/c/j;->c:[I

    aget v6, v6, v3

    aget-object v5, v5, v6

    mul-float/2addr v4, v0

    .line 458
    invoke-virtual {p0, v5, v4, p2}, Landroidx/d/c/j;->a(Landroidx/d/c/i;FZ)V

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public a(Landroidx/d/c/i;Z)F
    .locals 6

    .line 381
    invoke-virtual {p0, p1}, Landroidx/d/c/j;->b(Landroidx/d/c/i;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 385
    :cond_0
    invoke-direct {p0, p1}, Landroidx/d/c/j;->d(Landroidx/d/c/i;)V

    .line 386
    iget-object v2, p0, Landroidx/d/c/j;->d:[F

    aget v2, v2, v0

    .line 387
    iget v3, p0, Landroidx/d/c/j;->h:I

    if-ne v3, v0, :cond_1

    .line 388
    iget-object v3, p0, Landroidx/d/c/j;->f:[I

    aget v3, v3, v0

    iput v3, p0, Landroidx/d/c/j;->h:I

    .line 390
    :cond_1
    iget-object v3, p0, Landroidx/d/c/j;->c:[I

    aput v1, v3, v0

    .line 391
    iget-object v3, p0, Landroidx/d/c/j;->e:[I

    aget v3, v3, v0

    if-eq v3, v1, :cond_2

    .line 392
    iget-object v3, p0, Landroidx/d/c/j;->f:[I

    iget-object v4, p0, Landroidx/d/c/j;->e:[I

    aget v4, v4, v0

    iget-object v5, p0, Landroidx/d/c/j;->f:[I

    aget v5, v5, v0

    aput v5, v3, v4

    .line 394
    :cond_2
    iget-object v3, p0, Landroidx/d/c/j;->f:[I

    aget v3, v3, v0

    if-eq v3, v1, :cond_3

    .line 395
    iget-object v1, p0, Landroidx/d/c/j;->e:[I

    iget-object v3, p0, Landroidx/d/c/j;->f:[I

    aget v3, v3, v0

    iget-object v4, p0, Landroidx/d/c/j;->e:[I

    aget v0, v4, v0

    aput v0, v1, v3

    .line 397
    :cond_3
    iget v0, p0, Landroidx/d/c/j;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/d/c/j;->g:I

    .line 398
    iget v0, p1, Landroidx/d/c/i;->v:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Landroidx/d/c/i;->v:I

    if-eqz p2, :cond_4

    .line 400
    iget-object p0, p0, Landroidx/d/c/j;->p:Landroidx/d/c/b;

    invoke-virtual {p1, p0}, Landroidx/d/c/i;->b(Landroidx/d/c/b;)V

    :cond_4
    return v2
.end method

.method public a()V
    .locals 5

    .line 180
    iget v0, p0, Landroidx/d/c/j;->g:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 182
    invoke-virtual {p0, v2}, Landroidx/d/c/j;->d(I)Landroidx/d/c/i;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 184
    iget-object v4, p0, Landroidx/d/c/j;->p:Landroidx/d/c/b;

    invoke-virtual {v3, v4}, Landroidx/d/c/i;->b(Landroidx/d/c/b;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 187
    :goto_1
    iget v2, p0, Landroidx/d/c/j;->n:I

    const/4 v3, -0x1

    if-ge v0, v2, :cond_2

    .line 188
    iget-object v2, p0, Landroidx/d/c/j;->c:[I

    aput v3, v2, v0

    .line 189
    iget-object v2, p0, Landroidx/d/c/j;->b:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 191
    :goto_2
    iget v2, p0, Landroidx/d/c/j;->o:I

    if-ge v0, v2, :cond_3

    .line 192
    iget-object v2, p0, Landroidx/d/c/j;->a:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 194
    :cond_3
    iput v1, p0, Landroidx/d/c/j;->g:I

    .line 195
    iput v3, p0, Landroidx/d/c/j;->h:I

    return-void
.end method

.method public a(F)V
    .locals 5

    .line 481
    iget v0, p0, Landroidx/d/c/j;->g:I

    .line 482
    iget v1, p0, Landroidx/d/c/j;->h:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 484
    iget-object v3, p0, Landroidx/d/c/j;->d:[F

    aget v4, v3, v1

    div-float/2addr v4, p1

    aput v4, v3, v1

    .line 485
    iget-object v3, p0, Landroidx/d/c/j;->f:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public a(Landroidx/d/c/i;F)V
    .locals 7

    .line 334
    sget v0, Landroidx/d/c/j;->l:F

    neg-float v0, v0

    cmpl-float v0, p2, v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    sget v0, Landroidx/d/c/j;->l:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 335
    invoke-virtual {p0, p1, v1}, Landroidx/d/c/j;->a(Landroidx/d/c/i;Z)F

    return-void

    .line 338
    :cond_0
    iget v0, p0, Landroidx/d/c/j;->g:I

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 339
    invoke-direct {p0, v2, p1, p2}, Landroidx/d/c/j;->a(ILandroidx/d/c/i;F)V

    .line 340
    invoke-direct {p0, p1, v2}, Landroidx/d/c/j;->a(Landroidx/d/c/i;I)V

    .line 341
    iput v2, p0, Landroidx/d/c/j;->h:I

    goto :goto_2

    .line 343
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/d/c/j;->b(Landroidx/d/c/i;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 345
    iget-object p0, p0, Landroidx/d/c/j;->d:[F

    aput p2, p0, v0

    goto :goto_2

    .line 347
    :cond_2
    iget v0, p0, Landroidx/d/c/j;->g:I

    add-int/2addr v0, v1

    iget v1, p0, Landroidx/d/c/j;->n:I

    if-lt v0, v1, :cond_3

    .line 348
    invoke-direct {p0}, Landroidx/d/c/j;->b()V

    .line 350
    :cond_3
    iget v0, p0, Landroidx/d/c/j;->g:I

    .line 352
    iget v1, p0, Landroidx/d/c/j;->h:I

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_7

    .line 354
    iget-object v5, p0, Landroidx/d/c/j;->c:[I

    aget v5, v5, v1

    iget v6, p1, Landroidx/d/c/i;->k:I

    if-ne v5, v6, :cond_4

    .line 355
    iget-object p0, p0, Landroidx/d/c/j;->d:[F

    aput p2, p0, v1

    return-void

    .line 358
    :cond_4
    iget-object v5, p0, Landroidx/d/c/j;->c:[I

    aget v5, v5, v1

    iget v6, p1, Landroidx/d/c/i;->k:I

    if-ge v5, v6, :cond_5

    move v4, v1

    .line 361
    :cond_5
    iget-object v5, p0, Landroidx/d/c/j;->f:[I

    aget v1, v5, v1

    if-ne v1, v3, :cond_6

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    :cond_7
    :goto_1
    invoke-direct {p0, v4, p1, p2}, Landroidx/d/c/j;->b(ILandroidx/d/c/i;F)V

    :goto_2
    return-void
.end method

.method public a(Landroidx/d/c/i;FZ)V
    .locals 3

    .line 410
    sget v0, Landroidx/d/c/j;->l:F

    neg-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    sget v0, Landroidx/d/c/j;->l:F

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    return-void

    .line 413
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/d/c/j;->b(Landroidx/d/c/i;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 415
    invoke-virtual {p0, p1, p2}, Landroidx/d/c/j;->a(Landroidx/d/c/i;F)V

    goto :goto_0

    .line 417
    :cond_1
    iget-object v1, p0, Landroidx/d/c/j;->d:[F

    aget v2, v1, v0

    add-float/2addr v2, p2

    aput v2, v1, v0

    .line 418
    iget-object p2, p0, Landroidx/d/c/j;->d:[F

    aget p2, p2, v0

    sget v1, Landroidx/d/c/j;->l:F

    neg-float v1, v1

    cmpl-float p2, p2, v1

    if-lez p2, :cond_2

    iget-object p2, p0, Landroidx/d/c/j;->d:[F

    aget p2, p2, v0

    sget v1, Landroidx/d/c/j;->l:F

    cmpg-float p2, p2, v1

    if-gez p2, :cond_2

    .line 419
    iget-object p2, p0, Landroidx/d/c/j;->d:[F

    const/4 v1, 0x0

    aput v1, p2, v0

    .line 420
    invoke-virtual {p0, p1, p3}, Landroidx/d/c/j;->a(Landroidx/d/c/i;Z)F

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroidx/d/c/i;)Z
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Landroidx/d/c/j;->b(Landroidx/d/c/i;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(Landroidx/d/c/i;)I
    .locals 4

    .line 99
    iget v0, p0, Landroidx/d/c/j;->g:I

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    goto :goto_1

    .line 102
    :cond_0
    iget p1, p1, Landroidx/d/c/i;->k:I

    .line 103
    iget v0, p0, Landroidx/d/c/j;->o:I

    rem-int v0, p1, v0

    .line 104
    iget-object v2, p0, Landroidx/d/c/j;->a:[I

    aget v0, v2, v0

    if-ne v0, v1, :cond_1

    return v1

    .line 108
    :cond_1
    iget-object v2, p0, Landroidx/d/c/j;->c:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    return v0

    .line 111
    :cond_2
    :goto_0
    iget-object v2, p0, Landroidx/d/c/j;->b:[I

    aget v2, v2, v0

    if-eq v2, v1, :cond_3

    iget-object v2, p0, Landroidx/d/c/j;->c:[I

    iget-object v3, p0, Landroidx/d/c/j;->b:[I

    aget v3, v3, v0

    aget v2, v2, v3

    if-eq v2, p1, :cond_3

    .line 112
    iget-object v2, p0, Landroidx/d/c/j;->b:[I

    aget v0, v2, v0

    goto :goto_0

    .line 114
    :cond_3
    iget-object v2, p0, Landroidx/d/c/j;->b:[I

    aget v2, v2, v0

    if-ne v2, v1, :cond_4

    return v1

    .line 117
    :cond_4
    iget-object v2, p0, Landroidx/d/c/j;->c:[I

    iget-object v3, p0, Landroidx/d/c/j;->b:[I

    aget v3, v3, v0

    aget v2, v2, v3

    if-ne v2, p1, :cond_5

    .line 118
    iget-object p0, p0, Landroidx/d/c/j;->b:[I

    aget p0, p0, v0

    return p0

    :cond_5
    return v1

    :cond_6
    :goto_1
    return v1
.end method

.method public c(Landroidx/d/c/i;)F
    .locals 1

    .line 125
    invoke-virtual {p0, p1}, Landroidx/d/c/j;->b(Landroidx/d/c/i;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 127
    iget-object p0, p0, Landroidx/d/c/j;->d:[F

    aget p0, p0, p1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c()V
    .locals 6

    .line 468
    iget v0, p0, Landroidx/d/c/j;->g:I

    .line 469
    iget v1, p0, Landroidx/d/c/j;->h:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 471
    iget-object v3, p0, Landroidx/d/c/j;->d:[F

    aget v4, v3, v1

    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v4, v5

    aput v4, v3, v1

    .line 472
    iget-object v3, p0, Landroidx/d/c/j;->f:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public d(I)Landroidx/d/c/i;
    .locals 6

    .line 59
    iget v0, p0, Landroidx/d/c/j;->g:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 63
    :cond_0
    iget v2, p0, Landroidx/d/c/j;->h:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    const/4 v4, -0x1

    if-ne v3, p1, :cond_1

    if-eq v2, v4, :cond_1

    .line 66
    iget-object p1, p0, Landroidx/d/c/j;->i:Landroidx/d/c/c;

    iget-object p1, p1, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    iget-object p0, p0, Landroidx/d/c/j;->c:[I

    aget p0, p0, v2

    aget-object p0, p1, p0

    return-object p0

    .line 68
    :cond_1
    iget-object v5, p0, Landroidx/d/c/j;->f:[I

    aget v2, v5, v2

    if-ne v2, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public e(I)F
    .locals 4

    .line 78
    iget v0, p0, Landroidx/d/c/j;->g:I

    .line 79
    iget v1, p0, Landroidx/d/c/j;->h:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    if-ne v2, p1, :cond_0

    .line 82
    iget-object p0, p0, Landroidx/d/c/j;->d:[F

    aget p0, p0, v1

    return p0

    .line 84
    :cond_0
    iget-object v3, p0, Landroidx/d/c/j;->f:[I

    aget v1, v3, v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public e()I
    .locals 0

    .line 54
    iget p0, p0, Landroidx/d/c/j;->g:I

    return p0
.end method

.method public g()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public h()V
    .locals 5

    .line 134
    iget v0, p0, Landroidx/d/c/j;->g:I

    .line 135
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "{ "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 137
    invoke-virtual {p0, v1}, Landroidx/d/c/j;->d(I)Landroidx/d/c/i;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroidx/d/c/j;->e(I)F

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

    .line 143
    :cond_1
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, " }"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    iget v1, p0, Landroidx/d/c/j;->g:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 151
    invoke-virtual {p0, v2}, Landroidx/d/c/j;->d(I)Landroidx/d/c/i;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 155
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Landroidx/d/c/j;->e(I)F

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-virtual {p0, v3}, Landroidx/d/c/j;->b(Landroidx/d/c/i;)I

    move-result v3

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[p: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    iget-object v4, p0, Landroidx/d/c/j;->e:[I

    aget v4, v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/d/c/j;->i:Landroidx/d/c/c;

    iget-object v0, v0, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    iget-object v6, p0, Landroidx/d/c/j;->c:[I

    iget-object v7, p0, Landroidx/d/c/j;->e:[I

    aget v7, v7, v3

    aget v6, v6, v7

    aget-object v0, v0, v6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 161
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "none"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", n: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    iget-object v4, p0, Landroidx/d/c/j;->f:[I

    aget v4, v4, v3

    if-eq v4, v5, :cond_2

    .line 165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/d/c/j;->i:Landroidx/d/c/c;

    iget-object v0, v0, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    iget-object v5, p0, Landroidx/d/c/j;->c:[I

    iget-object v6, p0, Landroidx/d/c/j;->f:[I

    aget v3, v6, v3

    aget v3, v5, v3

    aget-object v0, v0, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 167
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "none"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 171
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " }"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
