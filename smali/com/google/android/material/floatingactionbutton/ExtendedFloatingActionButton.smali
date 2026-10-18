.class public Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;
.super Lcom/google/android/material/button/MaterialButton;
.source "SourceFile"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$b;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$d;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;,
        Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;
    }
.end annotation


# static fields
.field static final f:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static final g:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:I

.field private static final i:I = 0x0

.field private static final j:I = 0x1

.field private static final k:I = 0x2


# instance fields
.field private l:I

.field private final m:Lcom/google/android/material/floatingactionbutton/a;

.field private final n:Lcom/google/android/material/floatingactionbutton/f;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final o:Lcom/google/android/material/floatingactionbutton/f;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final p:Lcom/google/android/material/floatingactionbutton/f;

.field private final q:Lcom/google/android/material/floatingactionbutton/f;

.field private final r:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$b<",
            "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 74
    sget v0, Lcom/google/android/material/a$n;->Widget_MaterialComponents_ExtendedFloatingActionButton_Icon:I

    sput v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->h:I

    .line 610
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;

    const-class v1, Ljava/lang/Float;

    const-string v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->f:Landroid/util/Property;

    .line 629
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;

    const-class v1, Ljava/lang/Float;

    const-string v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->g:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 138
    sget v0, Lcom/google/android/material/a$c;->extendedFloatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 144
    sget v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->h:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 81
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->l:I

    .line 83
    new-instance v0, Lcom/google/android/material/floatingactionbutton/a;

    invoke-direct {v0}, Lcom/google/android/material/floatingactionbutton/a;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->m:Lcom/google/android/material/floatingactionbutton/a;

    .line 86
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$d;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->m:Lcom/google/android/material/floatingactionbutton/a;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$d;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;)V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->p:Lcom/google/android/material/floatingactionbutton/f;

    .line 87
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$b;

    iget-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->m:Lcom/google/android/material/floatingactionbutton/a;

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$b;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;)V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->q:Lcom/google/android/material/floatingactionbutton/f;

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s:Z

    .line 146
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 147
    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;

    invoke-direct {v1, v7, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->r:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    .line 148
    sget-object v3, Lcom/google/android/material/a$o;->ExtendedFloatingActionButton:[I

    sget v5, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->h:I

    new-array v6, p1, [I

    move-object v1, v7

    move-object v2, p2

    move v4, p3

    .line 149
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/s;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 152
    sget v2, Lcom/google/android/material/a$o;->ExtendedFloatingActionButton_showMotionSpec:I

    .line 153
    invoke-static {v7, v1, v2}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/a/h;

    move-result-object v2

    .line 155
    sget v3, Lcom/google/android/material/a$o;->ExtendedFloatingActionButton_hideMotionSpec:I

    .line 156
    invoke-static {v7, v1, v3}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/a/h;

    move-result-object v3

    .line 158
    sget v4, Lcom/google/android/material/a$o;->ExtendedFloatingActionButton_extendMotionSpec:I

    .line 159
    invoke-static {v7, v1, v4}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/a/h;

    move-result-object v4

    .line 161
    sget v5, Lcom/google/android/material/a$o;->ExtendedFloatingActionButton_shrinkMotionSpec:I

    .line 162
    invoke-static {v7, v1, v5}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Lcom/google/android/material/a/h;

    move-result-object v5

    .line 165
    new-instance v6, Lcom/google/android/material/floatingactionbutton/a;

    invoke-direct {v6}, Lcom/google/android/material/floatingactionbutton/a;-><init>()V

    .line 166
    new-instance v8, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;

    new-instance v9, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;

    invoke-direct {v9, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$1;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    invoke-direct {v8, p0, v6, v9, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;Z)V

    iput-object v8, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->o:Lcom/google/android/material/floatingactionbutton/f;

    .line 186
    new-instance v0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;

    new-instance v8, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;

    invoke-direct {v8, p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$2;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)V

    invoke-direct {v0, p0, v6, v8, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$a;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/a;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$e;Z)V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->n:Lcom/google/android/material/floatingactionbutton/f;

    .line 206
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->p:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p1, v2}, Lcom/google/android/material/floatingactionbutton/f;->a(Lcom/google/android/material/a/h;)V

    .line 207
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->q:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p1, v3}, Lcom/google/android/material/floatingactionbutton/f;->a(Lcom/google/android/material/a/h;)V

    .line 208
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->o:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p1, v4}, Lcom/google/android/material/floatingactionbutton/f;->a(Lcom/google/android/material/a/h;)V

    .line 209
    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->n:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p1, v5}, Lcom/google/android/material/floatingactionbutton/f;->a(Lcom/google/android/material/a/h;)V

    .line 210
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 212
    sget p1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->h:I

    sget-object v0, Lcom/google/android/material/t/o;->a:Lcom/google/android/material/t/d;

    .line 213
    invoke-static {v7, p2, p3, p1, v0}, Lcom/google/android/material/t/o;->a(Landroid/content/Context;Landroid/util/AttributeSet;IILcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Lcom/google/android/material/t/o$a;->a()Lcom/google/android/material/t/o;

    move-result-object p1

    .line 216
    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->l:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/f;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->n:Lcom/google/android/material/floatingactionbutton/f;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/f;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->a(Lcom/google/android/material/floatingactionbutton/f;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;)V

    return-void
.end method

.method private a(Lcom/google/android/material/floatingactionbutton/f;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;)V
    .locals 2
    .param p1    # Lcom/google/android/material/floatingactionbutton/f;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 537
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 541
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 543
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/f;->g()V

    .line 544
    invoke-interface {p1, p2}, Lcom/google/android/material/floatingactionbutton/f;->a(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 548
    invoke-virtual {p0, v0, v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->measure(II)V

    .line 549
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/f;->f()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 550
    new-instance v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$3;-><init>(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Lcom/google/android/material/floatingactionbutton/f;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 575
    invoke-interface {p1}, Lcom/google/android/material/floatingactionbutton/f;->b()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/animation/Animator$AnimatorListener;

    .line 576
    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 579
    :cond_2
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/f;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->q:Lcom/google/android/material/floatingactionbutton/f;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/f;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->o:Lcom/google/android/material/floatingactionbutton/f;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Lcom/google/android/material/floatingactionbutton/f;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->p:Lcom/google/android/material/floatingactionbutton/f;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s:Z

    return p0
.end method

.method static synthetic f(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->h()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->i()Z

    move-result p0

    return p0
.end method

.method private h()Z
    .locals 3

    .line 583
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 585
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->l:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 588
    :cond_1
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->l:I

    if-eq p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private i()Z
    .locals 3

    .line 593
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 595
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->l:I

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 598
    :cond_1
    iget p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->l:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method private j()Z
    .locals 1

    .line 603
    invoke-static {p0}, Landroidx/core/n/af;->ag(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->isInEditMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 266
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->p:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0, p1}, Lcom/google/android/material/floatingactionbutton/f;->a(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public a(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;)V
    .locals 1
    .param p1    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 365
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->q:Lcom/google/android/material/floatingactionbutton/f;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->a(Lcom/google/android/material/floatingactionbutton/f;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;)V

    return-void
.end method

.method public b(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 276
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->p:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0, p1}, Lcom/google/android/material/floatingactionbutton/f;->b(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public b(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;)V
    .locals 1
    .param p1    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 385
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->p:Lcom/google/android/material/floatingactionbutton/f;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->a(Lcom/google/android/material/floatingactionbutton/f;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;)V

    return-void
.end method

.method public c(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 289
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->q:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0, p1}, Lcom/google/android/material/floatingactionbutton/f;->a(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public c(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;)V
    .locals 1
    .param p1    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 409
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->o:Lcom/google/android/material/floatingactionbutton/f;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->a(Lcom/google/android/material/floatingactionbutton/f;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;)V

    return-void
.end method

.method public final c()Z
    .locals 0

    .line 253
    iget-boolean p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s:Z

    return p0
.end method

.method public d()V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->q:Lcom/google/android/material/floatingactionbutton/f;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->a(Lcom/google/android/material/floatingactionbutton/f;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;)V

    return-void
.end method

.method public d(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 299
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->q:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0, p1}, Lcom/google/android/material/floatingactionbutton/f;->b(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public d(Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;)V
    .locals 1
    .param p1    # Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 434
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->n:Lcom/google/android/material/floatingactionbutton/f;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->a(Lcom/google/android/material/floatingactionbutton/f;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->p:Lcom/google/android/material/floatingactionbutton/f;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->a(Lcom/google/android/material/floatingactionbutton/f;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;)V

    return-void
.end method

.method public e(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 312
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->n:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0, p1}, Lcom/google/android/material/floatingactionbutton/f;->a(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 397
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->o:Lcom/google/android/material/floatingactionbutton/f;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->a(Lcom/google/android/material/floatingactionbutton/f;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;)V

    return-void
.end method

.method public f(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 322
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->n:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0, p1}, Lcom/google/android/material/floatingactionbutton/f;->b(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public g()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->n:Lcom/google/android/material/floatingactionbutton/f;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->a(Lcom/google/android/material/floatingactionbutton/f;Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$c;)V

    return-void
.end method

.method public g(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 335
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->o:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0, p1}, Lcom/google/android/material/floatingactionbutton/f;->a(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/coordinatorlayout/widget/CoordinatorLayout$b<",
            "Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->r:Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;

    return-object p0
.end method

.method getCollapsedSize()I
    .locals 2
    .annotation build Landroidx/annotation/ax;
    .end annotation

    .line 650
    invoke-static {p0}, Landroidx/core/n/af;->w(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Landroidx/core/n/af;->x(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 651
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getIconSize()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getExtendMotionSpec()Lcom/google/android/material/a/h;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 488
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->o:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/f;->c()Lcom/google/android/material/a/h;

    move-result-object p0

    return-object p0
.end method

.method public getHideMotionSpec()Lcom/google/android/material/a/h;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 464
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->q:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/f;->c()Lcom/google/android/material/a/h;

    move-result-object p0

    return-object p0
.end method

.method public getShowMotionSpec()Lcom/google/android/material/a/h;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 440
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->p:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/f;->c()Lcom/google/android/material/a/h;

    move-result-object p0

    return-object p0
.end method

.method public getShrinkMotionSpec()Lcom/google/android/material/a/h;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 514
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->n:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/f;->c()Lcom/google/android/material/a/h;

    move-result-object p0

    return-object p0
.end method

.method public h(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1    # Landroid/animation/Animator$AnimatorListener;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 345
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->o:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0, p1}, Lcom/google/android/material/floatingactionbutton/f;->b(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 221
    invoke-super {p0}, Lcom/google/android/material/button/MaterialButton;->onAttachedToWindow()V

    .line 223
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s:Z

    .line 225
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->n:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/f;->g()V

    :cond_0
    return-void
.end method

.method public setExtendMotionSpec(Lcom/google/android/material/a/h;)V
    .locals 0
    .param p1    # Lcom/google/android/material/a/h;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 497
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->o:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0, p1}, Lcom/google/android/material/floatingactionbutton/f;->a(Lcom/google/android/material/a/h;)V

    return-void
.end method

.method public setExtendMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/b;
        .end annotation
    .end param

    .line 506
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setExtendMotionSpec(Lcom/google/android/material/a/h;)V

    return-void
.end method

.method public setExtended(Z)V
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->s:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 244
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->o:Lcom/google/android/material/floatingactionbutton/f;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->n:Lcom/google/android/material/floatingactionbutton/f;

    .line 245
    :goto_0
    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/f;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 249
    :cond_2
    invoke-interface {p0}, Lcom/google/android/material/floatingactionbutton/f;->g()V

    return-void
.end method

.method public setHideMotionSpec(Lcom/google/android/material/a/h;)V
    .locals 0
    .param p1    # Lcom/google/android/material/a/h;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 473
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->q:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0, p1}, Lcom/google/android/material/floatingactionbutton/f;->a(Lcom/google/android/material/a/h;)V

    return-void
.end method

.method public setHideMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/b;
        .end annotation
    .end param

    .line 482
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setHideMotionSpec(Lcom/google/android/material/a/h;)V

    return-void
.end method

.method public setShowMotionSpec(Lcom/google/android/material/a/h;)V
    .locals 0
    .param p1    # Lcom/google/android/material/a/h;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 449
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->p:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0, p1}, Lcom/google/android/material/floatingactionbutton/f;->a(Lcom/google/android/material/a/h;)V

    return-void
.end method

.method public setShowMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/b;
        .end annotation
    .end param

    .line 458
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShowMotionSpec(Lcom/google/android/material/a/h;)V

    return-void
.end method

.method public setShrinkMotionSpec(Lcom/google/android/material/a/h;)V
    .locals 0
    .param p1    # Lcom/google/android/material/a/h;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 523
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->n:Lcom/google/android/material/floatingactionbutton/f;

    invoke-interface {p0, p1}, Lcom/google/android/material/floatingactionbutton/f;->a(Lcom/google/android/material/a/h;)V

    return-void
.end method

.method public setShrinkMotionSpecResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/b;
        .end annotation
    .end param

    .line 532
    invoke-virtual {p0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/material/a/h;->a(Landroid/content/Context;I)Lcom/google/android/material/a/h;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton;->setShrinkMotionSpec(Lcom/google/android/material/a/h;)V

    return-void
.end method
