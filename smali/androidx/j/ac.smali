.class public Landroidx/j/ac;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Landroid/view/ViewGroup;

.field private d:Landroid/view/View;

.field private e:Ljava/lang/Runnable;

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroidx/j/ac;->b:I

    .line 90
    iput-object p1, p0, Landroidx/j/ac;->c:Landroid/view/ViewGroup;

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroidx/j/ac;->b:I

    .line 109
    iput-object p3, p0, Landroidx/j/ac;->a:Landroid/content/Context;

    .line 110
    iput-object p1, p0, Landroidx/j/ac;->c:Landroid/view/ViewGroup;

    .line 111
    iput p2, p0, Landroidx/j/ac;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroidx/j/ac;->b:I

    .line 125
    iput-object p1, p0, Landroidx/j/ac;->c:Landroid/view/ViewGroup;

    .line 126
    iput-object p2, p0, Landroidx/j/ac;->d:Landroid/view/View;

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;)Landroidx/j/ac;
    .locals 1
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 209
    sget v0, Landroidx/j/aa$e;->transition_current_scene:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/j/ac;

    return-object p0
.end method

.method public static a(Landroid/view/ViewGroup;ILandroid/content/Context;)Landroidx/j/ac;
    .locals 2
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ac;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 63
    sget v0, Landroidx/j/aa$e;->transition_scene_layoutid_cache:I

    .line 64
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 67
    sget v1, Landroidx/j/aa$e;->transition_scene_layoutid_cache:I

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    .line 69
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/ac;

    if-eqz v1, :cond_1

    return-object v1

    .line 73
    :cond_1
    new-instance v1, Landroidx/j/ac;

    invoke-direct {v1, p0, p1, p2}, Landroidx/j/ac;-><init>(Landroid/view/ViewGroup;ILandroid/content/Context;)V

    .line 74
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v1
.end method

.method static a(Landroid/view/ViewGroup;Landroidx/j/ac;)V
    .locals 1
    .param p0    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroidx/j/ac;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 196
    sget v0, Landroidx/j/aa$e;->transition_current_scene:I

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/view/ViewGroup;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 138
    iget-object p0, p0, Landroidx/j/ac;->c:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public a(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 230
    iput-object p1, p0, Landroidx/j/ac;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public b()V
    .locals 1

    .line 149
    iget-object v0, p0, Landroidx/j/ac;->c:Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/j/ac;->a(Landroid/view/ViewGroup;)Landroidx/j/ac;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 150
    iget-object v0, p0, Landroidx/j/ac;->f:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 151
    iget-object p0, p0, Landroidx/j/ac;->f:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 250
    iput-object p1, p0, Landroidx/j/ac;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public c()V
    .locals 3

    .line 168
    iget v0, p0, Landroidx/j/ac;->b:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroidx/j/ac;->d:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 170
    :cond_0
    invoke-virtual {p0}, Landroidx/j/ac;->a()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 172
    iget v0, p0, Landroidx/j/ac;->b:I

    if-lez v0, :cond_1

    .line 173
    iget-object v0, p0, Landroidx/j/ac;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Landroidx/j/ac;->b:I

    iget-object v2, p0, Landroidx/j/ac;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_0

    .line 175
    :cond_1
    iget-object v0, p0, Landroidx/j/ac;->c:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/j/ac;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 180
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/j/ac;->e:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Landroidx/j/ac;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 184
    :cond_3
    iget-object v0, p0, Landroidx/j/ac;->c:Landroid/view/ViewGroup;

    invoke-static {v0, p0}, Landroidx/j/ac;->a(Landroid/view/ViewGroup;Landroidx/j/ac;)V

    return-void
.end method

.method d()Z
    .locals 0

    .line 259
    iget p0, p0, Landroidx/j/ac;->b:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
