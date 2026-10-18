.class public Landroidx/d/b/b/q;
.super Landroidx/d/e/c;
.source "SourceFile"

# interfaces
.implements Landroidx/d/b/b/a;
.implements Landroidx/d/b/b/s$g;


# instance fields
.field protected a:[Landroid/view/View;

.field private b:Z

.field private c:Z

.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Landroidx/d/e/c;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Landroidx/d/b/b/q;->b:Z

    .line 18
    iput-boolean p1, p0, Landroidx/d/b/b/q;->c:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Landroidx/d/e/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Landroidx/d/b/b/q;->b:Z

    .line 18
    iput-boolean p1, p0, Landroidx/d/b/b/q;->c:Z

    .line 28
    invoke-virtual {p0, p2}, Landroidx/d/b/b/q;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroidx/d/e/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Landroidx/d/b/b/q;->b:Z

    .line 18
    iput-boolean p1, p0, Landroidx/d/b/b/q;->c:Z

    .line 33
    invoke-virtual {p0, p2}, Landroidx/d/b/b/q;->a(Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/AttributeSet;)V
    .locals 4

    .line 40
    invoke-super {p0, p1}, Landroidx/d/e/c;->a(Landroid/util/AttributeSet;)V

    if-eqz p1, :cond_3

    .line 42
    invoke-virtual {p0}, Landroidx/d/b/b/q;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/d/e/m$m;->MotionHelper:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 46
    sget v3, Landroidx/d/e/m$m;->MotionHelper_onShow:I

    if-ne v2, v3, :cond_0

    .line 47
    iget-boolean v3, p0, Landroidx/d/b/b/q;->b:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/d/b/b/q;->b:Z

    goto :goto_1

    .line 48
    :cond_0
    sget v3, Landroidx/d/e/m$m;->MotionHelper_onHide:I

    if-ne v2, v3, :cond_1

    .line 49
    iget-boolean v3, p0, Landroidx/d/b/b/q;->c:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/d/b/b/q;->c:Z

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/d/b/b/s;I)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/d/b/b/s;II)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/d/b/b/s;IIF)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/d/b/b/s;IZF)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Landroidx/d/b/b/q;->b:Z

    return p0
.end method

.method public b()Z
    .locals 0

    .line 71
    iget-boolean p0, p0, Landroidx/d/b/b/q;->c:Z

    return p0
.end method

.method public getProgress()F
    .locals 0

    .line 76
    iget p0, p0, Landroidx/d/b/b/q;->d:F

    return p0
.end method

.method public setProgress(F)V
    .locals 5

    .line 81
    iput p1, p0, Landroidx/d/b/b/q;->d:F

    .line 82
    iget v0, p0, Landroidx/d/b/b/q;->q:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Landroidx/d/b/b/q;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/d/e/d;

    invoke-virtual {p0, v0}, Landroidx/d/b/b/q;->e(Landroidx/d/e/d;)[Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/d/b/b/q;->a:[Landroid/view/View;

    .line 85
    :goto_0
    iget v0, p0, Landroidx/d/b/b/q;->q:I

    if-ge v1, v0, :cond_2

    .line 86
    iget-object v0, p0, Landroidx/d/b/b/q;->a:[Landroid/view/View;

    aget-object v0, v0, v1

    .line 87
    invoke-virtual {p0, v0, p1}, Landroidx/d/b/b/q;->a(Landroid/view/View;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroidx/d/b/b/q;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 91
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 95
    instance-of v4, v3, Landroidx/d/b/b/q;

    if-eqz v4, :cond_1

    goto :goto_2

    .line 98
    :cond_1
    invoke-virtual {p0, v3, p1}, Landroidx/d/b/b/q;->a(Landroid/view/View;F)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
