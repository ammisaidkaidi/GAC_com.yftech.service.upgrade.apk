.class public Landroidx/core/app/p$g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/p$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/p$g$a$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Landroidx/core/app/w;

.field private final c:Landroid/app/PendingIntent;

.field private final d:Landroid/app/PendingIntent;

.field private final e:[Ljava/lang/String;

.field private final f:J


# direct methods
.method constructor <init>([Ljava/lang/String;Landroidx/core/app/w;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)V
    .locals 0

    .line 5225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5226
    iput-object p1, p0, Landroidx/core/app/p$g$a;->a:[Ljava/lang/String;

    .line 5227
    iput-object p2, p0, Landroidx/core/app/p$g$a;->b:Landroidx/core/app/w;

    .line 5228
    iput-object p4, p0, Landroidx/core/app/p$g$a;->d:Landroid/app/PendingIntent;

    .line 5229
    iput-object p3, p0, Landroidx/core/app/p$g$a;->c:Landroid/app/PendingIntent;

    .line 5230
    iput-object p5, p0, Landroidx/core/app/p$g$a;->e:[Ljava/lang/String;

    .line 5231
    iput-wide p6, p0, Landroidx/core/app/p$g$a;->f:J

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 0

    .line 5238
    iget-object p0, p0, Landroidx/core/app/p$g$a;->a:[Ljava/lang/String;

    return-object p0
.end method

.method public b()Landroidx/core/app/w;
    .locals 0

    .line 5246
    iget-object p0, p0, Landroidx/core/app/p$g$a;->b:Landroidx/core/app/w;

    return-object p0
.end method

.method public c()Landroid/app/PendingIntent;
    .locals 0

    .line 5254
    iget-object p0, p0, Landroidx/core/app/p$g$a;->c:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public d()Landroid/app/PendingIntent;
    .locals 0

    .line 5262
    iget-object p0, p0, Landroidx/core/app/p$g$a;->d:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public e()[Ljava/lang/String;
    .locals 0

    .line 5269
    iget-object p0, p0, Landroidx/core/app/p$g$a;->e:[Ljava/lang/String;

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 5276
    iget-object v0, p0, Landroidx/core/app/p$g$a;->e:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object p0, p0, Landroidx/core/app/p$g$a;->e:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public g()J
    .locals 2

    .line 5283
    iget-wide v0, p0, Landroidx/core/app/p$g$a;->f:J

    return-wide v0
.end method
