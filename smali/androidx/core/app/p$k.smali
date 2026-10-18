.class public Landroidx/core/app/p$k;
.super Landroidx/core/app/p$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "k"
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2972
    invoke-direct {p0}, Landroidx/core/app/p$o;-><init>()V

    .line 2970
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/p$k;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/p$f;)V
    .locals 1

    .line 2975
    invoke-direct {p0}, Landroidx/core/app/p$o;-><init>()V

    .line 2970
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/p$k;->a:Ljava/util/ArrayList;

    .line 2976
    invoke-virtual {p0, p1}, Landroidx/core/app/p$k;->a(Landroidx/core/app/p$f;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Landroidx/core/app/p$k;
    .locals 0

    .line 2984
    invoke-static {p1}, Landroidx/core/app/p$f;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/p$k;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Landroidx/core/app/o;)V
    .locals 2
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 3011
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 3012
    new-instance v0, Landroid/app/Notification$InboxStyle;

    .line 3013
    invoke-interface {p1}, Landroidx/core/app/o;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Landroidx/core/app/p$k;->c:Ljava/lang/CharSequence;

    .line 3014
    invoke-virtual {v0, p1}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object p1

    .line 3015
    iget-boolean v0, p0, Landroidx/core/app/p$k;->e:Z

    if-eqz v0, :cond_0

    .line 3016
    iget-object v0, p0, Landroidx/core/app/p$k;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 3018
    :cond_0
    iget-object p0, p0, Landroidx/core/app/p$k;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 3019
    invoke-virtual {p1, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)Landroidx/core/app/p$k;
    .locals 0

    .line 2992
    invoke-static {p1}, Landroidx/core/app/p$f;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/p$k;->d:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    .line 2993
    iput-boolean p1, p0, Landroidx/core/app/p$k;->e:Z

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroidx/core/app/p$k;
    .locals 1

    .line 3001
    iget-object v0, p0, Landroidx/core/app/p$k;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Landroidx/core/app/p$f;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
