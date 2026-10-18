.class Landroidx/recyclerview/widget/ah$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x4

.field static final d:I = 0x8

.field static final e:I = 0x3

.field static final f:I = 0xc

.field static final g:I = 0xe

.field static k:Landroidx/core/m/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/m/h$a<",
            "Landroidx/recyclerview/widget/ah$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field h:I

.field i:Landroidx/recyclerview/widget/RecyclerView$f$d;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field j:Landroidx/recyclerview/widget/RecyclerView$f$d;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 307
    new-instance v0, Landroidx/core/m/h$b;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroidx/core/m/h$b;-><init>(I)V

    sput-object v0, Landroidx/recyclerview/widget/ah$a;->k:Landroidx/core/m/h$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Landroidx/recyclerview/widget/ah$a;
    .locals 1

    .line 313
    sget-object v0, Landroidx/recyclerview/widget/ah$a;->k:Landroidx/core/m/h$a;

    invoke-interface {v0}, Landroidx/core/m/h$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/ah$a;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Landroidx/recyclerview/widget/ah$a;

    invoke-direct {v0}, Landroidx/recyclerview/widget/ah$a;-><init>()V

    :cond_0
    return-object v0
.end method

.method static a(Landroidx/recyclerview/widget/ah$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 318
    iput v0, p0, Landroidx/recyclerview/widget/ah$a;->h:I

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Landroidx/recyclerview/widget/ah$a;->i:Landroidx/recyclerview/widget/RecyclerView$f$d;

    .line 320
    iput-object v0, p0, Landroidx/recyclerview/widget/ah$a;->j:Landroidx/recyclerview/widget/RecyclerView$f$d;

    .line 321
    sget-object v0, Landroidx/recyclerview/widget/ah$a;->k:Landroidx/core/m/h$a;

    invoke-interface {v0, p0}, Landroidx/core/m/h$a;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method static b()V
    .locals 1

    .line 326
    :goto_0
    sget-object v0, Landroidx/recyclerview/widget/ah$a;->k:Landroidx/core/m/h$a;

    invoke-interface {v0}, Landroidx/core/m/h$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method
