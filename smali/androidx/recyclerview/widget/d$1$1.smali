.class Landroidx/recyclerview/widget/d$1$1;
.super Landroidx/recyclerview/widget/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/d$1;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/d$1;)V
    .locals 0

    .line 292
    iput-object p1, p0, Landroidx/recyclerview/widget/d$1$1;->a:Landroidx/recyclerview/widget/d$1;

    invoke-direct {p0}, Landroidx/recyclerview/widget/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 295
    iget-object p0, p0, Landroidx/recyclerview/widget/d$1$1;->a:Landroidx/recyclerview/widget/d$1;

    iget-object p0, p0, Landroidx/recyclerview/widget/d$1;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public a(II)Z
    .locals 1

    .line 305
    iget-object v0, p0, Landroidx/recyclerview/widget/d$1$1;->a:Landroidx/recyclerview/widget/d$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/d$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 306
    iget-object v0, p0, Landroidx/recyclerview/widget/d$1$1;->a:Landroidx/recyclerview/widget/d$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/d$1;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 308
    iget-object p0, p0, Landroidx/recyclerview/widget/d$1$1;->a:Landroidx/recyclerview/widget/d$1;

    iget-object p0, p0, Landroidx/recyclerview/widget/d$1;->e:Landroidx/recyclerview/widget/d;

    iget-object p0, p0, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/c;->c()Landroidx/recyclerview/widget/i$c;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/i$c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()I
    .locals 0

    .line 300
    iget-object p0, p0, Landroidx/recyclerview/widget/d$1$1;->a:Landroidx/recyclerview/widget/d$1;

    iget-object p0, p0, Landroidx/recyclerview/widget/d$1;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public b(II)Z
    .locals 1

    .line 316
    iget-object v0, p0, Landroidx/recyclerview/widget/d$1$1;->a:Landroidx/recyclerview/widget/d$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/d$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 317
    iget-object v0, p0, Landroidx/recyclerview/widget/d$1$1;->a:Landroidx/recyclerview/widget/d$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/d$1;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 319
    iget-object p0, p0, Landroidx/recyclerview/widget/d$1$1;->a:Landroidx/recyclerview/widget/d$1;

    iget-object p0, p0, Landroidx/recyclerview/widget/d$1;->e:Landroidx/recyclerview/widget/d;

    iget-object p0, p0, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/c;->c()Landroidx/recyclerview/widget/i$c;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/i$c;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p0, 0x1

    return p0

    .line 328
    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public c(II)Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 334
    iget-object v0, p0, Landroidx/recyclerview/widget/d$1$1;->a:Landroidx/recyclerview/widget/d$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/d$1;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 335
    iget-object v0, p0, Landroidx/recyclerview/widget/d$1$1;->a:Landroidx/recyclerview/widget/d$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/d$1;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 337
    iget-object p0, p0, Landroidx/recyclerview/widget/d$1$1;->a:Landroidx/recyclerview/widget/d$1;

    iget-object p0, p0, Landroidx/recyclerview/widget/d$1;->e:Landroidx/recyclerview/widget/d;

    iget-object p0, p0, Landroidx/recyclerview/widget/d;->a:Landroidx/recyclerview/widget/c;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/c;->c()Landroidx/recyclerview/widget/i$c;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/i$c;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 343
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method
