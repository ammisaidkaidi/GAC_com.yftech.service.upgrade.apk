.class public Landroidx/fragment/app/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroidx/fragment/app/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/i<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/fragment/app/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/i<",
            "*>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    return-void
.end method

.method public static a(Landroidx/fragment/app/i;)Landroidx/fragment/app/g;
    .locals 2
    .param p0    # Landroidx/fragment/app/i;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/i<",
            "*>;)",
            "Landroidx/fragment/app/g;"
        }
    .end annotation

    .line 57
    new-instance v0, Landroidx/fragment/app/g;

    const-string v1, "callbacks == null"

    invoke-static {p0, v1}, Landroidx/core/m/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/i;

    invoke-direct {v0, p0}, Landroidx/fragment/app/g;-><init>(Landroidx/fragment/app/i;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 134
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/k;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroidx/fragment/app/d;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 92
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/k;->b(Ljava/lang/String;)Landroidx/fragment/app/d;

    move-result-object p0

    return-object p0
.end method

.method public a()Landroidx/fragment/app/j;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 69
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    return-object p0
.end method

.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/d;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/fragment/app/d;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->m()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 362
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/k;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 190
    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    instance-of v0, v0, Landroidx/lifecycle/y;

    if-eqz v0, :cond_0

    .line 195
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/k;->a(Landroid/os/Parcelable;)V

    return-void

    .line 191
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Landroid/os/Parcelable;Landroidx/fragment/app/l;)V
    .locals 0
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/l;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/k;->a(Landroid/os/Parcelable;Landroidx/fragment/app/l;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 2
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/d;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    new-instance v0, Landroidx/fragment/app/l;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, v1}, Landroidx/fragment/app/l;-><init>(Ljava/util/Collection;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/k;->a(Landroid/os/Parcelable;Landroidx/fragment/app/l;)V

    return-void
.end method

.method public a(Landroidx/c/i;)V
    .locals 0
    .param p1    # Landroidx/c/i;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/c/i<",
            "Ljava/lang/String;",
            "Landroidx/i/a/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public a(Landroidx/fragment/app/d;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 116
    iget-object v0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object v0, v0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    iget-object v1, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    invoke-virtual {v0, v1, p0, p1}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/i;Landroidx/fragment/app/f;Landroidx/fragment/app/d;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 340
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/k;->b(Z)V

    return-void
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 0
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 398
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/k;->a(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 0
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 386
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/k;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p0

    return p0
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 411
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/k;->a(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public b()Landroidx/i/a/a;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Loaders are managed separately from FragmentController, use LoaderManager.getInstance() to obtain a LoaderManager."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Landroid/view/Menu;)V
    .locals 0
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 435
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/k;->b(Landroid/view/Menu;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 351
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/k;->c(Z)V

    return-void
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 424
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/k;->b(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public c()I
    .locals 0

    .line 99
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->n()I

    move-result p0

    return p0
.end method

.method public c(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public d()V
    .locals 0

    .line 141
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->v()V

    return-void
.end method

.method public e()Landroid/os/Parcelable;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 151
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->u()Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/d;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->t()Landroidx/fragment/app/l;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 209
    invoke-virtual {p0}, Landroidx/fragment/app/l;->a()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .line 210
    invoke-virtual {p0}, Landroidx/fragment/app/l;->a()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public g()Landroidx/fragment/app/l;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->t()Landroidx/fragment/app/l;

    move-result-object p0

    return-object p0
.end method

.method public h()V
    .locals 0

    .line 235
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->w()V

    return-void
.end method

.method public i()V
    .locals 0

    .line 246
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->x()V

    return-void
.end method

.method public j()V
    .locals 0

    .line 257
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->y()V

    return-void
.end method

.method public k()V
    .locals 0

    .line 268
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->z()V

    return-void
.end method

.method public l()V
    .locals 0

    .line 279
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->A()V

    return-void
.end method

.method public m()V
    .locals 0

    .line 290
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->B()V

    return-void
.end method

.method public n()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public o()V
    .locals 0

    .line 308
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->C()V

    return-void
.end method

.method public p()V
    .locals 0

    .line 329
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->D()V

    return-void
.end method

.method public q()V
    .locals 0

    .line 374
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->E()V

    return-void
.end method

.method public r()Z
    .locals 0

    .line 446
    iget-object p0, p0, Landroidx/fragment/app/g;->a:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/i;->b:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->q()Z

    move-result p0

    return p0
.end method

.method public s()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public t()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public u()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public v()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public w()Landroidx/c/i;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/c/i<",
            "Ljava/lang/String;",
            "Landroidx/i/a/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
