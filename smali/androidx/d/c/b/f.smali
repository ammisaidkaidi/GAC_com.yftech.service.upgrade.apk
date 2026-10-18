.class public Landroidx/d/c/b/f;
.super Landroidx/d/c/b/n;
.source "SourceFile"


# static fields
.field static final a:Z = false

.field static bp:I = 0x0

.field private static final br:I = 0x8

.field private static final bs:Z = false

.field private static final bt:Z = false


# instance fields
.field protected aY:Landroidx/d/c/e;

.field aZ:I

.field b:Landroidx/d/c/b/a/b;

.field private bA:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/d/c/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private bB:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/d/c/b/d;",
            ">;"
        }
    .end annotation
.end field

.field ba:I

.field bb:I

.field bc:I

.field public bd:I

.field public be:I

.field bf:[Landroidx/d/c/b/c;

.field bg:[Landroidx/d/c/b/c;

.field public bh:Z

.field public bi:Z

.field public bj:Z

.field public bk:I

.field public bl:I

.field public bm:Z

.field bn:I

.field public bo:Landroidx/d/c/b/a/b$a;

.field private bu:Z

.field private bv:I

.field private bw:Z

.field private bx:Z

.field private by:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/d/c/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private bz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/d/c/b/d;",
            ">;"
        }
    .end annotation
.end field

.field public c:Landroidx/d/c/b/a/e;

.field protected d:Landroidx/d/c/b/a/b$b;

.field public e:Landroidx/d/c/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 178
    invoke-direct {p0}, Landroidx/d/c/b/n;-><init>()V

    .line 48
    new-instance v0, Landroidx/d/c/b/a/b;

    invoke-direct {v0, p0}, Landroidx/d/c/b/a/b;-><init>(Landroidx/d/c/b/f;)V

    iput-object v0, p0, Landroidx/d/c/b/f;->b:Landroidx/d/c/b/a/b;

    .line 54
    new-instance v0, Landroidx/d/c/b/a/e;

    invoke-direct {v0, p0}, Landroidx/d/c/b/a/e;-><init>(Landroidx/d/c/b/f;)V

    iput-object v0, p0, Landroidx/d/c/b/f;->c:Landroidx/d/c/b/a/e;

    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Landroidx/d/c/b/f;->d:Landroidx/d/c/b/a/b$b;

    const/4 v1, 0x0

    .line 138
    iput-boolean v1, p0, Landroidx/d/c/b/f;->bu:Z

    .line 146
    new-instance v2, Landroidx/d/c/e;

    invoke-direct {v2}, Landroidx/d/c/e;-><init>()V

    iput-object v2, p0, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    .line 153
    iput v1, p0, Landroidx/d/c/b/f;->bd:I

    .line 154
    iput v1, p0, Landroidx/d/c/b/f;->be:I

    const/4 v2, 0x4

    .line 156
    new-array v3, v2, [Landroidx/d/c/b/c;

    iput-object v3, p0, Landroidx/d/c/b/f;->bf:[Landroidx/d/c/b/c;

    .line 157
    new-array v2, v2, [Landroidx/d/c/b/c;

    iput-object v2, p0, Landroidx/d/c/b/f;->bg:[Landroidx/d/c/b/c;

    .line 159
    iput-boolean v1, p0, Landroidx/d/c/b/f;->bh:Z

    .line 160
    iput-boolean v1, p0, Landroidx/d/c/b/f;->bi:Z

    .line 161
    iput-boolean v1, p0, Landroidx/d/c/b/f;->bj:Z

    .line 162
    iput v1, p0, Landroidx/d/c/b/f;->bk:I

    .line 163
    iput v1, p0, Landroidx/d/c/b/f;->bl:I

    const/16 v2, 0x101

    .line 165
    iput v2, p0, Landroidx/d/c/b/f;->bv:I

    .line 166
    iput-boolean v1, p0, Landroidx/d/c/b/f;->bm:Z

    .line 168
    iput-boolean v1, p0, Landroidx/d/c/b/f;->bw:Z

    .line 169
    iput-boolean v1, p0, Landroidx/d/c/b/f;->bx:Z

    .line 272
    iput v1, p0, Landroidx/d/c/b/f;->bn:I

    .line 274
    iput-object v0, p0, Landroidx/d/c/b/f;->by:Ljava/lang/ref/WeakReference;

    .line 275
    iput-object v0, p0, Landroidx/d/c/b/f;->bz:Ljava/lang/ref/WeakReference;

    .line 276
    iput-object v0, p0, Landroidx/d/c/b/f;->bA:Ljava/lang/ref/WeakReference;

    .line 277
    iput-object v0, p0, Landroidx/d/c/b/f;->bB:Ljava/lang/ref/WeakReference;

    .line 480
    new-instance v0, Landroidx/d/c/b/a/b$a;

    invoke-direct {v0}, Landroidx/d/c/b/a/b$a;-><init>()V

    iput-object v0, p0, Landroidx/d/c/b/f;->bo:Landroidx/d/c/b/a/b$a;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 200
    invoke-direct {p0, p1, p2}, Landroidx/d/c/b/n;-><init>(II)V

    .line 48
    new-instance p1, Landroidx/d/c/b/a/b;

    invoke-direct {p1, p0}, Landroidx/d/c/b/a/b;-><init>(Landroidx/d/c/b/f;)V

    iput-object p1, p0, Landroidx/d/c/b/f;->b:Landroidx/d/c/b/a/b;

    .line 54
    new-instance p1, Landroidx/d/c/b/a/e;

    invoke-direct {p1, p0}, Landroidx/d/c/b/a/e;-><init>(Landroidx/d/c/b/f;)V

    iput-object p1, p0, Landroidx/d/c/b/f;->c:Landroidx/d/c/b/a/e;

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Landroidx/d/c/b/f;->d:Landroidx/d/c/b/a/b$b;

    const/4 p2, 0x0

    .line 138
    iput-boolean p2, p0, Landroidx/d/c/b/f;->bu:Z

    .line 146
    new-instance v0, Landroidx/d/c/e;

    invoke-direct {v0}, Landroidx/d/c/e;-><init>()V

    iput-object v0, p0, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    .line 153
    iput p2, p0, Landroidx/d/c/b/f;->bd:I

    .line 154
    iput p2, p0, Landroidx/d/c/b/f;->be:I

    const/4 v0, 0x4

    .line 156
    new-array v1, v0, [Landroidx/d/c/b/c;

    iput-object v1, p0, Landroidx/d/c/b/f;->bf:[Landroidx/d/c/b/c;

    .line 157
    new-array v0, v0, [Landroidx/d/c/b/c;

    iput-object v0, p0, Landroidx/d/c/b/f;->bg:[Landroidx/d/c/b/c;

    .line 159
    iput-boolean p2, p0, Landroidx/d/c/b/f;->bh:Z

    .line 160
    iput-boolean p2, p0, Landroidx/d/c/b/f;->bi:Z

    .line 161
    iput-boolean p2, p0, Landroidx/d/c/b/f;->bj:Z

    .line 162
    iput p2, p0, Landroidx/d/c/b/f;->bk:I

    .line 163
    iput p2, p0, Landroidx/d/c/b/f;->bl:I

    const/16 v0, 0x101

    .line 165
    iput v0, p0, Landroidx/d/c/b/f;->bv:I

    .line 166
    iput-boolean p2, p0, Landroidx/d/c/b/f;->bm:Z

    .line 168
    iput-boolean p2, p0, Landroidx/d/c/b/f;->bw:Z

    .line 169
    iput-boolean p2, p0, Landroidx/d/c/b/f;->bx:Z

    .line 272
    iput p2, p0, Landroidx/d/c/b/f;->bn:I

    .line 274
    iput-object p1, p0, Landroidx/d/c/b/f;->by:Ljava/lang/ref/WeakReference;

    .line 275
    iput-object p1, p0, Landroidx/d/c/b/f;->bz:Ljava/lang/ref/WeakReference;

    .line 276
    iput-object p1, p0, Landroidx/d/c/b/f;->bA:Ljava/lang/ref/WeakReference;

    .line 277
    iput-object p1, p0, Landroidx/d/c/b/f;->bB:Ljava/lang/ref/WeakReference;

    .line 480
    new-instance p1, Landroidx/d/c/b/a/b$a;

    invoke-direct {p1}, Landroidx/d/c/b/a/b$a;-><init>()V

    iput-object p1, p0, Landroidx/d/c/b/f;->bo:Landroidx/d/c/b/a/b$a;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/d/c/b/n;-><init>(IIII)V

    .line 48
    new-instance p1, Landroidx/d/c/b/a/b;

    invoke-direct {p1, p0}, Landroidx/d/c/b/a/b;-><init>(Landroidx/d/c/b/f;)V

    iput-object p1, p0, Landroidx/d/c/b/f;->b:Landroidx/d/c/b/a/b;

    .line 54
    new-instance p1, Landroidx/d/c/b/a/e;

    invoke-direct {p1, p0}, Landroidx/d/c/b/a/e;-><init>(Landroidx/d/c/b/f;)V

    iput-object p1, p0, Landroidx/d/c/b/f;->c:Landroidx/d/c/b/a/e;

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Landroidx/d/c/b/f;->d:Landroidx/d/c/b/a/b$b;

    const/4 p2, 0x0

    .line 138
    iput-boolean p2, p0, Landroidx/d/c/b/f;->bu:Z

    .line 146
    new-instance p3, Landroidx/d/c/e;

    invoke-direct {p3}, Landroidx/d/c/e;-><init>()V

    iput-object p3, p0, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    .line 153
    iput p2, p0, Landroidx/d/c/b/f;->bd:I

    .line 154
    iput p2, p0, Landroidx/d/c/b/f;->be:I

    const/4 p3, 0x4

    .line 156
    new-array p4, p3, [Landroidx/d/c/b/c;

    iput-object p4, p0, Landroidx/d/c/b/f;->bf:[Landroidx/d/c/b/c;

    .line 157
    new-array p3, p3, [Landroidx/d/c/b/c;

    iput-object p3, p0, Landroidx/d/c/b/f;->bg:[Landroidx/d/c/b/c;

    .line 159
    iput-boolean p2, p0, Landroidx/d/c/b/f;->bh:Z

    .line 160
    iput-boolean p2, p0, Landroidx/d/c/b/f;->bi:Z

    .line 161
    iput-boolean p2, p0, Landroidx/d/c/b/f;->bj:Z

    .line 162
    iput p2, p0, Landroidx/d/c/b/f;->bk:I

    .line 163
    iput p2, p0, Landroidx/d/c/b/f;->bl:I

    const/16 p3, 0x101

    .line 165
    iput p3, p0, Landroidx/d/c/b/f;->bv:I

    .line 166
    iput-boolean p2, p0, Landroidx/d/c/b/f;->bm:Z

    .line 168
    iput-boolean p2, p0, Landroidx/d/c/b/f;->bw:Z

    .line 169
    iput-boolean p2, p0, Landroidx/d/c/b/f;->bx:Z

    .line 272
    iput p2, p0, Landroidx/d/c/b/f;->bn:I

    .line 274
    iput-object p1, p0, Landroidx/d/c/b/f;->by:Ljava/lang/ref/WeakReference;

    .line 275
    iput-object p1, p0, Landroidx/d/c/b/f;->bz:Ljava/lang/ref/WeakReference;

    .line 276
    iput-object p1, p0, Landroidx/d/c/b/f;->bA:Ljava/lang/ref/WeakReference;

    .line 277
    iput-object p1, p0, Landroidx/d/c/b/f;->bB:Ljava/lang/ref/WeakReference;

    .line 480
    new-instance p1, Landroidx/d/c/b/a/b$a;

    invoke-direct {p1}, Landroidx/d/c/b/a/b$a;-><init>()V

    iput-object p1, p0, Landroidx/d/c/b/f;->bo:Landroidx/d/c/b/a/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2

    .line 204
    invoke-direct {p0, p2, p3}, Landroidx/d/c/b/n;-><init>(II)V

    .line 48
    new-instance p2, Landroidx/d/c/b/a/b;

    invoke-direct {p2, p0}, Landroidx/d/c/b/a/b;-><init>(Landroidx/d/c/b/f;)V

    iput-object p2, p0, Landroidx/d/c/b/f;->b:Landroidx/d/c/b/a/b;

    .line 54
    new-instance p2, Landroidx/d/c/b/a/e;

    invoke-direct {p2, p0}, Landroidx/d/c/b/a/e;-><init>(Landroidx/d/c/b/f;)V

    iput-object p2, p0, Landroidx/d/c/b/f;->c:Landroidx/d/c/b/a/e;

    const/4 p2, 0x0

    .line 127
    iput-object p2, p0, Landroidx/d/c/b/f;->d:Landroidx/d/c/b/a/b$b;

    const/4 p3, 0x0

    .line 138
    iput-boolean p3, p0, Landroidx/d/c/b/f;->bu:Z

    .line 146
    new-instance v0, Landroidx/d/c/e;

    invoke-direct {v0}, Landroidx/d/c/e;-><init>()V

    iput-object v0, p0, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    .line 153
    iput p3, p0, Landroidx/d/c/b/f;->bd:I

    .line 154
    iput p3, p0, Landroidx/d/c/b/f;->be:I

    const/4 v0, 0x4

    .line 156
    new-array v1, v0, [Landroidx/d/c/b/c;

    iput-object v1, p0, Landroidx/d/c/b/f;->bf:[Landroidx/d/c/b/c;

    .line 157
    new-array v0, v0, [Landroidx/d/c/b/c;

    iput-object v0, p0, Landroidx/d/c/b/f;->bg:[Landroidx/d/c/b/c;

    .line 159
    iput-boolean p3, p0, Landroidx/d/c/b/f;->bh:Z

    .line 160
    iput-boolean p3, p0, Landroidx/d/c/b/f;->bi:Z

    .line 161
    iput-boolean p3, p0, Landroidx/d/c/b/f;->bj:Z

    .line 162
    iput p3, p0, Landroidx/d/c/b/f;->bk:I

    .line 163
    iput p3, p0, Landroidx/d/c/b/f;->bl:I

    const/16 v0, 0x101

    .line 165
    iput v0, p0, Landroidx/d/c/b/f;->bv:I

    .line 166
    iput-boolean p3, p0, Landroidx/d/c/b/f;->bm:Z

    .line 168
    iput-boolean p3, p0, Landroidx/d/c/b/f;->bw:Z

    .line 169
    iput-boolean p3, p0, Landroidx/d/c/b/f;->bx:Z

    .line 272
    iput p3, p0, Landroidx/d/c/b/f;->bn:I

    .line 274
    iput-object p2, p0, Landroidx/d/c/b/f;->by:Ljava/lang/ref/WeakReference;

    .line 275
    iput-object p2, p0, Landroidx/d/c/b/f;->bz:Ljava/lang/ref/WeakReference;

    .line 276
    iput-object p2, p0, Landroidx/d/c/b/f;->bA:Ljava/lang/ref/WeakReference;

    .line 277
    iput-object p2, p0, Landroidx/d/c/b/f;->bB:Ljava/lang/ref/WeakReference;

    .line 480
    new-instance p2, Landroidx/d/c/b/a/b$a;

    invoke-direct {p2}, Landroidx/d/c/b/a/b$a;-><init>()V

    iput-object p2, p0, Landroidx/d/c/b/f;->bo:Landroidx/d/c/b/a/b$a;

    .line 205
    invoke-virtual {p0, p1}, Landroidx/d/c/b/f;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroidx/d/c/b/d;Landroidx/d/c/i;)V
    .locals 2

    .line 308
    iget-object v0, p0, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    invoke-virtual {v0, p1}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object p1

    .line 310
    iget-object p0, p0, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/d/c/e;->a(Landroidx/d/c/i;Landroidx/d/c/i;II)V

    return-void
.end method

.method public static a(Landroidx/d/c/b/e;Landroidx/d/c/b/a/b$b;Landroidx/d/c/b/a/b$a;I)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 490
    :cond_0
    invoke-virtual {p0}, Landroidx/d/c/b/e;->aj()Landroidx/d/c/b/e$a;

    move-result-object v1

    iput-object v1, p2, Landroidx/d/c/b/a/b$a;->d:Landroidx/d/c/b/e$a;

    .line 491
    invoke-virtual {p0}, Landroidx/d/c/b/e;->ak()Landroidx/d/c/b/e$a;

    move-result-object v1

    iput-object v1, p2, Landroidx/d/c/b/a/b$a;->e:Landroidx/d/c/b/e$a;

    .line 492
    invoke-virtual {p0}, Landroidx/d/c/b/e;->I()I

    move-result v1

    iput v1, p2, Landroidx/d/c/b/a/b$a;->f:I

    .line 493
    invoke-virtual {p0}, Landroidx/d/c/b/e;->L()I

    move-result v1

    iput v1, p2, Landroidx/d/c/b/a/b$a;->g:I

    .line 494
    iput-boolean v0, p2, Landroidx/d/c/b/a/b$a;->l:Z

    .line 495
    iput p3, p2, Landroidx/d/c/b/a/b$a;->m:I

    .line 497
    iget-object p3, p2, Landroidx/d/c/b/a/b$a;->d:Landroidx/d/c/b/e$a;

    sget-object v1, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    const/4 v2, 0x1

    if-ne p3, v1, :cond_1

    move p3, v2

    goto :goto_0

    :cond_1
    move p3, v0

    .line 498
    :goto_0
    iget-object v1, p2, Landroidx/d/c/b/a/b$a;->e:Landroidx/d/c/b/e$a;

    sget-object v3, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v1, v3, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    const/4 v3, 0x0

    if-eqz p3, :cond_3

    .line 500
    iget v4, p0, Landroidx/d/c/b/e;->ao:F

    cmpl-float v4, v4, v3

    if-lez v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    if-eqz v1, :cond_4

    .line 501
    iget v5, p0, Landroidx/d/c/b/e;->ao:F

    cmpl-float v3, v5, v3

    if-lez v3, :cond_4

    move v3, v2

    goto :goto_3

    :cond_4
    move v3, v0

    :goto_3
    if-eqz p3, :cond_6

    .line 503
    invoke-virtual {p0, v0}, Landroidx/d/c/b/e;->g(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v5, p0, Landroidx/d/c/b/e;->G:I

    if-nez v5, :cond_6

    if-nez v4, :cond_6

    .line 507
    sget-object p3, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    iput-object p3, p2, Landroidx/d/c/b/a/b$a;->d:Landroidx/d/c/b/e$a;

    if-eqz v1, :cond_5

    .line 508
    iget p3, p0, Landroidx/d/c/b/e;->H:I

    if-nez p3, :cond_5

    .line 510
    sget-object p3, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    iput-object p3, p2, Landroidx/d/c/b/a/b$a;->d:Landroidx/d/c/b/e$a;

    :cond_5
    move p3, v0

    :cond_6
    if-eqz v1, :cond_8

    .line 514
    invoke-virtual {p0, v2}, Landroidx/d/c/b/e;->g(I)Z

    move-result v5

    if-eqz v5, :cond_8

    iget v5, p0, Landroidx/d/c/b/e;->H:I

    if-nez v5, :cond_8

    if-nez v3, :cond_8

    .line 518
    sget-object v1, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    iput-object v1, p2, Landroidx/d/c/b/a/b$a;->e:Landroidx/d/c/b/e$a;

    if-eqz p3, :cond_7

    .line 519
    iget v1, p0, Landroidx/d/c/b/e;->G:I

    if-nez v1, :cond_7

    .line 521
    sget-object v1, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    iput-object v1, p2, Landroidx/d/c/b/a/b$a;->e:Landroidx/d/c/b/e$a;

    :cond_7
    move v1, v0

    .line 525
    :cond_8
    invoke-virtual {p0}, Landroidx/d/c/b/e;->d()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 527
    sget-object p3, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    iput-object p3, p2, Landroidx/d/c/b/a/b$a;->d:Landroidx/d/c/b/e$a;

    move p3, v0

    .line 529
    :cond_9
    invoke-virtual {p0}, Landroidx/d/c/b/e;->e()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 531
    sget-object v1, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    iput-object v1, p2, Landroidx/d/c/b/a/b$a;->e:Landroidx/d/c/b/e$a;

    move v1, v0

    :cond_a
    const/4 v5, -0x1

    const/4 v6, 0x4

    if-eqz v4, :cond_f

    .line 535
    iget-object v4, p0, Landroidx/d/c/b/e;->I:[I

    aget v0, v4, v0

    if-ne v0, v6, :cond_b

    .line 536
    sget-object v0, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    iput-object v0, p2, Landroidx/d/c/b/a/b$a;->d:Landroidx/d/c/b/e$a;

    goto :goto_6

    :cond_b
    if-nez v1, :cond_f

    .line 540
    iget-object v0, p2, Landroidx/d/c/b/a/b$a;->e:Landroidx/d/c/b/e$a;

    sget-object v1, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    if-ne v0, v1, :cond_c

    .line 541
    iget v0, p2, Landroidx/d/c/b/a/b$a;->g:I

    goto :goto_4

    .line 543
    :cond_c
    sget-object v0, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    iput-object v0, p2, Landroidx/d/c/b/a/b$a;->d:Landroidx/d/c/b/e$a;

    .line 544
    invoke-interface {p1, p0, p2}, Landroidx/d/c/b/a/b$b;->a(Landroidx/d/c/b/e;Landroidx/d/c/b/a/b$a;)V

    .line 545
    iget v0, p2, Landroidx/d/c/b/a/b$a;->i:I

    .line 547
    :goto_4
    sget-object v1, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    iput-object v1, p2, Landroidx/d/c/b/a/b$a;->d:Landroidx/d/c/b/e$a;

    .line 548
    iget v1, p0, Landroidx/d/c/b/e;->ap:I

    if-eqz v1, :cond_e

    iget v1, p0, Landroidx/d/c/b/e;->ap:I

    if-ne v1, v5, :cond_d

    goto :goto_5

    .line 551
    :cond_d
    invoke-virtual {p0}, Landroidx/d/c/b/e;->ac()F

    move-result v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p2, Landroidx/d/c/b/a/b$a;->f:I

    goto :goto_6

    .line 549
    :cond_e
    :goto_5
    invoke-virtual {p0}, Landroidx/d/c/b/e;->ac()F

    move-result v1

    int-to-float v0, v0

    mul-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p2, Landroidx/d/c/b/a/b$a;->f:I

    :cond_f
    :goto_6
    if-eqz v3, :cond_14

    .line 559
    iget-object v0, p0, Landroidx/d/c/b/e;->I:[I

    aget v0, v0, v2

    if-ne v0, v6, :cond_10

    .line 560
    sget-object p3, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    iput-object p3, p2, Landroidx/d/c/b/a/b$a;->e:Landroidx/d/c/b/e$a;

    goto :goto_9

    :cond_10
    if-nez p3, :cond_14

    .line 564
    iget-object p3, p2, Landroidx/d/c/b/a/b$a;->d:Landroidx/d/c/b/e$a;

    sget-object v0, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    if-ne p3, v0, :cond_11

    .line 565
    iget p3, p2, Landroidx/d/c/b/a/b$a;->f:I

    goto :goto_7

    .line 567
    :cond_11
    sget-object p3, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    iput-object p3, p2, Landroidx/d/c/b/a/b$a;->e:Landroidx/d/c/b/e$a;

    .line 568
    invoke-interface {p1, p0, p2}, Landroidx/d/c/b/a/b$b;->a(Landroidx/d/c/b/e;Landroidx/d/c/b/a/b$a;)V

    .line 569
    iget p3, p2, Landroidx/d/c/b/a/b$a;->h:I

    .line 571
    :goto_7
    sget-object v0, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    iput-object v0, p2, Landroidx/d/c/b/a/b$a;->e:Landroidx/d/c/b/e$a;

    .line 572
    iget v0, p0, Landroidx/d/c/b/e;->ap:I

    if-eqz v0, :cond_13

    iget v0, p0, Landroidx/d/c/b/e;->ap:I

    if-ne v0, v5, :cond_12

    goto :goto_8

    :cond_12
    int-to-float p3, p3

    .line 575
    invoke-virtual {p0}, Landroidx/d/c/b/e;->ac()F

    move-result v0

    mul-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p2, Landroidx/d/c/b/a/b$a;->g:I

    goto :goto_9

    :cond_13
    :goto_8
    int-to-float p3, p3

    .line 573
    invoke-virtual {p0}, Landroidx/d/c/b/e;->ac()F

    move-result v0

    div-float/2addr p3, v0

    float-to-int p3, p3

    iput p3, p2, Landroidx/d/c/b/a/b$a;->g:I

    .line 583
    :cond_14
    :goto_9
    invoke-interface {p1, p0, p2}, Landroidx/d/c/b/a/b$b;->a(Landroidx/d/c/b/e;Landroidx/d/c/b/a/b$a;)V

    .line 584
    iget p1, p2, Landroidx/d/c/b/a/b$a;->h:I

    invoke-virtual {p0, p1}, Landroidx/d/c/b/e;->p(I)V

    .line 585
    iget p1, p2, Landroidx/d/c/b/a/b$a;->i:I

    invoke-virtual {p0, p1}, Landroidx/d/c/b/e;->q(I)V

    .line 586
    iget-boolean p1, p2, Landroidx/d/c/b/a/b$a;->k:Z

    invoke-virtual {p0, p1}, Landroidx/d/c/b/e;->c(Z)V

    .line 587
    iget p1, p2, Landroidx/d/c/b/a/b$a;->j:I

    invoke-virtual {p0, p1}, Landroidx/d/c/b/e;->u(I)V

    .line 588
    sget p0, Landroidx/d/c/b/a/b$a;->a:I

    iput p0, p2, Landroidx/d/c/b/a/b$a;->m:I

    .line 594
    iget-boolean p0, p2, Landroidx/d/c/b/a/b$a;->l:Z

    return p0
.end method

.method private aB()V
    .locals 1

    const/4 v0, 0x0

    .line 993
    iput v0, p0, Landroidx/d/c/b/f;->bd:I

    .line 994
    iput v0, p0, Landroidx/d/c/b/f;->be:I

    return-void
.end method

.method private b(Landroidx/d/c/b/d;Landroidx/d/c/i;)V
    .locals 2

    .line 314
    iget-object v0, p0, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    invoke-virtual {v0, p1}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object p1

    .line 316
    iget-object p0, p0, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v1, v0}, Landroidx/d/c/e;->a(Landroidx/d/c/i;Landroidx/d/c/i;II)V

    return-void
.end method

.method private d(Landroidx/d/c/b/e;)V
    .locals 5

    .line 1019
    iget v0, p0, Landroidx/d/c/b/f;->bd:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/d/c/b/f;->bg:[Landroidx/d/c/b/c;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1020
    iget-object v0, p0, Landroidx/d/c/b/f;->bg:[Landroidx/d/c/b/c;

    iget-object v1, p0, Landroidx/d/c/b/f;->bg:[Landroidx/d/c/b/c;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 1021
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/d/c/b/c;

    iput-object v0, p0, Landroidx/d/c/b/f;->bg:[Landroidx/d/c/b/c;

    .line 1023
    :cond_0
    iget-object v0, p0, Landroidx/d/c/b/f;->bg:[Landroidx/d/c/b/c;

    iget v1, p0, Landroidx/d/c/b/f;->bd:I

    new-instance v2, Landroidx/d/c/b/c;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidx/d/c/b/f;->as()Z

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Landroidx/d/c/b/c;-><init>(Landroidx/d/c/b/e;IZ)V

    aput-object v2, v0, v1

    .line 1024
    iget p1, p0, Landroidx/d/c/b/f;->bd:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/d/c/b/f;->bd:I

    return-void
.end method

.method private e(Landroidx/d/c/b/e;)V
    .locals 5

    .line 1034
    iget v0, p0, Landroidx/d/c/b/f;->be:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/d/c/b/f;->bf:[Landroidx/d/c/b/c;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 1035
    iget-object v0, p0, Landroidx/d/c/b/f;->bf:[Landroidx/d/c/b/c;

    iget-object v2, p0, Landroidx/d/c/b/f;->bf:[Landroidx/d/c/b/c;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    .line 1036
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/d/c/b/c;

    iput-object v0, p0, Landroidx/d/c/b/f;->bf:[Landroidx/d/c/b/c;

    .line 1038
    :cond_0
    iget-object v0, p0, Landroidx/d/c/b/f;->bf:[Landroidx/d/c/b/c;

    iget v2, p0, Landroidx/d/c/b/f;->be:I

    new-instance v3, Landroidx/d/c/b/c;

    invoke-virtual {p0}, Landroidx/d/c/b/f;->as()Z

    move-result v4

    invoke-direct {v3, p1, v1, v4}, Landroidx/d/c/b/c;-><init>(Landroidx/d/c/b/e;IZ)V

    aput-object v3, v0, v2

    .line 1039
    iget p1, p0, Landroidx/d/c/b/f;->be:I

    add-int/2addr p1, v1

    iput p1, p0, Landroidx/d/c/b/f;->be:I

    return-void
.end method


# virtual methods
.method public D()Ljava/lang/String;
    .locals 0

    const-string p0, "ConstraintLayout"

    return-object p0
.end method

.method public a(IIIIIIIII)J
    .locals 11

    move-object v1, p0

    move/from16 v3, p8

    .line 117
    iput v3, v1, Landroidx/d/c/b/f;->aZ:I

    move/from16 v4, p9

    .line 118
    iput v4, v1, Landroidx/d/c/b/f;->ba:I

    .line 119
    iget-object v0, v1, Landroidx/d/c/b/f;->b:Landroidx/d/c/b/a/b;

    move v2, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Landroidx/d/c/b/a/b;->a(Landroidx/d/c/b/f;IIIIIIIII)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    .line 214
    iput p1, p0, Landroidx/d/c/b/f;->bv:I

    .line 215
    iget-object p1, p0, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    const/16 p1, 0x200

    invoke-virtual {p0, p1}, Landroidx/d/c/b/f;->b(I)Z

    move-result p0

    sput-boolean p0, Landroidx/d/c/e;->d:Z

    return-void
.end method

.method public a(Landroidx/d/c/b/a/b$b;)V
    .locals 0

    .line 130
    iput-object p1, p0, Landroidx/d/c/b/f;->d:Landroidx/d/c/b/a/b$b;

    .line 131
    iget-object p0, p0, Landroidx/d/c/b/f;->c:Landroidx/d/c/b/a/e;

    invoke-virtual {p0, p1}, Landroidx/d/c/b/a/e;->a(Landroidx/d/c/b/a/b$b;)V

    return-void
.end method

.method a(Landroidx/d/c/b/e;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 1006
    invoke-direct {p0, p1}, Landroidx/d/c/b/f;->d(Landroidx/d/c/b/e;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1008
    invoke-direct {p0, p1}, Landroidx/d/c/b/f;->e(Landroidx/d/c/b/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroidx/d/c/e;[Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 423
    aput-boolean v0, p2, v1

    const/16 p2, 0x40

    .line 424
    invoke-virtual {p0, p2}, Landroidx/d/c/b/f;->b(I)Z

    move-result p2

    .line 425
    invoke-virtual {p0, p1, p2}, Landroidx/d/c/b/f;->b(Landroidx/d/c/e;Z)V

    .line 426
    iget-object v1, p0, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 428
    iget-object v2, p0, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/c/b/e;

    .line 429
    invoke-virtual {v2, p1, p2}, Landroidx/d/c/b/e;->b(Landroidx/d/c/e;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroidx/d/c/f;)V
    .locals 0

    .line 142
    iput-object p1, p0, Landroidx/d/c/b/f;->e:Landroidx/d/c/f;

    .line 143
    iget-object p0, p0, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    invoke-virtual {p0, p1}, Landroidx/d/c/e;->a(Landroidx/d/c/f;)V

    return-void
.end method

.method public a(ZZ)V
    .locals 3

    .line 435
    invoke-super {p0, p1, p2}, Landroidx/d/c/b/n;->a(ZZ)V

    .line 436
    iget-object v0, p0, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 438
    iget-object v2, p0, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/c/b/e;

    .line 439
    invoke-virtual {v2, p1, p2}, Landroidx/d/c/b/e;->a(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Z)Z
    .locals 0

    .line 72
    iget-object p0, p0, Landroidx/d/c/b/f;->c:Landroidx/d/c/b/a/e;

    invoke-virtual {p0, p1}, Landroidx/d/c/b/a/e;->a(Z)Z

    move-result p0

    return p0
.end method

.method public a(ZI)Z
    .locals 0

    .line 95
    iget-object p0, p0, Landroidx/d/c/b/f;->c:Landroidx/d/c/b/a/e;

    invoke-virtual {p0, p1, p2}, Landroidx/d/c/b/a/e;->a(ZI)Z

    move-result p0

    return p0
.end method

.method public aq()Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Landroidx/d/c/b/f;->bw:Z

    return p0
.end method

.method public ar()Z
    .locals 0

    .line 269
    iget-boolean p0, p0, Landroidx/d/c/b/f;->bx:Z

    return p0
.end method

.method public as()Z
    .locals 0

    .line 473
    iget-boolean p0, p0, Landroidx/d/c/b/f;->bu:Z

    return p0
.end method

.method public at()V
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 611
    iput v2, v1, Landroidx/d/c/b/f;->aq:I

    .line 612
    iput v2, v1, Landroidx/d/c/b/f;->ar:I

    .line 614
    iput-boolean v2, v1, Landroidx/d/c/b/f;->bw:Z

    .line 615
    iput-boolean v2, v1, Landroidx/d/c/b/f;->bx:Z

    .line 616
    iget-object v0, v1, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 618
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/f;->I()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 619
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/f;->L()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 620
    iget-object v5, v1, Landroidx/d/c/b/f;->ak:[Landroidx/d/c/b/e$a;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    .line 621
    iget-object v7, v1, Landroidx/d/c/b/f;->ak:[Landroidx/d/c/b/e$a;

    aget-object v7, v7, v2

    .line 628
    iget-object v8, v1, Landroidx/d/c/b/f;->e:Landroidx/d/c/f;

    if-eqz v8, :cond_0

    .line 629
    iget-object v8, v1, Landroidx/d/c/b/f;->e:Landroidx/d/c/f;

    iget-wide v9, v8, Landroidx/d/c/f;->P:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, v8, Landroidx/d/c/f;->P:J

    .line 638
    :cond_0
    iget v8, v1, Landroidx/d/c/b/f;->bv:I

    invoke-static {v8, v6}, Landroidx/d/c/b/k;->a(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 642
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/f;->h()Landroidx/d/c/b/a/b$b;

    move-result-object v8

    invoke-static {v1, v8}, Landroidx/d/c/b/a/h;->a(Landroidx/d/c/b/f;Landroidx/d/c/b/a/b$b;)V

    move v8, v2

    :goto_0
    if-ge v8, v3, :cond_3

    .line 647
    iget-object v9, v1, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/d/c/b/e;

    .line 668
    invoke-virtual {v9}, Landroidx/d/c/b/e;->t()Z

    move-result v10

    if-eqz v10, :cond_2

    instance-of v10, v9, Landroidx/d/c/b/h;

    if-nez v10, :cond_2

    instance-of v10, v9, Landroidx/d/c/b/a;

    if-nez v10, :cond_2

    instance-of v10, v9, Landroidx/d/c/b/m;

    if-nez v10, :cond_2

    .line 672
    invoke-virtual {v9}, Landroidx/d/c/b/e;->m()Z

    move-result v10

    if-nez v10, :cond_2

    .line 673
    invoke-virtual {v9, v2}, Landroidx/d/c/b/e;->y(I)Landroidx/d/c/b/e$a;

    move-result-object v10

    .line 674
    invoke-virtual {v9, v6}, Landroidx/d/c/b/e;->y(I)Landroidx/d/c/b/e$a;

    move-result-object v11

    .line 676
    sget-object v12, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v10, v12, :cond_1

    iget v10, v9, Landroidx/d/c/b/e;->G:I

    if-eq v10, v6, :cond_1

    sget-object v10, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    if-ne v11, v10, :cond_1

    iget v10, v9, Landroidx/d/c/b/e;->H:I

    if-eq v10, v6, :cond_1

    move v10, v6

    goto :goto_1

    :cond_1
    move v10, v2

    :goto_1
    if-nez v10, :cond_2

    .line 681
    new-instance v10, Landroidx/d/c/b/a/b$a;

    invoke-direct {v10}, Landroidx/d/c/b/a/b$a;-><init>()V

    .line 682
    iget-object v11, v1, Landroidx/d/c/b/f;->d:Landroidx/d/c/b/a/b$b;

    sget v12, Landroidx/d/c/b/a/b$a;->a:I

    invoke-static {v9, v11, v10, v12}, Landroidx/d/c/b/f;->a(Landroidx/d/c/b/e;Landroidx/d/c/b/a/b$b;Landroidx/d/c/b/a/b$a;I)Z

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x2

    if-le v3, v8, :cond_9

    .line 696
    sget-object v9, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-eq v7, v9, :cond_4

    sget-object v9, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-ne v5, v9, :cond_9

    :cond_4
    iget v9, v1, Landroidx/d/c/b/f;->bv:I

    const/16 v10, 0x400

    .line 698
    invoke-static {v9, v10}, Landroidx/d/c/b/k;->a(II)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 699
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/f;->h()Landroidx/d/c/b/a/b$b;

    move-result-object v9

    invoke-static {v1, v9}, Landroidx/d/c/b/a/i;->a(Landroidx/d/c/b/f;Landroidx/d/c/b/a/b$b;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 700
    sget-object v9, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-ne v7, v9, :cond_6

    .line 701
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/f;->I()I

    move-result v9

    if-ge v0, v9, :cond_5

    if-lez v0, :cond_5

    .line 705
    invoke-virtual {v1, v0}, Landroidx/d/c/b/f;->p(I)V

    .line 706
    iput-boolean v6, v1, Landroidx/d/c/b/f;->bw:Z

    goto :goto_2

    .line 708
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/f;->I()I

    move-result v0

    .line 711
    :cond_6
    :goto_2
    sget-object v9, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-ne v5, v9, :cond_8

    .line 712
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/f;->L()I

    move-result v9

    if-ge v4, v9, :cond_7

    if-lez v4, :cond_7

    .line 716
    invoke-virtual {v1, v4}, Landroidx/d/c/b/f;->q(I)V

    .line 717
    iput-boolean v6, v1, Landroidx/d/c/b/f;->bx:Z

    goto :goto_3

    .line 719
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/f;->L()I

    move-result v4

    :cond_8
    :goto_3
    move v9, v4

    move v4, v0

    move v0, v6

    goto :goto_4

    :cond_9
    move v9, v4

    move v4, v0

    move v0, v2

    :goto_4
    const/16 v10, 0x40

    .line 730
    invoke-virtual {v1, v10}, Landroidx/d/c/b/f;->b(I)Z

    move-result v11

    if-nez v11, :cond_b

    const/16 v11, 0x80

    invoke-virtual {v1, v11}, Landroidx/d/c/b/f;->b(I)Z

    move-result v11

    if-eqz v11, :cond_a

    goto :goto_5

    :cond_a
    move v11, v2

    goto :goto_6

    :cond_b
    :goto_5
    move v11, v6

    .line 732
    :goto_6
    iget-object v12, v1, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    iput-boolean v2, v12, Landroidx/d/c/e;->m:Z

    .line 733
    iget-object v12, v1, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    iput-boolean v2, v12, Landroidx/d/c/e;->n:Z

    .line 735
    iget v12, v1, Landroidx/d/c/b/f;->bv:I

    if-eqz v12, :cond_c

    if-eqz v11, :cond_c

    .line 737
    iget-object v11, v1, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    iput-boolean v6, v11, Landroidx/d/c/e;->n:Z

    .line 741
    :cond_c
    iget-object v11, v1, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    .line 742
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/f;->aj()Landroidx/d/c/b/e$a;

    move-result-object v12

    sget-object v13, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-eq v12, v13, :cond_e

    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/f;->ak()Landroidx/d/c/b/e$a;

    move-result-object v12

    sget-object v13, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-ne v12, v13, :cond_d

    goto :goto_7

    :cond_d
    move v12, v2

    goto :goto_8

    :cond_e
    :goto_7
    move v12, v6

    .line 745
    :goto_8
    invoke-direct/range {p0 .. p0}, Landroidx/d/c/b/f;->aB()V

    move v13, v2

    :goto_9
    if-ge v13, v3, :cond_10

    .line 751
    iget-object v14, v1, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/d/c/b/e;

    .line 752
    instance-of v15, v14, Landroidx/d/c/b/n;

    if-eqz v15, :cond_f

    .line 753
    check-cast v14, Landroidx/d/c/b/n;

    invoke-virtual {v14}, Landroidx/d/c/b/n;->at()V

    :cond_f
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 756
    :cond_10
    invoke-virtual {v1, v10}, Landroidx/d/c/b/f;->b(I)Z

    move-result v10

    move v14, v0

    move v0, v2

    move v13, v6

    :goto_a
    if-eqz v13, :cond_21

    add-int/lit8 v15, v0, 0x1

    .line 763
    :try_start_0
    iget-object v0, v1, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    invoke-virtual {v0}, Landroidx/d/c/e;->b()V

    .line 764
    invoke-direct/range {p0 .. p0}, Landroidx/d/c/b/f;->aB()V

    .line 778
    iget-object v0, v1, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    invoke-virtual {v1, v0}, Landroidx/d/c/b/f;->a(Landroidx/d/c/e;)V

    move v0, v2

    :goto_b
    if-ge v0, v3, :cond_11

    .line 780
    iget-object v6, v1, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/d/c/b/e;

    .line 781
    iget-object v2, v1, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    invoke-virtual {v6, v2}, Landroidx/d/c/b/e;->a(Landroidx/d/c/e;)V

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x1

    goto :goto_b

    .line 784
    :cond_11
    iget-object v0, v1, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    invoke-virtual {v1, v0}, Landroidx/d/c/b/f;->b(Landroidx/d/c/e;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 785
    :try_start_1
    iget-object v0, v1, Landroidx/d/c/b/f;->by:Ljava/lang/ref/WeakReference;

    const/4 v6, 0x0

    if-eqz v0, :cond_12

    iget-object v0, v1, Landroidx/d/c/b/f;->by:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 786
    iget-object v0, v1, Landroidx/d/c/b/f;->by:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/c/b/d;

    iget-object v13, v1, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    iget-object v8, v1, Landroidx/d/c/b/f;->U:Landroidx/d/c/b/d;

    invoke-virtual {v13, v8}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v8

    invoke-direct {v1, v0, v8}, Landroidx/d/c/b/f;->a(Landroidx/d/c/b/d;Landroidx/d/c/i;)V

    .line 787
    iput-object v6, v1, Landroidx/d/c/b/f;->by:Ljava/lang/ref/WeakReference;

    .line 789
    :cond_12
    iget-object v0, v1, Landroidx/d/c/b/f;->bA:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_13

    iget-object v0, v1, Landroidx/d/c/b/f;->bA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 790
    iget-object v0, v1, Landroidx/d/c/b/f;->bA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/c/b/d;

    iget-object v8, v1, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    iget-object v13, v1, Landroidx/d/c/b/f;->W:Landroidx/d/c/b/d;

    invoke-virtual {v8, v13}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v8

    invoke-direct {v1, v0, v8}, Landroidx/d/c/b/f;->b(Landroidx/d/c/b/d;Landroidx/d/c/i;)V

    .line 791
    iput-object v6, v1, Landroidx/d/c/b/f;->bA:Ljava/lang/ref/WeakReference;

    .line 793
    :cond_13
    iget-object v0, v1, Landroidx/d/c/b/f;->bz:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_14

    iget-object v0, v1, Landroidx/d/c/b/f;->bz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 794
    iget-object v0, v1, Landroidx/d/c/b/f;->bz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/c/b/d;

    iget-object v8, v1, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    iget-object v13, v1, Landroidx/d/c/b/f;->T:Landroidx/d/c/b/d;

    invoke-virtual {v8, v13}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v8

    invoke-direct {v1, v0, v8}, Landroidx/d/c/b/f;->a(Landroidx/d/c/b/d;Landroidx/d/c/i;)V

    .line 795
    iput-object v6, v1, Landroidx/d/c/b/f;->bz:Ljava/lang/ref/WeakReference;

    .line 797
    :cond_14
    iget-object v0, v1, Landroidx/d/c/b/f;->bB:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    iget-object v0, v1, Landroidx/d/c/b/f;->bB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 798
    iget-object v0, v1, Landroidx/d/c/b/f;->bB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/c/b/d;

    iget-object v8, v1, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    iget-object v13, v1, Landroidx/d/c/b/f;->V:Landroidx/d/c/b/d;

    invoke-virtual {v8, v13}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v8

    invoke-direct {v1, v0, v8}, Landroidx/d/c/b/f;->b(Landroidx/d/c/b/d;Landroidx/d/c/i;)V

    .line 799
    iput-object v6, v1, Landroidx/d/c/b/f;->bB:Ljava/lang/ref/WeakReference;

    :cond_15
    if-eqz v2, :cond_16

    .line 802
    iget-object v0, v1, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    invoke-virtual {v0}, Landroidx/d/c/e;->g()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    move v2, v13

    .line 805
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 806
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EXCEPTION : "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_16
    :goto_d
    if-eqz v2, :cond_17

    .line 809
    iget-object v0, v1, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    sget-object v2, Landroidx/d/c/b/k;->n:[Z

    invoke-virtual {v1, v0, v2}, Landroidx/d/c/b/f;->a(Landroidx/d/c/e;[Z)V

    goto :goto_f

    .line 811
    :cond_17
    iget-object v0, v1, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    invoke-virtual {v1, v0, v10}, Landroidx/d/c/b/f;->b(Landroidx/d/c/e;Z)V

    const/4 v0, 0x0

    :goto_e
    if-ge v0, v3, :cond_18

    .line 813
    iget-object v2, v1, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/c/b/e;

    .line 814
    iget-object v6, v1, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    invoke-virtual {v2, v6, v10}, Landroidx/d/c/b/e;->b(Landroidx/d/c/e;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_18
    :goto_f
    if-eqz v12, :cond_1c

    const/16 v0, 0x8

    if-ge v15, v0, :cond_1c

    .line 819
    sget-object v0, Landroidx/d/c/b/k;->n:[Z

    const/4 v2, 0x2

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1c

    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_10
    if-ge v0, v3, :cond_19

    .line 825
    iget-object v13, v1, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/d/c/b/e;

    .line 826
    iget v2, v13, Landroidx/d/c/b/e;->aq:I

    invoke-virtual {v13}, Landroidx/d/c/b/e;->I()I

    move-result v16

    add-int v2, v2, v16

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 827
    iget v2, v13, Landroidx/d/c/b/e;->ar:I

    invoke-virtual {v13}, Landroidx/d/c/b/e;->L()I

    move-result v13

    add-int/2addr v2, v13

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x2

    goto :goto_10

    .line 829
    :cond_19
    iget v0, v1, Landroidx/d/c/b/f;->ax:I

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 830
    iget v2, v1, Landroidx/d/c/b/f;->ay:I

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 831
    sget-object v6, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-ne v7, v6, :cond_1a

    .line 832
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/f;->I()I

    move-result v6

    if-ge v6, v0, :cond_1a

    .line 837
    invoke-virtual {v1, v0}, Landroidx/d/c/b/f;->p(I)V

    .line 838
    iget-object v0, v1, Landroidx/d/c/b/f;->ak:[Landroidx/d/c/b/e$a;

    sget-object v6, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    const/4 v8, 0x0

    aput-object v6, v0, v8

    const/4 v0, 0x1

    const/4 v14, 0x1

    goto :goto_11

    :cond_1a
    const/4 v0, 0x0

    .line 843
    :goto_11
    sget-object v6, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-ne v5, v6, :cond_1b

    .line 844
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/f;->L()I

    move-result v6

    if-ge v6, v2, :cond_1b

    .line 849
    invoke-virtual {v1, v2}, Landroidx/d/c/b/f;->q(I)V

    .line 850
    iget-object v0, v1, Landroidx/d/c/b/f;->ak:[Landroidx/d/c/b/e$a;

    sget-object v2, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    const/4 v6, 0x1

    aput-object v2, v0, v6

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_12

    :cond_1b
    move v6, v14

    goto :goto_12

    :cond_1c
    move v6, v14

    const/4 v0, 0x0

    .line 857
    :goto_12
    iget v2, v1, Landroidx/d/c/b/f;->ax:I

    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/f;->I()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 858
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/f;->I()I

    move-result v8

    if-le v2, v8, :cond_1d

    .line 863
    invoke-virtual {v1, v2}, Landroidx/d/c/b/f;->p(I)V

    .line 864
    iget-object v0, v1, Landroidx/d/c/b/f;->ak:[Landroidx/d/c/b/e$a;

    sget-object v2, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    const/4 v6, 0x0

    aput-object v2, v0, v6

    const/4 v0, 0x1

    const/4 v6, 0x1

    .line 868
    :cond_1d
    iget v2, v1, Landroidx/d/c/b/f;->ay:I

    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/f;->L()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 869
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/f;->L()I

    move-result v8

    if-le v2, v8, :cond_1e

    .line 874
    invoke-virtual {v1, v2}, Landroidx/d/c/b/f;->q(I)V

    .line 875
    iget-object v0, v1, Landroidx/d/c/b/f;->ak:[Landroidx/d/c/b/e$a;

    sget-object v2, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    const/4 v8, 0x1

    aput-object v2, v0, v8

    move v0, v8

    move v6, v0

    goto :goto_13

    :cond_1e
    const/4 v8, 0x1

    :goto_13
    if-nez v6, :cond_20

    .line 881
    iget-object v2, v1, Landroidx/d/c/b/f;->ak:[Landroidx/d/c/b/e$a;

    const/4 v13, 0x0

    aget-object v2, v2, v13

    sget-object v14, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-ne v2, v14, :cond_1f

    if-lez v4, :cond_1f

    .line 883
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/f;->I()I

    move-result v2

    if-le v2, v4, :cond_1f

    .line 889
    iput-boolean v8, v1, Landroidx/d/c/b/f;->bw:Z

    .line 891
    iget-object v0, v1, Landroidx/d/c/b/f;->ak:[Landroidx/d/c/b/e$a;

    sget-object v2, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    aput-object v2, v0, v13

    .line 892
    invoke-virtual {v1, v4}, Landroidx/d/c/b/f;->p(I)V

    move v0, v8

    move v6, v0

    .line 896
    :cond_1f
    iget-object v2, v1, Landroidx/d/c/b/f;->ak:[Landroidx/d/c/b/e$a;

    aget-object v2, v2, v8

    sget-object v13, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-ne v2, v13, :cond_20

    if-lez v9, :cond_20

    .line 898
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/b/f;->L()I

    move-result v2

    if-le v2, v9, :cond_20

    .line 904
    iput-boolean v8, v1, Landroidx/d/c/b/f;->bx:Z

    .line 906
    iget-object v0, v1, Landroidx/d/c/b/f;->ak:[Landroidx/d/c/b/e$a;

    sget-object v2, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    aput-object v2, v0, v8

    .line 907
    invoke-virtual {v1, v9}, Landroidx/d/c/b/f;->q(I)V

    const/4 v13, 0x1

    const/4 v14, 0x1

    goto :goto_14

    :cond_20
    move v13, v0

    move v14, v6

    :goto_14
    move v0, v15

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x2

    goto/16 :goto_a

    .line 920
    :cond_21
    check-cast v11, Ljava/util/ArrayList;

    iput-object v11, v1, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    if-eqz v14, :cond_22

    .line 923
    iget-object v0, v1, Landroidx/d/c/b/f;->ak:[Landroidx/d/c/b/e$a;

    const/4 v2, 0x0

    aput-object v7, v0, v2

    .line 924
    iget-object v0, v1, Landroidx/d/c/b/f;->ak:[Landroidx/d/c/b/e$a;

    const/4 v2, 0x1

    aput-object v5, v0, v2

    .line 927
    :cond_22
    iget-object v0, v1, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    invoke-virtual {v0}, Landroidx/d/c/e;->o()Landroidx/d/c/c;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/d/c/b/f;->a(Landroidx/d/c/c;)V

    return-void
.end method

.method public au()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public av()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/d/c/b/h;",
            ">;"
        }
    .end annotation

    .line 949
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 950
    iget-object v1, p0, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 951
    iget-object v3, p0, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/d/c/b/e;

    .line 952
    instance-of v4, v3, Landroidx/d/c/b/h;

    if-eqz v4, :cond_0

    .line 953
    check-cast v3, Landroidx/d/c/b/h;

    .line 954
    invoke-virtual {v3}, Landroidx/d/c/b/h;->f()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 955
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public aw()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/d/c/b/h;",
            ">;"
        }
    .end annotation

    .line 968
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 969
    iget-object v1, p0, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 970
    iget-object v3, p0, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/d/c/b/e;

    .line 971
    instance-of v4, v3, Landroidx/d/c/b/h;

    if-eqz v4, :cond_0

    .line 972
    check-cast v3, Landroidx/d/c/b/h;

    .line 973
    invoke-virtual {v3}, Landroidx/d/c/b/h;->f()I

    move-result v4

    if-nez v4, :cond_0

    .line 974
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public ax()Landroidx/d/c/e;
    .locals 0

    .line 982
    iget-object p0, p0, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    return-object p0
.end method

.method public b()V
    .locals 0

    .line 60
    iget-object p0, p0, Landroidx/d/c/b/f;->c:Landroidx/d/c/b/a/e;

    invoke-virtual {p0}, Landroidx/d/c/b/a/e;->b()V

    return-void
.end method

.method public b(IIII)V
    .locals 0

    .line 452
    iput p1, p0, Landroidx/d/c/b/f;->aZ:I

    .line 453
    iput p2, p0, Landroidx/d/c/b/f;->ba:I

    .line 454
    iput p3, p0, Landroidx/d/c/b/f;->bb:I

    .line 455
    iput p4, p0, Landroidx/d/c/b/f;->bc:I

    return-void
.end method

.method b(Landroidx/d/c/b/d;)V
    .locals 2

    .line 280
    iget-object v0, p0, Landroidx/d/c/b/f;->by:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/d/c/b/f;->by:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p1}, Landroidx/d/c/b/d;->d()I

    move-result v0

    iget-object v1, p0, Landroidx/d/c/b/f;->by:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/c/b/d;

    invoke-virtual {v1}, Landroidx/d/c/b/d;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/d/c/b/f;->by:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public b(I)Z
    .locals 0

    .line 234
    iget p0, p0, Landroidx/d/c/b/f;->bv:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(Landroidx/d/c/e;)Z
    .locals 12

    const/16 v0, 0x40

    .line 332
    invoke-virtual {p0, v0}, Landroidx/d/c/b/f;->b(I)Z

    move-result v0

    .line 333
    invoke-virtual {p0, p1, v0}, Landroidx/d/c/b/f;->a(Landroidx/d/c/e;Z)V

    .line 334
    iget-object v1, p0, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    .line 338
    iget-object v6, p0, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/d/c/b/e;

    .line 339
    invoke-virtual {v6, v2, v2}, Landroidx/d/c/b/e;->a(IZ)V

    .line 340
    invoke-virtual {v6, v5, v2}, Landroidx/d/c/b/e;->a(IZ)V

    .line 341
    instance-of v6, v6, Landroidx/d/c/b/a;

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_3

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    .line 348
    iget-object v4, p0, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/d/c/b/e;

    .line 349
    instance-of v6, v4, Landroidx/d/c/b/a;

    if-eqz v6, :cond_2

    .line 350
    check-cast v4, Landroidx/d/c/b/a;

    invoke-virtual {v4}, Landroidx/d/c/b/a;->f()V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_5

    .line 356
    iget-object v4, p0, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/d/c/b/e;

    .line 357
    invoke-virtual {v4}, Landroidx/d/c/b/e;->ap()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 358
    invoke-virtual {v4, p1, v0}, Landroidx/d/c/b/e;->a(Landroidx/d/c/e;Z)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 362
    :cond_5
    sget-boolean v3, Landroidx/d/c/e;->d:Z

    if-eqz v3, :cond_9

    .line 363
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    move v4, v2

    :goto_3
    if-ge v4, v1, :cond_7

    .line 365
    iget-object v6, p0, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/d/c/b/e;

    .line 366
    invoke-virtual {v6}, Landroidx/d/c/b/e;->ap()Z

    move-result v7

    if-nez v7, :cond_6

    .line 367
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 371
    :cond_7
    invoke-virtual {p0}, Landroidx/d/c/b/f;->aj()Landroidx/d/c/b/e$a;

    move-result-object v1

    sget-object v4, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-ne v1, v4, :cond_8

    move v10, v2

    goto :goto_4

    :cond_8
    move v10, v5

    :goto_4
    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p0

    move-object v8, p1

    move-object v9, v3

    .line 374
    invoke-virtual/range {v6 .. v11}, Landroidx/d/c/b/f;->a(Landroidx/d/c/b/f;Landroidx/d/c/e;Ljava/util/HashSet;IZ)V

    .line 375
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/d/c/b/e;

    .line 376
    invoke-static {p0, p1, v3}, Landroidx/d/c/b/k;->a(Landroidx/d/c/b/f;Landroidx/d/c/e;Landroidx/d/c/b/e;)V

    .line 377
    invoke-virtual {v3, p1, v0}, Landroidx/d/c/b/e;->a(Landroidx/d/c/e;Z)V

    goto :goto_5

    :cond_9
    move v3, v2

    :goto_6
    if-ge v3, v1, :cond_f

    .line 382
    iget-object v4, p0, Landroidx/d/c/b/f;->bq:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/d/c/b/e;

    .line 383
    instance-of v6, v4, Landroidx/d/c/b/f;

    if-eqz v6, :cond_d

    .line 384
    iget-object v6, v4, Landroidx/d/c/b/e;->ak:[Landroidx/d/c/b/e$a;

    aget-object v6, v6, v2

    .line 385
    iget-object v7, v4, Landroidx/d/c/b/e;->ak:[Landroidx/d/c/b/e$a;

    aget-object v7, v7, v5

    .line 386
    sget-object v8, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-ne v6, v8, :cond_a

    .line 387
    sget-object v8, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    invoke-virtual {v4, v8}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/e$a;)V

    .line 389
    :cond_a
    sget-object v8, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-ne v7, v8, :cond_b

    .line 390
    sget-object v8, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    invoke-virtual {v4, v8}, Landroidx/d/c/b/e;->b(Landroidx/d/c/b/e$a;)V

    .line 392
    :cond_b
    invoke-virtual {v4, p1, v0}, Landroidx/d/c/b/e;->a(Landroidx/d/c/e;Z)V

    .line 393
    sget-object v8, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-ne v6, v8, :cond_c

    .line 394
    invoke-virtual {v4, v6}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/e$a;)V

    .line 396
    :cond_c
    sget-object v6, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-ne v7, v6, :cond_e

    .line 397
    invoke-virtual {v4, v7}, Landroidx/d/c/b/e;->b(Landroidx/d/c/b/e$a;)V

    goto :goto_7

    .line 400
    :cond_d
    invoke-static {p0, p1, v4}, Landroidx/d/c/b/k;->a(Landroidx/d/c/b/f;Landroidx/d/c/e;Landroidx/d/c/b/e;)V

    .line 401
    invoke-virtual {v4}, Landroidx/d/c/b/e;->ap()Z

    move-result v6

    if-nez v6, :cond_e

    .line 402
    invoke-virtual {v4, p1, v0}, Landroidx/d/c/b/e;->a(Landroidx/d/c/e;Z)V

    :cond_e
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 408
    :cond_f
    iget v0, p0, Landroidx/d/c/b/f;->bd:I

    const/4 v1, 0x0

    if-lez v0, :cond_10

    .line 409
    invoke-static {p0, p1, v1, v2}, Landroidx/d/c/b/b;->a(Landroidx/d/c/b/f;Landroidx/d/c/e;Ljava/util/ArrayList;I)V

    .line 411
    :cond_10
    iget v0, p0, Landroidx/d/c/b/f;->be:I

    if-lez v0, :cond_11

    .line 412
    invoke-static {p0, p1, v1, v5}, Landroidx/d/c/b/b;->a(Landroidx/d/c/b/f;Landroidx/d/c/e;Ljava/util/ArrayList;I)V

    :cond_11
    return v5
.end method

.method public c()V
    .locals 0

    .line 67
    iget-object p0, p0, Landroidx/d/c/b/f;->c:Landroidx/d/c/b/a/e;

    invoke-virtual {p0}, Landroidx/d/c/b/a/e;->c()V

    return-void
.end method

.method public c(Landroidx/d/c/b/d;)V
    .locals 2

    .line 287
    iget-object v0, p0, Landroidx/d/c/b/f;->bz:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/d/c/b/f;->bz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p1}, Landroidx/d/c/b/d;->d()I

    move-result v0

    iget-object v1, p0, Landroidx/d/c/b/f;->bz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/c/b/d;

    invoke-virtual {v1}, Landroidx/d/c/b/d;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/d/c/b/f;->bz:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method d(Landroidx/d/c/b/d;)V
    .locals 2

    .line 294
    iget-object v0, p0, Landroidx/d/c/b/f;->bA:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/d/c/b/f;->bA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p1}, Landroidx/d/c/b/d;->d()I

    move-result v0

    iget-object v1, p0, Landroidx/d/c/b/f;->bA:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/c/b/d;

    invoke-virtual {v1}, Landroidx/d/c/b/d;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 296
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/d/c/b/f;->bA:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public e(Landroidx/d/c/b/d;)V
    .locals 2

    .line 301
    iget-object v0, p0, Landroidx/d/c/b/f;->bB:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/d/c/b/f;->bB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p1}, Landroidx/d/c/b/d;->d()I

    move-result v0

    iget-object v1, p0, Landroidx/d/c/b/f;->bB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/c/b/d;

    invoke-virtual {v1}, Landroidx/d/c/b/d;->d()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/d/c/b/f;->bB:Ljava/lang/ref/WeakReference;

    :cond_1
    return-void
.end method

.method public f()V
    .locals 2

    .line 99
    iget-object v0, p0, Landroidx/d/c/b/f;->c:Landroidx/d/c/b/a/e;

    invoke-virtual {p0}, Landroidx/d/c/b/f;->aj()Landroidx/d/c/b/e$a;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/d/c/b/f;->ak()Landroidx/d/c/b/e$a;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroidx/d/c/b/a/e;->a(Landroidx/d/c/b/e$a;Landroidx/d/c/b/e$a;)V

    return-void
.end method

.method public g()V
    .locals 1

    .line 124
    iget-object v0, p0, Landroidx/d/c/b/f;->b:Landroidx/d/c/b/a/b;

    invoke-virtual {v0, p0}, Landroidx/d/c/b/a/b;->a(Landroidx/d/c/b/f;)V

    return-void
.end method

.method public h()Landroidx/d/c/b/a/b$b;
    .locals 0

    .line 135
    iget-object p0, p0, Landroidx/d/c/b/f;->d:Landroidx/d/c/b/a/b$b;

    return-object p0
.end method

.method public h(Z)Z
    .locals 0

    .line 91
    iget-object p0, p0, Landroidx/d/c/b/f;->c:Landroidx/d/c/b/a/e;

    invoke-virtual {p0, p1}, Landroidx/d/c/b/a/e;->b(Z)Z

    move-result p0

    return p0
.end method

.method public i()I
    .locals 0

    .line 224
    iget p0, p0, Landroidx/d/c/b/f;->bv:I

    return p0
.end method

.method public i(Z)V
    .locals 0

    .line 464
    iput-boolean p1, p0, Landroidx/d/c/b/f;->bu:Z

    return-void
.end method

.method public w()V
    .locals 1

    .line 249
    iget-object v0, p0, Landroidx/d/c/b/f;->aY:Landroidx/d/c/e;

    invoke-virtual {v0}, Landroidx/d/c/e;->b()V

    const/4 v0, 0x0

    .line 250
    iput v0, p0, Landroidx/d/c/b/f;->aZ:I

    .line 251
    iput v0, p0, Landroidx/d/c/b/f;->bb:I

    .line 252
    iput v0, p0, Landroidx/d/c/b/f;->ba:I

    .line 253
    iput v0, p0, Landroidx/d/c/b/f;->bc:I

    .line 254
    iput-boolean v0, p0, Landroidx/d/c/b/f;->bm:Z

    .line 255
    invoke-super {p0}, Landroidx/d/c/b/n;->w()V

    return-void
.end method
