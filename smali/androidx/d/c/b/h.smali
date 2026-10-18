.class public Landroidx/d/c/b/h;
.super Landroidx/d/c/b/e;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final aY:I = -0x1

.field public static final b:I = 0x1

.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2


# instance fields
.field protected aZ:F

.field protected ba:I

.field protected bb:I

.field private bc:Landroidx/d/c/b/d;

.field private bd:I

.field private be:I

.field private bf:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 46
    invoke-direct {p0}, Landroidx/d/c/b/e;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 37
    iput v0, p0, Landroidx/d/c/b/h;->aZ:F

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Landroidx/d/c/b/h;->ba:I

    .line 39
    iput v0, p0, Landroidx/d/c/b/h;->bb:I

    .line 41
    iget-object v0, p0, Landroidx/d/c/b/h;->U:Landroidx/d/c/b/d;

    iput-object v0, p0, Landroidx/d/c/b/h;->bc:Landroidx/d/c/b/d;

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Landroidx/d/c/b/h;->bd:I

    .line 43
    iput v0, p0, Landroidx/d/c/b/h;->be:I

    .line 47
    iget-object v1, p0, Landroidx/d/c/b/h;->ah:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 48
    iget-object v1, p0, Landroidx/d/c/b/h;->ah:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/d/c/b/h;->bc:Landroidx/d/c/b/d;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v1, p0, Landroidx/d/c/b/h;->ag:[Landroidx/d/c/b/d;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 51
    iget-object v2, p0, Landroidx/d/c/b/h;->ag:[Landroidx/d/c/b/d;

    iget-object v3, p0, Landroidx/d/c/b/h;->bc:Landroidx/d/c/b/d;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public B(I)V
    .locals 1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    .line 151
    invoke-virtual {p0, p1}, Landroidx/d/c/b/h;->e(F)V

    return-void
.end method

.method public C(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .line 164
    iput v1, p0, Landroidx/d/c/b/h;->aZ:F

    .line 165
    iput p1, p0, Landroidx/d/c/b/h;->ba:I

    .line 166
    iput v0, p0, Landroidx/d/c/b/h;->bb:I

    :cond_0
    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 0

    const-string p0, "Guideline"

    return-object p0
.end method

.method public D(I)V
    .locals 2

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    const/high16 v1, -0x40800000    # -1.0f

    .line 172
    iput v1, p0, Landroidx/d/c/b/h;->aZ:F

    .line 173
    iput v0, p0, Landroidx/d/c/b/h;->ba:I

    .line 174
    iput p1, p0, Landroidx/d/c/b/h;->bb:I

    :cond_0
    return-void
.end method

.method public E(I)V
    .locals 1

    .line 194
    iget-object v0, p0, Landroidx/d/c/b/h;->bc:Landroidx/d/c/b/d;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/d;->a(I)V

    const/4 p1, 0x1

    .line 195
    iput-boolean p1, p0, Landroidx/d/c/b/h;->bf:Z

    return-void
.end method

.method public a(Landroidx/d/c/b/d$a;)Landroidx/d/c/b/d;
    .locals 2

    .line 125
    sget-object v0, Landroidx/d/c/b/h$1;->a:[I

    invoke-virtual {p1}, Landroidx/d/c/b/d$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    .line 135
    :pswitch_1
    iget v0, p0, Landroidx/d/c/b/h;->bd:I

    if-nez v0, :cond_0

    .line 136
    iget-object p0, p0, Landroidx/d/c/b/h;->bc:Landroidx/d/c/b/d;

    return-object p0

    .line 128
    :pswitch_2
    iget v0, p0, Landroidx/d/c/b/h;->bd:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 129
    iget-object p0, p0, Landroidx/d/c/b/h;->bc:Landroidx/d/c/b/d;

    return-object p0

    .line 147
    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Landroidx/d/c/b/d$a;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(I)V
    .locals 3

    .line 84
    iget v0, p0, Landroidx/d/c/b/h;->bd:I

    if-ne v0, p1, :cond_0

    return-void

    .line 87
    :cond_0
    iput p1, p0, Landroidx/d/c/b/h;->bd:I

    .line 88
    iget-object p1, p0, Landroidx/d/c/b/h;->ah:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 89
    iget p1, p0, Landroidx/d/c/b/h;->bd:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 90
    iget-object p1, p0, Landroidx/d/c/b/h;->T:Landroidx/d/c/b/d;

    iput-object p1, p0, Landroidx/d/c/b/h;->bc:Landroidx/d/c/b/d;

    goto :goto_0

    .line 92
    :cond_1
    iget-object p1, p0, Landroidx/d/c/b/h;->U:Landroidx/d/c/b/d;

    iput-object p1, p0, Landroidx/d/c/b/h;->bc:Landroidx/d/c/b/d;

    .line 94
    :goto_0
    iget-object p1, p0, Landroidx/d/c/b/h;->ah:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/d/c/b/h;->bc:Landroidx/d/c/b/d;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object p1, p0, Landroidx/d/c/b/h;->ag:[Landroidx/d/c/b/d;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 97
    iget-object v1, p0, Landroidx/d/c/b/h;->ag:[Landroidx/d/c/b/d;

    iget-object v2, p0, Landroidx/d/c/b/h;->bc:Landroidx/d/c/b/d;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
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

    .line 57
    invoke-super {p0, p1, p2}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/e;Ljava/util/HashMap;)V

    .line 58
    check-cast p1, Landroidx/d/c/b/h;

    .line 59
    iget p2, p1, Landroidx/d/c/b/h;->aZ:F

    iput p2, p0, Landroidx/d/c/b/h;->aZ:F

    .line 60
    iget p2, p1, Landroidx/d/c/b/h;->ba:I

    iput p2, p0, Landroidx/d/c/b/h;->ba:I

    .line 61
    iget p2, p1, Landroidx/d/c/b/h;->bb:I

    iput p2, p0, Landroidx/d/c/b/h;->bb:I

    .line 62
    iget p1, p1, Landroidx/d/c/b/h;->bd:I

    invoke-virtual {p0, p1}, Landroidx/d/c/b/h;->a(I)V

    return-void
.end method

.method public a(Landroidx/d/c/e;Z)V
    .locals 7

    .line 215
    invoke-virtual {p0}, Landroidx/d/c/b/h;->A()Landroidx/d/c/b/e;

    move-result-object p2

    check-cast p2, Landroidx/d/c/b/f;

    if-nez p2, :cond_0

    return-void

    .line 219
    :cond_0
    sget-object v0, Landroidx/d/c/b/d$a;->b:Landroidx/d/c/b/d$a;

    invoke-virtual {p2, v0}, Landroidx/d/c/b/f;->a(Landroidx/d/c/b/d$a;)Landroidx/d/c/b/d;

    move-result-object v0

    .line 220
    sget-object v1, Landroidx/d/c/b/d$a;->d:Landroidx/d/c/b/d$a;

    invoke-virtual {p2, v1}, Landroidx/d/c/b/f;->a(Landroidx/d/c/b/d$a;)Landroidx/d/c/b/d;

    move-result-object v1

    .line 221
    iget-object v2, p0, Landroidx/d/c/b/h;->al:Landroidx/d/c/b/e;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroidx/d/c/b/h;->al:Landroidx/d/c/b/e;

    iget-object v2, v2, Landroidx/d/c/b/e;->ak:[Landroidx/d/c/b/e$a;

    aget-object v2, v2, v4

    sget-object v5, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-ne v2, v5, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 222
    :goto_0
    iget v5, p0, Landroidx/d/c/b/h;->bd:I

    if-nez v5, :cond_3

    .line 223
    sget-object v0, Landroidx/d/c/b/d$a;->c:Landroidx/d/c/b/d$a;

    invoke-virtual {p2, v0}, Landroidx/d/c/b/f;->a(Landroidx/d/c/b/d$a;)Landroidx/d/c/b/d;

    move-result-object v0

    .line 224
    sget-object v1, Landroidx/d/c/b/d$a;->e:Landroidx/d/c/b/d$a;

    invoke-virtual {p2, v1}, Landroidx/d/c/b/f;->a(Landroidx/d/c/b/d$a;)Landroidx/d/c/b/d;

    move-result-object v1

    .line 225
    iget-object p2, p0, Landroidx/d/c/b/h;->al:Landroidx/d/c/b/e;

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroidx/d/c/b/h;->al:Landroidx/d/c/b/e;

    iget-object p2, p2, Landroidx/d/c/b/e;->ak:[Landroidx/d/c/b/e$a;

    aget-object p2, p2, v3

    sget-object v2, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-ne p2, v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    .line 227
    :cond_3
    :goto_1
    iget-boolean p2, p0, Landroidx/d/c/b/h;->bf:Z

    const/4 v3, -0x1

    const/4 v5, 0x5

    if-eqz p2, :cond_6

    iget-object p2, p0, Landroidx/d/c/b/h;->bc:Landroidx/d/c/b/d;

    invoke-virtual {p2}, Landroidx/d/c/b/d;->f()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 228
    iget-object p2, p0, Landroidx/d/c/b/h;->bc:Landroidx/d/c/b/d;

    invoke-virtual {p1, p2}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object p2

    .line 232
    iget-object v6, p0, Landroidx/d/c/b/h;->bc:Landroidx/d/c/b/d;

    invoke-virtual {v6}, Landroidx/d/c/b/d;->d()I

    move-result v6

    invoke-virtual {p1, p2, v6}, Landroidx/d/c/e;->a(Landroidx/d/c/i;I)V

    .line 233
    iget v6, p0, Landroidx/d/c/b/h;->ba:I

    if-eq v6, v3, :cond_4

    if-eqz v2, :cond_5

    .line 235
    invoke-virtual {p1, v1}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v0

    invoke-virtual {p1, v0, p2, v4, v5}, Landroidx/d/c/e;->a(Landroidx/d/c/i;Landroidx/d/c/i;II)V

    goto :goto_2

    .line 237
    :cond_4
    iget v6, p0, Landroidx/d/c/b/h;->bb:I

    if-eq v6, v3, :cond_5

    if-eqz v2, :cond_5

    .line 239
    invoke-virtual {p1, v1}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v1

    .line 240
    invoke-virtual {p1, v0}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v0

    invoke-virtual {p1, p2, v0, v4, v5}, Landroidx/d/c/e;->a(Landroidx/d/c/i;Landroidx/d/c/i;II)V

    .line 241
    invoke-virtual {p1, v1, p2, v4, v5}, Landroidx/d/c/e;->a(Landroidx/d/c/i;Landroidx/d/c/i;II)V

    .line 244
    :cond_5
    :goto_2
    iput-boolean v4, p0, Landroidx/d/c/b/h;->bf:Z

    return-void

    .line 247
    :cond_6
    iget p2, p0, Landroidx/d/c/b/h;->ba:I

    const/16 v6, 0x8

    if-eq p2, v3, :cond_7

    .line 248
    iget-object p2, p0, Landroidx/d/c/b/h;->bc:Landroidx/d/c/b/d;

    invoke-virtual {p1, p2}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object p2

    .line 249
    invoke-virtual {p1, v0}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v0

    .line 250
    iget p0, p0, Landroidx/d/c/b/h;->ba:I

    invoke-virtual {p1, p2, v0, p0, v6}, Landroidx/d/c/e;->c(Landroidx/d/c/i;Landroidx/d/c/i;II)Landroidx/d/c/b;

    if-eqz v2, :cond_9

    .line 252
    invoke-virtual {p1, v1}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object p0

    invoke-virtual {p1, p0, p2, v4, v5}, Landroidx/d/c/e;->a(Landroidx/d/c/i;Landroidx/d/c/i;II)V

    goto :goto_3

    .line 254
    :cond_7
    iget p2, p0, Landroidx/d/c/b/h;->bb:I

    if-eq p2, v3, :cond_8

    .line 255
    iget-object p2, p0, Landroidx/d/c/b/h;->bc:Landroidx/d/c/b/d;

    invoke-virtual {p1, p2}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object p2

    .line 256
    invoke-virtual {p1, v1}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v1

    .line 257
    iget p0, p0, Landroidx/d/c/b/h;->bb:I

    neg-int p0, p0

    invoke-virtual {p1, p2, v1, p0, v6}, Landroidx/d/c/e;->c(Landroidx/d/c/i;Landroidx/d/c/i;II)Landroidx/d/c/b;

    if-eqz v2, :cond_9

    .line 259
    invoke-virtual {p1, v0}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object p0

    invoke-virtual {p1, p2, p0, v4, v5}, Landroidx/d/c/e;->a(Landroidx/d/c/i;Landroidx/d/c/i;II)V

    .line 260
    invoke-virtual {p1, v1, p2, v4, v5}, Landroidx/d/c/e;->a(Landroidx/d/c/i;Landroidx/d/c/i;II)V

    goto :goto_3

    .line 262
    :cond_8
    iget p2, p0, Landroidx/d/c/b/h;->aZ:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p2, p2, v0

    if-eqz p2, :cond_9

    .line 263
    iget-object p2, p0, Landroidx/d/c/b/h;->bc:Landroidx/d/c/b/d;

    invoke-virtual {p1, p2}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object p2

    .line 264
    invoke-virtual {p1, v1}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v0

    .line 265
    iget p0, p0, Landroidx/d/c/b/h;->aZ:F

    .line 266
    invoke-static {p1, p2, v0, p0}, Landroidx/d/c/e;->a(Landroidx/d/c/e;Landroidx/d/c/i;Landroidx/d/c/i;F)Landroidx/d/c/b;

    move-result-object p0

    .line 265
    invoke-virtual {p1, p0}, Landroidx/d/c/e;->a(Landroidx/d/c/b;)V

    :cond_9
    :goto_3
    return-void
.end method

.method public a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method aq()V
    .locals 2

    .line 291
    invoke-virtual {p0}, Landroidx/d/c/b/h;->G()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/d/c/b/h;->A()Landroidx/d/c/b/e;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/d/c/b/e;->I()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 292
    iget v1, p0, Landroidx/d/c/b/h;->bd:I

    if-nez v1, :cond_0

    .line 293
    invoke-virtual {p0}, Landroidx/d/c/b/h;->H()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroidx/d/c/b/h;->A()Landroidx/d/c/b/e;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/d/c/b/e;->L()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 295
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/d/c/b/h;->e(F)V

    return-void
.end method

.method ar()V
    .locals 2

    .line 299
    invoke-virtual {p0}, Landroidx/d/c/b/h;->G()I

    move-result v0

    .line 300
    iget v1, p0, Landroidx/d/c/b/h;->bd:I

    if-nez v1, :cond_0

    .line 301
    invoke-virtual {p0}, Landroidx/d/c/b/h;->H()I

    move-result v0

    .line 303
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/d/c/b/h;->C(I)V

    return-void
.end method

.method as()V
    .locals 2

    .line 307
    invoke-virtual {p0}, Landroidx/d/c/b/h;->A()Landroidx/d/c/b/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/d/c/b/e;->I()I

    move-result v0

    invoke-virtual {p0}, Landroidx/d/c/b/h;->G()I

    move-result v1

    sub-int/2addr v0, v1

    .line 308
    iget v1, p0, Landroidx/d/c/b/h;->bd:I

    if-nez v1, :cond_0

    .line 309
    invoke-virtual {p0}, Landroidx/d/c/b/h;->A()Landroidx/d/c/b/e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/d/c/b/e;->L()I

    move-result v0

    invoke-virtual {p0}, Landroidx/d/c/b/h;->H()I

    move-result v1

    sub-int/2addr v0, v1

    .line 311
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/d/c/b/h;->D(I)V

    return-void
.end method

.method public at()V
    .locals 3

    .line 315
    iget v0, p0, Landroidx/d/c/b/h;->ba:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 317
    invoke-virtual {p0}, Landroidx/d/c/b/h;->aq()V

    goto :goto_0

    .line 318
    :cond_0
    iget v0, p0, Landroidx/d/c/b/h;->aZ:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 320
    invoke-virtual {p0}, Landroidx/d/c/b/h;->as()V

    goto :goto_0

    .line 321
    :cond_1
    iget v0, p0, Landroidx/d/c/b/h;->bb:I

    if-eq v0, v1, :cond_2

    .line 323
    invoke-virtual {p0}, Landroidx/d/c/b/h;->ar()V

    :cond_2
    :goto_0
    return-void
.end method

.method public au()Z
    .locals 2

    .line 328
    iget v0, p0, Landroidx/d/c/b/h;->aZ:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/d/c/b/h;->ba:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroidx/d/c/b/h;->bb:I

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()I
    .locals 2

    .line 71
    iget v0, p0, Landroidx/d/c/b/h;->aZ:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 74
    :cond_0
    iget v0, p0, Landroidx/d/c/b/h;->ba:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 77
    :cond_1
    iget p0, p0, Landroidx/d/c/b/h;->bb:I

    if-eq p0, v1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    return v1
.end method

.method public b(I)V
    .locals 0

    .line 120
    iput p1, p0, Landroidx/d/c/b/h;->be:I

    return-void
.end method

.method public b(Landroidx/d/c/e;Z)V
    .locals 2

    .line 273
    invoke-virtual {p0}, Landroidx/d/c/b/h;->A()Landroidx/d/c/b/e;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 276
    :cond_0
    iget-object p2, p0, Landroidx/d/c/b/h;->bc:Landroidx/d/c/b/d;

    invoke-virtual {p1, p2}, Landroidx/d/c/e;->b(Ljava/lang/Object;)I

    move-result p1

    .line 277
    iget p2, p0, Landroidx/d/c/b/h;->bd:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 278
    invoke-virtual {p0, p1}, Landroidx/d/c/b/h;->n(I)V

    .line 279
    invoke-virtual {p0, v1}, Landroidx/d/c/b/h;->o(I)V

    .line 280
    invoke-virtual {p0}, Landroidx/d/c/b/h;->A()Landroidx/d/c/b/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/d/c/b/e;->L()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/d/c/b/h;->q(I)V

    .line 281
    invoke-virtual {p0, v1}, Landroidx/d/c/b/h;->p(I)V

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/d/c/b/h;->n(I)V

    .line 284
    invoke-virtual {p0, p1}, Landroidx/d/c/b/h;->o(I)V

    .line 285
    invoke-virtual {p0}, Landroidx/d/c/b/h;->A()Landroidx/d/c/b/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/d/c/b/e;->I()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/d/c/b/h;->p(I)V

    .line 286
    invoke-virtual {p0, v1}, Landroidx/d/c/b/h;->q(I)V

    :goto_0
    return-void
.end method

.method public c()Landroidx/d/c/b/d;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/d/c/b/h;->bc:Landroidx/d/c/b/d;

    return-object p0
.end method

.method public d()Z
    .locals 0

    .line 199
    iget-boolean p0, p0, Landroidx/d/c/b/h;->bf:Z

    return p0
.end method

.method public e(F)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 156
    iput p1, p0, Landroidx/d/c/b/h;->aZ:F

    const/4 p1, -0x1

    .line 157
    iput p1, p0, Landroidx/d/c/b/h;->ba:I

    .line 158
    iput p1, p0, Landroidx/d/c/b/h;->bb:I

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 0

    .line 203
    iget-boolean p0, p0, Landroidx/d/c/b/h;->bf:Z

    return p0
.end method

.method public f()I
    .locals 0

    .line 116
    iget p0, p0, Landroidx/d/c/b/h;->bd:I

    return p0
.end method

.method public g()F
    .locals 0

    .line 179
    iget p0, p0, Landroidx/d/c/b/h;->aZ:F

    return p0
.end method

.method public h()I
    .locals 0

    .line 183
    iget p0, p0, Landroidx/d/c/b/h;->ba:I

    return p0
.end method

.method public i()I
    .locals 0

    .line 187
    iget p0, p0, Landroidx/d/c/b/h;->bb:I

    return p0
.end method
