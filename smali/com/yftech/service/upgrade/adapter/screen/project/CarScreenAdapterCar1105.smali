.class public Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterCar1105;
.super Lcom/yftech/service/upgrade/adapter/screen/a/b;
.source "SourceFile"

# interfaces
.implements Lcom/yftech/service/upgrade/g/a$a;


# static fields
.field private static final a:Ljava/lang/String; = "all.bin"

.field private static final b:Ljava/lang/String; = "all.md5"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/yftech/service/upgrade/adapter/screen/a/b;-><init>()V

    return-void
.end method

.method private a([Ljava/io/File;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 106
    :cond_0
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_3

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_2

    .line 111
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

.method private native nativeStartUpgrade(Ljava/lang/String;)Z
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterCar1105;->onUpgradeProgressChanged(I)V

    return-void
.end method

.method public a([Ljava/lang/String;)Z
    .locals 5

    const-string p0, "all.bin"

    const-string v0, "all.md5"

    .line 35
    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    .line 36
    invoke-static {p1, p0}, Lcom/yftech/service/upgrade/g/d;->a([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 37
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 38
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "checkUpgradeFile, upgrade file("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") missing"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public b()Ljava/lang/String;
    .locals 0

    .line 30
    sget-object p0, Lcom/yftech/car/utils/PlatformProjectDescribe$Project;->CA1105:Lcom/yftech/car/utils/PlatformProjectDescribe$Project;

    invoke-virtual {p0}, Lcom/yftech/car/utils/PlatformProjectDescribe$Project;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b([Ljava/lang/String;)Z
    .locals 6

    const-string v0, "screen upgrade start"

    .line 48
    invoke-static {v0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    const/4 v0, 0x3

    .line 50
    invoke-virtual {p0, v0}, Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterCar1105;->onUpgradeStateChanged(I)V

    const-string v0, "all.bin"

    const-string v1, "all.md5"

    .line 51
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/yftech/service/upgrade/g/d;->a([Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "all.bin"

    .line 52
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    const-string v1, "all.md5"

    .line 53
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x4

    .line 60
    invoke-virtual {p0, v3}, Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterCar1105;->onUpgradeStateChanged(I)V

    .line 62
    new-instance v3, Ljava/io/File;

    const-string v4, "/sdcard"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    new-array v4, v1, [Ljava/io/File;

    aput-object v0, v4, v2

    const/4 v0, 0x1

    aput-object p1, v4, v0

    invoke-static {v4, v3, p0}, Lcom/yftech/service/upgrade/g/a;->a([Ljava/io/File;Ljava/io/File;Lcom/yftech/service/upgrade/g/a$a;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "startUpgrade, copy upgrade file failed"

    .line 64
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v1}, Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterCar1105;->onUpgradeStateChanged(I)V

    .line 66
    new-instance p1, Ljava/io/File;

    const-string v4, "all.bin"

    invoke-direct {p1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    new-instance v4, Ljava/io/File;

    const-string v5, "all.md5"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    new-array v1, v1, [Ljava/io/File;

    aput-object p1, v1, v2

    aput-object v4, v1, v0

    invoke-direct {p0, v1}, Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterCar1105;->a([Ljava/io/File;)V

    return v2

    :cond_1
    const/4 p1, 0x7

    .line 72
    invoke-virtual {p0, p1}, Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterCar1105;->onUpgradeStateChanged(I)V

    .line 73
    invoke-virtual {p0, v2}, Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterCar1105;->onUpgradeProgressChanged(I)V

    .line 74
    new-instance p1, Ljava/io/File;

    const-string v4, "all.bin"

    invoke-direct {p1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    new-instance v4, Ljava/io/File;

    const-string v5, "all.md5"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    invoke-static {p1, v4}, Lcom/yftech/service/upgrade/g/c;->b(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, "startUpgrade, md5 not equals"

    .line 79
    invoke-static {v3}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0, v1}, Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterCar1105;->onUpgradeStateChanged(I)V

    .line 81
    new-array v1, v1, [Ljava/io/File;

    aput-object p1, v1, v2

    aput-object v4, v1, v0

    invoke-direct {p0, v1}, Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterCar1105;->a([Ljava/io/File;)V

    return v2

    :cond_2
    const-string v3, "all.bin"

    .line 85
    invoke-direct {p0, v3}, Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterCar1105;->nativeStartUpgrade(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "startUpgrade, start upgrade screen failed"

    .line 86
    invoke-static {v3}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v1}, Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterCar1105;->onUpgradeStateChanged(I)V

    .line 88
    new-array v1, v1, [Ljava/io/File;

    aput-object p1, v1, v2

    aput-object v4, v1, v0

    invoke-direct {p0, v1}, Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterCar1105;->a([Ljava/io/File;)V

    return v2

    .line 92
    :cond_3
    invoke-virtual {p0, v0}, Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterCar1105;->onUpgradeStateChanged(I)V

    .line 93
    new-array v1, v1, [Ljava/io/File;

    aput-object p1, v1, v2

    aput-object v4, v1, v0

    invoke-direct {p0, v1}, Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterCar1105;->a([Ljava/io/File;)V

    return v0

    :cond_4
    :goto_0
    const-string p1, "startUpgrade, upgrade file missing"

    .line 55
    invoke-static {p1}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, v1}, Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterCar1105;->onUpgradeStateChanged(I)V

    return v2
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    invoke-super {p0}, Lcom/yftech/service/upgrade/adapter/screen/a/b;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "project="

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterCar1105;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
