.class public Landroidx/d/c/b/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x4

.field public static final e:I = 0x8

.field public static final f:I = 0x10

.field public static final g:I = 0x20

.field public static final h:I = 0x40

.field public static final i:I = 0x80

.field public static final j:I = 0x100

.field public static final k:I = 0x200

.field public static final l:I = 0x400

.field public static final m:I = 0x101

.field static n:[Z = null

.field static final o:I = 0x0

.field static final p:I = 0x1

.field static final q:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 52
    new-array v0, v0, [Z

    sput-object v0, Landroidx/d/c/b/k;->n:[Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroidx/d/c/b/f;Landroidx/d/c/e;Landroidx/d/c/b/e;)V
    .locals 5

    const/4 v0, -0x1

    .line 65
    iput v0, p2, Landroidx/d/c/b/e;->E:I

    .line 66
    iput v0, p2, Landroidx/d/c/b/e;->F:I

    .line 67
    iget-object v0, p0, Landroidx/d/c/b/f;->ak:[Landroidx/d/c/b/e$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget-object v2, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    const/4 v3, 0x2

    if-eq v0, v2, :cond_0

    iget-object v0, p2, Landroidx/d/c/b/e;->ak:[Landroidx/d/c/b/e$a;

    aget-object v0, v0, v1

    sget-object v1, Landroidx/d/c/b/e$a;->d:Landroidx/d/c/b/e$a;

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v0, p2, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    iget v0, v0, Landroidx/d/c/b/d;->d:I

    .line 71
    invoke-virtual {p0}, Landroidx/d/c/b/f;->I()I

    move-result v1

    iget-object v2, p2, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget v2, v2, Landroidx/d/c/b/d;->d:I

    sub-int/2addr v1, v2

    .line 73
    iget-object v2, p2, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    iget-object v4, p2, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    invoke-virtual {p1, v4}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v4

    iput-object v4, v2, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    .line 74
    iget-object v2, p2, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget-object v4, p2, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    invoke-virtual {p1, v4}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v4

    iput-object v4, v2, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    .line 75
    iget-object v2, p2, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    iget-object v2, v2, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    invoke-virtual {p1, v2, v0}, Landroidx/d/c/e;->a(Landroidx/d/c/i;I)V

    .line 76
    iget-object v2, p2, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    iget-object v2, v2, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    invoke-virtual {p1, v2, v1}, Landroidx/d/c/e;->a(Landroidx/d/c/i;I)V

    .line 77
    iput v3, p2, Landroidx/d/c/b/e;->E:I

    .line 78
    invoke-virtual {p2, v0, v1}, Landroidx/d/c/b/e;->h(II)V

    .line 80
    :cond_0
    iget-object v0, p0, Landroidx/d/c/b/f;->ak:[Landroidx/d/c/b/e$a;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget-object v2, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-eq v0, v2, :cond_3

    iget-object v0, p2, Landroidx/d/c/b/e;->ak:[Landroidx/d/c/b/e$a;

    aget-object v0, v0, v1

    sget-object v1, Landroidx/d/c/b/e$a;->d:Landroidx/d/c/b/e$a;

    if-ne v0, v1, :cond_3

    .line 83
    iget-object v0, p2, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    iget v0, v0, Landroidx/d/c/b/d;->d:I

    .line 84
    invoke-virtual {p0}, Landroidx/d/c/b/f;->L()I

    move-result p0

    iget-object v1, p2, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    iget v1, v1, Landroidx/d/c/b/d;->d:I

    sub-int/2addr p0, v1

    .line 86
    iget-object v1, p2, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    iget-object v2, p2, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    invoke-virtual {p1, v2}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v2

    iput-object v2, v1, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    .line 87
    iget-object v1, p2, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    iget-object v2, p2, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    invoke-virtual {p1, v2}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v2

    iput-object v2, v1, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    .line 88
    iget-object v1, p2, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    iget-object v1, v1, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    invoke-virtual {p1, v1, v0}, Landroidx/d/c/e;->a(Landroidx/d/c/i;I)V

    .line 89
    iget-object v1, p2, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    iget-object v1, v1, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    invoke-virtual {p1, v1, p0}, Landroidx/d/c/e;->a(Landroidx/d/c/i;I)V

    .line 90
    iget v1, p2, Landroidx/d/c/b/e;->aw:I

    if-gtz v1, :cond_1

    invoke-virtual {p2}, Landroidx/d/c/b/e;->E()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 91
    :cond_1
    iget-object v1, p2, Landroidx/d/c/b/e;->X:Landroidx/d/c/b/d;

    iget-object v2, p2, Landroidx/d/c/b/e;->X:Landroidx/d/c/b/d;

    invoke-virtual {p1, v2}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v2

    iput-object v2, v1, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    .line 92
    iget-object v1, p2, Landroidx/d/c/b/e;->X:Landroidx/d/c/b/d;

    iget-object v1, v1, Landroidx/d/c/b/d;->f:Landroidx/d/c/i;

    iget v2, p2, Landroidx/d/c/b/e;->aw:I

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Landroidx/d/c/e;->a(Landroidx/d/c/i;I)V

    .line 94
    :cond_2
    iput v3, p2, Landroidx/d/c/b/e;->F:I

    .line 95
    invoke-virtual {p2, v0, p0}, Landroidx/d/c/b/e;->i(II)V

    :cond_3
    return-void
.end method

.method public static final a(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
