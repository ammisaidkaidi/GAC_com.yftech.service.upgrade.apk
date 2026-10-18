.class Landroidx/recyclerview/widget/u$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/ae$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/u;->a(Landroidx/recyclerview/widget/ae$a;)Landroidx/recyclerview/widget/ae$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/ae$a<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final c:I = 0x1

.field static final d:I = 0x2

.field static final e:I = 0x3

.field static final f:I = 0x4


# instance fields
.field final a:Landroidx/recyclerview/widget/u$a;

.field b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic g:Landroidx/recyclerview/widget/ae$a;

.field final synthetic h:Landroidx/recyclerview/widget/u;

.field private final i:Ljava/util/concurrent/Executor;

.field private j:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/u;Landroidx/recyclerview/widget/ae$a;)V
    .locals 0

    .line 88
    iput-object p1, p0, Landroidx/recyclerview/widget/u$2;->h:Landroidx/recyclerview/widget/u;

    iput-object p2, p0, Landroidx/recyclerview/widget/u$2;->g:Landroidx/recyclerview/widget/ae$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance p1, Landroidx/recyclerview/widget/u$a;

    invoke-direct {p1}, Landroidx/recyclerview/widget/u$a;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/u$2;->a:Landroidx/recyclerview/widget/u$a;

    .line 90
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroidx/recyclerview/widget/u$2;->i:Ljava/util/concurrent/Executor;

    .line 91
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Landroidx/recyclerview/widget/u$2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    new-instance p1, Landroidx/recyclerview/widget/u$2$1;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/u$2$1;-><init>(Landroidx/recyclerview/widget/u$2;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/u$2;->j:Ljava/lang/Runnable;

    return-void
.end method

.method private a()V
    .locals 3

    .line 131
    iget-object v0, p0, Landroidx/recyclerview/widget/u$2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Landroidx/recyclerview/widget/u$2;->i:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/recyclerview/widget/u$2;->j:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private a(Landroidx/recyclerview/widget/u$b;)V
    .locals 1

    .line 121
    iget-object v0, p0, Landroidx/recyclerview/widget/u$2;->a:Landroidx/recyclerview/widget/u$a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/u$a;->b(Landroidx/recyclerview/widget/u$b;)V

    .line 122
    invoke-direct {p0}, Landroidx/recyclerview/widget/u$2;->a()V

    return-void
.end method

.method private b(Landroidx/recyclerview/widget/u$b;)V
    .locals 1

    .line 126
    iget-object v0, p0, Landroidx/recyclerview/widget/u$2;->a:Landroidx/recyclerview/widget/u$a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/u$a;->a(Landroidx/recyclerview/widget/u$b;)V

    .line 127
    invoke-direct {p0}, Landroidx/recyclerview/widget/u$2;->a()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-static {v0, p1, v1}, Landroidx/recyclerview/widget/u$b;->a(IILjava/lang/Object;)Landroidx/recyclerview/widget/u$b;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/u$2;->b(Landroidx/recyclerview/widget/u$b;)V

    return-void
.end method

.method public a(II)V
    .locals 1

    const/4 v0, 0x3

    .line 112
    invoke-static {v0, p1, p2}, Landroidx/recyclerview/widget/u$b;->a(III)Landroidx/recyclerview/widget/u$b;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/u$2;->a(Landroidx/recyclerview/widget/u$b;)V

    return-void
.end method

.method public a(IIIII)V
    .locals 7

    const/4 v0, 0x2

    const/4 v6, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 106
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/u$b;->a(IIIIIILjava/lang/Object;)Landroidx/recyclerview/widget/u$b;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/u$2;->b(Landroidx/recyclerview/widget/u$b;)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/af$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/af$a<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 117
    invoke-static {v0, v1, p1}, Landroidx/recyclerview/widget/u$b;->a(IILjava/lang/Object;)Landroidx/recyclerview/widget/u$b;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/u$2;->a(Landroidx/recyclerview/widget/u$b;)V

    return-void
.end method
