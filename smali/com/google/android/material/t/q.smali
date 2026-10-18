.class public Lcom/google/android/material/t/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/t/q$d;,
        Lcom/google/android/material/t/q$c;,
        Lcom/google/android/material/t/q$g;,
        Lcom/google/android/material/t/q$e;,
        Lcom/google/android/material/t/q$f;,
        Lcom/google/android/material/t/q$a;,
        Lcom/google/android/material/t/q$b;,
        Lcom/google/android/material/t/q$h;
    }
.end annotation


# static fields
.field protected static final a:F = 180.0f

.field private static final h:F = 270.0f


# instance fields
.field public b:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public c:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public d:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public f:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public g:F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/t/q$f;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/t/q$h;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/t/q;->i:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/t/q;->j:Ljava/util/List;

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0, v0}, Lcom/google/android/material/t/q;->a(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/t/q;->i:Ljava/util/List;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/t/q;->j:Ljava/util/List;

    .line 99
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/t/q;->a(FF)V

    return-void
.end method

.method private a(F)V
    .locals 6

    .line 292
    invoke-direct {p0}, Lcom/google/android/material/t/q;->f()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/t/q;->f()F

    move-result v0

    sub-float v0, p1, v0

    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    const/high16 v1, 0x43340000    # 180.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    return-void

    .line 301
    :cond_1
    new-instance v1, Lcom/google/android/material/t/q$c;

    .line 302
    invoke-virtual {p0}, Lcom/google/android/material/t/q;->d()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/t/q;->e()F

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/material/t/q;->d()F

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/material/t/q;->e()F

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/material/t/q$c;-><init>(FFFF)V

    .line 303
    invoke-direct {p0}, Lcom/google/android/material/t/q;->f()F

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/material/t/q$c;->a(Lcom/google/android/material/t/q$c;F)V

    .line 304
    invoke-static {v1, v0}, Lcom/google/android/material/t/q$c;->b(Lcom/google/android/material/t/q$c;F)V

    .line 305
    iget-object v0, p0, Lcom/google/android/material/t/q;->j:Ljava/util/List;

    new-instance v2, Lcom/google/android/material/t/q$a;

    invoke-direct {v2, v1}, Lcom/google/android/material/t/q$a;-><init>(Lcom/google/android/material/t/q$c;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-direct {p0, p1}, Lcom/google/android/material/t/q;->f(F)V

    return-void
.end method

.method private a(Lcom/google/android/material/t/q$h;FF)V
    .locals 0

    .line 274
    invoke-direct {p0, p2}, Lcom/google/android/material/t/q;->a(F)V

    .line 275
    iget-object p2, p0, Lcom/google/android/material/t/q;->j:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-direct {p0, p3}, Lcom/google/android/material/t/q;->f(F)V

    return-void
.end method

.method private b(F)V
    .locals 0

    .line 334
    iput p1, p0, Lcom/google/android/material/t/q;->b:F

    return-void
.end method

.method private c(F)V
    .locals 0

    .line 338
    iput p1, p0, Lcom/google/android/material/t/q;->c:F

    return-void
.end method

.method private d(F)V
    .locals 0

    .line 342
    iput p1, p0, Lcom/google/android/material/t/q;->d:F

    return-void
.end method

.method private e(F)V
    .locals 0

    .line 346
    iput p1, p0, Lcom/google/android/material/t/q;->e:F

    return-void
.end method

.method private f()F
    .locals 0

    .line 326
    iget p0, p0, Lcom/google/android/material/t/q;->f:F

    return p0
.end method

.method private f(F)V
    .locals 0

    .line 350
    iput p1, p0, Lcom/google/android/material/t/q;->f:F

    return-void
.end method

.method private g()F
    .locals 0

    .line 330
    iget p0, p0, Lcom/google/android/material/t/q;->g:F

    return p0
.end method

.method private g(F)V
    .locals 0

    .line 354
    iput p1, p0, Lcom/google/android/material/t/q;->g:F

    return-void
.end method


# virtual methods
.method a(Landroid/graphics/Matrix;)Lcom/google/android/material/t/q$h;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 255
    invoke-direct {p0}, Lcom/google/android/material/t/q;->g()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/t/q;->a(F)V

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/material/t/q;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 257
    new-instance v1, Lcom/google/android/material/t/q$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/material/t/q$1;-><init>(Lcom/google/android/material/t/q;Ljava/util/List;Landroid/graphics/Matrix;)V

    return-object v1
.end method

.method public a(FF)V
    .locals 2

    const/high16 v0, 0x43870000    # 270.0f

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/material/t/q;->a(FFFF)V

    return-void
.end method

.method public a(FFFF)V
    .locals 0

    .line 112
    invoke-direct {p0, p1}, Lcom/google/android/material/t/q;->b(F)V

    .line 113
    invoke-direct {p0, p2}, Lcom/google/android/material/t/q;->c(F)V

    .line 114
    invoke-direct {p0, p1}, Lcom/google/android/material/t/q;->d(F)V

    .line 115
    invoke-direct {p0, p2}, Lcom/google/android/material/t/q;->e(F)V

    .line 116
    invoke-direct {p0, p3}, Lcom/google/android/material/t/q;->f(F)V

    add-float/2addr p3, p4

    const/high16 p1, 0x43b40000    # 360.0f

    rem-float/2addr p3, p1

    .line 117
    invoke-direct {p0, p3}, Lcom/google/android/material/t/q;->g(F)V

    .line 118
    iget-object p1, p0, Lcom/google/android/material/t/q;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 119
    iget-object p1, p0, Lcom/google/android/material/t/q;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/google/android/material/t/q;->k:Z

    return-void
.end method

.method public a(FFFFFF)V
    .locals 8
    .annotation build Landroidx/annotation/am;
        a = 0x15
    .end annotation

    .line 189
    new-instance v7, Lcom/google/android/material/t/q$d;

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/t/q$d;-><init>(FFFFFF)V

    .line 191
    iget-object p1, p0, Lcom/google/android/material/t/q;->i:Ljava/util/List;

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 193
    iput-boolean p1, p0, Lcom/google/android/material/t/q;->k:Z

    .line 195
    invoke-direct {p0, p5}, Lcom/google/android/material/t/q;->d(F)V

    .line 196
    invoke-direct {p0, p6}, Lcom/google/android/material/t/q;->e(F)V

    return-void
.end method

.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/google/android/material/t/q;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 243
    iget-object v2, p0, Lcom/google/android/material/t/q;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/t/q$f;

    .line 244
    invoke-virtual {v2, p1, p2}, Lcom/google/android/material/t/q$f;->a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a()Z
    .locals 0

    .line 284
    iget-boolean p0, p0, Lcom/google/android/material/t/q;->k:Z

    return p0
.end method

.method b()F
    .locals 0

    .line 310
    iget p0, p0, Lcom/google/android/material/t/q;->b:F

    return p0
.end method

.method public b(FF)V
    .locals 4

    .line 130
    new-instance v0, Lcom/google/android/material/t/q$e;

    invoke-direct {v0}, Lcom/google/android/material/t/q$e;-><init>()V

    .line 131
    invoke-static {v0, p1}, Lcom/google/android/material/t/q$e;->a(Lcom/google/android/material/t/q$e;F)F

    .line 132
    invoke-static {v0, p2}, Lcom/google/android/material/t/q$e;->b(Lcom/google/android/material/t/q$e;F)F

    .line 133
    iget-object v1, p0, Lcom/google/android/material/t/q;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v1, Lcom/google/android/material/t/q$b;

    invoke-virtual {p0}, Lcom/google/android/material/t/q;->d()F

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/material/t/q;->e()F

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/material/t/q$b;-><init>(Lcom/google/android/material/t/q$e;FF)V

    .line 140
    invoke-virtual {v1}, Lcom/google/android/material/t/q$b;->a()F

    move-result v0

    const/high16 v2, 0x43870000    # 270.0f

    add-float/2addr v0, v2

    .line 141
    invoke-virtual {v1}, Lcom/google/android/material/t/q$b;->a()F

    move-result v3

    add-float/2addr v3, v2

    .line 138
    invoke-direct {p0, v1, v0, v3}, Lcom/google/android/material/t/q;->a(Lcom/google/android/material/t/q$h;FF)V

    .line 143
    invoke-direct {p0, p1}, Lcom/google/android/material/t/q;->d(F)V

    .line 144
    invoke-direct {p0, p2}, Lcom/google/android/material/t/q;->e(F)V

    return-void
.end method

.method public b(FFFF)V
    .locals 1
    .annotation build Landroidx/annotation/am;
        a = 0x15
    .end annotation

    .line 160
    new-instance v0, Lcom/google/android/material/t/q$g;

    invoke-direct {v0}, Lcom/google/android/material/t/q$g;-><init>()V

    .line 161
    invoke-static {v0, p1}, Lcom/google/android/material/t/q$g;->a(Lcom/google/android/material/t/q$g;F)V

    .line 162
    invoke-static {v0, p2}, Lcom/google/android/material/t/q$g;->b(Lcom/google/android/material/t/q$g;F)V

    .line 163
    invoke-static {v0, p3}, Lcom/google/android/material/t/q$g;->c(Lcom/google/android/material/t/q$g;F)V

    .line 164
    invoke-static {v0, p4}, Lcom/google/android/material/t/q$g;->d(Lcom/google/android/material/t/q$g;F)V

    .line 165
    iget-object p1, p0, Lcom/google/android/material/t/q;->i:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 167
    iput-boolean p1, p0, Lcom/google/android/material/t/q;->k:Z

    .line 169
    invoke-direct {p0, p3}, Lcom/google/android/material/t/q;->d(F)V

    .line 170
    invoke-direct {p0, p4}, Lcom/google/android/material/t/q;->e(F)V

    return-void
.end method

.method public b(FFFFFF)V
    .locals 4

    .line 211
    new-instance v0, Lcom/google/android/material/t/q$c;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/material/t/q$c;-><init>(FFFF)V

    .line 212
    invoke-static {v0, p5}, Lcom/google/android/material/t/q$c;->a(Lcom/google/android/material/t/q$c;F)V

    .line 213
    invoke-static {v0, p6}, Lcom/google/android/material/t/q$c;->b(Lcom/google/android/material/t/q$c;F)V

    .line 214
    iget-object v1, p0, Lcom/google/android/material/t/q;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v1, Lcom/google/android/material/t/q$a;

    invoke-direct {v1, v0}, Lcom/google/android/material/t/q$a;-><init>(Lcom/google/android/material/t/q$c;)V

    add-float v0, p5, p6

    const/4 v2, 0x0

    cmpg-float p6, p6, v2

    if-gez p6, :cond_0

    const/4 p6, 0x1

    goto :goto_0

    :cond_0
    const/4 p6, 0x0

    :goto_0
    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v3, 0x43340000    # 180.0f

    if-eqz p6, :cond_1

    add-float/2addr p5, v3

    rem-float/2addr p5, v2

    :cond_1
    if-eqz p6, :cond_2

    add-float/2addr v3, v0

    rem-float p6, v3, v2

    goto :goto_1

    :cond_2
    move p6, v0

    .line 222
    :goto_1
    invoke-direct {p0, v1, p5, p6}, Lcom/google/android/material/t/q;->a(Lcom/google/android/material/t/q$h;FF)V

    add-float p5, p1, p3

    const/high16 p6, 0x3f000000    # 0.5f

    mul-float/2addr p5, p6

    sub-float/2addr p3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    float-to-double v0, v0

    .line 229
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr p3, v2

    add-float/2addr p5, p3

    .line 227
    invoke-direct {p0, p5}, Lcom/google/android/material/t/q;->d(F)V

    add-float p3, p2, p4

    mul-float/2addr p3, p6

    sub-float/2addr p4, p2

    div-float/2addr p4, p1

    .line 232
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    double-to-float p1, p1

    mul-float/2addr p4, p1

    add-float/2addr p3, p4

    .line 230
    invoke-direct {p0, p3}, Lcom/google/android/material/t/q;->e(F)V

    return-void
.end method

.method c()F
    .locals 0

    .line 314
    iget p0, p0, Lcom/google/android/material/t/q;->c:F

    return p0
.end method

.method d()F
    .locals 0

    .line 318
    iget p0, p0, Lcom/google/android/material/t/q;->d:F

    return p0
.end method

.method e()F
    .locals 0

    .line 322
    iget p0, p0, Lcom/google/android/material/t/q;->e:F

    return p0
.end method
