.class public final Lcom/google/android/material/z/a/l;
.super Landroid/transition/Transition;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/am;
    a = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/z/a/l$d;,
        Lcom/google/android/material/z/a/l$c;,
        Lcom/google/android/material/z/a/l$f;,
        Lcom/google/android/material/z/a/l$b;,
        Lcom/google/android/material/z/a/l$a;,
        Lcom/google/android/material/z/a/l$e;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static final j:I = 0x2

.field private static final k:Ljava/lang/String; = "l"

.field private static final l:Ljava/lang/String; = "materialContainerTransition:bounds"

.field private static final m:Ljava/lang/String; = "materialContainerTransition:shapeAppearance"

.field private static final n:[Ljava/lang/String;

.field private static final o:Lcom/google/android/material/z/a/l$d;

.field private static final p:Lcom/google/android/material/z/a/l$d;

.field private static final q:Lcom/google/android/material/z/a/l$d;

.field private static final r:Lcom/google/android/material/z/a/l$d;

.field private static final s:F = -1.0f


# instance fields
.field private A:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private B:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private C:I

.field private D:I

.field private E:I

.field private F:Landroid/view/View;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private G:Landroid/view/View;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private H:Lcom/google/android/material/t/o;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private I:Lcom/google/android/material/t/o;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private J:Lcom/google/android/material/z/a/l$c;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private K:Lcom/google/android/material/z/a/l$c;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private L:Lcom/google/android/material/z/a/l$c;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private M:Lcom/google/android/material/z/a/l$c;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private N:Z

.field private O:F

.field private P:F

.field private t:Z

.field private u:Z

.field private v:I
    .annotation build Landroidx/annotation/w;
    .end annotation
.end field

.field private w:I
    .annotation build Landroidx/annotation/w;
    .end annotation
.end field

.field private x:I
    .annotation build Landroidx/annotation/w;
    .end annotation
.end field

.field private y:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private z:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const-string v0, "materialContainerTransition:bounds"

    const-string v1, "materialContainerTransition:shapeAppearance"

    .line 195
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/z/a/l;->n:[Ljava/lang/String;

    .line 201
    new-instance v0, Lcom/google/android/material/z/a/l$d;

    new-instance v2, Lcom/google/android/material/z/a/l$c;

    const/4 v7, 0x0

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {v2, v7, v1}, Lcom/google/android/material/z/a/l$c;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/z/a/l$c;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v8}, Lcom/google/android/material/z/a/l$c;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/z/a/l$c;

    invoke-direct {v4, v7, v8}, Lcom/google/android/material/z/a/l$c;-><init>(FF)V

    new-instance v5, Lcom/google/android/material/z/a/l$c;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v5, v7, v1}, Lcom/google/android/material/z/a/l$c;-><init>(FF)V

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/z/a/l$d;-><init>(Lcom/google/android/material/z/a/l$c;Lcom/google/android/material/z/a/l$c;Lcom/google/android/material/z/a/l$c;Lcom/google/android/material/z/a/l$c;Lcom/google/android/material/z/a/l$1;)V

    sput-object v0, Lcom/google/android/material/z/a/l;->o:Lcom/google/android/material/z/a/l$d;

    .line 207
    new-instance v0, Lcom/google/android/material/z/a/l$d;

    new-instance v10, Lcom/google/android/material/z/a/l$c;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v10, v1, v2}, Lcom/google/android/material/z/a/l$c;-><init>(FF)V

    new-instance v11, Lcom/google/android/material/z/a/l$c;

    invoke-direct {v11, v7, v8}, Lcom/google/android/material/z/a/l$c;-><init>(FF)V

    new-instance v12, Lcom/google/android/material/z/a/l$c;

    invoke-direct {v12, v7, v2}, Lcom/google/android/material/z/a/l$c;-><init>(FF)V

    new-instance v13, Lcom/google/android/material/z/a/l$c;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v13, v3, v2}, Lcom/google/android/material/z/a/l$c;-><init>(FF)V

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/google/android/material/z/a/l$d;-><init>(Lcom/google/android/material/z/a/l$c;Lcom/google/android/material/z/a/l$c;Lcom/google/android/material/z/a/l$c;Lcom/google/android/material/z/a/l$c;Lcom/google/android/material/z/a/l$1;)V

    sput-object v0, Lcom/google/android/material/z/a/l;->p:Lcom/google/android/material/z/a/l$d;

    .line 216
    new-instance v0, Lcom/google/android/material/z/a/l$d;

    new-instance v3, Lcom/google/android/material/z/a/l$c;

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/z/a/l$c;-><init>(FF)V

    new-instance v5, Lcom/google/android/material/z/a/l$c;

    invoke-direct {v5, v4, v8}, Lcom/google/android/material/z/a/l$c;-><init>(FF)V

    new-instance v6, Lcom/google/android/material/z/a/l$c;

    invoke-direct {v6, v4, v8}, Lcom/google/android/material/z/a/l$c;-><init>(FF)V

    new-instance v8, Lcom/google/android/material/z/a/l$c;

    invoke-direct {v8, v4, v2}, Lcom/google/android/material/z/a/l$c;-><init>(FF)V

    const/16 v20, 0x0

    move-object v15, v0

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    invoke-direct/range {v15 .. v20}, Lcom/google/android/material/z/a/l$d;-><init>(Lcom/google/android/material/z/a/l$c;Lcom/google/android/material/z/a/l$c;Lcom/google/android/material/z/a/l$c;Lcom/google/android/material/z/a/l$c;Lcom/google/android/material/z/a/l$1;)V

    sput-object v0, Lcom/google/android/material/z/a/l;->q:Lcom/google/android/material/z/a/l$d;

    .line 222
    new-instance v0, Lcom/google/android/material/z/a/l$d;

    new-instance v10, Lcom/google/android/material/z/a/l$c;

    invoke-direct {v10, v1, v2}, Lcom/google/android/material/z/a/l$c;-><init>(FF)V

    new-instance v11, Lcom/google/android/material/z/a/l$c;

    invoke-direct {v11, v7, v2}, Lcom/google/android/material/z/a/l$c;-><init>(FF)V

    new-instance v12, Lcom/google/android/material/z/a/l$c;

    invoke-direct {v12, v7, v2}, Lcom/google/android/material/z/a/l$c;-><init>(FF)V

    new-instance v13, Lcom/google/android/material/z/a/l$c;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v13, v1, v2}, Lcom/google/android/material/z/a/l$c;-><init>(FF)V

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/google/android/material/z/a/l$d;-><init>(Lcom/google/android/material/z/a/l$c;Lcom/google/android/material/z/a/l$c;Lcom/google/android/material/z/a/l$c;Lcom/google/android/material/z/a/l$c;Lcom/google/android/material/z/a/l$1;)V

    sput-object v0, Lcom/google/android/material/z/a/l;->r:Lcom/google/android/material/z/a/l$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 255
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    const/4 v0, 0x0

    .line 231
    iput-boolean v0, p0, Lcom/google/android/material/z/a/l;->t:Z

    .line 232
    iput-boolean v0, p0, Lcom/google/android/material/z/a/l;->u:Z

    const v1, 0x1020002

    .line 233
    iput v1, p0, Lcom/google/android/material/z/a/l;->v:I

    const/4 v1, -0x1

    .line 234
    iput v1, p0, Lcom/google/android/material/z/a/l;->w:I

    .line 235
    iput v1, p0, Lcom/google/android/material/z/a/l;->x:I

    .line 236
    iput v0, p0, Lcom/google/android/material/z/a/l;->y:I

    .line 237
    iput v0, p0, Lcom/google/android/material/z/a/l;->z:I

    .line 238
    iput v0, p0, Lcom/google/android/material/z/a/l;->A:I

    const/high16 v1, 0x52000000

    .line 239
    iput v1, p0, Lcom/google/android/material/z/a/l;->B:I

    .line 240
    iput v0, p0, Lcom/google/android/material/z/a/l;->C:I

    .line 241
    iput v0, p0, Lcom/google/android/material/z/a/l;->D:I

    .line 242
    iput v0, p0, Lcom/google/android/material/z/a/l;->E:I

    .line 251
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/z/a/l;->N:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 252
    iput v0, p0, Lcom/google/android/material/z/a/l;->O:F

    .line 253
    iput v0, p0, Lcom/google/android/material/z/a/l;->P:F

    .line 256
    sget-object v0, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, v0}, Lcom/google/android/material/z/a/l;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    return-void
.end method

.method private static a(FLandroid/view/View;)F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 987
    :cond_0
    invoke-static {p1}, Landroidx/core/n/af;->P(Landroid/view/View;)F

    move-result p0

    :goto_0
    return p0
.end method

.method private static a(Landroid/content/Context;)I
    .locals 3
    .annotation build Landroidx/annotation/at;
    .end annotation

    const/4 v0, 0x1

    .line 862
    new-array v0, v0, [I

    sget v1, Lcom/google/android/material/a$c;->transitionShapeAppearance:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, -0x1

    .line 863
    invoke-virtual {p0, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 864
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method private static a(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 993
    invoke-static {p1}, Lcom/google/android/material/z/a/v;->c(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p0

    .line 994
    invoke-virtual {p0, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    return-object p0

    .line 997
    :cond_0
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    const/4 p3, 0x0

    invoke-direct {p1, p3, p3, p2, p0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p1
.end method

.method private static a(Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/t/o;)Lcom/google/android/material/t/o;
    .locals 0
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 831
    invoke-static {p0, p2}, Lcom/google/android/material/z/a/l;->a(Landroid/view/View;Lcom/google/android/material/t/o;)Lcom/google/android/material/t/o;

    move-result-object p0

    .line 832
    invoke-static {p0, p1}, Lcom/google/android/material/z/a/v;->a(Lcom/google/android/material/t/o;Landroid/graphics/RectF;)Lcom/google/android/material/t/o;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/view/View;Lcom/google/android/material/t/o;)Lcom/google/android/material/t/o;
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    return-object p1

    .line 843
    :cond_0
    sget p1, Lcom/google/android/material/a$h;->mtrl_motion_snapshot_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/material/t/o;

    if-eqz p1, :cond_1

    .line 844
    sget p1, Lcom/google/android/material/a$h;->mtrl_motion_snapshot_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/t/o;

    return-object p0

    .line 847
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 848
    invoke-static {p1}, Lcom/google/android/material/z/a/l;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x0

    .line 850
    invoke-static {p1, v0, p0}, Lcom/google/android/material/t/o;->a(Landroid/content/Context;II)Lcom/google/android/material/t/o$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/t/o$a;->a()Lcom/google/android/material/t/o;

    move-result-object p0

    return-object p0

    .line 853
    :cond_2
    instance-of p1, p0, Lcom/google/android/material/t/s;

    if-eqz p1, :cond_3

    .line 854
    check-cast p0, Lcom/google/android/material/t/s;

    invoke-interface {p0}, Lcom/google/android/material/t/s;->getShapeAppearanceModel()Lcom/google/android/material/t/o;

    move-result-object p0

    return-object p0

    .line 857
    :cond_3
    invoke-static {}, Lcom/google/android/material/t/o;->a()Lcom/google/android/material/t/o$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/t/o$a;->a()Lcom/google/android/material/t/o;

    move-result-object p0

    return-object p0
.end method

.method private a(ZLcom/google/android/material/z/a/l$d;Lcom/google/android/material/z/a/l$d;)Lcom/google/android/material/z/a/l$d;
    .locals 6

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 1030
    :goto_0
    new-instance p1, Lcom/google/android/material/z/a/l$d;

    iget-object p3, p0, Lcom/google/android/material/z/a/l;->J:Lcom/google/android/material/z/a/l$c;

    .line 1031
    invoke-static {p2}, Lcom/google/android/material/z/a/l$d;->a(Lcom/google/android/material/z/a/l$d;)Lcom/google/android/material/z/a/l$c;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/material/z/a/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/google/android/material/z/a/l$c;

    iget-object p3, p0, Lcom/google/android/material/z/a/l;->K:Lcom/google/android/material/z/a/l$c;

    .line 1032
    invoke-static {p2}, Lcom/google/android/material/z/a/l$d;->b(Lcom/google/android/material/z/a/l$d;)Lcom/google/android/material/z/a/l$c;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/material/z/a/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lcom/google/android/material/z/a/l$c;

    iget-object p3, p0, Lcom/google/android/material/z/a/l;->L:Lcom/google/android/material/z/a/l$c;

    .line 1033
    invoke-static {p2}, Lcom/google/android/material/z/a/l$d;->c(Lcom/google/android/material/z/a/l$d;)Lcom/google/android/material/z/a/l$c;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/material/z/a/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lcom/google/android/material/z/a/l$c;

    iget-object p0, p0, Lcom/google/android/material/z/a/l;->M:Lcom/google/android/material/z/a/l$c;

    .line 1034
    invoke-static {p2}, Lcom/google/android/material/z/a/l$d;->d(Lcom/google/android/material/z/a/l$d;)Lcom/google/android/material/z/a/l$c;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/google/android/material/z/a/v;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/google/android/material/z/a/l$c;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/z/a/l$d;-><init>(Lcom/google/android/material/z/a/l$c;Lcom/google/android/material/z/a/l$c;Lcom/google/android/material/z/a/l$c;Lcom/google/android/material/z/a/l$c;Lcom/google/android/material/z/a/l$1;)V

    return-object p1
.end method

.method private static a(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/t/o;)V
    .locals 2
    .param p0    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 801
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/google/android/material/z/a/v;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 803
    iput-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    .line 804
    :cond_1
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    sget p2, Lcom/google/android/material/a$h;->mtrl_motion_snapshot_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_2

    .line 805
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    sget p2, Lcom/google/android/material/a$h;->mtrl_motion_snapshot_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 808
    iget-object p2, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    sget v0, Lcom/google/android/material/a$h;->mtrl_motion_snapshot_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 811
    iput-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 813
    :cond_2
    :goto_0
    iget-object p1, p0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 815
    invoke-static {p1}, Landroidx/core/n/af;->ag(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    if-eqz p2, :cond_5

    .line 817
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-static {p1}, Lcom/google/android/material/z/a/v;->a(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p2

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/google/android/material/z/a/v;->c(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p2

    .line 818
    :goto_1
    iget-object v0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "materialContainerTransition:bounds"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    iget-object p0, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v0, "materialContainerTransition:shapeAppearance"

    .line 821
    invoke-static {p1, p2, p3}, Lcom/google/android/material/z/a/l;->a(Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/t/o;)Lcom/google/android/material/t/o;

    move-result-object p1

    .line 819
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private a(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 3
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1002
    iget v0, p0, Lcom/google/android/material/z/a/l;->C:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1010
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid transition direction: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/material/z/a/l;->C:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    return v1

    :pswitch_1
    return v2

    .line 1004
    :pswitch_2
    invoke-static {p2}, Lcom/google/android/material/z/a/v;->a(Landroid/graphics/RectF;)F

    move-result p0

    invoke-static {p1}, Lcom/google/android/material/z/a/v;->a(Landroid/graphics/RectF;)F

    move-result p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/material/z/a/l;)Z
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/google/android/material/z/a/l;->u:Z

    return p0
.end method

.method private d(Z)Lcom/google/android/material/z/a/l$d;
    .locals 2

    .line 1015
    invoke-virtual {p0}, Lcom/google/android/material/z/a/l;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v0

    .line 1016
    instance-of v1, v0, Landroid/transition/ArcMotion;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/google/android/material/z/a/k;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1020
    :cond_0
    sget-object v0, Lcom/google/android/material/z/a/l;->o:Lcom/google/android/material/z/a/l$d;

    sget-object v1, Lcom/google/android/material/z/a/l;->p:Lcom/google/android/material/z/a/l$d;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/z/a/l;->a(ZLcom/google/android/material/z/a/l$d;Lcom/google/android/material/z/a/l$d;)Lcom/google/android/material/z/a/l$d;

    move-result-object p0

    return-object p0

    .line 1017
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/material/z/a/l;->q:Lcom/google/android/material/z/a/l$d;

    sget-object v1, Lcom/google/android/material/z/a/l;->r:Lcom/google/android/material/z/a/l$d;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/z/a/l;->a(ZLcom/google/android/material/z/a/l$d;Lcom/google/android/material/z/a/l$d;)Lcom/google/android/material/z/a/l$d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 0
    .annotation build Landroidx/annotation/w;
    .end annotation

    .line 262
    iget p0, p0, Lcom/google/android/material/z/a/l;->w:I

    return p0
.end method

.method public a(F)V
    .locals 0

    .line 424
    iput p1, p0, Lcom/google/android/material/z/a/l;->O:F

    return-void
.end method

.method public a(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param

    .line 280
    iput p1, p0, Lcom/google/android/material/z/a/l;->w:I

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 321
    iput-object p1, p0, Lcom/google/android/material/z/a/l;->F:Landroid/view/View;

    return-void
.end method

.method public a(Lcom/google/android/material/t/o;)V
    .locals 0
    .param p1    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 361
    iput-object p1, p0, Lcom/google/android/material/z/a/l;->H:Lcom/google/android/material/t/o;

    return-void
.end method

.method public a(Lcom/google/android/material/z/a/l$c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/z/a/l$c;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 674
    iput-object p1, p0, Lcom/google/android/material/z/a/l;->J:Lcom/google/android/material/z/a/l$c;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 404
    iput-boolean p1, p0, Lcom/google/android/material/z/a/l;->N:Z

    return-void
.end method

.method public b()I
    .locals 0
    .annotation build Landroidx/annotation/w;
    .end annotation

    .line 295
    iget p0, p0, Lcom/google/android/material/z/a/l;->x:I

    return p0
.end method

.method public b(F)V
    .locals 0

    .line 444
    iput p1, p0, Lcom/google/android/material/z/a/l;->P:F

    return-void
.end method

.method public b(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param

    .line 306
    iput p1, p0, Lcom/google/android/material/z/a/l;->x:I

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 336
    iput-object p1, p0, Lcom/google/android/material/z/a/l;->G:Landroid/view/View;

    return-void
.end method

.method public b(Lcom/google/android/material/t/o;)V
    .locals 0
    .param p1    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 380
    iput-object p1, p0, Lcom/google/android/material/z/a/l;->I:Lcom/google/android/material/t/o;

    return-void
.end method

.method public b(Lcom/google/android/material/z/a/l$c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/z/a/l$c;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 695
    iput-object p1, p0, Lcom/google/android/material/z/a/l;->K:Lcom/google/android/material/z/a/l$c;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 758
    iput-boolean p1, p0, Lcom/google/android/material/z/a/l;->u:Z

    return-void
.end method

.method public c()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 312
    iget-object p0, p0, Lcom/google/android/material/z/a/l;->F:Landroid/view/View;

    return-object p0
.end method

.method public c(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param

    .line 468
    iput p1, p0, Lcom/google/android/material/z/a/l;->v:I

    return-void
.end method

.method public c(Lcom/google/android/material/z/a/l$c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/z/a/l$c;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 717
    iput-object p1, p0, Lcom/google/android/material/z/a/l;->L:Lcom/google/android/material/z/a/l$c;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 776
    iput-boolean p1, p0, Lcom/google/android/material/z/a/l;->t:Z

    return-void
.end method

.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 2
    .param p1    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 792
    iget-object v0, p0, Lcom/google/android/material/z/a/l;->G:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/z/a/l;->x:I

    iget-object p0, p0, Lcom/google/android/material/z/a/l;->I:Lcom/google/android/material/t/o;

    invoke-static {p1, v0, v1, p0}, Lcom/google/android/material/z/a/l;->a(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/t/o;)V

    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 2
    .param p1    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 787
    iget-object v0, p0, Lcom/google/android/material/z/a/l;->F:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/z/a/l;->w:I

    iget-object p0, p0, Lcom/google/android/material/z/a/l;->H:Lcom/google/android/material/t/o;

    invoke-static {p1, v0, v1, p0}, Lcom/google/android/material/z/a/l;->a(Landroid/transition/TransitionValues;Landroid/view/View;ILcom/google/android/material/t/o;)V

    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 29
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/transition/TransitionValues;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 878
    :cond_0
    iget-object v3, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "materialContainerTransition:bounds"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/graphics/RectF;

    .line 879
    iget-object v3, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "materialContainerTransition:shapeAppearance"

    .line 880
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/google/android/material/t/o;

    if-eqz v10, :cond_6

    if-nez v11, :cond_1

    goto/16 :goto_3

    .line 886
    :cond_1
    iget-object v3, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "materialContainerTransition:bounds"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/graphics/RectF;

    .line 887
    iget-object v3, v1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v4, "materialContainerTransition:shapeAppearance"

    .line 888
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/google/android/material/t/o;

    if-eqz v14, :cond_5

    if-nez v15, :cond_2

    goto/16 :goto_2

    .line 894
    :cond_2
    iget-object v4, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 895
    iget-object v5, v1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 898
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v0, v5

    goto :goto_0

    :cond_3
    move-object v0, v4

    .line 899
    :goto_0
    iget v1, v6, Lcom/google/android/material/z/a/l;->v:I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 900
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v2, v1

    goto :goto_1

    .line 903
    :cond_4
    iget v1, v6, Lcom/google/android/material/z/a/l;->v:I

    invoke-static {v0, v1}, Lcom/google/android/material/z/a/v;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v28, v2

    move-object v2, v0

    move-object/from16 v0, v28

    .line 908
    :goto_1
    invoke-static {v2}, Lcom/google/android/material/z/a/v;->c(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v1

    .line 909
    iget v3, v1, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    .line 910
    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    .line 911
    invoke-static {v2, v0, v3, v1}, Lcom/google/android/material/z/a/l;->a(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;

    move-result-object v0

    .line 912
    invoke-virtual {v10, v3, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 913
    invoke-virtual {v14, v3, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 915
    invoke-direct {v6, v10, v14}, Lcom/google/android/material/z/a/l;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    move/from16 v21, v1

    .line 917
    new-instance v3, Lcom/google/android/material/z/a/l$f;

    move-object v7, v3

    .line 919
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/z/a/l;->getPathMotion()Landroid/transition/PathMotion;

    move-result-object v8

    iget v9, v6, Lcom/google/android/material/z/a/l;->O:F

    .line 923
    invoke-static {v9, v4}, Lcom/google/android/material/z/a/l;->a(FLandroid/view/View;)F

    move-result v12

    iget v9, v6, Lcom/google/android/material/z/a/l;->P:F

    .line 927
    invoke-static {v9, v5}, Lcom/google/android/material/z/a/l;->a(FLandroid/view/View;)F

    move-result v16

    iget v9, v6, Lcom/google/android/material/z/a/l;->y:I

    move/from16 v17, v9

    iget v9, v6, Lcom/google/android/material/z/a/l;->z:I

    move/from16 v18, v9

    iget v9, v6, Lcom/google/android/material/z/a/l;->A:I

    move/from16 v19, v9

    iget v9, v6, Lcom/google/android/material/z/a/l;->B:I

    move/from16 v20, v9

    iget-boolean v9, v6, Lcom/google/android/material/z/a/l;->N:Z

    move/from16 v22, v9

    iget v9, v6, Lcom/google/android/material/z/a/l;->D:I

    .line 934
    invoke-static {v9, v1}, Lcom/google/android/material/z/a/b;->a(IZ)Lcom/google/android/material/z/a/a;

    move-result-object v23

    iget v9, v6, Lcom/google/android/material/z/a/l;->E:I

    .line 935
    invoke-static {v9, v1, v10, v14}, Lcom/google/android/material/z/a/g;->a(IZLandroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/google/android/material/z/a/f;

    move-result-object v24

    .line 936
    invoke-direct {v6, v1}, Lcom/google/android/material/z/a/l;->d(Z)Lcom/google/android/material/z/a/l$d;

    move-result-object v25

    iget-boolean v1, v6, Lcom/google/android/material/z/a/l;->t:Z

    move/from16 v26, v1

    const/16 v27, 0x0

    move-object v9, v4

    move-object v13, v5

    invoke-direct/range {v7 .. v27}, Lcom/google/android/material/z/a/l$f;-><init>(Landroid/transition/PathMotion;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/t/o;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/t/o;FIIIIZZLcom/google/android/material/z/a/a;Lcom/google/android/material/z/a/f;Lcom/google/android/material/z/a/l$d;ZLcom/google/android/material/z/a/l$1;)V

    .line 940
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 941
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v7, v0, Landroid/graphics/RectF;->top:F

    .line 942
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, v0, Landroid/graphics/RectF;->right:F

    .line 943
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 944
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 940
    invoke-virtual {v3, v1, v7, v8, v0}, Lcom/google/android/material/z/a/l$f;->setBounds(IIII)V

    const/4 v0, 0x2

    .line 946
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 947
    new-instance v0, Lcom/google/android/material/z/a/l$1;

    invoke-direct {v0, v6, v3}, Lcom/google/android/material/z/a/l$1;-><init>(Lcom/google/android/material/z/a/l;Lcom/google/android/material/z/a/l$f;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 955
    new-instance v8, Lcom/google/android/material/z/a/l$2;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/z/a/l$2;-><init>(Lcom/google/android/material/z/a/l;Landroid/view/View;Lcom/google/android/material/z/a/l$f;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v6, v8}, Lcom/google/android/material/z/a/l;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-object v7

    .line 890
    :cond_5
    :goto_2
    sget-object v0, Lcom/google/android/material/z/a/l;->k:Ljava/lang/String;

    const-string v1, "Skipping due to null end bounds. Ensure end view is laid out and measured."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 882
    :cond_6
    :goto_3
    sget-object v0, Lcom/google/android/material/z/a/l;->k:Ljava/lang/String;

    const-string v1, "Skipping due to null start bounds. Ensure start view is laid out and measured."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_7
    :goto_4
    return-object v2

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public d()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 327
    iget-object p0, p0, Lcom/google/android/material/z/a/l;->G:Landroid/view/View;

    return-object p0
.end method

.method public d(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 500
    iput p1, p0, Lcom/google/android/material/z/a/l;->y:I

    return-void
.end method

.method public d(Lcom/google/android/material/z/a/l$c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/z/a/l$c;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 739
    iput-object p1, p0, Lcom/google/android/material/z/a/l;->M:Lcom/google/android/material/z/a/l$c;

    return-void
.end method

.method public e()Lcom/google/android/material/t/o;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 345
    iget-object p0, p0, Lcom/google/android/material/z/a/l;->H:Lcom/google/android/material/t/o;

    return-object p0
.end method

.method public e(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 527
    iput p1, p0, Lcom/google/android/material/z/a/l;->z:I

    return-void
.end method

.method public f()Lcom/google/android/material/t/o;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 370
    iget-object p0, p0, Lcom/google/android/material/z/a/l;->I:Lcom/google/android/material/t/o;

    return-object p0
.end method

.method public f(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 552
    iput p1, p0, Lcom/google/android/material/z/a/l;->A:I

    return-void
.end method

.method public g(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 567
    iput p1, p0, Lcom/google/android/material/z/a/l;->y:I

    .line 568
    iput p1, p0, Lcom/google/android/material/z/a/l;->z:I

    .line 569
    iput p1, p0, Lcom/google/android/material/z/a/l;->A:I

    return-void
.end method

.method public g()Z
    .locals 0

    .line 388
    iget-boolean p0, p0, Lcom/google/android/material/z/a/l;->N:Z

    return p0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 782
    sget-object p0, Lcom/google/android/material/z/a/l;->n:[Ljava/lang/String;

    return-object p0
.end method

.method public h()F
    .locals 0

    .line 414
    iget p0, p0, Lcom/google/android/material/z/a/l;->O:F

    return p0
.end method

.method public h(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 594
    iput p1, p0, Lcom/google/android/material/z/a/l;->B:I

    return-void
.end method

.method public i()F
    .locals 0

    .line 434
    iget p0, p0, Lcom/google/android/material/z/a/l;->P:F

    return p0
.end method

.method public i(I)V
    .locals 0

    .line 618
    iput p1, p0, Lcom/google/android/material/z/a/l;->C:I

    return-void
.end method

.method public j()I
    .locals 0
    .annotation build Landroidx/annotation/w;
    .end annotation

    .line 450
    iget p0, p0, Lcom/google/android/material/z/a/l;->v:I

    return p0
.end method

.method public j(I)V
    .locals 0

    .line 638
    iput p1, p0, Lcom/google/android/material/z/a/l;->D:I

    return-void
.end method

.method public k()I
    .locals 0
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 478
    iget p0, p0, Lcom/google/android/material/z/a/l;->y:I

    return p0
.end method

.method public k(I)V
    .locals 0

    .line 653
    iput p1, p0, Lcom/google/android/material/z/a/l;->E:I

    return-void
.end method

.method public l()I
    .locals 0
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 510
    iget p0, p0, Lcom/google/android/material/z/a/l;->z:I

    return p0
.end method

.method public m()I
    .locals 0
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 537
    iget p0, p0, Lcom/google/android/material/z/a/l;->A:I

    return p0
.end method

.method public n()I
    .locals 0
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 578
    iget p0, p0, Lcom/google/android/material/z/a/l;->B:I

    return p0
.end method

.method public o()I
    .locals 0

    .line 606
    iget p0, p0, Lcom/google/android/material/z/a/l;->C:I

    return p0
.end method

.method public p()I
    .locals 0

    .line 624
    iget p0, p0, Lcom/google/android/material/z/a/l;->D:I

    return p0
.end method

.method public q()I
    .locals 0

    .line 644
    iget p0, p0, Lcom/google/android/material/z/a/l;->E:I

    return p0
.end method

.method public r()Lcom/google/android/material/z/a/l$c;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 663
    iget-object p0, p0, Lcom/google/android/material/z/a/l;->J:Lcom/google/android/material/z/a/l$c;

    return-object p0
.end method

.method public s()Lcom/google/android/material/z/a/l$c;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 684
    iget-object p0, p0, Lcom/google/android/material/z/a/l;->K:Lcom/google/android/material/z/a/l$c;

    return-object p0
.end method

.method public t()Lcom/google/android/material/z/a/l$c;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 705
    iget-object p0, p0, Lcom/google/android/material/z/a/l;->L:Lcom/google/android/material/z/a/l$c;

    return-object p0
.end method

.method public u()Lcom/google/android/material/z/a/l$c;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 727
    iget-object p0, p0, Lcom/google/android/material/z/a/l;->M:Lcom/google/android/material/z/a/l$c;

    return-object p0
.end method

.method public v()Z
    .locals 0

    .line 748
    iget-boolean p0, p0, Lcom/google/android/material/z/a/l;->u:Z

    return p0
.end method

.method public w()Z
    .locals 0

    .line 767
    iget-boolean p0, p0, Lcom/google/android/material/z/a/l;->t:Z

    return p0
.end method
