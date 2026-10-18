.class public final Landroidx/core/n/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/n/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/Display$Mode;

.field private final b:Landroid/graphics/Point;

.field private final c:Z


# direct methods
.method constructor <init>(Landroid/graphics/Point;)V
    .locals 1
    .param p1    # Landroid/graphics/Point;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "physicalDisplaySize == null"

    .line 259
    invoke-static {p1, v0}, Landroidx/core/m/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 260
    iput-boolean v0, p0, Landroidx/core/n/c$a;->c:Z

    .line 261
    iput-object p1, p0, Landroidx/core/n/c$a;->b:Landroid/graphics/Point;

    const/4 p1, 0x0

    .line 262
    iput-object p1, p0, Landroidx/core/n/c$a;->a:Landroid/view/Display$Mode;

    return-void
.end method

.method constructor <init>(Landroid/view/Display$Mode;Z)V
    .locals 2
    .param p1    # Landroid/view/Display$Mode;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/am;
        a = 0x17
    .end annotation

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Display.Mode == null, can\'t wrap a null reference"

    .line 273
    invoke-static {p1, v0}, Landroidx/core/m/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iput-boolean p2, p0, Landroidx/core/n/c$a;->c:Z

    .line 276
    new-instance p2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Landroidx/core/n/c$a;->b:Landroid/graphics/Point;

    .line 277
    iput-object p1, p0, Landroidx/core/n/c$a;->a:Landroid/view/Display$Mode;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 286
    iget-object p0, p0, Landroidx/core/n/c$a;->b:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    return p0
.end method

.method public b()I
    .locals 0

    .line 295
    iget-object p0, p0, Landroidx/core/n/c$a;->b:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public c()Landroid/view/Display$Mode;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation build Landroidx/annotation/am;
        a = 0x17
    .end annotation

    .line 307
    iget-object p0, p0, Landroidx/core/n/c$a;->a:Landroid/view/Display$Mode;

    return-object p0
.end method

.method public d()Z
    .locals 0

    .line 317
    iget-boolean p0, p0, Landroidx/core/n/c$a;->c:Z

    return p0
.end method
