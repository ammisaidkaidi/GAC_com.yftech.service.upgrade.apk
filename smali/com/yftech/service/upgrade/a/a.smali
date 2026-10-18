.class public Lcom/yftech/service/upgrade/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static volatile b:Lcom/yftech/service/upgrade/a/a; = null

.field private static c:Ljava/lang/String; = "default.properties"

.field private static final f:Ljava/lang/String; = "store.upgrade.files.path"

.field private static final g:Ljava/lang/String; = "verify.os.certs.file"


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/yftech/service/upgrade/a/a;->e:Ljava/util/Properties;

    return-void
.end method

.method private a(Ljava/lang/String;I)I
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/yftech/service/upgrade/a/a;->e:Ljava/util/Properties;

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_0
    return p2
.end method

.method public static a()Lcom/yftech/service/upgrade/a/a;
    .locals 2

    .line 37
    sget-object v0, Lcom/yftech/service/upgrade/a/a;->b:Lcom/yftech/service/upgrade/a/a;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcom/yftech/service/upgrade/a/a;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/yftech/service/upgrade/a/a;->b:Lcom/yftech/service/upgrade/a/a;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/yftech/service/upgrade/a/a;

    invoke-direct {v1}, Lcom/yftech/service/upgrade/a/a;-><init>()V

    sput-object v1, Lcom/yftech/service/upgrade/a/a;->b:Lcom/yftech/service/upgrade/a/a;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lcom/yftech/service/upgrade/a/a;->b:Lcom/yftech/service/upgrade/a/a;

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/yftech/service/upgrade/a/a;->e:Ljava/util/Properties;

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    .line 65
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 67
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    sget-object v1, Lcom/yftech/service/upgrade/a/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 68
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    invoke-virtual {v0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object p1

    .line 75
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    iget-object v2, p0, Lcom/yftech/service/upgrade/a/a;->e:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/yftech/service/upgrade/a/a;->e:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConfigName name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yftech/service/upgrade/g/b;->c(Ljava/lang/String;)V

    .line 54
    iput-object p2, p0, Lcom/yftech/service/upgrade/a/a;->d:Ljava/lang/String;

    .line 56
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p2

    iget-object v0, p0, Lcom/yftech/service/upgrade/a/a;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    .line 57
    iget-object v0, p0, Lcom/yftech/service/upgrade/a/a;->e:Ljava/util/Properties;

    invoke-virtual {v0, p2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/yftech/service/upgrade/a/a;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 2

    const-string v0, "store.upgrade.files.path"

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, v0, v1}, Lcom/yftech/service/upgrade/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    const-string v0, "verify.os.certs.file"

    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, v0, v1}, Lcom/yftech/service/upgrade/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
