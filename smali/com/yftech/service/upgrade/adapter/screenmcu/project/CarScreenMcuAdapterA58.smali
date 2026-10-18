.class public Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;
.super Lcom/yftech/service/upgrade/adapter/screenmcu/a/b;
.source "SourceFile"

# interfaces
.implements Lcom/yftech/service/upgrade/g/a$a;


# static fields
.field private static final a:Ljava/lang/String; = "screenupgrade.bin"

.field private static final b:Ljava/lang/String; = "screenupgrade.md5"


# instance fields
.field private c:I

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/yftech/service/upgrade/adapter/screenmcu/a/b;-><init>()V

    const v0, 0x7fffffff

    .line 24
    iput v0, p0, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->c:I

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->d:Ljava/lang/Object;

    return-void
.end method

.method private a([Ljava/io/File;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 119
    :cond_0
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_3

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 120
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFile, delete fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private c([Ljava/lang/String;)[Ljava/io/File;
    .locals 8

    const/4 p0, 0x0

    if-eqz p1, :cond_c

    .line 130
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 135
    :cond_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "findUpgradeFile, pathList not exists"

    .line 137
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    return-object p0

    .line 140
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "findUpgradeFile, pathList is not directory"

    .line 141
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    return-object p0

    .line 145
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 146
    array-length v0, p1

    if-nez v0, :cond_3

    goto :goto_5

    .line 152
    :cond_3
    array-length v0, p1

    move-object v3, p0

    move-object v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_8

    aget-object v5, p1, v2

    .line 153
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    const-string v6, "screenupgrade.bin"

    .line 156
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v3, v5

    goto :goto_1

    :cond_5
    const-string v6, "screenupgrade.md5"

    .line 158
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v4, v5

    :cond_6
    :goto_1
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    :goto_3
    if-eqz v3, :cond_a

    if-nez v4, :cond_9

    goto :goto_4

    :cond_9
    const/4 p0, 0x2

    .line 170
    new-array p0, p0, [Ljava/io/File;

    aput-object v3, p0, v1

    const/4 p1, 0x1

    aput-object v4, p0, p1

    return-object p0

    :cond_a
    :goto_4
    return-object p0

    :cond_b
    :goto_5
    const-string p1, "findUpgradeFile, directory is empty"

    .line 147
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    return-object p0

    :cond_c
    :goto_6
    const-string p1, "findUpgradeFile, pathList is empty"

    .line 131
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    return-object p0
.end method

.method private native nativeStartUpgrade(Ljava/lang/String;)Z
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->onUpgradeProgressChanged(I)V

    return-void
.end method

.method public a([Ljava/lang/String;)Z
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->c([Ljava/lang/String;)[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 31
    sget-object p0, Lcom/yftech/car/utils/PlatformProjectDescribe$VehicleType;->CBIHU12_A58:Lcom/yftech/car/utils/PlatformProjectDescribe$VehicleType;

    invoke-virtual {p0}, Lcom/yftech/car/utils/PlatformProjectDescribe$VehicleType;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b([Ljava/lang/String;)Z
    .locals 11

    const-string v0, "startUpgrade, screen upgrade start"

    .line 41
    invoke-static {v0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    const v0, 0x7fffffff

    .line 42
    iput v0, p0, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->c:I

    const/4 v0, 0x3

    .line 44
    invoke-virtual {p0, v0}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->onUpgradeStateChanged(I)V

    .line 45
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->c([Ljava/lang/String;)[Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-nez p1, :cond_0

    const-string p1, "startUpgrade, not find upgrade file"

    .line 47
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->onUpgradeStateChanged(I)V

    return v0

    :cond_0
    const/4 v2, 0x4

    .line 51
    invoke-virtual {p0, v2}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->onUpgradeStateChanged(I)V

    .line 52
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/yftech/service/upgrade/a/a;->a()Lcom/yftech/service/upgrade/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/service/upgrade/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-static {p1, v2, p0}, Lcom/yftech/service/upgrade/g/a;->a([Ljava/io/File;Ljava/io/File;Lcom/yftech/service/upgrade/g/a$a;)Z

    move-result p1

    const/4 v3, 0x1

    if-nez p1, :cond_1

    const-string p1, "startUpgrade, copy upgrade file failed"

    .line 54
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, v1}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->onUpgradeStateChanged(I)V

    .line 56
    new-instance p1, Ljava/io/File;

    const-string v4, "screenupgrade.bin"

    invoke-direct {p1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 57
    new-instance v4, Ljava/io/File;

    const-string v5, "screenupgrade.md5"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    new-array v1, v1, [Ljava/io/File;

    aput-object p1, v1, v0

    aput-object v4, v1, v3

    invoke-direct {p0, v1}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->a([Ljava/io/File;)V

    return v0

    :cond_1
    const/4 p1, 0x5

    .line 62
    invoke-virtual {p0, p1}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->onUpgradeStateChanged(I)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->onUpgradeProgressChanged(I)V

    .line 64
    new-instance p1, Ljava/io/File;

    const-string v4, "screenupgrade.bin"

    invoke-direct {p1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    new-instance v4, Ljava/io/File;

    const-string v5, "screenupgrade.md5"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    invoke-static {p1, v4}, Lcom/yftech/service/upgrade/g/c;->b(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "startUpgrade, md5 not equals"

    .line 69
    invoke-static {v2}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->onUpgradeStateChanged(I)V

    .line 71
    new-array v1, v1, [Ljava/io/File;

    aput-object p1, v1, v0

    aput-object v4, v1, v3

    invoke-direct {p0, v1}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->a([Ljava/io/File;)V

    return v0

    :cond_2
    const/4 v2, 0x6

    .line 75
    invoke-virtual {p0, v2}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->onUpgradeStateChanged(I)V

    .line 76
    invoke-virtual {p0, v0}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->onUpgradeProgressChanged(I)V

    .line 77
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "screen upgrade file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->nativeStartUpgrade(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v2, "startUpgrade, start upgrade screen failed"

    .line 79
    invoke-static {v2}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, v1}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->onUpgradeStateChanged(I)V

    .line 81
    new-array v1, v1, [Ljava/io/File;

    aput-object p1, v1, v0

    aput-object v4, v1, v3

    invoke-direct {p0, v1}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->a([Ljava/io/File;)V

    return v0

    .line 85
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 86
    iput v2, p0, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->c:I

    .line 89
    :goto_0
    iget-object v2, p0, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 90
    :try_start_0
    iget v7, p0, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->c:I

    if-eq v7, v3, :cond_6

    iget v7, p0, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->c:I

    if-ne v7, v1, :cond_4

    goto :goto_2

    .line 95
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/32 v9, 0xea60

    cmp-long v7, v7, v9

    if-lez v7, :cond_5

    iget v7, p0, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->c:I

    const/4 v8, 0x7

    if-eq v7, v8, :cond_5

    .line 97
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startUpgrade, request upgrade screen timeout, state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->c:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/yftech/car/utils/Loger;->i(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v1}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->onUpgradeStateChanged(I)V

    .line 99
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 102
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->d:Ljava/lang/Object;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    .line 104
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 106
    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 92
    :cond_6
    :goto_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    :goto_3
    new-array v1, v1, [Ljava/io/File;

    aput-object p1, v1, v0

    aput-object v4, v1, v3

    invoke-direct {p0, v1}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->a([Ljava/io/File;)V

    return v3

    :catchall_0
    move-exception p0

    .line 106
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    invoke-super {p0}, Lcom/yftech/service/upgrade/adapter/screenmcu/a/b;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "project="

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lastState="

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onUpgradeStateChanged(I)V
    .locals 1

    .line 175
    invoke-super {p0, p1}, Lcom/yftech/service/upgrade/adapter/screenmcu/a/b;->onUpgradeStateChanged(I)V

    .line 176
    iput p1, p0, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->c:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->d:Ljava/lang/Object;

    monitor-enter p1

    .line 179
    :try_start_0
    iget-object p0, p0, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 180
    monitor-exit p1

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
