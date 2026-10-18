.class public Landroidx/core/app/p$g$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/p$g$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private c:Landroidx/core/app/w;

.field private d:Landroid/app/PendingIntent;

.field private e:Landroid/app/PendingIntent;

.field private f:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 5302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/p$g$a$a;->a:Ljava/util/List;

    .line 5303
    iput-object p1, p0, Landroidx/core/app/p$g$a$a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(J)Landroidx/core/app/p$g$a$a;
    .locals 0

    .line 5362
    iput-wide p1, p0, Landroidx/core/app/p$g$a$a;->f:J

    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Landroidx/core/app/p$g$a$a;
    .locals 0

    .line 5346
    iput-object p1, p0, Landroidx/core/app/p$g$a$a;->d:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;Landroidx/core/app/w;)Landroidx/core/app/p$g$a$a;
    .locals 0

    .line 5332
    iput-object p2, p0, Landroidx/core/app/p$g$a$a;->c:Landroidx/core/app/w;

    .line 5333
    iput-object p1, p0, Landroidx/core/app/p$g$a$a;->e:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroidx/core/app/p$g$a$a;
    .locals 1

    .line 5315
    iget-object v0, p0, Landroidx/core/app/p$g$a$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a()Landroidx/core/app/p$g$a;
    .locals 9

    .line 5372
    iget-object v0, p0, Landroidx/core/app/p$g$a$a;->a:Ljava/util/List;

    iget-object v1, p0, Landroidx/core/app/p$g$a$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, [Ljava/lang/String;

    const/4 v0, 0x1

    .line 5373
    new-array v6, v0, [Ljava/lang/String;

    iget-object v0, p0, Landroidx/core/app/p$g$a$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v6, v1

    .line 5374
    new-instance v0, Landroidx/core/app/p$g$a;

    iget-object v3, p0, Landroidx/core/app/p$g$a$a;->c:Landroidx/core/app/w;

    iget-object v4, p0, Landroidx/core/app/p$g$a$a;->e:Landroid/app/PendingIntent;

    iget-object v5, p0, Landroidx/core/app/p$g$a$a;->d:Landroid/app/PendingIntent;

    iget-wide v7, p0, Landroidx/core/app/p$g$a$a;->f:J

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroidx/core/app/p$g$a;-><init>([Ljava/lang/String;Landroidx/core/app/w;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V

    return-object v0
.end method
