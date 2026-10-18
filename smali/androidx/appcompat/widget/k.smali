.class public final Landroidx/appcompat/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "AppCompatDrawableManag"

.field private static final b:Z = false

.field private static final c:Landroid/graphics/PorterDuff$Mode;

.field private static d:Landroidx/appcompat/widget/k;


# instance fields
.field private e:Landroidx/appcompat/widget/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Landroidx/appcompat/widget/k;->c:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    const-class v0, Landroidx/appcompat/widget/k;

    monitor-enter v0

    .line 438
    :try_start_0
    invoke-static {p0, p1}, Landroidx/appcompat/widget/ao;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a()V
    .locals 3

    const-class v0, Landroidx/appcompat/widget/k;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/k;->d:Landroidx/appcompat/widget/k;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Landroidx/appcompat/widget/k;

    invoke-direct {v1}, Landroidx/appcompat/widget/k;-><init>()V

    sput-object v1, Landroidx/appcompat/widget/k;->d:Landroidx/appcompat/widget/k;

    .line 56
    sget-object v1, Landroidx/appcompat/widget/k;->d:Landroidx/appcompat/widget/k;

    invoke-static {}, Landroidx/appcompat/widget/ao;->a()Landroidx/appcompat/widget/ao;

    move-result-object v2

    iput-object v2, v1, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/ao;

    .line 57
    sget-object v1, Landroidx/appcompat/widget/k;->d:Landroidx/appcompat/widget/k;

    iget-object v1, v1, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/ao;

    new-instance v2, Landroidx/appcompat/widget/k$1;

    invoke-direct {v2}, Landroidx/appcompat/widget/k$1;-><init>()V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ao;->a(Landroidx/appcompat/widget/ao$e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 53
    monitor-exit v0

    throw v1
.end method

.method static a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ay;[I)V
    .locals 0

    .line 433
    invoke-static {p0, p1, p2}, Landroidx/appcompat/widget/ao;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/ay;[I)V

    return-void
.end method

.method public static declared-synchronized b()Landroidx/appcompat/widget/k;
    .locals 2

    const-class v0, Landroidx/appcompat/widget/k;

    monitor-enter v0

    .line 397
    :try_start_0
    sget-object v1, Landroidx/appcompat/widget/k;->d:Landroidx/appcompat/widget/k;

    if-nez v1, :cond_0

    .line 398
    invoke-static {}, Landroidx/appcompat/widget/k;->a()V

    .line 400
    :cond_0
    sget-object v1, Landroidx/appcompat/widget/k;->d:Landroidx/appcompat/widget/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 396
    monitor-exit v0

    throw v1
.end method

.method static synthetic c()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 46
    sget-object v0, Landroidx/appcompat/widget/k;->c:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param

    monitor-enter p0

    .line 406
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/ao;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ao;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param

    monitor-enter p0

    .line 411
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/ao;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/ao;->a(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Landroid/content/Context;Landroidx/appcompat/widget/bf;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/widget/bf;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param

    monitor-enter p0

    .line 420
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/ao;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/ao;->a(Landroid/content/Context;Landroidx/appcompat/widget/bf;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    monitor-enter p0

    .line 415
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/ao;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ao;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 414
    monitor-exit p0

    throw p1
.end method

.method a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 425
    iget-object p0, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/ao;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/widget/ao;->a(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0
.end method

.method declared-synchronized b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param

    monitor-enter p0

    .line 429
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/widget/k;->e:Landroidx/appcompat/widget/ao;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ao;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
