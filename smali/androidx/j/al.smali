.class public Landroidx/j/al;
.super Landroidx/j/ag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/j/al$a;
    }
.end annotation


# static fields
.field public static final o:I = 0x0

.field public static final p:I = 0x1

.field private static final q:I = 0x1

.field private static final r:I = 0x2

.field private static final s:I = 0x4

.field private static final t:I = 0x8


# instance fields
.field a:I

.field b:Z

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/j/ag;",
            ">;"
        }
    .end annotation
.end field

.field private v:Z

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Landroidx/j/ag;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Landroidx/j/al;->v:Z

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Landroidx/j/al;->b:Z

    .line 88
    iput v0, p0, Landroidx/j/al;->w:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Landroidx/j/ag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Landroidx/j/al;->v:Z

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Landroidx/j/al;->b:Z

    .line 88
    iput v0, p0, Landroidx/j/al;->w:I

    .line 117
    sget-object v1, Landroidx/j/af;->i:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 118
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v1, "transitionOrdering"

    invoke-static {p1, p2, v1, v0, v0}, Landroidx/core/b/b/h;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result p2

    .line 121
    invoke-virtual {p0, p2}, Landroidx/j/al;->a(I)Landroidx/j/al;

    .line 122
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private c(Landroidx/j/ag;)V
    .locals 1
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 199
    iget-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iput-object p0, p1, Landroidx/j/ag;->k:Landroidx/j/al;

    return-void
.end method

.method private u()V
    .locals 3

    .line 418
    new-instance v0, Landroidx/j/al$a;

    invoke-direct {v0, p0}, Landroidx/j/al$a;-><init>(Landroidx/j/al;)V

    .line 419
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/ag;

    .line 420
    invoke-virtual {v2, v0}, Landroidx/j/ag;->a(Landroidx/j/ag$e;)Landroidx/j/ag;

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Landroidx/j/al;->a:I

    return-void
.end method


# virtual methods
.method public a(IZ)Landroidx/j/ag;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x0

    .line 367
    :goto_0
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 368
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/ag;

    invoke-virtual {v1, p1, p2}, Landroidx/j/ag;->a(IZ)Landroidx/j/ag;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/j/ag;->a(IZ)Landroidx/j/ag;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(J)Landroidx/j/ag;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 62
    invoke-virtual {p0, p1, p2}, Landroidx/j/al;->c(J)Landroidx/j/al;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(Landroid/animation/TimeInterpolator;)Landroidx/j/ag;
    .locals 0
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Landroidx/j/al;->b(Landroid/animation/TimeInterpolator;)Landroidx/j/al;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/view/View;Z)Landroidx/j/ag;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x0

    .line 349
    :goto_0
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 350
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/ag;

    invoke-virtual {v1, p1, p2}, Landroidx/j/ag;->a(Landroid/view/View;Z)Landroidx/j/ag;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/j/ag;->a(Landroid/view/View;Z)Landroidx/j/ag;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(Landroidx/j/ag$e;)Landroidx/j/ag;
    .locals 0
    .param p1    # Landroidx/j/ag$e;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Landroidx/j/al;->c(Landroidx/j/ag$e;)Landroidx/j/al;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(Ljava/lang/Class;)Landroidx/j/ag;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Landroidx/j/al;->c(Ljava/lang/Class;)Landroidx/j/al;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/Class;Z)Landroidx/j/ag;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Landroidx/j/ag;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 376
    :goto_0
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 377
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/ag;

    invoke-virtual {v1, p1, p2}, Landroidx/j/ag;->a(Ljava/lang/Class;Z)Landroidx/j/ag;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/j/ag;->a(Ljava/lang/Class;Z)Landroidx/j/ag;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(Ljava/lang/String;)Landroidx/j/ag;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Landroidx/j/al;->d(Ljava/lang/String;)Landroidx/j/al;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Landroidx/j/ag;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x0

    .line 358
    :goto_0
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 359
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/ag;

    invoke-virtual {v1, p1, p2}, Landroidx/j/ag;->a(Ljava/lang/String;Z)Landroidx/j/ag;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_0
    invoke-super {p0, p1, p2}, Landroidx/j/ag;->a(Ljava/lang/String;Z)Landroidx/j/ag;

    move-result-object p0

    return-object p0
.end method

.method public a(I)Landroidx/j/al;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 143
    new-instance p0, Landroid/util/AndroidRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid parameter for TransitionSet ordering: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 p1, 0x0

    .line 137
    iput-boolean p1, p0, Landroidx/j/al;->v:Z

    goto :goto_0

    :pswitch_1
    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Landroidx/j/al;->v:Z

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/view/View;)Landroidx/j/al;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x0

    .line 271
    :goto_0
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 272
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/ag;

    invoke-virtual {v1, p1}, Landroidx/j/ag;->c(Landroid/view/View;)Landroidx/j/ag;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/ag;->c(Landroid/view/View;)Landroidx/j/ag;

    move-result-object p0

    check-cast p0, Landroidx/j/al;

    return-object p0
.end method

.method public a(Landroidx/j/ag;)Landroidx/j/al;
    .locals 4
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 179
    invoke-direct {p0, p1}, Landroidx/j/al;->c(Landroidx/j/ag;)V

    .line 180
    iget-wide v0, p0, Landroidx/j/al;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 181
    iget-wide v0, p0, Landroidx/j/al;->h:J

    invoke-virtual {p1, v0, v1}, Landroidx/j/ag;->a(J)Landroidx/j/ag;

    .line 183
    :cond_0
    iget v0, p0, Landroidx/j/al;->w:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0}, Landroidx/j/al;->f()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/j/ag;->a(Landroid/animation/TimeInterpolator;)Landroidx/j/ag;

    .line 186
    :cond_1
    iget v0, p0, Landroidx/j/al;->w:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 187
    invoke-virtual {p0}, Landroidx/j/al;->r()Landroidx/j/ak;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/j/ag;->a(Landroidx/j/ak;)V

    .line 189
    :cond_2
    iget v0, p0, Landroidx/j/al;->w:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    .line 190
    invoke-virtual {p0}, Landroidx/j/al;->o()Landroidx/j/w;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/j/ag;->a(Landroidx/j/w;)V

    .line 192
    :cond_3
    iget v0, p0, Landroidx/j/al;->w:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_4

    .line 193
    invoke-virtual {p0}, Landroidx/j/al;->p()Landroidx/j/ag$c;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/j/ag;->a(Landroidx/j/ag$c;)V

    :cond_4
    return-object p0
.end method

.method protected a(Landroid/view/ViewGroup;Landroidx/j/ao;Landroidx/j/ao;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 12
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroidx/j/ao;",
            "Landroidx/j/ao;",
            "Ljava/util/ArrayList<",
            "Landroidx/j/an;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroidx/j/an;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 466
    invoke-virtual {p0}, Landroidx/j/al;->e()J

    move-result-wide v1

    .line 467
    iget-object v3, v0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 469
    iget-object v5, v0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/j/ag;

    const-wide/16 v7, 0x0

    cmp-long v5, v1, v7

    if-lez v5, :cond_2

    .line 472
    iget-boolean v5, v0, Landroidx/j/al;->v:Z

    if-nez v5, :cond_0

    if-nez v4, :cond_2

    .line 473
    :cond_0
    invoke-virtual {v6}, Landroidx/j/ag;->e()J

    move-result-wide v9

    cmp-long v5, v9, v7

    if-lez v5, :cond_1

    add-long/2addr v9, v1

    .line 475
    invoke-virtual {v6, v9, v10}, Landroidx/j/ag;->b(J)Landroidx/j/ag;

    goto :goto_1

    .line 477
    :cond_1
    invoke-virtual {v6, v1, v2}, Landroidx/j/ag;->b(J)Landroidx/j/ag;

    :cond_2
    :goto_1
    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    .line 480
    invoke-virtual/range {v6 .. v11}, Landroidx/j/ag;->a(Landroid/view/ViewGroup;Landroidx/j/ao;Landroidx/j/ao;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(Landroidx/j/ag$c;)V
    .locals 3

    .line 630
    invoke-super {p0, p1}, Landroidx/j/ag;->a(Landroidx/j/ag$c;)V

    .line 631
    iget v0, p0, Landroidx/j/al;->w:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroidx/j/al;->w:I

    .line 632
    iget-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 634
    iget-object v2, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/ag;

    invoke-virtual {v2, p1}, Landroidx/j/ag;->a(Landroidx/j/ag$c;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroidx/j/ak;)V
    .locals 3

    .line 620
    invoke-super {p0, p1}, Landroidx/j/ag;->a(Landroidx/j/ak;)V

    .line 621
    iget v0, p0, Landroidx/j/al;->w:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/j/al;->w:I

    .line 622
    iget-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 624
    iget-object v2, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/ag;

    invoke-virtual {v2, p1}, Landroidx/j/ag;->a(Landroidx/j/ak;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Landroidx/j/an;)V
    .locals 2
    .param p1    # Landroidx/j/an;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 524
    iget-object v0, p1, Landroidx/j/an;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/j/al;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 525
    iget-object p0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/ag;

    .line 526
    iget-object v1, p1, Landroidx/j/an;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/j/ag;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    invoke-virtual {v0, p1}, Landroidx/j/ag;->a(Landroidx/j/an;)V

    .line 528
    iget-object v1, p1, Landroidx/j/an;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroidx/j/w;)V
    .locals 2

    .line 390
    invoke-super {p0, p1}, Landroidx/j/ag;->a(Landroidx/j/w;)V

    .line 391
    iget v0, p0, Landroidx/j/al;->w:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/j/al;->w:I

    .line 392
    iget-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 393
    :goto_0
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 394
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/ag;

    invoke-virtual {v1, p1}, Landroidx/j/ag;->a(Landroidx/j/w;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()I
    .locals 0

    .line 158
    iget-boolean p0, p0, Landroidx/j/al;->v:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public synthetic b(I)Landroidx/j/ag;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Landroidx/j/al;->e(I)Landroidx/j/al;

    move-result-object p0

    return-object p0
.end method

.method public synthetic b(J)Landroidx/j/ag;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 62
    invoke-virtual {p0, p1, p2}, Landroidx/j/al;->d(J)Landroidx/j/al;

    move-result-object p0

    return-object p0
.end method

.method public synthetic b(Landroidx/j/ag$e;)Landroidx/j/ag;
    .locals 0
    .param p1    # Landroidx/j/ag$e;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Landroidx/j/al;->d(Landroidx/j/ag$e;)Landroidx/j/al;

    move-result-object p0

    return-object p0
.end method

.method public synthetic b(Ljava/lang/Class;)Landroidx/j/ag;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Landroidx/j/al;->d(Ljava/lang/Class;)Landroidx/j/al;

    move-result-object p0

    return-object p0
.end method

.method public synthetic b(Ljava/lang/String;)Landroidx/j/ag;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Landroidx/j/al;->e(Ljava/lang/String;)Landroidx/j/al;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/animation/TimeInterpolator;)Landroidx/j/al;
    .locals 3
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 258
    iget v0, p0, Landroidx/j/al;->w:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/j/al;->w:I

    .line 259
    iget-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 262
    iget-object v2, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/ag;

    invoke-virtual {v2, p1}, Landroidx/j/ag;->a(Landroid/animation/TimeInterpolator;)Landroidx/j/ag;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 265
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/ag;->a(Landroid/animation/TimeInterpolator;)Landroidx/j/ag;

    move-result-object p0

    check-cast p0, Landroidx/j/al;

    return-object p0
.end method

.method public b(Landroidx/j/ag;)Landroidx/j/al;
    .locals 1
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 407
    iget-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 408
    iput-object v0, p1, Landroidx/j/ag;->k:Landroidx/j/al;

    return-object p0
.end method

.method b(Landroid/view/ViewGroup;)V
    .locals 3
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 592
    invoke-super {p0, p1}, Landroidx/j/ag;->b(Landroid/view/ViewGroup;)V

    .line 593
    iget-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 595
    iget-object v2, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/ag;

    invoke-virtual {v2, p1}, Landroidx/j/ag;->b(Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Landroidx/j/an;)V
    .locals 2
    .param p1    # Landroidx/j/an;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 536
    iget-object v0, p1, Landroidx/j/an;->b:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroidx/j/al;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    iget-object p0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/ag;

    .line 538
    iget-object v1, p1, Landroidx/j/an;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/j/ag;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 539
    invoke-virtual {v0, p1}, Landroidx/j/ag;->b(Landroidx/j/an;)V

    .line 540
    iget-object v1, p1, Landroidx/j/an;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()I
    .locals 0

    .line 211
    iget-object p0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public synthetic c(I)Landroidx/j/ag;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Landroidx/j/al;->f(I)Landroidx/j/al;

    move-result-object p0

    return-object p0
.end method

.method public synthetic c(Landroid/view/View;)Landroidx/j/ag;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Landroidx/j/al;->a(Landroid/view/View;)Landroidx/j/al;

    move-result-object p0

    return-object p0
.end method

.method synthetic c(Landroid/view/ViewGroup;)Landroidx/j/ag;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Landroidx/j/al;->d(Landroid/view/ViewGroup;)Landroidx/j/al;

    move-result-object p0

    return-object p0
.end method

.method public c(J)Landroidx/j/al;
    .locals 4
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 239
    invoke-super {p0, p1, p2}, Landroidx/j/ag;->a(J)Landroidx/j/ag;

    .line 240
    iget-wide v0, p0, Landroidx/j/al;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 243
    iget-object v2, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/ag;

    invoke-virtual {v2, p1, p2}, Landroidx/j/ag;->a(J)Landroidx/j/ag;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public c(Landroidx/j/ag$e;)Landroidx/j/al;
    .locals 0
    .param p1    # Landroidx/j/ag$e;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 307
    invoke-super {p0, p1}, Landroidx/j/ag;->a(Landroidx/j/ag$e;)Landroidx/j/ag;

    move-result-object p0

    check-cast p0, Landroidx/j/al;

    return-object p0
.end method

.method public c(Ljava/lang/Class;)Landroidx/j/al;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/j/al;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 298
    :goto_0
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 299
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/ag;

    invoke-virtual {v1, p1}, Landroidx/j/ag;->a(Ljava/lang/Class;)Landroidx/j/ag;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 301
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/ag;->a(Ljava/lang/Class;)Landroidx/j/ag;

    move-result-object p0

    check-cast p0, Landroidx/j/al;

    return-object p0
.end method

.method c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 640
    invoke-super {p0, p1}, Landroidx/j/ag;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 641
    :goto_0
    iget-object v2, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 642
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/ag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/j/ag;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method c(Landroidx/j/an;)V
    .locals 3

    .line 548
    invoke-super {p0, p1}, Landroidx/j/ag;->c(Landroidx/j/an;)V

    .line 549
    iget-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 551
    iget-object v2, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/ag;

    invoke-virtual {v2, p1}, Landroidx/j/ag;->c(Landroidx/j/an;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0}, Landroidx/j/al;->s()Landroidx/j/ag;

    move-result-object p0

    return-object p0
.end method

.method public d(I)Landroidx/j/ag;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    if-ltz p1, :cond_1

    .line 223
    iget-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    iget-object p0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/j/ag;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic d(Landroid/view/View;)Landroidx/j/ag;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 62
    invoke-virtual {p0, p1}, Landroidx/j/al;->g(Landroid/view/View;)Landroidx/j/al;

    move-result-object p0

    return-object p0
.end method

.method public d(J)Landroidx/j/al;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 252
    invoke-super {p0, p1, p2}, Landroidx/j/ag;->b(J)Landroidx/j/ag;

    move-result-object p0

    check-cast p0, Landroidx/j/al;

    return-object p0
.end method

.method d(Landroid/view/ViewGroup;)Landroidx/j/al;
    .locals 3

    .line 601
    invoke-super {p0, p1}, Landroidx/j/ag;->c(Landroid/view/ViewGroup;)Landroidx/j/ag;

    .line 602
    iget-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 604
    iget-object v2, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/ag;

    invoke-virtual {v2, p1}, Landroidx/j/ag;->c(Landroid/view/ViewGroup;)Landroidx/j/ag;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public d(Landroidx/j/ag$e;)Landroidx/j/al;
    .locals 0
    .param p1    # Landroidx/j/ag$e;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 385
    invoke-super {p0, p1}, Landroidx/j/ag;->b(Landroidx/j/ag$e;)Landroidx/j/ag;

    move-result-object p0

    check-cast p0, Landroidx/j/al;

    return-object p0
.end method

.method public d(Ljava/lang/Class;)Landroidx/j/al;
    .locals 2
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroidx/j/al;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 331
    :goto_0
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 332
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/ag;

    invoke-virtual {v1, p1}, Landroidx/j/ag;->b(Ljava/lang/Class;)Landroidx/j/ag;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/ag;->b(Ljava/lang/Class;)Landroidx/j/ag;

    move-result-object p0

    check-cast p0, Landroidx/j/al;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Landroidx/j/al;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x0

    .line 289
    :goto_0
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 290
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/ag;

    invoke-virtual {v1, p1}, Landroidx/j/ag;->a(Ljava/lang/String;)Landroidx/j/ag;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/ag;->a(Ljava/lang/String;)Landroidx/j/ag;

    move-result-object p0

    check-cast p0, Landroidx/j/al;

    return-object p0
.end method

.method d(Z)V
    .locals 3

    .line 611
    invoke-super {p0, p1}, Landroidx/j/ag;->d(Z)V

    .line 612
    iget-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 614
    iget-object v2, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/ag;

    invoke-virtual {v2, p1}, Landroidx/j/ag;->d(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(I)Landroidx/j/al;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x0

    .line 280
    :goto_0
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 281
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/ag;

    invoke-virtual {v1, p1}, Landroidx/j/ag;->b(I)Landroidx/j/ag;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 283
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/ag;->b(I)Landroidx/j/ag;

    move-result-object p0

    check-cast p0, Landroidx/j/al;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Landroidx/j/al;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x0

    .line 340
    :goto_0
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 341
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/ag;

    invoke-virtual {v1, p1}, Landroidx/j/ag;->b(Ljava/lang/String;)Landroidx/j/ag;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/ag;->b(Ljava/lang/String;)Landroidx/j/ag;

    move-result-object p0

    check-cast p0, Landroidx/j/al;

    return-object p0
.end method

.method public e(Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 559
    invoke-super {p0, p1}, Landroidx/j/ag;->e(Landroid/view/View;)V

    .line 560
    iget-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 562
    iget-object v2, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/ag;

    invoke-virtual {v2, p1}, Landroidx/j/ag;->e(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f(I)Landroidx/j/al;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x0

    .line 313
    :goto_0
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 314
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/ag;

    invoke-virtual {v1, p1}, Landroidx/j/ag;->c(I)Landroidx/j/ag;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/ag;->c(I)Landroidx/j/ag;

    move-result-object p0

    check-cast p0, Landroidx/j/al;

    return-object p0
.end method

.method public f(Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 570
    invoke-super {p0, p1}, Landroidx/j/ag;->f(Landroid/view/View;)V

    .line 571
    iget-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 573
    iget-object v2, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/ag;

    invoke-virtual {v2, p1}, Landroidx/j/ag;->f(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public g(Landroid/view/View;)Landroidx/j/al;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x0

    .line 322
    :goto_0
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 323
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/ag;

    invoke-virtual {v1, p1}, Landroidx/j/ag;->d(Landroid/view/View;)Landroidx/j/ag;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_0
    invoke-super {p0, p1}, Landroidx/j/ag;->d(Landroid/view/View;)Landroidx/j/ag;

    move-result-object p0

    check-cast p0, Landroidx/j/al;

    return-object p0
.end method

.method protected g()V
    .locals 4
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {p0}, Landroidx/j/al;->l()V

    .line 493
    invoke-virtual {p0}, Landroidx/j/al;->m()V

    return-void

    .line 496
    :cond_0
    invoke-direct {p0}, Landroidx/j/al;->u()V

    .line 497
    iget-boolean v0, p0, Landroidx/j/al;->v:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 500
    :goto_0
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 501
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/ag;

    .line 502
    iget-object v2, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/ag;

    .line 503
    new-instance v3, Landroidx/j/al$1;

    invoke-direct {v3, p0, v2}, Landroidx/j/al$1;-><init>(Landroidx/j/al;Landroidx/j/ag;)V

    invoke-virtual {v1, v3}, Landroidx/j/ag;->a(Landroidx/j/ag$e;)Landroidx/j/ag;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    :cond_1
    iget-object p0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/j/ag;

    if-eqz p0, :cond_3

    .line 513
    invoke-virtual {p0}, Landroidx/j/ag;->g()V

    goto :goto_2

    .line 516
    :cond_2
    iget-object p0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/j/ag;

    .line 517
    invoke-virtual {v0}, Landroidx/j/ag;->g()V

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method protected n()V
    .locals 3
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 581
    invoke-super {p0}, Landroidx/j/ag;->n()V

    .line 582
    iget-object v0, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 584
    iget-object v2, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/ag;

    invoke-virtual {v2}, Landroidx/j/ag;->n()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s()Landroidx/j/ag;
    .locals 4

    .line 649
    invoke-super {p0}, Landroidx/j/ag;->s()Landroidx/j/ag;

    move-result-object v0

    check-cast v0, Landroidx/j/al;

    .line 650
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    .line 651
    iget-object v1, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 653
    iget-object v3, p0, Landroidx/j/al;->u:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/j/ag;

    invoke-virtual {v3}, Landroidx/j/ag;->s()Landroidx/j/ag;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/j/al;->c(Landroidx/j/ag;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
