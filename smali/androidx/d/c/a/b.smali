.class public Landroidx/d/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/d/c/a/b$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;

.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/lang/Object;

.field public static final e:Ljava/lang/Object;


# instance fields
.field f:I

.field g:I

.field h:F

.field i:I

.field j:F

.field k:Ljava/lang/Object;

.field l:Z

.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/d/c/a/b;->a:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/d/c/a/b;->b:Ljava/lang/Object;

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/d/c/a/b;->c:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/d/c/a/b;->d:Ljava/lang/Object;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/d/c/a/b;->e:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 34
    iput v0, p0, Landroidx/d/c/a/b;->m:I

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Landroidx/d/c/a/b;->f:I

    const v1, 0x7fffffff

    .line 37
    iput v1, p0, Landroidx/d/c/a/b;->g:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    iput v1, p0, Landroidx/d/c/a/b;->h:F

    .line 39
    iput v0, p0, Landroidx/d/c/a/b;->i:I

    .line 40
    iput v1, p0, Landroidx/d/c/a/b;->j:F

    .line 41
    sget-object v1, Landroidx/d/c/a/b;->b:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/d/c/a/b;->k:Ljava/lang/Object;

    .line 42
    iput-boolean v0, p0, Landroidx/d/c/a/b;->l:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 34
    iput v0, p0, Landroidx/d/c/a/b;->m:I

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Landroidx/d/c/a/b;->f:I

    const v1, 0x7fffffff

    .line 37
    iput v1, p0, Landroidx/d/c/a/b;->g:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    iput v1, p0, Landroidx/d/c/a/b;->h:F

    .line 39
    iput v0, p0, Landroidx/d/c/a/b;->i:I

    .line 40
    iput v1, p0, Landroidx/d/c/a/b;->j:F

    .line 41
    sget-object v1, Landroidx/d/c/a/b;->b:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/d/c/a/b;->k:Ljava/lang/Object;

    .line 42
    iput-boolean v0, p0, Landroidx/d/c/a/b;->l:Z

    .line 52
    iput-object p1, p0, Landroidx/d/c/a/b;->k:Ljava/lang/Object;

    return-void
.end method

.method public static a()Landroidx/d/c/a/b;
    .locals 2

    .line 85
    new-instance v0, Landroidx/d/c/a/b;

    sget-object v1, Landroidx/d/c/a/b;->d:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/d/c/a/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(I)Landroidx/d/c/a/b;
    .locals 1

    .line 55
    new-instance v0, Landroidx/d/c/a/b;

    invoke-direct {v0}, Landroidx/d/c/a/b;-><init>()V

    .line 56
    invoke-virtual {v0, p0}, Landroidx/d/c/a/b;->e(I)Landroidx/d/c/a/b;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Landroidx/d/c/a/b;
    .locals 1

    .line 61
    new-instance v0, Landroidx/d/c/a/b;

    invoke-direct {v0}, Landroidx/d/c/a/b;-><init>()V

    .line 62
    invoke-virtual {v0, p0}, Landroidx/d/c/a/b;->e(Ljava/lang/Object;)Landroidx/d/c/a/b;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;F)Landroidx/d/c/a/b;
    .locals 2

    .line 79
    new-instance v0, Landroidx/d/c/a/b;

    sget-object v1, Landroidx/d/c/a/b;->e:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/d/c/a/b;-><init>(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {v0, p0, p1}, Landroidx/d/c/a/b;->b(Ljava/lang/Object;F)Landroidx/d/c/a/b;

    return-object v0
.end method

.method public static b()Landroidx/d/c/a/b;
    .locals 2

    .line 89
    new-instance v0, Landroidx/d/c/a/b;

    sget-object v1, Landroidx/d/c/a/b;->b:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/d/c/a/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static b(I)Landroidx/d/c/a/b;
    .locals 2

    .line 67
    new-instance v0, Landroidx/d/c/a/b;

    sget-object v1, Landroidx/d/c/a/b;->a:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/d/c/a/b;-><init>(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v0, p0}, Landroidx/d/c/a/b;->f(I)Landroidx/d/c/a/b;

    return-object v0
.end method

.method public static b(Ljava/lang/Object;)Landroidx/d/c/a/b;
    .locals 2

    .line 73
    new-instance v0, Landroidx/d/c/a/b;

    sget-object v1, Landroidx/d/c/a/b;->a:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/d/c/a/b;-><init>(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v0, p0}, Landroidx/d/c/a/b;->f(Ljava/lang/Object;)Landroidx/d/c/a/b;

    return-object v0
.end method

.method public static c()Landroidx/d/c/a/b;
    .locals 2

    .line 93
    new-instance v0, Landroidx/d/c/a/b;

    sget-object v1, Landroidx/d/c/a/b;->c:Ljava/lang/Object;

    invoke-direct {v0, v1}, Landroidx/d/c/a/b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a(F)Landroidx/d/c/a/b;
    .locals 0

    return-object p0
.end method

.method public a(Landroidx/d/c/a/e;Landroidx/d/c/b/e;I)V
    .locals 3

    const/4 p1, 0x2

    const v0, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_7

    .line 181
    iget-boolean p3, p0, Landroidx/d/c/a/b;->l:Z

    if-eqz p3, :cond_2

    .line 182
    sget-object p3, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    invoke-virtual {p2, p3}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/e$a;)V

    .line 184
    iget-object p3, p0, Landroidx/d/c/a/b;->k:Ljava/lang/Object;

    sget-object v0, Landroidx/d/c/a/b;->b:Ljava/lang/Object;

    if-ne p3, v0, :cond_0

    move p1, v1

    goto :goto_0

    .line 186
    :cond_0
    iget-object p3, p0, Landroidx/d/c/a/b;->k:Ljava/lang/Object;

    sget-object v0, Landroidx/d/c/a/b;->e:Ljava/lang/Object;

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    move p1, v2

    .line 189
    :goto_0
    iget p3, p0, Landroidx/d/c/a/b;->f:I

    iget v0, p0, Landroidx/d/c/a/b;->g:I

    iget p0, p0, Landroidx/d/c/a/b;->h:F

    invoke-virtual {p2, p1, p3, v0, p0}, Landroidx/d/c/b/e;->a(IIIF)V

    goto/16 :goto_2

    .line 191
    :cond_2
    iget p1, p0, Landroidx/d/c/a/b;->f:I

    if-lez p1, :cond_3

    .line 192
    iget p1, p0, Landroidx/d/c/a/b;->f:I

    invoke-virtual {p2, p1}, Landroidx/d/c/b/e;->r(I)V

    .line 194
    :cond_3
    iget p1, p0, Landroidx/d/c/a/b;->g:I

    if-ge p1, v0, :cond_4

    .line 195
    iget p1, p0, Landroidx/d/c/a/b;->g:I

    invoke-virtual {p2, p1}, Landroidx/d/c/b/e;->h(I)V

    .line 197
    :cond_4
    iget-object p1, p0, Landroidx/d/c/a/b;->k:Ljava/lang/Object;

    sget-object p3, Landroidx/d/c/a/b;->b:Ljava/lang/Object;

    if-ne p1, p3, :cond_5

    .line 198
    sget-object p0, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    invoke-virtual {p2, p0}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/e$a;)V

    goto/16 :goto_2

    .line 199
    :cond_5
    iget-object p1, p0, Landroidx/d/c/a/b;->k:Ljava/lang/Object;

    sget-object p3, Landroidx/d/c/a/b;->d:Ljava/lang/Object;

    if-ne p1, p3, :cond_6

    .line 200
    sget-object p0, Landroidx/d/c/b/e$a;->d:Landroidx/d/c/b/e$a;

    invoke-virtual {p2, p0}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/e$a;)V

    goto/16 :goto_2

    .line 201
    :cond_6
    iget-object p1, p0, Landroidx/d/c/a/b;->k:Ljava/lang/Object;

    if-nez p1, :cond_f

    .line 202
    sget-object p1, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    invoke-virtual {p2, p1}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/e$a;)V

    .line 203
    iget p0, p0, Landroidx/d/c/a/b;->i:I

    invoke-virtual {p2, p0}, Landroidx/d/c/b/e;->p(I)V

    goto :goto_2

    .line 207
    :cond_7
    iget-boolean p3, p0, Landroidx/d/c/a/b;->l:Z

    if-eqz p3, :cond_a

    .line 208
    sget-object p3, Landroidx/d/c/b/e$a;->c:Landroidx/d/c/b/e$a;

    invoke-virtual {p2, p3}, Landroidx/d/c/b/e;->b(Landroidx/d/c/b/e$a;)V

    .line 210
    iget-object p3, p0, Landroidx/d/c/a/b;->k:Ljava/lang/Object;

    sget-object v0, Landroidx/d/c/a/b;->b:Ljava/lang/Object;

    if-ne p3, v0, :cond_8

    move p1, v1

    goto :goto_1

    .line 212
    :cond_8
    iget-object p3, p0, Landroidx/d/c/a/b;->k:Ljava/lang/Object;

    sget-object v0, Landroidx/d/c/a/b;->e:Ljava/lang/Object;

    if-ne p3, v0, :cond_9

    goto :goto_1

    :cond_9
    move p1, v2

    .line 215
    :goto_1
    iget p3, p0, Landroidx/d/c/a/b;->f:I

    iget v0, p0, Landroidx/d/c/a/b;->g:I

    iget p0, p0, Landroidx/d/c/a/b;->h:F

    invoke-virtual {p2, p1, p3, v0, p0}, Landroidx/d/c/b/e;->b(IIIF)V

    goto :goto_2

    .line 217
    :cond_a
    iget p1, p0, Landroidx/d/c/a/b;->f:I

    if-lez p1, :cond_b

    .line 218
    iget p1, p0, Landroidx/d/c/a/b;->f:I

    invoke-virtual {p2, p1}, Landroidx/d/c/b/e;->s(I)V

    .line 220
    :cond_b
    iget p1, p0, Landroidx/d/c/a/b;->g:I

    if-ge p1, v0, :cond_c

    .line 221
    iget p1, p0, Landroidx/d/c/a/b;->g:I

    invoke-virtual {p2, p1}, Landroidx/d/c/b/e;->i(I)V

    .line 223
    :cond_c
    iget-object p1, p0, Landroidx/d/c/a/b;->k:Ljava/lang/Object;

    sget-object p3, Landroidx/d/c/a/b;->b:Ljava/lang/Object;

    if-ne p1, p3, :cond_d

    .line 224
    sget-object p0, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    invoke-virtual {p2, p0}, Landroidx/d/c/b/e;->b(Landroidx/d/c/b/e$a;)V

    goto :goto_2

    .line 225
    :cond_d
    iget-object p1, p0, Landroidx/d/c/a/b;->k:Ljava/lang/Object;

    sget-object p3, Landroidx/d/c/a/b;->d:Ljava/lang/Object;

    if-ne p1, p3, :cond_e

    .line 226
    sget-object p0, Landroidx/d/c/b/e$a;->d:Landroidx/d/c/b/e$a;

    invoke-virtual {p2, p0}, Landroidx/d/c/b/e;->b(Landroidx/d/c/b/e$a;)V

    goto :goto_2

    .line 227
    :cond_e
    iget-object p1, p0, Landroidx/d/c/a/b;->k:Ljava/lang/Object;

    if-nez p1, :cond_f

    .line 228
    sget-object p1, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    invoke-virtual {p2, p1}, Landroidx/d/c/b/e;->b(Landroidx/d/c/b/e$a;)V

    .line 229
    iget p0, p0, Landroidx/d/c/a/b;->i:I

    invoke-virtual {p2, p0}, Landroidx/d/c/b/e;->q(I)V

    :cond_f
    :goto_2
    return-void
.end method

.method public b(Ljava/lang/Object;F)Landroidx/d/c/a/b;
    .locals 0

    .line 97
    iput p2, p0, Landroidx/d/c/a/b;->h:F

    return-object p0
.end method

.method b(F)V
    .locals 0

    .line 169
    iput p1, p0, Landroidx/d/c/a/b;->j:F

    return-void
.end method

.method public c(I)Landroidx/d/c/a/b;
    .locals 0

    if-ltz p1, :cond_0

    .line 103
    iput p1, p0, Landroidx/d/c/a/b;->f:I

    :cond_0
    return-object p0
.end method

.method public c(Ljava/lang/Object;)Landroidx/d/c/a/b;
    .locals 1

    .line 109
    sget-object v0, Landroidx/d/c/a/b;->b:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, -0x2

    .line 110
    iput p1, p0, Landroidx/d/c/a/b;->f:I

    :cond_0
    return-object p0
.end method

.method d()I
    .locals 0

    .line 166
    iget p0, p0, Landroidx/d/c/a/b;->i:I

    return p0
.end method

.method public d(I)Landroidx/d/c/a/b;
    .locals 1

    .line 116
    iget v0, p0, Landroidx/d/c/a/b;->g:I

    if-ltz v0, :cond_0

    .line 117
    iput p1, p0, Landroidx/d/c/a/b;->g:I

    :cond_0
    return-object p0
.end method

.method public d(Ljava/lang/Object;)Landroidx/d/c/a/b;
    .locals 1

    .line 123
    sget-object v0, Landroidx/d/c/a/b;->b:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Landroidx/d/c/a/b;->l:Z

    if-eqz p1, :cond_0

    .line 124
    sget-object p1, Landroidx/d/c/a/b;->b:Ljava/lang/Object;

    iput-object p1, p0, Landroidx/d/c/a/b;->k:Ljava/lang/Object;

    const p1, 0x7fffffff

    .line 125
    iput p1, p0, Landroidx/d/c/a/b;->g:I

    :cond_0
    return-object p0
.end method

.method e()F
    .locals 0

    .line 172
    iget p0, p0, Landroidx/d/c/a/b;->j:F

    return p0
.end method

.method public e(I)Landroidx/d/c/a/b;
    .locals 0

    const/4 p1, 0x1

    .line 131
    iput-boolean p1, p0, Landroidx/d/c/a/b;->l:Z

    return-object p0
.end method

.method public e(Ljava/lang/Object;)Landroidx/d/c/a/b;
    .locals 0

    .line 136
    iput-object p1, p0, Landroidx/d/c/a/b;->k:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 137
    iput-boolean p1, p0, Landroidx/d/c/a/b;->l:Z

    return-object p0
.end method

.method public f(I)Landroidx/d/c/a/b;
    .locals 1

    const/4 v0, 0x0

    .line 151
    iput-object v0, p0, Landroidx/d/c/a/b;->k:Ljava/lang/Object;

    .line 152
    iput p1, p0, Landroidx/d/c/a/b;->i:I

    return-object p0
.end method

.method public f(Ljava/lang/Object;)Landroidx/d/c/a/b;
    .locals 1

    .line 142
    iput-object p1, p0, Landroidx/d/c/a/b;->k:Ljava/lang/Object;

    .line 143
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 144
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/d/c/a/b;->i:I

    const/4 p1, 0x0

    .line 145
    iput-object p1, p0, Landroidx/d/c/a/b;->k:Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method g(I)V
    .locals 1

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Landroidx/d/c/a/b;->l:Z

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Landroidx/d/c/a/b;->k:Ljava/lang/Object;

    .line 163
    iput p1, p0, Landroidx/d/c/a/b;->i:I

    return-void
.end method
