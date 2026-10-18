.class public Lcom/google/android/material/t/j;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroidx/core/graphics/drawable/e;
.implements Lcom/google/android/material/t/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/t/j$b;,
        Lcom/google/android/material/t/j$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static final d:Ljava/lang/String; = "j"

.field private static final e:F = 0.75f

.field private static final f:F = 0.25f

.field private static final g:Landroid/graphics/Paint;


# instance fields
.field private A:Landroid/graphics/PorterDuffColorFilter;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private final B:Landroid/graphics/RectF;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private C:Z

.field private h:Lcom/google/android/material/t/j$b;

.field private final i:[Lcom/google/android/material/t/q$h;

.field private final j:[Lcom/google/android/material/t/q$h;

.field private final k:Ljava/util/BitSet;

.field private l:Z

.field private final m:Landroid/graphics/Matrix;

.field private final n:Landroid/graphics/Path;

.field private final o:Landroid/graphics/Path;

.field private final p:Landroid/graphics/RectF;

.field private final q:Landroid/graphics/RectF;

.field private final r:Landroid/graphics/Region;

.field private final s:Landroid/graphics/Region;

.field private t:Lcom/google/android/material/t/o;

.field private final u:Landroid/graphics/Paint;

.field private final v:Landroid/graphics/Paint;

.field private final w:Lcom/google/android/material/s/b;

.field private final x:Lcom/google/android/material/t/p$a;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final y:Lcom/google/android/material/t/p;

.field private z:Landroid/graphics/PorterDuffColorFilter;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/google/android/material/t/j;->g:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 174
    new-instance v0, Lcom/google/android/material/t/o;

    invoke-direct {v0}, Lcom/google/android/material/t/o;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/android/material/t/j;-><init>(Lcom/google/android/material/t/o;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/f;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param

    .line 182
    invoke-static {p1, p2, p3, p4}, Lcom/google/android/material/t/o;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/t/o$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/t/o$a;->a()Lcom/google/android/material/t/o;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/t/j;-><init>(Lcom/google/android/material/t/o;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/material/t/j$b;)V
    .locals 2
    .param p1    # Lcom/google/android/material/t/j$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 198
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x4

    .line 113
    new-array v1, v0, [Lcom/google/android/material/t/q$h;

    iput-object v1, p0, Lcom/google/android/material/t/j;->i:[Lcom/google/android/material/t/q$h;

    .line 114
    new-array v0, v0, [Lcom/google/android/material/t/q$h;

    iput-object v0, p0, Lcom/google/android/material/t/j;->j:[Lcom/google/android/material/t/q$h;

    .line 115
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/t/j;->k:Ljava/util/BitSet;

    .line 119
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/t/j;->m:Landroid/graphics/Matrix;

    .line 120
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/t/j;->n:Landroid/graphics/Path;

    .line 121
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/t/j;->o:Landroid/graphics/Path;

    .line 122
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/t/j;->p:Landroid/graphics/RectF;

    .line 123
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/t/j;->q:Landroid/graphics/RectF;

    .line 124
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/t/j;->r:Landroid/graphics/Region;

    .line 125
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/t/j;->s:Landroid/graphics/Region;

    .line 128
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/t/j;->u:Landroid/graphics/Paint;

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/material/t/j;->v:Landroid/graphics/Paint;

    .line 131
    new-instance v0, Lcom/google/android/material/s/b;

    invoke-direct {v0}, Lcom/google/android/material/s/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/t/j;->w:Lcom/google/android/material/s/b;

    .line 133
    new-instance v0, Lcom/google/android/material/t/p;

    invoke-direct {v0}, Lcom/google/android/material/t/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/t/j;->y:Lcom/google/android/material/t/p;

    .line 138
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/t/j;->B:Landroid/graphics/RectF;

    .line 140
    iput-boolean v1, p0, Lcom/google/android/material/t/j;->C:Z

    .line 199
    iput-object p1, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    .line 200
    iget-object p1, p0, Lcom/google/android/material/t/j;->v:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 201
    iget-object p1, p0, Lcom/google/android/material/t/j;->u:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 202
    sget-object p1, Lcom/google/android/material/t/j;->g:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    sget-object p1, Lcom/google/android/material/t/j;->g:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 204
    invoke-direct {p0}, Lcom/google/android/material/t/j;->g()Z

    .line 205
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->getState()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/t/j;->a([I)Z

    .line 207
    new-instance p1, Lcom/google/android/material/t/j$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/t/j$1;-><init>(Lcom/google/android/material/t/j;)V

    iput-object p1, p0, Lcom/google/android/material/t/j;->x:Lcom/google/android/material/t/p$a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/t/j$b;Lcom/google/android/material/t/j$1;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/google/android/material/t/j;-><init>(Lcom/google/android/material/t/j$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/t/o;)V
    .locals 2
    .param p1    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 195
    new-instance v0, Lcom/google/android/material/t/j$b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/t/j$b;-><init>(Lcom/google/android/material/t/o;Lcom/google/android/material/k/a;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/t/j;-><init>(Lcom/google/android/material/t/j$b;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/t/r;)V
    .locals 0
    .param p1    # Lcom/google/android/material/t/r;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 187
    invoke-direct {p0, p1}, Lcom/google/android/material/t/j;-><init>(Lcom/google/android/material/t/o;)V

    return-void
.end method

.method private a(I)I
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 598
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->ai()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->af()F

    move-result v1

    add-float/2addr v0, v1

    .line 599
    iget-object v1, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v1, v1, Lcom/google/android/material/t/j$b;->b:Lcom/google/android/material/k/a;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object p0, p0, Lcom/google/android/material/t/j$b;->b:Lcom/google/android/material/k/a;

    .line 600
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/k/a;->a(IF)I

    move-result p1

    :cond_0
    return p1
.end method

.method private a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1238
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/material/t/j;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    goto :goto_1

    .line 1237
    :cond_1
    :goto_0
    invoke-direct {p0, p3, p4}, Lcom/google/android/material/t/j;->a(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1259
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->getState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eqz p3, :cond_0

    .line 1261
    invoke-direct {p0, p1}, Lcom/google/android/material/t/j;->a(I)I

    move-result p1

    .line 1263
    :cond_0
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p0, p1, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p0
.end method

.method private a(Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;
    .locals 0
    .param p1    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    if-eqz p2, :cond_0

    .line 1245
    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    .line 1246
    invoke-direct {p0, p1}, Lcom/google/android/material/t/j;->a(I)I

    move-result p0

    if-eq p0, p1, :cond_0

    .line 1248
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/material/t/j;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x0

    .line 151
    invoke-static {p0, v0}, Lcom/google/android/material/t/j;->a(Landroid/content/Context;F)Lcom/google/android/material/t/j;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;F)Lcom/google/android/material/t/j;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 163
    sget v0, Lcom/google/android/material/a$c;->colorSurface:I

    const-class v1, Lcom/google/android/material/t/j;

    .line 165
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {p0, v0, v1}, Lcom/google/android/material/h/a;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 166
    new-instance v1, Lcom/google/android/material/t/j;

    invoke-direct {v1}, Lcom/google/android/material/t/j;-><init>()V

    .line 167
    invoke-virtual {v1, p0}, Lcom/google/android/material/t/j;->b(Landroid/content/Context;)V

    .line 168
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/android/material/t/j;->g(Landroid/content/res/ColorStateList;)V

    .line 169
    invoke-virtual {v1, p1}, Lcom/google/android/material/t/j;->r(F)V

    return-object v1
.end method

.method static synthetic a(Lcom/google/android/material/t/j;)Ljava/util/BitSet;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/google/android/material/t/j;->k:Ljava/util/BitSet;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 704
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->ai()F

    move-result v0

    .line 705
    iget-object v1, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Lcom/google/android/material/t/j$b;->r:I

    .line 706
    iget-object v1, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/google/android/material/t/j$b;->s:I

    .line 708
    invoke-direct {p0}, Lcom/google/android/material/t/j;->g()Z

    .line 709
    invoke-direct {p0}, Lcom/google/android/material/t/j;->b()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 963
    invoke-direct {p0}, Lcom/google/android/material/t/j;->c()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 967
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 968
    invoke-direct {p0, p1}, Lcom/google/android/material/t/j;->d(Landroid/graphics/Canvas;)V

    .line 969
    iget-boolean v0, p0, Lcom/google/android/material/t/j;->C:Z

    if-nez v0, :cond_1

    .line 970
    invoke-direct {p0, p1}, Lcom/google/android/material/t/j;->e(Landroid/graphics/Canvas;)V

    .line 971
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/t/j;->B:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 978
    iget-object v1, p0, Lcom/google/android/material/t/j;->B:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    if-ltz v0, :cond_2

    if-ltz v1, :cond_2

    .line 987
    iget-object v2, p0, Lcom/google/android/material/t/j;->B:Landroid/graphics/RectF;

    .line 989
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v3, v3, Lcom/google/android/material/t/j$b;->r:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/android/material/t/j;->B:Landroid/graphics/RectF;

    .line 990
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v4, v4, Lcom/google/android/material/t/j$b;->r:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 988
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 992
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 996
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v5, v5, Lcom/google/android/material/t/j$b;->r:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    int-to-float v0, v4

    .line 997
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v5, v5, Lcom/google/android/material/t/j$b;->r:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    int-to-float v1, v4

    neg-float v4, v0

    neg-float v5, v1

    .line 998
    invoke-virtual {v3, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 999
    invoke-direct {p0, v3}, Lcom/google/android/material/t/j;->e(Landroid/graphics/Canvas;)V

    const/4 p0, 0x0

    .line 1000
    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1003
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1006
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 981
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid shadow bounds. Check that the treatments result in a valid path."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/t/o;Landroid/graphics/RectF;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p5    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1030
    invoke-virtual {p4, p5}, Lcom/google/android/material/t/o;->a(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1032
    invoke-virtual {p4}, Lcom/google/android/material/t/o;->g()Lcom/google/android/material/t/d;

    move-result-object p3

    invoke-interface {p3, p5}, Lcom/google/android/material/t/d;->a(Landroid/graphics/RectF;)F

    move-result p3

    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget p0, p0, Lcom/google/android/material/t/j$b;->k:F

    mul-float/2addr p3, p0

    .line 1034
    invoke-virtual {p1, p5, p3, p3, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1036
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/t/j;Z)Z
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/google/android/material/t/j;->l:Z

    return p1
.end method

.method private a([I)Z
    .locals 4

    .line 1289
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->d:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/google/android/material/t/j;->u:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 1291
    iget-object v2, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v2, v2, Lcom/google/android/material/t/j$b;->d:Landroid/content/res/ColorStateList;

    invoke-virtual {v2, p1, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/google/android/material/t/j;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1298
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v2, v2, Lcom/google/android/material/t/j$b;->e:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 1299
    iget-object v2, p0, Lcom/google/android/material/t/j;->v:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 1300
    iget-object v3, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v3, v3, Lcom/google/android/material/t/j$b;->e:Landroid/content/res/ColorStateList;

    .line 1301
    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    if-eq v2, p1, :cond_1

    .line 1303
    iget-object p0, p0, Lcom/google/android/material/t/j;->v:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    move v0, v1

    :cond_1
    return v0
.end method

.method private static b(II)I
    .locals 1

    ushr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    mul-int/2addr p0, p1

    ushr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method private b()V
    .locals 0

    .line 855
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1041
    iget-object v2, p0, Lcom/google/android/material/t/j;->u:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/google/android/material/t/j;->n:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v4, v0, Lcom/google/android/material/t/j$b;->a:Lcom/google/android/material/t/o;

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->Z()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/t/j;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/t/o;Landroid/graphics/RectF;)V

    return-void
.end method

.method private b(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 5
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1194
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/t/j;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 1196
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v0, v0, Lcom/google/android/material/t/j$b;->j:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/google/android/material/t/j;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1198
    iget-object v0, p0, Lcom/google/android/material/t/j;->m:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v1, v1, Lcom/google/android/material/t/j$b;->j:F

    iget-object v2, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v2, v2, Lcom/google/android/material/t/j$b;->j:F

    .line 1199
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr p1, v4

    .line 1198
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 1200
    iget-object p1, p0, Lcom/google/android/material/t/j;->m:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 1204
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/t/j;->B:Landroid/graphics/RectF;

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/t/j;)[Lcom/google/android/material/t/q$h;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/google/android/material/t/j;->i:[Lcom/google/android/material/t/q$h;

    return-object p0
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1045
    iget-object v2, p0, Lcom/google/android/material/t/j;->v:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/google/android/material/t/j;->o:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/google/android/material/t/j;->t:Lcom/google/android/material/t/o;

    .line 1046
    invoke-direct {p0}, Lcom/google/android/material/t/j;->i()Landroid/graphics/RectF;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    .line 1045
    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/t/j;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/t/o;Landroid/graphics/RectF;)V

    return-void
.end method

.method private c()Z
    .locals 3

    .line 908
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v0, v0, Lcom/google/android/material/t/j$b;->q:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v0, v0, Lcom/google/android/material/t/j$b;->r:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v0, v0, Lcom/google/android/material/t/j$b;->q:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 910
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->an()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic c(Lcom/google/android/material/t/j;)[Lcom/google/android/material/t/q$h;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/google/android/material/t/j;->j:[Lcom/google/android/material/t/q$h;

    return-object p0
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1051
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->aq()I

    move-result v0

    .line 1052
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->ar()I

    move-result v1

    .line 1057
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/google/android/material/t/j;->C:Z

    if-eqz v2, :cond_0

    .line 1060
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1061
    iget-object v3, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v3, v3, Lcom/google/android/material/t/j$b;->r:I

    neg-int v3, v3

    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget p0, p0, Lcom/google/android/material/t/j$b;->r:I

    neg-int p0, p0

    invoke-virtual {v2, v3, p0}, Landroid/graphics/Rect;->inset(II)V

    .line 1062
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1063
    sget-object p0, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, p0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_0
    int-to-float p0, v0

    int-to-float v0, v1

    .line 1068
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private d()Z
    .locals 2

    .line 915
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object p0, p0, Lcom/google/android/material/t/j$b;->v:Landroid/graphics/Paint$Style;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    if-ne p0, v0, :cond_0

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

.method private e(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1079
    iget-object v0, p0, Lcom/google/android/material/t/j;->k:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-lez v0, :cond_0

    .line 1080
    sget-object v0, Lcom/google/android/material/t/j;->d:Ljava/lang/String;

    const-string v1, "Compatibility shadow requested but can\'t be drawn for all operations in this shape."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v0, v0, Lcom/google/android/material/t/j$b;->s:I

    if-eqz v0, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/google/android/material/t/j;->n:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/google/android/material/t/j;->w:Lcom/google/android/material/s/b;

    invoke-virtual {v1}, Lcom/google/android/material/s/b;->a()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    .line 1091
    iget-object v1, p0, Lcom/google/android/material/t/j;->i:[Lcom/google/android/material/t/q$h;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/material/t/j;->w:Lcom/google/android/material/s/b;

    iget-object v3, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v3, v3, Lcom/google/android/material/t/j$b;->r:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/material/t/q$h;->a(Lcom/google/android/material/s/b;ILandroid/graphics/Canvas;)V

    .line 1092
    iget-object v1, p0, Lcom/google/android/material/t/j;->j:[Lcom/google/android/material/t/q$h;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/android/material/t/j;->w:Lcom/google/android/material/s/b;

    iget-object v3, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v3, v3, Lcom/google/android/material/t/j$b;->r:I

    invoke-virtual {v1, v2, v3, p1}, Lcom/google/android/material/t/q$h;->a(Lcom/google/android/material/s/b;ILandroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1095
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/material/t/j;->C:Z

    if-eqz v0, :cond_3

    .line 1096
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->aq()I

    move-result v0

    .line 1097
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->ar()I

    move-result v1

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    .line 1099
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1100
    iget-object p0, p0, Lcom/google/android/material/t/j;->n:Landroid/graphics/Path;

    sget-object v2, Lcom/google/android/material/t/j;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, p0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    int-to-float p0, v0

    int-to-float v0, v1

    .line 1101
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    return-void
.end method

.method private e()Z
    .locals 2

    .line 921
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->v:Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/t/j;->v:Landroid/graphics/Paint;

    .line 923
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private f()V
    .locals 4

    .line 1144
    invoke-direct {p0}, Lcom/google/android/material/t/j;->h()F

    move-result v0

    neg-float v0, v0

    .line 1146
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->getShapeAppearanceModel()Lcom/google/android/material/t/o;

    move-result-object v1

    new-instance v2, Lcom/google/android/material/t/j$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/material/t/j$2;-><init>(Lcom/google/android/material/t/j;F)V

    .line 1147
    invoke-virtual {v1, v2}, Lcom/google/android/material/t/o;->a(Lcom/google/android/material/t/o$b;)Lcom/google/android/material/t/o;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/t/j;->t:Lcom/google/android/material/t/o;

    .line 1160
    iget-object v0, p0, Lcom/google/android/material/t/j;->y:Lcom/google/android/material/t/p;

    iget-object v1, p0, Lcom/google/android/material/t/j;->t:Lcom/google/android/material/t/o;

    iget-object v2, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v2, v2, Lcom/google/android/material/t/j$b;->k:F

    .line 1163
    invoke-direct {p0}, Lcom/google/android/material/t/j;->i()Landroid/graphics/RectF;

    move-result-object v3

    iget-object p0, p0, Lcom/google/android/material/t/j;->o:Landroid/graphics/Path;

    .line 1160
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/google/android/material/t/p;->a(Lcom/google/android/material/t/o;FLandroid/graphics/RectF;Landroid/graphics/Path;)V

    return-void
.end method

.method private g()Z
    .locals 7

    .line 1208
    iget-object v0, p0, Lcom/google/android/material/t/j;->z:Landroid/graphics/PorterDuffColorFilter;

    .line 1209
    iget-object v1, p0, Lcom/google/android/material/t/j;->A:Landroid/graphics/PorterDuffColorFilter;

    .line 1210
    iget-object v2, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v2, v2, Lcom/google/android/material/t/j$b;->g:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v3, v3, Lcom/google/android/material/t/j$b;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lcom/google/android/material/t/j;->u:Landroid/graphics/Paint;

    const/4 v5, 0x1

    .line 1211
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/google/android/material/t/j;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/t/j;->z:Landroid/graphics/PorterDuffColorFilter;

    .line 1216
    iget-object v2, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v2, v2, Lcom/google/android/material/t/j$b;->f:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v3, v3, Lcom/google/android/material/t/j$b;->h:Landroid/graphics/PorterDuff$Mode;

    iget-object v4, p0, Lcom/google/android/material/t/j;->v:Landroid/graphics/Paint;

    const/4 v6, 0x0

    .line 1217
    invoke-direct {p0, v2, v3, v4, v6}, Lcom/google/android/material/t/j;->a(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;Landroid/graphics/Paint;Z)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/material/t/j;->A:Landroid/graphics/PorterDuffColorFilter;

    .line 1222
    iget-object v2, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-boolean v2, v2, Lcom/google/android/material/t/j$b;->u:Z

    if-eqz v2, :cond_0

    .line 1223
    iget-object v2, p0, Lcom/google/android/material/t/j;->w:Lcom/google/android/material/s/b;

    iget-object v3, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v3, v3, Lcom/google/android/material/t/j$b;->g:Landroid/content/res/ColorStateList;

    .line 1224
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->getState()[I

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 1223
    invoke-virtual {v2, v3}, Lcom/google/android/material/s/b;->a(I)V

    .line 1226
    :cond_0
    iget-object v2, p0, Lcom/google/android/material/t/j;->z:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {v0, v2}, Landroidx/core/m/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/material/t/j;->A:Landroid/graphics/PorterDuffColorFilter;

    .line 1227
    invoke-static {v1, p0}, Landroidx/core/m/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v6

    :cond_2
    :goto_0
    return v5
.end method

.method private h()F
    .locals 1

    .line 1312
    invoke-direct {p0}, Lcom/google/android/material/t/j;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    iget-object p0, p0, Lcom/google/android/material/t/j;->v:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private i()Landroid/graphics/RectF;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1320
    iget-object v0, p0, Lcom/google/android/material/t/j;->q:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->Z()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1321
    invoke-direct {p0}, Lcom/google/android/material/t/j;->h()F

    move-result v0

    .line 1322
    iget-object v1, p0, Lcom/google/android/material/t/j;->q:Landroid/graphics/RectF;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/RectF;->inset(FF)V

    .line 1323
    iget-object p0, p0, Lcom/google/android/material/t/j;->q:Landroid/graphics/RectF;

    return-object p0
.end method


# virtual methods
.method public I(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 389
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->i(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public J(I)V
    .locals 1

    .line 536
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v0, v0, Lcom/google/android/material/t/j$b;->q:I

    if-eq v0, p1, :cond_0

    .line 537
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iput p1, v0, Lcom/google/android/material/t/j$b;->q:I

    .line 538
    invoke-direct {p0}, Lcom/google/android/material/t/j;->b()V

    :cond_0
    return-void
.end method

.method public K(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    int-to-float p1, p1

    .line 730
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->r(F)V

    return-void
.end method

.method public L(I)V
    .locals 1
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 765
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v0, v0, Lcom/google/android/material/t/j$b;->s:I

    if-eq v0, p1, :cond_0

    .line 766
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iput p1, v0, Lcom/google/android/material/t/j$b;->s:I

    .line 767
    invoke-direct {p0}, Lcom/google/android/material/t/j;->b()V

    :cond_0
    return-void
.end method

.method public M(I)V
    .locals 1

    .line 788
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v0, v0, Lcom/google/android/material/t/j$b;->t:I

    if-eq v0, p1, :cond_0

    .line 789
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iput p1, v0, Lcom/google/android/material/t/j$b;->t:I

    .line 790
    invoke-direct {p0}, Lcom/google/android/material/t/j;->b()V

    :cond_0
    return-void
.end method

.method public N(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 811
    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iput p1, p0, Lcom/google/android/material/t/j$b;->r:I

    return-void
.end method

.method public O(I)V
    .locals 1

    .line 882
    iget-object v0, p0, Lcom/google/android/material/t/j;->w:Lcom/google/android/material/s/b;

    invoke-virtual {v0, p1}, Lcom/google/android/material/s/b;->a(I)V

    .line 883
    iget-object p1, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/material/t/j$b;->u:Z

    .line 884
    invoke-direct {p0}, Lcom/google/android/material/t/j;->b()V

    return-void
.end method

.method public T()Lcom/google/android/material/t/r;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 287
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->getShapeAppearanceModel()Lcom/google/android/material/t/o;

    move-result-object p0

    .line 288
    instance-of v0, p0, Lcom/google/android/material/t/r;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/material/t/r;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public U()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 310
    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object p0, p0, Lcom/google/android/material/t/j$b;->d:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public V()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 332
    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object p0, p0, Lcom/google/android/material/t/j$b;->e:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public W()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 354
    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object p0, p0, Lcom/google/android/material/t/j$b;->g:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public X()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 364
    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object p0, p0, Lcom/google/android/material/t/j$b;->f:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public Y()F
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget p0, p0, Lcom/google/android/material/t/j$b;->l:F

    return p0
.end method

.method protected Z()Landroid/graphics/RectF;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 466
    iget-object v0, p0, Lcom/google/android/material/t/j;->p:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 467
    iget-object p0, p0, Lcom/google/android/material/t/j;->p:Landroid/graphics/RectF;

    return-object p0
.end method

.method public a(FI)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 399
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->n(F)V

    .line 400
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->h(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public a(FLandroid/content/res/ColorStateList;)V
    .locals 0
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 410
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->n(F)V

    .line 411
    invoke-virtual {p0, p2}, Lcom/google/android/material/t/j;->h(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public a(IIII)V
    .locals 2

    .line 517
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->i:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/t/j$b;->i:Landroid/graphics/Rect;

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 522
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->invalidateSelf()V

    return-void
.end method

.method public a(IILandroid/graphics/Path;)V
    .locals 2
    .param p3    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1122
    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v0, p3}, Lcom/google/android/material/t/j;->a(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Landroid/graphics/RectF;)V
    .locals 7
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 1020
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v5, v0, Lcom/google/android/material/t/j$b;->a:Lcom/google/android/material/t/o;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/material/t/j;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Path;Lcom/google/android/material/t/o;Landroid/graphics/RectF;)V

    return-void
.end method

.method public a(Landroid/graphics/Paint$Style;)V
    .locals 1

    .line 902
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iput-object p1, v0, Lcom/google/android/material/t/j$b;->v:Landroid/graphics/Paint$Style;

    .line 903
    invoke-direct {p0}, Lcom/google/android/material/t/j;->b()V

    return-void
.end method

.method protected final a(Landroid/graphics/RectF;Landroid/graphics/Path;)V
    .locals 6
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Path;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 1132
    iget-object v0, p0, Lcom/google/android/material/t/j;->y:Lcom/google/android/material/t/p;

    iget-object v1, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v1, v1, Lcom/google/android/material/t/j$b;->a:Lcom/google/android/material/t/o;

    iget-object v2, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v2, v2, Lcom/google/android/material/t/j$b;->k:F

    iget-object v4, p0, Lcom/google/android/material/t/j;->x:Lcom/google/android/material/t/p$a;

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/material/t/p;->a(Lcom/google/android/material/t/o;FLandroid/graphics/RectF;Lcom/google/android/material/t/p$a;Landroid/graphics/Path;)V

    return-void
.end method

.method public a(Lcom/google/android/material/t/d;)V
    .locals 1
    .param p1    # Lcom/google/android/material/t/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 477
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->a:Lcom/google/android/material/t/o;

    invoke-virtual {v0, p1}, Lcom/google/android/material/t/o;->a(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    return-void
.end method

.method public a(Lcom/google/android/material/t/r;)V
    .locals 0
    .param p1    # Lcom/google/android/material/t/r;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 275
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    return-void
.end method

.method public a(II)Z
    .locals 0

    .line 490
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    return p0
.end method

.method public aa()I
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget p0, p0, Lcom/google/android/material/t/j$b;->q:I

    return p0
.end method

.method public ab()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v0, v0, Lcom/google/android/material/t/j$b;->q:I

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget p0, p0, Lcom/google/android/material/t/j$b;->q:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

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

.method public ac()Z
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->b:Lcom/google/android/material/k/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object p0, p0, Lcom/google/android/material/t/j$b;->b:Lcom/google/android/material/k/a;

    .line 577
    invoke-virtual {p0}, Lcom/google/android/material/k/a;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ad()Z
    .locals 0

    .line 582
    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object p0, p0, Lcom/google/android/material/t/j$b;->b:Lcom/google/android/material/k/a;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ae()F
    .locals 0

    .line 612
    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget p0, p0, Lcom/google/android/material/t/j$b;->k:F

    return p0
.end method

.method public af()F
    .locals 0

    .line 632
    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget p0, p0, Lcom/google/android/material/t/j$b;->n:F

    return p0
.end method

.method public ag()F
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget p0, p0, Lcom/google/android/material/t/j$b;->o:F

    return p0
.end method

.method public ah()F
    .locals 0

    .line 670
    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget p0, p0, Lcom/google/android/material/t/j$b;->p:F

    return p0
.end method

.method public ai()F
    .locals 1

    .line 691
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->ag()F

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->ah()F

    move-result p0

    add-float/2addr v0, p0

    return v0
.end method

.method public aj()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 719
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->ag()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public ak()I
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 741
    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget p0, p0, Lcom/google/android/material/t/j$b;->s:I

    return p0
.end method

.method public al()I
    .locals 0

    .line 776
    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget p0, p0, Lcom/google/android/material/t/j$b;->t:I

    return p0
.end method

.method public am()I
    .locals 0

    .line 800
    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget p0, p0, Lcom/google/android/material/t/j$b;->r:I

    return p0
.end method

.method public an()Z
    .locals 2

    .line 819
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 820
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->aw()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/t/j;->n:Landroid/graphics/Path;

    invoke-virtual {p0}, Landroid/graphics/Path;->isConvex()Z

    move-result p0

    if-nez p0, :cond_0

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-ge p0, v0, :cond_0

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

.method public ao()F
    .locals 0

    .line 829
    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget p0, p0, Lcom/google/android/material/t/j$b;->j:F

    return p0
.end method

.method public ap()Landroid/graphics/Paint$Style;
    .locals 0

    .line 893
    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object p0, p0, Lcom/google/android/material/t/j$b;->v:Landroid/graphics/Paint$Style;

    return-object p0
.end method

.method public aq()I
    .locals 4

    .line 1107
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v0, v0, Lcom/google/android/material/t/j$b;->s:I

    int-to-double v0, v0

    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget p0, p0, Lcom/google/android/material/t/j$b;->t:I

    int-to-double v2, p0

    .line 1109
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public ar()I
    .locals 4

    .line 1114
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v0, v0, Lcom/google/android/material/t/j$b;->s:I

    int-to-double v0, v0

    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget p0, p0, Lcom/google/android/material/t/j$b;->t:I

    int-to-double v2, p0

    .line 1116
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-int p0, v0

    return p0
.end method

.method public as()F
    .locals 1

    .line 1328
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->a:Lcom/google/android/material/t/o;

    .line 1330
    invoke-virtual {v0}, Lcom/google/android/material/t/o;->f()Lcom/google/android/material/t/d;

    move-result-object v0

    .line 1331
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->Z()Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/material/t/d;->a(Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public at()F
    .locals 1

    .line 1336
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->a:Lcom/google/android/material/t/o;

    .line 1338
    invoke-virtual {v0}, Lcom/google/android/material/t/o;->g()Lcom/google/android/material/t/d;

    move-result-object v0

    .line 1339
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->Z()Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/material/t/d;->a(Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public au()F
    .locals 1

    .line 1344
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->a:Lcom/google/android/material/t/o;

    .line 1346
    invoke-virtual {v0}, Lcom/google/android/material/t/o;->i()Lcom/google/android/material/t/d;

    move-result-object v0

    .line 1347
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->Z()Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/material/t/d;->a(Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public av()F
    .locals 1

    .line 1352
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->a:Lcom/google/android/material/t/o;

    .line 1354
    invoke-virtual {v0}, Lcom/google/android/material/t/o;->h()Lcom/google/android/material/t/d;

    move-result-object v0

    .line 1355
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->Z()Landroid/graphics/RectF;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/material/t/d;->a(Landroid/graphics/RectF;)F

    move-result p0

    return p0
.end method

.method public aw()Z
    .locals 1
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 1366
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->a:Lcom/google/android/material/t/o;

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->Z()Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/t/o;->a(Landroid/graphics/RectF;)Z

    move-result p0

    return p0
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    .line 592
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    new-instance v1, Lcom/google/android/material/k/a;

    invoke-direct {v1, p1}, Lcom/google/android/material/k/a;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/google/android/material/t/j$b;->b:Lcom/google/android/material/k/a;

    .line 593
    invoke-direct {p0}, Lcom/google/android/material/t/j;->a()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 934
    iget-object v0, p0, Lcom/google/android/material/t/j;->u:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/google/android/material/t/j;->z:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 935
    iget-object v0, p0, Lcom/google/android/material/t/j;->u:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    .line 936
    iget-object v1, p0, Lcom/google/android/material/t/j;->u:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v2, v2, Lcom/google/android/material/t/j$b;->m:I

    invoke-static {v0, v2}, Lcom/google/android/material/t/j;->b(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 938
    iget-object v1, p0, Lcom/google/android/material/t/j;->v:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/t/j;->A:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 939
    iget-object v1, p0, Lcom/google/android/material/t/j;->v:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v2, v2, Lcom/google/android/material/t/j$b;->l:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 941
    iget-object v1, p0, Lcom/google/android/material/t/j;->v:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    move-result v1

    .line 942
    iget-object v2, p0, Lcom/google/android/material/t/j;->v:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v3, v3, Lcom/google/android/material/t/j$b;->m:I

    invoke-static {v1, v3}, Lcom/google/android/material/t/j;->b(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 944
    iget-boolean v2, p0, Lcom/google/android/material/t/j;->l:Z

    if-eqz v2, :cond_0

    .line 945
    invoke-direct {p0}, Lcom/google/android/material/t/j;->f()V

    .line 946
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->Z()Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/material/t/j;->n:Landroid/graphics/Path;

    invoke-direct {p0, v2, v3}, Lcom/google/android/material/t/j;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    const/4 v2, 0x0

    .line 947
    iput-boolean v2, p0, Lcom/google/android/material/t/j;->l:Z

    .line 950
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/t/j;->a(Landroid/graphics/Canvas;)V

    .line 951
    invoke-direct {p0}, Lcom/google/android/material/t/j;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 952
    invoke-direct {p0, p1}, Lcom/google/android/material/t/j;->b(Landroid/graphics/Canvas;)V

    .line 954
    :cond_1
    invoke-direct {p0}, Lcom/google/android/material/t/j;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 955
    invoke-direct {p0, p1}, Lcom/google/android/material/t/j;->c(Landroid/graphics/Canvas;)V

    .line 958
    :cond_2
    iget-object p1, p0, Lcom/google/android/material/t/j;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 959
    iget-object p0, p0, Lcom/google/android/material/t/j;->v:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public g(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 297
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->d:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 298
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iput-object p1, v0, Lcom/google/android/material/t/j$b;->d:Landroid/content/res/ColorStateList;

    .line 299
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 227
    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    return-object p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 2
    .param p1    # Landroid/graphics/Outline;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1170
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v0, v0, Lcom/google/android/material/t/j$b;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 1175
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->aw()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1176
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->as()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v1, v1, Lcom/google/android/material/t/j$b;->k:F

    mul-float/2addr v0, v1

    .line 1177
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void

    .line 1181
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->Z()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/t/j;->n:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/t/j;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 1182
    iget-object v0, p0, Lcom/google/android/material/t/j;->n:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 1184
    :cond_2
    :try_start_0
    iget-object p0, p0, Lcom/google/android/material/t/j;->n:Landroid/graphics/Path;

    invoke-virtual {p1, p0}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 500
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->i:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 501
    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object p0, p0, Lcom/google/android/material/t/j$b;->i:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 p0, 0x1

    return p0

    .line 504
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/t/o;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 264
    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object p0, p0, Lcom/google/android/material/t/j$b;->a:Lcom/google/android/material/t/o;

    return-object p0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 3

    .line 456
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/google/android/material/t/j;->r:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 458
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->Z()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/t/j;->n:Landroid/graphics/Path;

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/t/j;->b(Landroid/graphics/RectF;Landroid/graphics/Path;)V

    .line 459
    iget-object v0, p0, Lcom/google/android/material/t/j;->s:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/google/android/material/t/j;->n:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/google/android/material/t/j;->r:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z

    .line 460
    iget-object v0, p0, Lcom/google/android/material/t/j;->r:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/google/android/material/t/j;->s:Landroid/graphics/Region;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 461
    iget-object p0, p0, Lcom/google/android/material/t/j;->r:Landroid/graphics/Region;

    return-object p0
.end method

.method public h(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 319
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->e:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iput-object p1, v0, Lcom/google/android/material/t/j$b;->e:Landroid/content/res/ColorStateList;

    .line 321
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->onStateChange([I)Z

    :cond_0
    return-void
.end method

.method public i(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iput-object p1, v0, Lcom/google/android/material/t/j$b;->f:Landroid/content/res/ColorStateList;

    .line 379
    invoke-direct {p0}, Lcom/google/android/material/t/j;->g()Z

    .line 380
    invoke-direct {p0}, Lcom/google/android/material/t/j;->b()V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    const/4 v0, 0x1

    .line 846
    iput-boolean v0, p0, Lcom/google/android/material/t/j;->l:Z

    .line 847
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isStateful()Z
    .locals 1

    .line 1268
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->g:Landroid/content/res/ColorStateList;

    .line 1269
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->f:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->f:Landroid/content/res/ColorStateList;

    .line 1270
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->e:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->e:Landroid/content/res/ColorStateList;

    .line 1271
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->d:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object p0, p0, Lcom/google/android/material/t/j$b;->d:Landroid/content/res/ColorStateList;

    .line 1272
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public j(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    .line 567
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->J(I)V

    return-void
.end method

.method public k(Z)V
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 746
    iput-boolean p1, p0, Lcom/google/android/material/t/j;->C:Z

    return-void
.end method

.method public l(Z)V
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 751
    iget-object p0, p0, Lcom/google/android/material/t/j;->y:Lcom/google/android/material/t/p;

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/p;->a(Z)V

    return-void
.end method

.method public m(Z)V
    .locals 1

    .line 866
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-boolean v0, v0, Lcom/google/android/material/t/j$b;->u:Z

    if-eq v0, p1, :cond_0

    .line 867
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iput-boolean p1, v0, Lcom/google/android/material/t/j$b;->u:Z

    .line 868
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 233
    new-instance v0, Lcom/google/android/material/t/j$b;

    iget-object v1, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    invoke-direct {v0, v1}, Lcom/google/android/material/t/j$b;-><init>(Lcom/google/android/material/t/j$b;)V

    .line 234
    iput-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    return-object p0
.end method

.method public n(F)V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iput p1, v0, Lcom/google/android/material/t/j$b;->l:F

    .line 430
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->invalidateSelf()V

    return-void
.end method

.method public o(F)V
    .locals 1

    .line 472
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->a:Lcom/google/android/material/t/o;

    invoke-virtual {v0, p1}, Lcom/google/android/material/t/o;->a(F)Lcom/google/android/material/t/o;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    .line 928
    iput-boolean v0, p0, Lcom/google/android/material/t/j;->l:Z

    .line 929
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    .line 1277
    invoke-direct {p0, p1}, Lcom/google/android/material/t/j;->a([I)Z

    move-result p1

    .line 1278
    invoke-direct {p0}, Lcom/google/android/material/t/j;->g()Z

    move-result v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 1281
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->invalidateSelf()V

    :cond_2
    return p1
.end method

.method public p(F)V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v0, v0, Lcom/google/android/material/t/j$b;->k:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iput p1, v0, Lcom/google/android/material/t/j$b;->k:F

    const/4 p1, 0x1

    .line 625
    iput-boolean p1, p0, Lcom/google/android/material/t/j;->l:Z

    .line 626
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public q(F)V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v0, v0, Lcom/google/android/material/t/j$b;->n:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iput p1, v0, Lcom/google/android/material/t/j$b;->n:F

    .line 639
    invoke-direct {p0}, Lcom/google/android/material/t/j;->a()V

    :cond_0
    return-void
.end method

.method public r(F)V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v0, v0, Lcom/google/android/material/t/j$b;->o:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iput p1, v0, Lcom/google/android/material/t/j$b;->o:F

    .line 660
    invoke-direct {p0}, Lcom/google/android/material/t/j;->a()V

    :cond_0
    return-void
.end method

.method public s(F)V
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v0, v0, Lcom/google/android/material/t/j$b;->p:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iput p1, v0, Lcom/google/android/material/t/j$b;->p:F

    .line 681
    invoke-direct {p0}, Lcom/google/android/material/t/j;->a()V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/z;
            a = 0x0L
            b = 0xffL
        .end annotation
    .end param

    .line 442
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v0, v0, Lcom/google/android/material/t/j$b;->m:I

    if-eq v0, p1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iput p1, v0, Lcom/google/android/material/t/j$b;->m:I

    .line 444
    invoke-direct {p0}, Lcom/google/android/material/t/j;->b()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 450
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iput-object p1, v0, Lcom/google/android/material/t/j$b;->c:Landroid/graphics/ColorFilter;

    .line 451
    invoke-direct {p0}, Lcom/google/android/material/t/j;->b()V

    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/t/o;)V
    .locals 1
    .param p1    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 251
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iput-object p1, v0, Lcom/google/android/material/t/j$b;->a:Lcom/google/android/material/t/o;

    .line 252
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->invalidateSelf()V

    return-void
.end method

.method public setTint(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 369
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 346
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iput-object p1, v0, Lcom/google/android/material/t/j$b;->g:Landroid/content/res/ColorStateList;

    .line 347
    invoke-direct {p0}, Lcom/google/android/material/t/j;->g()Z

    .line 348
    invoke-direct {p0}, Lcom/google/android/material/t/j;->b()V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 337
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget-object v0, v0, Lcom/google/android/material/t/j$b;->h:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 338
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iput-object p1, v0, Lcom/google/android/material/t/j$b;->h:Landroid/graphics/PorterDuff$Mode;

    .line 339
    invoke-direct {p0}, Lcom/google/android/material/t/j;->g()Z

    .line 340
    invoke-direct {p0}, Lcom/google/android/material/t/j;->b()V

    :cond_0
    return-void
.end method

.method public t(F)V
    .locals 1

    .line 700
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->ag()F

    move-result v0

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->s(F)V

    return-void
.end method

.method public u(F)V
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iget v0, v0, Lcom/google/android/material/t/j$b;->j:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/google/android/material/t/j;->h:Lcom/google/android/material/t/j$b;

    iput p1, v0, Lcom/google/android/material/t/j$b;->j:F

    .line 840
    invoke-virtual {p0}, Lcom/google/android/material/t/j;->invalidateSelf()V

    :cond_0
    return-void
.end method
