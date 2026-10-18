.class public Lcom/yftech/service/upgrade/adapter/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/yftech/service/upgrade/adapter/a;


# instance fields
.field private final b:Lcom/yftech/car/utils/PlatformProjectDescribe$Project;

.field private c:Lcom/yftech/service/upgrade/adapter/IMCUAdapter;

.field private d:Lcom/yftech/service/upgrade/adapter/IScreenAdapter;

.field private e:Lcom/yftech/service/upgrade/adapter/IDspAdapter;

.field private f:Lcom/yftech/service/upgrade/adapter/c;

.field private g:Lcom/yftech/service/upgrade/adapter/IScreenMcuAdapter;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/yftech/car/utils/PlatformProjectDescribe;->getProject()Lcom/yftech/car/utils/PlatformProjectDescribe$Project;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/service/upgrade/adapter/a;->b:Lcom/yftech/car/utils/PlatformProjectDescribe$Project;

    .line 33
    sget-object v0, Lcom/yftech/service/upgrade/adapter/a$1;->a:[I

    iget-object v1, p0, Lcom/yftech/service/upgrade/adapter/a;->b:Lcom/yftech/car/utils/PlatformProjectDescribe$Project;

    invoke-virtual {v1}, Lcom/yftech/car/utils/PlatformProjectDescribe$Project;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 46
    invoke-static {}, Lcom/yftech/service/upgrade/a/a;->a()Lcom/yftech/service/upgrade/a/a;

    move-result-object v0

    const-string v1, "default_8015.properties"

    invoke-virtual {v0, p1, v1}, Lcom/yftech/service/upgrade/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :pswitch_0
    invoke-static {}, Lcom/yftech/service/upgrade/a/a;->a()Lcom/yftech/service/upgrade/a/a;

    move-result-object v0

    const-string v1, "default_8015.properties"

    invoke-virtual {v0, p1, v1}, Lcom/yftech/service/upgrade/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    new-instance v0, Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterCar1105;

    invoke-direct {v0}, Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterCar1105;-><init>()V

    iput-object v0, p0, Lcom/yftech/service/upgrade/adapter/a;->d:Lcom/yftech/service/upgrade/adapter/IScreenAdapter;

    goto :goto_0

    .line 37
    :pswitch_1
    invoke-static {}, Lcom/yftech/service/upgrade/a/a;->a()Lcom/yftech/service/upgrade/a/a;

    move-result-object v0

    const-string v1, "default_8015.properties"

    invoke-virtual {v0, p1, v1}, Lcom/yftech/service/upgrade/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterA58;

    invoke-direct {v0}, Lcom/yftech/service/upgrade/adapter/screen/project/CarScreenAdapterA58;-><init>()V

    iput-object v0, p0, Lcom/yftech/service/upgrade/adapter/a;->d:Lcom/yftech/service/upgrade/adapter/IScreenAdapter;

    .line 39
    new-instance v0, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;

    invoke-direct {v0}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/CarScreenMcuAdapterA58;-><init>()V

    iput-object v0, p0, Lcom/yftech/service/upgrade/adapter/a;->g:Lcom/yftech/service/upgrade/adapter/IScreenMcuAdapter;

    .line 50
    :goto_0
    iget-object v0, p0, Lcom/yftech/service/upgrade/adapter/a;->c:Lcom/yftech/service/upgrade/adapter/IMCUAdapter;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;

    invoke-direct {v0}, Lcom/yftech/service/upgrade/adapter/mcu/project/CarMcuAdapterDefault;-><init>()V

    iput-object v0, p0, Lcom/yftech/service/upgrade/adapter/a;->c:Lcom/yftech/service/upgrade/adapter/IMCUAdapter;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/yftech/service/upgrade/adapter/a;->d:Lcom/yftech/service/upgrade/adapter/IScreenAdapter;

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Lcom/yftech/service/upgrade/adapter/screen/project/a;

    invoke-direct {v0}, Lcom/yftech/service/upgrade/adapter/screen/project/a;-><init>()V

    iput-object v0, p0, Lcom/yftech/service/upgrade/adapter/a;->d:Lcom/yftech/service/upgrade/adapter/IScreenAdapter;

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/yftech/service/upgrade/adapter/a;->e:Lcom/yftech/service/upgrade/adapter/IDspAdapter;

    if-nez v0, :cond_2

    .line 57
    new-instance v0, Lcom/yftech/service/upgrade/adapter/dsp/project/CarDspAdapterDefault;

    invoke-direct {v0}, Lcom/yftech/service/upgrade/adapter/dsp/project/CarDspAdapterDefault;-><init>()V

    iput-object v0, p0, Lcom/yftech/service/upgrade/adapter/a;->e:Lcom/yftech/service/upgrade/adapter/IDspAdapter;

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/yftech/service/upgrade/adapter/a;->f:Lcom/yftech/service/upgrade/adapter/c;

    if-nez v0, :cond_3

    .line 60
    new-instance v0, Lcom/yftech/service/upgrade/adapter/a/b/a;

    invoke-direct {v0, p1}, Lcom/yftech/service/upgrade/adapter/a/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/service/upgrade/adapter/a;->f:Lcom/yftech/service/upgrade/adapter/c;

    .line 62
    :cond_3
    iget-object p1, p0, Lcom/yftech/service/upgrade/adapter/a;->g:Lcom/yftech/service/upgrade/adapter/IScreenMcuAdapter;

    if-nez p1, :cond_4

    .line 63
    new-instance p1, Lcom/yftech/service/upgrade/adapter/screenmcu/project/a;

    invoke-direct {p1}, Lcom/yftech/service/upgrade/adapter/screenmcu/project/a;-><init>()V

    iput-object p1, p0, Lcom/yftech/service/upgrade/adapter/a;->g:Lcom/yftech/service/upgrade/adapter/IScreenMcuAdapter;

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Lcom/yftech/service/upgrade/adapter/a;
    .locals 2

    .line 68
    sget-object v0, Lcom/yftech/service/upgrade/adapter/a;->a:Lcom/yftech/service/upgrade/adapter/a;

    if-nez v0, :cond_0

    .line 69
    const-class v0, Lcom/yftech/service/upgrade/adapter/a;

    monitor-enter v0

    .line 70
    :try_start_0
    new-instance v1, Lcom/yftech/service/upgrade/adapter/a;

    invoke-direct {v1, p0}, Lcom/yftech/service/upgrade/adapter/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/yftech/service/upgrade/adapter/a;->a:Lcom/yftech/service/upgrade/adapter/a;

    .line 71
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 73
    :cond_0
    :goto_0
    sget-object p0, Lcom/yftech/service/upgrade/adapter/a;->a:Lcom/yftech/service/upgrade/adapter/a;

    return-object p0
.end method


# virtual methods
.method public a()Lcom/yftech/service/upgrade/adapter/IMCUAdapter;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/yftech/service/upgrade/adapter/a;->c:Lcom/yftech/service/upgrade/adapter/IMCUAdapter;

    return-object p0
.end method

.method public b()Lcom/yftech/service/upgrade/adapter/IScreenAdapter;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/yftech/service/upgrade/adapter/a;->d:Lcom/yftech/service/upgrade/adapter/IScreenAdapter;

    return-object p0
.end method

.method public c()Lcom/yftech/service/upgrade/adapter/IDspAdapter;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/yftech/service/upgrade/adapter/a;->e:Lcom/yftech/service/upgrade/adapter/IDspAdapter;

    return-object p0
.end method

.method public d()Lcom/yftech/service/upgrade/adapter/c;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/yftech/service/upgrade/adapter/a;->f:Lcom/yftech/service/upgrade/adapter/c;

    return-object p0
.end method

.method public e()Lcom/yftech/service/upgrade/adapter/IScreenMcuAdapter;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/yftech/service/upgrade/adapter/a;->g:Lcom/yftech/service/upgrade/adapter/IScreenMcuAdapter;

    return-object p0
.end method
