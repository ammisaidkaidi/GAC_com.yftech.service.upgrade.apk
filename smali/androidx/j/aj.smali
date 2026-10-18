.class public Landroidx/j/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/j/aj$a;
    }
.end annotation


# static fields
.field static a:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/String; = "TransitionManager"

.field private static c:Landroidx/j/ag;

.field private static f:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/c/a<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroidx/j/ag;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private d:Landroidx/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/a<",
            "Landroidx/j/ac;",
            "Landroidx/j/ag;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroidx/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/a<",
            "Landroidx/j/ac;",
            "Landroidx/c/a<",
            "Landroidx/j/ac;",
            "Landroidx/j/ag;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 83
    new-instance v0, Landroidx/j/c;

    invoke-direct {v0}, Landroidx/j/c;-><init>()V

    sput-object v0, Landroidx/j/aj;->c:Landroidx/j/ag;

    .line 88
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/j/aj;->f:Ljava/lang/ThreadLocal;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroidx/j/aj;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroidx/c/a;

    invoke-direct {v0}, Landroidx/c/a;-><init>()V

    iput-object v0, p0, Landroidx/j/aj;->d:Landroidx/c/a;

    .line 86
    new-instance v0, Landroidx/c/a;

    invoke-direct {v0}, Landroidx/c/a;-><init>()V

    iput-object v0, p0, Landroidx/j/aj;->e:Landroidx/c/a;

    return-void
.end method

.method static a()Landroidx/c/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/c/a<",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroidx/j/ag;",
            ">;>;"
        }
    .end annotation

    .line 200
    sget-object v0, Landroidx/j/aj;->f:Ljava/lang/ThreadLocal;

    .line 201
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/c/a;

    if-eqz v0, :cond_0

    return-object v0

    .line 208
    :cond_0
    new-instance v0, Landroidx/c/a;

    invoke-direct {v0}, Landroidx/c/a;-><init>()V

    .line 209
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 210
    sget-object v2, Landroidx/j/aj;->f:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Landroid/view/ViewGroup;)V
    .locals 1
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 380
    invoke-static {p0, v0}, Landroidx/j/aj;->a(Landroid/view/ViewGroup;Landroidx/j/ag;)V

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Landroidx/j/ag;)V
    .locals 1
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 408
    sget-object v0, Landroidx/j/aj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroidx/core/n/af;->ag(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    sget-object v0, Landroidx/j/aj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez p1, :cond_0

    .line 415
    sget-object p1, Landroidx/j/aj;->c:Landroidx/j/ag;

    .line 417
    :cond_0
    invoke-virtual {p1}, Landroidx/j/ag;->s()Landroidx/j/ag;

    move-result-object p1

    .line 418
    invoke-static {p0, p1}, Landroidx/j/aj;->c(Landroid/view/ViewGroup;Landroidx/j/ag;)V

    const/4 v0, 0x0

    .line 419
    invoke-static {p0, v0}, Landroidx/j/ac;->a(Landroid/view/ViewGroup;Landroidx/j/ac;)V

    .line 420
    invoke-static {p0, p1}, Landroidx/j/aj;->b(Landroid/view/ViewGroup;Landroidx/j/ag;)V

    :cond_1
    return-void
.end method

.method public static b(Landroid/view/ViewGroup;)V
    .locals 3

    .line 430
    sget-object v0, Landroidx/j/aj;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 431
    invoke-static {}, Landroidx/j/aj;->a()Landroidx/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 432
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 434
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 435
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 436
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/ag;

    .line 437
    invoke-virtual {v2, p0}, Landroidx/j/ag;->b(Landroid/view/ViewGroup;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static b(Landroid/view/ViewGroup;Landroidx/j/ag;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 217
    new-instance v0, Landroidx/j/aj$a;

    invoke-direct {v0, p1, p0}, Landroidx/j/aj$a;-><init>(Landroidx/j/ag;Landroid/view/ViewGroup;)V

    .line 218
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 219
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public static b(Landroidx/j/ac;)V
    .locals 1
    .param p0    # Landroidx/j/ac;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 349
    sget-object v0, Landroidx/j/aj;->c:Landroidx/j/ag;

    invoke-static {p0, v0}, Landroidx/j/aj;->c(Landroidx/j/ac;Landroidx/j/ag;)V

    return-void
.end method

.method public static b(Landroidx/j/ac;Landroidx/j/ag;)V
    .locals 0
    .param p0    # Landroidx/j/ac;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 367
    invoke-static {p0, p1}, Landroidx/j/aj;->c(Landroidx/j/ac;Landroidx/j/ag;)V

    return-void
.end method

.method private c(Landroidx/j/ac;)Landroidx/j/ag;
    .locals 2

    .line 139
    invoke-virtual {p1}, Landroidx/j/ac;->a()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {v0}, Landroidx/j/ac;->a(Landroid/view/ViewGroup;)Landroidx/j/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Landroidx/j/aj;->e:Landroidx/c/a;

    .line 145
    invoke-virtual {v1, p1}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/c/a;

    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v1, v0}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/ag;

    if-eqz v0, :cond_0

    return-object v0

    .line 154
    :cond_0
    iget-object p0, p0, Landroidx/j/aj;->d:Landroidx/c/a;

    invoke-virtual {p0, p1}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/j/ag;

    if-eqz p0, :cond_1

    goto :goto_0

    .line 155
    :cond_1
    sget-object p0, Landroidx/j/aj;->c:Landroidx/j/ag;

    :goto_0
    return-object p0
.end method

.method private static c(Landroid/view/ViewGroup;Landroidx/j/ag;)V
    .locals 2

    .line 309
    invoke-static {}, Landroidx/j/aj;->a()Landroidx/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 312
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/ag;

    .line 313
    invoke-virtual {v1, p0}, Landroidx/j/ag;->e(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 318
    invoke-virtual {p1, p0, v0}, Landroidx/j/ag;->a(Landroid/view/ViewGroup;Z)V

    .line 322
    :cond_1
    invoke-static {p0}, Landroidx/j/ac;->a(Landroid/view/ViewGroup;)Landroidx/j/ac;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 324
    invoke-virtual {p0}, Landroidx/j/ac;->b()V

    :cond_2
    return-void
.end method

.method private static c(Landroidx/j/ac;Landroidx/j/ag;)V
    .locals 3

    .line 169
    invoke-virtual {p0}, Landroidx/j/ac;->a()Landroid/view/ViewGroup;

    move-result-object v0

    .line 171
    sget-object v1, Landroidx/j/aj;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 172
    invoke-static {v0}, Landroidx/j/ac;->a(Landroid/view/ViewGroup;)Landroidx/j/ac;

    move-result-object v1

    if-nez p1, :cond_1

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v1}, Landroidx/j/ac;->b()V

    .line 179
    :cond_0
    invoke-virtual {p0}, Landroidx/j/ac;->c()V

    goto :goto_0

    .line 181
    :cond_1
    sget-object v2, Landroidx/j/aj;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-virtual {p1}, Landroidx/j/ag;->s()Landroidx/j/ag;

    move-result-object p1

    .line 184
    invoke-virtual {p1, v0}, Landroidx/j/ag;->c(Landroid/view/ViewGroup;)Landroidx/j/ag;

    if-eqz v1, :cond_2

    .line 186
    invoke-virtual {v1}, Landroidx/j/ac;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 187
    invoke-virtual {p1, v1}, Landroidx/j/ag;->d(Z)V

    .line 190
    :cond_2
    invoke-static {v0, p1}, Landroidx/j/aj;->c(Landroid/view/ViewGroup;Landroidx/j/ag;)V

    .line 192
    invoke-virtual {p0}, Landroidx/j/ac;->c()V

    .line 194
    invoke-static {v0, p1}, Landroidx/j/aj;->b(Landroid/view/ViewGroup;Landroidx/j/ag;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/j/ac;)V
    .locals 0
    .param p1    # Landroidx/j/ac;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 339
    invoke-direct {p0, p1}, Landroidx/j/aj;->c(Landroidx/j/ac;)Landroidx/j/ag;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/j/aj;->c(Landroidx/j/ac;Landroidx/j/ag;)V

    return-void
.end method

.method public a(Landroidx/j/ac;Landroidx/j/ac;Landroidx/j/ag;)V
    .locals 1
    .param p1    # Landroidx/j/ac;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/j/ac;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 119
    iget-object v0, p0, Landroidx/j/aj;->e:Landroidx/c/a;

    invoke-virtual {v0, p2}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/c/a;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Landroidx/c/a;

    invoke-direct {v0}, Landroidx/c/a;-><init>()V

    .line 122
    iget-object p0, p0, Landroidx/j/aj;->e:Landroidx/c/a;

    invoke-virtual {p0, p2, v0}, Landroidx/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    invoke-virtual {v0, p1, p3}, Landroidx/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroidx/j/ac;Landroidx/j/ag;)V
    .locals 0
    .param p1    # Landroidx/j/ac;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 102
    iget-object p0, p0, Landroidx/j/aj;->d:Landroidx/c/a;

    invoke-virtual {p0, p1, p2}, Landroidx/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
