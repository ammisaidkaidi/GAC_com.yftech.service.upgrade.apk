.class public final Landroidx/viewpager2/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager2/a/h$i;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/viewpager2/a/h$i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/viewpager2/a/c;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 52
    iget-object p0, p0, Landroidx/viewpager2/a/c;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager2/a/h$i;

    .line 53
    invoke-interface {v0, p1, p2}, Landroidx/viewpager2/a/h$i;->a(Landroid/view/View;F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroidx/viewpager2/a/h$i;)V
    .locals 0
    .param p1    # Landroidx/viewpager2/a/h$i;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 42
    iget-object p0, p0, Landroidx/viewpager2/a/c;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroidx/viewpager2/a/h$i;)V
    .locals 0
    .param p1    # Landroidx/viewpager2/a/h$i;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 47
    iget-object p0, p0, Landroidx/viewpager2/a/c;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
