.class public Landroidx/core/j/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:I

.field private final c:I

.field private final d:Z

.field private final e:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/z;
            a = 0x0L
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/z;
            a = 0x1L
            b = 0x3e8L
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    invoke-static {p1}, Landroidx/core/m/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Landroidx/core/j/b$c;->a:Landroid/net/Uri;

    .line 348
    iput p2, p0, Landroidx/core/j/b$c;->b:I

    .line 349
    iput p3, p0, Landroidx/core/j/b$c;->c:I

    .line 350
    iput-boolean p4, p0, Landroidx/core/j/b$c;->d:Z

    .line 351
    iput p5, p0, Landroidx/core/j/b$c;->e:I

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 358
    iget-object p0, p0, Landroidx/core/j/b$c;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public b()I
    .locals 0
    .annotation build Landroidx/annotation/z;
        a = 0x0L
    .end annotation

    .line 365
    iget p0, p0, Landroidx/core/j/b$c;->b:I

    return p0
.end method

.method public c()I
    .locals 0
    .annotation build Landroidx/annotation/z;
        a = 0x1L
        b = 0x3e8L
    .end annotation

    .line 372
    iget p0, p0, Landroidx/core/j/b$c;->c:I

    return p0
.end method

.method public d()Z
    .locals 0

    .line 379
    iget-boolean p0, p0, Landroidx/core/j/b$c;->d:Z

    return p0
.end method

.method public e()I
    .locals 0

    .line 388
    iget p0, p0, Landroidx/core/j/b$c;->e:I

    return p0
.end method
