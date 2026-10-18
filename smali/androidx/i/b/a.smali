.class public abstract Landroidx/i/b/a;
.super Landroidx/i/b/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/i/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/i/b/c<",
        "TD;>;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "AsyncTaskLoader"

.field static final b:Z = false


# instance fields
.field volatile c:Landroidx/i/b/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/i/b/a<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field volatile d:Landroidx/i/b/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/i/b/a<",
            "TD;>.a;"
        }
    .end annotation
.end field

.field e:J

.field f:J

.field g:Landroid/os/Handler;

.field private final h:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 128
    sget-object v0, Landroidx/i/b/d;->c:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Landroidx/i/b/a;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 132
    invoke-direct {p0, p1}, Landroidx/i/b/c;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x2710

    .line 124
    iput-wide v0, p0, Landroidx/i/b/a;->f:J

    .line 133
    iput-object p2, p0, Landroidx/i/b/a;->h:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 152
    invoke-super {p0}, Landroidx/i/b/c;->a()V

    .line 153
    invoke-virtual {p0}, Landroidx/i/b/a;->y()Z

    .line 154
    new-instance v0, Landroidx/i/b/a$a;

    invoke-direct {v0, p0}, Landroidx/i/b/a$a;-><init>(Landroidx/i/b/a;)V

    iput-object v0, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    .line 156
    invoke-virtual {p0}, Landroidx/i/b/a;->c()V

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 144
    iput-wide p1, p0, Landroidx/i/b/a;->e:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    .line 146
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/i/b/a;->g:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method a(Landroidx/i/b/a$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/i/b/a<",
            "TD;>.a;TD;)V"
        }
    .end annotation

    .line 233
    invoke-virtual {p0, p2}, Landroidx/i/b/a;->a(Ljava/lang/Object;)V

    .line 234
    iget-object p2, p0, Landroidx/i/b/a;->d:Landroidx/i/b/a$a;

    if-ne p2, p1, :cond_0

    .line 236
    invoke-virtual {p0}, Landroidx/i/b/a;->G()V

    .line 237
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/i/b/a;->f:J

    const/4 p1, 0x0

    .line 238
    iput-object p1, p0, Landroidx/i/b/a;->d:Landroidx/i/b/a$a;

    .line 240
    invoke-virtual {p0}, Landroidx/i/b/a;->r()V

    .line 241
    invoke-virtual {p0}, Landroidx/i/b/a;->c()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 356
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/i/b/c;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 357
    iget-object p2, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    if-eqz p2, :cond_0

    .line 358
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string p2, " waiting="

    .line 359
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    iget-boolean p2, p2, Landroidx/i/b/a$a;->a:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 361
    :cond_0
    iget-object p2, p0, Landroidx/i/b/a;->d:Landroidx/i/b/a$a;

    if-eqz p2, :cond_1

    .line 362
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCancellingTask="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/i/b/a;->d:Landroidx/i/b/a$a;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string p2, " waiting="

    .line 363
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/i/b/a;->d:Landroidx/i/b/a$a;

    iget-boolean p2, p2, Landroidx/i/b/a$a;->a:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 365
    :cond_1
    iget-wide v0, p0, Landroidx/i/b/a;->e:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    .line 366
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mUpdateThrottle="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    iget-wide p1, p0, Landroidx/i/b/a;->e:J

    invoke-static {p1, p2, p3}, Landroidx/core/m/l;->a(JLjava/io/PrintWriter;)V

    const-string p1, " mLastLoadCompleteTime="

    .line 368
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    iget-wide p0, p0, Landroidx/i/b/a;->f:J

    .line 370
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 369
    invoke-static {p0, p1, v0, v1, p3}, Landroidx/core/m/l;->a(JJLjava/io/PrintWriter;)V

    .line 371
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    :cond_2
    return-void
.end method

.method b(Landroidx/i/b/a$a;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/i/b/a<",
            "TD;>.a;TD;)V"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    if-eq v0, p1, :cond_0

    .line 248
    invoke-virtual {p0, p1, p2}, Landroidx/i/b/a;->a(Landroidx/i/b/a$a;Ljava/lang/Object;)V

    goto :goto_0

    .line 250
    :cond_0
    invoke-virtual {p0}, Landroidx/i/b/a;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 252
    invoke-virtual {p0, p2}, Landroidx/i/b/a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {p0}, Landroidx/i/b/a;->F()V

    .line 255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/i/b/a;->f:J

    const/4 p1, 0x0

    .line 256
    iput-object p1, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    .line 258
    invoke-virtual {p0, p2}, Landroidx/i/b/a;->b(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected b()Z
    .locals 4

    .line 162
    iget-object v0, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 163
    iget-boolean v0, p0, Landroidx/i/b/a;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 164
    iput-boolean v0, p0, Landroidx/i/b/a;->w:Z

    .line 166
    :cond_0
    iget-object v0, p0, Landroidx/i/b/a;->d:Landroidx/i/b/a$a;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    iget-boolean v0, v0, Landroidx/i/b/a$a;->a:Z

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    iput-boolean v1, v0, Landroidx/i/b/a$a;->a:Z

    .line 173
    iget-object v0, p0, Landroidx/i/b/a;->g:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    :cond_1
    iput-object v2, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    return v1

    .line 177
    :cond_2
    iget-object v0, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    iget-boolean v0, v0, Landroidx/i/b/a$a;->a:Z

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    iput-boolean v1, v0, Landroidx/i/b/a$a;->a:Z

    .line 182
    iget-object v0, p0, Landroidx/i/b/a;->g:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    iput-object v2, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    return v1

    .line 186
    :cond_3
    iget-object v0, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    invoke-virtual {v0, v1}, Landroidx/i/b/a$a;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    iget-object v1, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    iput-object v1, p0, Landroidx/i/b/a;->d:Landroidx/i/b/a$a;

    .line 190
    invoke-virtual {p0}, Landroidx/i/b/a;->f()V

    .line 192
    :cond_4
    iput-object v2, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    return v0

    :cond_5
    return v1
.end method

.method c()V
    .locals 6

    .line 210
    iget-object v0, p0, Landroidx/i/b/a;->d:Landroidx/i/b/a$a;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    iget-boolean v0, v0, Landroidx/i/b/a$a;->a:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/i/b/a$a;->a:Z

    .line 213
    iget-object v0, p0, Landroidx/i/b/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 215
    :cond_0
    iget-wide v0, p0, Landroidx/i/b/a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 217
    iget-wide v2, p0, Landroidx/i/b/a;->f:J

    iget-wide v4, p0, Landroidx/i/b/a;->e:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 222
    iget-object v0, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/i/b/a$a;->a:Z

    .line 223
    iget-object v0, p0, Landroidx/i/b/a;->g:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    iget-wide v2, p0, Landroidx/i/b/a;->f:J

    iget-wide v4, p0, Landroidx/i/b/a;->e:J

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void

    .line 228
    :cond_1
    iget-object v0, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    iget-object p0, p0, Landroidx/i/b/a;->h:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroidx/i/b/a$a;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroidx/i/b/d;

    :cond_2
    return-void
.end method

.method public abstract d()Ljava/lang/Object;
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected e()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .line 307
    invoke-virtual {p0}, Landroidx/i/b/a;->d()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()Z
    .locals 0

    .line 332
    iget-object p0, p0, Landroidx/i/b/a;->d:Landroidx/i/b/a$a;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public h()V
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 347
    iget-object p0, p0, Landroidx/i/b/a;->c:Landroidx/i/b/a$a;

    if-eqz p0, :cond_0

    .line 349
    invoke-virtual {p0}, Landroidx/i/b/a$a;->a()V

    :cond_0
    return-void
.end method
