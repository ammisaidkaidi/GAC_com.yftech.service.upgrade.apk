.class public final Lcom/google/android/material/x/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/x/c$a;,
        Lcom/google/android/material/x/c$d;,
        Lcom/google/android/material/x/c$c;,
        Lcom/google/android/material/x/c$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/x/b;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final b:Landroidx/viewpager2/a/h;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final c:Z

.field private final d:Z

.field private final e:Lcom/google/android/material/x/c$b;

.field private f:Landroidx/recyclerview/widget/RecyclerView$a;
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$a<",
            "*>;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/google/android/material/x/c$c;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private i:Lcom/google/android/material/x/b$e;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private j:Landroidx/recyclerview/widget/RecyclerView$c;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/material/x/b;Landroidx/viewpager2/a/h;Lcom/google/android/material/x/c$b;)V
    .locals 1
    .param p1    # Lcom/google/android/material/x/b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/viewpager2/a/h;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/x/c$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 79
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/material/x/c;-><init>(Lcom/google/android/material/x/b;Landroidx/viewpager2/a/h;ZLcom/google/android/material/x/c$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/x/b;Landroidx/viewpager2/a/h;ZLcom/google/android/material/x/c$b;)V
    .locals 6
    .param p1    # Lcom/google/android/material/x/b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/viewpager2/a/h;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/material/x/c$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 87
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/x/c;-><init>(Lcom/google/android/material/x/b;Landroidx/viewpager2/a/h;ZZLcom/google/android/material/x/c$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/x/b;Landroidx/viewpager2/a/h;ZZLcom/google/android/material/x/c$b;)V
    .locals 0
    .param p1    # Lcom/google/android/material/x/b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/viewpager2/a/h;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/material/x/c$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/material/x/c;->a:Lcom/google/android/material/x/b;

    .line 97
    iput-object p2, p0, Lcom/google/android/material/x/c;->b:Landroidx/viewpager2/a/h;

    .line 98
    iput-boolean p3, p0, Lcom/google/android/material/x/c;->c:Z

    .line 99
    iput-boolean p4, p0, Lcom/google/android/material/x/c;->d:Z

    .line 100
    iput-object p5, p0, Lcom/google/android/material/x/c;->e:Lcom/google/android/material/x/c$b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 112
    iget-boolean v0, p0, Lcom/google/android/material/x/c;->g:Z

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/google/android/material/x/c;->b:Landroidx/viewpager2/a/h;

    invoke-virtual {v0}, Landroidx/viewpager2/a/h;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/x/c;->f:Landroidx/recyclerview/widget/RecyclerView$a;

    .line 116
    iget-object v0, p0, Lcom/google/android/material/x/c;->f:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Lcom/google/android/material/x/c;->g:Z

    .line 123
    new-instance v1, Lcom/google/android/material/x/c$c;

    iget-object v2, p0, Lcom/google/android/material/x/c;->a:Lcom/google/android/material/x/b;

    invoke-direct {v1, v2}, Lcom/google/android/material/x/c$c;-><init>(Lcom/google/android/material/x/b;)V

    iput-object v1, p0, Lcom/google/android/material/x/c;->h:Lcom/google/android/material/x/c$c;

    .line 124
    iget-object v1, p0, Lcom/google/android/material/x/c;->b:Landroidx/viewpager2/a/h;

    iget-object v2, p0, Lcom/google/android/material/x/c;->h:Lcom/google/android/material/x/c$c;

    invoke-virtual {v1, v2}, Landroidx/viewpager2/a/h;->a(Landroidx/viewpager2/a/h$f;)V

    .line 127
    new-instance v1, Lcom/google/android/material/x/c$d;

    iget-object v2, p0, Lcom/google/android/material/x/c;->b:Landroidx/viewpager2/a/h;

    iget-boolean v3, p0, Lcom/google/android/material/x/c;->d:Z

    invoke-direct {v1, v2, v3}, Lcom/google/android/material/x/c$d;-><init>(Landroidx/viewpager2/a/h;Z)V

    iput-object v1, p0, Lcom/google/android/material/x/c;->i:Lcom/google/android/material/x/b$e;

    .line 128
    iget-object v1, p0, Lcom/google/android/material/x/c;->a:Lcom/google/android/material/x/b;

    iget-object v2, p0, Lcom/google/android/material/x/c;->i:Lcom/google/android/material/x/b$e;

    invoke-virtual {v1, v2}, Lcom/google/android/material/x/b;->a(Lcom/google/android/material/x/b$e;)V

    .line 132
    iget-boolean v1, p0, Lcom/google/android/material/x/c;->c:Z

    if-eqz v1, :cond_0

    .line 134
    new-instance v1, Lcom/google/android/material/x/c$a;

    invoke-direct {v1, p0}, Lcom/google/android/material/x/c$a;-><init>(Lcom/google/android/material/x/c;)V

    iput-object v1, p0, Lcom/google/android/material/x/c;->j:Landroidx/recyclerview/widget/RecyclerView$c;

    .line 135
    iget-object v1, p0, Lcom/google/android/material/x/c;->f:Landroidx/recyclerview/widget/RecyclerView$a;

    iget-object v2, p0, Lcom/google/android/material/x/c;->j:Landroidx/recyclerview/widget/RecyclerView$c;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$a;->a(Landroidx/recyclerview/widget/RecyclerView$c;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/x/c;->c()V

    .line 141
    iget-object v1, p0, Lcom/google/android/material/x/c;->a:Lcom/google/android/material/x/b;

    iget-object p0, p0, Lcom/google/android/material/x/c;->b:Landroidx/viewpager2/a/h;

    invoke-virtual {p0}, Landroidx/viewpager2/a/h;->getCurrentItem()I

    move-result p0

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/android/material/x/b;->a(IFZ)V

    return-void

    .line 117
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "TabLayoutMediator attached before ViewPager2 has an adapter"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "TabLayoutMediator is already attached"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()V
    .locals 3

    .line 150
    iget-boolean v0, p0, Lcom/google/android/material/x/c;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/x/c;->f:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/google/android/material/x/c;->f:Landroidx/recyclerview/widget/RecyclerView$a;

    iget-object v2, p0, Lcom/google/android/material/x/c;->j:Landroidx/recyclerview/widget/RecyclerView$c;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$a;->b(Landroidx/recyclerview/widget/RecyclerView$c;)V

    .line 152
    iput-object v1, p0, Lcom/google/android/material/x/c;->j:Landroidx/recyclerview/widget/RecyclerView$c;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/x/c;->a:Lcom/google/android/material/x/b;

    iget-object v2, p0, Lcom/google/android/material/x/c;->i:Lcom/google/android/material/x/b$e;

    invoke-virtual {v0, v2}, Lcom/google/android/material/x/b;->b(Lcom/google/android/material/x/b$e;)V

    .line 155
    iget-object v0, p0, Lcom/google/android/material/x/c;->b:Landroidx/viewpager2/a/h;

    iget-object v2, p0, Lcom/google/android/material/x/c;->h:Lcom/google/android/material/x/c$c;

    invoke-virtual {v0, v2}, Landroidx/viewpager2/a/h;->b(Landroidx/viewpager2/a/h$f;)V

    .line 156
    iput-object v1, p0, Lcom/google/android/material/x/c;->i:Lcom/google/android/material/x/b$e;

    .line 157
    iput-object v1, p0, Lcom/google/android/material/x/c;->h:Lcom/google/android/material/x/c$c;

    .line 158
    iput-object v1, p0, Lcom/google/android/material/x/c;->f:Landroidx/recyclerview/widget/RecyclerView$a;

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/google/android/material/x/c;->g:Z

    return-void
.end method

.method c()V
    .locals 5

    .line 164
    iget-object v0, p0, Lcom/google/android/material/x/c;->a:Lcom/google/android/material/x/b;

    invoke-virtual {v0}, Lcom/google/android/material/x/b;->d()V

    .line 166
    iget-object v0, p0, Lcom/google/android/material/x/c;->f:Landroidx/recyclerview/widget/RecyclerView$a;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/google/android/material/x/c;->f:Landroidx/recyclerview/widget/RecyclerView$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 169
    iget-object v3, p0, Lcom/google/android/material/x/c;->a:Lcom/google/android/material/x/b;

    invoke-virtual {v3}, Lcom/google/android/material/x/b;->b()Lcom/google/android/material/x/b$h;

    move-result-object v3

    .line 170
    iget-object v4, p0, Lcom/google/android/material/x/c;->e:Lcom/google/android/material/x/c$b;

    invoke-interface {v4, v3, v2}, Lcom/google/android/material/x/c$b;->a(Lcom/google/android/material/x/b$h;I)V

    .line 171
    iget-object v4, p0, Lcom/google/android/material/x/c;->a:Lcom/google/android/material/x/b;

    invoke-virtual {v4, v3, v1}, Lcom/google/android/material/x/b;->a(Lcom/google/android/material/x/b$h;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/google/android/material/x/c;->a:Lcom/google/android/material/x/b;

    invoke-virtual {v0}, Lcom/google/android/material/x/b;->getTabCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 176
    iget-object v1, p0, Lcom/google/android/material/x/c;->b:Landroidx/viewpager2/a/h;

    invoke-virtual {v1}, Landroidx/viewpager2/a/h;->getCurrentItem()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 177
    iget-object v1, p0, Lcom/google/android/material/x/c;->a:Lcom/google/android/material/x/b;

    invoke-virtual {v1}, Lcom/google/android/material/x/b;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 178
    iget-object v1, p0, Lcom/google/android/material/x/c;->a:Lcom/google/android/material/x/b;

    iget-object p0, p0, Lcom/google/android/material/x/c;->a:Lcom/google/android/material/x/b;

    invoke-virtual {p0, v0}, Lcom/google/android/material/x/b;->a(I)Lcom/google/android/material/x/b$h;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/material/x/b;->d(Lcom/google/android/material/x/b$h;)V

    :cond_1
    return-void
.end method
