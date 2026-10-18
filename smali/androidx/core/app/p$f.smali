.class public Landroidx/core/app/p$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# static fields
.field private static final T:I = 0x1400


# instance fields
.field A:Z

.field B:Ljava/lang/String;

.field C:Landroid/os/Bundle;

.field D:I

.field E:I

.field F:Landroid/app/Notification;

.field G:Landroid/widget/RemoteViews;

.field H:Landroid/widget/RemoteViews;

.field I:Landroid/widget/RemoteViews;

.field J:Ljava/lang/String;

.field K:I

.field L:Ljava/lang/String;

.field M:J

.field N:I

.field O:Z

.field P:Landroidx/core/app/p$e;

.field Q:Landroid/app/Notification;

.field R:Z

.field public S:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public a:Landroid/content/Context;
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation
.end field

.field public b:Ljava/util/ArrayList;
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/p$a;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/p$a;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/CharSequence;

.field e:Ljava/lang/CharSequence;

.field f:Landroid/app/PendingIntent;

.field g:Landroid/app/PendingIntent;

.field h:Landroid/widget/RemoteViews;

.field i:Landroid/graphics/Bitmap;

.field j:Ljava/lang/CharSequence;

.field k:I

.field l:I

.field m:Z

.field n:Z

.field o:Z

.field p:Landroidx/core/app/p$o;

.field q:Ljava/lang/CharSequence;

.field r:[Ljava/lang/CharSequence;

.field s:I

.field t:I

.field u:Z

.field v:Ljava/lang/String;

.field w:Z

.field x:Ljava/lang/String;

.field y:Z

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 791
    invoke-direct {p0, p1, v0}, Landroidx/core/app/p$f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/p$f;->b:Ljava/util/ArrayList;

    .line 709
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/p$f;->c:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 720
    iput-boolean v0, p0, Landroidx/core/app/p$f;->m:Z

    const/4 v1, 0x0

    .line 732
    iput-boolean v1, p0, Landroidx/core/app/p$f;->y:Z

    .line 737
    iput v1, p0, Landroidx/core/app/p$f;->D:I

    .line 738
    iput v1, p0, Landroidx/core/app/p$f;->E:I

    .line 744
    iput v1, p0, Landroidx/core/app/p$f;->K:I

    .line 747
    iput v1, p0, Landroidx/core/app/p$f;->N:I

    .line 750
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    .line 774
    iput-object p1, p0, Landroidx/core/app/p$f;->a:Landroid/content/Context;

    .line 775
    iput-object p2, p0, Landroidx/core/app/p$f;->J:Ljava/lang/String;

    .line 778
    iget-object p1, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Landroid/app/Notification;->when:J

    .line 779
    iget-object p1, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    const/4 p2, -0x1

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 780
    iput v1, p0, Landroidx/core/app/p$f;->l:I

    .line 781
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/app/p$f;->S:Ljava/util/ArrayList;

    .line 782
    iput-boolean v0, p0, Landroidx/core/app/p$f;->O:Z

    return-void
.end method

.method private a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1251
    iget-object p0, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iget p2, p0, Landroid/app/Notification;->flags:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 1253
    :cond_0
    iget-object p0, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iget p2, p0, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/app/Notification;->flags:I

    :goto_0
    return-void
.end method

.method private b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    if-eqz p1, :cond_2

    .line 1051
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 1055
    :cond_0
    iget-object p0, p0, Landroidx/core/app/p$f;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1056
    sget v0, Landroidx/core/a$c;->compat_notification_large_icon_max_width:I

    .line 1057
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1058
    sget v1, Landroidx/core/a$c;->compat_notification_large_icon_max_height:I

    .line 1059
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 1060
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-gt v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v1, p0, :cond_1

    return-object p1

    :cond_1
    int-to-double v0, v0

    .line 1065
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-double v4, v2

    div-double/2addr v0, v4

    int-to-double v4, p0

    .line 1066
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-double v6, p0

    div-double/2addr v4, v6

    .line 1064
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 1069
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-double v4, p0

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p0, v4

    .line 1070
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-double v4, v2

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 1067
    invoke-static {p1, p0, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method protected static f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    .line 1682
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    .line 1683
    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public a()Landroidx/core/app/p$f;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x1

    .line 876
    iput-boolean v0, p0, Landroidx/core/app/p$f;->R:Z

    return-object p0
.end method

.method public a(I)Landroidx/core/app/p$f;
    .locals 1

    .line 851
    iget-object v0, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public a(II)Landroidx/core/app/p$f;
    .locals 1

    .line 866
    iget-object v0, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 867
    iget-object p1, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iput p2, p1, Landroid/app/Notification;->iconLevel:I

    return-object p0
.end method

.method public a(III)Landroidx/core/app/p$f;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 1139
    iget-object v0, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 1140
    iget-object p1, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iput p2, p1, Landroid/app/Notification;->ledOnMS:I

    .line 1141
    iget-object p1, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iput p3, p1, Landroid/app/Notification;->ledOffMS:I

    .line 1142
    iget-object p1, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->ledOnMS:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iget p1, p1, Landroid/app/Notification;->ledOffMS:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1143
    :goto_0
    iget-object p2, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iget-object p3, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iget p3, p3, Landroid/app/Notification;->flags:I

    and-int/lit8 p3, p3, -0x2

    or-int/2addr p1, p3

    .line 1144
    iput p1, p2, Landroid/app/Notification;->flags:I

    return-object p0
.end method

.method public a(IIZ)Landroidx/core/app/p$f;
    .locals 0

    .line 952
    iput p1, p0, Landroidx/core/app/p$f;->s:I

    .line 953
    iput p2, p0, Landroidx/core/app/p$f;->t:I

    .line 954
    iput-boolean p3, p0, Landroidx/core/app/p$f;->u:Z

    return-object p0
.end method

.method public a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/p$f;
    .locals 2

    .line 1421
    iget-object v0, p0, Landroidx/core/app/p$f;->b:Ljava/util/ArrayList;

    new-instance v1, Landroidx/core/app/p$a;

    invoke-direct {v1, p1, p2, p3}, Landroidx/core/app/p$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(J)Landroidx/core/app/p$f;
    .locals 1

    .line 799
    iget-object v0, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method

.method public a(Landroid/app/Notification;)Landroidx/core/app/p$f;
    .locals 0

    .line 1524
    iput-object p1, p0, Landroidx/core/app/p$f;->F:Landroid/app/Notification;

    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Landroidx/core/app/p$f;
    .locals 0

    .line 975
    iput-object p1, p0, Landroidx/core/app/p$f;->f:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;Z)Landroidx/core/app/p$f;
    .locals 0

    .line 1011
    iput-object p1, p0, Landroidx/core/app/p$f;->g:Landroid/app/PendingIntent;

    const/16 p1, 0x80

    .line 1012
    invoke-direct {p0, p1, p2}, Landroidx/core/app/p$f;->a(IZ)V

    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Landroidx/core/app/p$f;
    .locals 0

    .line 1042
    invoke-direct {p0, p1}, Landroidx/core/app/p$f;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/p$f;->i:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public a(Landroid/net/Uri;)Landroidx/core/app/p$f;
    .locals 2

    .line 1083
    iget-object v0, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1084
    iget-object p1, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    const/4 v0, -0x1

    iput v0, p1, Landroid/app/Notification;->audioStreamType:I

    .line 1085
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 1086
    iget-object p1, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 1087
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 1088
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1089
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_0
    return-object p0
.end method

.method public a(Landroid/net/Uri;I)Landroidx/core/app/p$f;
    .locals 2

    .line 1106
    iget-object v0, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1107
    iget-object p1, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iput p2, p1, Landroid/app/Notification;->audioStreamType:I

    .line 1108
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    .line 1109
    iget-object p1, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    .line 1110
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 1111
    invoke-virtual {v0, p2}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p2

    .line 1112
    invoke-virtual {p2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p2

    iput-object p2, p1, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_0
    return-object p0
.end method

.method public a(Landroid/os/Bundle;)Landroidx/core/app/p$f;
    .locals 1

    if-eqz p1, :cond_1

    .line 1361
    iget-object v0, p0, Landroidx/core/app/p$f;->C:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1362
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroidx/core/app/p$f;->C:Landroid/os/Bundle;

    goto :goto_0

    .line 1364
    :cond_0
    iget-object v0, p0, Landroidx/core/app/p$f;->C:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-object p0
.end method

.method public a(Landroid/widget/RemoteViews;)Landroidx/core/app/p$f;
    .locals 1

    .line 962
    iget-object v0, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public a(Landroidx/core/app/p$a;)Landroidx/core/app/p$f;
    .locals 1

    .line 1440
    iget-object v0, p0, Landroidx/core/app/p$f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Landroidx/core/app/p$e;)Landroidx/core/app/p$f;
    .locals 0
    .param p1    # Landroidx/core/app/p$e;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1641
    iput-object p1, p0, Landroidx/core/app/p$f;->P:Landroidx/core/app/p$e;

    return-object p0
.end method

.method public a(Landroidx/core/app/p$i;)Landroidx/core/app/p$f;
    .locals 0

    .line 1650
    invoke-interface {p1, p0}, Landroidx/core/app/p$i;->a(Landroidx/core/app/p$f;)Landroidx/core/app/p$f;

    return-object p0
.end method

.method public a(Landroidx/core/app/p$o;)Landroidx/core/app/p$f;
    .locals 1

    .line 1482
    iget-object v0, p0, Landroidx/core/app/p$f;->p:Landroidx/core/app/p$o;

    if-eq v0, p1, :cond_0

    .line 1483
    iput-object p1, p0, Landroidx/core/app/p$f;->p:Landroidx/core/app/p$o;

    .line 1484
    iget-object p1, p0, Landroidx/core/app/p$f;->p:Landroidx/core/app/p$o;

    if-eqz p1, :cond_0

    .line 1485
    iget-object p1, p0, Landroidx/core/app/p$f;->p:Landroidx/core/app/p$o;

    invoke-virtual {p1, p0}, Landroidx/core/app/p$o;->a(Landroidx/core/app/p$f;)V

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroidx/core/app/p$f;
    .locals 0

    .line 884
    invoke-static {p1}, Landroidx/core/app/p$f;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/p$f;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroidx/core/app/p$f;
    .locals 1

    .line 1033
    iget-object v0, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    invoke-static {p1}, Landroidx/core/app/p$f;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1034
    iput-object p2, p0, Landroidx/core/app/p$f;->h:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroidx/core/app/p$f;
    .locals 0

    .line 1227
    iput-object p1, p0, Landroidx/core/app/p$f;->B:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Landroidx/core/app/p$f;
    .locals 0

    .line 808
    iput-boolean p1, p0, Landroidx/core/app/p$f;->m:Z

    return-object p0
.end method

.method public a([J)Landroidx/core/app/p$f;
    .locals 1

    .line 1129
    iget-object v0, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method public a([Ljava/lang/CharSequence;)Landroidx/core/app/p$f;
    .locals 0

    .line 925
    iput-object p1, p0, Landroidx/core/app/p$f;->r:[Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .line 1398
    iget-object v0, p0, Landroidx/core/app/p$f;->C:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1399
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/p$f;->C:Landroid/os/Bundle;

    .line 1401
    :cond_0
    iget-object p0, p0, Landroidx/core/app/p$f;->C:Landroid/os/Bundle;

    return-object p0
.end method

.method public b(I)Landroidx/core/app/p$f;
    .locals 0

    .line 935
    iput p1, p0, Landroidx/core/app/p$f;->k:I

    return-object p0
.end method

.method public b(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/p$f;
    .locals 1
    .annotation build Landroidx/annotation/am;
        a = 0x15
    .end annotation

    .line 1456
    new-instance v0, Landroidx/core/app/p$a;

    invoke-direct {v0, p1, p2, p3}, Landroidx/core/app/p$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Landroidx/core/app/p$f;->b(Landroidx/core/app/p$a;)Landroidx/core/app/p$f;

    move-result-object p0

    return-object p0
.end method

.method public b(J)Landroidx/core/app/p$f;
    .locals 0

    .line 1580
    iput-wide p1, p0, Landroidx/core/app/p$f;->M:J

    return-object p0
.end method

.method public b(Landroid/app/PendingIntent;)Landroidx/core/app/p$f;
    .locals 1

    .line 987
    iget-object v0, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public b(Landroid/os/Bundle;)Landroidx/core/app/p$f;
    .locals 0

    .line 1383
    iput-object p1, p0, Landroidx/core/app/p$f;->C:Landroid/os/Bundle;

    return-object p0
.end method

.method public b(Landroid/widget/RemoteViews;)Landroidx/core/app/p$f;
    .locals 0

    .line 1535
    iput-object p1, p0, Landroidx/core/app/p$f;->G:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public b(Landroidx/core/app/p$a;)Landroidx/core/app/p$f;
    .locals 1
    .annotation build Landroidx/annotation/am;
        a = 0x15
    .end annotation

    .line 1469
    iget-object v0, p0, Landroidx/core/app/p$f;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroidx/core/app/p$f;
    .locals 0

    .line 892
    invoke-static {p1}, Landroidx/core/app/p$f;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/p$f;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Landroidx/core/app/p$f;
    .locals 1

    .line 1303
    iget-object v0, p0, Landroidx/core/app/p$f;->S:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Z)Landroidx/core/app/p$f;
    .locals 0

    .line 824
    iput-boolean p1, p0, Landroidx/core/app/p$f;->n:Z

    return-object p0
.end method

.method public c()Landroid/app/Notification;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1669
    invoke-virtual {p0}, Landroidx/core/app/p$f;->d()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public c(I)Landroidx/core/app/p$f;
    .locals 1

    .line 1242
    iget-object v0, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    .line 1244
    iget-object p1, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/app/Notification;->flags:I

    :cond_0
    return-object p0
.end method

.method public c(Landroid/widget/RemoteViews;)Landroidx/core/app/p$f;
    .locals 0

    .line 1548
    iput-object p1, p0, Landroidx/core/app/p$f;->H:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroidx/core/app/p$f;
    .locals 0

    .line 906
    invoke-static {p1}, Landroidx/core/app/p$f;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/p$f;->q:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Landroidx/core/app/p$f;
    .locals 0

    .line 1319
    iput-object p1, p0, Landroidx/core/app/p$f;->v:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Landroidx/core/app/p$f;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation build Landroidx/annotation/am;
        a = 0x18
    .end annotation

    .line 838
    iput-boolean p1, p0, Landroidx/core/app/p$f;->o:Z

    .line 839
    iget-object v0, p0, Landroidx/core/app/p$f;->C:Landroid/os/Bundle;

    const-string v1, "android.chronometerCountDown"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public d()Landroid/app/Notification;
    .locals 1

    .line 1677
    new-instance v0, Landroidx/core/app/q;

    invoke-direct {v0, p0}, Landroidx/core/app/q;-><init>(Landroidx/core/app/p$f;)V

    invoke-virtual {v0}, Landroidx/core/app/q;->b()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public d(I)Landroidx/core/app/p$f;
    .locals 0

    .line 1275
    iput p1, p0, Landroidx/core/app/p$f;->l:I

    return-object p0
.end method

.method public d(Landroid/widget/RemoteViews;)Landroidx/core/app/p$f;
    .locals 0

    .line 1561
    iput-object p1, p0, Landroidx/core/app/p$f;->I:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Landroidx/core/app/p$f;
    .locals 0

    .line 943
    invoke-static {p1}, Landroidx/core/app/p$f;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/p$f;->j:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Landroidx/core/app/p$f;
    .locals 0

    .line 1348
    iput-object p1, p0, Landroidx/core/app/p$f;->x:Ljava/lang/String;

    return-object p0
.end method

.method public d(Z)Landroidx/core/app/p$f;
    .locals 1

    const/4 v0, 0x2

    .line 1160
    invoke-direct {p0, v0, p1}, Landroidx/core/app/p$f;->a(IZ)V

    return-object p0
.end method

.method public e()Landroid/widget/RemoteViews;
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 1693
    iget-object p0, p0, Landroidx/core/app/p$f;->G:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public e(I)Landroidx/core/app/p$f;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 1499
    iput p1, p0, Landroidx/core/app/p$f;->D:I

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;)Landroidx/core/app/p$f;
    .locals 1

    .line 1022
    iget-object v0, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    invoke-static {p1}, Landroidx/core/app/p$f;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Landroidx/core/app/p$f;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1571
    iput-object p1, p0, Landroidx/core/app/p$f;->J:Ljava/lang/String;

    return-object p0
.end method

.method public e(Z)Landroidx/core/app/p$f;
    .locals 0

    .line 1183
    iput-boolean p1, p0, Landroidx/core/app/p$f;->z:Z

    const/4 p1, 0x1

    .line 1184
    iput-boolean p1, p0, Landroidx/core/app/p$f;->A:Z

    return-object p0
.end method

.method public f()Landroid/widget/RemoteViews;
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 1701
    iget-object p0, p0, Landroidx/core/app/p$f;->H:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public f(I)Landroidx/core/app/p$f;
    .locals 0

    .line 1511
    iput p1, p0, Landroidx/core/app/p$f;->E:I

    return-object p0
.end method

.method public f(Ljava/lang/String;)Landroidx/core/app/p$f;
    .locals 0

    .line 1596
    iput-object p1, p0, Landroidx/core/app/p$f;->L:Ljava/lang/String;

    return-object p0
.end method

.method public f(Z)Landroidx/core/app/p$f;
    .locals 1

    const/16 v0, 0x8

    .line 1193
    invoke-direct {p0, v0, p1}, Landroidx/core/app/p$f;->a(IZ)V

    return-object p0
.end method

.method public g()Landroid/widget/RemoteViews;
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 1709
    iget-object p0, p0, Landroidx/core/app/p$f;->I:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public g(I)Landroidx/core/app/p$f;
    .locals 0

    .line 1610
    iput p1, p0, Landroidx/core/app/p$f;->K:I

    return-object p0
.end method

.method public g(Z)Landroidx/core/app/p$f;
    .locals 1

    const/16 v0, 0x10

    .line 1204
    invoke-direct {p0, v0, p1}, Landroidx/core/app/p$f;->a(IZ)V

    return-object p0
.end method

.method public h()J
    .locals 2
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 1719
    iget-boolean v0, p0, Landroidx/core/app/p$f;->m:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/core/app/p$f;->Q:Landroid/app/Notification;

    iget-wide v0, p0, Landroid/app/Notification;->when:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public h(I)Landroidx/core/app/p$f;
    .locals 0

    .line 1625
    iput p1, p0, Landroidx/core/app/p$f;->N:I

    return-object p0
.end method

.method public h(Z)Landroidx/core/app/p$f;
    .locals 0

    .line 1215
    iput-boolean p1, p0, Landroidx/core/app/p$f;->y:Z

    return-object p0
.end method

.method public i()I
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 1729
    iget p0, p0, Landroidx/core/app/p$f;->l:I

    return p0
.end method

.method public i(Z)Landroidx/core/app/p$f;
    .locals 0

    .line 1331
    iput-boolean p1, p0, Landroidx/core/app/p$f;->w:Z

    return-object p0
.end method

.method public j()I
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 1739
    iget p0, p0, Landroidx/core/app/p$f;->D:I

    return p0
.end method

.method public j(Z)Landroidx/core/app/p$f;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1660
    iput-boolean p1, p0, Landroidx/core/app/p$f;->O:Z

    return-object p0
.end method

.method public k()Landroidx/core/app/p$e;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 1749
    iget-object p0, p0, Landroidx/core/app/p$f;->P:Landroidx/core/app/p$e;

    return-object p0
.end method
