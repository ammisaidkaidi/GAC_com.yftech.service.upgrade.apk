.class public Landroidx/core/app/p$d;
.super Landroidx/core/app/p$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2198
    invoke-direct {p0}, Landroidx/core/app/p$o;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/p$f;)V
    .locals 0

    .line 2201
    invoke-direct {p0}, Landroidx/core/app/p$o;-><init>()V

    .line 2202
    invoke-virtual {p0, p1}, Landroidx/core/app/p$d;->a(Landroidx/core/app/p$f;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Landroidx/core/app/p$d;
    .locals 0

    .line 2210
    invoke-static {p1}, Landroidx/core/app/p$f;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/p$d;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Landroidx/core/app/o;)V
    .locals 2
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 2238
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 2239
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    .line 2240
    invoke-interface {p1}, Landroidx/core/app/o;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Landroidx/core/app/p$d;->c:Ljava/lang/CharSequence;

    .line 2241
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    iget-object v0, p0, Landroidx/core/app/p$d;->a:Ljava/lang/CharSequence;

    .line 2242
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    .line 2243
    iget-boolean v0, p0, Landroidx/core/app/p$d;->e:Z

    if-eqz v0, :cond_0

    .line 2244
    iget-object p0, p0, Landroidx/core/app/p$d;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)Landroidx/core/app/p$d;
    .locals 0

    .line 2218
    invoke-static {p1}, Landroidx/core/app/p$f;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/p$d;->d:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    .line 2219
    iput-boolean p1, p0, Landroidx/core/app/p$d;->e:Z

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroidx/core/app/p$d;
    .locals 0

    .line 2228
    invoke-static {p1}, Landroidx/core/app/p$f;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/p$d;->a:Ljava/lang/CharSequence;

    return-object p0
.end method
