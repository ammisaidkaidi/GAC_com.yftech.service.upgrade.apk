.class Landroidx/core/n/ao$i;
.super Landroidx/core/n/ao$h;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/am;
    a = 0x1d
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/n/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i"
.end annotation


# instance fields
.field private c:Landroidx/core/graphics/f;

.field private d:Landroidx/core/graphics/f;

.field private e:Landroidx/core/graphics/f;


# direct methods
.method constructor <init>(Landroidx/core/n/ao;Landroid/view/WindowInsets;)V
    .locals 0
    .param p1    # Landroidx/core/n/ao;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/WindowInsets;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 794
    invoke-direct {p0, p1, p2}, Landroidx/core/n/ao$h;-><init>(Landroidx/core/n/ao;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 789
    iput-object p1, p0, Landroidx/core/n/ao$i;->c:Landroidx/core/graphics/f;

    .line 790
    iput-object p1, p0, Landroidx/core/n/ao$i;->d:Landroidx/core/graphics/f;

    .line 791
    iput-object p1, p0, Landroidx/core/n/ao$i;->e:Landroidx/core/graphics/f;

    return-void
.end method

.method constructor <init>(Landroidx/core/n/ao;Landroidx/core/n/ao$i;)V
    .locals 0
    .param p1    # Landroidx/core/n/ao;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/core/n/ao$i;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 798
    invoke-direct {p0, p1, p2}, Landroidx/core/n/ao$h;-><init>(Landroidx/core/n/ao;Landroidx/core/n/ao$h;)V

    const/4 p1, 0x0

    .line 789
    iput-object p1, p0, Landroidx/core/n/ao$i;->c:Landroidx/core/graphics/f;

    .line 790
    iput-object p1, p0, Landroidx/core/n/ao$i;->d:Landroidx/core/graphics/f;

    .line 791
    iput-object p1, p0, Landroidx/core/n/ao$i;->e:Landroidx/core/graphics/f;

    return-void
.end method


# virtual methods
.method a(IIII)Landroidx/core/n/ao;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 832
    iget-object p0, p0, Landroidx/core/n/ao$i;->b:Landroid/view/WindowInsets;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/n/ao;->a(Landroid/view/WindowInsets;)Landroidx/core/n/ao;

    move-result-object p0

    return-object p0
.end method

.method i()Landroidx/core/graphics/f;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 804
    iget-object v0, p0, Landroidx/core/n/ao$i;->c:Landroidx/core/graphics/f;

    if-nez v0, :cond_0

    .line 805
    iget-object v0, p0, Landroidx/core/n/ao$i;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/f;->b(Landroid/graphics/Insets;)Landroidx/core/graphics/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/n/ao$i;->c:Landroidx/core/graphics/f;

    .line 807
    :cond_0
    iget-object p0, p0, Landroidx/core/n/ao$i;->c:Landroidx/core/graphics/f;

    return-object p0
.end method

.method j()Landroidx/core/graphics/f;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 813
    iget-object v0, p0, Landroidx/core/n/ao$i;->d:Landroidx/core/graphics/f;

    if-nez v0, :cond_0

    .line 814
    iget-object v0, p0, Landroidx/core/n/ao$i;->b:Landroid/view/WindowInsets;

    .line 815
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/f;->b(Landroid/graphics/Insets;)Landroidx/core/graphics/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/n/ao$i;->d:Landroidx/core/graphics/f;

    .line 817
    :cond_0
    iget-object p0, p0, Landroidx/core/n/ao$i;->d:Landroidx/core/graphics/f;

    return-object p0
.end method

.method k()Landroidx/core/graphics/f;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 823
    iget-object v0, p0, Landroidx/core/n/ao$i;->e:Landroidx/core/graphics/f;

    if-nez v0, :cond_0

    .line 824
    iget-object v0, p0, Landroidx/core/n/ao$i;->b:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getTappableElementInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/f;->b(Landroid/graphics/Insets;)Landroidx/core/graphics/f;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/n/ao$i;->e:Landroidx/core/graphics/f;

    .line 826
    :cond_0
    iget-object p0, p0, Landroidx/core/n/ao$i;->e:Landroidx/core/graphics/f;

    return-object p0
.end method
