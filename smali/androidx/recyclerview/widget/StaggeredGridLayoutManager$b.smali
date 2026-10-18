.class public Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;
.super Landroidx/recyclerview/widget/RecyclerView$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/StaggeredGridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:I = -0x1


# instance fields
.field b:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

.field c:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 2454
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2450
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2462
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 2458
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$j;)V
    .locals 0

    .line 2466
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(Landroidx/recyclerview/widget/RecyclerView$j;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 2478
    iput-boolean p1, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    return-void
.end method

.method public a()Z
    .locals 0

    .line 2488
    iget-boolean p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->c:Z

    return p0
.end method

.method public final b()I
    .locals 1

    .line 2498
    iget-object v0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2501
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$b;->b:Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;

    iget p0, p0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$e;->f:I

    return p0
.end method
