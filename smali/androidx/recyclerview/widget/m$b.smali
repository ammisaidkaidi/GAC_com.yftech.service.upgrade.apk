.class Landroidx/recyclerview/widget/m$b;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/m;

.field private b:Z


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/m;)V
    .locals 0

    .line 2316
    iput-object p1, p0, Landroidx/recyclerview/widget/m$b;->a:Landroidx/recyclerview/widget/m;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x1

    .line 2314
    iput-boolean p1, p0, Landroidx/recyclerview/widget/m$b;->b:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    .line 2324
    iput-boolean v0, p0, Landroidx/recyclerview/widget/m$b;->b:Z

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 2334
    iget-boolean v0, p0, Landroidx/recyclerview/widget/m$b;->b:Z

    if-nez v0, :cond_0

    return-void

    .line 2337
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/m$b;->a:Landroidx/recyclerview/widget/m;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/m;->a(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2339
    iget-object v1, p0, Landroidx/recyclerview/widget/m$b;->a:Landroidx/recyclerview/widget/m;

    iget-object v1, v1, Landroidx/recyclerview/widget/m;->z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->b(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$z;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2341
    iget-object v1, p0, Landroidx/recyclerview/widget/m$b;->a:Landroidx/recyclerview/widget/m;

    iget-object v1, v1, Landroidx/recyclerview/widget/m;->w:Landroidx/recyclerview/widget/m$a;

    iget-object v2, p0, Landroidx/recyclerview/widget/m$b;->a:Landroidx/recyclerview/widget/m;

    iget-object v2, v2, Landroidx/recyclerview/widget/m;->z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/m$a;->c(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$z;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 2344
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2348
    iget-object v2, p0, Landroidx/recyclerview/widget/m$b;->a:Landroidx/recyclerview/widget/m;

    iget v2, v2, Landroidx/recyclerview/widget/m;->v:I

    if-ne v1, v2, :cond_2

    .line 2349
    iget-object v1, p0, Landroidx/recyclerview/widget/m$b;->a:Landroidx/recyclerview/widget/m;

    iget v1, v1, Landroidx/recyclerview/widget/m;->v:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2350
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 2351
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 2352
    iget-object v1, p0, Landroidx/recyclerview/widget/m$b;->a:Landroidx/recyclerview/widget/m;

    iput v2, v1, Landroidx/recyclerview/widget/m;->r:F

    .line 2353
    iget-object v1, p0, Landroidx/recyclerview/widget/m$b;->a:Landroidx/recyclerview/widget/m;

    iput p1, v1, Landroidx/recyclerview/widget/m;->s:F

    .line 2354
    iget-object p1, p0, Landroidx/recyclerview/widget/m$b;->a:Landroidx/recyclerview/widget/m;

    iget-object v1, p0, Landroidx/recyclerview/widget/m$b;->a:Landroidx/recyclerview/widget/m;

    const/4 v2, 0x0

    iput v2, v1, Landroidx/recyclerview/widget/m;->u:F

    iput v2, p1, Landroidx/recyclerview/widget/m;->t:F

    .line 2359
    iget-object p1, p0, Landroidx/recyclerview/widget/m$b;->a:Landroidx/recyclerview/widget/m;

    iget-object p1, p1, Landroidx/recyclerview/widget/m;->w:Landroidx/recyclerview/widget/m$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/m$a;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2360
    iget-object p0, p0, Landroidx/recyclerview/widget/m$b;->a:Landroidx/recyclerview/widget/m;

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Landroidx/recyclerview/widget/m;->a(Landroidx/recyclerview/widget/RecyclerView$z;I)V

    :cond_2
    return-void
.end method
