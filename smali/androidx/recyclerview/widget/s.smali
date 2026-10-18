.class public abstract Landroidx/recyclerview/widget/s;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "VH:",
        "Landroidx/recyclerview/widget/RecyclerView$z;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field final a:Landroidx/recyclerview/widget/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Landroidx/recyclerview/widget/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/d$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroidx/recyclerview/widget/c;)V
    .locals 2
    .param p1    # Landroidx/recyclerview/widget/c;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 97
    new-instance v0, Landroidx/recyclerview/widget/s$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/s$1;-><init>(Landroidx/recyclerview/widget/s;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/s;->b:Landroidx/recyclerview/widget/d$a;

    .line 115
    new-instance v0, Landroidx/recyclerview/widget/d;

    new-instance v1, Landroidx/recyclerview/widget/b;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$a;)V

    invoke-direct {v0, v1, p1}, Landroidx/recyclerview/widget/d;-><init>(Landroidx/recyclerview/widget/t;Landroidx/recyclerview/widget/c;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/s;->a:Landroidx/recyclerview/widget/d;

    .line 116
    iget-object p1, p0, Landroidx/recyclerview/widget/s;->a:Landroidx/recyclerview/widget/d;

    iget-object p0, p0, Landroidx/recyclerview/widget/s;->b:Landroidx/recyclerview/widget/d$a;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/d;->a(Landroidx/recyclerview/widget/d$a;)V

    return-void
.end method

.method protected constructor <init>(Landroidx/recyclerview/widget/i$c;)V
    .locals 3
    .param p1    # Landroidx/recyclerview/widget/i$c;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/i$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 97
    new-instance v0, Landroidx/recyclerview/widget/s$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/s$1;-><init>(Landroidx/recyclerview/widget/s;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/s;->b:Landroidx/recyclerview/widget/d$a;

    .line 108
    new-instance v0, Landroidx/recyclerview/widget/d;

    new-instance v1, Landroidx/recyclerview/widget/b;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$a;)V

    new-instance v2, Landroidx/recyclerview/widget/c$a;

    invoke-direct {v2, p1}, Landroidx/recyclerview/widget/c$a;-><init>(Landroidx/recyclerview/widget/i$c;)V

    .line 109
    invoke-virtual {v2}, Landroidx/recyclerview/widget/c$a;->a()Landroidx/recyclerview/widget/c;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroidx/recyclerview/widget/d;-><init>(Landroidx/recyclerview/widget/t;Landroidx/recyclerview/widget/c;)V

    iput-object v0, p0, Landroidx/recyclerview/widget/s;->a:Landroidx/recyclerview/widget/d;

    .line 110
    iget-object p1, p0, Landroidx/recyclerview/widget/s;->a:Landroidx/recyclerview/widget/d;

    iget-object p0, p0, Landroidx/recyclerview/widget/s;->b:Landroidx/recyclerview/widget/d$a;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/d;->a(Landroidx/recyclerview/widget/d$a;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 155
    iget-object p0, p0, Landroidx/recyclerview/widget/s;->a:Landroidx/recyclerview/widget/d;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/d;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method protected a(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 150
    iget-object p0, p0, Landroidx/recyclerview/widget/s;->a:Landroidx/recyclerview/widget/d;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/d;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 128
    iget-object p0, p0, Landroidx/recyclerview/widget/s;->a:Landroidx/recyclerview/widget/d;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/d;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 146
    iget-object p0, p0, Landroidx/recyclerview/widget/s;->a:Landroidx/recyclerview/widget/d;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/d;->a(Ljava/util/List;Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 173
    iget-object p0, p0, Landroidx/recyclerview/widget/s;->a:Landroidx/recyclerview/widget/d;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/d;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
