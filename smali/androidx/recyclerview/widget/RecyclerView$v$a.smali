.class public Landroidx/recyclerview/widget/RecyclerView$v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:I = -0x80000000


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Landroid/view/animation/Interpolator;

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 12070
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$v$a;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 12079
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$v$a;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 12090
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 12055
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->e:I

    const/4 v0, 0x0

    .line 12059
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->g:Z

    .line 12063
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->h:I

    .line 12091
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->b:I

    .line 12092
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->c:I

    .line 12093
    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->d:I

    .line 12094
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->f:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private f()V
    .locals 2

    .line 12145
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->f:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->d:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 12146
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12148
    :cond_1
    :goto_0
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->d:I

    if-lt p0, v1, :cond_2

    return-void

    .line 12149
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Scroll duration must be a positive number"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 12113
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->e:I

    return-void
.end method

.method public a(IIILandroid/view/animation/Interpolator;)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 12208
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->b:I

    .line 12209
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->c:I

    .line 12210
    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->d:I

    .line 12211
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->f:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    .line 12212
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->g:Z

    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 12194
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->g:Z

    .line 12195
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->f:Landroid/view/animation/Interpolator;

    return-void
.end method

.method a(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    .line 12121
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->e:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 12122
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->e:I

    const/4 v2, -0x1

    .line 12123
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->e:I

    .line 12124
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->f(I)V

    .line 12125
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->g:Z

    return-void

    .line 12128
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->g:Z

    if-eqz v0, :cond_2

    .line 12129
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$v$a;->f()V

    .line 12130
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->aa:Landroidx/recyclerview/widget/RecyclerView$y;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->b:I

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->c:I

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->d:I

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->f:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$y;->a(IIILandroid/view/animation/Interpolator;)V

    .line 12131
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->h:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->h:I

    .line 12132
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->h:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    const-string p1, "RecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    .line 12135
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12138
    :cond_1
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->g:Z

    goto :goto_0

    .line 12140
    :cond_2
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->h:I

    :goto_0
    return-void
.end method

.method a()Z
    .locals 0

    .line 12117
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->e:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b()I
    .locals 0
    .annotation build Landroidx/annotation/ak;
    .end annotation

    .line 12155
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->b:I

    return p0
.end method

.method public b(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 12159
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->g:Z

    .line 12160
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->b:I

    return-void
.end method

.method public c()I
    .locals 0
    .annotation build Landroidx/annotation/ak;
    .end annotation

    .line 12165
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->c:I

    return p0
.end method

.method public c(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 12169
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->g:Z

    .line 12170
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->c:I

    return-void
.end method

.method public d()I
    .locals 0

    .line 12174
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->d:I

    return p0
.end method

.method public d(I)V
    .locals 1

    const/4 v0, 0x1

    .line 12178
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->g:Z

    .line 12179
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->d:I

    return-void
.end method

.method public e()Landroid/view/animation/Interpolator;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 12184
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$v$a;->f:Landroid/view/animation/Interpolator;

    return-object p0
.end method
