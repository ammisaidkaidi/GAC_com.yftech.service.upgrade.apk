.class public final Lcom/google/android/material/t/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/t/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/google/android/material/t/e;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private b:Lcom/google/android/material/t/e;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private c:Lcom/google/android/material/t/e;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private d:Lcom/google/android/material/t/e;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private e:Lcom/google/android/material/t/d;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private f:Lcom/google/android/material/t/d;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private g:Lcom/google/android/material/t/d;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private h:Lcom/google/android/material/t/d;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private i:Lcom/google/android/material/t/g;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private j:Lcom/google/android/material/t/g;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private k:Lcom/google/android/material/t/g;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private l:Lcom/google/android/material/t/g;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/google/android/material/t/k;->a()Lcom/google/android/material/t/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->a:Lcom/google/android/material/t/e;

    .line 50
    invoke-static {}, Lcom/google/android/material/t/k;->a()Lcom/google/android/material/t/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->b:Lcom/google/android/material/t/e;

    .line 53
    invoke-static {}, Lcom/google/android/material/t/k;->a()Lcom/google/android/material/t/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->c:Lcom/google/android/material/t/e;

    .line 56
    invoke-static {}, Lcom/google/android/material/t/k;->a()Lcom/google/android/material/t/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->d:Lcom/google/android/material/t/e;

    .line 58
    new-instance v0, Lcom/google/android/material/t/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/t/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->e:Lcom/google/android/material/t/d;

    .line 59
    new-instance v0, Lcom/google/android/material/t/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/t/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->f:Lcom/google/android/material/t/d;

    .line 60
    new-instance v0, Lcom/google/android/material/t/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/t/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->g:Lcom/google/android/material/t/d;

    .line 61
    new-instance v0, Lcom/google/android/material/t/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/t/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->h:Lcom/google/android/material/t/d;

    .line 63
    invoke-static {}, Lcom/google/android/material/t/k;->b()Lcom/google/android/material/t/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->i:Lcom/google/android/material/t/g;

    .line 64
    invoke-static {}, Lcom/google/android/material/t/k;->b()Lcom/google/android/material/t/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->j:Lcom/google/android/material/t/g;

    .line 65
    invoke-static {}, Lcom/google/android/material/t/k;->b()Lcom/google/android/material/t/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->k:Lcom/google/android/material/t/g;

    .line 66
    invoke-static {}, Lcom/google/android/material/t/k;->b()Lcom/google/android/material/t/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->l:Lcom/google/android/material/t/g;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/t/o;)V
    .locals 2
    .param p1    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {}, Lcom/google/android/material/t/k;->a()Lcom/google/android/material/t/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->a:Lcom/google/android/material/t/e;

    .line 50
    invoke-static {}, Lcom/google/android/material/t/k;->a()Lcom/google/android/material/t/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->b:Lcom/google/android/material/t/e;

    .line 53
    invoke-static {}, Lcom/google/android/material/t/k;->a()Lcom/google/android/material/t/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->c:Lcom/google/android/material/t/e;

    .line 56
    invoke-static {}, Lcom/google/android/material/t/k;->a()Lcom/google/android/material/t/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->d:Lcom/google/android/material/t/e;

    .line 58
    new-instance v0, Lcom/google/android/material/t/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/t/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->e:Lcom/google/android/material/t/d;

    .line 59
    new-instance v0, Lcom/google/android/material/t/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/t/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->f:Lcom/google/android/material/t/d;

    .line 60
    new-instance v0, Lcom/google/android/material/t/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/t/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->g:Lcom/google/android/material/t/d;

    .line 61
    new-instance v0, Lcom/google/android/material/t/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/t/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->h:Lcom/google/android/material/t/d;

    .line 63
    invoke-static {}, Lcom/google/android/material/t/k;->b()Lcom/google/android/material/t/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->i:Lcom/google/android/material/t/g;

    .line 64
    invoke-static {}, Lcom/google/android/material/t/k;->b()Lcom/google/android/material/t/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->j:Lcom/google/android/material/t/g;

    .line 65
    invoke-static {}, Lcom/google/android/material/t/k;->b()Lcom/google/android/material/t/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->k:Lcom/google/android/material/t/g;

    .line 66
    invoke-static {}, Lcom/google/android/material/t/k;->b()Lcom/google/android/material/t/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->l:Lcom/google/android/material/t/g;

    .line 71
    iget-object v0, p1, Lcom/google/android/material/t/o;->b:Lcom/google/android/material/t/e;

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->a:Lcom/google/android/material/t/e;

    .line 72
    iget-object v0, p1, Lcom/google/android/material/t/o;->c:Lcom/google/android/material/t/e;

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->b:Lcom/google/android/material/t/e;

    .line 73
    iget-object v0, p1, Lcom/google/android/material/t/o;->d:Lcom/google/android/material/t/e;

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->c:Lcom/google/android/material/t/e;

    .line 74
    iget-object v0, p1, Lcom/google/android/material/t/o;->e:Lcom/google/android/material/t/e;

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->d:Lcom/google/android/material/t/e;

    .line 76
    iget-object v0, p1, Lcom/google/android/material/t/o;->f:Lcom/google/android/material/t/d;

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->e:Lcom/google/android/material/t/d;

    .line 77
    iget-object v0, p1, Lcom/google/android/material/t/o;->g:Lcom/google/android/material/t/d;

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->f:Lcom/google/android/material/t/d;

    .line 78
    iget-object v0, p1, Lcom/google/android/material/t/o;->h:Lcom/google/android/material/t/d;

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->g:Lcom/google/android/material/t/d;

    .line 79
    iget-object v0, p1, Lcom/google/android/material/t/o;->i:Lcom/google/android/material/t/d;

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->h:Lcom/google/android/material/t/d;

    .line 81
    iget-object v0, p1, Lcom/google/android/material/t/o;->j:Lcom/google/android/material/t/g;

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->i:Lcom/google/android/material/t/g;

    .line 82
    iget-object v0, p1, Lcom/google/android/material/t/o;->k:Lcom/google/android/material/t/g;

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->j:Lcom/google/android/material/t/g;

    .line 83
    iget-object v0, p1, Lcom/google/android/material/t/o;->l:Lcom/google/android/material/t/g;

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->k:Lcom/google/android/material/t/g;

    .line 84
    iget-object p1, p1, Lcom/google/android/material/t/o;->m:Lcom/google/android/material/t/g;

    iput-object p1, p0, Lcom/google/android/material/t/o$a;->l:Lcom/google/android/material/t/g;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/e;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/material/t/o$a;->a:Lcom/google/android/material/t/e;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/e;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/material/t/o$a;->b:Lcom/google/android/material/t/e;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/e;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/material/t/o$a;->c:Lcom/google/android/material/t/e;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/e;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/material/t/o$a;->d:Lcom/google/android/material/t/e;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/d;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/material/t/o$a;->e:Lcom/google/android/material/t/d;

    return-object p0
.end method

.method private static f(Lcom/google/android/material/t/e;)F
    .locals 1

    .line 418
    instance-of v0, p0, Lcom/google/android/material/t/n;

    if-eqz v0, :cond_0

    .line 419
    check-cast p0, Lcom/google/android/material/t/n;

    iget p0, p0, Lcom/google/android/material/t/n;->a:F

    return p0

    .line 420
    :cond_0
    instance-of v0, p0, Lcom/google/android/material/t/f;

    if-eqz v0, :cond_1

    .line 421
    check-cast p0, Lcom/google/android/material/t/f;

    iget p0, p0, Lcom/google/android/material/t/f;->a:F

    return p0

    :cond_1
    const/high16 p0, -0x40800000    # -1.0f

    return p0
.end method

.method static synthetic f(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/d;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/material/t/o$a;->f:Lcom/google/android/material/t/d;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/d;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/material/t/o$a;->g:Lcom/google/android/material/t/d;

    return-object p0
.end method

.method static synthetic h(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/d;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/material/t/o$a;->h:Lcom/google/android/material/t/d;

    return-object p0
.end method

.method static synthetic i(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/g;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/material/t/o$a;->i:Lcom/google/android/material/t/g;

    return-object p0
.end method

.method static synthetic j(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/g;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/material/t/o$a;->j:Lcom/google/android/material/t/g;

    return-object p0
.end method

.method static synthetic k(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/g;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/material/t/o$a;->k:Lcom/google/android/material/t/g;

    return-object p0
.end method

.method static synthetic l(Lcom/google/android/material/t/o$a;)Lcom/google/android/material/t/g;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/google/android/material/t/o$a;->l:Lcom/google/android/material/t/g;

    return-object p0
.end method


# virtual methods
.method public a(F)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p1    # F
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 131
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->b(F)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 132
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->c(F)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 133
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->d(F)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 134
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->e(F)Lcom/google/android/material/t/o$a;

    move-result-object p0

    return-object p0
.end method

.method public a(IF)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 98
    invoke-static {p1}, Lcom/google/android/material/t/k;->a(I)Lcom/google/android/material/t/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->a(Lcom/google/android/material/t/e;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 99
    invoke-virtual {p0, p2}, Lcom/google/android/material/t/o$a;->a(F)Lcom/google/android/material/t/o$a;

    move-result-object p0

    return-object p0
.end method

.method public a(ILcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p2    # Lcom/google/android/material/t/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 214
    invoke-static {p1}, Lcom/google/android/material/t/k;->a(I)Lcom/google/android/material/t/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->b(Lcom/google/android/material/t/e;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 215
    invoke-virtual {p0, p2}, Lcom/google/android/material/t/o$a;->b(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p1    # Lcom/google/android/material/t/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 122
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->b(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 123
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->c(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 124
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->d(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 125
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->e(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/google/android/material/t/e;)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p1    # Lcom/google/android/material/t/e;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->b(Lcom/google/android/material/t/e;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 110
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->c(Lcom/google/android/material/t/e;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 111
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->d(Lcom/google/android/material/t/e;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 112
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->e(Lcom/google/android/material/t/e;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/google/android/material/t/g;)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p1    # Lcom/google/android/material/t/g;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 366
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->b(Lcom/google/android/material/t/g;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 367
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->c(Lcom/google/android/material/t/g;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 368
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->d(Lcom/google/android/material/t/g;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 369
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->e(Lcom/google/android/material/t/g;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    return-object p0
.end method

.method public a()Lcom/google/android/material/t/o;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 429
    new-instance v0, Lcom/google/android/material/t/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/t/o;-><init>(Lcom/google/android/material/t/o$a;Lcom/google/android/material/t/o$1;)V

    return-object v0
.end method

.method public b(F)Lcom/google/android/material/t/o$a;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 140
    new-instance v0, Lcom/google/android/material/t/a;

    invoke-direct {v0, p1}, Lcom/google/android/material/t/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->e:Lcom/google/android/material/t/d;

    return-object p0
.end method

.method public b(IF)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 201
    invoke-static {p1}, Lcom/google/android/material/t/k;->a(I)Lcom/google/android/material/t/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->b(Lcom/google/android/material/t/e;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 202
    invoke-virtual {p0, p2}, Lcom/google/android/material/t/o$a;->b(F)Lcom/google/android/material/t/o$a;

    move-result-object p0

    return-object p0
.end method

.method public b(ILcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p2    # Lcom/google/android/material/t/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 255
    invoke-static {p1}, Lcom/google/android/material/t/k;->a(I)Lcom/google/android/material/t/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->c(Lcom/google/android/material/t/e;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 256
    invoke-virtual {p0, p2}, Lcom/google/android/material/t/o$a;->c(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p1    # Lcom/google/android/material/t/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/google/android/material/t/o$a;->e:Lcom/google/android/material/t/d;

    return-object p0
.end method

.method public b(Lcom/google/android/material/t/e;)Lcom/google/android/material/t/o$a;
    .locals 1
    .param p1    # Lcom/google/android/material/t/e;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 225
    iput-object p1, p0, Lcom/google/android/material/t/o$a;->a:Lcom/google/android/material/t/e;

    .line 227
    invoke-static {p1}, Lcom/google/android/material/t/o$a;->f(Lcom/google/android/material/t/e;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->b(F)Lcom/google/android/material/t/o$a;

    :cond_0
    return-object p0
.end method

.method public b(Lcom/google/android/material/t/g;)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p1    # Lcom/google/android/material/t/g;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 379
    iput-object p1, p0, Lcom/google/android/material/t/o$a;->l:Lcom/google/android/material/t/g;

    return-object p0
.end method

.method public c(F)Lcom/google/android/material/t/o$a;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 154
    new-instance v0, Lcom/google/android/material/t/a;

    invoke-direct {v0, p1}, Lcom/google/android/material/t/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->f:Lcom/google/android/material/t/d;

    return-object p0
.end method

.method public c(IF)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 242
    invoke-static {p1}, Lcom/google/android/material/t/k;->a(I)Lcom/google/android/material/t/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->c(Lcom/google/android/material/t/e;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 243
    invoke-virtual {p0, p2}, Lcom/google/android/material/t/o$a;->c(F)Lcom/google/android/material/t/o$a;

    move-result-object p0

    return-object p0
.end method

.method public c(ILcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p2    # Lcom/google/android/material/t/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 297
    invoke-static {p1}, Lcom/google/android/material/t/k;->a(I)Lcom/google/android/material/t/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->d(Lcom/google/android/material/t/e;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 298
    invoke-virtual {p0, p2}, Lcom/google/android/material/t/o$a;->d(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    return-object p0
.end method

.method public c(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p1    # Lcom/google/android/material/t/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/google/android/material/t/o$a;->f:Lcom/google/android/material/t/d;

    return-object p0
.end method

.method public c(Lcom/google/android/material/t/e;)Lcom/google/android/material/t/o$a;
    .locals 1
    .param p1    # Lcom/google/android/material/t/e;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 266
    iput-object p1, p0, Lcom/google/android/material/t/o$a;->b:Lcom/google/android/material/t/e;

    .line 268
    invoke-static {p1}, Lcom/google/android/material/t/o$a;->f(Lcom/google/android/material/t/e;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->c(F)Lcom/google/android/material/t/o$a;

    :cond_0
    return-object p0
.end method

.method public c(Lcom/google/android/material/t/g;)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p1    # Lcom/google/android/material/t/g;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 390
    iput-object p1, p0, Lcom/google/android/material/t/o$a;->i:Lcom/google/android/material/t/g;

    return-object p0
.end method

.method public d(F)Lcom/google/android/material/t/o$a;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 168
    new-instance v0, Lcom/google/android/material/t/a;

    invoke-direct {v0, p1}, Lcom/google/android/material/t/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->g:Lcom/google/android/material/t/d;

    return-object p0
.end method

.method public d(IF)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 284
    invoke-static {p1}, Lcom/google/android/material/t/k;->a(I)Lcom/google/android/material/t/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->d(Lcom/google/android/material/t/e;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 285
    invoke-virtual {p0, p2}, Lcom/google/android/material/t/o$a;->d(F)Lcom/google/android/material/t/o$a;

    move-result-object p0

    return-object p0
.end method

.method public d(ILcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p2    # Lcom/google/android/material/t/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 339
    invoke-static {p1}, Lcom/google/android/material/t/k;->a(I)Lcom/google/android/material/t/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->e(Lcom/google/android/material/t/e;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 340
    invoke-virtual {p0, p2}, Lcom/google/android/material/t/o$a;->e(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    return-object p0
.end method

.method public d(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p1    # Lcom/google/android/material/t/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/google/android/material/t/o$a;->g:Lcom/google/android/material/t/d;

    return-object p0
.end method

.method public d(Lcom/google/android/material/t/e;)Lcom/google/android/material/t/o$a;
    .locals 1
    .param p1    # Lcom/google/android/material/t/e;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 308
    iput-object p1, p0, Lcom/google/android/material/t/o$a;->c:Lcom/google/android/material/t/e;

    .line 310
    invoke-static {p1}, Lcom/google/android/material/t/o$a;->f(Lcom/google/android/material/t/e;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->d(F)Lcom/google/android/material/t/o$a;

    :cond_0
    return-object p0
.end method

.method public d(Lcom/google/android/material/t/g;)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p1    # Lcom/google/android/material/t/g;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 401
    iput-object p1, p0, Lcom/google/android/material/t/o$a;->j:Lcom/google/android/material/t/g;

    return-object p0
.end method

.method public e(F)Lcom/google/android/material/t/o$a;
    .locals 1
    .param p1    # F
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 182
    new-instance v0, Lcom/google/android/material/t/a;

    invoke-direct {v0, p1}, Lcom/google/android/material/t/a;-><init>(F)V

    iput-object v0, p0, Lcom/google/android/material/t/o$a;->h:Lcom/google/android/material/t/d;

    return-object p0
.end method

.method public e(IF)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p2    # F
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 326
    invoke-static {p1}, Lcom/google/android/material/t/k;->a(I)Lcom/google/android/material/t/e;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->e(Lcom/google/android/material/t/e;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    .line 327
    invoke-virtual {p0, p2}, Lcom/google/android/material/t/o$a;->e(F)Lcom/google/android/material/t/o$a;

    move-result-object p0

    return-object p0
.end method

.method public e(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p1    # Lcom/google/android/material/t/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/google/android/material/t/o$a;->h:Lcom/google/android/material/t/d;

    return-object p0
.end method

.method public e(Lcom/google/android/material/t/e;)Lcom/google/android/material/t/o$a;
    .locals 1
    .param p1    # Lcom/google/android/material/t/e;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 350
    iput-object p1, p0, Lcom/google/android/material/t/o$a;->d:Lcom/google/android/material/t/e;

    .line 352
    invoke-static {p1}, Lcom/google/android/material/t/o$a;->f(Lcom/google/android/material/t/e;)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->e(F)Lcom/google/android/material/t/o$a;

    :cond_0
    return-object p0
.end method

.method public e(Lcom/google/android/material/t/g;)Lcom/google/android/material/t/o$a;
    .locals 0
    .param p1    # Lcom/google/android/material/t/g;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 412
    iput-object p1, p0, Lcom/google/android/material/t/o$a;->k:Lcom/google/android/material/t/g;

    return-object p0
.end method
