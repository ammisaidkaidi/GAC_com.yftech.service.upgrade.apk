.class final Landroidx/core/app/m$f;
.super Landroid/app/job/JobServiceEngine;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/m$b;


# annotations
.annotation build Landroidx/annotation/am;
    a = 0x1a
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/m$f$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "JobServiceEngineImpl"

.field static final b:Z = false


# instance fields
.field final c:Landroidx/core/app/m;

.field final d:Ljava/lang/Object;

.field e:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>(Landroidx/core/app/m;)V
    .locals 1

    .line 275
    invoke-direct {p0, p1}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    .line 249
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/core/app/m$f;->d:Ljava/lang/Object;

    .line 276
    iput-object p1, p0, Landroidx/core/app/m$f;->c:Landroidx/core/app/m;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .locals 0

    .line 281
    invoke-virtual {p0}, Landroidx/core/app/m$f;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public b()Landroidx/core/app/m$e;
    .locals 3

    .line 311
    iget-object v0, p0, Landroidx/core/app/m$f;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_0
    iget-object v1, p0, Landroidx/core/app/m$f;->e:Landroid/app/job/JobParameters;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 313
    monitor-exit v0

    return-object v2

    .line 315
    :cond_0
    iget-object v1, p0, Landroidx/core/app/m$f;->e:Landroid/app/job/JobParameters;

    invoke-virtual {v1}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    move-result-object v1

    .line 316
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {v1}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v2, p0, Landroidx/core/app/m$f;->c:Landroidx/core/app/m;

    invoke-virtual {v2}, Landroidx/core/app/m;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 319
    new-instance v0, Landroidx/core/app/m$f$a;

    invoke-direct {v0, p0, v1}, Landroidx/core/app/m$f$a;-><init>(Landroidx/core/app/m$f;Landroid/app/job/JobWorkItem;)V

    return-object v0

    :cond_1
    return-object v2

    :catchall_0
    move-exception p0

    .line 316
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    .line 287
    iput-object p1, p0, Landroidx/core/app/m$f;->e:Landroid/app/job/JobParameters;

    .line 289
    iget-object p0, p0, Landroidx/core/app/m$f;->c:Landroidx/core/app/m;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/core/app/m;->b(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 296
    iget-object p1, p0, Landroidx/core/app/m$f;->c:Landroidx/core/app/m;

    invoke-virtual {p1}, Landroidx/core/app/m;->c()Z

    move-result p1

    .line 297
    iget-object v0, p0, Landroidx/core/app/m$f;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 300
    :try_start_0
    iput-object v1, p0, Landroidx/core/app/m$f;->e:Landroid/app/job/JobParameters;

    .line 301
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
