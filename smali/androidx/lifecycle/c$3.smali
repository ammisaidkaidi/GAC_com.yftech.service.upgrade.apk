.class Landroidx/lifecycle/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/c;


# direct methods
.method constructor <init>(Landroidx/lifecycle/c;)V
    .locals 0

    .line 124
    iput-object p1, p0, Landroidx/lifecycle/c$3;->a:Landroidx/lifecycle/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .line 128
    iget-object v0, p0, Landroidx/lifecycle/c$3;->a:Landroidx/lifecycle/c;

    iget-object v0, v0, Landroidx/lifecycle/c;->b:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Z

    move-result v0

    .line 129
    iget-object v1, p0, Landroidx/lifecycle/c$3;->a:Landroidx/lifecycle/c;

    iget-object v1, v1, Landroidx/lifecycle/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Landroidx/lifecycle/c$3;->a:Landroidx/lifecycle/c;

    iget-object v0, v0, Landroidx/lifecycle/c;->a:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/lifecycle/c$3;->a:Landroidx/lifecycle/c;

    iget-object p0, p0, Landroidx/lifecycle/c;->e:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
