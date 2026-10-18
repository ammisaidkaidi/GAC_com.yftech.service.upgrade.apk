.class public Landroidx/appcompat/app/q;
.super Landroidx/appcompat/app/a;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ActionBarOverlayLayout$a;


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/q$b;,
        Landroidx/appcompat/app/q$a;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "WindowDecorActionBar"

.field private static final B:Landroid/view/animation/Interpolator;

.field private static final C:Landroid/view/animation/Interpolator;

.field private static final L:I = -0x1

.field private static final M:J = 0x64L

.field private static final N:J = 0xc8L


# instance fields
.field private D:Landroid/content/Context;

.field private E:Landroid/app/Activity;

.field private F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/q$b;",
            ">;"
        }
    .end annotation
.end field

.field private G:Landroidx/appcompat/app/q$b;

.field private H:I

.field private I:Z

.field private J:Z

.field private K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private O:Z

.field private P:I

.field private Q:Z

.field private R:Z

.field private S:Z

.field i:Landroid/content/Context;

.field j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

.field k:Landroidx/appcompat/widget/ActionBarContainer;

.field l:Landroidx/appcompat/widget/ae;

.field m:Landroidx/appcompat/widget/ActionBarContextView;

.field n:Landroid/view/View;

.field o:Landroidx/appcompat/widget/ar;

.field p:Landroidx/appcompat/app/q$a;

.field q:Landroidx/appcompat/view/b;

.field r:Landroidx/appcompat/view/b$a;

.field s:Z

.field t:Z

.field u:Z

.field v:Landroidx/appcompat/view/h;

.field w:Z

.field final x:Landroidx/core/n/ak;

.field final y:Landroidx/core/n/ak;

.field final z:Landroidx/core/n/am;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/q;->B:Landroid/view/animation/Interpolator;

    .line 86
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/app/q;->C:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1

    .line 169
    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/q;->F:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Landroidx/appcompat/app/q;->H:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/q;->K:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Landroidx/appcompat/app/q;->P:I

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Landroidx/appcompat/app/q;->s:Z

    .line 129
    iput-boolean v0, p0, Landroidx/appcompat/app/q;->R:Z

    .line 135
    new-instance v0, Landroidx/appcompat/app/q$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/q$1;-><init>(Landroidx/appcompat/app/q;)V

    iput-object v0, p0, Landroidx/appcompat/app/q;->x:Landroidx/core/n/ak;

    .line 152
    new-instance v0, Landroidx/appcompat/app/q$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/q$2;-><init>(Landroidx/appcompat/app/q;)V

    iput-object v0, p0, Landroidx/appcompat/app/q;->y:Landroidx/core/n/ak;

    .line 160
    new-instance v0, Landroidx/appcompat/app/q$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/q$3;-><init>(Landroidx/appcompat/app/q;)V

    iput-object v0, p0, Landroidx/appcompat/app/q;->z:Landroidx/core/n/am;

    .line 170
    iput-object p1, p0, Landroidx/appcompat/app/q;->E:Landroid/app/Activity;

    .line 171
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 173
    invoke-direct {p0, p1}, Landroidx/appcompat/app/q;->b(Landroid/view/View;)V

    if-nez p2, :cond_0

    const p2, 0x1020002

    .line 175
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/q;->n:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    .line 179
    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/q;->F:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Landroidx/appcompat/app/q;->H:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/q;->K:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Landroidx/appcompat/app/q;->P:I

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Landroidx/appcompat/app/q;->s:Z

    .line 129
    iput-boolean v0, p0, Landroidx/appcompat/app/q;->R:Z

    .line 135
    new-instance v0, Landroidx/appcompat/app/q$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/q$1;-><init>(Landroidx/appcompat/app/q;)V

    iput-object v0, p0, Landroidx/appcompat/app/q;->x:Landroidx/core/n/ak;

    .line 152
    new-instance v0, Landroidx/appcompat/app/q$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/q$2;-><init>(Landroidx/appcompat/app/q;)V

    iput-object v0, p0, Landroidx/appcompat/app/q;->y:Landroidx/core/n/ak;

    .line 160
    new-instance v0, Landroidx/appcompat/app/q$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/q$3;-><init>(Landroidx/appcompat/app/q;)V

    iput-object v0, p0, Landroidx/appcompat/app/q;->z:Landroidx/core/n/am;

    .line 180
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/q;->b(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/q;->F:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 102
    iput v0, p0, Landroidx/appcompat/app/q;->H:I

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/q;->K:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Landroidx/appcompat/app/q;->P:I

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Landroidx/appcompat/app/q;->s:Z

    .line 129
    iput-boolean v0, p0, Landroidx/appcompat/app/q;->R:Z

    .line 135
    new-instance v0, Landroidx/appcompat/app/q$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/q$1;-><init>(Landroidx/appcompat/app/q;)V

    iput-object v0, p0, Landroidx/appcompat/app/q;->x:Landroidx/core/n/ak;

    .line 152
    new-instance v0, Landroidx/appcompat/app/q$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/q$2;-><init>(Landroidx/appcompat/app/q;)V

    iput-object v0, p0, Landroidx/appcompat/app/q;->y:Landroidx/core/n/ak;

    .line 160
    new-instance v0, Landroidx/appcompat/app/q$3;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/q$3;-><init>(Landroidx/appcompat/app/q;)V

    iput-object v0, p0, Landroidx/appcompat/app/q;->z:Landroidx/core/n/am;

    .line 189
    invoke-direct {p0, p1}, Landroidx/appcompat/app/q;->b(Landroid/view/View;)V

    return-void
.end method

.method private H()V
    .locals 4

    .line 286
    iget-object v0, p0, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    if-eqz v0, :cond_0

    return-void

    .line 290
    :cond_0
    new-instance v0, Landroidx/appcompat/widget/ar;

    iget-object v1, p0, Landroidx/appcompat/app/q;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/ar;-><init>(Landroid/content/Context;)V

    .line 292
    iget-boolean v1, p0, Landroidx/appcompat/app/q;->O:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 293
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ar;->setVisibility(I)V

    .line 294
    iget-object v1, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {v1, v0}, Landroidx/appcompat/widget/ae;->a(Landroidx/appcompat/widget/ar;)V

    goto :goto_1

    .line 296
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->f()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    .line 297
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ar;->setVisibility(I)V

    .line 298
    iget-object v1, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_3

    .line 299
    iget-object v1, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroidx/core/n/af;->T(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    .line 302
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ar;->setVisibility(I)V

    .line 304
    :cond_3
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ar;)V

    .line 306
    :goto_1
    iput-object v0, p0, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    return-void
.end method

.method private I()V
    .locals 1

    .line 427
    iget-object v0, p0, Landroidx/appcompat/app/q;->G:Landroidx/appcompat/app/q$b;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 428
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/q;->c(Landroidx/appcompat/app/a$f;)V

    .line 430
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/q;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 431
    iget-object v0, p0, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ar;->a()V

    :cond_1
    const/4 v0, -0x1

    .line 434
    iput v0, p0, Landroidx/appcompat/app/q;->H:I

    return-void
.end method

.method private J()V
    .locals 2

    .line 684
    iget-boolean v0, p0, Landroidx/appcompat/app/q;->Q:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 685
    iput-boolean v0, p0, Landroidx/appcompat/app/q;->Q:Z

    .line 686
    iget-object v1, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 687
    iget-object v1, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 689
    invoke-direct {p0, v0}, Landroidx/appcompat/app/q;->p(Z)V

    :cond_1
    return-void
.end method

.method private K()V
    .locals 2

    .line 710
    iget-boolean v0, p0, Landroidx/appcompat/app/q;->Q:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 711
    iput-boolean v0, p0, Landroidx/appcompat/app/q;->Q:Z

    .line 712
    iget-object v1, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_0

    .line 713
    iget-object v1, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 715
    :cond_0
    invoke-direct {p0, v0}, Landroidx/appcompat/app/q;->p(Z)V

    :cond_1
    return-void
.end method

.method private L()Z
    .locals 0

    .line 914
    iget-object p0, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p0}, Landroidx/core/n/af;->ag(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static a(ZZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(Landroid/view/View;)V
    .locals 5

    .line 193
    sget v0, Landroidx/appcompat/a$g;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    .line 194
    iget-object v0, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroidx/appcompat/widget/ActionBarOverlayLayout$a;)V

    .line 197
    :cond_0
    sget v0, Landroidx/appcompat/a$g;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/q;->c(Landroid/view/View;)Landroidx/appcompat/widget/ae;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    .line 198
    sget v0, Landroidx/appcompat/a$g;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Landroidx/appcompat/app/q;->m:Landroidx/appcompat/widget/ActionBarContextView;

    .line 200
    sget v0, Landroidx/appcompat/a$g;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ActionBarContainer;

    iput-object p1, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    .line 203
    iget-object p1, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/appcompat/app/q;->m:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    if-eqz p1, :cond_7

    .line 208
    iget-object p1, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p1}, Landroidx/appcompat/widget/ae;->b()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/q;->i:Landroid/content/Context;

    .line 211
    iget-object p1, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p1}, Landroidx/appcompat/widget/ae;->r()I

    move-result p1

    and-int/lit8 p1, p1, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    if-eqz p1, :cond_2

    .line 214
    iput-boolean v0, p0, Landroidx/appcompat/app/q;->I:Z

    .line 217
    :cond_2
    iget-object v2, p0, Landroidx/appcompat/app/q;->i:Landroid/content/Context;

    invoke-static {v2}, Landroidx/appcompat/view/a;->a(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object v2

    .line 218
    invoke-virtual {v2}, Landroidx/appcompat/view/a;->f()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v1

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v0

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->f(Z)V

    .line 219
    invoke-virtual {v2}, Landroidx/appcompat/view/a;->d()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/q;->o(Z)V

    .line 221
    iget-object p1, p0, Landroidx/appcompat/app/q;->i:Landroid/content/Context;

    const/4 v2, 0x0

    sget-object v3, Landroidx/appcompat/a$m;->ActionBar:[I

    sget v4, Landroidx/appcompat/a$b;->actionBarStyle:I

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 224
    sget v2, Landroidx/appcompat/a$m;->ActionBar_hideOnContentScroll:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 225
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/q;->g(Z)V

    .line 227
    :cond_5
    sget v0, Landroidx/appcompat/a$m;->ActionBar_elevation:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    if-eqz v0, :cond_6

    int-to-float v0, v0

    .line 229
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/q;->a(F)V

    .line 231
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .line 204
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " can only be used with a compatible window decor layout"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Landroidx/appcompat/app/a$f;I)V
    .locals 1

    .line 542
    check-cast p1, Landroidx/appcompat/app/q$b;

    .line 543
    invoke-virtual {p1}, Landroidx/appcompat/app/q$b;->h()Landroidx/appcompat/app/a$g;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 549
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/q$b;->e(I)V

    .line 550
    iget-object v0, p0, Landroidx/appcompat/app/q;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 552
    iget-object p1, p0, Landroidx/appcompat/app/q;->F:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    .line 554
    iget-object v0, p0, Landroidx/appcompat/app/q;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/q$b;

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/q$b;->e(I)V

    goto :goto_0

    :cond_0
    return-void

    .line 546
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Action Bar Tab must have a Callback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private c(Landroid/view/View;)Landroidx/appcompat/widget/ae;
    .locals 2

    .line 235
    instance-of p0, p1, Landroidx/appcompat/widget/ae;

    if-eqz p0, :cond_0

    .line 236
    check-cast p1, Landroidx/appcompat/widget/ae;

    return-object p1

    .line 237
    :cond_0
    instance-of p0, p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz p0, :cond_1

    .line 238
    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p1}, Landroidx/appcompat/widget/Toolbar;->getWrapper()Landroidx/appcompat/widget/ae;

    move-result-object p0

    return-object p0

    .line 240
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can\'t make a decor toolbar out of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    .line 241
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    const-string p1, "null"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private o(Z)V
    .locals 4

    .line 261
    iput-boolean p1, p0, Landroidx/appcompat/app/q;->O:Z

    .line 263
    iget-boolean p1, p0, Landroidx/appcompat/app/q;->O:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 264
    iget-object p1, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/ae;->a(Landroidx/appcompat/widget/ar;)V

    .line 265
    iget-object p1, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    iget-object v0, p0, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ar;)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTabContainer(Landroidx/appcompat/widget/ar;)V

    .line 268
    iget-object p1, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    iget-object v0, p0, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    invoke-interface {p1, v0}, Landroidx/appcompat/widget/ae;->a(Landroidx/appcompat/widget/ar;)V

    .line 270
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->f()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v2

    .line 271
    :goto_1
    iget-object v0, p0, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 273
    iget-object v0, p0, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ar;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_3

    .line 275
    iget-object v0, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroidx/core/n/af;->T(Landroid/view/View;)V

    goto :goto_2

    .line 278
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroidx/appcompat/widget/ar;->setVisibility(I)V

    .line 281
    :cond_3
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    iget-boolean v3, p0, Landroidx/appcompat/app/q;->O:Z

    if-nez v3, :cond_4

    if-eqz p1, :cond_4

    move v3, v1

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    invoke-interface {v0, v3}, Landroidx/appcompat/widget/ae;->a(Z)V

    .line 282
    iget-object v0, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    iget-boolean p0, p0, Landroidx/appcompat/app/q;->O:Z

    if-nez p0, :cond_5

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method private p(Z)V
    .locals 3

    .line 769
    iget-boolean v0, p0, Landroidx/appcompat/app/q;->t:Z

    iget-boolean v1, p0, Landroidx/appcompat/app/q;->u:Z

    iget-boolean v2, p0, Landroidx/appcompat/app/q;->Q:Z

    invoke-static {v0, v1, v2}, Landroidx/appcompat/app/q;->a(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    iget-boolean v0, p0, Landroidx/appcompat/app/q;->R:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 774
    iput-boolean v0, p0, Landroidx/appcompat/app/q;->R:Z

    .line 775
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->l(Z)V

    goto :goto_0

    .line 778
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/app/q;->R:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 779
    iput-boolean v0, p0, Landroidx/appcompat/app/q;->R:Z

    .line 780
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->m(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method A()V
    .locals 2

    .line 310
    iget-object v0, p0, Landroidx/appcompat/app/q;->r:Landroidx/appcompat/view/b$a;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Landroidx/appcompat/app/q;->r:Landroidx/appcompat/view/b$a;

    iget-object v1, p0, Landroidx/appcompat/app/q;->q:Landroidx/appcompat/view/b;

    invoke-interface {v0, v1}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;)V

    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Landroidx/appcompat/app/q;->q:Landroidx/appcompat/view/b;

    .line 313
    iput-object v0, p0, Landroidx/appcompat/app/q;->r:Landroidx/appcompat/view/b$a;

    :cond_0
    return-void
.end method

.method public B()V
    .locals 1

    .line 695
    iget-boolean v0, p0, Landroidx/appcompat/app/q;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 696
    iput-boolean v0, p0, Landroidx/appcompat/app/q;->u:Z

    const/4 v0, 0x1

    .line 697
    invoke-direct {p0, v0}, Landroidx/appcompat/app/q;->p(Z)V

    :cond_0
    return-void
.end method

.method public C()V
    .locals 1

    .line 721
    iget-boolean v0, p0, Landroidx/appcompat/app/q;->u:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 722
    iput-boolean v0, p0, Landroidx/appcompat/app/q;->u:Z

    .line 723
    invoke-direct {p0, v0}, Landroidx/appcompat/app/q;->p(Z)V

    :cond_0
    return-void
.end method

.method public D()V
    .locals 1

    .line 961
    iget-object v0, p0, Landroidx/appcompat/app/q;->v:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Landroidx/appcompat/app/q;->v:Landroidx/appcompat/view/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->c()V

    const/4 v0, 0x0

    .line 963
    iput-object v0, p0, Landroidx/appcompat/app/q;->v:Landroidx/appcompat/view/h;

    :cond_0
    return-void
.end method

.method public E()V
    .locals 0

    return-void
.end method

.method public F()Z
    .locals 0

    .line 1374
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->i()Z

    move-result p0

    return p0
.end method

.method public G()Z
    .locals 0

    .line 1388
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->j()Z

    move-result p0

    return p0
.end method

.method public a()I
    .locals 2

    .line 1300
    iget-object v0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->u()I

    move-result v0

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    return v1

    .line 1302
    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/app/q;->G:Landroidx/appcompat/app/q$b;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/q;->G:Landroidx/appcompat/app/q$b;

    invoke-virtual {p0}, Landroidx/appcompat/app/q$b;->a()I

    move-result v1

    :cond_0
    return v1

    .line 1304
    :pswitch_1
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->v()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .locals 2

    .line 521
    iget-object v0, p0, Landroidx/appcompat/app/q;->p:Landroidx/appcompat/app/q$a;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Landroidx/appcompat/app/q;->p:Landroidx/appcompat/app/q$a;

    invoke-virtual {v0}, Landroidx/appcompat/app/q$a;->c()V

    .line 525
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 526
    iget-object v0, p0, Landroidx/appcompat/app/q;->m:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->j()V

    .line 527
    new-instance v0, Landroidx/appcompat/app/q$a;

    iget-object v1, p0, Landroidx/appcompat/app/q;->m:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroidx/appcompat/app/q$a;-><init>(Landroidx/appcompat/app/q;Landroid/content/Context;Landroidx/appcompat/view/b$a;)V

    .line 528
    invoke-virtual {v0}, Landroidx/appcompat/app/q$a;->e()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 531
    iput-object v0, p0, Landroidx/appcompat/app/q;->p:Landroidx/appcompat/app/q$a;

    .line 532
    invoke-virtual {v0}, Landroidx/appcompat/app/q$a;->d()V

    .line 533
    iget-object p1, p0, Landroidx/appcompat/app/q;->m:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->a(Landroidx/appcompat/view/b;)V

    const/4 p1, 0x1

    .line 534
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->n(Z)V

    .line 535
    iget-object p0, p0, Landroidx/appcompat/app/q;->m:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(F)V
    .locals 0

    .line 247
    iget-object p0, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p0, p1}, Landroidx/core/n/af;->m(Landroid/view/View;F)V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 362
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    .line 363
    invoke-interface {v1}, Landroidx/appcompat/widget/ae;->a()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    .line 362
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 472
    iget-object v0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->r()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 474
    iput-boolean v1, p0, Landroidx/appcompat/app/q;->I:Z

    .line 476
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->c(I)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .line 257
    iget-object p1, p0, Landroidx/appcompat/app/q;->i:Landroid/content/Context;

    invoke-static {p1}, Landroidx/appcompat/view/a;->a(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/view/a;->d()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/q;->o(Z)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1370
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    .line 1284
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroidx/appcompat/app/a$b;)V
    .locals 0

    .line 1289
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1290
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/widget/SpinnerAdapter;Landroidx/appcompat/app/a$e;)V
    .locals 1

    .line 1295
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    new-instance v0, Landroidx/appcompat/app/l;

    invoke-direct {v0, p2}, Landroidx/appcompat/app/l;-><init>(Landroidx/appcompat/app/a$e;)V

    invoke-interface {p0, p1, v0}, Landroidx/appcompat/widget/ae;->a(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public a(Landroidx/appcompat/app/a$d;)V
    .locals 0

    .line 339
    iget-object p0, p0, Landroidx/appcompat/app/q;->K:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroidx/appcompat/app/a$f;)V
    .locals 1

    .line 560
    iget-object v0, p0, Landroidx/appcompat/app/q;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/q;->a(Landroidx/appcompat/app/a$f;Z)V

    return-void
.end method

.method public a(Landroidx/appcompat/app/a$f;I)V
    .locals 1

    .line 565
    iget-object v0, p0, Landroidx/appcompat/app/q;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/appcompat/app/q;->a(Landroidx/appcompat/app/a$f;IZ)V

    return-void
.end method

.method public a(Landroidx/appcompat/app/a$f;IZ)V
    .locals 1

    .line 580
    invoke-direct {p0}, Landroidx/appcompat/app/q;->H()V

    .line 581
    iget-object v0, p0, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/ar;->a(Landroidx/appcompat/app/a$f;IZ)V

    .line 582
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/q;->b(Landroidx/appcompat/app/a$f;I)V

    if-eqz p3, :cond_0

    .line 584
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->c(Landroidx/appcompat/app/a$f;)V

    :cond_0
    return-void
.end method

.method public a(Landroidx/appcompat/app/a$f;Z)V
    .locals 1

    .line 570
    invoke-direct {p0}, Landroidx/appcompat/app/q;->H()V

    .line 571
    iget-object v0, p0, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/ar;->b(Landroidx/appcompat/app/a$f;Z)V

    .line 572
    iget-object v0, p0, Landroidx/appcompat/app/q;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/q;->b(Landroidx/appcompat/app/a$f;I)V

    if-eqz p2, :cond_0

    .line 574
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->c(Landroidx/appcompat/app/a$f;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 439
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 368
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/q;->a(II)V

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1400
    iget-object v0, p0, Landroidx/appcompat/app/q;->p:Landroidx/appcompat/app/q$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1403
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/q;->p:Landroidx/appcompat/app/q$a;

    invoke-virtual {p0}, Landroidx/appcompat/app/q$a;->b()Landroid/view/Menu;

    move-result-object p0

    if-eqz p0, :cond_3

    if-eqz p2, :cond_1

    .line 1406
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1405
    :goto_0
    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 1407
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-interface {p0, v2}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 1408
    invoke-interface {p0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0

    :cond_3
    return v1
.end method

.method public b()I
    .locals 1

    .line 1312
    iget-object v0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->u()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 1314
    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/app/q;->F:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    .line 1316
    :pswitch_1
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->w()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(I)V
    .locals 0

    .line 1365
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->a(I)V

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1384
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b(Landroidx/appcompat/app/a$d;)V
    .locals 0

    .line 344
    iget-object p0, p0, Landroidx/appcompat/app/q;->K:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroidx/appcompat/app/a$f;)V
    .locals 0

    .line 595
    invoke-virtual {p1}, Landroidx/appcompat/app/a$f;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->i(I)V

    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 0

    .line 459
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 373
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/q;->a(II)V

    return-void
.end method

.method public c()Landroid/view/View;
    .locals 0

    .line 496
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->x()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public c(I)V
    .locals 0

    .line 1379
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->b(I)V

    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 481
    iget-object p0, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public c(Landroidx/appcompat/app/a$f;)V
    .locals 3

    .line 625
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->f()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eqz p1, :cond_0

    .line 626
    invoke-virtual {p1}, Landroidx/appcompat/app/a$f;->a()I

    move-result v1

    :cond_0
    iput v1, p0, Landroidx/appcompat/app/q;->H:I

    return-void

    .line 631
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/q;->E:Landroid/app/Activity;

    instance-of v0, v0, Landroidx/fragment/app/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->a()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 633
    iget-object v0, p0, Landroidx/appcompat/app/q;->E:Landroid/app/Activity;

    check-cast v0, Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->q()Landroidx/fragment/app/j;

    move-result-object v0

    .line 634
    invoke-virtual {v0}, Landroidx/fragment/app/j;->a()Landroidx/fragment/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/s;->p()Landroidx/fragment/app/s;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 639
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/app/q;->G:Landroidx/appcompat/app/q$b;

    if-ne v2, p1, :cond_3

    .line 640
    iget-object v1, p0, Landroidx/appcompat/app/q;->G:Landroidx/appcompat/app/q$b;

    if-eqz v1, :cond_6

    .line 641
    iget-object v1, p0, Landroidx/appcompat/app/q;->G:Landroidx/appcompat/app/q$b;

    invoke-virtual {v1}, Landroidx/appcompat/app/q$b;->h()Landroidx/appcompat/app/a$g;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/app/q;->G:Landroidx/appcompat/app/q$b;

    invoke-interface {v1, v2, v0}, Landroidx/appcompat/app/a$g;->c(Landroidx/appcompat/app/a$f;Landroidx/fragment/app/s;)V

    .line 642
    iget-object p0, p0, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    invoke-virtual {p1}, Landroidx/appcompat/app/a$f;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ar;->b(I)V

    goto :goto_1

    .line 645
    :cond_3
    iget-object v2, p0, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroidx/appcompat/app/a$f;->a()I

    move-result v1

    :cond_4
    invoke-virtual {v2, v1}, Landroidx/appcompat/widget/ar;->setTabSelected(I)V

    .line 646
    iget-object v1, p0, Landroidx/appcompat/app/q;->G:Landroidx/appcompat/app/q$b;

    if-eqz v1, :cond_5

    .line 647
    iget-object v1, p0, Landroidx/appcompat/app/q;->G:Landroidx/appcompat/app/q$b;

    invoke-virtual {v1}, Landroidx/appcompat/app/q$b;->h()Landroidx/appcompat/app/a$g;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/app/q;->G:Landroidx/appcompat/app/q$b;

    invoke-interface {v1, v2, v0}, Landroidx/appcompat/app/a$g;->b(Landroidx/appcompat/app/a$f;Landroidx/fragment/app/s;)V

    .line 649
    :cond_5
    check-cast p1, Landroidx/appcompat/app/q$b;

    iput-object p1, p0, Landroidx/appcompat/app/q;->G:Landroidx/appcompat/app/q$b;

    .line 650
    iget-object p1, p0, Landroidx/appcompat/app/q;->G:Landroidx/appcompat/app/q$b;

    if-eqz p1, :cond_6

    .line 651
    iget-object p1, p0, Landroidx/appcompat/app/q;->G:Landroidx/appcompat/app/q$b;

    invoke-virtual {p1}, Landroidx/appcompat/app/q$b;->h()Landroidx/appcompat/app/a$g;

    move-result-object p1

    iget-object p0, p0, Landroidx/appcompat/app/q;->G:Landroidx/appcompat/app/q$b;

    invoke-interface {p1, p0, v0}, Landroidx/appcompat/app/a$g;->a(Landroidx/appcompat/app/a$f;Landroidx/fragment/app/s;)V

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    .line 655
    invoke-virtual {v0}, Landroidx/fragment/app/s;->n()Z

    move-result p0

    if-nez p0, :cond_7

    .line 656
    invoke-virtual {v0}, Landroidx/fragment/app/s;->g()I

    :cond_7
    return-void
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 0

    .line 951
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->d(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 378
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/q;->a(II)V

    return-void
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 0

    .line 501
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->e()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public d(I)V
    .locals 1

    .line 408
    iget-object v0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->u()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 416
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 410
    :pswitch_0
    iget-object v0, p0, Landroidx/appcompat/app/q;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/a$f;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->c(Landroidx/appcompat/app/a$f;)V

    goto :goto_0

    .line 413
    :pswitch_1
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->e(I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 486
    iget-object p0, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 0

    .line 444
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 383
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/q;->a(II)V

    return-void
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 0

    .line 506
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->f()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public e(I)V
    .locals 1

    .line 398
    iget-object v0, p0, Landroidx/appcompat/app/q;->i:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public e(Z)V
    .locals 1

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 388
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/q;->a(II)V

    return-void
.end method

.method public f()I
    .locals 0

    .line 511
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->u()I

    move-result p0

    return p0
.end method

.method public f(I)V
    .locals 1

    .line 403
    iget-object v0, p0, Landroidx/appcompat/app/q;->i:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public f(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 941
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->c(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 393
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->b(Z)V

    return-void
.end method

.method public g()I
    .locals 0

    .line 516
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->r()I

    move-result p0

    return p0
.end method

.method public g(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 465
    iput-boolean v0, p0, Landroidx/appcompat/app/q;->I:Z

    .line 467
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->c(I)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 729
    iget-object v0, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 730
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 733
    :cond_1
    :goto_0
    iput-boolean p1, p0, Landroidx/appcompat/app/q;->w:Z

    .line 734
    iget-object p0, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void
.end method

.method public h()Landroidx/appcompat/app/a$f;
    .locals 1

    .line 590
    new-instance v0, Landroidx/appcompat/app/q$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/q$b;-><init>(Landroidx/appcompat/app/q;)V

    return-object v0
.end method

.method public h(I)V
    .locals 5

    .line 1329
    iget-object v0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->u()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1332
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->a()I

    move-result v2

    iput v2, p0, Landroidx/appcompat/app/q;->H:I

    const/4 v2, 0x0

    .line 1333
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/q;->c(Landroidx/appcompat/app/a$f;)V

    .line 1334
    iget-object v2, p0, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/ar;->setVisibility(I)V

    :goto_0
    if-eq v0, p1, :cond_1

    .line 1337
    iget-boolean v0, p0, Landroidx/appcompat/app/q;->O:Z

    if-nez v0, :cond_1

    .line 1338
    iget-object v0, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_1

    .line 1339
    iget-object v0, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroidx/core/n/af;->T(Landroid/view/View;)V

    .line 1342
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {v0, p1}, Landroidx/appcompat/widget/ae;->d(I)V

    const/4 v0, 0x0

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 1345
    :cond_2
    invoke-direct {p0}, Landroidx/appcompat/app/q;->H()V

    .line 1346
    iget-object v2, p0, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ar;->setVisibility(I)V

    .line 1347
    iget v2, p0, Landroidx/appcompat/app/q;->H:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 1348
    iget v2, p0, Landroidx/appcompat/app/q;->H:I

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/q;->d(I)V

    .line 1349
    iput v3, p0, Landroidx/appcompat/app/q;->H:I

    .line 1353
    :cond_3
    :goto_1
    iget-object v2, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    const/4 v3, 0x1

    if-ne p1, v1, :cond_4

    iget-boolean v4, p0, Landroidx/appcompat/app/q;->O:Z

    if-nez v4, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v0

    :goto_2
    invoke-interface {v2, v4}, Landroidx/appcompat/widget/ae;->a(Z)V

    .line 1354
    iget-object v2, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-ne p1, v1, :cond_5

    iget-boolean p0, p0, Landroidx/appcompat/app/q;->O:Z

    if-nez p0, :cond_5

    move v0, v3

    :cond_5
    invoke-virtual {v2, v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method public h(Z)V
    .locals 1

    .line 1393
    iget-boolean v0, p0, Landroidx/appcompat/app/q;->I:Z

    if-nez v0, :cond_0

    .line 1394
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->c(Z)V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 0

    .line 423
    invoke-direct {p0}, Landroidx/appcompat/app/q;->I()V

    return-void
.end method

.method public i(I)V
    .locals 4

    .line 600
    iget-object v0, p0, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    if-nez v0, :cond_0

    return-void

    .line 605
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/q;->G:Landroidx/appcompat/app/q$b;

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Landroidx/appcompat/app/q;->G:Landroidx/appcompat/app/q$b;

    invoke-virtual {v0}, Landroidx/appcompat/app/q$b;->a()I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Landroidx/appcompat/app/q;->H:I

    .line 607
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/app/q;->o:Landroidx/appcompat/widget/ar;

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/ar;->d(I)V

    .line 608
    iget-object v1, p0, Landroidx/appcompat/app/q;->F:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/app/q$b;

    if-eqz v1, :cond_2

    const/4 v2, -0x1

    .line 610
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/q$b;->e(I)V

    .line 613
    :cond_2
    iget-object v1, p0, Landroidx/appcompat/app/q;->F:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, p1

    :goto_1
    if-ge v2, v1, :cond_3

    .line 615
    iget-object v3, p0, Landroidx/appcompat/app/q;->F:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/app/q$b;

    invoke-virtual {v3, v2}, Landroidx/appcompat/app/q$b;->e(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-ne v0, p1, :cond_5

    .line 619
    iget-object v0, p0, Landroidx/appcompat/app/q;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Landroidx/appcompat/app/q;->F:Ljava/util/ArrayList;

    const/4 v1, 0x0

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/app/q$b;

    :goto_2
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/q;->c(Landroidx/appcompat/app/a$f;)V

    :cond_5
    return-void
.end method

.method public i(Z)V
    .locals 0

    .line 331
    iput-boolean p1, p0, Landroidx/appcompat/app/q;->S:Z

    if-nez p1, :cond_0

    .line 332
    iget-object p1, p0, Landroidx/appcompat/app/q;->v:Landroidx/appcompat/view/h;

    if-eqz p1, :cond_0

    .line 333
    iget-object p0, p0, Landroidx/appcompat/app/q;->v:Landroidx/appcompat/view/h;

    invoke-virtual {p0}, Landroidx/appcompat/view/h;->c()V

    :cond_0
    return-void
.end method

.method public j()Landroidx/appcompat/app/a$f;
    .locals 0

    .line 662
    iget-object p0, p0, Landroidx/appcompat/app/q;->G:Landroidx/appcompat/app/q$b;

    return-object p0
.end method

.method public j(I)Landroidx/appcompat/app/a$f;
    .locals 0

    .line 1359
    iget-object p0, p0, Landroidx/appcompat/app/q;->F:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/app/a$f;

    return-object p0
.end method

.method public j(Z)V
    .locals 3

    .line 349
    iget-boolean v0, p0, Landroidx/appcompat/app/q;->J:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 352
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/app/q;->J:Z

    .line 354
    iget-object v0, p0, Landroidx/appcompat/app/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 356
    iget-object v2, p0, Landroidx/appcompat/app/q;->K:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/a$d;

    invoke-interface {v2, p1}, Landroidx/appcompat/app/a$d;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k()I
    .locals 0

    .line 1324
    iget-object p0, p0, Landroidx/appcompat/app/q;->F:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public k(I)V
    .locals 0

    .line 946
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->g(I)V

    return-void
.end method

.method public k(Z)V
    .locals 0

    .line 672
    iput-boolean p1, p0, Landroidx/appcompat/app/q;->s:Z

    return-void
.end method

.method public l()I
    .locals 0

    .line 667
    iget-object p0, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result p0

    return p0
.end method

.method public l(I)V
    .locals 0

    .line 956
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->h(I)V

    return-void
.end method

.method public l(Z)V
    .locals 4

    .line 786
    iget-object v0, p0, Landroidx/appcompat/app/q;->v:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Landroidx/appcompat/app/q;->v:Landroidx/appcompat/view/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->c()V

    .line 789
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    .line 791
    iget v0, p0, Landroidx/appcompat/app/q;->P:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/appcompat/app/q;->S:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 793
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 794
    iget-object v0, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 796
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    .line 797
    iget-object v2, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2, p1}, Landroidx/appcompat/widget/ActionBarContainer;->getLocationInWindow([I)V

    const/4 v2, 0x1

    .line 798
    aget p1, p1, v2

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 800
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 801
    new-instance p1, Landroidx/appcompat/view/h;

    invoke-direct {p1}, Landroidx/appcompat/view/h;-><init>()V

    .line 802
    iget-object v2, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {v2}, Landroidx/core/n/af;->F(Landroid/view/View;)Landroidx/core/n/aj;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/core/n/aj;->d(F)Landroidx/core/n/aj;

    move-result-object v2

    .line 803
    iget-object v3, p0, Landroidx/appcompat/app/q;->z:Landroidx/core/n/am;

    invoke-virtual {v2, v3}, Landroidx/core/n/aj;->a(Landroidx/core/n/am;)Landroidx/core/n/aj;

    .line 804
    invoke-virtual {p1, v2}, Landroidx/appcompat/view/h;->a(Landroidx/core/n/aj;)Landroidx/appcompat/view/h;

    .line 805
    iget-boolean v2, p0, Landroidx/appcompat/app/q;->s:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroidx/appcompat/app/q;->n:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 806
    iget-object v2, p0, Landroidx/appcompat/app/q;->n:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 807
    iget-object v0, p0, Landroidx/appcompat/app/q;->n:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/n/af;->F(Landroid/view/View;)Landroidx/core/n/aj;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/core/n/aj;->d(F)Landroidx/core/n/aj;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/h;->a(Landroidx/core/n/aj;)Landroidx/appcompat/view/h;

    .line 809
    :cond_3
    sget-object v0, Landroidx/appcompat/app/q;->C:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/h;->a(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/h;

    const-wide/16 v0, 0xfa

    .line 810
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/view/h;->a(J)Landroidx/appcompat/view/h;

    .line 818
    iget-object v0, p0, Landroidx/appcompat/app/q;->y:Landroidx/core/n/ak;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/h;->a(Landroidx/core/n/ak;)Landroidx/appcompat/view/h;

    .line 819
    iput-object p1, p0, Landroidx/appcompat/app/q;->v:Landroidx/appcompat/view/h;

    .line 820
    invoke-virtual {p1}, Landroidx/appcompat/view/h;->a()V

    goto :goto_0

    .line 822
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContainer;->setAlpha(F)V

    .line 823
    iget-object p1, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTranslationY(F)V

    .line 824
    iget-boolean p1, p0, Landroidx/appcompat/app/q;->s:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Landroidx/appcompat/app/q;->n:Landroid/view/View;

    if-eqz p1, :cond_5

    .line 825
    iget-object p1, p0, Landroidx/appcompat/app/q;->n:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 827
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/app/q;->y:Landroidx/core/n/ak;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroidx/core/n/ak;->b(Landroid/view/View;)V

    .line 829
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p1, :cond_6

    .line 830
    iget-object p0, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-static {p0}, Landroidx/core/n/af;->T(Landroid/view/View;)V

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public m()V
    .locals 1

    .line 677
    iget-boolean v0, p0, Landroidx/appcompat/app/q;->t:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 678
    iput-boolean v0, p0, Landroidx/appcompat/app/q;->t:Z

    .line 679
    invoke-direct {p0, v0}, Landroidx/appcompat/app/q;->p(Z)V

    :cond_0
    return-void
.end method

.method public m(I)V
    .locals 1

    if-eqz p1, :cond_1

    .line 749
    iget-object v0, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 750
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to set a non-zero hide offset"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 753
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V

    return-void
.end method

.method public m(Z)V
    .locals 4

    .line 835
    iget-object v0, p0, Landroidx/appcompat/app/q;->v:Landroidx/appcompat/view/h;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Landroidx/appcompat/app/q;->v:Landroidx/appcompat/view/h;

    invoke-virtual {v0}, Landroidx/appcompat/view/h;->c()V

    .line 839
    :cond_0
    iget v0, p0, Landroidx/appcompat/app/q;->P:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/appcompat/app/q;->S:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 840
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setAlpha(F)V

    .line 841
    iget-object v0, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 842
    new-instance v0, Landroidx/appcompat/view/h;

    invoke-direct {v0}, Landroidx/appcompat/view/h;-><init>()V

    .line 843
    iget-object v2, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContainer;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 845
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    .line 846
    iget-object v3, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {v3, p1}, Landroidx/appcompat/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 847
    aget p1, p1, v1

    int-to-float p1, p1

    sub-float/2addr v2, p1

    .line 849
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p1}, Landroidx/core/n/af;->F(Landroid/view/View;)Landroidx/core/n/aj;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/n/aj;->d(F)Landroidx/core/n/aj;

    move-result-object p1

    .line 850
    iget-object v1, p0, Landroidx/appcompat/app/q;->z:Landroidx/core/n/am;

    invoke-virtual {p1, v1}, Landroidx/core/n/aj;->a(Landroidx/core/n/am;)Landroidx/core/n/aj;

    .line 851
    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->a(Landroidx/core/n/aj;)Landroidx/appcompat/view/h;

    .line 852
    iget-boolean p1, p0, Landroidx/appcompat/app/q;->s:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroidx/appcompat/app/q;->n:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 853
    iget-object p1, p0, Landroidx/appcompat/app/q;->n:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/n/af;->F(Landroid/view/View;)Landroidx/core/n/aj;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/core/n/aj;->d(F)Landroidx/core/n/aj;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->a(Landroidx/core/n/aj;)Landroidx/appcompat/view/h;

    .line 855
    :cond_3
    sget-object p1, Landroidx/appcompat/app/q;->B:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->a(Landroid/view/animation/Interpolator;)Landroidx/appcompat/view/h;

    const-wide/16 v1, 0xfa

    .line 856
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/view/h;->a(J)Landroidx/appcompat/view/h;

    .line 857
    iget-object p1, p0, Landroidx/appcompat/app/q;->x:Landroidx/core/n/ak;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/h;->a(Landroidx/core/n/ak;)Landroidx/appcompat/view/h;

    .line 858
    iput-object v0, p0, Landroidx/appcompat/app/q;->v:Landroidx/appcompat/view/h;

    .line 859
    invoke-virtual {v0}, Landroidx/appcompat/view/h;->a()V

    goto :goto_0

    .line 861
    :cond_4
    iget-object p0, p0, Landroidx/appcompat/app/q;->x:Landroidx/core/n/ak;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroidx/core/n/ak;->b(Landroid/view/View;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public n()V
    .locals 1

    .line 703
    iget-boolean v0, p0, Landroidx/appcompat/app/q;->t:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 704
    iput-boolean v0, p0, Landroidx/appcompat/app/q;->t:Z

    const/4 v0, 0x0

    .line 705
    invoke-direct {p0, v0}, Landroidx/appcompat/app/q;->p(Z)V

    :cond_0
    return-void
.end method

.method public n(I)V
    .locals 0

    .line 319
    iput p1, p0, Landroidx/appcompat/app/q;->P:I

    return-void
.end method

.method public n(Z)V
    .locals 9

    if-eqz p1, :cond_0

    .line 874
    invoke-direct {p0}, Landroidx/appcompat/app/q;->J()V

    goto :goto_0

    .line 876
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/app/q;->K()V

    .line 879
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/app/q;->L()Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    const-wide/16 v4, 0xc8

    const-wide/16 v6, 0x64

    if-eqz p1, :cond_1

    .line 886
    iget-object p1, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p1, v2, v6, v7}, Landroidx/appcompat/widget/ae;->a(IJ)Landroidx/core/n/aj;

    move-result-object p1

    .line 888
    iget-object p0, p0, Landroidx/appcompat/app/q;->m:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v3, v4, v5}, Landroidx/appcompat/widget/ActionBarContextView;->a(IJ)Landroidx/core/n/aj;

    move-result-object p0

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_1

    .line 891
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p1, v3, v4, v5}, Landroidx/appcompat/widget/ae;->a(IJ)Landroidx/core/n/aj;

    move-result-object p1

    .line 893
    iget-object p0, p0, Landroidx/appcompat/app/q;->m:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v1, v6, v7}, Landroidx/appcompat/widget/ActionBarContextView;->a(IJ)Landroidx/core/n/aj;

    move-result-object p0

    .line 896
    :goto_1
    new-instance v0, Landroidx/appcompat/view/h;

    invoke-direct {v0}, Landroidx/appcompat/view/h;-><init>()V

    .line 897
    invoke-virtual {v0, p0, p1}, Landroidx/appcompat/view/h;->a(Landroidx/core/n/aj;Landroidx/core/n/aj;)Landroidx/appcompat/view/h;

    .line 898
    invoke-virtual {v0}, Landroidx/appcompat/view/h;->a()V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 901
    iget-object p1, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p1, v2}, Landroidx/appcompat/widget/ae;->j(I)V

    .line 902
    iget-object p0, p0, Landroidx/appcompat/app/q;->m:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    goto :goto_2

    .line 904
    :cond_3
    iget-object p1, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p1, v3}, Landroidx/appcompat/widget/ae;->j(I)V

    .line 905
    iget-object p0, p0, Landroidx/appcompat/app/q;->m:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public o()Z
    .locals 2

    .line 867
    invoke-virtual {p0}, Landroidx/appcompat/app/q;->l()I

    move-result v0

    .line 869
    iget-boolean v1, p0, Landroidx/appcompat/app/q;->R:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/app/q;->s()I

    move-result p0

    if-ge p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public p()Landroid/content/Context;
    .locals 4

    .line 919
    iget-object v0, p0, Landroidx/appcompat/app/q;->D:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 920
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 921
    iget-object v1, p0, Landroidx/appcompat/app/q;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 922
    sget v2, Landroidx/appcompat/a$b;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 923
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v0, :cond_0

    .line 926
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroidx/appcompat/app/q;->i:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroidx/appcompat/app/q;->D:Landroid/content/Context;

    goto :goto_0

    .line 928
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/q;->i:Landroid/content/Context;

    iput-object v0, p0, Landroidx/appcompat/app/q;->D:Landroid/content/Context;

    .line 931
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/app/q;->D:Landroid/content/Context;

    return-object p0
.end method

.method public q()Z
    .locals 1

    .line 936
    iget-object v0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->t()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public r()Z
    .locals 0

    .line 739
    iget-object p0, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->d()Z

    move-result p0

    return p0
.end method

.method public s()I
    .locals 0

    .line 744
    iget-object p0, p0, Landroidx/appcompat/app/q;->j:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I

    move-result p0

    return p0
.end method

.method public t()F
    .locals 0

    .line 252
    iget-object p0, p0, Landroidx/appcompat/app/q;->k:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-static {p0}, Landroidx/core/n/af;->P(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public x()Z
    .locals 1

    .line 973
    iget-object v0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->d()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public y()Z
    .locals 1

    .line 449
    iget-object p0, p0, Landroidx/appcompat/app/q;->l:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->a()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 450
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 451
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
