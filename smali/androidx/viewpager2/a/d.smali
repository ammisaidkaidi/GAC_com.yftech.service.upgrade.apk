.class final Landroidx/viewpager2/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/viewpager2/a/h;

.field private final b:Landroidx/viewpager2/a/g;

.field private final c:Landroidx/recyclerview/widget/RecyclerView;

.field private d:Landroid/view/VelocityTracker;

.field private e:I

.field private f:F

.field private g:I

.field private h:J


# direct methods
.method constructor <init>(Landroidx/viewpager2/a/h;Landroidx/viewpager2/a/g;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Landroidx/viewpager2/a/d;->a:Landroidx/viewpager2/a/h;

    .line 46
    iput-object p2, p0, Landroidx/viewpager2/a/d;->b:Landroidx/viewpager2/a/g;

    .line 47
    iput-object p3, p0, Landroidx/viewpager2/a/d;->c:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method private a(JIFF)V
    .locals 8

    .line 134
    iget-wide v0, p0, Landroidx/viewpager2/a/d;->h:J

    const/4 v7, 0x0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 135
    iget-object p0, p0, Landroidx/viewpager2/a/d;->d:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private d()V
    .locals 1

    .line 124
    iget-object v0, p0, Landroidx/viewpager2/a/d;->d:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 125
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroidx/viewpager2/a/d;->d:Landroid/view/VelocityTracker;

    .line 126
    iget-object v0, p0, Landroidx/viewpager2/a/d;->a:Landroidx/viewpager2/a/h;

    invoke-virtual {v0}, Landroidx/viewpager2/a/h;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Landroidx/viewpager2/a/d;->e:I

    goto :goto_0

    .line 129
    :cond_0
    iget-object p0, p0, Landroidx/viewpager2/a/d;->d:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    return-void
.end method


# virtual methods
.method a()Z
    .locals 0

    .line 51
    iget-object p0, p0, Landroidx/viewpager2/a/d;->b:Landroidx/viewpager2/a/g;

    invoke-virtual {p0}, Landroidx/viewpager2/a/g;->g()Z

    move-result p0

    return p0
.end method

.method a(F)Z
    .locals 9
    .annotation build Landroidx/annotation/aw;
    .end annotation

    .line 74
    iget-object v0, p0, Landroidx/viewpager2/a/d;->b:Landroidx/viewpager2/a/g;

    invoke-virtual {v0}, Landroidx/viewpager2/a/g;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 80
    :cond_0
    iget v0, p0, Landroidx/viewpager2/a/d;->f:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroidx/viewpager2/a/d;->f:F

    .line 82
    iget p1, p0, Landroidx/viewpager2/a/d;->f:F

    iget v0, p0, Landroidx/viewpager2/a/d;->g:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 84
    iget v0, p0, Landroidx/viewpager2/a/d;->g:I

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/viewpager2/a/d;->g:I

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 87
    iget-object v0, p0, Landroidx/viewpager2/a/d;->a:Landroidx/viewpager2/a/h;

    invoke-virtual {v0}, Landroidx/viewpager2/a/h;->getOrientation()I

    move-result v0

    const/4 v8, 0x1

    if-nez v0, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    move v2, p1

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eqz v0, :cond_3

    move p1, v1

    :cond_3
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 92
    iget v5, p0, Landroidx/viewpager2/a/d;->f:F

    move v6, v5

    goto :goto_2

    :cond_4
    move v6, v1

    :goto_2
    if-eqz v0, :cond_5

    move v7, v1

    goto :goto_3

    .line 93
    :cond_5
    iget v0, p0, Landroidx/viewpager2/a/d;->f:F

    move v7, v0

    .line 95
    :goto_3
    iget-object v0, p0, Landroidx/viewpager2/a/d;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    const/4 v5, 0x2

    move-object v2, p0

    .line 96
    invoke-direct/range {v2 .. v7}, Landroidx/viewpager2/a/d;->a(JIFF)V

    return v8
.end method

.method b()Z
    .locals 7
    .annotation build Landroidx/annotation/aw;
    .end annotation

    .line 56
    iget-object v0, p0, Landroidx/viewpager2/a/d;->b:Landroidx/viewpager2/a/g;

    invoke-virtual {v0}, Landroidx/viewpager2/a/g;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 59
    :cond_0
    iput v1, p0, Landroidx/viewpager2/a/d;->g:I

    int-to-float v0, v1

    iput v0, p0, Landroidx/viewpager2/a/d;->f:F

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/viewpager2/a/d;->h:J

    .line 61
    invoke-direct {p0}, Landroidx/viewpager2/a/d;->d()V

    .line 63
    iget-object v0, p0, Landroidx/viewpager2/a/d;->b:Landroidx/viewpager2/a/g;

    invoke-virtual {v0}, Landroidx/viewpager2/a/g;->b()V

    .line 64
    iget-object v0, p0, Landroidx/viewpager2/a/d;->b:Landroidx/viewpager2/a/g;

    invoke-virtual {v0}, Landroidx/viewpager2/a/g;->e()Z

    move-result v0

    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Landroidx/viewpager2/a/d;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->j()V

    .line 68
    :cond_1
    iget-wide v2, p0, Landroidx/viewpager2/a/d;->h:J

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroidx/viewpager2/a/d;->a(JIFF)V

    const/4 p0, 0x1

    return p0
.end method

.method c()Z
    .locals 3
    .annotation build Landroidx/annotation/aw;
    .end annotation

    .line 102
    iget-object v0, p0, Landroidx/viewpager2/a/d;->b:Landroidx/viewpager2/a/g;

    invoke-virtual {v0}, Landroidx/viewpager2/a/g;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 107
    :cond_0
    iget-object v0, p0, Landroidx/viewpager2/a/d;->b:Landroidx/viewpager2/a/g;

    invoke-virtual {v0}, Landroidx/viewpager2/a/g;->c()V

    .line 111
    iget-object v0, p0, Landroidx/viewpager2/a/d;->d:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    .line 112
    iget v2, p0, Landroidx/viewpager2/a/d;->e:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 113
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    float-to-int v1, v1

    .line 114
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 116
    iget-object v2, p0, Landroidx/viewpager2/a/d;->c:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->c(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object p0, p0, Landroidx/viewpager2/a/d;->a:Landroidx/viewpager2/a/h;

    invoke-virtual {p0}, Landroidx/viewpager2/a/h;->f()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
