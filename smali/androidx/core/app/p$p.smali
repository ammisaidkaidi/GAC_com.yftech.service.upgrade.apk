.class public final Landroidx/core/app/p$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/p$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "p"
.end annotation


# static fields
.field private static final A:I = 0x4

.field private static final B:I = 0x8

.field private static final C:I = 0x10

.field private static final D:I = 0x20

.field private static final E:I = 0x40

.field private static final F:I = 0x1

.field private static final G:I = 0x800005

.field private static final H:I = 0x50

.field public static final a:I = -0x1

.field public static final b:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final c:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final d:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final e:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final f:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final g:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final h:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final i:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final j:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final k:Ljava/lang/String; = "actions"

.field private static final l:Ljava/lang/String; = "flags"

.field private static final m:Ljava/lang/String; = "displayIntent"

.field private static final n:Ljava/lang/String; = "pages"

.field private static final o:Ljava/lang/String; = "background"

.field private static final p:Ljava/lang/String; = "contentIcon"

.field private static final q:Ljava/lang/String; = "contentIconGravity"

.field private static final r:Ljava/lang/String; = "contentActionIndex"

.field private static final s:Ljava/lang/String; = "customSizePreset"

.field private static final t:Ljava/lang/String; = "customContentHeight"

.field private static final u:Ljava/lang/String; = "gravity"

.field private static final v:Ljava/lang/String; = "hintScreenTimeout"

.field private static final w:Ljava/lang/String; = "dismissalId"

.field private static final x:Ljava/lang/String; = "bridgeTag"

.field private static final y:I = 0x1

.field private static final z:I = 0x2


# instance fields
.field private I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/app/p$a;",
            ">;"
        }
    .end annotation
.end field

.field private J:I

.field private K:Landroid/app/PendingIntent;

.field private L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private M:Landroid/graphics/Bitmap;

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/p$p;->I:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 4136
    iput v0, p0, Landroidx/core/app/p$p;->J:I

    .line 4138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/p$p;->L:Ljava/util/ArrayList;

    const v0, 0x800005

    .line 4141
    iput v0, p0, Landroidx/core/app/p$p;->O:I

    const/4 v0, -0x1

    .line 4142
    iput v0, p0, Landroidx/core/app/p$p;->P:I

    const/4 v0, 0x0

    .line 4143
    iput v0, p0, Landroidx/core/app/p$p;->Q:I

    const/16 v0, 0x50

    .line 4146
    iput v0, p0, Landroidx/core/app/p$p;->S:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 11

    .line 4159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/p$p;->I:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 4136
    iput v0, p0, Landroidx/core/app/p$p;->J:I

    .line 4138
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/core/app/p$p;->L:Ljava/util/ArrayList;

    const v1, 0x800005

    .line 4141
    iput v1, p0, Landroidx/core/app/p$p;->O:I

    const/4 v2, -0x1

    .line 4142
    iput v2, p0, Landroidx/core/app/p$p;->P:I

    const/4 v3, 0x0

    .line 4143
    iput v3, p0, Landroidx/core/app/p$p;->Q:I

    const/16 v4, 0x50

    .line 4146
    iput v4, p0, Landroidx/core/app/p$p;->S:I

    .line 4160
    invoke-static {p1}, Landroidx/core/app/p;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v5, "android.wearable.EXTENSIONS"

    .line 4161
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_6

    const-string v5, "actions"

    .line 4165
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 4166
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_4

    if-eqz v5, :cond_4

    .line 4167
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroidx/core/app/p$a;

    move v8, v3

    .line 4168
    :goto_1
    array-length v9, v6

    if-ge v8, v9, :cond_3

    .line 4169
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x14

    if-lt v9, v10, :cond_1

    .line 4171
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/Notification$Action;

    .line 4170
    invoke-static {v9}, Landroidx/core/app/p;->a(Landroid/app/Notification$Action;)Landroidx/core/app/p$a;

    move-result-object v9

    aput-object v9, v6, v8

    goto :goto_2

    .line 4172
    :cond_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v9, v7, :cond_2

    .line 4174
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .line 4173
    invoke-static {v9}, Landroidx/core/app/s;->a(Landroid/os/Bundle;)Landroidx/core/app/p$a;

    move-result-object v9

    aput-object v9, v6, v8

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 4177
    :cond_3
    iget-object v5, p0, Landroidx/core/app/p$p;->I:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_4
    const-string v5, "flags"

    .line 4180
    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/p$p;->J:I

    const-string v0, "displayIntent"

    .line 4181
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroidx/core/app/p$p;->K:Landroid/app/PendingIntent;

    const-string v0, "pages"

    .line 4183
    invoke-static {p1, v0}, Landroidx/core/app/p;->a(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4186
    iget-object v5, p0, Landroidx/core/app/p$p;->L:Ljava/util/ArrayList;

    invoke-static {v5, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_5
    const-string v0, "background"

    .line 4189
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroidx/core/app/p$p;->M:Landroid/graphics/Bitmap;

    const-string v0, "contentIcon"

    .line 4190
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/core/app/p$p;->N:I

    const-string v0, "contentIconGravity"

    .line 4191
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/p$p;->O:I

    const-string v0, "contentActionIndex"

    .line 4193
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/p$p;->P:I

    const-string v0, "customSizePreset"

    .line 4195
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/p$p;->Q:I

    const-string v0, "customContentHeight"

    .line 4197
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/core/app/p$p;->R:I

    const-string v0, "gravity"

    .line 4198
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/p$p;->S:I

    const-string v0, "hintScreenTimeout"

    .line 4199
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/core/app/p$p;->T:I

    const-string v0, "dismissalId"

    .line 4200
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/p$p;->U:Ljava/lang/String;

    const-string v0, "bridgeTag"

    .line 4201
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/p$p;->V:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method private a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 4931
    iget p2, p0, Landroidx/core/app/p$p;->J:I

    or-int/2addr p1, p2

    iput p1, p0, Landroidx/core/app/p$p;->J:I

    goto :goto_0

    .line 4933
    :cond_0
    iget p2, p0, Landroidx/core/app/p$p;->J:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroidx/core/app/p$p;->J:I

    :goto_0
    return-void
.end method

.method private static b(Landroidx/core/app/p$a;)Landroid/app/Notification$Action;
    .locals 5
    .annotation build Landroidx/annotation/am;
        a = 0x14
    .end annotation

    .line 4280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 4281
    invoke-virtual {p0}, Landroidx/core/app/p$a;->b()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 4282
    new-instance v2, Landroid/app/Notification$Action$Builder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 4283
    :cond_0
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->f()Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Landroidx/core/app/p$a;->c()Ljava/lang/CharSequence;

    move-result-object v3

    .line 4284
    invoke-virtual {p0}, Landroidx/core/app/p$a;->d()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_2

    .line 4286
    :cond_1
    invoke-virtual {p0}, Landroidx/core/app/p$a;->b()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4288
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->a()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 4289
    invoke-virtual {v0}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 4291
    :goto_1
    new-instance v2, Landroid/app/Notification$Action$Builder;

    .line 4292
    invoke-virtual {p0}, Landroidx/core/app/p$a;->c()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/core/app/p$a;->d()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 4295
    :goto_2
    invoke-virtual {p0}, Landroidx/core/app/p$a;->e()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4296
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroidx/core/app/p$a;->e()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_3

    .line 4298
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_3
    const-string v3, "android.support.allowGeneratedReplies"

    .line 4301
    invoke-virtual {p0}, Landroidx/core/app/p$a;->f()Z

    move-result v4

    .line 4300
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4302
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_4

    .line 4303
    invoke-virtual {p0}, Landroidx/core/app/p$a;->f()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;

    .line 4305
    :cond_4
    invoke-virtual {v2, v0}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 4306
    invoke-virtual {p0}, Landroidx/core/app/p$a;->g()[Landroidx/core/app/w;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 4308
    invoke-static {p0}, Landroidx/core/app/w;->a([Landroidx/core/app/w;)[Landroid/app/RemoteInput;

    move-result-object p0

    .line 4309
    array-length v0, p0

    :goto_4
    if-ge v1, v0, :cond_5

    aget-object v3, p0, v1

    .line 4310
    invoke-virtual {v2, v3}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 4313
    :cond_5
    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/core/app/p$f;)Landroidx/core/app/p$f;
    .locals 7

    .line 4213
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4215
    iget-object v1, p0, Landroidx/core/app/p$p;->I:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4216
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_3

    .line 4217
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/core/app/p$p;->I:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4218
    iget-object v3, p0, Landroidx/core/app/p$p;->I:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/core/app/p$a;

    .line 4219
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x14

    if-lt v5, v6, :cond_1

    .line 4221
    invoke-static {v4}, Landroidx/core/app/p$p;->b(Landroidx/core/app/p$a;)Landroid/app/Notification$Action;

    move-result-object v4

    .line 4220
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4222
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v2, :cond_0

    .line 4223
    invoke-static {v4}, Landroidx/core/app/s;->a(Landroidx/core/app/p$a;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v2, "actions"

    .line 4226
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    const-string v1, "actions"

    const/4 v2, 0x0

    .line 4228
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 4231
    :cond_4
    :goto_1
    iget v1, p0, Landroidx/core/app/p$p;->J:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const-string v1, "flags"

    .line 4232
    iget v2, p0, Landroidx/core/app/p$p;->J:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4234
    :cond_5
    iget-object v1, p0, Landroidx/core/app/p$p;->K:Landroid/app/PendingIntent;

    if-eqz v1, :cond_6

    const-string v1, "displayIntent"

    .line 4235
    iget-object v2, p0, Landroidx/core/app/p$p;->K:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4237
    :cond_6
    iget-object v1, p0, Landroidx/core/app/p$p;->L:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "pages"

    .line 4238
    iget-object v2, p0, Landroidx/core/app/p$p;->L:Ljava/util/ArrayList;

    iget-object v3, p0, Landroidx/core/app/p$p;->L:Ljava/util/ArrayList;

    .line 4239
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/app/Notification;

    .line 4238
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 4241
    :cond_7
    iget-object v1, p0, Landroidx/core/app/p$p;->M:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_8

    const-string v1, "background"

    .line 4242
    iget-object v2, p0, Landroidx/core/app/p$p;->M:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4244
    :cond_8
    iget v1, p0, Landroidx/core/app/p$p;->N:I

    if-eqz v1, :cond_9

    const-string v1, "contentIcon"

    .line 4245
    iget v2, p0, Landroidx/core/app/p$p;->N:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4247
    :cond_9
    iget v1, p0, Landroidx/core/app/p$p;->O:I

    const v2, 0x800005

    if-eq v1, v2, :cond_a

    const-string v1, "contentIconGravity"

    .line 4248
    iget v2, p0, Landroidx/core/app/p$p;->O:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4250
    :cond_a
    iget v1, p0, Landroidx/core/app/p$p;->P:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    const-string v1, "contentActionIndex"

    .line 4251
    iget v2, p0, Landroidx/core/app/p$p;->P:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4254
    :cond_b
    iget v1, p0, Landroidx/core/app/p$p;->Q:I

    if-eqz v1, :cond_c

    const-string v1, "customSizePreset"

    .line 4255
    iget v2, p0, Landroidx/core/app/p$p;->Q:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4257
    :cond_c
    iget v1, p0, Landroidx/core/app/p$p;->R:I

    if-eqz v1, :cond_d

    const-string v1, "customContentHeight"

    .line 4258
    iget v2, p0, Landroidx/core/app/p$p;->R:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4260
    :cond_d
    iget v1, p0, Landroidx/core/app/p$p;->S:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_e

    const-string v1, "gravity"

    .line 4261
    iget v2, p0, Landroidx/core/app/p$p;->S:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4263
    :cond_e
    iget v1, p0, Landroidx/core/app/p$p;->T:I

    if-eqz v1, :cond_f

    const-string v1, "hintScreenTimeout"

    .line 4264
    iget v2, p0, Landroidx/core/app/p$p;->T:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4266
    :cond_f
    iget-object v1, p0, Landroidx/core/app/p$p;->U:Ljava/lang/String;

    if-eqz v1, :cond_10

    const-string v1, "dismissalId"

    .line 4267
    iget-object v2, p0, Landroidx/core/app/p$p;->U:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4269
    :cond_10
    iget-object v1, p0, Landroidx/core/app/p$p;->V:Ljava/lang/String;

    if-eqz v1, :cond_11

    const-string v1, "bridgeTag"

    .line 4270
    iget-object p0, p0, Landroidx/core/app/p$p;->V:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4273
    :cond_11
    invoke-virtual {p1}, Landroidx/core/app/p$f;->b()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "android.wearable.EXTENSIONS"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public a()Landroidx/core/app/p$p;
    .locals 3

    .line 4318
    new-instance v0, Landroidx/core/app/p$p;

    invoke-direct {v0}, Landroidx/core/app/p$p;-><init>()V

    .line 4319
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/core/app/p$p;->I:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/core/app/p$p;->I:Ljava/util/ArrayList;

    .line 4320
    iget v1, p0, Landroidx/core/app/p$p;->J:I

    iput v1, v0, Landroidx/core/app/p$p;->J:I

    .line 4321
    iget-object v1, p0, Landroidx/core/app/p$p;->K:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroidx/core/app/p$p;->K:Landroid/app/PendingIntent;

    .line 4322
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/core/app/p$p;->L:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroidx/core/app/p$p;->L:Ljava/util/ArrayList;

    .line 4323
    iget-object v1, p0, Landroidx/core/app/p$p;->M:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroidx/core/app/p$p;->M:Landroid/graphics/Bitmap;

    .line 4324
    iget v1, p0, Landroidx/core/app/p$p;->N:I

    iput v1, v0, Landroidx/core/app/p$p;->N:I

    .line 4325
    iget v1, p0, Landroidx/core/app/p$p;->O:I

    iput v1, v0, Landroidx/core/app/p$p;->O:I

    .line 4326
    iget v1, p0, Landroidx/core/app/p$p;->P:I

    iput v1, v0, Landroidx/core/app/p$p;->P:I

    .line 4327
    iget v1, p0, Landroidx/core/app/p$p;->Q:I

    iput v1, v0, Landroidx/core/app/p$p;->Q:I

    .line 4328
    iget v1, p0, Landroidx/core/app/p$p;->R:I

    iput v1, v0, Landroidx/core/app/p$p;->R:I

    .line 4329
    iget v1, p0, Landroidx/core/app/p$p;->S:I

    iput v1, v0, Landroidx/core/app/p$p;->S:I

    .line 4330
    iget v1, p0, Landroidx/core/app/p$p;->T:I

    iput v1, v0, Landroidx/core/app/p$p;->T:I

    .line 4331
    iget-object v1, p0, Landroidx/core/app/p$p;->U:Ljava/lang/String;

    iput-object v1, v0, Landroidx/core/app/p$p;->U:Ljava/lang/String;

    .line 4332
    iget-object p0, p0, Landroidx/core/app/p$p;->V:Ljava/lang/String;

    iput-object p0, v0, Landroidx/core/app/p$p;->V:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)Landroidx/core/app/p$p;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4531
    iput p1, p0, Landroidx/core/app/p$p;->N:I

    return-object p0
.end method

.method public a(Landroid/app/Notification;)Landroidx/core/app/p$p;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4448
    iget-object v0, p0, Landroidx/core/app/p$p;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Landroidx/core/app/p$p;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4420
    iput-object p1, p0, Landroidx/core/app/p$p;->K:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Landroidx/core/app/p$p;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4506
    iput-object p1, p0, Landroidx/core/app/p$p;->M:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public a(Landroidx/core/app/p$a;)Landroidx/core/app/p$p;
    .locals 1

    .line 4349
    iget-object v0, p0, Landroidx/core/app/p$p;->I:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroidx/core/app/p$p;
    .locals 0

    .line 4896
    iput-object p1, p0, Landroidx/core/app/p$p;->U:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Landroidx/core/app/p$p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/core/app/p$a;",
            ">;)",
            "Landroidx/core/app/p$p;"
        }
    .end annotation

    .line 4366
    iget-object v0, p0, Landroidx/core/app/p$p;->I:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public a(Z)Landroidx/core/app/p$p;
    .locals 1

    const/16 v0, 0x8

    .line 4693
    invoke-direct {p0, v0, p1}, Landroidx/core/app/p$p;->a(IZ)V

    return-object p0
.end method

.method public b()Landroidx/core/app/p$p;
    .locals 1

    .line 4376
    iget-object v0, p0, Landroidx/core/app/p$p;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public b(I)Landroidx/core/app/p$p;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4555
    iput p1, p0, Landroidx/core/app/p$p;->O:I

    return-object p0
.end method

.method public b(Ljava/lang/String;)Landroidx/core/app/p$p;
    .locals 0

    .line 4917
    iput-object p1, p0, Landroidx/core/app/p$p;->V:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/util/List;)Landroidx/core/app/p$p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Notification;",
            ">;)",
            "Landroidx/core/app/p$p;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4465
    iget-object v0, p0, Landroidx/core/app/p$p;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public b(Z)Landroidx/core/app/p$p;
    .locals 1

    const/4 v0, 0x1

    .line 4714
    invoke-direct {p0, v0, p1}, Landroidx/core/app/p$p;->a(IZ)V

    return-object p0
.end method

.method public c(I)Landroidx/core/app/p$p;
    .locals 0

    .line 4583
    iput p1, p0, Landroidx/core/app/p$p;->P:I

    return-object p0
.end method

.method public c(Z)Landroidx/core/app/p$p;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x2

    .line 4737
    invoke-direct {p0, v0, p1}, Landroidx/core/app/p$p;->a(IZ)V

    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/core/app/p$a;",
            ">;"
        }
    .end annotation

    .line 4384
    iget-object p0, p0, Landroidx/core/app/p$p;->I:Ljava/util/ArrayList;

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 4010
    invoke-virtual {p0}, Landroidx/core/app/p$p;->a()Landroidx/core/app/p$p;

    move-result-object p0

    return-object p0
.end method

.method public d()Landroid/app/PendingIntent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4432
    iget-object p0, p0, Landroidx/core/app/p$p;->K:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public d(I)Landroidx/core/app/p$p;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4610
    iput p1, p0, Landroidx/core/app/p$p;->S:I

    return-object p0
.end method

.method public d(Z)Landroidx/core/app/p$p;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    .line 4762
    invoke-direct {p0, v0, p1}, Landroidx/core/app/p$p;->a(IZ)V

    return-object p0
.end method

.method public e()Landroidx/core/app/p$p;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4477
    iget-object v0, p0, Landroidx/core/app/p$p;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-object p0
.end method

.method public e(I)Landroidx/core/app/p$p;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4640
    iput p1, p0, Landroidx/core/app/p$p;->Q:I

    return-object p0
.end method

.method public e(Z)Landroidx/core/app/p$p;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    .line 4790
    invoke-direct {p0, v0, p1}, Landroidx/core/app/p$p;->a(IZ)V

    return-object p0
.end method

.method public f(I)Landroidx/core/app/p$p;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4670
    iput p1, p0, Landroidx/core/app/p$p;->R:I

    return-object p0
.end method

.method public f(Z)Landroidx/core/app/p$p;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x20

    .line 4846
    invoke-direct {p0, v0, p1}, Landroidx/core/app/p$p;->a(IZ)V

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4491
    iget-object p0, p0, Landroidx/core/app/p$p;->L:Ljava/util/ArrayList;

    return-object p0
.end method

.method public g()Landroid/graphics/Bitmap;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4521
    iget-object p0, p0, Landroidx/core/app/p$p;->M:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public g(I)Landroidx/core/app/p$p;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4819
    iput p1, p0, Landroidx/core/app/p$p;->T:I

    return-object p0
.end method

.method public g(Z)Landroidx/core/app/p$p;
    .locals 1

    const/16 v0, 0x40

    .line 4872
    invoke-direct {p0, v0, p1}, Landroidx/core/app/p$p;->a(IZ)V

    return-object p0
.end method

.method public h()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4542
    iget p0, p0, Landroidx/core/app/p$p;->N:I

    return p0
.end method

.method public i()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4569
    iget p0, p0, Landroidx/core/app/p$p;->O:I

    return p0
.end method

.method public j()I
    .locals 0

    .line 4597
    iget p0, p0, Landroidx/core/app/p$p;->P:I

    return p0
.end method

.method public k()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4624
    iget p0, p0, Landroidx/core/app/p$p;->S:I

    return p0
.end method

.method public l()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4656
    iget p0, p0, Landroidx/core/app/p$p;->Q:I

    return p0
.end method

.method public m()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4684
    iget p0, p0, Landroidx/core/app/p$p;->R:I

    return p0
.end method

.method public n()Z
    .locals 0

    .line 4703
    iget p0, p0, Landroidx/core/app/p$p;->J:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o()Z
    .locals 1

    .line 4725
    iget p0, p0, Landroidx/core/app/p$p;->J:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public p()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4750
    iget p0, p0, Landroidx/core/app/p$p;->J:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public q()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4775
    iget p0, p0, Landroidx/core/app/p$p;->J:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public r()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4805
    iget p0, p0, Landroidx/core/app/p$p;->J:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public s()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4833
    iget p0, p0, Landroidx/core/app/p$p;->T:I

    return p0
.end method

.method public t()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4860
    iget p0, p0, Landroidx/core/app/p$p;->J:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public u()Z
    .locals 0

    .line 4883
    iget p0, p0, Landroidx/core/app/p$p;->J:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public v()Ljava/lang/String;
    .locals 0

    .line 4905
    iget-object p0, p0, Landroidx/core/app/p$p;->U:Ljava/lang/String;

    return-object p0
.end method

.method public w()Ljava/lang/String;
    .locals 0

    .line 4926
    iget-object p0, p0, Landroidx/core/app/p$p;->V:Ljava/lang/String;

    return-object p0
.end method
