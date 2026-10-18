.class public final Landroidx/core/app/p$e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/p$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/app/PendingIntent;

.field private b:Landroidx/core/graphics/drawable/IconCompat;

.field private c:I

.field private d:I
    .annotation build Landroidx/annotation/o;
    .end annotation
.end field

.field private e:I

.field private f:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(IZ)Landroidx/core/app/p$e$a;
    .locals 0

    if-eqz p2, :cond_0

    .line 5729
    iget p2, p0, Landroidx/core/app/p$e$a;->e:I

    or-int/2addr p1, p2

    iput p1, p0, Landroidx/core/app/p$e$a;->e:I

    goto :goto_0

    .line 5731
    :cond_0
    iget p2, p0, Landroidx/core/app/p$e$a;->e:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroidx/core/app/p$e$a;->e:I

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a(I)Landroidx/core/app/p$e$a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/p;
            a = 0x0
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x0

    .line 5642
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/core/app/p$e$a;->c:I

    .line 5643
    iput v0, p0, Landroidx/core/app/p$e$a;->d:I

    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Landroidx/core/app/p$e$a;
    .locals 0
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    if-eqz p1, :cond_0

    .line 5598
    iput-object p1, p0, Landroidx/core/app/p$e$a;->a:Landroid/app/PendingIntent;

    return-object p0

    .line 5596
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bubble requires non-null pending intent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/p$e$a;
    .locals 2
    .param p1    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    if-eqz p1, :cond_1

    .line 5622
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5627
    iput-object p1, p0, Landroidx/core/app/p$e$a;->b:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0

    .line 5623
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "When using bitmap based icons, Bubbles require TYPE_ADAPTIVE_BITMAP, please use IconCompat#createWithAdaptiveBitmap instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5620
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Bubbles require non-null icon"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Z)Landroidx/core/app/p$e$a;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x1

    .line 5677
    invoke-direct {p0, v0, p1}, Landroidx/core/app/p$e$a;->a(IZ)Landroidx/core/app/p$e$a;

    return-object p0
.end method

.method public a()Landroidx/core/app/p$e;
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SyntheticAccessor"
        }
    .end annotation

    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 5716
    iget-object v0, p0, Landroidx/core/app/p$e$a;->a:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 5719
    iget-object v0, p0, Landroidx/core/app/p$e$a;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v0, :cond_0

    .line 5722
    new-instance v0, Landroidx/core/app/p$e;

    iget-object v2, p0, Landroidx/core/app/p$e$a;->a:Landroid/app/PendingIntent;

    iget-object v3, p0, Landroidx/core/app/p$e$a;->f:Landroid/app/PendingIntent;

    iget-object v4, p0, Landroidx/core/app/p$e$a;->b:Landroidx/core/graphics/drawable/IconCompat;

    iget v5, p0, Landroidx/core/app/p$e$a;->c:I

    iget v6, p0, Landroidx/core/app/p$e$a;->d:I

    iget v7, p0, Landroidx/core/app/p$e$a;->e:I

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroidx/core/app/p$e;-><init>(Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;IIILandroidx/core/app/p$1;)V

    return-object v0

    .line 5720
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must supply an icon for the bubble"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5717
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must supply pending intent to bubble"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(I)Landroidx/core/app/p$e$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 5659
    iput p1, p0, Landroidx/core/app/p$e$a;->d:I

    const/4 p1, 0x0

    .line 5660
    iput p1, p0, Landroidx/core/app/p$e$a;->c:I

    return-object p0
.end method

.method public b(Landroid/app/PendingIntent;)Landroidx/core/app/p$e$a;
    .locals 0
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 5704
    iput-object p1, p0, Landroidx/core/app/p$e$a;->f:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public b(Z)Landroidx/core/app/p$e$a;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x2

    .line 5695
    invoke-direct {p0, v0, p1}, Landroidx/core/app/p$e$a;->a(IZ)Landroidx/core/app/p$e$a;

    return-object p0
.end method
