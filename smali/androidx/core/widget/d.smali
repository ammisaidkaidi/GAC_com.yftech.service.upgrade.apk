.class public Landroidx/core/widget/d;
.super Landroid/widget/ProgressBar;
.source "SourceFile"


# static fields
.field private static final e:I = 0x1f4

.field private static final f:I = 0x1f4


# instance fields
.field a:J

.field b:Z

.field c:Z

.field d:Z

.field private final g:Ljava/lang/Runnable;

.field private final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, v0}, Landroidx/core/widget/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, -0x1

    .line 37
    iput-wide p1, p0, Landroidx/core/widget/d;->a:J

    .line 39
    iput-boolean v0, p0, Landroidx/core/widget/d;->b:Z

    .line 41
    iput-boolean v0, p0, Landroidx/core/widget/d;->c:Z

    .line 43
    iput-boolean v0, p0, Landroidx/core/widget/d;->d:Z

    .line 45
    new-instance p1, Landroidx/core/widget/d$1;

    invoke-direct {p1, p0}, Landroidx/core/widget/d$1;-><init>(Landroidx/core/widget/d;)V

    iput-object p1, p0, Landroidx/core/widget/d;->g:Ljava/lang/Runnable;

    .line 55
    new-instance p1, Landroidx/core/widget/d$2;

    invoke-direct {p1, p0}, Landroidx/core/widget/d$2;-><init>(Landroidx/core/widget/d;)V

    iput-object p1, p0, Landroidx/core/widget/d;->h:Ljava/lang/Runnable;

    return-void
.end method

.method private c()V
    .locals 1

    .line 88
    iget-object v0, p0, Landroidx/core/widget/d;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/core/widget/d;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 89
    iget-object v0, p0, Landroidx/core/widget/d;->h:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/core/widget/d;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 9

    monitor-enter p0

    const/4 v0, 0x1

    .line 98
    :try_start_0
    iput-boolean v0, p0, Landroidx/core/widget/d;->d:Z

    .line 99
    iget-object v1, p0, Landroidx/core/widget/d;->h:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroidx/core/widget/d;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    .line 100
    iput-boolean v1, p0, Landroidx/core/widget/d;->c:Z

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/core/widget/d;->a:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 102
    iget-wide v5, p0, Landroidx/core/widget/d;->a:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    iget-boolean v5, p0, Landroidx/core/widget/d;->b:Z

    if-nez v5, :cond_2

    .line 112
    iget-object v5, p0, Landroidx/core/widget/d;->g:Ljava/lang/Runnable;

    sub-long/2addr v3, v1

    invoke-virtual {p0, v5, v3, v4}, Landroidx/core/widget/d;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 113
    iput-boolean v0, p0, Landroidx/core/widget/d;->b:Z

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 106
    invoke-virtual {p0, v0}, Landroidx/core/widget/d;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 97
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    const-wide/16 v0, -0x1

    .line 124
    :try_start_0
    iput-wide v0, p0, Landroidx/core/widget/d;->a:J

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Landroidx/core/widget/d;->d:Z

    .line 126
    iget-object v1, p0, Landroidx/core/widget/d;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroidx/core/widget/d;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 127
    iput-boolean v0, p0, Landroidx/core/widget/d;->b:Z

    .line 128
    iget-boolean v0, p0, Landroidx/core/widget/d;->c:Z

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Landroidx/core/widget/d;->h:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Landroidx/core/widget/d;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Landroidx/core/widget/d;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 123
    monitor-exit p0

    throw v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 77
    invoke-super {p0}, Landroid/widget/ProgressBar;->onAttachedToWindow()V

    .line 78
    invoke-direct {p0}, Landroidx/core/widget/d;->c()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 83
    invoke-super {p0}, Landroid/widget/ProgressBar;->onDetachedFromWindow()V

    .line 84
    invoke-direct {p0}, Landroidx/core/widget/d;->c()V

    return-void
.end method
