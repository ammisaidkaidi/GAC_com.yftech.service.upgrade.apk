.class public Landroidx/recyclerview/widget/RecyclerView$j;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# instance fields
.field d:Landroidx/recyclerview/widget/RecyclerView$z;

.field final e:Landroid/graphics/Rect;

.field f:Z

.field g:Z


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 11629
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 11617
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->e:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 11618
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->f:Z

    const/4 p1, 0x0

    .line 11622
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11625
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11617
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->e:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 11618
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->f:Z

    const/4 p1, 0x0

    .line 11622
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 11637
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11617
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->e:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 11618
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->f:Z

    const/4 p1, 0x0

    .line 11622
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->g:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 11633
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 11617
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->e:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 11618
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->f:Z

    const/4 p1, 0x0

    .line 11622
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->g:Z

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$j;)V
    .locals 0

    .line 11641
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11617
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->e:Landroid/graphics/Rect;

    const/4 p1, 0x1

    .line 11618
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->f:Z

    const/4 p1, 0x0

    .line 11622
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$j;->g:Z

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 0

    .line 11651
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$z;->q()Z

    move-result p0

    return p0
.end method

.method public d()Z
    .locals 0

    .line 11661
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$z;->p()Z

    move-result p0

    return p0
.end method

.method public e()Z
    .locals 0

    .line 11672
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$z;->s()Z

    move-result p0

    return p0
.end method

.method public f()Z
    .locals 0

    .line 11683
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$z;->C()Z

    move-result p0

    return p0
.end method

.method public g()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11691
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$z;->d()I

    move-result p0

    return p0
.end method

.method public h()I
    .locals 0

    .line 11701
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$z;->e()I

    move-result p0

    return p0
.end method

.method public i()I
    .locals 0

    .line 11713
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$j;->d:Landroidx/recyclerview/widget/RecyclerView$z;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$z;->f()I

    move-result p0

    return p0
.end method
