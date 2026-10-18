.class Landroidx/i/b/d$3;
.super Ljava/util/concurrent/FutureTask;
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
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/i/b/d;


# direct methods
.method constructor <init>(Landroidx/i/b/d;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 153
    iput-object p1, p0, Landroidx/i/b/d$3;->a:Landroidx/i/b/d;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 2

    .line 157
    :try_start_0
    invoke-virtual {p0}, Landroidx/i/b/d$3;->get()Ljava/lang/Object;

    move-result-object v0

    .line 159
    iget-object v1, p0, Landroidx/i/b/d$3;->a:Landroidx/i/b/d;

    invoke-virtual {v1, v0}, Landroidx/i/b/d;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 168
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "An error occurred while executing doInBackground()"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 166
    :catch_1
    iget-object p0, p0, Landroidx/i/b/d$3;->a:Landroidx/i/b/d;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/i/b/d;->c(Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 163
    new-instance v0, Ljava/lang/RuntimeException;

    .line 164
    invoke-virtual {p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const-string v1, "An error occurred while executing doInBackground()"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_3
    move-exception p0

    const-string v0, "AsyncTask"

    .line 161
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
