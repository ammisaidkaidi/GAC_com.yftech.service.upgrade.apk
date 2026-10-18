.class public abstract Landroidx/lifecycle/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/Executor;

.field final b:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final e:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/ax;
    .end annotation
.end field

.field final f:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/ax;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-static {}, Landroidx/a/a/a/a;->c()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/lifecycle/c;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/lifecycle/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/lifecycle/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    new-instance v0, Landroidx/lifecycle/c$2;

    invoke-direct {v0, p0}, Landroidx/lifecycle/c$2;-><init>(Landroidx/lifecycle/c;)V

    iput-object v0, p0, Landroidx/lifecycle/c;->e:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Landroidx/lifecycle/c$3;

    invoke-direct {v0, p0}, Landroidx/lifecycle/c$3;-><init>(Landroidx/lifecycle/c;)V

    iput-object v0, p0, Landroidx/lifecycle/c;->f:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Landroidx/lifecycle/c;->a:Ljava/util/concurrent/Executor;

    .line 67
    new-instance p1, Landroidx/lifecycle/c$1;

    invoke-direct {p1, p0}, Landroidx/lifecycle/c$1;-><init>(Landroidx/lifecycle/c;)V

    iput-object p1, p0, Landroidx/lifecycle/c;->b:Landroidx/lifecycle/LiveData;

    return-void
.end method


# virtual methods
.method public a()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    .line 83
    iget-object p0, p0, Landroidx/lifecycle/c;->b:Landroidx/lifecycle/LiveData;

    return-object p0
.end method

.method public b()V
    .locals 1

    .line 143
    invoke-static {}, Landroidx/a/a/a/a;->a()Landroidx/a/a/a/a;

    move-result-object v0

    iget-object p0, p0, Landroidx/lifecycle/c;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroidx/a/a/a/a;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected abstract c()Ljava/lang/Object;
    .annotation build Landroidx/annotation/ay;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
