.class final Landroidx/core/app/m$f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/m$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/m$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/app/job/JobWorkItem;

.field final synthetic b:Landroidx/core/app/m$f;


# direct methods
.method constructor <init>(Landroidx/core/app/m$f;Landroid/app/job/JobWorkItem;)V
    .locals 0

    .line 255
    iput-object p1, p0, Landroidx/core/app/m$f$a;->b:Landroidx/core/app/m$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    iput-object p2, p0, Landroidx/core/app/m$f$a;->a:Landroid/app/job/JobWorkItem;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 0

    .line 261
    iget-object p0, p0, Landroidx/core/app/m$f$a;->a:Landroid/app/job/JobWorkItem;

    invoke-virtual {p0}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public b()V
    .locals 2

    .line 266
    iget-object v0, p0, Landroidx/core/app/m$f$a;->b:Landroidx/core/app/m$f;

    iget-object v0, v0, Landroidx/core/app/m$f;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    iget-object v1, p0, Landroidx/core/app/m$f$a;->b:Landroidx/core/app/m$f;

    iget-object v1, v1, Landroidx/core/app/m$f;->e:Landroid/app/job/JobParameters;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Landroidx/core/app/m$f$a;->b:Landroidx/core/app/m$f;

    iget-object v1, v1, Landroidx/core/app/m$f;->e:Landroid/app/job/JobParameters;

    iget-object p0, p0, Landroidx/core/app/m$f$a;->a:Landroid/app/job/JobWorkItem;

    invoke-virtual {v1, p0}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V

    .line 270
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
