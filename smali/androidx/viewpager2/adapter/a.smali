.class public abstract Landroidx/viewpager2/adapter/a;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager2/adapter/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/viewpager2/adapter/a$a;,
        Landroidx/viewpager2/adapter/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Landroidx/viewpager2/adapter/b;",
        ">;",
        "Landroidx/viewpager2/adapter/c;"
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "f#"

.field private static final f:Ljava/lang/String; = "s#"

.field private static final g:J = 0x2710L


# instance fields
.field final a:Landroidx/lifecycle/g;

.field final b:Landroidx/fragment/app/j;

.field final c:Landroidx/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/f<",
            "Landroidx/fragment/app/d;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field private final h:Landroidx/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/f<",
            "Landroidx/fragment/app/d$d;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroidx/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/f<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroidx/viewpager2/adapter/a$b;

.field private k:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/d;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 112
    invoke-virtual {p1}, Landroidx/fragment/app/d;->H()Landroidx/fragment/app/j;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/d;->c()Landroidx/lifecycle/g;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroidx/viewpager2/adapter/a;-><init>(Landroidx/fragment/app/j;Landroidx/lifecycle/g;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/e;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/e;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 102
    invoke-virtual {p1}, Landroidx/fragment/app/e;->q()Landroidx/fragment/app/j;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/e;->c()Landroidx/lifecycle/g;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroidx/viewpager2/adapter/a;-><init>(Landroidx/fragment/app/j;Landroidx/lifecycle/g;)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/j;Landroidx/lifecycle/g;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/j;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/g;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 123
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 82
    new-instance v0, Landroidx/c/f;

    invoke-direct {v0}, Landroidx/c/f;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/c/f;

    .line 84
    new-instance v0, Landroidx/c/f;

    invoke-direct {v0}, Landroidx/c/f;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/adapter/a;->h:Landroidx/c/f;

    .line 85
    new-instance v0, Landroidx/c/f;

    invoke-direct {v0}, Landroidx/c/f;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/adapter/a;->i:Landroidx/c/f;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Landroidx/viewpager2/adapter/a;->d:Z

    .line 92
    iput-boolean v0, p0, Landroidx/viewpager2/adapter/a;->k:Z

    .line 124
    iput-object p1, p0, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/j;

    .line 125
    iput-object p2, p0, Landroidx/viewpager2/adapter/a;->a:Landroidx/lifecycle/g;

    const/4 p1, 0x1

    .line 126
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$a;->a(Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroidx/fragment/app/d;Landroid/widget/FrameLayout;)V
    .locals 2
    .param p2    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 368
    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/j;

    new-instance v1, Landroidx/viewpager2/adapter/a$2;

    invoke-direct {v1, p0, p1, p2}, Landroidx/viewpager2/adapter/a$2;-><init>(Landroidx/viewpager2/adapter/a;Landroidx/fragment/app/d;Landroid/widget/FrameLayout;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/j$b;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 605
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)J
    .locals 0
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 610
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private b(J)Z
    .locals 2

    .line 233
    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->i:Landroidx/c/f;

    invoke-virtual {v0, p1, p2}, Landroidx/c/f;->e(J)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 237
    :cond_0
    iget-object p0, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/c/f;

    invoke-virtual {p0, p1, p2}, Landroidx/c/f;->a(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/d;

    const/4 p1, 0x0

    if-nez p0, :cond_1

    return p1

    .line 242
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/d;->X()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    return p1

    .line 247
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_3

    move p1, v1

    :cond_3
    return p1
.end method

.method private c(J)V
    .locals 3

    .line 434
    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/c/f;

    invoke-virtual {v0, p1, p2}, Landroidx/c/f;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/d;

    if-nez v0, :cond_0

    return-void

    .line 440
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/d;->X()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 441
    invoke-virtual {v0}, Landroidx/fragment/app/d;->X()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 443
    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 447
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/adapter/a;->a(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 448
    iget-object v1, p0, Landroidx/viewpager2/adapter/a;->h:Landroidx/c/f;

    invoke-virtual {v1, p1, p2}, Landroidx/c/f;->c(J)V

    .line 451
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/d;->K()Z

    move-result v1

    if-nez v1, :cond_3

    .line 452
    iget-object p0, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/c/f;

    invoke-virtual {p0, p1, p2}, Landroidx/c/f;->c(J)V

    return-void

    .line 456
    :cond_3
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/a;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p1, 0x1

    .line 457
    iput-boolean p1, p0, Landroidx/viewpager2/adapter/a;->k:Z

    return-void

    .line 461
    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/d;->K()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/adapter/a;->a(J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 462
    iget-object v1, p0, Landroidx/viewpager2/adapter/a;->h:Landroidx/c/f;

    iget-object v2, p0, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/j;

    invoke-virtual {v2, v0}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;)Landroidx/fragment/app/d$d;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Landroidx/c/f;->d(JLjava/lang/Object;)V

    .line 464
    :cond_5
    iget-object v1, p0, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/j;

    invoke-virtual {v1}, Landroidx/fragment/app/j;->a()Landroidx/fragment/app/s;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/d;)Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->i()V

    .line 465
    iget-object p0, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/c/f;

    invoke-virtual {p0, p1, p2}, Landroidx/c/f;->c(J)V

    return-void
.end method

.method private g(I)Ljava/lang/Long;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 252
    :goto_0
    iget-object v2, p0, Landroidx/viewpager2/adapter/a;->i:Landroidx/c/f;

    invoke-virtual {v2}, Landroidx/c/f;->b()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 253
    iget-object v2, p0, Landroidx/viewpager2/adapter/a;->i:Landroidx/c/f;

    invoke-virtual {v2, v1}, Landroidx/c/f;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_1

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->i:Landroidx/c/f;

    invoke-virtual {v0, v1}, Landroidx/c/f;->b(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 255
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Design assumption violated: a ViewHolder can only be bound to one item at a time."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private h()V
    .locals 4

    .line 575
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 576
    new-instance v1, Landroidx/viewpager2/adapter/a$3;

    invoke-direct {v1, p0}, Landroidx/viewpager2/adapter/a$3;-><init>(Landroidx/viewpager2/adapter/a;)V

    .line 584
    iget-object v2, p0, Landroidx/viewpager2/adapter/a;->a:Landroidx/lifecycle/g;

    new-instance v3, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;

    invoke-direct {v3, p0, v0, v1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;-><init>(Landroidx/viewpager2/adapter/a;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/i;)V

    const-wide/16 v2, 0x2710

    .line 595
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private h(I)V
    .locals 3

    .line 265
    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/a;->c(I)J

    move-result-wide v0

    .line 266
    iget-object v2, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/c/f;

    invoke-virtual {v2, v0, v1}, Landroidx/c/f;->e(J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 268
    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/a;->a(I)Landroidx/fragment/app/d;

    move-result-object p1

    .line 269
    iget-object v2, p0, Landroidx/viewpager2/adapter/a;->h:Landroidx/c/f;

    invoke-virtual {v2, v0, v1}, Landroidx/c/f;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/d$d;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/d;->a(Landroidx/fragment/app/d$d;)V

    .line 270
    iget-object p0, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/c/f;

    invoke-virtual {p0, v0, v1, p1}, Landroidx/c/f;->d(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a(I)Landroidx/fragment/app/d;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end method

.method public synthetic a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$z;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/adapter/a;->c(Landroid/view/ViewGroup;I)Landroidx/viewpager2/adapter/b;

    move-result-object p0

    return-object p0
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 5
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 535
    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->h:Landroidx/c/f;

    invoke-virtual {v0}, Landroidx/c/f;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/c/f;

    invoke-virtual {v0}, Landroidx/c/f;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 540
    check-cast p1, Landroid/os/Bundle;

    .line 541
    invoke-virtual {p1}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    .line 543
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 546
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "f#"

    .line 547
    invoke-static {v1, v2}, Landroidx/viewpager2/adapter/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "f#"

    .line 548
    invoke-static {v1, v2}, Landroidx/viewpager2/adapter/a;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 549
    iget-object v4, p0, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/j;

    invoke-virtual {v4, p1, v1}, Landroidx/fragment/app/j;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/d;

    move-result-object v1

    .line 550
    iget-object v4, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/c/f;

    invoke-virtual {v4, v2, v3, v1}, Landroidx/c/f;->d(JLjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v2, "s#"

    .line 554
    invoke-static {v1, v2}, Landroidx/viewpager2/adapter/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "s#"

    .line 555
    invoke-static {v1, v2}, Landroidx/viewpager2/adapter/a;->b(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 556
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/d$d;

    .line 557
    invoke-virtual {p0, v2, v3}, Landroidx/viewpager2/adapter/a;->a(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 558
    iget-object v4, p0, Landroidx/viewpager2/adapter/a;->h:Landroidx/c/f;

    invoke-virtual {v4, v2, v3, v1}, Landroidx/c/f;->d(JLjava/lang/Object;)V

    goto :goto_0

    .line 563
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected key in savedState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 566
    :cond_4
    iget-object p1, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/c/f;

    invoke-virtual {p1}, Landroidx/c/f;->c()Z

    move-result p1

    if-nez p1, :cond_5

    const/4 p1, 0x1

    .line 567
    iput-boolean p1, p0, Landroidx/viewpager2/adapter/a;->k:Z

    .line 568
    iput-boolean p1, p0, Landroidx/viewpager2/adapter/a;->d:Z

    .line 569
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/a;->b()V

    .line 570
    invoke-direct {p0}, Landroidx/viewpager2/adapter/a;->h()V

    :cond_5
    return-void

    .line 536
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected the adapter to be \'fresh\' while restoring state."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method a(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/widget/FrameLayout;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 386
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    const/4 v0, 0x1

    if-gt p0, v0, :cond_3

    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-ne p0, p2, :cond_0

    return-void

    .line 394
    :cond_0
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p0

    if-lez p0, :cond_1

    .line 395
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 398
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 402
    :cond_2
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void

    .line 387
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Design assumption violated."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic a(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 67
    check-cast p1, Landroidx/viewpager2/adapter/b;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/a;->c(Landroidx/viewpager2/adapter/b;)V

    return-void
.end method

.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$z;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 67
    check-cast p1, Landroidx/viewpager2/adapter/b;

    invoke-virtual {p0, p1, p2}, Landroidx/viewpager2/adapter/a;->a(Landroidx/viewpager2/adapter/b;I)V

    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/i;
    .end annotation

    .line 132
    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->j:Landroidx/viewpager2/adapter/a$b;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroidx/core/m/i;->a(Z)V

    .line 133
    new-instance v0, Landroidx/viewpager2/adapter/a$b;

    invoke-direct {v0, p0}, Landroidx/viewpager2/adapter/a$b;-><init>(Landroidx/viewpager2/adapter/a;)V

    iput-object v0, p0, Landroidx/viewpager2/adapter/a;->j:Landroidx/viewpager2/adapter/a$b;

    .line 134
    iget-object p0, p0, Landroidx/viewpager2/adapter/a;->j:Landroidx/viewpager2/adapter/a$b;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/a$b;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public final a(Landroidx/viewpager2/adapter/b;)V
    .locals 0
    .param p1    # Landroidx/viewpager2/adapter/b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 276
    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/a;->b(Landroidx/viewpager2/adapter/b;)V

    .line 277
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/a;->b()V

    return-void
.end method

.method public final a(Landroidx/viewpager2/adapter/b;I)V
    .locals 7
    .param p1    # Landroidx/viewpager2/adapter/b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 166
    invoke-virtual {p1}, Landroidx/viewpager2/adapter/b;->h()J

    move-result-wide v0

    .line 167
    invoke-virtual {p1}, Landroidx/viewpager2/adapter/b;->D()Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    .line 168
    invoke-direct {p0, v2}, Landroidx/viewpager2/adapter/a;->g(I)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 169
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-eqz v4, :cond_0

    .line 170
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Landroidx/viewpager2/adapter/a;->c(J)V

    .line 171
    iget-object v4, p0, Landroidx/viewpager2/adapter/a;->i:Landroidx/c/f;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroidx/c/f;->c(J)V

    .line 174
    :cond_0
    iget-object v3, p0, Landroidx/viewpager2/adapter/a;->i:Landroidx/c/f;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v1, v2}, Landroidx/c/f;->d(JLjava/lang/Object;)V

    .line 175
    invoke-direct {p0, p2}, Landroidx/viewpager2/adapter/a;->h(I)V

    .line 179
    invoke-virtual {p1}, Landroidx/viewpager2/adapter/b;->D()Landroid/widget/FrameLayout;

    move-result-object p2

    .line 180
    invoke-static {p2}, Landroidx/core/n/af;->ak(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 181
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 184
    new-instance v0, Landroidx/viewpager2/adapter/a$1;

    invoke-direct {v0, p0, p2, p1}, Landroidx/viewpager2/adapter/a$1;-><init>(Landroidx/viewpager2/adapter/a;Landroid/widget/FrameLayout;Landroidx/viewpager2/adapter/b;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    .line 182
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Design assumption violated."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 196
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/a;->b()V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 501
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 496
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/a;->a()I

    move-result p0

    int-to-long v0, p0

    cmp-long p0, p1, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method b()V
    .locals 6

    .line 201
    iget-boolean v0, p0, Landroidx/viewpager2/adapter/a;->k:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/viewpager2/adapter/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 206
    :cond_0
    new-instance v0, Landroidx/c/b;

    invoke-direct {v0}, Landroidx/c/b;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 207
    :goto_0
    iget-object v3, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/c/f;

    invoke-virtual {v3}, Landroidx/c/f;->b()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 208
    iget-object v3, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/c/f;

    invoke-virtual {v3, v2}, Landroidx/c/f;->b(I)J

    move-result-wide v3

    .line 209
    invoke-virtual {p0, v3, v4}, Landroidx/viewpager2/adapter/a;->a(J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 210
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v5, p0, Landroidx/viewpager2/adapter/a;->i:Landroidx/c/f;

    invoke-virtual {v5, v3, v4}, Landroidx/c/f;->c(J)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    :cond_2
    iget-boolean v2, p0, Landroidx/viewpager2/adapter/a;->d:Z

    if-nez v2, :cond_4

    .line 217
    iput-boolean v1, p0, Landroidx/viewpager2/adapter/a;->k:Z

    .line 219
    :goto_1
    iget-object v2, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/c/f;

    invoke-virtual {v2}, Landroidx/c/f;->b()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 220
    iget-object v2, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/c/f;

    invoke-virtual {v2, v1}, Landroidx/c/f;->b(I)J

    move-result-wide v2

    .line 221
    invoke-direct {p0, v2, v3}, Landroidx/viewpager2/adapter/a;->b(J)Z

    move-result v4

    if-nez v4, :cond_3

    .line 222
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 227
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 228
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroidx/viewpager2/adapter/a;->c(J)V

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    :goto_3
    return-void
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/i;
    .end annotation

    .line 140
    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->j:Landroidx/viewpager2/adapter/a$b;

    invoke-virtual {v0, p1}, Landroidx/viewpager2/adapter/a$b;->b(Landroidx/recyclerview/widget/RecyclerView;)V

    const/4 p1, 0x0

    .line 141
    iput-object p1, p0, Landroidx/viewpager2/adapter/a;->j:Landroidx/viewpager2/adapter/a$b;

    return-void
.end method

.method b(Landroidx/viewpager2/adapter/b;)V
    .locals 5
    .param p1    # Landroidx/viewpager2/adapter/b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 285
    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/c/f;

    invoke-virtual {p1}, Landroidx/viewpager2/adapter/b;->h()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/c/f;->a(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/d;

    if-eqz v0, :cond_8

    .line 289
    invoke-virtual {p1}, Landroidx/viewpager2/adapter/b;->D()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 290
    invoke-virtual {v0}, Landroidx/fragment/app/d;->X()Landroid/view/View;

    move-result-object v2

    .line 311
    invoke-virtual {v0}, Landroidx/fragment/app/d;->K()Z

    move-result v3

    if-nez v3, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Design assumption violated."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 316
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/d;->K()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 317
    invoke-direct {p0, v0, v1}, Landroidx/viewpager2/adapter/a;->a(Landroidx/fragment/app/d;Landroid/widget/FrameLayout;)V

    return-void

    .line 322
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/d;->K()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 323
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eq p1, v1, :cond_3

    .line 324
    invoke-virtual {p0, v2, v1}, Landroidx/viewpager2/adapter/a;->a(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_3
    return-void

    .line 330
    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/d;->K()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 331
    invoke-virtual {p0, v2, v1}, Landroidx/viewpager2/adapter/a;->a(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void

    .line 336
    :cond_5
    invoke-virtual {p0}, Landroidx/viewpager2/adapter/a;->f()Z

    move-result v2

    if-nez v2, :cond_6

    .line 337
    invoke-direct {p0, v0, v1}, Landroidx/viewpager2/adapter/a;->a(Landroidx/fragment/app/d;Landroid/widget/FrameLayout;)V

    .line 338
    iget-object v1, p0, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/j;

    invoke-virtual {v1}, Landroidx/fragment/app/j;->a()Landroidx/fragment/app/s;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {p1}, Landroidx/viewpager2/adapter/b;->h()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/d;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p1

    sget-object v1, Landroidx/lifecycle/g$b;->d:Landroidx/lifecycle/g$b;

    .line 340
    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/d;Landroidx/lifecycle/g$b;)Landroidx/fragment/app/s;

    move-result-object p1

    .line 341
    invoke-virtual {p1}, Landroidx/fragment/app/s;->i()V

    .line 342
    iget-object p0, p0, Landroidx/viewpager2/adapter/a;->j:Landroidx/viewpager2/adapter/a$b;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/a$b;->a(Z)V

    goto :goto_1

    .line 344
    :cond_6
    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->h()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 347
    :cond_7
    iget-object v0, p0, Landroidx/viewpager2/adapter/a;->a:Landroidx/lifecycle/g;

    new-instance v1, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;

    invoke-direct {v1, p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;-><init>(Landroidx/viewpager2/adapter/a;Landroidx/viewpager2/adapter/b;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/i;)V

    :goto_1
    return-void

    .line 287
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Design assumption violated."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic b(Landroidx/recyclerview/widget/RecyclerView$z;)Z
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 67
    check-cast p1, Landroidx/viewpager2/adapter/b;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/a;->d(Landroidx/viewpager2/adapter/b;)Z

    move-result p0

    return p0
.end method

.method public c(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final c(Landroid/view/ViewGroup;I)Landroidx/viewpager2/adapter/b;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 161
    invoke-static {p1}, Landroidx/viewpager2/adapter/b;->a(Landroid/view/ViewGroup;)Landroidx/viewpager2/adapter/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic c(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 67
    check-cast p1, Landroidx/viewpager2/adapter/b;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/adapter/a;->a(Landroidx/viewpager2/adapter/b;)V

    return-void
.end method

.method public final c(Landroidx/viewpager2/adapter/b;)V
    .locals 2
    .param p1    # Landroidx/viewpager2/adapter/b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 407
    invoke-virtual {p1}, Landroidx/viewpager2/adapter/b;->D()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getId()I

    move-result p1

    .line 408
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/a;->g(I)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 410
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroidx/viewpager2/adapter/a;->c(J)V

    .line 411
    iget-object p0, p0, Landroidx/viewpager2/adapter/a;->i:Landroidx/c/f;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/c/f;->c(J)V

    :cond_0
    return-void
.end method

.method public final d(Landroidx/viewpager2/adapter/b;)Z
    .locals 0
    .param p1    # Landroidx/viewpager2/adapter/b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 p0, 0x1

    return p0
.end method

.method f()Z
    .locals 0

    .line 470
    iget-object p0, p0, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/j;

    invoke-virtual {p0}, Landroidx/fragment/app/j;->k()Z

    move-result p0

    return p0
.end method

.method public final g()Landroid/os/Parcelable;
    .locals 7
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 509
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/c/f;

    invoke-virtual {v1}, Landroidx/c/f;->b()I

    move-result v1

    iget-object v2, p0, Landroidx/viewpager2/adapter/a;->h:Landroidx/c/f;

    invoke-virtual {v2}, Landroidx/c/f;->b()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 512
    :goto_0
    iget-object v3, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/c/f;

    invoke-virtual {v3}, Landroidx/c/f;->b()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 513
    iget-object v3, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/c/f;

    invoke-virtual {v3, v2}, Landroidx/c/f;->b(I)J

    move-result-wide v3

    .line 514
    iget-object v5, p0, Landroidx/viewpager2/adapter/a;->c:Landroidx/c/f;

    invoke-virtual {v5, v3, v4}, Landroidx/c/f;->a(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/d;

    if-eqz v5, :cond_0

    .line 515
    invoke-virtual {v5}, Landroidx/fragment/app/d;->K()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "f#"

    .line 516
    invoke-static {v6, v3, v4}, Landroidx/viewpager2/adapter/a;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v3

    .line 517
    iget-object v4, p0, Landroidx/viewpager2/adapter/a;->b:Landroidx/fragment/app/j;

    invoke-virtual {v4, v0, v3, v5}, Landroidx/fragment/app/j;->a(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/d;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 522
    :cond_1
    :goto_1
    iget-object v2, p0, Landroidx/viewpager2/adapter/a;->h:Landroidx/c/f;

    invoke-virtual {v2}, Landroidx/c/f;->b()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 523
    iget-object v2, p0, Landroidx/viewpager2/adapter/a;->h:Landroidx/c/f;

    invoke-virtual {v2, v1}, Landroidx/c/f;->b(I)J

    move-result-wide v2

    .line 524
    invoke-virtual {p0, v2, v3}, Landroidx/viewpager2/adapter/a;->a(J)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "s#"

    .line 525
    invoke-static {v4, v2, v3}, Landroidx/viewpager2/adapter/a;->a(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    .line 526
    iget-object v5, p0, Landroidx/viewpager2/adapter/a;->h:Landroidx/c/f;

    invoke-virtual {v5, v2, v3}, Landroidx/c/f;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method
