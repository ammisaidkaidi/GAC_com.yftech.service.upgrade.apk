.class public abstract Landroidx/recyclerview/widget/m$d;
.super Landroidx/recyclerview/widget/m$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# instance fields
.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 2233
    invoke-direct {p0}, Landroidx/recyclerview/widget/m$a;-><init>()V

    .line 2234
    iput p2, p0, Landroidx/recyclerview/widget/m$d;->d:I

    .line 2235
    iput p1, p0, Landroidx/recyclerview/widget/m$d;->e:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2293
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/m$d;->g(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)I

    move-result v0

    .line 2294
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/m$d;->f(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)I

    move-result p0

    .line 2293
    invoke-static {v0, p0}, Landroidx/recyclerview/widget/m$d;->b(II)I

    move-result p0

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 2246
    iput p1, p0, Landroidx/recyclerview/widget/m$d;->d:I

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 2257
    iput p1, p0, Landroidx/recyclerview/widget/m$d;->e:I

    return-void
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2272
    iget p0, p0, Landroidx/recyclerview/widget/m$d;->d:I

    return p0
.end method

.method public g(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)I
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2287
    iget p0, p0, Landroidx/recyclerview/widget/m$d;->e:I

    return p0
.end method
