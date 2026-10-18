.class public Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;
.super Lcom/yftech/service/upgrade/adapter/mcu/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/yftech/service/upgrade/g/a$a;


# static fields
.field private static final a:Ljava/lang/String; = "mcuupgrade.bin"

.field private static final b:Ljava/lang/String; = "mcuupgrade.md5"

.field private static final c:Ljava/lang/String; = "mcuversion.txt"


# instance fields
.field private final d:Ljava/lang/Object;

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/yftech/service/upgrade/adapter/mcu/a/a;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->d:Ljava/lang/Object;

    const v0, 0x7fffffff

    .line 26
    iput v0, p0, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->e:I

    return-void
.end method

.method private a([Ljava/io/File;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 142
    :cond_0
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_3

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 146
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFiles, delete fail:"

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
    .locals 9

    const/4 p0, 0x0

    if-eqz p1, :cond_d

    .line 169
    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 174
    :cond_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "findUpgradeFiles, pathList not exists"

    .line 176
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    return-object p0

    .line 179
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "findUpgradeFiles, pathList is not directory"

    .line 180
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    return-object p0

    .line 184
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 185
    array-length v0, p1

    if-nez v0, :cond_3

    goto :goto_5

    .line 191
    :cond_3
    array-length v0, p1

    move-object v3, p0

    move-object v4, v3

    move-object v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_9

    aget-object v6, p1, v2

    .line 192
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    const-string v7, "mcuupgrade.bin"

    .line 195
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v3, v6

    goto :goto_1

    :cond_5
    const-string v7, "mcuupgrade.md5"

    .line 198
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v4, v6

    goto :goto_1

    :cond_6
    const-string v7, "mcuversion.txt"

    .line 201
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v5, v6

    :cond_7
    :goto_1
    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    :goto_3
    if-eqz v3, :cond_b

    if-nez v4, :cond_a

    goto :goto_4

    :cond_a
    const/4 p0, 0x3

    .line 213
    new-array p0, p0, [Ljava/io/File;

    aput-object v3, p0, v1

    const/4 p1, 0x1

    aput-object v4, p0, p1

    const/4 p1, 0x2

    aput-object v5, p0, p1

    return-object p0

    :cond_b
    :goto_4
    return-object p0

    :cond_c
    :goto_5
    const-string p1, "findUpgradeFiles, directory is empty"

    .line 186
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    return-object p0

    :cond_d
    :goto_6
    const-string p1, "findUpgradeFiles, pathList is empty"

    .line 170
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    const-string p0, "default"

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 165
    invoke-virtual {p0, p1}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->onUpgradeProgressChanged(I)V

    return-void
.end method

.method public a([Ljava/lang/String;)Z
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->c([Ljava/lang/String;)[Ljava/io/File;

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

    const-string p0, "default"

    return-object p0
.end method

.method public b([Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v1, p0

    const v0, 0x7fffffff

    .line 47
    iput v0, v1, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->e:I

    const/4 v2, 0x3

    .line 48
    invoke-virtual {v1, v2}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->onUpgradeStateChanged(I)V

    .line 49
    invoke-direct/range {p0 .. p1}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->c([Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v0, :cond_0

    const-string v0, "startUpgrade, not find upgrade file"

    .line 51
    invoke-static {v0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, v4}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->onUpgradeStateChanged(I)V

    return v3

    :cond_0
    const/4 v5, 0x4

    .line 55
    invoke-virtual {v1, v5}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->onUpgradeStateChanged(I)V

    .line 56
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lcom/yftech/service/upgrade/a/a;->a()Lcom/yftech/service/upgrade/a/a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yftech/service/upgrade/a/a;->b()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-static {v0, v5, v1}, Lcom/yftech/service/upgrade/g/a;->a([Ljava/io/File;Ljava/io/File;Lcom/yftech/service/upgrade/g/a$a;)Z

    move-result v0

    const/4 v6, 0x1

    if-nez v0, :cond_1

    const-string v0, "startUpgrade, copy failed"

    .line 58
    invoke-static {v0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, v4}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->onUpgradeStateChanged(I)V

    .line 60
    new-instance v0, Ljava/io/File;

    const-string v7, "mcuupgrade.bin"

    invoke-direct {v0, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    new-instance v7, Ljava/io/File;

    const-string v8, "mcuupgrade.md5"

    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 62
    new-instance v8, Ljava/io/File;

    const-string v9, "mcuversion.txt"

    invoke-direct {v8, v5, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    new-array v2, v2, [Ljava/io/File;

    aput-object v0, v2, v3

    aput-object v7, v2, v6

    aput-object v8, v2, v4

    invoke-direct {v1, v2}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->a([Ljava/io/File;)V

    return v3

    :cond_1
    const/4 v0, 0x5

    .line 66
    invoke-virtual {v1, v0}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->onUpgradeStateChanged(I)V

    .line 67
    invoke-virtual {v1, v3}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->onUpgradeProgressChanged(I)V

    .line 68
    new-instance v7, Ljava/io/File;

    const-string v0, "mcuupgrade.bin"

    invoke-direct {v7, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    new-instance v8, Ljava/io/File;

    const-string v0, "mcuupgrade.md5"

    invoke-direct {v8, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    new-instance v9, Ljava/io/File;

    const-string v0, "mcuversion.txt"

    invoke-direct {v9, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 71
    invoke-static {v7, v8}, Lcom/yftech/service/upgrade/g/c;->a(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "startUpgrade, md5 not equals"

    .line 73
    invoke-static {v0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, v4}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->onUpgradeStateChanged(I)V

    .line 75
    new-array v0, v2, [Ljava/io/File;

    aput-object v7, v0, v3

    aput-object v8, v0, v6

    aput-object v9, v0, v4

    invoke-direct {v1, v0}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->a([Ljava/io/File;)V

    return v3

    :cond_2
    const/4 v5, 0x6

    .line 78
    invoke-virtual {v1, v5}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->onUpgradeStateChanged(I)V

    .line 79
    invoke-virtual {v1, v3}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->onUpgradeProgressChanged(I)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/2addr v5, v4

    new-array v5, v5, [B

    move v10, v3

    move v11, v10

    .line 81
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v10, v12, :cond_8

    .line 83
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x5a

    const/16 v14, 0x7a

    const/16 v15, 0x41

    const/16 v3, 0x61

    if-lt v12, v3, :cond_3

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-gt v12, v14, :cond_3

    .line 84
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sub-int/2addr v12, v3

    add-int/lit8 v12, v12, 0xa

    goto :goto_1

    .line 85
    :cond_3
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v15, :cond_4

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-gt v12, v13, :cond_4

    .line 86
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    sub-int/2addr v12, v15

    add-int/lit8 v12, v12, 0xa

    goto :goto_1

    .line 88
    :cond_4
    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/lit8 v12, v12, -0x30

    :goto_1
    add-int/lit8 v2, v10, 0x1

    .line 90
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_7

    shl-int/lit8 v4, v12, 0x4

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-gt v12, v14, :cond_5

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xa

    and-int/lit8 v2, v2, 0xf

    or-int v12, v4, v2

    goto :goto_2

    .line 94
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v15, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v13, :cond_6

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v15

    add-int/lit8 v2, v2, 0xa

    and-int/lit8 v2, v2, 0xf

    or-int v12, v4, v2

    goto :goto_2

    .line 97
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    and-int/lit8 v2, v2, 0xf

    or-int v12, v4, v2

    :cond_7
    :goto_2
    int-to-byte v2, v12

    .line 99
    aput-byte v2, v5, v11

    add-int/lit8 v10, v10, 0x2

    add-int/2addr v11, v6

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    goto/16 :goto_0

    .line 101
    :cond_8
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v5}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->nativeStartUpgrade(Ljava/lang/String;[B)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "startUpgrade, start upgrade mcu failed"

    .line 102
    invoke-static {v0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 103
    invoke-virtual {v1, v2}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->onUpgradeStateChanged(I)V

    const/4 v3, 0x3

    .line 104
    new-array v0, v3, [Ljava/io/File;

    const/4 v3, 0x0

    aput-object v7, v0, v3

    aput-object v8, v0, v6

    aput-object v9, v0, v2

    invoke-direct {v1, v0}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->a([Ljava/io/File;)V

    return v3

    :cond_9
    const/4 v2, 0x2

    .line 111
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 113
    :goto_3
    iget-object v5, v1, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->d:Ljava/lang/Object;

    monitor-enter v5

    .line 114
    :try_start_0
    iget v0, v1, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->e:I

    if-eq v0, v2, :cond_c

    iget v0, v1, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v6, :cond_a

    goto :goto_5

    .line 120
    :cond_a
    :try_start_1
    iget-object v0, v1, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->d:Ljava/lang/Object;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 122
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 124
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v3

    const-wide/32 v12, 0x927c0

    cmp-long v0, v10, v12

    if-lez v0, :cond_b

    const-string v0, "startUpgrade, timeout not finish"

    .line 125
    invoke-static {v0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 126
    invoke-virtual {v1, v2}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->onUpgradeStateChanged(I)V

    .line 127
    monitor-exit v5

    goto :goto_6

    .line 129
    :cond_b
    monitor-exit v5

    const/4 v2, 0x2

    goto :goto_3

    .line 116
    :cond_c
    :goto_5
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    const/4 v2, 0x3

    .line 133
    new-array v0, v2, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object v7, v0, v2

    aput-object v8, v0, v6

    const/4 v2, 0x2

    aput-object v9, v0, v2

    invoke-direct {v1, v0}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->a([Ljava/io/File;)V

    return v6

    :catchall_0
    move-exception v0

    .line 129
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    invoke-super {p0}, Lcom/yftech/service/upgrade/adapter/mcu/a/a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "platform="

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "project="

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lastState="

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->e:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public native nativeStartUpgrade(Ljava/lang/String;[B)Z
.end method

.method public onUpgradeStateChanged(I)V
    .locals 1

    .line 154
    invoke-super {p0, p1}, Lcom/yftech/service/upgrade/adapter/mcu/a/a;->onUpgradeStateChanged(I)V

    .line 155
    iput p1, p0, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->e:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->d:Ljava/lang/Object;

    monitor-enter p1

    .line 158
    :try_start_0
    iget-object p0, p0, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;->d:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 159
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
