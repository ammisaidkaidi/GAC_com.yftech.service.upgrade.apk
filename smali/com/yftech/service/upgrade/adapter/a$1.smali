.class synthetic Lcom/yftech/service/upgrade/adapter/a$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/service/upgrade/adapter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    invoke-static {}, Lcom/yftech/car/utils/PlatformProjectDescribe$Project;->values()[Lcom/yftech/car/utils/PlatformProjectDescribe$Project;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/yftech/service/upgrade/adapter/a$1;->a:[I

    :try_start_0
    sget-object v0, Lcom/yftech/service/upgrade/adapter/a$1;->a:[I

    sget-object v1, Lcom/yftech/car/utils/PlatformProjectDescribe$Project;->CBIHU12:Lcom/yftech/car/utils/PlatformProjectDescribe$Project;

    invoke-virtual {v1}, Lcom/yftech/car/utils/PlatformProjectDescribe$Project;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/yftech/service/upgrade/adapter/a$1;->a:[I

    sget-object v1, Lcom/yftech/car/utils/PlatformProjectDescribe$Project;->CBIHU12_C1:Lcom/yftech/car/utils/PlatformProjectDescribe$Project;

    invoke-virtual {v1}, Lcom/yftech/car/utils/PlatformProjectDescribe$Project;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/yftech/service/upgrade/adapter/a$1;->a:[I

    sget-object v1, Lcom/yftech/car/utils/PlatformProjectDescribe$Project;->CBIHU23:Lcom/yftech/car/utils/PlatformProjectDescribe$Project;

    invoke-virtual {v1}, Lcom/yftech/car/utils/PlatformProjectDescribe$Project;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/yftech/service/upgrade/adapter/a$1;->a:[I

    sget-object v1, Lcom/yftech/car/utils/PlatformProjectDescribe$Project;->CA1105:Lcom/yftech/car/utils/PlatformProjectDescribe$Project;

    invoke-virtual {v1}, Lcom/yftech/car/utils/PlatformProjectDescribe$Project;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
