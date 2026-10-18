.class public Lcom/yftech/service/upgrade/adapter/a/b/a;
.super Lcom/yftech/service/upgrade/adapter/a/a/a;
.source "SourceFile"

# interfaces
.implements Lcom/yftech/service/upgrade/g/a$a;


# static fields
.field private static final a:Ljava/lang/String; = "update.zip"


# instance fields
.field private b:Landroid/content/Context;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/yftech/service/upgrade/adapter/a/a/a;-><init>()V

    const v0, 0x7fffffff

    .line 25
    iput v0, p0, Lcom/yftech/service/upgrade/adapter/a/b/a;->c:I

    .line 26
    iput v0, p0, Lcom/yftech/service/upgrade/adapter/a/b/a;->d:I

    .line 29
    iput-object p1, p0, Lcom/yftech/service/upgrade/adapter/a/b/a;->b:Landroid/content/Context;

    return-void
.end method

.method private a([Ljava/io/File;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 114
    :cond_0
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_3

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 119
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

.method private a(Ljava/io/File;)Z
    .locals 2

    .line 96
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/yftech/service/upgrade/a/a;->a()Lcom/yftech/service/upgrade/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/service/upgrade/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance v1, Lcom/yftech/service/upgrade/adapter/a/b/a$1;

    invoke-direct {v1, p0}, Lcom/yftech/service/upgrade/adapter/a/b/a$1;-><init>(Lcom/yftech/service/upgrade/adapter/a/b/a;)V

    invoke-static {p1, v1, v0}, Landroid/os/RecoverySystem;->verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method private c([Ljava/lang/String;)Ljava/io/File;
    .locals 5

    const/4 p0, 0x0

    if-eqz p1, :cond_8

    .line 142
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_4

    .line 147
    :cond_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "findUpgradeFile, pathList not exists"

    .line 149
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    return-object p0

    .line 152
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "findUpgradeFile, pathList is not directory"

    .line 153
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    return-object p0

    .line 157
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 158
    array-length v0, p1

    if-nez v0, :cond_3

    goto :goto_3

    .line 163
    :cond_3
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_6

    aget-object v2, p1, v1

    .line 164
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v3, "update.zip"

    .line 167
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object p0, v2

    goto :goto_2

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_2
    return-object p0

    :cond_7
    :goto_3
    const-string p1, "findUpgradeFile, directory is empty"

    .line 159
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    return-object p0

    :cond_8
    :goto_4
    const-string p1, "findUpgradeFile, pathList is empty"

    .line 143
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

    .line 138
    invoke-virtual {p0, p1}, Lcom/yftech/service/upgrade/adapter/a/b/a;->b(I)V

    return-void
.end method

.method public a([Ljava/lang/String;)Z
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/adapter/a/b/a;->c([Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a_(I)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Lcom/yftech/service/upgrade/adapter/a/a/a;->a_(I)V

    .line 127
    iput p1, p0, Lcom/yftech/service/upgrade/adapter/a/b/a;->c:I

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    const-string p0, "default"

    return-object p0
.end method

.method public b(I)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Lcom/yftech/service/upgrade/adapter/a/a/a;->b(I)V

    .line 133
    iput p1, p0, Lcom/yftech/service/upgrade/adapter/a/b/a;->d:I

    return-void
.end method

.method public b([Ljava/lang/String;)Z
    .locals 5

    const v0, 0x7fffffff

    .line 49
    iput v0, p0, Lcom/yftech/service/upgrade/adapter/a/b/a;->c:I

    .line 50
    iput v0, p0, Lcom/yftech/service/upgrade/adapter/a/b/a;->d:I

    const/4 v0, 0x3

    .line 52
    invoke-virtual {p0, v0}, Lcom/yftech/service/upgrade/adapter/a/b/a;->a_(I)V

    .line 53
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/adapter/a/b/a;->c([Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, "startUpgrade, not find upgrade file"

    .line 55
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v0}, Lcom/yftech/service/upgrade/adapter/a/b/a;->a_(I)V

    return v1

    :cond_0
    const/4 v2, 0x4

    .line 59
    invoke-virtual {p0, v2}, Lcom/yftech/service/upgrade/adapter/a/b/a;->a_(I)V

    .line 60
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/yftech/service/upgrade/a/a;->a()Lcom/yftech/service/upgrade/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/service/upgrade/a/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-static {p1, v2, p0}, Lcom/yftech/service/upgrade/g/a;->a(Ljava/io/File;Ljava/io/File;Lcom/yftech/service/upgrade/g/a$a;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    const-string v3, "startUpgrade, copy upgrade file failed"

    .line 62
    invoke-static {v3}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/yftech/service/upgrade/adapter/a/b/a;->a_(I)V

    .line 64
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    new-array p1, v4, [Ljava/io/File;

    aput-object v0, p1, v1

    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/adapter/a/b/a;->a([Ljava/io/File;)V

    return v1

    :cond_1
    const/4 v3, 0x5

    .line 69
    invoke-virtual {p0, v3}, Lcom/yftech/service/upgrade/adapter/a/b/a;->a_(I)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/yftech/service/upgrade/adapter/a/b/a;->b(I)V

    .line 71
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0, v3}, Lcom/yftech/service/upgrade/adapter/a/b/a;->a(Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "startUpgrade, verify package failed"

    .line 73
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, v0}, Lcom/yftech/service/upgrade/adapter/a/b/a;->a_(I)V

    .line 75
    new-array p1, v4, [Ljava/io/File;

    aput-object v3, p1, v1

    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/adapter/a/b/a;->a([Ljava/io/File;)V

    return v1

    :cond_2
    const/4 p1, 0x6

    .line 79
    invoke-virtual {p0, p1}, Lcom/yftech/service/upgrade/adapter/a/b/a;->a_(I)V

    .line 80
    invoke-virtual {p0, v1}, Lcom/yftech/service/upgrade/adapter/a/b/a;->b(I)V

    .line 83
    :try_start_0
    iget-object p1, p0, Lcom/yftech/service/upgrade/adapter/a/b/a;->b:Landroid/content/Context;

    invoke-static {p1, v3}, Landroid/os/RecoverySystem;->installPackage(Landroid/content/Context;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    invoke-virtual {p0, v0}, Lcom/yftech/service/upgrade/adapter/a/b/a;->a_(I)V

    .line 87
    new-array p1, v4, [Ljava/io/File;

    aput-object v3, p1, v1

    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/adapter/a/b/a;->a([Ljava/io/File;)V

    return v1
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    invoke-super {p0}, Lcom/yftech/service/upgrade/adapter/a/a/a;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 181
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "platform="

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/service/upgrade/adapter/a/b/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "project="

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/service/upgrade/adapter/a/b/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lastState="

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/yftech/service/upgrade/adapter/a/b/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "lastProgress="

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/service/upgrade/adapter/a/b/a;->d:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
