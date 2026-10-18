.class Landroidx/i/b/d$2;
.super Landroidx/i/b/d$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/i/b/d;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/i/b/d$d<",
        "TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/i/b/d;


# direct methods
.method constructor <init>(Landroidx/i/b/d;)V
    .locals 0

    .line 133
    iput-object p1, p0, Landroidx/i/b/d$2;->a:Landroidx/i/b/d;

    invoke-direct {p0}, Landroidx/i/b/d$d;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Landroidx/i/b/d$2;->a:Landroidx/i/b/d;

    iget-object v0, v0, Landroidx/i/b/d;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v0, 0xa

    const/4 v2, 0x0

    .line 139
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 141
    iget-object v0, p0, Landroidx/i/b/d$2;->a:Landroidx/i/b/d;

    iget-object v3, p0, Landroidx/i/b/d$2;->b:[Ljava/lang/Object;

    invoke-virtual {v0, v3}, Landroidx/i/b/d;->a([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    iget-object p0, p0, Landroidx/i/b/d$2;->a:Landroidx/i/b/d;

    invoke-virtual {p0, v0}, Landroidx/i/b/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :catchall_0
    move-exception v1

    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 144
    :goto_0
    :try_start_2
    iget-object v3, p0, Landroidx/i/b/d$2;->a:Landroidx/i/b/d;

    iget-object v3, v3, Landroidx/i/b/d;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 145
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    :goto_1
    iget-object p0, p0, Landroidx/i/b/d$2;->a:Landroidx/i/b/d;

    invoke-virtual {p0, v2}, Landroidx/i/b/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    throw v1
.end method
