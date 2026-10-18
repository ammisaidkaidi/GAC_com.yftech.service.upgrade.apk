.class public final Lcom/google/android/material/z/l;
.super Landroidx/j/ag;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/z/l$d;,
        Lcom/google/android/material/z/l$c;,
        Lcom/google/android/material/z/l$f;,
        Lcom/google/android/material/z/l$b;,
        Lcom/google/android/material/z/l$a;,
        Lcom/google/android/material/z/l$e;
    }
.end annotation


# static fields
.field private static final A:Lcom/google/android/material/z/l$d;

.field private static final B:Lcom/google/android/material/z/l$d;

.field private static final C:Lcom/google/android/material/z/l$d;

.field private static final D:Lcom/google/android/material/z/l$d;

.field private static final E:F = -1.0f

.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final o:I = 0x2

.field public static final p:I = 0x0

.field public static final q:I = 0x1

.field public static final r:I = 0x2

.field public static final s:I = 0x3

.field public static final t:I = 0x0

.field public static final u:I = 0x1

.field public static final v:I = 0x2

.field private static final w:Ljava/lang/String; = "l"

.field private static final x:Ljava/lang/String; = "materialContainerTransition:bounds"

.field private static final y:Ljava/lang/String; = "materialContainerTransition:shapeAppearance"

.field private static final z:[Ljava/lang/String;


# instance fields
.field private F:Z

.field private G:Z

.field private H:I
    .annotation build Landroidx/annotation/w;
    .end annotation
.end field

.field private I:I
    .annotation build Landroidx/annotation/w;
    .end annotation
.end field

.field private J:I
    .annotation build Landroidx/annotation/w;
    .end annotation
.end field

.field private K:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private L:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private M:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private N:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private O:I

.field private P:I

.field private Q:I

.field private R:Landroid/view/View;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private S:Landroid/view/View;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private T:Lcom/google/android/material/t/o;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private U:Lcom/google/android/material/t/o;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private V:Lcom/google/android/material/z/l$c;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private W:Lcom/google/android/material/z/l$c;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private X:Lcom/google/android/material/z/l$c;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private Y:Lcom/google/android/material/z/l$c;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private Z:Z

.field private aa:F

.field private ab:F


# direct methods
.method static constructor <clinit>()V
    .locals 21

    const-string v0, "materialContainerTransition:bounds"

    const-string v1, "materialContainerTransition:shapeAppearance"

    .line 190
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/material/z/l;->z:[Ljava/lang/String;

    .line 196
    new-instance v0, Lcom/google/android/material/z/l$d;

    new-instance v2, Lcom/google/android/material/z/l$c;

    const/4 v7, 0x0

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-direct {v2, v7, v1}, Lcom/google/android/material/z/l$c;-><init>(FF)V

    new-instance v3, Lcom/google/android/material/z/l$c;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v3, v7, v8}, Lcom/google/android/material/z/l$c;-><init>(FF)V

    new-instance v4, Lcom/google/android/material/z/l$c;

    invoke-direct {v4, v7, v8}, Lcom/google/android/material/z/l$c;-><init>(FF)V

    new-instance v5, Lcom/google/android/material/z/l$c;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v5, v7, v1}, Lcom/google/android/material/z/l$c;-><init>(FF)V

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/z/l$d;-><init>(Lcom/google/android/material/z/l$c;Lcom/google/android/material/z/l$c;Lcom/google/android/material/z/l$c;Lcom/google/android/material/z/l$c;Lcom/google/android/material/z/l$1;)V

    sput-object v0, Lcom/google/android/material/z/l;->A:Lcom/google/android/material/z/l$d;

    .line 202
    new-instance v0, Lcom/google/android/material/z/l$d;

    new-instance v10, Lcom/google/android/material/z/l$c;

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v10, v1, v2}, Lcom/google/android/material/z/l$c;-><init>(FF)V

    new-instance v11, Lcom/google/android/material/z/l$c;

    invoke-direct {v11, v7, v8}, Lcom/google/android/material/z/l$c;-><init>(FF)V

    new-instance v12, Lcom/google/android/material/z/l$c;

    invoke-direct {v12, v7, v2}, Lcom/google/android/material/z/l$c;-><init>(FF)V

    new-instance v13, Lcom/google/android/material/z/l$c;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v13, v3, v2}, Lcom/google/android/material/z/l$c;-><init>(FF)V

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/google/android/material/z/l$d;-><init>(Lcom/google/android/material/z/l$c;Lcom/google/android/material/z/l$c;Lcom/google/android/material/z/l$c;Lcom/google/android/material/z/l$c;Lcom/google/android/material/z/l$1;)V

    sput-object v0, Lcom/google/android/material/z/l;->B:Lcom/google/android/material/z/l$d;

    .line 211
    new-instance v0, Lcom/google/android/material/z/l$d;

    new-instance v3, Lcom/google/android/material/z/l$c;

    const v4, 0x3dcccccd    # 0.1f

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v3, v4, v5}, Lcom/google/android/material/z/l$c;-><init>(FF)V

    new-instance v5, Lcom/google/android/material/z/l$c;

    invoke-direct {v5, v4, v8}, Lcom/google/android/material/z/l$c;-><init>(FF)V

    new-instance v6, Lcom/google/android/material/z/l$c;

    invoke-direct {v6, v4, v8}, Lcom/google/android/material/z/l$c;-><init>(FF)V

    new-instance v8, Lcom/google/android/material/z/l$c;

    invoke-direct {v8, v4, v2}, Lcom/google/android/material/z/l$c;-><init>(FF)V

    const/16 v20, 0x0

    move-object v15, v0

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    invoke-direct/range {v15 .. v20}, Lcom/google/android/material/z/l$d;-><init>(Lcom/google/android/material/z/l$c;Lcom/google/android/material/z/l$c;Lcom/google/android/material/z/l$c;Lcom/google/android/material/z/l$c;Lcom/google/android/material/z/l$1;)V

    sput-object v0, Lcom/google/android/material/z/l;->C:Lcom/google/android/material/z/l$d;

    .line 217
    new-instance v0, Lcom/google/android/material/z/l$d;

    new-instance v10, Lcom/google/android/material/z/l$c;

    invoke-direct {v10, v1, v2}, Lcom/google/android/material/z/l$c;-><init>(FF)V

    new-instance v11, Lcom/google/android/material/z/l$c;

    invoke-direct {v11, v7, v2}, Lcom/google/android/material/z/l$c;-><init>(FF)V

    new-instance v12, Lcom/google/android/material/z/l$c;

    invoke-direct {v12, v7, v2}, Lcom/google/android/material/z/l$c;-><init>(FF)V

    new-instance v13, Lcom/google/android/material/z/l$c;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v13, v1, v2}, Lcom/google/android/material/z/l$c;-><init>(FF)V

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/google/android/material/z/l$d;-><init>(Lcom/google/android/material/z/l$c;Lcom/google/android/material/z/l$c;Lcom/google/android/material/z/l$c;Lcom/google/android/material/z/l$c;Lcom/google/android/material/z/l$1;)V

    sput-object v0, Lcom/google/android/material/z/l;->D:Lcom/google/android/material/z/l$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 250
    invoke-direct {p0}, Landroidx/j/ag;-><init>()V

    const/4 v0, 0x0

    .line 226
    iput-boolean v0, p0, Lcom/google/android/material/z/l;->F:Z

    .line 227
    iput-boolean v0, p0, Lcom/google/android/material/z/l;->G:Z

    const v1, 0x1020002

    .line 228
    iput v1, p0, Lcom/google/android/material/z/l;->H:I

    const/4 v1, -0x1

    .line 229
    iput v1, p0, Lcom/google/android/material/z/l;->I:I

    .line 230
    iput v1, p0, Lcom/google/android/material/z/l;->J:I

    .line 231
    iput v0, p0, Lcom/google/android/material/z/l;->K:I

    .line 232
    iput v0, p0, Lcom/google/android/material/z/l;->L:I

    .line 233
    iput v0, p0, Lcom/google/android/material/z/l;->M:I

    const/high16 v1, 0x52000000

    .line 234
    iput v1, p0, Lcom/google/android/material/z/l;->N:I

    .line 235
    iput v0, p0, Lcom/google/android/material/z/l;->O:I

    .line 236
    iput v0, p0, Lcom/google/android/material/z/l;->P:I

    .line 237
    iput v0, p0, Lcom/google/android/material/z/l;->Q:I

    .line 246
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/z/l;->Z:Z

    const/high16 v0, -0x40800000    # -1.0f

    .line 247
    iput v0, p0, Lcom/google/android/material/z/l;->aa:F

    .line 248
    iput v0, p0, Lcom/google/android/material/z/l;->ab:F

    .line 251
    sget-object v0, Lcom/google/android/material/a/a;->b:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, v0}, Lcom/google/android/material/z/l;->a(Landroid/animation/TimeInterpolator;)Landroidx/j/ag;

    return-void
.end method

.method private static a(FLandroid/view/View;)F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 982
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

    .line 857
    new-array v0, v0, [I

    sget v1, Lcom/google/android/material/a$c;->transitionShapeAppearance:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, -0x1

    .line 858
    invoke-virtual {p0, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 859
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

    .line 988
    invoke-static {p1}, Lcom/google/android/material/z/u;->c(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p0

    .line 989
    invoke-virtual {p0, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    return-object p0

    .line 992
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

    .line 826
    invoke-static {p0, p2}, Lcom/google/android/material/z/l;->a(Landroid/view/View;Lcom/google/android/material/t/o;)Lcom/google/android/material/t/o;

    move-result-object p0

    .line 827
    invoke-static {p0, p1}, Lcom/google/android/material/z/u;->a(Lcom/google/android/material/t/o;Landroid/graphics/RectF;)Lcom/google/android/material/t/o;

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

    .line 838
    :cond_0
    sget p1, Lcom/google/android/material/a$h;->mtrl_motion_snapshot_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/google/android/material/t/o;

    if-eqz p1, :cond_1

    .line 839
    sget p1, Lcom/google/android/material/a$h;->mtrl_motion_snapshot_view:I

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/t/o;

    return-object p0

    .line 842
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 843
    invoke-static {p1}, Lcom/google/android/material/z/l;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x0

    .line 845
    invoke-static {p1, v0, p0}, Lcom/google/android/material/t/o;->a(Landroid/content/Context;II)Lcom/google/android/material/t/o$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/t/o$a;->a()Lcom/google/android/material/t/o;

    move-result-object p0

    return-object p0

    .line 848
    :cond_2
    instance-of p1, p0, Lcom/google/android/material/t/s;

    if-eqz p1, :cond_3

    .line 849
    check-cast p0, Lcom/google/android/material/t/s;

    invoke-interface {p0}, Lcom/google/android/material/t/s;->getShapeAppearanceModel()Lcom/google/android/material/t/o;

    move-result-object p0

    return-object p0

    .line 852
    :cond_3
    invoke-static {}, Lcom/google/android/material/t/o;->a()Lcom/google/android/material/t/o$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/t/o$a;->a()Lcom/google/android/material/t/o;

    move-result-object p0

    return-object p0
.end method

.method private a(ZLcom/google/android/material/z/l$d;Lcom/google/android/material/z/l$d;)Lcom/google/android/material/z/l$d;
    .locals 6

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    .line 1025
    :goto_0
    new-instance p1, Lcom/google/android/material/z/l$d;

    iget-object p3, p0, Lcom/google/android/material/z/l;->V:Lcom/google/android/material/z/l$c;

    .line 1026
    invoke-static {p2}, Lcom/google/android/material/z/l$d;->a(Lcom/google/android/material/z/l$d;)Lcom/google/android/material/z/l$c;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/material/z/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/google/android/material/z/l$c;

    iget-object p3, p0, Lcom/google/android/material/z/l;->W:Lcom/google/android/material/z/l$c;

    .line 1027
    invoke-static {p2}, Lcom/google/android/material/z/l$d;->b(Lcom/google/android/material/z/l$d;)Lcom/google/android/material/z/l$c;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/material/z/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lcom/google/android/material/z/l$c;

    iget-object p3, p0, Lcom/google/android/material/z/l;->X:Lcom/google/android/material/z/l$c;

    .line 1028
    invoke-static {p2}, Lcom/google/android/material/z/l$d;->c(Lcom/google/android/material/z/l$d;)Lcom/google/android/material/z/l$c;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/google/android/material/z/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, Lcom/google/android/material/z/l$c;

    iget-object p0, p0, Lcom/google/android/material/z/l;->Y:Lcom/google/android/material/z/l$c;

    .line 1029
    invoke-static {p2}, Lcom/google/android/material/z/l$d;->d(Lcom/google/android/material/z/l$d;)Lcom/google/android/material/z/l$c;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/google/android/material/z/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/google/android/material/z/l$c;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/z/l$d;-><init>(Lcom/google/android/material/z/l$c;Lcom/google/android/material/z/l$c;Lcom/google/android/material/z/l$c;Lcom/google/android/material/z/l$c;Lcom/google/android/material/z/l$1;)V

    return-object p1
.end method

.method private static a(Landroidx/j/an;Landroid/view/View;ILcom/google/android/material/t/o;)V
    .locals 2
    .param p0    # Landroidx/j/an;
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

    .line 796
    iget-object p1, p0, Landroidx/j/an;->b:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/google/android/material/z/u;->a(Landroid/view/View;I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/j/an;->b:Landroid/view/View;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 798
    iput-object p1, p0, Landroidx/j/an;->b:Landroid/view/View;

    goto :goto_0

    .line 799
    :cond_1
    iget-object p1, p0, Landroidx/j/an;->b:Landroid/view/View;

    sget p2, Lcom/google/android/material/a$h;->mtrl_motion_snapshot_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_2

    .line 800
    iget-object p1, p0, Landroidx/j/an;->b:Landroid/view/View;

    sget p2, Lcom/google/android/material/a$h;->mtrl_motion_snapshot_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 803
    iget-object p2, p0, Landroidx/j/an;->b:Landroid/view/View;

    sget v0, Lcom/google/android/material/a$h;->mtrl_motion_snapshot_view:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 806
    iput-object p1, p0, Landroidx/j/an;->b:Landroid/view/View;

    .line 808
    :cond_2
    :goto_0
    iget-object p1, p0, Landroidx/j/an;->b:Landroid/view/View;

    .line 810
    invoke-static {p1}, Landroidx/core/n/af;->ag(Landroid/view/View;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    if-eqz p2, :cond_5

    .line 812
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-static {p1}, Lcom/google/android/material/z/u;->a(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p2

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/google/android/material/z/u;->c(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p2

    .line 813
    :goto_1
    iget-object v0, p0, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v1, "materialContainerTransition:bounds"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    iget-object p0, p0, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v0, "materialContainerTransition:shapeAppearance"

    .line 816
    invoke-static {p1, p2, p3}, Lcom/google/android/material/z/l;->a(Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/t/o;)Lcom/google/android/material/t/o;

    move-result-object p1

    .line 814
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

    .line 997
    iget v0, p0, Lcom/google/android/material/z/l;->O:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1005
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid transition direction: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/material/z/l;->O:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    return v1

    :pswitch_1
    return v2

    .line 999
    :pswitch_2
    invoke-static {p2}, Lcom/google/android/material/z/u;->a(Landroid/graphics/RectF;)F

    move-result p0

    invoke-static {p1}, Lcom/google/android/material/z/u;->a(Landroid/graphics/RectF;)F

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

.method static synthetic a(Lcom/google/android/material/z/l;)Z
    .locals 0

    .line 115
    iget-boolean p0, p0, Lcom/google/android/material/z/l;->G:Z

    return p0
.end method

.method private f(Z)Lcom/google/android/material/z/l$d;
    .locals 2

    .line 1010
    invoke-virtual {p0}, Lcom/google/android/material/z/l;->o()Landroidx/j/w;

    move-result-object v0

    .line 1011
    instance-of v1, v0, Landroidx/j/b;

    if-nez v1, :cond_1

    instance-of v0, v0, Lcom/google/android/material/z/k;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1015
    :cond_0
    sget-object v0, Lcom/google/android/material/z/l;->A:Lcom/google/android/material/z/l$d;

    sget-object v1, Lcom/google/android/material/z/l;->B:Lcom/google/android/material/z/l$d;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/z/l;->a(ZLcom/google/android/material/z/l$d;Lcom/google/android/material/z/l$d;)Lcom/google/android/material/z/l$d;

    move-result-object p0

    return-object p0

    .line 1012
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/android/material/z/l;->C:Lcom/google/android/material/z/l$d;

    sget-object v1, Lcom/google/android/material/z/l;->D:Lcom/google/android/material/z/l$d;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/material/z/l;->a(ZLcom/google/android/material/z/l$d;Lcom/google/android/material/z/l$d;)Lcom/google/android/material/z/l$d;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()F
    .locals 0

    .line 429
    iget p0, p0, Lcom/google/android/material/z/l;->ab:F

    return p0
.end method

.method public B()I
    .locals 0
    .annotation build Landroidx/annotation/w;
    .end annotation

    .line 445
    iget p0, p0, Lcom/google/android/material/z/l;->H:I

    return p0
.end method

.method public C()I
    .locals 0
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 473
    iget p0, p0, Lcom/google/android/material/z/l;->K:I

    return p0
.end method

.method public D()I
    .locals 0
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 505
    iget p0, p0, Lcom/google/android/material/z/l;->L:I

    return p0
.end method

.method public E()I
    .locals 0
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 532
    iget p0, p0, Lcom/google/android/material/z/l;->M:I

    return p0
.end method

.method public F()I
    .locals 0
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 573
    iget p0, p0, Lcom/google/android/material/z/l;->N:I

    return p0
.end method

.method public G()I
    .locals 0

    .line 601
    iget p0, p0, Lcom/google/android/material/z/l;->O:I

    return p0
.end method

.method public H()I
    .locals 0

    .line 619
    iget p0, p0, Lcom/google/android/material/z/l;->P:I

    return p0
.end method

.method public I()I
    .locals 0

    .line 639
    iget p0, p0, Lcom/google/android/material/z/l;->Q:I

    return p0
.end method

.method public J()Lcom/google/android/material/z/l$c;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 658
    iget-object p0, p0, Lcom/google/android/material/z/l;->V:Lcom/google/android/material/z/l$c;

    return-object p0
.end method

.method public K()Lcom/google/android/material/z/l$c;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 679
    iget-object p0, p0, Lcom/google/android/material/z/l;->W:Lcom/google/android/material/z/l$c;

    return-object p0
.end method

.method public L()Lcom/google/android/material/z/l$c;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 700
    iget-object p0, p0, Lcom/google/android/material/z/l;->X:Lcom/google/android/material/z/l$c;

    return-object p0
.end method

.method public M()Lcom/google/android/material/z/l$c;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 722
    iget-object p0, p0, Lcom/google/android/material/z/l;->Y:Lcom/google/android/material/z/l$c;

    return-object p0
.end method

.method public N()Z
    .locals 0

    .line 743
    iget-boolean p0, p0, Lcom/google/android/material/z/l;->G:Z

    return p0
.end method

.method public O()Z
    .locals 0

    .line 762
    iget-boolean p0, p0, Lcom/google/android/material/z/l;->F:Z

    return p0
.end method

.method public a(Landroid/view/ViewGroup;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;
    .locals 29
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/j/an;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroidx/j/an;
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

    .line 873
    :cond_0
    iget-object v3, v0, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v4, "materialContainerTransition:bounds"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/graphics/RectF;

    .line 874
    iget-object v3, v0, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v4, "materialContainerTransition:shapeAppearance"

    .line 875
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/google/android/material/t/o;

    if-eqz v10, :cond_6

    if-nez v11, :cond_1

    goto/16 :goto_3

    .line 881
    :cond_1
    iget-object v3, v1, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v4, "materialContainerTransition:bounds"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/graphics/RectF;

    .line 882
    iget-object v3, v1, Landroidx/j/an;->a:Ljava/util/Map;

    const-string v4, "materialContainerTransition:shapeAppearance"

    .line 883
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/google/android/material/t/o;

    if-eqz v14, :cond_5

    if-nez v15, :cond_2

    goto/16 :goto_2

    .line 889
    :cond_2
    iget-object v4, v0, Landroidx/j/an;->b:Landroid/view/View;

    .line 890
    iget-object v5, v1, Landroidx/j/an;->b:Landroid/view/View;

    .line 893
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    move-object v0, v5

    goto :goto_0

    :cond_3
    move-object v0, v4

    .line 894
    :goto_0
    iget v1, v6, Lcom/google/android/material/z/l;->H:I

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v1, v3, :cond_4

    .line 895
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v2, v1

    goto :goto_1

    .line 898
    :cond_4
    iget v1, v6, Lcom/google/android/material/z/l;->H:I

    invoke-static {v0, v1}, Lcom/google/android/material/z/u;->b(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v28, v2

    move-object v2, v0

    move-object/from16 v0, v28

    .line 903
    :goto_1
    invoke-static {v2}, Lcom/google/android/material/z/u;->c(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v1

    .line 904
    iget v3, v1, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    .line 905
    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    .line 906
    invoke-static {v2, v0, v3, v1}, Lcom/google/android/material/z/l;->a(Landroid/view/View;Landroid/view/View;FF)Landroid/graphics/RectF;

    move-result-object v0

    .line 907
    invoke-virtual {v10, v3, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 908
    invoke-virtual {v14, v3, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 910
    invoke-direct {v6, v10, v14}, Lcom/google/android/material/z/l;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v1

    move/from16 v21, v1

    .line 912
    new-instance v3, Lcom/google/android/material/z/l$f;

    move-object v7, v3

    .line 914
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/z/l;->o()Landroidx/j/w;

    move-result-object v8

    iget v9, v6, Lcom/google/android/material/z/l;->aa:F

    .line 918
    invoke-static {v9, v4}, Lcom/google/android/material/z/l;->a(FLandroid/view/View;)F

    move-result v12

    iget v9, v6, Lcom/google/android/material/z/l;->ab:F

    .line 922
    invoke-static {v9, v5}, Lcom/google/android/material/z/l;->a(FLandroid/view/View;)F

    move-result v16

    iget v9, v6, Lcom/google/android/material/z/l;->K:I

    move/from16 v17, v9

    iget v9, v6, Lcom/google/android/material/z/l;->L:I

    move/from16 v18, v9

    iget v9, v6, Lcom/google/android/material/z/l;->M:I

    move/from16 v19, v9

    iget v9, v6, Lcom/google/android/material/z/l;->N:I

    move/from16 v20, v9

    iget-boolean v9, v6, Lcom/google/android/material/z/l;->Z:Z

    move/from16 v22, v9

    iget v9, v6, Lcom/google/android/material/z/l;->P:I

    .line 929
    invoke-static {v9, v1}, Lcom/google/android/material/z/b;->a(IZ)Lcom/google/android/material/z/a;

    move-result-object v23

    iget v9, v6, Lcom/google/android/material/z/l;->Q:I

    .line 930
    invoke-static {v9, v1, v10, v14}, Lcom/google/android/material/z/g;->a(IZLandroid/graphics/RectF;Landroid/graphics/RectF;)Lcom/google/android/material/z/f;

    move-result-object v24

    .line 931
    invoke-direct {v6, v1}, Lcom/google/android/material/z/l;->f(Z)Lcom/google/android/material/z/l$d;

    move-result-object v25

    iget-boolean v1, v6, Lcom/google/android/material/z/l;->F:Z

    move/from16 v26, v1

    const/16 v27, 0x0

    move-object v9, v4

    move-object v13, v5

    invoke-direct/range {v7 .. v27}, Lcom/google/android/material/z/l$f;-><init>(Landroidx/j/w;Landroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/t/o;FLandroid/view/View;Landroid/graphics/RectF;Lcom/google/android/material/t/o;FIIIIZZLcom/google/android/material/z/a;Lcom/google/android/material/z/f;Lcom/google/android/material/z/l$d;ZLcom/google/android/material/z/l$1;)V

    .line 935
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 936
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v7, v0, Landroid/graphics/RectF;->top:F

    .line 937
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget v8, v0, Landroid/graphics/RectF;->right:F

    .line 938
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 939
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 935
    invoke-virtual {v3, v1, v7, v8, v0}, Lcom/google/android/material/z/l$f;->setBounds(IIII)V

    const/4 v0, 0x2

    .line 941
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 942
    new-instance v0, Lcom/google/android/material/z/l$1;

    invoke-direct {v0, v6, v3}, Lcom/google/android/material/z/l$1;-><init>(Lcom/google/android/material/z/l;Lcom/google/android/material/z/l$f;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 950
    new-instance v8, Lcom/google/android/material/z/l$2;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/z/l$2;-><init>(Lcom/google/android/material/z/l;Landroid/view/View;Lcom/google/android/material/z/l$f;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v6, v8}, Lcom/google/android/material/z/l;->a(Landroidx/j/ag$e;)Landroidx/j/ag;

    return-object v7

    .line 885
    :cond_5
    :goto_2
    sget-object v0, Lcom/google/android/material/z/l;->w:Ljava/lang/String;

    const-string v1, "Skipping due to null end bounds. Ensure end view is laid out and measured."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 877
    :cond_6
    :goto_3
    sget-object v0, Lcom/google/android/material/z/l;->w:Ljava/lang/String;

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

.method public a(F)V
    .locals 0

    .line 419
    iput p1, p0, Lcom/google/android/material/z/l;->aa:F

    return-void
.end method

.method public a(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param

    .line 275
    iput p1, p0, Lcom/google/android/material/z/l;->I:I

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 316
    iput-object p1, p0, Lcom/google/android/material/z/l;->R:Landroid/view/View;

    return-void
.end method

.method public a(Landroidx/j/an;)V
    .locals 2
    .param p1    # Landroidx/j/an;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 782
    iget-object v0, p0, Lcom/google/android/material/z/l;->R:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/z/l;->I:I

    iget-object p0, p0, Lcom/google/android/material/z/l;->T:Lcom/google/android/material/t/o;

    invoke-static {p1, v0, v1, p0}, Lcom/google/android/material/z/l;->a(Landroidx/j/an;Landroid/view/View;ILcom/google/android/material/t/o;)V

    return-void
.end method

.method public a(Lcom/google/android/material/t/o;)V
    .locals 0
    .param p1    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 356
    iput-object p1, p0, Lcom/google/android/material/z/l;->T:Lcom/google/android/material/t/o;

    return-void
.end method

.method public a(Lcom/google/android/material/z/l$c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/z/l$c;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 669
    iput-object p1, p0, Lcom/google/android/material/z/l;->V:Lcom/google/android/material/z/l$c;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 399
    iput-boolean p1, p0, Lcom/google/android/material/z/l;->Z:Z

    return-void
.end method

.method public a()[Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 777
    sget-object p0, Lcom/google/android/material/z/l;->z:[Ljava/lang/String;

    return-object p0
.end method

.method public b()I
    .locals 0
    .annotation build Landroidx/annotation/w;
    .end annotation

    .line 257
    iget p0, p0, Lcom/google/android/material/z/l;->I:I

    return p0
.end method

.method public b(F)V
    .locals 0

    .line 439
    iput p1, p0, Lcom/google/android/material/z/l;->ab:F

    return-void
.end method

.method public b(Landroidx/j/an;)V
    .locals 2
    .param p1    # Landroidx/j/an;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 787
    iget-object v0, p0, Lcom/google/android/material/z/l;->S:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/z/l;->J:I

    iget-object p0, p0, Lcom/google/android/material/z/l;->U:Lcom/google/android/material/t/o;

    invoke-static {p1, v0, v1, p0}, Lcom/google/android/material/z/l;->a(Landroidx/j/an;Landroid/view/View;ILcom/google/android/material/t/o;)V

    return-void
.end method

.method public b(Lcom/google/android/material/t/o;)V
    .locals 0
    .param p1    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 375
    iput-object p1, p0, Lcom/google/android/material/z/l;->U:Lcom/google/android/material/t/o;

    return-void
.end method

.method public b(Lcom/google/android/material/z/l$c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/z/l$c;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 690
    iput-object p1, p0, Lcom/google/android/material/z/l;->W:Lcom/google/android/material/z/l$c;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 753
    iput-boolean p1, p0, Lcom/google/android/material/z/l;->G:Z

    return-void
.end method

.method public c()I
    .locals 0
    .annotation build Landroidx/annotation/w;
    .end annotation

    .line 290
    iget p0, p0, Lcom/google/android/material/z/l;->J:I

    return p0
.end method

.method public c(Lcom/google/android/material/z/l$c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/z/l$c;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 712
    iput-object p1, p0, Lcom/google/android/material/z/l;->X:Lcom/google/android/material/z/l$c;

    return-void
.end method

.method public d(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param

    .line 301
    iput p1, p0, Lcom/google/android/material/z/l;->J:I

    return-void
.end method

.method public d(Lcom/google/android/material/z/l$c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/z/l$c;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 734
    iput-object p1, p0, Lcom/google/android/material/z/l;->Y:Lcom/google/android/material/z/l$c;

    return-void
.end method

.method public e(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param

    .line 463
    iput p1, p0, Lcom/google/android/material/z/l;->H:I

    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 771
    iput-boolean p1, p0, Lcom/google/android/material/z/l;->F:Z

    return-void
.end method

.method public f(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 495
    iput p1, p0, Lcom/google/android/material/z/l;->K:I

    return-void
.end method

.method public g(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 522
    iput p1, p0, Lcom/google/android/material/z/l;->L:I

    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 331
    iput-object p1, p0, Lcom/google/android/material/z/l;->S:Landroid/view/View;

    return-void
.end method

.method public h(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 547
    iput p1, p0, Lcom/google/android/material/z/l;->M:I

    return-void
.end method

.method public i(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 562
    iput p1, p0, Lcom/google/android/material/z/l;->K:I

    .line 563
    iput p1, p0, Lcom/google/android/material/z/l;->L:I

    .line 564
    iput p1, p0, Lcom/google/android/material/z/l;->M:I

    return-void
.end method

.method public j(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 589
    iput p1, p0, Lcom/google/android/material/z/l;->N:I

    return-void
.end method

.method public k(I)V
    .locals 0

    .line 613
    iput p1, p0, Lcom/google/android/material/z/l;->O:I

    return-void
.end method

.method public l(I)V
    .locals 0

    .line 633
    iput p1, p0, Lcom/google/android/material/z/l;->P:I

    return-void
.end method

.method public m(I)V
    .locals 0

    .line 648
    iput p1, p0, Lcom/google/android/material/z/l;->Q:I

    return-void
.end method

.method public u()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 307
    iget-object p0, p0, Lcom/google/android/material/z/l;->R:Landroid/view/View;

    return-object p0
.end method

.method public v()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 322
    iget-object p0, p0, Lcom/google/android/material/z/l;->S:Landroid/view/View;

    return-object p0
.end method

.method public w()Lcom/google/android/material/t/o;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 340
    iget-object p0, p0, Lcom/google/android/material/z/l;->T:Lcom/google/android/material/t/o;

    return-object p0
.end method

.method public x()Lcom/google/android/material/t/o;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 365
    iget-object p0, p0, Lcom/google/android/material/z/l;->U:Lcom/google/android/material/t/o;

    return-object p0
.end method

.method public y()Z
    .locals 0

    .line 383
    iget-boolean p0, p0, Lcom/google/android/material/z/l;->Z:Z

    return p0
.end method

.method public z()F
    .locals 0

    .line 409
    iget p0, p0, Lcom/google/android/material/z/l;->aa:F

    return p0
.end method
