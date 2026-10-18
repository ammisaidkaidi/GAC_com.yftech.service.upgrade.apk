.class public final Landroidx/core/n/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x3e8

.field public static final c:I = 0x3e9

.field public static final d:I = 0x3ea

.field public static final e:I = 0x3eb

.field public static final f:I = 0x3ec

.field public static final g:I = 0x3ee

.field public static final h:I = 0x3ef

.field public static final i:I = 0x3f0

.field public static final j:I = 0x3f1

.field public static final k:I = 0x3f2

.field public static final l:I = 0x3f3

.field public static final m:I = 0x3f4

.field public static final n:I = 0x3f5

.field public static final o:I = 0x3f6

.field public static final p:I = 0x3f7

.field public static final q:I = 0x3f8

.field public static final r:I = 0x3f9

.field public static final s:I = 0x3fa

.field public static final t:I = 0x3fb

.field public static final u:I = 0x3fc

.field public static final v:I = 0x3fd

.field public static final w:I = 0x3e8


# instance fields
.field private x:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Landroidx/core/n/aa;->x:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroid/content/Context;I)Landroidx/core/n/aa;
    .locals 2

    .line 130
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 131
    new-instance v0, Landroidx/core/n/aa;

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/n/aa;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 133
    :cond_0
    new-instance p0, Landroidx/core/n/aa;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/core/n/aa;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static a(Landroid/content/res/Resources;I)Landroidx/core/n/aa;
    .locals 2

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 181
    new-instance v0, Landroidx/core/n/aa;

    invoke-static {p0, p1}, Landroid/view/PointerIcon;->load(Landroid/content/res/Resources;I)Landroid/view/PointerIcon;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/n/aa;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 183
    :cond_0
    new-instance p0, Landroidx/core/n/aa;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/core/n/aa;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method

.method public static a(Landroid/graphics/Bitmap;FF)Landroidx/core/n/aa;
    .locals 2

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 152
    new-instance v0, Landroidx/core/n/aa;

    invoke-static {p0, p1, p2}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/n/aa;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 154
    :cond_0
    new-instance p0, Landroidx/core/n/aa;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/core/n/aa;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 116
    iget-object p0, p0, Landroidx/core/n/aa;->x:Ljava/lang/Object;

    return-object p0
.end method
