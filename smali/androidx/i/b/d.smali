.class abstract Landroidx/i/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/i/b/d$a;,
        Landroidx/i/b/d$d;,
        Landroidx/i/b/d$b;,
        Landroidx/i/b/d$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AsyncTask"

.field private static final b:I = 0x5

.field public static final c:Ljava/util/concurrent/Executor;

.field private static final f:I = 0x80

.field private static final g:I = 0x1

.field private static final h:Ljava/util/concurrent/ThreadFactory;

.field private static final i:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final j:I = 0x1

.field private static final k:I = 0x2

.field private static l:Landroidx/i/b/d$b;

.field private static volatile m:Ljava/util/concurrent/Executor;


# instance fields
.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final n:Landroidx/i/b/d$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/i/b/d$d<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field private volatile p:Landroidx/i/b/d$c;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 60
    new-instance v0, Landroidx/i/b/d$1;

    invoke-direct {v0}, Landroidx/i/b/d$1;-><init>()V

    sput-object v0, Landroidx/i/b/d;->h:Ljava/util/concurrent/ThreadFactory;

    .line 69
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Landroidx/i/b/d;->i:Ljava/util/concurrent/BlockingQueue;

    .line 75
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v8, Landroidx/i/b/d;->i:Ljava/util/concurrent/BlockingQueue;

    sget-object v9, Landroidx/i/b/d;->h:Ljava/util/concurrent/ThreadFactory;

    const/4 v3, 0x5

    const/16 v4, 0x80

    const-wide/16 v5, 0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Landroidx/i/b/d;->c:Ljava/util/concurrent/Executor;

    .line 84
    sget-object v0, Landroidx/i/b/d;->c:Ljava/util/concurrent/Executor;

    sput-object v0, Landroidx/i/b/d;->m:Ljava/util/concurrent/Executor;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Landroidx/i/b/d$c;->a:Landroidx/i/b/d$c;

    iput-object v0, p0, Landroidx/i/b/d;->p:Landroidx/i/b/d$c;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroidx/i/b/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroidx/i/b/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    new-instance v0, Landroidx/i/b/d$2;

    invoke-direct {v0, p0}, Landroidx/i/b/d$2;-><init>(Landroidx/i/b/d;)V

    iput-object v0, p0, Landroidx/i/b/d;->n:Landroidx/i/b/d$d;

    .line 153
    new-instance v0, Landroidx/i/b/d$3;

    iget-object v1, p0, Landroidx/i/b/d;->n:Landroidx/i/b/d$d;

    invoke-direct {v0, p0, v1}, Landroidx/i/b/d$3;-><init>(Landroidx/i/b/d;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Landroidx/i/b/d;->o:Ljava/util/concurrent/FutureTask;

    return-void
.end method

.method private static a()Landroid/os/Handler;
    .locals 2

    .line 115
    const-class v0, Landroidx/i/b/d;

    monitor-enter v0

    .line 116
    :try_start_0
    sget-object v1, Landroidx/i/b/d;->l:Landroidx/i/b/d$b;

    if-nez v1, :cond_0

    .line 117
    new-instance v1, Landroidx/i/b/d$b;

    invoke-direct {v1}, Landroidx/i/b/d$b;-><init>()V

    sput-object v1, Landroidx/i/b/d;->l:Landroidx/i/b/d$b;

    .line 119
    :cond_0
    sget-object v1, Landroidx/i/b/d;->l:Landroidx/i/b/d$b;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 462
    sget-object v0, Landroidx/i/b/d;->m:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 126
    sput-object p0, Landroidx/i/b/d;->m:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroidx/i/b/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Landroidx/i/b/d<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 433
    iget-object v0, p0, Landroidx/i/b/d;->p:Landroidx/i/b/d$c;

    sget-object v1, Landroidx/i/b/d$c;->a:Landroidx/i/b/d$c;

    if-eq v0, v1, :cond_0

    .line 434
    sget-object p1, Landroidx/i/b/d$4;->a:[I

    iget-object p0, p0, Landroidx/i/b/d;->p:Landroidx/i/b/d$c;

    invoke-virtual {p0}, Landroidx/i/b/d$c;->ordinal()I

    move-result p0

    aget p0, p1, p0

    packed-switch p0, :pswitch_data_0

    .line 443
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "We should never reach this state"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 439
    :pswitch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 436
    :pswitch_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot execute task: the task is already running."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 447
    :cond_0
    sget-object v0, Landroidx/i/b/d$c;->b:Landroidx/i/b/d$c;

    iput-object v0, p0, Landroidx/i/b/d;->p:Landroidx/i/b/d$c;

    .line 449
    invoke-virtual {p0}, Landroidx/i/b/d;->c()V

    .line 451
    iget-object v0, p0, Landroidx/i/b/d;->n:Landroidx/i/b/d$d;

    iput-object p2, v0, Landroidx/i/b/d$d;->b:[Ljava/lang/Object;

    .line 452
    iget-object p2, p0, Landroidx/i/b/d;->o:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .line 368
    iget-object p0, p0, Landroidx/i/b/d;->o:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected varargs abstract a([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    return-void
.end method

.method public final a(Z)Z
    .locals 2

    .line 332
    iget-object v0, p0, Landroidx/i/b/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 333
    iget-object p0, p0, Landroidx/i/b/d;->o:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result p0

    return p0
.end method

.method public final b()Landroidx/i/b/d$c;
    .locals 0

    .line 195
    iget-object p0, p0, Landroidx/i/b/d;->p:Landroidx/i/b/d$c;

    return-object p0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Landroidx/i/b/d;->d()V

    return-void
.end method

.method protected varargs b([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    return-void
.end method

.method public final varargs c([Ljava/lang/Object;)Landroidx/i/b/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Landroidx/i/b/d<",
            "TParams;TProgress;TResult;>;"
        }
    .end annotation

    .line 398
    sget-object v0, Landroidx/i/b/d;->m:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Landroidx/i/b/d;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroidx/i/b/d;

    move-result-object p0

    return-object p0
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Landroidx/i/b/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0, p1}, Landroidx/i/b/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .line 183
    invoke-static {}, Landroidx/i/b/d;->a()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/i/b/d$a;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Landroidx/i/b/d$a;-><init>(Landroidx/i/b/d;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 185
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected final varargs d([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .line 480
    invoke-virtual {p0}, Landroidx/i/b/d;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    invoke-static {}, Landroidx/i/b/d;->a()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Landroidx/i/b/d$a;

    invoke-direct {v2, p0, p1}, Landroidx/i/b/d$a;-><init>(Landroidx/i/b/d;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 482
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method e(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .line 487
    invoke-virtual {p0}, Landroidx/i/b/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0, p1}, Landroidx/i/b/d;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/i/b/d;->a(Ljava/lang/Object;)V

    .line 492
    :goto_0
    sget-object p1, Landroidx/i/b/d$c;->c:Landroidx/i/b/d$c;

    iput-object p1, p0, Landroidx/i/b/d;->p:Landroidx/i/b/d$c;

    return-void
.end method

.method public final e()Z
    .locals 0

    .line 299
    iget-object p0, p0, Landroidx/i/b/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final f()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .line 348
    iget-object p0, p0, Landroidx/i/b/d;->o:Ljava/util/concurrent/FutureTask;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
