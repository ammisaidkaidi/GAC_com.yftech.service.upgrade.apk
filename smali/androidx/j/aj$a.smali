.class Landroidx/j/aj$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/j/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/j/ag;

.field b:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroidx/j/ag;Landroid/view/ViewGroup;)V
    .locals 0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Landroidx/j/aj$a;->a:Landroidx/j/ag;

    .line 240
    iput-object p2, p0, Landroidx/j/aj$a;->b:Landroid/view/ViewGroup;

    return-void
.end method

.method private a()V
    .locals 1

    .line 244
    iget-object v0, p0, Landroidx/j/aj$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 245
    iget-object v0, p0, Landroidx/j/aj$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 5

    .line 268
    invoke-direct {p0}, Landroidx/j/aj$a;->a()V

    .line 271
    sget-object v0, Landroidx/j/aj;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/j/aj$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 277
    :cond_0
    invoke-static {}, Landroidx/j/aj;->a()Landroidx/c/a;

    move-result-object v0

    .line 278
    iget-object v2, p0, Landroidx/j/aj$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 281
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 282
    iget-object v4, p0, Landroidx/j/aj$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4, v2}, Landroidx/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 283
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 284
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 286
    :cond_2
    :goto_0
    iget-object v4, p0, Landroidx/j/aj$a;->a:Landroidx/j/ag;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v2, p0, Landroidx/j/aj$a;->a:Landroidx/j/ag;

    new-instance v4, Landroidx/j/aj$a$1;

    invoke-direct {v4, p0, v0}, Landroidx/j/aj$a$1;-><init>(Landroidx/j/aj$a;Landroidx/c/a;)V

    invoke-virtual {v2, v4}, Landroidx/j/ag;->a(Landroidx/j/ag$e;)Landroidx/j/ag;

    .line 295
    iget-object v0, p0, Landroidx/j/aj$a;->a:Landroidx/j/ag;

    iget-object v2, p0, Landroidx/j/aj$a;->b:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroidx/j/ag;->a(Landroid/view/ViewGroup;Z)V

    if-eqz v3, :cond_3

    .line 297
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/ag;

    .line 298
    iget-object v3, p0, Landroidx/j/aj$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroidx/j/ag;->f(Landroid/view/View;)V

    goto :goto_1

    .line 301
    :cond_3
    iget-object v0, p0, Landroidx/j/aj$a;->a:Landroidx/j/ag;

    iget-object p0, p0, Landroidx/j/aj$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroidx/j/ag;->a(Landroid/view/ViewGroup;)V

    return v1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 254
    invoke-direct {p0}, Landroidx/j/aj$a;->a()V

    .line 256
    sget-object p1, Landroidx/j/aj;->a:Ljava/util/ArrayList;

    iget-object v0, p0, Landroidx/j/aj$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 257
    invoke-static {}, Landroidx/j/aj;->a()Landroidx/c/a;

    move-result-object p1

    iget-object v0, p0, Landroidx/j/aj$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 258
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 259
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/ag;

    .line 260
    iget-object v1, p0, Landroidx/j/aj$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroidx/j/ag;->f(Landroid/view/View;)V

    goto :goto_0

    .line 263
    :cond_0
    iget-object p0, p0, Landroidx/j/aj$a;->a:Landroidx/j/ag;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/j/ag;->c(Z)V

    return-void
.end method
