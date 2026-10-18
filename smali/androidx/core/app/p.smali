.class public Landroidx/core/app/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/p$e;,
        Landroidx/core/app/p$g;,
        Landroidx/core/app/p$p;,
        Landroidx/core/app/p$i;,
        Landroidx/core/app/p$a;,
        Landroidx/core/app/p$h;,
        Landroidx/core/app/p$k;,
        Landroidx/core/app/p$l;,
        Landroidx/core/app/p$d;,
        Landroidx/core/app/p$c;,
        Landroidx/core/app/p$o;,
        Landroidx/core/app/p$f;,
        Landroidx/core/app/p$j;,
        Landroidx/core/app/p$b;,
        Landroidx/core/app/p$m;,
        Landroidx/core/app/p$n;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "android.infoText"

.field public static final B:Ljava/lang/String; = "android.summaryText"

.field public static final C:Ljava/lang/String; = "android.bigText"

.field public static final D:Ljava/lang/String; = "android.icon"

.field public static final E:Ljava/lang/String; = "android.largeIcon"

.field public static final F:Ljava/lang/String; = "android.largeIcon.big"

.field public static final G:Ljava/lang/String; = "android.progress"

.field public static final H:Ljava/lang/String; = "android.progressMax"

.field public static final I:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final J:Ljava/lang/String; = "android.showChronometer"

.field public static final K:Ljava/lang/String; = "android.chronometerCountDown"

.field public static final L:Ljava/lang/String; = "android.showWhen"

.field public static final M:Ljava/lang/String; = "android.picture"

.field public static final N:Ljava/lang/String; = "android.textLines"

.field public static final O:Ljava/lang/String; = "android.template"

.field public static final P:Ljava/lang/String; = "android.people"

.field public static final Q:Ljava/lang/String; = "android.backgroundImageUri"

.field public static final R:Ljava/lang/String; = "android.mediaSession"

.field public static final S:Ljava/lang/String; = "android.compactActions"

.field public static final T:Ljava/lang/String; = "android.selfDisplayName"

.field public static final U:Ljava/lang/String; = "android.messagingStyleUser"

.field public static final V:Ljava/lang/String; = "android.conversationTitle"

.field public static final W:Ljava/lang/String; = "android.messages"

.field public static final X:Ljava/lang/String; = "android.isGroupConversation"

.field public static final Y:Ljava/lang/String; = "android.hiddenConversationTitle"

.field public static final Z:Ljava/lang/String; = "android.audioContents"

.field public static final a:I = -0x1

.field public static final aA:Ljava/lang/String; = "silent"

.field public static final aa:I = 0x0
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field public static final ab:I = 0x1

.field public static final ac:I = 0x0

.field public static final ad:I = -0x1

.field public static final ae:Ljava/lang/String; = "call"

.field public static final af:Ljava/lang/String; = "navigation"

.field public static final ag:Ljava/lang/String; = "msg"

.field public static final ah:Ljava/lang/String; = "email"

.field public static final ai:Ljava/lang/String; = "event"

.field public static final aj:Ljava/lang/String; = "promo"

.field public static final ak:Ljava/lang/String; = "alarm"

.field public static final al:Ljava/lang/String; = "progress"

.field public static final am:Ljava/lang/String; = "social"

.field public static final an:Ljava/lang/String; = "err"

.field public static final ao:Ljava/lang/String; = "transport"

.field public static final ap:Ljava/lang/String; = "sys"

.field public static final aq:Ljava/lang/String; = "service"

.field public static final ar:Ljava/lang/String; = "reminder"

.field public static final as:Ljava/lang/String; = "recommendation"

.field public static final at:Ljava/lang/String; = "status"

.field public static final au:I = 0x0

.field public static final av:I = 0x1

.field public static final aw:I = 0x2

.field public static final ax:I = 0x0

.field public static final ay:I = 0x1

.field public static final az:I = 0x2

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x4

.field public static final e:I = -0x1

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x4

.field public static final i:I = 0x8

.field public static final j:I = 0x10

.field public static final k:I = 0x20

.field public static final l:I = 0x40

.field public static final m:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final n:I = 0x100

.field public static final o:I = 0x200

.field public static final p:I = 0x1000

.field public static final q:I = 0x0

.field public static final r:I = -0x1

.field public static final s:I = -0x2

.field public static final t:I = 0x1

.field public static final u:I = 0x2

.field public static final v:Ljava/lang/String; = "android.title"

.field public static final w:Ljava/lang/String; = "android.title.big"

.field public static final x:Ljava/lang/String; = "android.text"

.field public static final y:Ljava/lang/String; = "android.subText"

.field public static final z:Ljava/lang/String; = "android.remoteInputHistory"


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 2
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 5764
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 5765
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    return-object p0

    .line 5766
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 5767
    invoke-static {p0}, Landroidx/core/app/s;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Landroid/app/Notification$Action;)Landroidx/core/app/p$a;
    .locals 18
    .annotation build Landroidx/annotation/am;
        a = 0x14
    .end annotation

    move-object/from16 v0, p0

    .line 5834
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v1

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-object v12, v3

    goto :goto_2

    .line 5838
    :cond_0
    array-length v5, v1

    new-array v5, v5, [Landroidx/core/app/w;

    move v6, v4

    .line 5839
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_2

    .line 5840
    aget-object v7, v1, v6

    .line 5841
    new-instance v16, Landroidx/core/app/w;

    .line 5842
    invoke-virtual {v7}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v9

    .line 5843
    invoke-virtual {v7}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v10

    .line 5844
    invoke-virtual {v7}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v11

    .line 5845
    invoke-virtual {v7}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v12

    .line 5846
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v8, v2, :cond_1

    .line 5847
    invoke-virtual {v7}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v8

    move v13, v8

    goto :goto_1

    :cond_1
    move v13, v4

    .line 5849
    :goto_1
    invoke-virtual {v7}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v8, v16

    invoke-direct/range {v8 .. v15}, Landroidx/core/app/w;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    aput-object v16, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object v12, v5

    .line 5855
    :goto_2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    const/4 v6, 0x1

    if-lt v1, v5, :cond_5

    .line 5856
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "android.support.allowGeneratedReplies"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5858
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getAllowGeneratedReplies()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move v1, v4

    goto :goto_4

    :cond_4
    :goto_3
    move v1, v6

    goto :goto_4

    .line 5860
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "android.support.allowGeneratedReplies"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :goto_4
    move v14, v1

    .line 5865
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "android.support.action.showsUserInterface"

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 5868
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1c

    if-lt v1, v5, :cond_6

    .line 5869
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getSemanticAction()I

    move-result v1

    :goto_5
    move v15, v1

    goto :goto_6

    .line 5871
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v5, "android.support.action.semanticAction"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_5

    .line 5875
    :goto_6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->isContextual()Z

    move-result v4

    :cond_7
    move/from16 v17, v4

    .line 5877
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_a

    .line 5878
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_8

    iget v1, v0, Landroid/app/Notification$Action;->icon:I

    if-eqz v1, :cond_8

    .line 5879
    new-instance v1, Landroidx/core/app/p$a;

    iget v8, v0, Landroid/app/Notification$Action;->icon:I

    iget-object v9, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v10, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 5880
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const/4 v13, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v17}, Landroidx/core/app/p$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/w;[Landroidx/core/app/w;ZIZZ)V

    return-object v1

    .line 5883
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_9

    :goto_7
    move-object v8, v3

    goto :goto_8

    .line 5884
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->b(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v3

    goto :goto_7

    .line 5885
    :goto_8
    new-instance v1, Landroidx/core/app/p$a;

    iget-object v9, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v10, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const/4 v13, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v17}, Landroidx/core/app/p$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/w;[Landroidx/core/app/w;ZIZZ)V

    return-object v1

    .line 5889
    :cond_a
    new-instance v1, Landroidx/core/app/p$a;

    iget v8, v0, Landroid/app/Notification$Action;->icon:I

    iget-object v9, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v10, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const/4 v13, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v17}, Landroidx/core/app/p$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/w;[Landroidx/core/app/w;ZIZZ)V

    return-object v1
.end method

.method public static a(Landroid/app/Notification;I)Landroidx/core/app/p$a;
    .locals 3

    .line 5795
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 5796
    iget-object p0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object p0, p0, p1

    invoke-static {p0}, Landroidx/core/app/p;->a(Landroid/app/Notification$Action;)Landroidx/core/app/p$a;

    move-result-object p0

    return-object p0

    .line 5797
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 5798
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v0, v0, p1

    .line 5800
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.support.actionExtras"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 5803
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroid/os/Bundle;

    .line 5805
    :cond_1
    iget p0, v0, Landroid/app/Notification$Action;->icon:I

    iget-object p1, v0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v0, v0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-static {p0, p1, v0, v2}, Landroidx/core/app/s;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroidx/core/app/p$a;

    move-result-object p0

    return-object p0

    .line 5807
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 5808
    invoke-static {p0, p1}, Landroidx/core/app/s;->a(Landroid/app/Notification;I)Landroidx/core/app/p$a;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v2
.end method

.method static a(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .locals 4

    .line 5745
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 5746
    instance-of v1, v0, [Landroid/app/Notification;

    if-nez v1, :cond_2

    if-nez v0, :cond_0

    goto :goto_1

    .line 5749
    :cond_0
    array-length v1, v0

    new-array v1, v1, [Landroid/app/Notification;

    const/4 v2, 0x0

    .line 5750
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 5751
    aget-object v3, v0, v2

    check-cast v3, Landroid/app/Notification;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5753
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    return-object v1

    .line 5747
    :cond_2
    :goto_1
    check-cast v0, [Landroid/app/Notification;

    return-object v0
.end method

.method public static b(Landroid/app/Notification;)I
    .locals 3

    .line 5778
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 5779
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    array-length v1, p0

    :cond_0
    return v1

    .line 5780
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_2

    .line 5781
    invoke-static {p0}, Landroidx/core/app/s;->b(Landroid/app/Notification;)I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public static c(Landroid/app/Notification;)Landroidx/core/app/p$e;
    .locals 2
    .param p0    # Landroid/app/Notification;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 5823
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 5824
    invoke-virtual {p0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/app/p$e;->a(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/p$e;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static d(Landroid/app/Notification;)Ljava/util/List;
    .locals 3
    .annotation build Landroidx/annotation/am;
        a = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Notification;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/app/p$a;",
            ">;"
        }
    .end annotation

    .line 5898
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5900
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.car.EXTENSIONS"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "invisible_actions"

    .line 5905
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    .line 5907
    :goto_0
    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5909
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 5908
    invoke-static {v2}, Landroidx/core/app/s;->a(Landroid/os/Bundle;)Landroidx/core/app/p$a;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static e(Landroid/app/Notification;)Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/am;
        a = 0x13
    .end annotation

    .line 5918
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.title"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2

    .line 5927
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 5928
    iget-object p0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static g(Landroid/app/Notification;)Z
    .locals 3

    .line 5941
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_1

    .line 5942
    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 5943
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    .line 5944
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.support.localOnly"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 5945
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_3

    .line 5946
    invoke-static {p0}, Landroidx/core/app/s;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "android.support.localOnly"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public static h(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2

    .line 5958
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 5959
    invoke-virtual {p0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5960
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 5961
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.support.groupKey"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5962
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 5963
    invoke-static {p0}, Landroidx/core/app/s;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "android.support.groupKey"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static i(Landroid/app/Notification;)Z
    .locals 3

    .line 5977
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_1

    .line 5978
    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 5979
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    .line 5980
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.support.isGroupSummary"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 5981
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_3

    .line 5982
    invoke-static {p0}, Landroidx/core/app/s;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "android.support.isGroupSummary"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public static j(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2

    .line 6002
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 6003
    invoke-virtual {p0}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6004
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 6005
    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v0, "android.support.sortKey"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6006
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 6007
    invoke-static {p0}, Landroidx/core/app/s;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "android.support.sortKey"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static k(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2

    .line 6018
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 6019
    invoke-virtual {p0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Landroid/app/Notification;)J
    .locals 2

    .line 6030
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 6031
    invoke-virtual {p0}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static m(Landroid/app/Notification;)I
    .locals 2

    .line 6043
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 6044
    invoke-virtual {p0}, Landroid/app/Notification;->getBadgeIconType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static n(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2

    .line 6055
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 6056
    invoke-virtual {p0}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static o(Landroid/app/Notification;)I
    .locals 2

    .line 6069
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 6070
    invoke-virtual {p0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static p(Landroid/app/Notification;)Z
    .locals 2

    .line 6081
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 6082
    invoke-virtual {p0}, Landroid/app/Notification;->getAllowSystemGeneratedContextualActions()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
