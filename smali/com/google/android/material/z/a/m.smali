.class public Lcom/google/android/material/z/a/m;
.super Landroid/app/SharedElementCallback;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/am;
    a = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/z/a/m$b;,
        Lcom/google/android/material/z/a/m$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private f:Lcom/google/android/material/z/a/m$a;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lcom/google/android/material/z/a/m;->b:Z

    .line 57
    iput-boolean v0, p0, Lcom/google/android/material/z/a/m;->c:Z

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/google/android/material/z/a/m;->d:Z

    .line 60
    new-instance v0, Lcom/google/android/material/z/a/m$b;

    invoke-direct {v0}, Lcom/google/android/material/z/a/m$b;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/z/a/m;->f:Lcom/google/android/material/z/a/m$a;

    return-void
.end method

.method static synthetic a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 52
    sput-object p0, Lcom/google/android/material/z/a/m;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private a(Landroid/app/Activity;Landroid/view/Window;)V
    .locals 2

    .line 256
    invoke-virtual {p2}, Landroid/view/Window;->getSharedElementReturnTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 257
    instance-of v1, v0, Lcom/google/android/material/z/a/l;

    if-eqz v1, :cond_0

    .line 258
    check-cast v0, Lcom/google/android/material/z/a/l;

    const/4 v1, 0x1

    .line 259
    invoke-virtual {v0, v1}, Lcom/google/android/material/z/a/l;->b(Z)V

    .line 260
    new-instance v1, Lcom/google/android/material/z/a/m$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/z/a/m$2;-><init>(Lcom/google/android/material/z/a/m;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/z/a/l;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 278
    iget-boolean p1, p0, Lcom/google/android/material/z/a/m;->c:Z

    if-eqz p1, :cond_0

    .line 279
    invoke-static {p2, v0}, Lcom/google/android/material/z/a/m;->a(Landroid/view/Window;Lcom/google/android/material/z/a/l;)V

    .line 280
    new-instance p1, Lcom/google/android/material/z/a/m$3;

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/z/a/m$3;-><init>(Lcom/google/android/material/z/a/m;Landroid/view/Window;)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/z/a/l;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/view/Window;)V
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/google/android/material/z/a/m;->d(Landroid/view/Window;)V

    return-void
.end method

.method private static a(Landroid/view/Window;Lcom/google/android/material/z/a/l;)V
    .locals 2

    .line 325
    invoke-virtual {p1}, Lcom/google/android/material/z/a/l;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/view/Window;->setTransitionBackgroundFadeDuration(J)V

    return-void
.end method

.method static synthetic b(Landroid/view/Window;)V
    .locals 0

    .line 52
    invoke-static {p0}, Lcom/google/android/material/z/a/m;->e(Landroid/view/Window;)V

    return-void
.end method

.method private c(Landroid/view/Window;)V
    .locals 2

    .line 231
    invoke-virtual {p1}, Landroid/view/Window;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    .line 232
    instance-of v1, v0, Lcom/google/android/material/z/a/l;

    if-eqz v1, :cond_1

    .line 233
    check-cast v0, Lcom/google/android/material/z/a/l;

    .line 234
    iget-boolean v1, p0, Lcom/google/android/material/z/a/m;->d:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 235
    invoke-virtual {p1, v1}, Landroid/view/Window;->setSharedElementReenterTransition(Landroid/transition/Transition;)V

    .line 237
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/material/z/a/m;->c:Z

    if-eqz v1, :cond_1

    .line 238
    invoke-static {p1, v0}, Lcom/google/android/material/z/a/m;->a(Landroid/view/Window;Lcom/google/android/material/z/a/l;)V

    .line 239
    new-instance v1, Lcom/google/android/material/z/a/m$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/z/a/m$1;-><init>(Lcom/google/android/material/z/a/m;Landroid/view/Window;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/z/a/l;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    :cond_1
    return-void
.end method

.method static synthetic d()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 52
    sget-object v0, Lcom/google/android/material/z/a/m;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private static d(Landroid/view/Window;)V
    .locals 2

    .line 302
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 303
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 304
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    sget-object v0, Landroidx/core/graphics/c;->a:Landroidx/core/graphics/c;

    const/4 v1, 0x0

    .line 306
    invoke-static {v1, v0}, Landroidx/core/graphics/b;->a(ILandroidx/core/graphics/c;)Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 305
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private static e(Landroid/view/Window;)V
    .locals 0

    .line 316
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/material/z/a/m$a;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 172
    iget-object p0, p0, Lcom/google/android/material/z/a/m;->f:Lcom/google/android/material/z/a/m$a;

    return-object p0
.end method

.method public a(Lcom/google/android/material/z/a/m$a;)V
    .locals 0
    .param p1    # Lcom/google/android/material/z/a/m$a;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 183
    iput-object p1, p0, Lcom/google/android/material/z/a/m;->f:Lcom/google/android/material/z/a/m$a;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 208
    iput-boolean p1, p0, Lcom/google/android/material/z/a/m;->c:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/google/android/material/z/a/m;->d:Z

    return-void
.end method

.method public b()Z
    .locals 0

    .line 193
    iget-boolean p0, p0, Lcom/google/android/material/z/a/m;->c:Z

    return p0
.end method

.method public c()Z
    .locals 0

    .line 217
    iget-boolean p0, p0, Lcom/google/android/material/z/a/m;->d:Z

    return p0
.end method

.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Matrix;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 88
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/material/z/a/m;->a:Ljava/lang/ref/WeakReference;

    .line 89
    invoke-super {p0, p1, p2, p3}, Landroid/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 95
    invoke-super {p0, p1, p2}, Landroid/app/SharedElementCallback;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 96
    sget-object p2, Lcom/google/android/material/z/a/m;->a:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/material/z/a/m;->f:Lcom/google/android/material/z/a/m$a;

    if-eqz p2, :cond_0

    .line 97
    sget-object p2, Lcom/google/android/material/z/a/m;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    if-eqz p2, :cond_0

    .line 99
    iget-object p0, p0, Lcom/google/android/material/z/a/m;->f:Lcom/google/android/material/z/a/m$a;

    invoke-interface {p0, p2}, Lcom/google/android/material/z/a/m$a;->a(Landroid/view/View;)Lcom/google/android/material/t/o;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 102
    sget p2, Lcom/google/android/material/a$h;->mtrl_motion_snapshot_view:I

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object p1
.end method

.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 112
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 113
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_1

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/internal/b;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 117
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    .line 118
    iget-boolean v0, p0, Lcom/google/android/material/z/a/m;->b:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0, p2}, Lcom/google/android/material/z/a/m;->c(Landroid/view/Window;)V

    goto :goto_0

    .line 121
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/z/a/m;->a(Landroid/app/Activity;Landroid/view/Window;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 156
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    .line 157
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget v0, Lcom/google/android/material/a$h;->mtrl_motion_snapshot_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 159
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget v0, Lcom/google/android/material/a$h;->mtrl_motion_snapshot_view:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 162
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/z/a/m;->b:Z

    if-nez p1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 163
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lcom/google/android/material/z/a/v;->b(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/z/a/m;->e:Landroid/graphics/Rect;

    .line 166
    :cond_1
    iput-boolean p3, p0, Lcom/google/android/material/z/a/m;->b:Z

    return-void
.end method

.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 133
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 136
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    sget v1, Lcom/google/android/material/a$h;->mtrl_motion_snapshot_view:I

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, v1, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 139
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/material/z/a/m;->b:Z

    if-nez p1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/z/a/m;->e:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    .line 142
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 143
    iget-object p2, p0, Lcom/google/android/material/z/a/m;->e:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    const/high16 p3, 0x40000000    # 2.0f

    invoke-static {p2, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 144
    iget-object v0, p0, Lcom/google/android/material/z/a/m;->e:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {v0, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 145
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 146
    iget-object p2, p0, Lcom/google/android/material/z/a/m;->e:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/google/android/material/z/a/m;->e:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/google/android/material/z/a/m;->e:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object p0, p0, Lcom/google/android/material/z/a/m;->e:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/view/View;->layout(IIII)V

    :cond_1
    return-void
.end method
