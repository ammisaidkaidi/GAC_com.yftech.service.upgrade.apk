.class public final Landroidx/core/app/p$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/p$e$a;
    }
.end annotation


# static fields
.field private static final g:I = 0x1

.field private static final h:I = 0x2


# instance fields
.field private a:Landroid/app/PendingIntent;

.field private b:Landroid/app/PendingIntent;

.field private c:Landroidx/core/graphics/drawable/IconCompat;

.field private d:I

.field private e:I
    .annotation build Landroidx/annotation/o;
    .end annotation
.end field

.field private f:I


# direct methods
.method private constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;III)V
    .locals 0
    .param p5    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 5430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5431
    iput-object p1, p0, Landroidx/core/app/p$e;->a:Landroid/app/PendingIntent;

    .line 5432
    iput-object p3, p0, Landroidx/core/app/p$e;->c:Landroidx/core/graphics/drawable/IconCompat;

    .line 5433
    iput p4, p0, Landroidx/core/app/p$e;->d:I

    .line 5434
    iput p5, p0, Landroidx/core/app/p$e;->e:I

    .line 5435
    iput-object p2, p0, Landroidx/core/app/p$e;->b:Landroid/app/PendingIntent;

    .line 5436
    iput p6, p0, Landroidx/core/app/p$e;->f:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILandroidx/core/app/p$1;)V
    .locals 0

    .line 5396
    invoke-direct/range {p0 .. p6}, Landroidx/core/app/p$e;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;III)V

    return-void
.end method

.method public static a(Landroidx/core/app/p$e;)Landroid/app/Notification$BubbleMetadata;
    .locals 2
    .param p0    # Landroidx/core/app/p$e;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation build Landroidx/annotation/am;
        a = 0x1d
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5516
    :cond_0
    new-instance v0, Landroid/app/Notification$BubbleMetadata$Builder;

    invoke-direct {v0}, Landroid/app/Notification$BubbleMetadata$Builder;-><init>()V

    .line 5518
    invoke-virtual {p0}, Landroidx/core/app/p$e;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 5519
    invoke-virtual {p0}, Landroidx/core/app/p$e;->b()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 5520
    invoke-virtual {p0}, Landroidx/core/app/p$e;->c()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->f()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 5521
    invoke-virtual {p0}, Landroidx/core/app/p$e;->a()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 5523
    invoke-virtual {p0}, Landroidx/core/app/p$e;->g()Z

    move-result v1

    .line 5522
    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setSuppressNotification(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 5525
    invoke-virtual {p0}, Landroidx/core/app/p$e;->d()I

    move-result v1

    if-eqz v1, :cond_1

    .line 5526
    invoke-virtual {p0}, Landroidx/core/app/p$e;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeight(I)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 5529
    :cond_1
    invoke-virtual {p0}, Landroidx/core/app/p$e;->e()I

    move-result v1

    if-eqz v1, :cond_2

    .line 5531
    invoke-virtual {p0}, Landroidx/core/app/p$e;->e()I

    move-result p0

    .line 5530
    invoke-virtual {v0, p0}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeightResId(I)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 5534
    :cond_2
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata$Builder;->build()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/p$e;
    .locals 2
    .param p0    # Landroid/app/Notification$BubbleMetadata;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation build Landroidx/annotation/am;
        a = 0x1d
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5552
    :cond_0
    new-instance v0, Landroidx/core/app/p$e$a;

    invoke-direct {v0}, Landroidx/core/app/p$e$a;-><init>()V

    .line 5553
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getAutoExpandBubble()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/p$e$a;->a(Z)Landroidx/core/app/p$e$a;

    move-result-object v0

    .line 5554
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDeleteIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/p$e$a;->b(Landroid/app/PendingIntent;)Landroidx/core/app/p$e$a;

    move-result-object v0

    .line 5555
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/p$e$a;->a(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/p$e$a;

    move-result-object v0

    .line 5556
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/p$e$a;->a(Landroid/app/PendingIntent;)Landroidx/core/app/p$e$a;

    move-result-object v0

    .line 5558
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result v1

    .line 5557
    invoke-virtual {v0, v1}, Landroidx/core/app/p$e$a;->b(Z)Landroidx/core/app/p$e$a;

    move-result-object v0

    .line 5560
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    if-eqz v1, :cond_1

    .line 5561
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/p$e$a;->a(I)Landroidx/core/app/p$e$a;

    .line 5564
    :cond_1
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result v1

    if-eqz v1, :cond_2

    .line 5565
    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->getDesiredHeightResId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/p$e$a;->b(I)Landroidx/core/app/p$e$a;

    .line 5568
    :cond_2
    invoke-virtual {v0}, Landroidx/core/app/p$e$a;->a()Landroidx/core/app/p$e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Landroid/app/PendingIntent;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 5444
    iget-object p0, p0, Landroidx/core/app/p$e;->a:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public b()Landroid/app/PendingIntent;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 5452
    iget-object p0, p0, Landroidx/core/app/p$e;->b:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public c()Landroidx/core/graphics/drawable/IconCompat;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 5460
    iget-object p0, p0, Landroidx/core/app/p$e;->c:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public d()I
    .locals 0
    .annotation build Landroidx/annotation/p;
        a = 0x0
    .end annotation

    .line 5470
    iget p0, p0, Landroidx/core/app/p$e;->d:I

    return p0
.end method

.method public e()I
    .locals 0
    .annotation build Landroidx/annotation/o;
    .end annotation

    .line 5480
    iget p0, p0, Landroidx/core/app/p$e;->e:I

    return p0
.end method

.method public f()Z
    .locals 1

    .line 5489
    iget p0, p0, Landroidx/core/app/p$e;->f:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 0

    .line 5498
    iget p0, p0, Landroidx/core/app/p$e;->f:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
