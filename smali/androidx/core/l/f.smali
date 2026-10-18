.class public final Landroidx/core/l/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/l/f$f;,
        Landroidx/core/l/f$a;,
        Landroidx/core/l/f$b;,
        Landroidx/core/l/f$c;,
        Landroidx/core/l/f$e;,
        Landroidx/core/l/f$d;
    }
.end annotation


# static fields
.field public static final a:Landroidx/core/l/e;

.field public static final b:Landroidx/core/l/e;

.field public static final c:Landroidx/core/l/e;

.field public static final d:Landroidx/core/l/e;

.field public static final e:Landroidx/core/l/e;

.field public static final f:Landroidx/core/l/e;

.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static final i:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Landroidx/core/l/f$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/core/l/f$e;-><init>(Landroidx/core/l/f$c;Z)V

    sput-object v0, Landroidx/core/l/f;->a:Landroidx/core/l/e;

    .line 39
    new-instance v0, Landroidx/core/l/f$e;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/core/l/f$e;-><init>(Landroidx/core/l/f$c;Z)V

    sput-object v0, Landroidx/core/l/f;->b:Landroidx/core/l/e;

    .line 47
    new-instance v0, Landroidx/core/l/f$e;

    sget-object v1, Landroidx/core/l/f$b;->a:Landroidx/core/l/f$b;

    invoke-direct {v0, v1, v2}, Landroidx/core/l/f$e;-><init>(Landroidx/core/l/f$c;Z)V

    sput-object v0, Landroidx/core/l/f;->c:Landroidx/core/l/e;

    .line 55
    new-instance v0, Landroidx/core/l/f$e;

    sget-object v1, Landroidx/core/l/f$b;->a:Landroidx/core/l/f$b;

    invoke-direct {v0, v1, v3}, Landroidx/core/l/f$e;-><init>(Landroidx/core/l/f$c;Z)V

    sput-object v0, Landroidx/core/l/f;->d:Landroidx/core/l/e;

    .line 62
    new-instance v0, Landroidx/core/l/f$e;

    sget-object v1, Landroidx/core/l/f$a;->a:Landroidx/core/l/f$a;

    invoke-direct {v0, v1, v2}, Landroidx/core/l/f$e;-><init>(Landroidx/core/l/f$c;Z)V

    sput-object v0, Landroidx/core/l/f;->e:Landroidx/core/l/e;

    .line 68
    sget-object v0, Landroidx/core/l/f$f;->a:Landroidx/core/l/f$f;

    sput-object v0, Landroidx/core/l/f;->f:Landroidx/core/l/e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x2

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static b(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x2

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
