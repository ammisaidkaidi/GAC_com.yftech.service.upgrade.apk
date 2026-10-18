.class public abstract Landroidx/recyclerview/widget/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field private static final e:I = -0x80000000


# instance fields
.field protected final a:Landroidx/recyclerview/widget/RecyclerView$i;

.field final d:Landroid/graphics/Rect;

.field private f:I


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView$i;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 42
    iput v0, p0, Landroidx/recyclerview/widget/w;->f:I

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/recyclerview/widget/w;->d:Landroid/graphics/Rect;

    .line 47
    iput-object p1, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$i;Landroidx/recyclerview/widget/w$1;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/w;-><init>(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/w;
    .locals 1

    .line 258
    new-instance v0, Landroidx/recyclerview/widget/w$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/w$1;-><init>(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-object v0
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView$i;I)Landroidx/recyclerview/widget/w;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 247
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 245
    :pswitch_0
    invoke-static {p0}, Landroidx/recyclerview/widget/w;->b(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/w;

    move-result-object p0

    return-object p0

    .line 243
    :pswitch_1
    invoke-static {p0}, Landroidx/recyclerview/widget/w;->a(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/w;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroidx/recyclerview/widget/RecyclerView$i;)Landroidx/recyclerview/widget/w;
    .locals 1

    .line 356
    new-instance v0, Landroidx/recyclerview/widget/w$2;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/w$2;-><init>(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)I
.end method

.method public a()Landroidx/recyclerview/widget/RecyclerView$i;
    .locals 0

    .line 55
    iget-object p0, p0, Landroidx/recyclerview/widget/w;->a:Landroidx/recyclerview/widget/RecyclerView$i;

    return-object p0
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Landroid/view/View;I)V
.end method

.method public abstract b(Landroid/view/View;)I
.end method

.method public b()V
    .locals 1

    .line 64
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w;->g()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/w;->f:I

    return-void
.end method

.method public c()I
    .locals 2

    .line 78
    iget v0, p0, Landroidx/recyclerview/widget/w;->f:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/w;->g()I

    move-result v0

    iget p0, p0, Landroidx/recyclerview/widget/w;->f:I

    sub-int p0, v0, p0

    :goto_0
    return p0
.end method

.method public abstract c(Landroid/view/View;)I
.end method

.method public abstract d()I
.end method

.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract e()I
.end method

.method public abstract e(Landroid/view/View;)I
.end method

.method public abstract f()I
.end method

.method public abstract f(Landroid/view/View;)I
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public abstract j()I
.end method
