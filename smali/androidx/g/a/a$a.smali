.class Landroidx/g/a/a$a;
.super Landroidx/core/n/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/g/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/g/a/a;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroidx/g/a/a;)V
    .locals 0

    .line 2349
    iput-object p1, p0, Landroidx/g/a/a$a;->a:Landroidx/g/a/a;

    invoke-direct {p0}, Landroidx/core/n/a;-><init>()V

    .line 2350
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroidx/g/a/a$a;->b:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Landroidx/core/n/a/d;Landroid/view/ViewGroup;)V
    .locals 3

    .line 2426
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 2428
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2429
    invoke-static {v1}, Landroidx/g/a/a;->l(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2430
    invoke-virtual {p1, v1}, Landroidx/core/n/a/d;->c(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroidx/core/n/a/d;Landroidx/core/n/a/d;)V
    .locals 0

    .line 2442
    iget-object p0, p0, Landroidx/g/a/a$a;->b:Landroid/graphics/Rect;

    .line 2444
    invoke-virtual {p2, p0}, Landroidx/core/n/a/d;->a(Landroid/graphics/Rect;)V

    .line 2445
    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->b(Landroid/graphics/Rect;)V

    .line 2447
    invoke-virtual {p2, p0}, Landroidx/core/n/a/d;->c(Landroid/graphics/Rect;)V

    .line 2448
    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->d(Landroid/graphics/Rect;)V

    .line 2450
    invoke-virtual {p2}, Landroidx/core/n/a/d;->m()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->e(Z)V

    .line 2451
    invoke-virtual {p2}, Landroidx/core/n/a/d;->v()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->a(Ljava/lang/CharSequence;)V

    .line 2452
    invoke-virtual {p2}, Landroidx/core/n/a/d;->w()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->b(Ljava/lang/CharSequence;)V

    .line 2453
    invoke-virtual {p2}, Landroidx/core/n/a/d;->y()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->e(Ljava/lang/CharSequence;)V

    .line 2455
    invoke-virtual {p2}, Landroidx/core/n/a/d;->r()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->j(Z)V

    .line 2456
    invoke-virtual {p2}, Landroidx/core/n/a/d;->p()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->h(Z)V

    .line 2457
    invoke-virtual {p2}, Landroidx/core/n/a/d;->k()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->c(Z)V

    .line 2458
    invoke-virtual {p2}, Landroidx/core/n/a/d;->l()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->d(Z)V

    .line 2459
    invoke-virtual {p2}, Landroidx/core/n/a/d;->n()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->f(Z)V

    .line 2460
    invoke-virtual {p2}, Landroidx/core/n/a/d;->o()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->g(Z)V

    .line 2461
    invoke-virtual {p2}, Landroidx/core/n/a/d;->q()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->i(Z)V

    .line 2463
    invoke-virtual {p2}, Landroidx/core/n/a/d;->f()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->d(I)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/n/a/d;)V
    .locals 3

    .line 2354
    sget-boolean v0, Landroidx/g/a/a;->i:Z

    if-eqz v0, :cond_0

    .line 2355
    invoke-super {p0, p1, p2}, Landroidx/core/n/a;->a(Landroid/view/View;Landroidx/core/n/a/d;)V

    goto :goto_0

    .line 2360
    :cond_0
    invoke-static {p2}, Landroidx/core/n/a/d;->a(Landroidx/core/n/a/d;)Landroidx/core/n/a/d;

    move-result-object v0

    .line 2361
    invoke-super {p0, p1, v0}, Landroidx/core/n/a;->a(Landroid/view/View;Landroidx/core/n/a/d;)V

    .line 2363
    invoke-virtual {p2, p1}, Landroidx/core/n/a/d;->b(Landroid/view/View;)V

    .line 2364
    invoke-static {p1}, Landroidx/core/n/af;->q(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v1

    .line 2365
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 2366
    check-cast v1, Landroid/view/View;

    invoke-virtual {p2, v1}, Landroidx/core/n/a/d;->e(Landroid/view/View;)V

    .line 2368
    :cond_1
    invoke-direct {p0, p2, v0}, Landroidx/g/a/a$a;->a(Landroidx/core/n/a/d;Landroidx/core/n/a/d;)V

    .line 2369
    invoke-virtual {v0}, Landroidx/core/n/a/d;->z()V

    .line 2371
    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p2, p1}, Landroidx/g/a/a$a;->a(Landroidx/core/n/a/d;Landroid/view/ViewGroup;)V

    .line 2374
    :goto_0
    const-class p0, Landroidx/g/a/a;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/n/a/d;->b(Ljava/lang/CharSequence;)V

    const/4 p0, 0x0

    .line 2379
    invoke-virtual {p2, p0}, Landroidx/core/n/a/d;->c(Z)V

    .line 2380
    invoke-virtual {p2, p0}, Landroidx/core/n/a/d;->d(Z)V

    .line 2381
    sget-object p0, Landroidx/core/n/a/d$a;->a:Landroidx/core/n/a/d$a;

    invoke-virtual {p2, p0}, Landroidx/core/n/a/d;->b(Landroidx/core/n/a/d$a;)Z

    .line 2382
    sget-object p0, Landroidx/core/n/a/d$a;->b:Landroidx/core/n/a/d$a;

    invoke-virtual {p2, p0}, Landroidx/core/n/a/d;->b(Landroidx/core/n/a/d$a;)Z

    return-void
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .line 2419
    sget-boolean v0, Landroidx/g/a/a;->i:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Landroidx/g/a/a;->l(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 2420
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/n/a;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 2399
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 2400
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    .line 2401
    iget-object p2, p0, Landroidx/g/a/a$a;->a:Landroidx/g/a/a;

    invoke-virtual {p2}, Landroidx/g/a/a;->c()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2403
    iget-object v0, p0, Landroidx/g/a/a$a;->a:Landroidx/g/a/a;

    invoke-virtual {v0, p2}, Landroidx/g/a/a;->e(Landroid/view/View;)I

    move-result p2

    .line 2404
    iget-object p0, p0, Landroidx/g/a/a$a;->a:Landroidx/g/a/a;

    invoke-virtual {p0, p2}, Landroidx/g/a/a;->b(I)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2406
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 2413
    :cond_1
    invoke-super {p0, p1, p2}, Landroidx/core/n/a;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 2387
    invoke-super {p0, p1, p2}, Landroidx/core/n/a;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2389
    const-class p0, Landroidx/g/a/a;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method
