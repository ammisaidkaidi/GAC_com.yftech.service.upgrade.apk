.class public Landroidx/core/app/p$c;
.super Landroidx/core/app/p$o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2111
    invoke-direct {p0}, Landroidx/core/app/p$o;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/p$f;)V
    .locals 0

    .line 2114
    invoke-direct {p0}, Landroidx/core/app/p$o;-><init>()V

    .line 2115
    invoke-virtual {p0, p1}, Landroidx/core/app/p$c;->a(Landroidx/core/app/p$f;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)Landroidx/core/app/p$c;
    .locals 0

    .line 2140
    iput-object p1, p0, Landroidx/core/app/p$c;->a:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroidx/core/app/p$c;
    .locals 0

    .line 2123
    invoke-static {p1}, Landroidx/core/app/p$f;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/p$c;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Landroidx/core/app/o;)V
    .locals 2
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 2159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 2160
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    .line 2161
    invoke-interface {p1}, Landroidx/core/app/o;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object p1, p0, Landroidx/core/app/p$c;->c:Ljava/lang/CharSequence;

    .line 2162
    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    iget-object v0, p0, Landroidx/core/app/p$c;->a:Landroid/graphics/Bitmap;

    .line 2163
    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    .line 2164
    iget-boolean v0, p0, Landroidx/core/app/p$c;->g:Z

    if-eqz v0, :cond_0

    .line 2165
    iget-object v0, p0, Landroidx/core/app/p$c;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 2167
    :cond_0
    iget-boolean v0, p0, Landroidx/core/app/p$c;->e:Z

    if-eqz v0, :cond_1

    .line 2168
    iget-object p0, p0, Landroidx/core/app/p$c;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    :cond_1
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;)Landroidx/core/app/p$c;
    .locals 0

    .line 2148
    iput-object p1, p0, Landroidx/core/app/p$c;->f:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    .line 2149
    iput-boolean p1, p0, Landroidx/core/app/p$c;->g:Z

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroidx/core/app/p$c;
    .locals 0

    .line 2131
    invoke-static {p1}, Landroidx/core/app/p$f;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/p$c;->d:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    .line 2132
    iput-boolean p1, p0, Landroidx/core/app/p$c;->e:Z

    return-object p0
.end method
