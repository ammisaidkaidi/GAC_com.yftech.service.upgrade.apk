.class public Landroidx/d/c/h;
.super Landroidx/d/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/d/c/h$a;
    }
.end annotation


# static fields
.field static final i:I = -0x1

.field private static final j:F = 1.0E-4f

.field private static final k:Z = false


# instance fields
.field g:Landroidx/d/c/h$a;

.field h:Landroidx/d/c/c;

.field private l:I

.field private m:[Landroidx/d/c/i;

.field private n:[Landroidx/d/c/i;

.field private o:I


# direct methods
.method public constructor <init>(Landroidx/d/c/c;)V
    .locals 1

    .line 160
    invoke-direct {p0, p1}, Landroidx/d/c/b;-><init>(Landroidx/d/c/c;)V

    const/16 v0, 0x80

    .line 29
    iput v0, p0, Landroidx/d/c/h;->l:I

    .line 30
    iget v0, p0, Landroidx/d/c/h;->l:I

    new-array v0, v0, [Landroidx/d/c/i;

    iput-object v0, p0, Landroidx/d/c/h;->m:[Landroidx/d/c/i;

    .line 31
    iget v0, p0, Landroidx/d/c/h;->l:I

    new-array v0, v0, [Landroidx/d/c/i;

    iput-object v0, p0, Landroidx/d/c/h;->n:[Landroidx/d/c/i;

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Landroidx/d/c/h;->o:I

    .line 33
    new-instance v0, Landroidx/d/c/h$a;

    invoke-direct {v0, p0, p0}, Landroidx/d/c/h$a;-><init>(Landroidx/d/c/h;Landroidx/d/c/h;)V

    iput-object v0, p0, Landroidx/d/c/h;->g:Landroidx/d/c/h$a;

    .line 161
    iput-object p1, p0, Landroidx/d/c/h;->h:Landroidx/d/c/c;

    return-void
.end method

.method static synthetic a(Landroidx/d/c/h;Landroidx/d/c/i;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Landroidx/d/c/h;->f(Landroidx/d/c/i;)V

    return-void
.end method

.method private final e(Landroidx/d/c/i;)V
    .locals 5

    .line 203
    iget v0, p0, Landroidx/d/c/h;->o:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/d/c/h;->m:[Landroidx/d/c/i;

    array-length v2, v2

    if-le v0, v2, :cond_0

    .line 204
    iget-object v0, p0, Landroidx/d/c/h;->m:[Landroidx/d/c/i;

    iget-object v2, p0, Landroidx/d/c/h;->m:[Landroidx/d/c/i;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/d/c/i;

    iput-object v0, p0, Landroidx/d/c/h;->m:[Landroidx/d/c/i;

    .line 205
    iget-object v0, p0, Landroidx/d/c/h;->m:[Landroidx/d/c/i;

    iget-object v2, p0, Landroidx/d/c/h;->m:[Landroidx/d/c/i;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/d/c/i;

    iput-object v0, p0, Landroidx/d/c/h;->n:[Landroidx/d/c/i;

    .line 207
    :cond_0
    iget-object v0, p0, Landroidx/d/c/h;->m:[Landroidx/d/c/i;

    iget v2, p0, Landroidx/d/c/h;->o:I

    aput-object p1, v0, v2

    .line 208
    iget v0, p0, Landroidx/d/c/h;->o:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/d/c/h;->o:I

    .line 210
    iget v0, p0, Landroidx/d/c/h;->o:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Landroidx/d/c/h;->m:[Landroidx/d/c/i;

    iget v2, p0, Landroidx/d/c/h;->o:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    iget v0, v0, Landroidx/d/c/i;->k:I

    iget v2, p1, Landroidx/d/c/i;->k:I

    if-le v0, v2, :cond_2

    const/4 v0, 0x0

    move v2, v0

    .line 211
    :goto_0
    iget v3, p0, Landroidx/d/c/h;->o:I

    if-ge v2, v3, :cond_1

    .line 212
    iget-object v3, p0, Landroidx/d/c/h;->n:[Landroidx/d/c/i;

    iget-object v4, p0, Landroidx/d/c/h;->m:[Landroidx/d/c/i;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_1
    iget-object v2, p0, Landroidx/d/c/h;->n:[Landroidx/d/c/i;

    iget v3, p0, Landroidx/d/c/h;->o:I

    new-instance v4, Landroidx/d/c/h$1;

    invoke-direct {v4, p0}, Landroidx/d/c/h$1;-><init>(Landroidx/d/c/h;)V

    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 220
    :goto_1
    iget v2, p0, Landroidx/d/c/h;->o:I

    if-ge v0, v2, :cond_2

    .line 221
    iget-object v2, p0, Landroidx/d/c/h;->m:[Landroidx/d/c/i;

    iget-object v3, p0, Landroidx/d/c/h;->n:[Landroidx/d/c/i;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 225
    :cond_2
    iput-boolean v1, p1, Landroidx/d/c/i;->j:Z

    .line 226
    invoke-virtual {p1, p0}, Landroidx/d/c/i;->a(Landroidx/d/c/b;)V

    return-void
.end method

.method private final f(Landroidx/d/c/i;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 230
    :goto_0
    iget v2, p0, Landroidx/d/c/h;->o:I

    if-ge v1, v2, :cond_2

    .line 231
    iget-object v2, p0, Landroidx/d/c/h;->m:[Landroidx/d/c/i;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    .line 232
    :goto_1
    iget v2, p0, Landroidx/d/c/h;->o:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 233
    iget-object v2, p0, Landroidx/d/c/h;->m:[Landroidx/d/c/i;

    iget-object v3, p0, Landroidx/d/c/h;->m:[Landroidx/d/c/i;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    aput-object v3, v2, v1

    move v1, v4

    goto :goto_1

    .line 235
    :cond_0
    iget v1, p0, Landroidx/d/c/h;->o:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/d/c/h;->o:I

    .line 236
    iput-boolean v0, p1, Landroidx/d/c/i;->j:Z

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroidx/d/c/e;[Z)Landroidx/d/c/i;
    .locals 4

    const/4 p1, -0x1

    const/4 v0, 0x0

    move v1, p1

    .line 174
    :goto_0
    iget v2, p0, Landroidx/d/c/h;->o:I

    if-ge v0, v2, :cond_3

    .line 175
    iget-object v2, p0, Landroidx/d/c/h;->m:[Landroidx/d/c/i;

    aget-object v2, v2, v0

    .line 176
    iget v3, v2, Landroidx/d/c/i;->k:I

    aget-boolean v3, p2, v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 179
    :cond_0
    iget-object v3, p0, Landroidx/d/c/h;->g:Landroidx/d/c/h$a;

    invoke-virtual {v3, v2}, Landroidx/d/c/h$a;->a(Landroidx/d/c/i;)V

    if-ne v1, p1, :cond_1

    .line 181
    iget-object v2, p0, Landroidx/d/c/h;->g:Landroidx/d/c/h$a;

    invoke-virtual {v2}, Landroidx/d/c/h$a;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 184
    :cond_1
    iget-object v2, p0, Landroidx/d/c/h;->g:Landroidx/d/c/h$a;

    iget-object v3, p0, Landroidx/d/c/h;->m:[Landroidx/d/c/i;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroidx/d/c/h$a;->c(Landroidx/d/c/i;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move v1, v0

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-ne v1, p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 191
    :cond_4
    iget-object p0, p0, Landroidx/d/c/h;->m:[Landroidx/d/c/i;

    aget-object p0, p0, v1

    return-object p0
.end method

.method public a(Landroidx/d/c/e;Landroidx/d/c/b;Z)V
    .locals 5

    .line 244
    iget-object p1, p2, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    if-nez p1, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object p3, p2, Landroidx/d/c/b;->e:Landroidx/d/c/b$a;

    .line 250
    invoke-interface {p3}, Landroidx/d/c/b$a;->e()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 252
    invoke-interface {p3, v1}, Landroidx/d/c/b$a;->d(I)Landroidx/d/c/i;

    move-result-object v2

    .line 253
    invoke-interface {p3, v1}, Landroidx/d/c/b$a;->e(I)F

    move-result v3

    .line 254
    iget-object v4, p0, Landroidx/d/c/h;->g:Landroidx/d/c/h$a;

    invoke-virtual {v4, v2}, Landroidx/d/c/h$a;->a(Landroidx/d/c/i;)V

    .line 255
    iget-object v4, p0, Landroidx/d/c/h;->g:Landroidx/d/c/h$a;

    invoke-virtual {v4, p1, v3}, Landroidx/d/c/h$a;->a(Landroidx/d/c/i;F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 256
    invoke-direct {p0, v2}, Landroidx/d/c/h;->e(Landroidx/d/c/i;)V

    .line 258
    :cond_1
    iget v2, p0, Landroidx/d/c/h;->b:F

    iget v4, p2, Landroidx/d/c/b;->b:F

    mul-float/2addr v4, v3

    add-float/2addr v2, v4

    iput v2, p0, Landroidx/d/c/h;->b:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 260
    :cond_2
    invoke-direct {p0, p1}, Landroidx/d/c/h;->f(Landroidx/d/c/i;)V

    return-void
.end method

.method public d(Landroidx/d/c/i;)V
    .locals 3

    .line 196
    iget-object v0, p0, Landroidx/d/c/h;->g:Landroidx/d/c/h$a;

    invoke-virtual {v0, p1}, Landroidx/d/c/h$a;->a(Landroidx/d/c/i;)V

    .line 197
    iget-object v0, p0, Landroidx/d/c/h;->g:Landroidx/d/c/h$a;

    invoke-virtual {v0}, Landroidx/d/c/h$a;->c()V

    .line 198
    iget-object v0, p1, Landroidx/d/c/i;->r:[F

    iget v1, p1, Landroidx/d/c/i;->m:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 199
    invoke-direct {p0, p1}, Landroidx/d/c/h;->e(Landroidx/d/c/i;)V

    return-void
.end method

.method public f()Z
    .locals 0

    .line 166
    iget p0, p0, Landroidx/d/c/h;->o:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 153
    iput v0, p0, Landroidx/d/c/h;->o:I

    const/4 v0, 0x0

    .line 154
    iput v0, p0, Landroidx/d/c/h;->b:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " goal -> ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/d/c/h;->b:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ") : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 267
    :goto_0
    iget v2, p0, Landroidx/d/c/h;->o:I

    if-ge v1, v2, :cond_0

    .line 268
    iget-object v2, p0, Landroidx/d/c/h;->m:[Landroidx/d/c/i;

    aget-object v2, v2, v1

    .line 269
    iget-object v3, p0, Landroidx/d/c/h;->g:Landroidx/d/c/h$a;

    invoke-virtual {v3, v2}, Landroidx/d/c/h$a;->a(Landroidx/d/c/i;)V

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/d/c/h;->g:Landroidx/d/c/h$a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
