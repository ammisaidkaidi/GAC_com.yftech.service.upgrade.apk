.class Landroidx/core/n/ao$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/n/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroidx/core/n/ao;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1004
    new-instance v0, Landroidx/core/n/ao;

    const/4 v1, 0x0

    check-cast v1, Landroidx/core/n/ao;

    invoke-direct {v0, v1}, Landroidx/core/n/ao;-><init>(Landroidx/core/n/ao;)V

    invoke-direct {p0, v0}, Landroidx/core/n/ao$b;-><init>(Landroidx/core/n/ao;)V

    return-void
.end method

.method constructor <init>(Landroidx/core/n/ao;)V
    .locals 0
    .param p1    # Landroidx/core/n/ao;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1007
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1008
    iput-object p1, p0, Landroidx/core/n/ao$b;->a:Landroidx/core/n/ao;

    return-void
.end method


# virtual methods
.method a()Landroidx/core/n/ao;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1025
    iget-object p0, p0, Landroidx/core/n/ao$b;->a:Landroidx/core/n/ao;

    return-object p0
.end method

.method a(Landroidx/core/graphics/f;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/f;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    return-void
.end method

.method a(Landroidx/core/n/d;)V
    .locals 0
    .param p1    # Landroidx/core/n/d;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    return-void
.end method

.method b(Landroidx/core/graphics/f;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/f;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    return-void
.end method

.method c(Landroidx/core/graphics/f;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/f;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    return-void
.end method

.method d(Landroidx/core/graphics/f;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/f;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    return-void
.end method

.method e(Landroidx/core/graphics/f;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/f;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    return-void
.end method
