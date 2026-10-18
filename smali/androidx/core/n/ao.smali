.class public Landroidx/core/n/ao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/n/ao$d;,
        Landroidx/core/n/ao$c;,
        Landroidx/core/n/ao$b;,
        Landroidx/core/n/ao$a;,
        Landroidx/core/n/ao$i;,
        Landroidx/core/n/ao$h;,
        Landroidx/core/n/ao$g;,
        Landroidx/core/n/ao$f;,
        Landroidx/core/n/ao$e;
    }
.end annotation


# static fields
.field public static final a:Landroidx/core/n/ao;
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/String; = "WindowInsetsCompat"


# instance fields
.field private final c:Landroidx/core/n/ao$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Landroidx/core/n/ao$a;

    invoke-direct {v0}, Landroidx/core/n/ao$a;-><init>()V

    .line 56
    invoke-virtual {v0}, Landroidx/core/n/ao$a;->a()Landroidx/core/n/ao;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroidx/core/n/ao;->q()Landroidx/core/n/ao;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroidx/core/n/ao;->o()Landroidx/core/n/ao;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroidx/core/n/ao;->i()Landroidx/core/n/ao;

    move-result-object v0

    sput-object v0, Landroidx/core/n/ao;->a:Landroidx/core/n/ao;

    return-void
.end method

.method private constructor <init>(Landroid/view/WindowInsets;)V
    .locals 2
    .param p1    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/am;
        a = 0x14
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 66
    new-instance v0, Landroidx/core/n/ao$i;

    invoke-direct {v0, p0, p1}, Landroidx/core/n/ao$i;-><init>(Landroidx/core/n/ao;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    goto :goto_0

    .line 67
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 68
    new-instance v0, Landroidx/core/n/ao$h;

    invoke-direct {v0, p0, p1}, Landroidx/core/n/ao$h;-><init>(Landroidx/core/n/ao;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    goto :goto_0

    .line 69
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 70
    new-instance v0, Landroidx/core/n/ao$g;

    invoke-direct {v0, p0, p1}, Landroidx/core/n/ao$g;-><init>(Landroidx/core/n/ao;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    goto :goto_0

    .line 71
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    .line 72
    new-instance v0, Landroidx/core/n/ao$f;

    invoke-direct {v0, p0, p1}, Landroidx/core/n/ao$f;-><init>(Landroidx/core/n/ao;Landroid/view/WindowInsets;)V

    iput-object v0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    goto :goto_0

    .line 74
    :cond_3
    new-instance p1, Landroidx/core/n/ao$e;

    invoke-direct {p1, p0}, Landroidx/core/n/ao$e;-><init>(Landroidx/core/n/ao;)V

    iput-object p1, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroidx/core/n/ao;)V
    .locals 2
    .param p1    # Landroidx/core/n/ao;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 86
    iget-object p1, p1, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    instance-of v0, p1, Landroidx/core/n/ao$i;

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Landroidx/core/n/ao$i;

    check-cast p1, Landroidx/core/n/ao$i;

    invoke-direct {v0, p0, p1}, Landroidx/core/n/ao$i;-><init>(Landroidx/core/n/ao;Landroidx/core/n/ao$i;)V

    iput-object v0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    goto :goto_0

    .line 89
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    instance-of v0, p1, Landroidx/core/n/ao$h;

    if-eqz v0, :cond_1

    .line 90
    new-instance v0, Landroidx/core/n/ao$h;

    check-cast p1, Landroidx/core/n/ao$h;

    invoke-direct {v0, p0, p1}, Landroidx/core/n/ao$h;-><init>(Landroidx/core/n/ao;Landroidx/core/n/ao$h;)V

    iput-object v0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    goto :goto_0

    .line 91
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    instance-of v0, p1, Landroidx/core/n/ao$g;

    if-eqz v0, :cond_2

    .line 92
    new-instance v0, Landroidx/core/n/ao$g;

    check-cast p1, Landroidx/core/n/ao$g;

    invoke-direct {v0, p0, p1}, Landroidx/core/n/ao$g;-><init>(Landroidx/core/n/ao;Landroidx/core/n/ao$g;)V

    iput-object v0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    goto :goto_0

    .line 93
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_3

    instance-of v0, p1, Landroidx/core/n/ao$f;

    if-eqz v0, :cond_3

    .line 94
    new-instance v0, Landroidx/core/n/ao$f;

    check-cast p1, Landroidx/core/n/ao$f;

    invoke-direct {v0, p0, p1}, Landroidx/core/n/ao$f;-><init>(Landroidx/core/n/ao;Landroidx/core/n/ao$f;)V

    iput-object v0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    goto :goto_0

    .line 96
    :cond_3
    new-instance p1, Landroidx/core/n/ao$e;

    invoke-direct {p1, p0}, Landroidx/core/n/ao$e;-><init>(Landroidx/core/n/ao;)V

    iput-object p1, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    goto :goto_0

    .line 100
    :cond_4
    new-instance p1, Landroidx/core/n/ao$e;

    invoke-direct {p1, p0}, Landroidx/core/n/ao$e;-><init>(Landroidx/core/n/ao;)V

    iput-object p1, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    :goto_0
    return-void
.end method

.method static a(Landroidx/core/graphics/f;IIII)Landroidx/core/graphics/f;
    .locals 5

    .line 837
    iget v0, p0, Landroidx/core/graphics/f;->b:I

    sub-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 838
    iget v2, p0, Landroidx/core/graphics/f;->c:I

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 839
    iget v3, p0, Landroidx/core/graphics/f;->d:I

    sub-int/2addr v3, p3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 840
    iget v4, p0, Landroidx/core/graphics/f;->e:I

    sub-int/2addr v4, p4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v2, p2, :cond_0

    if-ne v3, p3, :cond_0

    if-ne v1, p4, :cond_0

    return-object p0

    .line 844
    :cond_0
    invoke-static {v0, v2, v3, v1}, Landroidx/core/graphics/f;->a(IIII)Landroidx/core/graphics/f;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/WindowInsets;)Landroidx/core/n/ao;
    .locals 1
    .param p0    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation build Landroidx/annotation/am;
        a = 0x14
    .end annotation

    .line 113
    new-instance v0, Landroidx/core/n/ao;

    invoke-static {p0}, Landroidx/core/m/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInsets;

    invoke-direct {v0, p0}, Landroidx/core/n/ao;-><init>(Landroid/view/WindowInsets;)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 127
    invoke-virtual {p0}, Landroidx/core/n/ao;->r()Landroidx/core/graphics/f;

    move-result-object p0

    iget p0, p0, Landroidx/core/graphics/f;->b:I

    return p0
.end method

.method public a(IIII)Landroidx/core/n/ao;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 265
    new-instance v0, Landroidx/core/n/ao$a;

    invoke-direct {v0, p0}, Landroidx/core/n/ao$a;-><init>(Landroidx/core/n/ao;)V

    .line 266
    invoke-static {p1, p2, p3, p4}, Landroidx/core/graphics/f;->a(IIII)Landroidx/core/graphics/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/n/ao$a;->a(Landroidx/core/graphics/f;)Landroidx/core/n/ao$a;

    move-result-object p0

    .line 267
    invoke-virtual {p0}, Landroidx/core/n/ao$a;->a()Landroidx/core/n/ao;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/graphics/Rect;)Landroidx/core/n/ao;
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 286
    new-instance v0, Landroidx/core/n/ao$a;

    invoke-direct {v0, p0}, Landroidx/core/n/ao$a;-><init>(Landroidx/core/n/ao;)V

    .line 287
    invoke-static {p1}, Landroidx/core/graphics/f;->a(Landroid/graphics/Rect;)Landroidx/core/graphics/f;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/n/ao$a;->a(Landroidx/core/graphics/f;)Landroidx/core/n/ao$a;

    move-result-object p0

    .line 288
    invoke-virtual {p0}, Landroidx/core/n/ao$a;->a()Landroidx/core/n/ao;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroidx/core/graphics/f;)Landroidx/core/n/ao;
    .locals 3
    .param p1    # Landroidx/core/graphics/f;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 516
    iget v0, p1, Landroidx/core/graphics/f;->b:I

    iget v1, p1, Landroidx/core/graphics/f;->c:I

    iget v2, p1, Landroidx/core/graphics/f;->d:I

    iget p1, p1, Landroidx/core/graphics/f;->e:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroidx/core/n/ao;->b(IIII)Landroidx/core/n/ao;

    move-result-object p0

    return-object p0
.end method

.method public b()I
    .locals 0

    .line 141
    invoke-virtual {p0}, Landroidx/core/n/ao;->r()Landroidx/core/graphics/f;

    move-result-object p0

    iget p0, p0, Landroidx/core/graphics/f;->c:I

    return p0
.end method

.method public b(IIII)Landroidx/core/n/ao;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/z;
            a = 0x0L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/z;
            a = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/z;
            a = 0x0L
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/z;
            a = 0x0L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 541
    iget-object p0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/core/n/ao$e;->a(IIII)Landroidx/core/n/ao;

    move-result-object p0

    return-object p0
.end method

.method public c()I
    .locals 0

    .line 155
    invoke-virtual {p0}, Landroidx/core/n/ao;->r()Landroidx/core/graphics/f;

    move-result-object p0

    iget p0, p0, Landroidx/core/graphics/f;->d:I

    return p0
.end method

.method public d()I
    .locals 0

    .line 169
    invoke-virtual {p0}, Landroidx/core/n/ao;->r()Landroidx/core/graphics/f;

    move-result-object p0

    iget p0, p0, Landroidx/core/graphics/f;->e:I

    return p0
.end method

.method public e()Z
    .locals 1

    .line 183
    invoke-virtual {p0}, Landroidx/core/n/ao;->r()Landroidx/core/graphics/f;

    move-result-object p0

    sget-object v0, Landroidx/core/graphics/f;->a:Landroidx/core/graphics/f;

    invoke-virtual {p0, v0}, Landroidx/core/graphics/f;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 549
    :cond_0
    instance-of v0, p1, Landroidx/core/n/ao;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 552
    :cond_1
    check-cast p1, Landroidx/core/n/ao;

    .line 553
    iget-object p0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    iget-object p1, p1, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    invoke-static {p0, p1}, Landroidx/core/m/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public f()Z
    .locals 2

    .line 194
    invoke-virtual {p0}, Landroidx/core/n/ao;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 195
    invoke-virtual {p0}, Landroidx/core/n/ao;->n()Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    invoke-virtual {p0}, Landroidx/core/n/ao;->p()Landroidx/core/n/d;

    move-result-object v0

    if-nez v0, :cond_1

    .line 197
    invoke-virtual {p0}, Landroidx/core/n/ao;->v()Landroidx/core/graphics/f;

    move-result-object v0

    sget-object v1, Landroidx/core/graphics/f;->a:Landroidx/core/graphics/f;

    invoke-virtual {v0, v1}, Landroidx/core/graphics/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {p0}, Landroidx/core/n/ao;->t()Landroidx/core/graphics/f;

    move-result-object v0

    sget-object v1, Landroidx/core/graphics/f;->a:Landroidx/core/graphics/f;

    invoke-virtual {v0, v1}, Landroidx/core/graphics/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    invoke-virtual {p0}, Landroidx/core/n/ao;->u()Landroidx/core/graphics/f;

    move-result-object p0

    sget-object v0, Landroidx/core/graphics/f;->a:Landroidx/core/graphics/f;

    invoke-virtual {p0, v0}, Landroidx/core/graphics/f;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public g()Z
    .locals 0

    .line 216
    iget-object p0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    invoke-virtual {p0}, Landroidx/core/n/ao$e;->b()Z

    move-result p0

    return p0
.end method

.method public h()Z
    .locals 0

    .line 232
    iget-object p0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    invoke-virtual {p0}, Landroidx/core/n/ao$e;->a()Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 558
    iget-object v0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    invoke-virtual {p0}, Landroidx/core/n/ao$e;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method

.method public i()Landroidx/core/n/ao;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 244
    iget-object p0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    invoke-virtual {p0}, Landroidx/core/n/ao$e;->c()Landroidx/core/n/ao;

    move-result-object p0

    return-object p0
.end method

.method public j()I
    .locals 0

    .line 305
    invoke-virtual {p0}, Landroidx/core/n/ao;->s()Landroidx/core/graphics/f;

    move-result-object p0

    iget p0, p0, Landroidx/core/graphics/f;->c:I

    return p0
.end method

.method public k()I
    .locals 0

    .line 322
    invoke-virtual {p0}, Landroidx/core/n/ao;->s()Landroidx/core/graphics/f;

    move-result-object p0

    iget p0, p0, Landroidx/core/graphics/f;->b:I

    return p0
.end method

.method public l()I
    .locals 0

    .line 339
    invoke-virtual {p0}, Landroidx/core/n/ao;->s()Landroidx/core/graphics/f;

    move-result-object p0

    iget p0, p0, Landroidx/core/graphics/f;->d:I

    return p0
.end method

.method public m()I
    .locals 0

    .line 356
    invoke-virtual {p0}, Landroidx/core/n/ao;->s()Landroidx/core/graphics/f;

    move-result-object p0

    iget p0, p0, Landroidx/core/graphics/f;->e:I

    return p0
.end method

.method public n()Z
    .locals 1

    .line 373
    invoke-virtual {p0}, Landroidx/core/n/ao;->s()Landroidx/core/graphics/f;

    move-result-object p0

    sget-object v0, Landroidx/core/graphics/f;->a:Landroidx/core/graphics/f;

    invoke-virtual {p0, v0}, Landroidx/core/graphics/f;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public o()Landroidx/core/n/ao;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 385
    iget-object p0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    invoke-virtual {p0}, Landroidx/core/n/ao$e;->d()Landroidx/core/n/ao;

    move-result-object p0

    return-object p0
.end method

.method public p()Landroidx/core/n/d;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 398
    iget-object p0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    invoke-virtual {p0}, Landroidx/core/n/ao$e;->e()Landroidx/core/n/d;

    move-result-object p0

    return-object p0
.end method

.method public q()Landroidx/core/n/ao;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 410
    iget-object p0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    invoke-virtual {p0}, Landroidx/core/n/ao$e;->f()Landroidx/core/n/ao;

    move-result-object p0

    return-object p0
.end method

.method public r()Landroidx/core/graphics/f;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 428
    iget-object p0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    invoke-virtual {p0}, Landroidx/core/n/ao$e;->g()Landroidx/core/graphics/f;

    move-result-object p0

    return-object p0
.end method

.method public s()Landroidx/core/graphics/f;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 448
    iget-object p0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    invoke-virtual {p0}, Landroidx/core/n/ao$e;->h()Landroidx/core/graphics/f;

    move-result-object p0

    return-object p0
.end method

.method public t()Landroidx/core/graphics/f;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 462
    iget-object p0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    invoke-virtual {p0}, Landroidx/core/n/ao$e;->j()Landroidx/core/graphics/f;

    move-result-object p0

    return-object p0
.end method

.method public u()Landroidx/core/graphics/f;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 478
    iget-object p0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    invoke-virtual {p0}, Landroidx/core/n/ao$e;->k()Landroidx/core/graphics/f;

    move-result-object p0

    return-object p0
.end method

.method public v()Landroidx/core/graphics/f;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 496
    iget-object p0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    invoke-virtual {p0}, Landroidx/core/n/ao$e;->i()Landroidx/core/graphics/f;

    move-result-object p0

    return-object p0
.end method

.method public w()Landroid/view/WindowInsets;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation build Landroidx/annotation/am;
        a = 0x14
    .end annotation

    .line 569
    iget-object v0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    instance-of v0, v0, Landroidx/core/n/ao$f;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/core/n/ao;->c:Landroidx/core/n/ao$e;

    check-cast p0, Landroidx/core/n/ao$f;

    iget-object p0, p0, Landroidx/core/n/ao$f;->b:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
