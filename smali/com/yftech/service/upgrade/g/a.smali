.class public Lcom/yftech/service/upgrade/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/service/upgrade/g/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yftech/service/upgrade/g/a$a;

.field private b:J

.field private c:J

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/yftech/service/upgrade/g/a$a;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yftech/service/upgrade/g/a;->a:Lcom/yftech/service/upgrade/g/a$a;

    return-void
.end method

.method private a(Ljava/io/File;)I
    .locals 5

    .line 25
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 30
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 31
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v3, p1, v1

    .line 32
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 33
    invoke-direct {p0, v3}, Lcom/yftech/service/upgrade/g/a;->a(Ljava/io/File;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private a(Ljava/io/File;Ljava/io/File;)Z
    .locals 11

    .line 44
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_d

    .line 48
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 49
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 53
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    const/4 v0, 0x1

    const/high16 v3, 0x100000

    .line 60
    new-array v3, v3, [B

    const/4 v4, 0x0

    .line 64
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 65
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    :cond_3
    :goto_0
    :try_start_2
    invoke-virtual {v5, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_5

    .line 68
    invoke-virtual {v6, v3, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 69
    iget-boolean v7, p0, Lcom/yftech/service/upgrade/g/a;->d:Z

    if-eqz v7, :cond_3

    .line 70
    iget-wide v7, p0, Lcom/yftech/service/upgrade/g/a;->c:J

    int-to-long v9, v4

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/yftech/service/upgrade/g/a;->c:J

    .line 71
    iget-object v4, p0, Lcom/yftech/service/upgrade/g/a;->a:Lcom/yftech/service/upgrade/g/a$a;

    if-eqz v4, :cond_3

    .line 72
    iget-wide v7, p0, Lcom/yftech/service/upgrade/g/a;->c:J

    iget-wide v9, p0, Lcom/yftech/service/upgrade/g/a;->b:J

    cmp-long v4, v7, v9

    if-ltz v4, :cond_4

    .line 73
    iget-object v4, p0, Lcom/yftech/service/upgrade/g/a;->a:Lcom/yftech/service/upgrade/g/a$a;

    const/16 v7, 0x64

    invoke-interface {v4, v7}, Lcom/yftech/service/upgrade/g/a$a;->a(I)V

    goto :goto_0

    .line 76
    :cond_4
    iget-object v4, p0, Lcom/yftech/service/upgrade/g/a;->a:Lcom/yftech/service/upgrade/g/a$a;

    iget-wide v7, p0, Lcom/yftech/service/upgrade/g/a;->c:J

    const-wide/16 v9, 0x64

    mul-long/2addr v7, v9

    iget-wide v9, p0, Lcom/yftech/service/upgrade/g/a;->b:J

    div-long/2addr v7, v9

    long-to-int v7, v7

    invoke-interface {v4, v7}, Lcom/yftech/service/upgrade/g/a$a;->a(I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 90
    :cond_5
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    :goto_1
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    move v1, v0

    goto :goto_9

    :catchall_0
    move-exception p0

    goto/16 :goto_a

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_4

    :catchall_1
    move-exception p0

    move-object v6, v4

    goto :goto_a

    :catch_4
    move-exception p0

    move-object v6, v4

    :goto_3
    move-object v4, v5

    goto :goto_5

    :catch_5
    move-exception p0

    move-object v6, v4

    :goto_4
    move-object v4, v5

    goto :goto_7

    :catchall_2
    move-exception p0

    move-object v5, v4

    move-object v6, v5

    goto :goto_a

    :catch_6
    move-exception p0

    move-object v6, v4

    .line 85
    :goto_5
    :try_start_5
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v4, :cond_6

    .line 90
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_6

    :catch_7
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_6
    if-eqz v6, :cond_8

    .line 97
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_9

    :catch_8
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catch_9
    move-exception p0

    move-object v6, v4

    .line 82
    :goto_7
    :try_start_8
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v4, :cond_7

    .line 90
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_a

    goto :goto_8

    :catch_a
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_8
    if-eqz v6, :cond_8

    .line 97
    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :cond_8
    :goto_9
    if-eqz v1, :cond_9

    .line 105
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/io/File;->setReadable(Z)Z

    .line 106
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/io/File;->setWritable(Z)Z

    .line 107
    invoke-virtual {p2}, Ljava/io/File;->canExecute()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/io/File;->setExecutable(Z)Z

    :cond_9
    return v1

    :catchall_3
    move-exception p0

    move-object v5, v4

    :goto_a
    if-eqz v5, :cond_a

    .line 90
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_b
    if-eqz v6, :cond_b

    .line 97
    :try_start_c
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 102
    :cond_b
    :goto_c
    throw p0

    :cond_c
    :goto_d
    return v1
.end method

.method public static a(Ljava/io/File;Ljava/io/File;Lcom/yftech/service/upgrade/g/a$a;)Z
    .locals 1

    .line 235
    new-instance v0, Lcom/yftech/service/upgrade/g/a;

    invoke-direct {v0, p2}, Lcom/yftech/service/upgrade/g/a;-><init>(Lcom/yftech/service/upgrade/g/a$a;)V

    .line 236
    invoke-direct {v0, p0, p1}, Lcom/yftech/service/upgrade/g/a;->c(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private a([Ljava/io/File;Ljava/io/File;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    if-eqz p2, :cond_a

    .line 192
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    .line 196
    :cond_0
    array-length v1, p1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 200
    :cond_1
    array-length v1, p1

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, p1, v3

    if-nez v4, :cond_2

    goto :goto_1

    .line 204
    :cond_2
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    return v0

    .line 207
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_4

    return v0

    .line 210
    :cond_4
    iget-wide v5, p0, Lcom/yftech/service/upgrade/g/a;->b:J

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/yftech/service/upgrade/g/a;->b:J

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 213
    :cond_5
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    .line 214
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_6

    return v0

    :cond_6
    const-wide/16 v3, 0x0

    .line 219
    iput-wide v3, p0, Lcom/yftech/service/upgrade/g/a;->c:J

    .line 220
    iput-boolean v2, p0, Lcom/yftech/service/upgrade/g/a;->d:Z

    .line 222
    array-length v1, p1

    move v3, v0

    :goto_2
    if-ge v3, v1, :cond_9

    aget-object v4, p1, v3

    if-nez v4, :cond_7

    goto :goto_3

    .line 226
    :cond_7
    invoke-direct {p0, v4, p2}, Lcom/yftech/service/upgrade/g/a;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_8

    return v0

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    return v2

    :cond_a
    :goto_4
    return v0
.end method

.method public static a([Ljava/io/File;Ljava/io/File;Lcom/yftech/service/upgrade/g/a$a;)Z
    .locals 1

    .line 240
    new-instance v0, Lcom/yftech/service/upgrade/g/a;

    invoke-direct {v0, p2}, Lcom/yftech/service/upgrade/g/a;-><init>(Lcom/yftech/service/upgrade/g/a$a;)V

    .line 241
    invoke-direct {v0, p0, p1}, Lcom/yftech/service/upgrade/g/a;->a([Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private b(Ljava/io/File;Ljava/io/File;)Z
    .locals 9

    .line 113
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 117
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 122
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 123
    new-instance v2, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 125
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result p2

    if-nez p2, :cond_2

    return v1

    .line 129
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result p2

    if-nez p2, :cond_3

    return v1

    .line 132
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p2

    invoke-virtual {v2, p2}, Ljava/io/File;->setReadable(Z)Z

    .line 133
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p2

    invoke-virtual {v2, p2}, Ljava/io/File;->setWritable(Z)Z

    .line 134
    invoke-virtual {p1}, Ljava/io/File;->canExecute()Z

    move-result p2

    invoke-virtual {v2, p2}, Ljava/io/File;->setExecutable(Z)Z

    .line 136
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p1, :cond_4

    return p2

    .line 141
    :cond_4
    array-length v0, p1

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_9

    aget-object v4, p1, v3

    .line 142
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 143
    invoke-direct {p0, v4, v2}, Lcom/yftech/service/upgrade/g/a;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_8

    return v1

    .line 148
    :cond_5
    invoke-direct {p0, v4, v2}, Lcom/yftech/service/upgrade/g/a;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_6

    return v1

    .line 151
    :cond_6
    iget-boolean v4, p0, Lcom/yftech/service/upgrade/g/a;->d:Z

    if-nez v4, :cond_8

    .line 152
    iget-wide v4, p0, Lcom/yftech/service/upgrade/g/a;->c:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/yftech/service/upgrade/g/a;->c:J

    .line 153
    iget-object v4, p0, Lcom/yftech/service/upgrade/g/a;->a:Lcom/yftech/service/upgrade/g/a$a;

    if-eqz v4, :cond_8

    .line 154
    iget-wide v4, p0, Lcom/yftech/service/upgrade/g/a;->c:J

    iget-wide v6, p0, Lcom/yftech/service/upgrade/g/a;->b:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_7

    .line 155
    iget-object v4, p0, Lcom/yftech/service/upgrade/g/a;->a:Lcom/yftech/service/upgrade/g/a$a;

    const/16 v5, 0x64

    invoke-interface {v4, v5}, Lcom/yftech/service/upgrade/g/a$a;->a(I)V

    goto :goto_1

    .line 158
    :cond_7
    iget-object v4, p0, Lcom/yftech/service/upgrade/g/a;->a:Lcom/yftech/service/upgrade/g/a$a;

    iget-wide v5, p0, Lcom/yftech/service/upgrade/g/a;->c:J

    const-wide/16 v7, 0x64

    mul-long/2addr v5, v7

    iget-wide v7, p0, Lcom/yftech/service/upgrade/g/a;->b:J

    div-long/2addr v5, v7

    long-to-int v5, v5

    invoke-interface {v4, v5}, Lcom/yftech/service/upgrade/g/a$a;->a(I)V

    :cond_8
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_9
    return p2

    :cond_a
    :goto_2
    return v1
.end method

.method private c(Ljava/io/File;Ljava/io/File;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 169
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    .line 174
    iput-boolean v0, p0, Lcom/yftech/service/upgrade/g/a;->d:Z

    .line 175
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/g/a;->a(Ljava/io/File;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/yftech/service/upgrade/g/a;->b:J

    .line 176
    iput-wide v2, p0, Lcom/yftech/service/upgrade/g/a;->c:J

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/yftech/service/upgrade/g/a;->b(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 178
    iget-wide v0, p0, Lcom/yftech/service/upgrade/g/a;->b:J

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/yftech/service/upgrade/g/a;->a:Lcom/yftech/service/upgrade/g/a$a;

    if-eqz p2, :cond_1

    .line 179
    iget-object p0, p0, Lcom/yftech/service/upgrade/g/a;->a:Lcom/yftech/service/upgrade/g/a$a;

    const/16 p2, 0x64

    invoke-interface {p0, p2}, Lcom/yftech/service/upgrade/g/a$a;->a(I)V

    :cond_1
    return p1

    :cond_2
    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/yftech/service/upgrade/g/a;->d:Z

    .line 185
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/service/upgrade/g/a;->b:J

    .line 186
    iput-wide v2, p0, Lcom/yftech/service/upgrade/g/a;->c:J

    .line 187
    invoke-direct {p0, p1, p2}, Lcom/yftech/service/upgrade/g/a;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method
