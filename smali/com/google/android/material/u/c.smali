.class abstract Lcom/google/android/material/u/c;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/u/c$b;,
        Lcom/google/android/material/u/c$c;,
        Lcom/google/android/material/u/c$a;,
        Lcom/google/android/material/u/c$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lcom/google/android/material/u/c<",
        "TS;T",
        "L;",
        "TT;>;",
        "L::Lcom/google/android/material/u/a<",
        "TS;>;T::",
        "Lcom/google/android/material/u/b<",
        "TS;>;>",
        "Landroid/view/View;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "c"

.field private static final b:Ljava/lang/String; = "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)"

.field private static final c:Ljava/lang/String; = "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)"

.field private static final d:Ljava/lang/String; = "valueFrom(%s) must be smaller than valueTo(%s)"

.field private static final e:Ljava/lang/String; = "valueTo(%s) must be greater than valueFrom(%s)"

.field private static final f:Ljava/lang/String; = "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

.field private static final g:Ljava/lang/String; = "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly."

.field private static final h:I = 0xc8

.field private static final i:I = 0x3f

.field private static final j:D = 1.0E-4

.field private static final k:I


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:F

.field private I:Landroid/view/MotionEvent;

.field private J:Lcom/google/android/material/u/e;

.field private K:Z

.field private L:F

.field private M:F

.field private N:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private O:I

.field private P:I

.field private Q:F

.field private R:[F

.field private S:I

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private aa:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private ab:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private ac:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private ad:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final ae:Lcom/google/android/material/t/j;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private af:F

.field private final l:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final m:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final n:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final o:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final p:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final q:Landroid/graphics/Paint;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final r:Lcom/google/android/material/u/c$b;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final s:Landroid/view/accessibility/AccessibilityManager;

.field private t:Lcom/google/android/material/u/c$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/u/c<",
            "TS;T",
            "L;",
            "TT;>.a;"
        }
    .end annotation
.end field

.field private final u:Lcom/google/android/material/u/c$d;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final v:Ljava/util/List;
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/y/a;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Ljava/util/List;
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field private final x:Ljava/util/List;
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 206
    sget v0, Lcom/google/android/material/a$n;->Widget_MaterialComponents_Slider:I

    sput v0, Lcom/google/android/material/u/c;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 285
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/u/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 289
    sget v0, Lcom/google/android/material/a$c;->sliderStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/u/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 294
    sget v0, Lcom/google/android/material/u/c;->k:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 223
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/u/c;->v:Ljava/util/List;

    .line 224
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/u/c;->w:Ljava/util/List;

    .line 225
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/u/c;->x:Ljava/util/List;

    const/4 p1, 0x0

    .line 240
    iput-boolean p1, p0, Lcom/google/android/material/u/c;->K:Z

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 247
    iput v0, p0, Lcom/google/android/material/u/c;->O:I

    .line 249
    iput v0, p0, Lcom/google/android/material/u/c;->P:I

    const/4 v0, 0x0

    .line 250
    iput v0, p0, Lcom/google/android/material/u/c;->Q:F

    .line 254
    iput-boolean p1, p0, Lcom/google/android/material/u/c;->U:Z

    .line 263
    new-instance p1, Lcom/google/android/material/t/j;

    invoke-direct {p1}, Lcom/google/android/material/t/j;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/u/c;->ae:Lcom/google/android/material/t/j;

    .line 296
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 298
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/u/c;->l:Landroid/graphics/Paint;

    .line 299
    iget-object v0, p0, Lcom/google/android/material/u/c;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 300
    iget-object v0, p0, Lcom/google/android/material/u/c;->l:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 302
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/u/c;->m:Landroid/graphics/Paint;

    .line 303
    iget-object v0, p0, Lcom/google/android/material/u/c;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 304
    iget-object v0, p0, Lcom/google/android/material/u/c;->m:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 306
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/u/c;->n:Landroid/graphics/Paint;

    .line 307
    iget-object v0, p0, Lcom/google/android/material/u/c;->n:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 308
    iget-object v0, p0, Lcom/google/android/material/u/c;->n:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 310
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/u/c;->o:Landroid/graphics/Paint;

    .line 311
    iget-object v0, p0, Lcom/google/android/material/u/c;->o:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 313
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/u/c;->p:Landroid/graphics/Paint;

    .line 314
    iget-object v0, p0, Lcom/google/android/material/u/c;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 315
    iget-object v0, p0, Lcom/google/android/material/u/c;->p:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 317
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/u/c;->q:Landroid/graphics/Paint;

    .line 318
    iget-object v0, p0, Lcom/google/android/material/u/c;->q:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 319
    iget-object v0, p0, Lcom/google/android/material/u/c;->q:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 321
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/u/c;->a(Landroid/content/res/Resources;)V

    .line 325
    new-instance v0, Lcom/google/android/material/u/c$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/android/material/u/c$1;-><init>(Lcom/google/android/material/u/c;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/material/u/c;->u:Lcom/google/android/material/u/c$d;

    .line 338
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/u/c;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 340
    invoke-virtual {p0, v1}, Lcom/google/android/material/u/c;->setFocusable(Z)V

    .line 341
    invoke-virtual {p0, v1}, Lcom/google/android/material/u/c;->setClickable(Z)V

    .line 344
    iget-object p2, p0, Lcom/google/android/material/u/c;->ae:Lcom/google/android/material/t/j;

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Lcom/google/android/material/t/j;->J(I)V

    .line 346
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/u/c;->y:I

    .line 348
    new-instance p1, Lcom/google/android/material/u/c$b;

    invoke-direct {p1, p0}, Lcom/google/android/material/u/c$b;-><init>(Lcom/google/android/material/u/c;)V

    iput-object p1, p0, Lcom/google/android/material/u/c;->r:Lcom/google/android/material/u/c$b;

    .line 349
    iget-object p1, p0, Lcom/google/android/material/u/c;->r:Lcom/google/android/material/u/c$b;

    invoke-static {p0, p1}, Landroidx/core/n/af;->a(Landroid/view/View;Landroidx/core/n/a;)V

    .line 352
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/material/u/c;->s:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/u/c;I)F
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/google/android/material/u/c;->e(I)F

    move-result p0

    return p0
.end method

.method private a(Landroid/content/res/ColorStateList;)I
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 1841
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0
.end method

.method private static a([FF)I
    .locals 0

    .line 1590
    array-length p0, p0

    div-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, -0x1

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/google/android/material/u/c;)Lcom/google/android/material/u/c$b;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/google/android/material/u/c;->r:Lcom/google/android/material/u/c$b;

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/y/a;
    .locals 0

    .line 178
    invoke-static {p0, p1}, Lcom/google/android/material/u/c;->b(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/y/a;

    move-result-object p0

    return-object p0
.end method

.method private a(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 3
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/16 v0, 0x3d

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const/16 p2, 0x42

    if-eq p1, p2, :cond_1

    const/16 p2, 0x51

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    .line 1915
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/material/u/c;->b(I)Z

    .line 1916
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1918
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/google/android/material/u/c;->c(I)Z

    .line 1919
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1912
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/google/android/material/u/c;->c(I)Z

    .line 1913
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1923
    :cond_0
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/google/android/material/u/c;->b(I)Z

    .line 1924
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1927
    :cond_1
    :pswitch_4
    iget p1, p0, Lcom/google/android/material/u/c;->P:I

    iput p1, p0, Lcom/google/android/material/u/c;->O:I

    .line 1928
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->postInvalidate()V

    .line 1929
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1903
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1904
    invoke-direct {p0, v2}, Lcom/google/android/material/u/c;->b(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1907
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1908
    invoke-direct {p0, v1}, Lcom/google/android/material/u/c;->b(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 p0, 0x0

    .line 1910
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x45
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/google/android/material/u/c;F)Ljava/lang/String;
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/google/android/material/u/c;->f(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 4

    .line 1797
    iget-object v0, p0, Lcom/google/android/material/u/c;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/u/a;

    .line 1798
    iget-object v2, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v1, p0, v2, v3}, Lcom/google/android/material/u/a;->a(Ljava/lang/Object;FZ)V

    goto :goto_0

    .line 1800
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/u/c;->s:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/u/c;->s:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1801
    invoke-direct {p0, p1}, Lcom/google/android/material/u/c;->g(I)V

    :cond_1
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 365
    sget-object v2, Lcom/google/android/material/a$o;->Slider:[I

    sget v4, Lcom/google/android/material/u/c;->k:I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 366
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/s;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 368
    sget p3, Lcom/google/android/material/a$o;->Slider_android_valueFrom:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/u/c;->L:F

    .line 369
    sget p3, Lcom/google/android/material/a$o;->Slider_android_valueTo:I

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Lcom/google/android/material/u/c;->M:F

    const/4 p3, 0x1

    .line 370
    new-array v1, p3, [Ljava/lang/Float;

    iget v2, p0, Lcom/google/android/material/u/c;->L:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0, v1}, Lcom/google/android/material/u/c;->setValues([Ljava/lang/Float;)V

    .line 371
    sget v1, Lcom/google/android/material/a$o;->Slider_android_stepSize:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/google/android/material/u/c;->Q:F

    .line 373
    sget v1, Lcom/google/android/material/a$o;->Slider_trackColor:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    sget v2, Lcom/google/android/material/a$o;->Slider_trackColor:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/google/android/material/a$o;->Slider_trackColorInactive:I

    :goto_0
    if-eqz v1, :cond_1

    .line 377
    sget v1, Lcom/google/android/material/a$o;->Slider_trackColor:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/google/android/material/a$o;->Slider_trackColorActive:I

    .line 381
    :goto_1
    invoke-static {p1, p2, v2}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 382
    :cond_2
    sget v2, Lcom/google/android/material/a$e;->material_slider_inactive_track_color:I

    .line 385
    invoke-static {p1, v2}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 382
    :goto_2
    invoke-virtual {p0, v2}, Lcom/google/android/material/u/c;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 388
    invoke-static {p1, p2, v1}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 389
    :cond_3
    sget v1, Lcom/google/android/material/a$e;->material_slider_active_track_color:I

    .line 392
    invoke-static {p1, v1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 389
    :goto_3
    invoke-virtual {p0, v1}, Lcom/google/android/material/u/c;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 394
    sget v1, Lcom/google/android/material/a$o;->Slider_thumbColor:I

    .line 395
    invoke-static {p1, p2, v1}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 396
    iget-object v2, p0, Lcom/google/android/material/u/c;->ae:Lcom/google/android/material/t/j;

    invoke-virtual {v2, v1}, Lcom/google/android/material/t/j;->g(Landroid/content/res/ColorStateList;)V

    .line 397
    sget v1, Lcom/google/android/material/a$o;->Slider_haloColor:I

    .line 398
    invoke-static {p1, p2, v1}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_4

    goto :goto_4

    .line 399
    :cond_4
    sget v1, Lcom/google/android/material/a$e;->material_slider_halo_color:I

    .line 402
    invoke-static {p1, v1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 399
    :goto_4
    invoke-virtual {p0, v1}, Lcom/google/android/material/u/c;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    .line 404
    sget v1, Lcom/google/android/material/a$o;->Slider_tickColor:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 405
    sget v2, Lcom/google/android/material/a$o;->Slider_tickColor:I

    goto :goto_5

    :cond_5
    sget v2, Lcom/google/android/material/a$o;->Slider_tickColorInactive:I

    :goto_5
    if-eqz v1, :cond_6

    .line 407
    sget v1, Lcom/google/android/material/a$o;->Slider_tickColor:I

    goto :goto_6

    :cond_6
    sget v1, Lcom/google/android/material/a$o;->Slider_tickColorActive:I

    .line 410
    :goto_6
    invoke-static {p1, p2, v2}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    if-eqz v2, :cond_7

    goto :goto_7

    .line 411
    :cond_7
    sget v2, Lcom/google/android/material/a$e;->material_slider_inactive_tick_marks_color:I

    .line 414
    invoke-static {p1, v2}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 411
    :goto_7
    invoke-virtual {p0, v2}, Lcom/google/android/material/u/c;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 417
    invoke-static {p1, p2, v1}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_8

    goto :goto_8

    .line 418
    :cond_8
    sget v1, Lcom/google/android/material/a$e;->material_slider_active_tick_marks_color:I

    .line 421
    invoke-static {p1, v1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 418
    :goto_8
    invoke-virtual {p0, v1}, Lcom/google/android/material/u/c;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    .line 424
    sget p1, Lcom/google/android/material/a$o;->Slider_thumbRadius:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/u/c;->setThumbRadius(I)V

    .line 425
    sget p1, Lcom/google/android/material/a$o;->Slider_haloRadius:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/u/c;->setHaloRadius(I)V

    .line 427
    sget p1, Lcom/google/android/material/a$o;->Slider_thumbElevation:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/u/c;->setThumbElevation(F)V

    .line 429
    sget p1, Lcom/google/android/material/a$o;->Slider_trackHeight:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/u/c;->setTrackHeight(I)V

    .line 431
    sget p1, Lcom/google/android/material/a$o;->Slider_labelBehavior:I

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/u/c;->A:I

    .line 433
    sget p1, Lcom/google/android/material/a$o;->Slider_android_enabled:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    if-nez p1, :cond_9

    .line 434
    invoke-virtual {p0, v6}, Lcom/google/android/material/u/c;->setEnabled(Z)V

    .line 437
    :cond_9
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/content/res/Resources;)V
    .locals 1
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 356
    sget v0, Lcom/google/android/material/a$f;->mtrl_slider_widget_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/u/c;->z:I

    .line 358
    sget v0, Lcom/google/android/material/a$f;->mtrl_slider_track_side_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/u/c;->C:I

    .line 359
    sget v0, Lcom/google/android/material/a$f;->mtrl_slider_track_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/u/c;->D:I

    .line 361
    sget v0, Lcom/google/android/material/a$f;->mtrl_slider_label_padding:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/u/c;->G:I

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1432
    invoke-direct {p0}, Lcom/google/android/material/u/c;->getActiveRange()[F

    move-result-object v0

    .line 1433
    iget-object v1, p0, Lcom/google/android/material/u/c;->R:[F

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-static {v1, v3}, Lcom/google/android/material/u/c;->a([FF)I

    move-result v1

    .line 1434
    iget-object v3, p0, Lcom/google/android/material/u/c;->R:[F

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-static {v3, v0}, Lcom/google/android/material/u/c;->a([FF)I

    move-result v0

    .line 1437
    iget-object v3, p0, Lcom/google/android/material/u/c;->R:[F

    mul-int/lit8 v1, v1, 0x2

    iget-object v4, p0, Lcom/google/android/material/u/c;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 1440
    iget-object v2, p0, Lcom/google/android/material/u/c;->R:[F

    mul-int/lit8 v0, v0, 0x2

    sub-int v3, v0, v1

    iget-object v4, p0, Lcom/google/android/material/u/c;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 1447
    iget-object v1, p0, Lcom/google/android/material/u/c;->R:[F

    iget-object v2, p0, Lcom/google/android/material/u/c;->R:[F

    array-length v2, v2

    sub-int/2addr v2, v0

    iget-object p0, p0, Lcom/google/android/material/u/c;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawPoints([FIILandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;II)V
    .locals 10
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1399
    invoke-direct {p0}, Lcom/google/android/material/u/c;->getActiveRange()[F

    move-result-object v0

    .line 1400
    iget v1, p0, Lcom/google/android/material/u/c;->C:I

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    add-float v5, v1, v2

    .line 1401
    iget v1, p0, Lcom/google/android/material/u/c;->C:I

    add-int/2addr v1, p2

    int-to-float v1, v1

    cmpg-float v1, v5, v1

    if-gez v1, :cond_0

    int-to-float v8, p3

    .line 1402
    iget v1, p0, Lcom/google/android/material/u/c;->C:I

    add-int/2addr v1, p2

    int-to-float v7, v1

    iget-object v9, p0, Lcom/google/android/material/u/c;->l:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1406
    :cond_0
    iget p2, p0, Lcom/google/android/material/u/c;->C:I

    int-to-float p2, p2

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-float/2addr v0, v3

    add-float v4, p2, v0

    .line 1407
    iget p2, p0, Lcom/google/android/material/u/c;->C:I

    int-to-float p2, p2

    cmpl-float p2, v4, p2

    if-lez p2, :cond_1

    .line 1408
    iget p2, p0, Lcom/google/android/material/u/c;->C:I

    int-to-float v2, p2

    int-to-float v5, p3

    iget-object v6, p0, Lcom/google/android/material/u/c;->l:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/google/android/material/y/a;)V
    .locals 0

    .line 1266
    invoke-static {p0}, Lcom/google/android/material/internal/z;->f(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/y/a;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Lcom/google/android/material/y/a;F)V
    .locals 3

    .line 1743
    invoke-direct {p0, p2}, Lcom/google/android/material/u/c;->f(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/material/y/a;->a(Ljava/lang/CharSequence;)V

    .line 1745
    iget v0, p0, Lcom/google/android/material/u/c;->C:I

    .line 1747
    invoke-direct {p0, p2}, Lcom/google/android/material/u/c;->b(F)F

    move-result p2

    iget v1, p0, Lcom/google/android/material/u/c;->S:I

    int-to-float v1, v1

    mul-float/2addr p2, v1

    float-to-int p2, p2

    add-int/2addr v0, p2

    .line 1748
    invoke-virtual {p1}, Lcom/google/android/material/y/a;->getIntrinsicWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v0, p2

    .line 1749
    invoke-direct {p0}, Lcom/google/android/material/u/c;->p()I

    move-result p2

    iget v1, p0, Lcom/google/android/material/u/c;->G:I

    iget v2, p0, Lcom/google/android/material/u/c;->E:I

    add-int/2addr v1, v2

    sub-int/2addr p2, v1

    .line 1750
    invoke-virtual {p1}, Lcom/google/android/material/y/a;->getIntrinsicHeight()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p1}, Lcom/google/android/material/y/a;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v0, v1, v2, p2}, Lcom/google/android/material/y/a;->setBounds(IIII)V

    .line 1754
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/google/android/material/y/a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1755
    invoke-static {p0}, Lcom/google/android/material/internal/z;->f(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p0, p2}, Lcom/google/android/material/internal/c;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1756
    invoke-virtual {p1, p2}, Lcom/google/android/material/y/a;->setBounds(Landroid/graphics/Rect;)V

    .line 1758
    invoke-static {p0}, Lcom/google/android/material/internal/z;->g(Landroid/view/View;)Lcom/google/android/material/internal/y;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/google/android/material/internal/y;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(F)Z
    .locals 2

    .line 469
    new-instance v0, Ljava/math/BigDecimal;

    .line 470
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/math/BigDecimal;

    iget v1, p0, Lcom/google/android/material/u/c;->L:F

    .line 471
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    new-instance v0, Ljava/math/BigDecimal;

    iget p0, p0, Lcom/google/android/material/u/c;->Q:F

    .line 472
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    sget-object p0, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    invoke-virtual {p1, v0, p0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object p0

    .line 473
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    .line 476
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    sub-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private a(IF)Z
    .locals 4

    .line 1673
    iget-object v0, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1677
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/u/c;->b(IF)F

    move-result p2

    .line 1679
    iget-object v0, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1680
    iput p1, p0, Lcom/google/android/material/u/c;->P:I

    .line 1682
    invoke-direct {p0, p1}, Lcom/google/android/material/u/c;->a(I)V

    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a(Lcom/google/android/material/u/c;IF)Z
    .locals 0

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/u/c;->a(IF)Z

    move-result p0

    return p0
.end method

.method private b(F)F
    .locals 2

    .line 1417
    iget v0, p0, Lcom/google/android/material/u/c;->L:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/google/android/material/u/c;->M:F

    iget v1, p0, Lcom/google/android/material/u/c;->L:F

    sub-float/2addr v0, v1

    div-float/2addr p1, v0

    .line 1418
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    sub-float/2addr p0, p1

    return p0

    :cond_0
    return p1
.end method

.method private b(IF)F
    .locals 2

    add-int/lit8 v0, p1, 0x1

    .line 1688
    iget-object v1, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/google/android/material/u/c;->M:F

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_1

    .line 1689
    iget p0, p0, Lcom/google/android/material/u/c;->L:F

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    .line 1690
    :goto_1
    invoke-static {p2, p0, v0}, Landroidx/core/g/a;->a(FFF)F

    move-result p0

    return p0
.end method

.method private static b(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/y/a;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/TypedArray;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 443
    sget v0, Lcom/google/android/material/a$o;->Slider_labelStyle:I

    sget v1, Lcom/google/android/material/a$n;->Widget_MaterialComponents_Tooltip:I

    .line 447
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 443
    invoke-static {p0, v0, v1, p1}, Lcom/google/android/material/y/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/y/a;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/graphics/Canvas;II)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1425
    invoke-direct {p0}, Lcom/google/android/material/u/c;->getActiveRange()[F

    move-result-object v0

    .line 1426
    iget v1, p0, Lcom/google/android/material/u/c;->C:I

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float p2, p2

    mul-float/2addr v2, p2

    add-float v6, v1, v2

    .line 1427
    iget v1, p0, Lcom/google/android/material/u/c;->C:I

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v0, v0, v2

    mul-float/2addr v0, p2

    add-float v4, v1, v0

    int-to-float v7, p3

    .line 1428
    iget-object v8, p0, Lcom/google/android/material/u/c;->m:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/u/c;)V
    .locals 0

    .line 178
    invoke-direct {p0}, Lcom/google/android/material/u/c;->o()V

    return-void
.end method

.method private b(Lcom/google/android/material/y/a;)V
    .locals 1

    .line 1283
    invoke-static {p0}, Lcom/google/android/material/internal/z;->g(Landroid/view/View;)Lcom/google/android/material/internal/y;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1285
    invoke-interface {v0, p1}, Lcom/google/android/material/internal/y;->b(Landroid/graphics/drawable/Drawable;)V

    .line 1286
    invoke-static {p0}, Lcom/google/android/material/internal/z;->f(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/y/a;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private b(I)Z
    .locals 11

    .line 1955
    iget v0, p0, Lcom/google/android/material/u/c;->P:I

    int-to-long v1, v0

    int-to-long v3, p1

    add-long v5, v1, v3

    .line 1958
    iget-object p1, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    int-to-long v9, p1

    const-wide/16 v7, 0x0

    invoke-static/range {v5 .. v10}, Landroidx/core/g/a;->a(JJJ)J

    move-result-wide v2

    long-to-int p1, v2

    iput p1, p0, Lcom/google/android/material/u/c;->P:I

    .line 1959
    iget p1, p0, Lcom/google/android/material/u/c;->P:I

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1963
    :cond_0
    iget p1, p0, Lcom/google/android/material/u/c;->O:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 1964
    iget p1, p0, Lcom/google/android/material/u/c;->P:I

    iput p1, p0, Lcom/google/android/material/u/c;->O:I

    .line 1966
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/u/c;->o()V

    .line 1967
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->postInvalidate()V

    return v1
.end method

.method private c(F)D
    .locals 2

    .line 1594
    iget v0, p0, Lcom/google/android/material/u/c;->Q:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1595
    iget v0, p0, Lcom/google/android/material/u/c;->M:F

    iget v1, p0, Lcom/google/android/material/u/c;->L:F

    sub-float/2addr v0, v1

    iget p0, p0, Lcom/google/android/material/u/c;->Q:F

    div-float/2addr v0, p0

    float-to-int p0, v0

    int-to-float v0, p0

    mul-float/2addr p1, v0

    .line 1596
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-double v0, p1

    int-to-double p0, p0

    div-double/2addr v0, p0

    return-wide v0

    :cond_0
    float-to-double p0, p1

    return-wide p0
.end method

.method private c(Landroid/graphics/Canvas;II)V
    .locals 5
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1457
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1458
    iget-object v0, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 1459
    iget v2, p0, Lcom/google/android/material/u/c;->C:I

    int-to-float v2, v2

    .line 1460
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/u/c;->b(F)F

    move-result v1

    int-to-float v3, p2

    mul-float/2addr v1, v3

    add-float/2addr v2, v1

    int-to-float v1, p3

    iget v3, p0, Lcom/google/android/material/u/c;->E:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/google/android/material/u/c;->n:Landroid/graphics/Paint;

    .line 1459
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1464
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 1465
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1466
    iget v2, p0, Lcom/google/android/material/u/c;->C:I

    .line 1467
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/u/c;->b(F)F

    move-result v1

    int-to-float v3, p2

    mul-float/2addr v1, v3

    float-to-int v1, v1

    add-int/2addr v2, v1

    iget v1, p0, Lcom/google/android/material/u/c;->E:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    iget v2, p0, Lcom/google/android/material/u/c;->E:I

    sub-int v2, p3, v2

    int-to-float v2, v2

    .line 1466
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1469
    iget-object v1, p0, Lcom/google/android/material/u/c;->ae:Lcom/google/android/material/t/j;

    invoke-virtual {v1, p1}, Lcom/google/android/material/t/j;->draw(Landroid/graphics/Canvas;)V

    .line 1470
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private c(I)Z
    .locals 1

    .line 1979
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    const p1, 0x7fffffff

    goto :goto_0

    :cond_0
    neg-int p1, p1

    .line 1983
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/u/c;->b(I)Z

    move-result p0

    return p0
.end method

.method private d(I)Ljava/lang/Float;
    .locals 1

    .line 1989
    iget-boolean v0, p0, Lcom/google/android/material/u/c;->U:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/google/android/material/u/c;->e(I)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/u/c;->y()F

    move-result v0

    :goto_0
    sparse-switch p1, :sswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2000
    :sswitch_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :sswitch_1
    neg-float p0, v0

    .line 1996
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 1994
    :sswitch_2
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->e()Z

    move-result p0

    if-eqz p0, :cond_1

    neg-float v0, v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 1992
    :sswitch_3
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->e()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    neg-float v0, v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x45 -> :sswitch_1
        0x46 -> :sswitch_0
        0x51 -> :sswitch_0
    .end sparse-switch
.end method

.method private d(Landroid/graphics/Canvas;II)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1476
    invoke-direct {p0}, Lcom/google/android/material/u/c;->q()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1477
    iget v0, p0, Lcom/google/android/material/u/c;->C:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/material/u/c;->P:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/u/c;->b(F)F

    move-result v1

    int-to-float p2, p2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int p2, v0

    .line 1478
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    .line 1480
    iget v0, p0, Lcom/google/android/material/u/c;->F:I

    sub-int v0, p2, v0

    int-to-float v2, v0

    iget v0, p0, Lcom/google/android/material/u/c;->F:I

    sub-int v0, p3, v0

    int-to-float v3, v0

    iget v0, p0, Lcom/google/android/material/u/c;->F:I

    add-int/2addr v0, p2

    int-to-float v4, v0

    iget v0, p0, Lcom/google/android/material/u/c;->F:I

    add-int/2addr v0, p3

    int-to-float v5, v0

    sget-object v6, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    :cond_0
    int-to-float p2, p2

    int-to-float p3, p3

    .line 1487
    iget v0, p0, Lcom/google/android/material/u/c;->F:I

    int-to-float v0, v0

    iget-object p0, p0, Lcom/google/android/material/u/c;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private d(F)Z
    .locals 1

    .line 1668
    iget v0, p0, Lcom/google/android/material/u/c;->O:I

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/u/c;->a(IF)Z

    move-result p0

    return p0
.end method

.method private e(F)F
    .locals 1

    .line 1704
    invoke-direct {p0, p1}, Lcom/google/android/material/u/c;->b(F)F

    move-result p1

    iget v0, p0, Lcom/google/android/material/u/c;->S:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iget p0, p0, Lcom/google/android/material/u/c;->C:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    return p1
.end method

.method private e(I)F
    .locals 2

    .line 2016
    invoke-direct {p0}, Lcom/google/android/material/u/c;->y()F

    move-result v0

    .line 2017
    iget v1, p0, Lcom/google/android/material/u/c;->M:F

    iget p0, p0, Lcom/google/android/material/u/c;->L:F

    sub-float/2addr v1, p0

    div-float/2addr v1, v0

    int-to-float p0, p1

    cmpg-float p1, v1, p0

    if-gtz p1, :cond_0

    return v0

    :cond_0
    div-float/2addr v1, p0

    .line 2022
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v0

    return p0
.end method

.method static synthetic f()I
    .locals 1

    .line 178
    sget v0, Lcom/google/android/material/u/c;->k:I

    return v0
.end method

.method private f(F)Ljava/lang/String;
    .locals 2

    .line 1735
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1736
    iget-object p0, p0, Lcom/google/android/material/u/c;->J:Lcom/google/android/material/u/e;

    invoke-interface {p0, p1}, Lcom/google/android/material/u/e;->a(F)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    float-to-int p0, p1

    int-to-float p0, p0

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    const-string p0, "%.0f"

    goto :goto_0

    :cond_1
    const-string p0, "%.2f"

    :goto_0
    const/4 v0, 0x1

    .line 1739
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private f(I)V
    .locals 3

    const/16 v0, 0x11

    const v1, 0x7fffffff

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    const/high16 v2, -0x80000000

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2050
    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/android/material/u/c;->b(I)Z

    goto :goto_0

    .line 2044
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/google/android/material/u/c;->b(I)Z

    goto :goto_0

    .line 2053
    :cond_0
    invoke-direct {p0, v2}, Lcom/google/android/material/u/c;->c(I)Z

    goto :goto_0

    .line 2047
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/material/u/c;->c(I)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private g()V
    .locals 4

    .line 451
    iget v0, p0, Lcom/google/android/material/u/c;->L:F

    iget v1, p0, Lcom/google/android/material/u/c;->M:F

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    return-void

    .line 452
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/material/u/c;->L:F

    .line 454
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget p0, p0, Lcom/google/android/material/u/c;->M:F

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "valueFrom(%s) must be smaller than valueTo(%s)"

    .line 453
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g(I)V
    .locals 2

    .line 2091
    iget-object v0, p0, Lcom/google/android/material/u/c;->t:Lcom/google/android/material/u/c$a;

    if-nez v0, :cond_0

    .line 2092
    new-instance v0, Lcom/google/android/material/u/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/material/u/c$a;-><init>(Lcom/google/android/material/u/c;Lcom/google/android/material/u/c$1;)V

    iput-object v0, p0, Lcom/google/android/material/u/c;->t:Lcom/google/android/material/u/c$a;

    goto :goto_0

    .line 2094
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/u/c;->t:Lcom/google/android/material/u/c$a;

    invoke-virtual {p0, v0}, Lcom/google/android/material/u/c;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2096
    :goto_0
    iget-object v0, p0, Lcom/google/android/material/u/c;->t:Lcom/google/android/material/u/c$a;

    invoke-virtual {v0, p1}, Lcom/google/android/material/u/c$a;->a(I)V

    .line 2097
    iget-object p1, p0, Lcom/google/android/material/u/c;->t:Lcom/google/android/material/u/c$a;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/material/u/c;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private getActiveRange()[F
    .locals 5

    .line 1389
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1390
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1391
    iget-object v2, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget v1, p0, Lcom/google/android/material/u/c;->L:F

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/material/u/c;->b(F)F

    move-result v1

    .line 1392
    invoke-direct {p0, v0}, Lcom/google/android/material/u/c;->b(F)F

    move-result v0

    .line 1395
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->e()Z

    move-result p0

    const/4 v2, 0x0

    const/4 v4, 0x2

    if-eqz p0, :cond_1

    new-array p0, v4, [F

    aput v0, p0, v2

    aput v1, p0, v3

    goto :goto_0

    :cond_1
    new-array p0, v4, [F

    aput v1, p0, v2

    aput v0, p0, v3

    :goto_0
    return-object p0
.end method

.method private getValueOfTouchPosition()F
    .locals 4

    .line 1694
    iget v0, p0, Lcom/google/android/material/u/c;->af:F

    invoke-direct {p0, v0}, Lcom/google/android/material/u/c;->c(F)D

    move-result-wide v0

    .line 1697
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    .line 1700
    :cond_0
    iget v2, p0, Lcom/google/android/material/u/c;->M:F

    iget v3, p0, Lcom/google/android/material/u/c;->L:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v0, v2

    iget p0, p0, Lcom/google/android/material/u/c;->L:F

    float-to-double v2, p0

    add-double/2addr v0, v2

    double-to-float p0, v0

    return p0
.end method

.method private getValueOfTouchPositionAbsolute()F
    .locals 3

    .line 1650
    iget v0, p0, Lcom/google/android/material/u/c;->af:F

    .line 1651
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 1654
    :cond_0
    iget v1, p0, Lcom/google/android/material/u/c;->M:F

    iget v2, p0, Lcom/google/android/material/u/c;->L:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget p0, p0, Lcom/google/android/material/u/c;->L:F

    add-float/2addr v0, p0

    return v0
.end method

.method private h()V
    .locals 4

    .line 459
    iget v0, p0, Lcom/google/android/material/u/c;->M:F

    iget v1, p0, Lcom/google/android/material/u/c;->L:F

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    return-void

    .line 460
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/material/u/c;->M:F

    .line 462
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget p0, p0, Lcom/google/android/material/u/c;->L:F

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "valueTo(%s) must be greater than valueFrom(%s)"

    .line 461
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private i()V
    .locals 4

    .line 480
    iget v0, p0, Lcom/google/android/material/u/c;->Q:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/google/android/material/u/c;->M:F

    invoke-direct {p0, v0}, Lcom/google/android/material/u/c;->a(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 481
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/material/u/c;->Q:F

    .line 484
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/material/u/c;->L:F

    .line 485
    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget p0, p0, Lcom/google/android/material/u/c;->M:F

    .line 486
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

    .line 482
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private j()V
    .locals 8

    .line 491
    iget-object v0, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 492
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/google/android/material/u/c;->L:F

    cmpg-float v2, v2, v3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-ltz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v7, p0, Lcom/google/android/material/u/c;->M:F

    cmpl-float v2, v2, v7

    if-gtz v2, :cond_2

    .line 500
    iget v2, p0, Lcom/google/android/material/u/c;->Q:F

    const/4 v7, 0x0

    cmpl-float v2, v2, v7

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/material/u/c;->a(F)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 501
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 504
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    iget v1, p0, Lcom/google/android/material/u/c;->L:F

    .line 505
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    iget v1, p0, Lcom/google/android/material/u/c;->Q:F

    .line 506
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    iget p0, p0, Lcom/google/android/material/u/c;->Q:F

    .line 507
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v6

    const-string p0, "Value(%s) must be equal to valueFrom(%s) plus a multiple of stepSize(%s) when using stepSize(%s)"

    .line 502
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v2, v6, [Ljava/lang/Object;

    .line 496
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    iget v1, p0, Lcom/google/android/material/u/c;->L:F

    .line 497
    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v4

    iget p0, p0, Lcom/google/android/material/u/c;->M:F

    .line 498
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "Slider value(%s) must be greater or equal to valueFrom(%s), and lower or equal to valueTo(%s)"

    .line 494
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method private k()V
    .locals 7

    .line 513
    iget v0, p0, Lcom/google/android/material/u/c;->Q:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 518
    :cond_0
    iget v0, p0, Lcom/google/android/material/u/c;->Q:F

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/material/u/c;->Q:F

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 519
    sget-object v0, Lcom/google/android/material/u/c;->a:Ljava/lang/String;

    const-string v4, "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly."

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "stepSize"

    aput-object v6, v5, v2

    iget v6, p0, Lcom/google/android/material/u/c;->Q:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_1
    iget v0, p0, Lcom/google/android/material/u/c;->L:F

    float-to-int v0, v0

    int-to-float v0, v0

    iget v4, p0, Lcom/google/android/material/u/c;->L:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_2

    .line 523
    sget-object v0, Lcom/google/android/material/u/c;->a:Ljava/lang/String;

    const-string v4, "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly."

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "valueFrom"

    aput-object v6, v5, v2

    iget v6, p0, Lcom/google/android/material/u/c;->L:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_2
    iget v0, p0, Lcom/google/android/material/u/c;->M:F

    float-to-int v0, v0

    int-to-float v0, v0

    iget v4, p0, Lcom/google/android/material/u/c;->M:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    .line 527
    sget-object v0, Lcom/google/android/material/u/c;->a:Ljava/lang/String;

    const-string v4, "Floating point value used for %s(%s). Using floats can have rounding errors which may result in incorrect values. Instead, consider using integers with a custom LabelFormatter to display the  value correctly."

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "valueTo"

    aput-object v5, v3, v2

    iget p0, p0, Lcom/google/android/material/u/c;->M:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private l()V
    .locals 1

    .line 532
    iget-boolean v0, p0, Lcom/google/android/material/u/c;->V:Z

    if-eqz v0, :cond_0

    .line 533
    invoke-direct {p0}, Lcom/google/android/material/u/c;->g()V

    .line 534
    invoke-direct {p0}, Lcom/google/android/material/u/c;->h()V

    .line 535
    invoke-direct {p0}, Lcom/google/android/material/u/c;->i()V

    .line 536
    invoke-direct {p0}, Lcom/google/android/material/u/c;->j()V

    .line 537
    invoke-direct {p0}, Lcom/google/android/material/u/c;->k()V

    const/4 v0, 0x0

    .line 538
    iput-boolean v0, p0, Lcom/google/android/material/u/c;->V:Z

    :cond_0
    return-void
.end method

.method private m()V
    .locals 4

    .line 668
    iget-object v0, p0, Lcom/google/android/material/u/c;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 669
    iget-object v0, p0, Lcom/google/android/material/u/c;->v:Ljava/util/List;

    iget-object v1, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/u/c;->v:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 670
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/y/a;

    .line 671
    invoke-static {p0}, Landroidx/core/n/af;->ak(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 672
    invoke-direct {p0, v2}, Lcom/google/android/material/u/c;->b(Lcom/google/android/material/y/a;)V

    goto :goto_0

    .line 675
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 679
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/material/u/c;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 680
    iget-object v0, p0, Lcom/google/android/material/u/c;->u:Lcom/google/android/material/u/c$d;

    invoke-interface {v0}, Lcom/google/android/material/u/c$d;->a()Lcom/google/android/material/y/a;

    move-result-object v0

    .line 681
    iget-object v1, p0, Lcom/google/android/material/u/c;->v:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-static {p0}, Landroidx/core/n/af;->ak(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 683
    invoke-direct {p0, v0}, Lcom/google/android/material/u/c;->a(Lcom/google/android/material/y/a;)V

    goto :goto_1

    .line 688
    :cond_3
    iget-object v0, p0, Lcom/google/android/material/u/c;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v1, 0x0

    .line 689
    :cond_4
    iget-object p0, p0, Lcom/google/android/material/u/c;->v:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/y/a;

    int-to-float v2, v1

    .line 690
    invoke-virtual {v0, v2}, Lcom/google/android/material/y/a;->n(F)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method private n()V
    .locals 6

    .line 1314
    invoke-direct {p0}, Lcom/google/android/material/u/c;->l()V

    .line 1316
    iget v0, p0, Lcom/google/android/material/u/c;->M:F

    iget v1, p0, Lcom/google/android/material/u/c;->L:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/material/u/c;->Q:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1318
    iget v1, p0, Lcom/google/android/material/u/c;->S:I

    iget v2, p0, Lcom/google/android/material/u/c;->B:I

    mul-int/lit8 v2, v2, 0x2

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1319
    iget-object v1, p0, Lcom/google/android/material/u/c;->R:[F

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/u/c;->R:[F

    array-length v1, v1

    mul-int/lit8 v2, v0, 0x2

    if-eq v1, v2, :cond_1

    :cond_0
    mul-int/lit8 v1, v0, 0x2

    .line 1320
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/google/android/material/u/c;->R:[F

    .line 1323
    :cond_1
    iget v1, p0, Lcom/google/android/material/u/c;->S:I

    int-to-float v1, v1

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/4 v2, 0x0

    :goto_0
    mul-int/lit8 v3, v0, 0x2

    if-ge v2, v3, :cond_2

    .line 1325
    iget-object v3, p0, Lcom/google/android/material/u/c;->R:[F

    iget v4, p0, Lcom/google/android/material/u/c;->C:I

    int-to-float v4, v4

    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    aput v4, v3, v2

    .line 1326
    iget-object v3, p0, Lcom/google/android/material/u/c;->R:[F

    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0}, Lcom/google/android/material/u/c;->p()I

    move-result v5

    int-to-float v5, v5

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method

.method private o()V
    .locals 6

    .line 1332
    invoke-direct {p0}, Lcom/google/android/material/u/c;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 1333
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1334
    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_0

    .line 1335
    iget-object v1, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/material/u/c;->P:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/material/u/c;->b(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/material/u/c;->S:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/material/u/c;->C:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1336
    invoke-direct {p0}, Lcom/google/android/material/u/c;->p()I

    move-result v2

    .line 1337
    iget v3, p0, Lcom/google/android/material/u/c;->F:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/google/android/material/u/c;->F:I

    sub-int v4, v2, v4

    iget v5, p0, Lcom/google/android/material/u/c;->F:I

    add-int/2addr v1, v5

    iget p0, p0, Lcom/google/android/material/u/c;->F:I

    add-int/2addr v2, p0

    invoke-static {v0, v3, v4, v1, v2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_0
    return-void
.end method

.method private p()I
    .locals 4

    .line 1344
    iget v0, p0, Lcom/google/android/material/u/c;->D:I

    iget v1, p0, Lcom/google/android/material/u/c;->A:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-object p0, p0, Lcom/google/android/material/u/c;->v:Ljava/util/List;

    .line 1345
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/y/a;

    invoke-virtual {p0}, Lcom/google/android/material/y/a;->getIntrinsicHeight()I

    move-result v2

    :cond_0
    add-int/2addr v0, v2

    return v0
.end method

.method private q()Z
    .locals 2

    .line 1492
    iget-boolean v0, p0, Lcom/google/android/material/u/c;->T:Z

    if-nez v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 1494
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p0, p0, Landroid/graphics/drawable/RippleDrawable;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private r()Z
    .locals 1

    .line 1664
    invoke-direct {p0}, Lcom/google/android/material/u/c;->getValueOfTouchPosition()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/u/c;->d(F)Z

    move-result p0

    return p0
.end method

.method private s()V
    .locals 6

    .line 1708
    iget v0, p0, Lcom/google/android/material/u/c;->A:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 1713
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/u/c;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    .line 1715
    :goto_0
    iget-object v4, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1716
    iget v4, p0, Lcom/google/android/material/u/c;->P:I

    if-ne v3, v4, :cond_1

    goto :goto_1

    .line 1721
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/y/a;

    iget-object v5, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/google/android/material/u/c;->a(Lcom/google/android/material/y/a;F)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1724
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1731
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/y/a;

    iget-object v1, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    iget v2, p0, Lcom/google/android/material/u/c;->P:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/u/c;->a(Lcom/google/android/material/y/a;F)V

    return-void

    .line 1725
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/material/u/c;->v:Ljava/util/List;

    .line 1727
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object p0, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const-string p0, "Not enough labels(%d) to display all the values(%d)"

    .line 1726
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setValuesInternal(Ljava/util/ArrayList;)V
    .locals 2
    .param p1    # Ljava/util/ArrayList;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 644
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 648
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 650
    iget-object v0, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 651
    iget-object v0, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 656
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    const/4 p1, 0x1

    .line 657
    iput-boolean p1, p0, Lcom/google/android/material/u/c;->V:Z

    const/4 p1, 0x0

    .line 659
    iput p1, p0, Lcom/google/android/material/u/c;->P:I

    .line 660
    invoke-direct {p0}, Lcom/google/android/material/u/c;->o()V

    .line 661
    invoke-direct {p0}, Lcom/google/android/material/u/c;->m()V

    .line 662
    invoke-direct {p0}, Lcom/google/android/material/u/c;->v()V

    .line 663
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->postInvalidate()V

    return-void

    .line 645
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "At least one value must be set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private t()V
    .locals 3

    .line 1762
    iget-object v0, p0, Lcom/google/android/material/u/c;->l:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/u/c;->B:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1763
    iget-object v0, p0, Lcom/google/android/material/u/c;->m:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/u/c;->B:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1764
    iget-object v0, p0, Lcom/google/android/material/u/c;->p:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/material/u/c;->B:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1765
    iget-object v0, p0, Lcom/google/android/material/u/c;->q:Landroid/graphics/Paint;

    iget p0, p0, Lcom/google/android/material/u/c;->B:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private u()Z
    .locals 1

    .line 1776
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 1777
    :goto_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1778
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->shouldDelayChildPressedState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1781
    :cond_0
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private v()V
    .locals 5

    .line 1788
    iget-object v0, p0, Lcom/google/android/material/u/c;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/u/a;

    .line 1789
    iget-object v2, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 1790
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, p0, v3, v4}, Lcom/google/android/material/u/a;->a(Ljava/lang/Object;FZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private w()V
    .locals 2

    .line 1807
    iget-object v0, p0, Lcom/google/android/material/u/c;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/u/b;

    .line 1808
    invoke-interface {v1, p0}, Lcom/google/android/material/u/b;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private x()V
    .locals 2

    .line 1814
    iget-object v0, p0, Lcom/google/android/material/u/c;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/u/b;

    .line 1815
    invoke-interface {v1, p0}, Lcom/google/android/material/u/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private y()F
    .locals 2

    .line 2008
    iget v0, p0, Lcom/google/android/material/u/c;->Q:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/material/u/c;->Q:F

    :goto_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 785
    iget-object p0, p0, Lcom/google/android/material/u/c;->w:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method a(ILandroid/graphics/Rect;)V
    .locals 4

    .line 2194
    iget v0, p0, Lcom/google/android/material/u/c;->C:I

    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/u/c;->b(F)F

    move-result p1

    iget v1, p0, Lcom/google/android/material/u/c;->S:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    add-int/2addr v0, p1

    .line 2195
    invoke-direct {p0}, Lcom/google/android/material/u/c;->p()I

    move-result p1

    .line 2197
    iget v1, p0, Lcom/google/android/material/u/c;->E:I

    sub-int v1, v0, v1

    iget v2, p0, Lcom/google/android/material/u/c;->E:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/google/android/material/u/c;->E:I

    add-int/2addr v0, v3

    iget p0, p0, Lcom/google/android/material/u/c;->E:I

    add-int/2addr p1, p0

    invoke-virtual {p2, v1, v2, v0, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public a(Lcom/google/android/material/u/a;)V
    .locals 0
    .param p1    # Lcom/google/android/material/u/a;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .line 771
    iget-object p0, p0, Lcom/google/android/material/u/c;->w:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/google/android/material/u/b;)V
    .locals 0
    .param p1    # Lcom/google/android/material/u/b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 794
    iget-object p0, p0, Lcom/google/android/material/u/c;->x:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Z)V
    .locals 0
    .annotation build Landroidx/annotation/ax;
    .end annotation

    .line 1846
    iput-boolean p1, p0, Lcom/google/android/material/u/c;->T:Z

    return-void
.end method

.method public b()V
    .locals 0

    .line 808
    iget-object p0, p0, Lcom/google/android/material/u/c;->x:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public b(Lcom/google/android/material/u/a;)V
    .locals 0
    .param p1    # Lcom/google/android/material/u/a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")V"
        }
    .end annotation

    .line 780
    iget-object p0, p0, Lcom/google/android/material/u/c;->w:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/google/android/material/u/b;)V
    .locals 0
    .param p1    # Lcom/google/android/material/u/b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 803
    iget-object p0, p0, Lcom/google/android/material/u/c;->x:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Z
    .locals 0

    .line 816
    iget-object p0, p0, Lcom/google/android/material/u/c;->J:Lcom/google/android/material/u/e;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected d()Z
    .locals 11

    .line 1608
    iget v0, p0, Lcom/google/android/material/u/c;->O:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 1612
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/u/c;->getValueOfTouchPositionAbsolute()F

    move-result v0

    .line 1613
    invoke-direct {p0, v0}, Lcom/google/android/material/u/c;->e(F)F

    move-result v3

    const/4 v4, 0x0

    .line 1614
    iput v4, p0, Lcom/google/android/material/u/c;->O:I

    .line 1615
    iget-object v5, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    iget v6, p0, Lcom/google/android/material/u/c;->O:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v6, v5

    move v5, v2

    .line 1616
    :goto_0
    iget-object v7, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    .line 1617
    iget-object v7, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    sub-float/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1618
    iget-object v8, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    invoke-direct {p0, v8}, Lcom/google/android/material/u/c;->e(F)F

    move-result v8

    .line 1619
    invoke-static {v7, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-le v9, v2, :cond_1

    goto :goto_4

    .line 1623
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->e()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_3

    sub-float v9, v8, v3

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    :goto_1
    move v9, v2

    goto :goto_2

    :cond_2
    move v9, v4

    goto :goto_2

    :cond_3
    sub-float v9, v8, v3

    cmpg-float v9, v9, v10

    if-gez v9, :cond_2

    goto :goto_1

    .line 1626
    :goto_2
    invoke-static {v7, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-gez v10, :cond_4

    .line 1628
    iput v5, p0, Lcom/google/android/material/u/c;->O:I

    goto :goto_3

    .line 1632
    :cond_4
    invoke-static {v7, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v10

    if-nez v10, :cond_6

    sub-float/2addr v8, v3

    .line 1634
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v10, p0, Lcom/google/android/material/u/c;->y:I

    int-to-float v10, v10

    cmpg-float v8, v8, v10

    if-gez v8, :cond_5

    .line 1635
    iput v1, p0, Lcom/google/android/material/u/c;->O:I

    return v4

    :cond_5
    if-eqz v9, :cond_6

    .line 1641
    iput v5, p0, Lcom/google/android/material/u/c;->O:I

    :goto_3
    move v6, v7

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1646
    :cond_7
    :goto_4
    iget p0, p0, Lcom/google/android/material/u/c;->O:I

    if-eq p0, v1, :cond_8

    goto :goto_5

    :cond_8
    move v2, v4

    :goto_5
    return v2
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2075
    iget-object v0, p0, Lcom/google/android/material/u/c;->r:Lcom/google/android/material/u/c$b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/u/c$b;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2082
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected drawableStateChanged()V
    .locals 3

    .line 1821
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 1823
    iget-object v0, p0, Lcom/google/android/material/u/c;->l:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/u/c;->ad:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/u/c;->a(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1824
    iget-object v0, p0, Lcom/google/android/material/u/c;->m:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/u/c;->ac:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/u/c;->a(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1825
    iget-object v0, p0, Lcom/google/android/material/u/c;->p:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/u/c;->ab:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/u/c;->a(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1826
    iget-object v0, p0, Lcom/google/android/material/u/c;->q:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/u/c;->aa:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/u/c;->a(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1827
    iget-object v0, p0, Lcom/google/android/material/u/c;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/y/a;

    .line 1828
    invoke-virtual {v1}, Lcom/google/android/material/y/a;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1829
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/y/a;->setState([I)Z

    goto :goto_0

    .line 1832
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/u/c;->ae:Lcom/google/android/material/t/j;

    invoke-virtual {v0}, Lcom/google/android/material/t/j;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1833
    iget-object v0, p0, Lcom/google/android/material/u/c;->ae:Lcom/google/android/material/t/j;

    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/t/j;->setState([I)Z

    .line 1835
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/u/c;->o:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/u/c;->W:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1}, Lcom/google/android/material/u/c;->a(Landroid/content/res/ColorStateList;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1836
    iget-object p0, p0, Lcom/google/android/material/u/c;->o:Landroid/graphics/Paint;

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method final e()Z
    .locals 1

    .line 1944
    invoke-static {p0}, Landroidx/core/n/af;->p(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 2070
    const-class p0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method final getAccessibilityFocusedVirtualViewId()I
    .locals 0
    .annotation build Landroidx/annotation/ax;
    .end annotation

    .line 2064
    iget-object p0, p0, Lcom/google/android/material/u/c;->r:Lcom/google/android/material/u/c$b;

    invoke-virtual {p0}, Lcom/google/android/material/u/c$b;->b()I

    move-result p0

    return p0
.end method

.method public getActiveThumbIndex()I
    .locals 0

    .line 762
    iget p0, p0, Lcom/google/android/material/u/c;->O:I

    return p0
.end method

.method public getFocusedThumbIndex()I
    .locals 0

    .line 743
    iget p0, p0, Lcom/google/android/material/u/c;->P:I

    return p0
.end method

.method public getHaloRadius()I
    .locals 0
    .annotation build Landroidx/annotation/p;
    .end annotation

    .line 911
    iget p0, p0, Lcom/google/android/material/u/c;->F:I

    return p0
.end method

.method public getHaloTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1015
    iget-object p0, p0, Lcom/google/android/material/u/c;->W:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getLabelBehavior()I
    .locals 0

    .line 953
    iget p0, p0, Lcom/google/android/material/u/c;->A:I

    return p0
.end method

.method public getStepSize()F
    .locals 0

    .line 704
    iget p0, p0, Lcom/google/android/material/u/c;->Q:F

    return p0
.end method

.method public getThumbElevation()F
    .locals 0

    .line 837
    iget-object p0, p0, Lcom/google/android/material/u/c;->ae:Lcom/google/android/material/t/j;

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->ag()F

    move-result p0

    return p0
.end method

.method public getThumbRadius()I
    .locals 0
    .annotation build Landroidx/annotation/p;
    .end annotation

    .line 869
    iget p0, p0, Lcom/google/android/material/u/c;->E:I

    return p0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1049
    iget-object p0, p0, Lcom/google/android/material/u/c;->ae:Lcom/google/android/material/t/j;

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->U()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getTickActiveTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1107
    iget-object p0, p0, Lcom/google/android/material/u/c;->aa:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTickInactiveTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1136
    iget-object p0, p0, Lcom/google/android/material/u/c;->ab:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTickTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1076
    iget-object v0, p0, Lcom/google/android/material/u/c;->ab:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/u/c;->aa:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    iget-object p0, p0, Lcom/google/android/material/u/c;->aa:Landroid/content/res/ColorStateList;

    return-object p0

    .line 1077
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The inactive and active ticks are different colors. Use the getTickColorInactive() and getTickColorActive() methods instead."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTrackActiveTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1200
    iget-object p0, p0, Lcom/google/android/material/u/c;->ac:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTrackHeight()I
    .locals 0
    .annotation build Landroidx/annotation/p;
    .end annotation

    .line 990
    iget p0, p0, Lcom/google/android/material/u/c;->B:I

    return p0
.end method

.method public getTrackInactiveTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1229
    iget-object p0, p0, Lcom/google/android/material/u/c;->ad:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTrackSidePadding()I
    .locals 0
    .annotation build Landroidx/annotation/p;
    .end annotation

    .line 973
    iget p0, p0, Lcom/google/android/material/u/c;->C:I

    return p0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1169
    iget-object v0, p0, Lcom/google/android/material/u/c;->ad:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/google/android/material/u/c;->ac:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    iget-object p0, p0, Lcom/google/android/material/u/c;->ac:Landroid/content/res/ColorStateList;

    return-object p0

    .line 1170
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The inactive and active parts of the track are different colors. Use the getInactiveTrackColor() and getActiveTrackColor() methods instead."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTrackWidth()I
    .locals 0
    .annotation build Landroidx/annotation/p;
    .end annotation

    .line 979
    iget p0, p0, Lcom/google/android/material/u/c;->S:I

    return p0
.end method

.method public getValueFrom()F
    .locals 0

    .line 549
    iget p0, p0, Lcom/google/android/material/u/c;->L:F

    return p0
.end method

.method public getValueTo()F
    .locals 0

    .line 575
    iget p0, p0, Lcom/google/android/material/u/c;->M:F

    return p0
.end method

.method getValues()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 596
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1258
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 1260
    iget-object v0, p0, Lcom/google/android/material/u/c;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/y/a;

    .line 1261
    invoke-direct {p0, v1}, Lcom/google/android/material/u/c;->a(Lcom/google/android/material/y/a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1271
    iget-object v0, p0, Lcom/google/android/material/u/c;->t:Lcom/google/android/material/u/c$a;

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lcom/google/android/material/u/c;->t:Lcom/google/android/material/u/c$a;

    invoke-virtual {p0, v0}, Lcom/google/android/material/u/c;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/u/c;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/y/a;

    .line 1276
    invoke-direct {p0, v1}, Lcom/google/android/material/u/c;->b(Lcom/google/android/material/y/a;)V

    goto :goto_0

    .line 1279
    :cond_1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1350
    iget-boolean v0, p0, Lcom/google/android/material/u/c;->V:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1351
    invoke-direct {p0}, Lcom/google/android/material/u/c;->l()V

    .line 1354
    iget v0, p0, Lcom/google/android/material/u/c;->Q:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1355
    invoke-direct {p0}, Lcom/google/android/material/u/c;->n()V

    .line 1359
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1361
    invoke-direct {p0}, Lcom/google/android/material/u/c;->p()I

    move-result v0

    .line 1363
    iget v2, p0, Lcom/google/android/material/u/c;->S:I

    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/material/u/c;->a(Landroid/graphics/Canvas;II)V

    .line 1364
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iget v3, p0, Lcom/google/android/material/u/c;->L:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 1365
    iget v2, p0, Lcom/google/android/material/u/c;->S:I

    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/material/u/c;->b(Landroid/graphics/Canvas;II)V

    .line 1368
    :cond_1
    iget v2, p0, Lcom/google/android/material/u/c;->Q:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_2

    .line 1369
    invoke-direct {p0, p1}, Lcom/google/android/material/u/c;->a(Landroid/graphics/Canvas;)V

    .line 1372
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/material/u/c;->K:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/material/u/c;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1373
    iget v1, p0, Lcom/google/android/material/u/c;->S:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/u/c;->d(Landroid/graphics/Canvas;II)V

    .line 1376
    iget v1, p0, Lcom/google/android/material/u/c;->O:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 1377
    invoke-direct {p0}, Lcom/google/android/material/u/c;->s()V

    .line 1381
    :cond_4
    iget v1, p0, Lcom/google/android/material/u/c;->S:I

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/material/u/c;->c(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 2028
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 2030
    iput p1, p0, Lcom/google/android/material/u/c;->O:I

    .line 2031
    iget-object p1, p0, Lcom/google/android/material/u/c;->v:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/y/a;

    .line 2032
    invoke-static {p0}, Lcom/google/android/material/internal/z;->g(Landroid/view/View;)Lcom/google/android/material/internal/y;

    move-result-object p3

    invoke-interface {p3, p2}, Lcom/google/android/material/internal/y;->b(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2034
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/u/c;->r:Lcom/google/android/material/u/c$b;

    iget p0, p0, Lcom/google/android/material/u/c;->P:I

    invoke-virtual {p1, p0}, Lcom/google/android/material/u/c$b;->d(I)Z

    goto :goto_1

    .line 2036
    :cond_1
    invoke-direct {p0, p2}, Lcom/google/android/material/u/c;->f(I)V

    .line 2037
    iget-object p1, p0, Lcom/google/android/material/u/c;->r:Lcom/google/android/material/u/c$b;

    iget p0, p0, Lcom/google/android/material/u/c;->P:I

    invoke-virtual {p1, p0}, Lcom/google/android/material/u/c$b;->c(I)Z

    :goto_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1851
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1852
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 1856
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 1857
    iput v1, p0, Lcom/google/android/material/u/c;->O:I

    .line 1861
    :cond_1
    iget v0, p0, Lcom/google/android/material/u/c;->O:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 1862
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/u/c;->a(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1863
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    :goto_0
    return p0

    .line 1866
    :cond_3
    iget-boolean v0, p0, Lcom/google/android/material/u/c;->U:Z

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    or-int/2addr v0, v4

    iput-boolean v0, p0, Lcom/google/android/material/u/c;->U:Z

    .line 1867
    invoke-direct {p0, p1}, Lcom/google/android/material/u/c;->d(I)Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1869
    iget-object p1, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    iget p2, p0, Lcom/google/android/material/u/c;->O:I

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    add-float/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/google/android/material/u/c;->d(F)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1870
    invoke-direct {p0}, Lcom/google/android/material/u/c;->o()V

    .line 1871
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->postInvalidate()V

    :cond_4
    return v2

    :cond_5
    const/16 v0, 0x17

    if-eq p1, v0, :cond_9

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_6

    const/16 v0, 0x42

    if-eq p1, v0, :cond_9

    .line 1897
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    .line 1877
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1878
    invoke-direct {p0, v2}, Lcom/google/android/material/u/c;->b(I)Z

    move-result p0

    return p0

    .line 1881
    :cond_7
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1882
    invoke-direct {p0, v3}, Lcom/google/android/material/u/c;->b(I)Z

    move-result p0

    return p0

    :cond_8
    return v1

    .line 1887
    :cond_9
    iput v3, p0, Lcom/google/android/material/u/c;->O:I

    .line 1888
    iget-object p1, p0, Lcom/google/android/material/u/c;->v:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/y/a;

    .line 1889
    invoke-static {p0}, Lcom/google/android/material/internal/z;->g(Landroid/view/View;)Lcom/google/android/material/internal/y;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/google/android/material/internal/y;->b(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 1891
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->postInvalidate()V

    return v2
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1939
    iput-boolean v0, p0, Lcom/google/android/material/u/c;->U:Z

    .line 1940
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1292
    iget p2, p0, Lcom/google/android/material/u/c;->z:I

    iget v0, p0, Lcom/google/android/material/u/c;->A:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/material/u/c;->v:Ljava/util/List;

    .line 1296
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/y/a;

    invoke-virtual {v0}, Lcom/google/android/material/y/a;->getIntrinsicHeight()I

    move-result v1

    :cond_0
    add-int/2addr p2, v1

    const/high16 v0, 0x40000000    # 2.0f

    .line 1294
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1292
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 2129
    check-cast p1, Lcom/google/android/material/u/c$c;

    .line 2130
    invoke-virtual {p1}, Lcom/google/android/material/u/c$c;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2132
    iget v0, p1, Lcom/google/android/material/u/c$c;->a:F

    iput v0, p0, Lcom/google/android/material/u/c;->L:F

    .line 2133
    iget v0, p1, Lcom/google/android/material/u/c$c;->b:F

    iput v0, p0, Lcom/google/android/material/u/c;->M:F

    .line 2134
    iget-object v0, p1, Lcom/google/android/material/u/c$c;->c:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/google/android/material/u/c;->setValuesInternal(Ljava/util/ArrayList;)V

    .line 2135
    iget v0, p1, Lcom/google/android/material/u/c$c;->d:F

    iput v0, p0, Lcom/google/android/material/u/c;->Q:F

    .line 2136
    iget-boolean p1, p1, Lcom/google/android/material/u/c$c;->e:Z

    if-eqz p1, :cond_0

    .line 2137
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->requestFocus()Z

    .line 2139
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/u/c;->v()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 2117
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2118
    new-instance v1, Lcom/google/android/material/u/c$c;

    invoke-direct {v1, v0}, Lcom/google/android/material/u/c$c;-><init>(Landroid/os/Parcelable;)V

    .line 2119
    iget v0, p0, Lcom/google/android/material/u/c;->L:F

    iput v0, v1, Lcom/google/android/material/u/c$c;->a:F

    .line 2120
    iget v0, p0, Lcom/google/android/material/u/c;->M:F

    iput v0, v1, Lcom/google/android/material/u/c$c;->b:F

    .line 2121
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v1, Lcom/google/android/material/u/c$c;->c:Ljava/util/ArrayList;

    .line 2122
    iget v0, p0, Lcom/google/android/material/u/c;->Q:F

    iput v0, v1, Lcom/google/android/material/u/c$c;->d:F

    .line 2123
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->hasFocus()Z

    move-result p0

    iput-boolean p0, v1, Lcom/google/android/material/u/c$c;->e:Z

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1303
    iget p2, p0, Lcom/google/android/material/u/c;->C:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/u/c;->S:I

    .line 1306
    iget p1, p0, Lcom/google/android/material/u/c;->Q:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    .line 1307
    invoke-direct {p0}, Lcom/google/android/material/u/c;->n()V

    .line 1310
    :cond_0
    invoke-direct {p0}, Lcom/google/android/material/u/c;->o()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1499
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1502
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1503
    iget v2, p0, Lcom/google/android/material/u/c;->C:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lcom/google/android/material/u/c;->S:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/android/material/u/c;->af:F

    const/4 v2, 0x0

    .line 1504
    iget v3, p0, Lcom/google/android/material/u/c;->af:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/u/c;->af:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1505
    iget v3, p0, Lcom/google/android/material/u/c;->af:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Lcom/google/android/material/u/c;->af:F

    .line 1507
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 1532
    :pswitch_0
    iget-boolean v2, p0, Lcom/google/android/material/u/c;->K:Z

    if-nez v2, :cond_2

    .line 1534
    iget v2, p0, Lcom/google/android/material/u/c;->H:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v2, p0, Lcom/google/android/material/u/c;->y:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    return v1

    .line 1537
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1538
    invoke-direct {p0}, Lcom/google/android/material/u/c;->w()V

    .line 1541
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->d()Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_1

    .line 1546
    :cond_3
    iput-boolean v3, p0, Lcom/google/android/material/u/c;->K:Z

    .line 1547
    invoke-direct {p0}, Lcom/google/android/material/u/c;->r()Z

    .line 1548
    invoke-direct {p0}, Lcom/google/android/material/u/c;->o()V

    .line 1549
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->invalidate()V

    goto/16 :goto_1

    .line 1552
    :pswitch_1
    iput-boolean v1, p0, Lcom/google/android/material/u/c;->K:Z

    .line 1554
    iget-object v0, p0, Lcom/google/android/material/u/c;->I:Landroid/view/MotionEvent;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/u/c;->I:Landroid/view/MotionEvent;

    .line 1555
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/u/c;->I:Landroid/view/MotionEvent;

    .line 1556
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/u/c;->y:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/u/c;->I:Landroid/view/MotionEvent;

    .line 1557
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/google/android/material/u/c;->y:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    .line 1558
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->d()Z

    .line 1561
    :cond_4
    iget v0, p0, Lcom/google/android/material/u/c;->O:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 1562
    invoke-direct {p0}, Lcom/google/android/material/u/c;->r()Z

    .line 1563
    iput v1, p0, Lcom/google/android/material/u/c;->O:I

    .line 1565
    :cond_5
    iget-object v0, p0, Lcom/google/android/material/u/c;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/y/a;

    .line 1566
    invoke-static {p0}, Lcom/google/android/material/internal/z;->g(Landroid/view/View;)Lcom/google/android/material/internal/y;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/google/android/material/internal/y;->b(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1568
    :cond_6
    invoke-direct {p0}, Lcom/google/android/material/u/c;->x()V

    .line 1569
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->invalidate()V

    goto :goto_1

    .line 1509
    :pswitch_2
    iput v0, p0, Lcom/google/android/material/u/c;->H:F

    .line 1513
    invoke-direct {p0}, Lcom/google/android/material/u/c;->u()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_1

    .line 1517
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1519
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->d()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_1

    .line 1524
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->requestFocus()Z

    .line 1525
    iput-boolean v3, p0, Lcom/google/android/material/u/c;->K:Z

    .line 1526
    invoke-direct {p0}, Lcom/google/android/material/u/c;->r()Z

    .line 1527
    invoke-direct {p0}, Lcom/google/android/material/u/c;->o()V

    .line 1528
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->invalidate()V

    .line 1529
    invoke-direct {p0}, Lcom/google/android/material/u/c;->w()V

    .line 1576
    :goto_1
    iget-boolean v0, p0, Lcom/google/android/material/u/c;->K:Z

    invoke-virtual {p0, v0}, Lcom/google/android/material/u/c;->setPressed(Z)V

    .line 1578
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/u/c;->I:Landroid/view/MotionEvent;

    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setActiveThumbIndex(I)V
    .locals 0

    .line 757
    iput p1, p0, Lcom/google/android/material/u/c;->O:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1250
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const/4 v0, 0x0

    .line 1253
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/u/c;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setFocusedThumbIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 748
    iget-object v0, p0, Lcom/google/android/material/u/c;->N:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 751
    iput p1, p0, Lcom/google/android/material/u/c;->P:I

    .line 752
    iget-object p1, p0, Lcom/google/android/material/u/c;->r:Lcom/google/android/material/u/c$b;

    iget v0, p0, Lcom/google/android/material/u/c;->P:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/u/c$b;->c(I)Z

    .line 753
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->postInvalidate()V

    return-void

    .line 749
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "index out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setHaloRadius(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/p;
        .end annotation

        .annotation build Landroidx/annotation/z;
            a = 0x0L
        .end annotation
    .end param

    .line 921
    iget v0, p0, Lcom/google/android/material/u/c;->F:I

    if-ne p1, v0, :cond_0

    return-void

    .line 925
    :cond_0
    iput p1, p0, Lcom/google/android/material/u/c;->F:I

    .line 926
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 927
    invoke-direct {p0}, Lcom/google/android/material/u/c;->q()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    .line 928
    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    iget p0, p0, Lcom/google/android/material/u/c;->F:I

    invoke-static {p1, p0}, Lcom/google/android/material/j/a;->a(Landroid/graphics/drawable/RippleDrawable;I)V

    return-void

    .line 932
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->postInvalidate()V

    return-void
.end method

.method public setHaloRadiusResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 942
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/u/c;->setHaloRadius(I)V

    return-void
.end method

.method public setHaloTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1025
    iget-object v0, p0, Lcom/google/android/material/u/c;->W:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1029
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/u/c;->W:Landroid/content/res/ColorStateList;

    .line 1030
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1031
    invoke-direct {p0}, Lcom/google/android/material/u/c;->q()Z

    move-result v1

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 1032
    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    return-void

    .line 1036
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/u/c;->o:Landroid/graphics/Paint;

    invoke-direct {p0, p1}, Lcom/google/android/material/u/c;->a(Landroid/content/res/ColorStateList;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1037
    iget-object p1, p0, Lcom/google/android/material/u/c;->o:Landroid/graphics/Paint;

    const/16 v0, 0x3f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1038
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->invalidate()V

    return-void
.end method

.method public setLabelBehavior(I)V
    .locals 1

    .line 964
    iget v0, p0, Lcom/google/android/material/u/c;->A:I

    if-eq v0, p1, :cond_0

    .line 965
    iput p1, p0, Lcom/google/android/material/u/c;->A:I

    .line 966
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setLabelFormatter(Lcom/google/android/material/u/e;)V
    .locals 0
    .param p1    # Lcom/google/android/material/u/e;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 826
    iput-object p1, p0, Lcom/google/android/material/u/c;->J:Lcom/google/android/material/u/e;

    return-void
.end method

.method public setStepSize(F)V
    .locals 4

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    .line 734
    iget v0, p0, Lcom/google/android/material/u/c;->Q:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 735
    iput p1, p0, Lcom/google/android/material/u/c;->Q:F

    .line 736
    iput-boolean v1, p0, Lcom/google/android/material/u/c;->V:Z

    .line 737
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->postInvalidate()V

    :cond_0
    return-void

    .line 727
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 730
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    iget p1, p0, Lcom/google/android/material/u/c;->L:F

    .line 731
    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const/4 p1, 0x2

    iget p0, p0, Lcom/google/android/material/u/c;->M:F

    .line 732
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, p1

    const-string p0, "The stepSize(%s) must be 0, or a factor of the valueFrom(%s)-valueTo(%s) range"

    .line 728
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setThumbElevation(F)V
    .locals 0

    .line 847
    iget-object p0, p0, Lcom/google/android/material/u/c;->ae:Lcom/google/android/material/t/j;

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->r(F)V

    return-void
.end method

.method public setThumbElevationResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 857
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/u/c;->setThumbElevation(F)V

    return-void
.end method

.method public setThumbRadius(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/p;
        .end annotation

        .annotation build Landroidx/annotation/z;
            a = 0x0L
        .end annotation
    .end param

    .line 879
    iget v0, p0, Lcom/google/android/material/u/c;->E:I

    if-ne p1, v0, :cond_0

    return-void

    .line 883
    :cond_0
    iput p1, p0, Lcom/google/android/material/u/c;->E:I

    .line 885
    iget-object p1, p0, Lcom/google/android/material/u/c;->ae:Lcom/google/android/material/t/j;

    .line 886
    invoke-static {}, Lcom/google/android/material/t/o;->a()Lcom/google/android/material/t/o$a;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/u/c;->E:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/t/o$a;->a(IF)Lcom/google/android/material/t/o$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/t/o$a;->a()Lcom/google/android/material/t/o;

    move-result-object v0

    .line 885
    invoke-virtual {p1, v0}, Lcom/google/android/material/t/j;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    .line 887
    iget-object p1, p0, Lcom/google/android/material/u/c;->ae:Lcom/google/android/material/t/j;

    iget v0, p0, Lcom/google/android/material/u/c;->E:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/google/android/material/u/c;->E:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/google/android/material/t/j;->setBounds(IIII)V

    .line 889
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->postInvalidate()V

    return-void
.end method

.method public setThumbRadiusResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 899
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/u/c;->setThumbRadius(I)V

    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1059
    iget-object p0, p0, Lcom/google/android/material/u/c;->ae:Lcom/google/android/material/t/j;

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->g(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTickActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1118
    iget-object v0, p0, Lcom/google/android/material/u/c;->aa:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1121
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/u/c;->aa:Landroid/content/res/ColorStateList;

    .line 1122
    iget-object p1, p0, Lcom/google/android/material/u/c;->q:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/material/u/c;->aa:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/u/c;->a(Landroid/content/res/ColorStateList;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1123
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->invalidate()V

    return-void
.end method

.method public setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1147
    iget-object v0, p0, Lcom/google/android/material/u/c;->ab:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1150
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/u/c;->ab:Landroid/content/res/ColorStateList;

    .line 1151
    iget-object p1, p0, Lcom/google/android/material/u/c;->p:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/material/u/c;->ab:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/u/c;->a(Landroid/content/res/ColorStateList;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1152
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->invalidate()V

    return-void
.end method

.method public setTickTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1093
    invoke-virtual {p0, p1}, Lcom/google/android/material/u/c;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 1094
    invoke-virtual {p0, p1}, Lcom/google/android/material/u/c;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1211
    iget-object v0, p0, Lcom/google/android/material/u/c;->ac:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1214
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/u/c;->ac:Landroid/content/res/ColorStateList;

    .line 1215
    iget-object p1, p0, Lcom/google/android/material/u/c;->m:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/material/u/c;->ac:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/u/c;->a(Landroid/content/res/ColorStateList;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1216
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->invalidate()V

    return-void
.end method

.method public setTrackHeight(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/p;
        .end annotation

        .annotation build Landroidx/annotation/z;
            a = 0x0L
        .end annotation
    .end param

    .line 1000
    iget v0, p0, Lcom/google/android/material/u/c;->B:I

    if-eq v0, p1, :cond_0

    .line 1001
    iput p1, p0, Lcom/google/android/material/u/c;->B:I

    .line 1002
    invoke-direct {p0}, Lcom/google/android/material/u/c;->t()V

    .line 1003
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1240
    iget-object v0, p0, Lcom/google/android/material/u/c;->ad:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1243
    :cond_0
    iput-object p1, p0, Lcom/google/android/material/u/c;->ad:Landroid/content/res/ColorStateList;

    .line 1244
    iget-object p1, p0, Lcom/google/android/material/u/c;->l:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/google/android/material/u/c;->ad:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Lcom/google/android/material/u/c;->a(Landroid/content/res/ColorStateList;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1245
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->invalidate()V

    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1186
    invoke-virtual {p0, p1}, Lcom/google/android/material/u/c;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    .line 1187
    invoke-virtual {p0, p1}, Lcom/google/android/material/u/c;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setValueFrom(F)V
    .locals 0

    .line 563
    iput p1, p0, Lcom/google/android/material/u/c;->L:F

    const/4 p1, 0x1

    .line 564
    iput-boolean p1, p0, Lcom/google/android/material/u/c;->V:Z

    .line 565
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->postInvalidate()V

    return-void
.end method

.method public setValueTo(F)V
    .locals 0

    .line 589
    iput p1, p0, Lcom/google/android/material/u/c;->M:F

    const/4 p1, 0x1

    .line 590
    iput-boolean p1, p0, Lcom/google/android/material/u/c;->V:Z

    .line 591
    invoke-virtual {p0}, Lcom/google/android/material/u/c;->postInvalidate()V

    return-void
.end method

.method setValues(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 636
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/u/c;->setValuesInternal(Ljava/util/ArrayList;)V

    return-void
.end method

.method varargs setValues([Ljava/lang/Float;)V
    .locals 1
    .param p1    # [Ljava/lang/Float;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 616
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 617
    invoke-direct {p0, v0}, Lcom/google/android/material/u/c;->setValuesInternal(Ljava/util/ArrayList;)V

    return-void
.end method
