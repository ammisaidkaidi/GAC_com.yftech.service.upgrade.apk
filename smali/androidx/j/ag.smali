.class public abstract Landroidx/j/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/j/ag$c;,
        Landroidx/j/ag$b;,
        Landroidx/j/ag$a;,
        Landroidx/j/ag$e;,
        Landroidx/j/ag$d;
    }
.end annotation


# static fields
.field private static M:Ljava/lang/ThreadLocal; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroidx/c/a<",
            "Landroid/animation/Animator;",
            "Landroidx/j/ag$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final a:Ljava/lang/String; = "Transition"

.field private static final b:I = 0x1

.field static final c:Z = false

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field public static final g:I = 0x4

.field private static final o:I = 0x4

.field private static final p:Ljava/lang/String; = "instance"

.field private static final q:Ljava/lang/String; = "name"

.field private static final r:Ljava/lang/String; = "id"

.field private static final s:Ljava/lang/String; = "itemId"

.field private static final t:[I

.field private static final u:Landroidx/j/w;


# instance fields
.field private A:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private H:Landroidx/j/ao;

.field private I:Landroidx/j/ao;

.field private J:[I

.field private K:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/j/an;",
            ">;"
        }
    .end annotation
.end field

.field private L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/j/an;",
            ">;"
        }
    .end annotation
.end field

.field private N:Landroid/view/ViewGroup;

.field private O:I

.field private P:Z

.field private Q:Z

.field private R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/j/ag$e;",
            ">;"
        }
    .end annotation
.end field

.field private S:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private T:Landroidx/j/ag$c;

.field private U:Landroidx/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/a<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private V:Landroidx/j/w;

.field h:J

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field k:Landroidx/j/al;

.field l:Z

.field m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field n:Landroidx/j/ak;

.field private v:Ljava/lang/String;

.field private w:J

.field private x:Landroid/animation/TimeInterpolator;

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    .line 164
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/j/ag;->t:[I

    .line 171
    new-instance v0, Landroidx/j/ag$1;

    invoke-direct {v0}, Landroidx/j/ag$1;-><init>()V

    sput-object v0, Landroidx/j/ag;->u:Landroidx/j/w;

    .line 205
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroidx/j/ag;->M:Ljava/lang/ThreadLocal;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/j/ag;->v:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 183
    iput-wide v0, p0, Landroidx/j/ag;->w:J

    .line 184
    iput-wide v0, p0, Landroidx/j/ag;->h:J

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Landroidx/j/ag;->x:Landroid/animation/TimeInterpolator;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/j/ag;->i:Ljava/util/ArrayList;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/j/ag;->j:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroidx/j/ag;->y:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroidx/j/ag;->z:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroidx/j/ag;->A:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroidx/j/ag;->B:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroidx/j/ag;->C:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroidx/j/ag;->D:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroidx/j/ag;->E:Ljava/util/ArrayList;

    .line 195
    iput-object v0, p0, Landroidx/j/ag;->F:Ljava/util/ArrayList;

    .line 196
    iput-object v0, p0, Landroidx/j/ag;->G:Ljava/util/ArrayList;

    .line 197
    new-instance v1, Landroidx/j/ao;

    invoke-direct {v1}, Landroidx/j/ao;-><init>()V

    iput-object v1, p0, Landroidx/j/ag;->H:Landroidx/j/ao;

    .line 198
    new-instance v1, Landroidx/j/ao;

    invoke-direct {v1}, Landroidx/j/ao;-><init>()V

    iput-object v1, p0, Landroidx/j/ag;->I:Landroidx/j/ao;

    .line 199
    iput-object v0, p0, Landroidx/j/ag;->k:Landroidx/j/al;

    .line 200
    sget-object v1, Landroidx/j/ag;->t:[I

    iput-object v1, p0, Landroidx/j/ag;->J:[I

    .line 209
    iput-object v0, p0, Landroidx/j/ag;->N:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 217
    iput-boolean v1, p0, Landroidx/j/ag;->l:Z

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/j/ag;->m:Ljava/util/ArrayList;

    .line 226
    iput v1, p0, Landroidx/j/ag;->O:I

    .line 229
    iput-boolean v1, p0, Landroidx/j/ag;->P:Z

    .line 233
    iput-boolean v1, p0, Landroidx/j/ag;->Q:Z

    .line 236
    iput-object v0, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/j/ag;->S:Ljava/util/ArrayList;

    .line 255
    sget-object v0, Landroidx/j/ag;->u:Landroidx/j/w;

    iput-object v0, p0, Landroidx/j/ag;->V:Landroidx/j/w;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/j/ag;->v:Ljava/lang/String;

    const-wide/16 v0, -0x1

    .line 183
    iput-wide v0, p0, Landroidx/j/ag;->w:J

    .line 184
    iput-wide v0, p0, Landroidx/j/ag;->h:J

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Landroidx/j/ag;->x:Landroid/animation/TimeInterpolator;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/j/ag;->i:Ljava/util/ArrayList;

    .line 187
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/j/ag;->j:Ljava/util/ArrayList;

    .line 188
    iput-object v0, p0, Landroidx/j/ag;->y:Ljava/util/ArrayList;

    .line 189
    iput-object v0, p0, Landroidx/j/ag;->z:Ljava/util/ArrayList;

    .line 190
    iput-object v0, p0, Landroidx/j/ag;->A:Ljava/util/ArrayList;

    .line 191
    iput-object v0, p0, Landroidx/j/ag;->B:Ljava/util/ArrayList;

    .line 192
    iput-object v0, p0, Landroidx/j/ag;->C:Ljava/util/ArrayList;

    .line 193
    iput-object v0, p0, Landroidx/j/ag;->D:Ljava/util/ArrayList;

    .line 194
    iput-object v0, p0, Landroidx/j/ag;->E:Ljava/util/ArrayList;

    .line 195
    iput-object v0, p0, Landroidx/j/ag;->F:Ljava/util/ArrayList;

    .line 196
    iput-object v0, p0, Landroidx/j/ag;->G:Ljava/util/ArrayList;

    .line 197
    new-instance v1, Landroidx/j/ao;

    invoke-direct {v1}, Landroidx/j/ao;-><init>()V

    iput-object v1, p0, Landroidx/j/ag;->H:Landroidx/j/ao;

    .line 198
    new-instance v1, Landroidx/j/ao;

    invoke-direct {v1}, Landroidx/j/ao;-><init>()V

    iput-object v1, p0, Landroidx/j/ag;->I:Landroidx/j/ao;

    .line 199
    iput-object v0, p0, Landroidx/j/ag;->k:Landroidx/j/al;

    .line 200
    sget-object v1, Landroidx/j/ag;->t:[I

    iput-object v1, p0, Landroidx/j/ag;->J:[I

    .line 209
    iput-object v0, p0, Landroidx/j/ag;->N:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 217
    iput-boolean v1, p0, Landroidx/j/ag;->l:Z

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/j/ag;->m:Ljava/util/ArrayList;

    .line 226
    iput v1, p0, Landroidx/j/ag;->O:I

    .line 229
    iput-boolean v1, p0, Landroidx/j/ag;->P:Z

    .line 233
    iput-boolean v1, p0, Landroidx/j/ag;->Q:Z

    .line 236
    iput-object v0, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/j/ag;->S:Ljava/util/ArrayList;

    .line 255
    sget-object v0, Landroidx/j/ag;->u:Landroidx/j/w;

    iput-object v0, p0, Landroidx/j/ag;->V:Landroidx/j/w;

    .line 278
    sget-object v0, Landroidx/j/af;->c:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 279
    check-cast p2, Landroid/content/res/XmlResourceParser;

    const-string v2, "duration"

    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 280
    invoke-static {v0, p2, v2, v4, v3}, Landroidx/core/b/b/h;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    int-to-long v4, v2

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_0

    .line 283
    invoke-virtual {p0, v4, v5}, Landroidx/j/ag;->a(J)Landroidx/j/ag;

    :cond_0
    const-string v2, "startDelay"

    const/4 v4, 0x2

    .line 285
    invoke-static {v0, p2, v2, v4, v3}, Landroidx/core/b/b/h;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v2

    int-to-long v2, v2

    cmp-long v4, v2, v6

    if-lez v4, :cond_1

    .line 288
    invoke-virtual {p0, v2, v3}, Landroidx/j/ag;->b(J)Landroidx/j/ag;

    :cond_1
    const-string v2, "interpolator"

    .line 290
    invoke-static {v0, p2, v2, v1, v1}, Landroidx/core/b/b/h;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    if-lez v1, :cond_2

    .line 293
    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/j/ag;->a(Landroid/animation/TimeInterpolator;)Landroidx/j/ag;

    :cond_2
    const-string p1, "matchOrder"

    const/4 v1, 0x3

    .line 295
    invoke-static {v0, p2, p1, v1}, Landroidx/core/b/b/h;->a(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 298
    invoke-static {p1}, Landroidx/j/ag;->d(Ljava/lang/String;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/j/ag;->a([I)V

    .line 300
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    if-lez p2, :cond_1

    if-eqz p3, :cond_0

    .line 1312
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/j/ag$b;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1314
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/j/ag$b;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private a(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 1327
    invoke-static {p1, p2}, Landroidx/j/ag$b;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1329
    :cond_0
    invoke-static {p1, p2}, Landroidx/j/ag$b;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private a(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 1396
    invoke-static {p1, p2}, Landroidx/j/ag$b;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_0

    .line 1398
    :cond_0
    invoke-static {p1, p2}, Landroidx/j/ag$b;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method private static a(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;TT;Z)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 1163
    invoke-static {p0, p1}, Landroidx/j/ag$b;->a(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_0

    .line 1165
    :cond_0
    invoke-static {p0, p1}, Landroidx/j/ag$b;->b(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private a(Landroid/animation/Animator;Landroidx/c/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroidx/c/a<",
            "Landroid/animation/Animator;",
            "Landroidx/j/ag$a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 898
    new-instance v0, Landroidx/j/ag$2;

    invoke-direct {v0, p0, p2}, Landroidx/j/ag$2;-><init>(Landroidx/j/ag;Landroidx/c/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 910
    invoke-virtual {p0, p1}, Landroidx/j/ag;->a(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method private a(Landroidx/c/a;Landroidx/c/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/c/a<",
            "Landroid/view/View;",
            "Landroidx/j/an;",
            ">;",
            "Landroidx/c/a<",
            "Landroid/view/View;",
            "Landroidx/j/an;",
            ">;)V"
        }
    .end annotation

    .line 546
    invoke-virtual {p1}, Landroidx/c/a;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 547
    invoke-virtual {p1, v0}, Landroidx/c/a;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 548
    invoke-virtual {p0, v1}, Landroidx/j/ag;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    invoke-virtual {p2, v1}, Landroidx/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/j/an;

    if-eqz v1, :cond_0

    .line 550
    iget-object v2, v1, Landroidx/j/an;->b:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroidx/j/ag;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    invoke-virtual {p1, v0}, Landroidx/c/a;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/an;

    .line 552
    iget-object v3, p0, Landroidx/j/ag;->K:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v2, p0, Landroidx/j/ag;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroidx/c/a;Landroidx/c/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/c/a<",
            "Landroid/view/View;",
            "Landroidx/j/an;",
            ">;",
            "Landroidx/c/a<",
            "Landroid/view/View;",
            "Landroidx/j/an;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 594
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 596
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 597
    invoke-virtual {p0, v2}, Landroidx/j/ag;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 598
    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 599
    invoke-virtual {p0, v3}, Landroidx/j/ag;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 600
    invoke-virtual {p1, v2}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/j/an;

    .line 601
    invoke-virtual {p2, v3}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/j/an;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 603
    iget-object v6, p0, Landroidx/j/ag;->K:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v4, p0, Landroidx/j/ag;->L:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-virtual {p1, v2}, Landroidx/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    invoke-virtual {p2, v3}, Landroidx/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroidx/c/a;Landroidx/c/a;Landroidx/c/a;Landroidx/c/a;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/c/a<",
            "Landroid/view/View;",
            "Landroidx/j/an;",
            ">;",
            "Landroidx/c/a<",
            "Landroid/view/View;",
            "Landroidx/j/an;",
            ">;",
            "Landroidx/c/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroidx/c/a<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 621
    invoke-virtual {p3}, Landroidx/c/a;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 623
    invoke-virtual {p3, v1}, Landroidx/c/a;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 624
    invoke-virtual {p0, v2}, Landroidx/j/ag;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 625
    invoke-virtual {p3, v1}, Landroidx/c/a;->b(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 626
    invoke-virtual {p0, v3}, Landroidx/j/ag;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 627
    invoke-virtual {p1, v2}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/j/an;

    .line 628
    invoke-virtual {p2, v3}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/j/an;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 630
    iget-object v6, p0, Landroidx/j/ag;->K:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 631
    iget-object v4, p0, Landroidx/j/ag;->L:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    invoke-virtual {p1, v2}, Landroidx/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    invoke-virtual {p2, v3}, Landroidx/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroidx/c/a;Landroidx/c/a;Landroidx/c/f;Landroidx/c/f;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/c/a<",
            "Landroid/view/View;",
            "Landroidx/j/an;",
            ">;",
            "Landroidx/c/a<",
            "Landroid/view/View;",
            "Landroidx/j/an;",
            ">;",
            "Landroidx/c/f<",
            "Landroid/view/View;",
            ">;",
            "Landroidx/c/f<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 567
    invoke-virtual {p3}, Landroidx/c/f;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 569
    invoke-virtual {p3, v1}, Landroidx/c/f;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_0

    .line 570
    invoke-virtual {p0, v2}, Landroidx/j/ag;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 571
    invoke-virtual {p3, v1}, Landroidx/c/f;->b(I)J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, Landroidx/c/f;->a(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 572
    invoke-virtual {p0, v3}, Landroidx/j/ag;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 573
    invoke-virtual {p1, v2}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/j/an;

    .line 574
    invoke-virtual {p2, v3}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/j/an;

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    .line 576
    iget-object v6, p0, Landroidx/j/ag;->K:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    iget-object v4, p0, Landroidx/j/ag;->L:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-virtual {p1, v2}, Landroidx/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-virtual {p2, v3}, Landroidx/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Landroidx/j/ao;Landroid/view/View;Landroidx/j/an;)V
    .locals 3

    .line 1532
    iget-object v0, p0, Landroidx/j/ao;->a:Landroidx/c/a;

    invoke-virtual {v0, p1, p2}, Landroidx/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    const/4 v0, 0x0

    if-ltz p2, :cond_1

    .line 1535
    iget-object v1, p0, Landroidx/j/ao;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1537
    iget-object v1, p0, Landroidx/j/ao;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1539
    :cond_0
    iget-object v1, p0, Landroidx/j/ao;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1542
    :cond_1
    :goto_0
    invoke-static {p1}, Landroidx/core/n/af;->R(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1544
    iget-object v1, p0, Landroidx/j/ao;->d:Landroidx/c/a;

    invoke-virtual {v1, p2}, Landroidx/c/a;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1546
    iget-object v1, p0, Landroidx/j/ao;->d:Landroidx/c/a;

    invoke-virtual {v1, p2, v0}, Landroidx/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1548
    :cond_2
    iget-object v1, p0, Landroidx/j/ao;->d:Landroidx/c/a;

    invoke-virtual {v1, p2, p1}, Landroidx/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    instance-of p2, p2, Landroid/widget/ListView;

    if-eqz p2, :cond_5

    .line 1552
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 1553
    invoke-virtual {p2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1554
    invoke-virtual {p2, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 1555
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 1556
    iget-object p2, p0, Landroidx/j/ao;->c:Landroidx/c/f;

    invoke-virtual {p2, v1, v2}, Landroidx/c/f;->d(J)I

    move-result p2

    if-ltz p2, :cond_4

    .line 1558
    iget-object p1, p0, Landroidx/j/ao;->c:Landroidx/c/f;

    invoke-virtual {p1, v1, v2}, Landroidx/c/f;->a(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    .line 1560
    invoke-static {p1, p2}, Landroidx/core/n/af;->a(Landroid/view/View;Z)V

    .line 1561
    iget-object p0, p0, Landroidx/j/ao;->c:Landroidx/c/f;

    invoke-virtual {p0, v1, v2, v0}, Landroidx/c/f;->d(JLjava/lang/Object;)V

    goto :goto_2

    :cond_4
    const/4 p2, 0x1

    .line 1564
    invoke-static {p1, p2}, Landroidx/core/n/af;->a(Landroid/view/View;Z)V

    .line 1565
    iget-object p0, p0, Landroidx/j/ao;->c:Landroidx/c/f;

    invoke-virtual {p0, v1, v2, p1}, Landroidx/c/f;->d(JLjava/lang/Object;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private a(Landroidx/j/ao;Landroidx/j/ao;)V
    .locals 5

    .line 667
    new-instance v0, Landroidx/c/a;

    iget-object v1, p1, Landroidx/j/ao;->a:Landroidx/c/a;

    invoke-direct {v0, v1}, Landroidx/c/a;-><init>(Landroidx/c/i;)V

    .line 668
    new-instance v1, Landroidx/c/a;

    iget-object v2, p2, Landroidx/j/ao;->a:Landroidx/c/a;

    invoke-direct {v1, v2}, Landroidx/c/a;-><init>(Landroidx/c/i;)V

    const/4 v2, 0x0

    .line 670
    :goto_0
    iget-object v3, p0, Landroidx/j/ag;->J:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 671
    iget-object v3, p0, Landroidx/j/ag;->J:[I

    aget v3, v3, v2

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 684
    :pswitch_0
    iget-object v3, p1, Landroidx/j/ao;->c:Landroidx/c/f;

    iget-object v4, p2, Landroidx/j/ao;->c:Landroidx/c/f;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/j/ag;->a(Landroidx/c/a;Landroidx/c/a;Landroidx/c/f;Landroidx/c/f;)V

    goto :goto_1

    .line 680
    :pswitch_1
    iget-object v3, p1, Landroidx/j/ao;->b:Landroid/util/SparseArray;

    iget-object v4, p2, Landroidx/j/ao;->b:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/j/ag;->a(Landroidx/c/a;Landroidx/c/a;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_1

    .line 676
    :pswitch_2
    iget-object v3, p1, Landroidx/j/ao;->d:Landroidx/c/a;

    iget-object v4, p2, Landroidx/j/ao;->d:Landroidx/c/a;

    invoke-direct {p0, v0, v1, v3, v4}, Landroidx/j/ag;->a(Landroidx/c/a;Landroidx/c/a;Landroidx/c/a;Landroidx/c/a;)V

    goto :goto_1

    .line 673
    :pswitch_3
    invoke-direct {p0, v0, v1}, Landroidx/j/ag;->a(Landroidx/c/a;Landroidx/c/a;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 689
    :cond_0
    invoke-direct {p0, v0, v1}, Landroidx/j/ag;->b(Landroidx/c/a;Landroidx/c/a;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x4

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static a(Landroidx/j/an;Landroidx/j/an;Ljava/lang/String;)Z
    .locals 0

    .line 1866
    iget-object p0, p0, Landroidx/j/an;->a:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 1867
    iget-object p1, p1, Landroidx/j/an;->a:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 p2, 0x1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 1877
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p2, p0

    :cond_2
    :goto_0
    return p2
.end method

.method private static a([II)Z
    .locals 4

    .line 531
    aget v0, p0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    .line 533
    aget v3, p0, v2

    if-ne v3, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static b()Landroidx/c/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/c/a<",
            "Landroid/animation/Animator;",
            "Landroidx/j/ag$a;",
            ">;"
        }
    .end annotation

    .line 859
    sget-object v0, Landroidx/j/ag;->M:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/c/a;

    if-nez v0, :cond_0

    .line 861
    new-instance v0, Landroidx/c/a;

    invoke-direct {v0}, Landroidx/c/a;-><init>()V

    .line 862
    sget-object v1, Landroidx/j/ag;->M:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private b(Landroidx/c/a;Landroidx/c/a;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/c/a<",
            "Landroid/view/View;",
            "Landroidx/j/an;",
            ">;",
            "Landroidx/c/a<",
            "Landroid/view/View;",
            "Landroidx/j/an;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 647
    :goto_0
    invoke-virtual {p1}, Landroidx/c/a;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 648
    invoke-virtual {p1, v1}, Landroidx/c/a;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/an;

    .line 649
    iget-object v4, v2, Landroidx/j/an;->b:Landroid/view/View;

    invoke-virtual {p0, v4}, Landroidx/j/ag;->b(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 650
    iget-object v4, p0, Landroidx/j/ag;->K:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    iget-object v2, p0, Landroidx/j/ag;->L:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 656
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroidx/c/a;->size()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 657
    invoke-virtual {p2, v0}, Landroidx/c/a;->c(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/j/an;

    .line 658
    iget-object v1, p1, Landroidx/j/an;->b:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroidx/j/ag;->b(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 659
    iget-object v1, p0, Landroidx/j/ag;->L:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    iget-object p1, p0, Landroidx/j/ag;->K:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static d(Ljava/lang/String;)[I
    .locals 6

    .line 305
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array p0, p0, [I

    const/4 v1, 0x0

    move v2, v1

    .line 309
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 310
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "id"

    .line 311
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    .line 312
    aput v3, p0, v2

    goto :goto_1

    :cond_0
    const-string v4, "instance"

    .line 313
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 314
    aput v5, p0, v2

    goto :goto_1

    :cond_1
    const-string v4, "name"

    .line 315
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x2

    .line 316
    aput v3, p0, v2

    goto :goto_1

    :cond_2
    const-string v4, "itemId"

    .line 317
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x4

    .line 318
    aput v3, p0, v2

    goto :goto_1

    .line 319
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 321
    array-length v3, p0

    sub-int/2addr v3, v5

    new-array v3, v3, [I

    .line 322
    invoke-static {p0, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, -0x1

    move-object p0, v3

    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    .line 326
    :cond_4
    new-instance p0, Landroid/view/InflateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown match type in matchOrder: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-object p0
.end method

.method private e(Landroid/view/View;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1602
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1603
    iget-object v1, p0, Landroidx/j/ag;->A:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/j/ag;->A:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1606
    :cond_1
    iget-object v1, p0, Landroidx/j/ag;->B:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/j/ag;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1609
    :cond_2
    iget-object v1, p0, Landroidx/j/ag;->C:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1610
    iget-object v1, p0, Landroidx/j/ag;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    .line 1612
    iget-object v4, p0, Landroidx/j/ag;->C:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return-void

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1617
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 1618
    new-instance v1, Landroidx/j/an;

    invoke-direct {v1, p1}, Landroidx/j/an;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_5

    .line 1620
    invoke-virtual {p0, v1}, Landroidx/j/ag;->a(Landroidx/j/an;)V

    goto :goto_1

    .line 1622
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/j/ag;->b(Landroidx/j/an;)V

    .line 1624
    :goto_1
    iget-object v3, v1, Landroidx/j/an;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1625
    invoke-virtual {p0, v1}, Landroidx/j/ag;->c(Landroidx/j/an;)V

    if-eqz p2, :cond_6

    .line 1627
    iget-object v3, p0, Landroidx/j/ag;->H:Landroidx/j/ao;

    invoke-static {v3, p1, v1}, Landroidx/j/ag;->a(Landroidx/j/ao;Landroid/view/View;Landroidx/j/an;)V

    goto :goto_2

    .line 1629
    :cond_6
    iget-object v3, p0, Landroidx/j/ag;->I:Landroidx/j/ao;

    invoke-static {v3, p1, v1}, Landroidx/j/ag;->a(Landroidx/j/ao;Landroid/view/View;Landroidx/j/an;)V

    .line 1632
    :cond_7
    :goto_2
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_c

    .line 1634
    iget-object v1, p0, Landroidx/j/ag;->E:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroidx/j/ag;->E:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    .line 1637
    :cond_8
    iget-object v0, p0, Landroidx/j/ag;->F:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/j/ag;->F:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 1640
    :cond_9
    iget-object v0, p0, Landroidx/j/ag;->G:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 1641
    iget-object v0, p0, Landroidx/j/ag;->G:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v2

    :goto_3
    if-ge v1, v0, :cond_b

    .line 1643
    iget-object v3, p0, Landroidx/j/ag;->G:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    return-void

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1648
    :cond_b
    check-cast p1, Landroid/view/ViewGroup;

    .line 1649
    :goto_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_c

    .line 1650
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroidx/j/ag;->e(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;
    .locals 0
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

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(IZ)Landroidx/j/ag;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1219
    iget-object v0, p0, Landroidx/j/ag;->A:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/j/ag;->a(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroidx/j/ag;->A:Ljava/util/ArrayList;

    return-object p0
.end method

.method public a(J)Landroidx/j/ag;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 344
    iput-wide p1, p0, Landroidx/j/ag;->h:J

    return-object p0
.end method

.method public a(Landroid/animation/TimeInterpolator;)Landroidx/j/ag;
    .locals 0
    .param p1    # Landroid/animation/TimeInterpolator;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 398
    iput-object p1, p0, Landroidx/j/ag;->x:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public a(Landroid/view/View;Z)Landroidx/j/ag;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1193
    iget-object v0, p0, Landroidx/j/ag;->B:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/j/ag;->a(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroidx/j/ag;->B:Ljava/util/ArrayList;

    return-object p0
.end method

.method public a(Landroidx/j/ag$e;)Landroidx/j/ag;
    .locals 1
    .param p1    # Landroidx/j/ag$e;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 2042
    iget-object v0, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2043
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    .line 2045
    :cond_0
    iget-object v0, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/Class;)Landroidx/j/ag;
    .locals 1
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
            "Landroidx/j/ag;"
        }
    .end annotation

    .line 1079
    iget-object v0, p0, Landroidx/j/ag;->z:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1080
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/j/ag;->z:Ljava/util/ArrayList;

    .line 1082
    :cond_0
    iget-object v0, p0, Landroidx/j/ag;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/Class;Z)Landroidx/j/ag;
    .locals 1
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

    .line 1357
    iget-object v0, p0, Landroidx/j/ag;->C:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/j/ag;->a(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroidx/j/ag;->C:Ljava/util/ArrayList;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroidx/j/ag;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1049
    iget-object v0, p0, Landroidx/j/ag;->y:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/j/ag;->y:Ljava/util/ArrayList;

    .line 1052
    :cond_0
    iget-object v0, p0, Landroidx/j/ag;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Landroidx/j/ag;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1245
    iget-object v0, p0, Landroidx/j/ag;->D:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, Landroidx/j/ag;->a(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroidx/j/ag;->D:Ljava/util/ArrayList;

    return-object p0
.end method

.method protected a(Landroid/animation/Animator;)V
    .locals 4
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1900
    invoke-virtual {p0}, Landroidx/j/ag;->m()V

    goto :goto_0

    .line 1902
    :cond_0
    invoke-virtual {p0}, Landroidx/j/ag;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 1903
    invoke-virtual {p0}, Landroidx/j/ag;->d()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1905
    :cond_1
    invoke-virtual {p0}, Landroidx/j/ag;->e()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 1906
    invoke-virtual {p0}, Landroidx/j/ag;->e()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1908
    :cond_2
    invoke-virtual {p0}, Landroidx/j/ag;->f()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1909
    invoke-virtual {p0}, Landroidx/j/ag;->f()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1911
    :cond_3
    new-instance v0, Landroidx/j/ag$3;

    invoke-direct {v0, p0}, Landroidx/j/ag$3;-><init>(Landroidx/j/ag;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1918
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 10

    .line 1782
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/j/ag;->K:Ljava/util/ArrayList;

    .line 1783
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/j/ag;->L:Ljava/util/ArrayList;

    .line 1784
    iget-object v0, p0, Landroidx/j/ag;->H:Landroidx/j/ao;

    iget-object v1, p0, Landroidx/j/ag;->I:Landroidx/j/ao;

    invoke-direct {p0, v0, v1}, Landroidx/j/ag;->a(Landroidx/j/ao;Landroidx/j/ao;)V

    .line 1786
    invoke-static {}, Landroidx/j/ag;->b()Landroidx/c/a;

    move-result-object v0

    .line 1787
    invoke-virtual {v0}, Landroidx/c/a;->size()I

    move-result v1

    .line 1788
    invoke-static {p1}, Landroidx/j/ay;->b(Landroid/view/View;)Landroidx/j/bj;

    move-result-object v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    :goto_0
    if-ltz v1, :cond_6

    .line 1790
    invoke-virtual {v0, v1}, Landroidx/c/a;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    if-eqz v4, :cond_5

    .line 1792
    invoke-virtual {v0, v4}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/j/ag$a;

    if-eqz v5, :cond_5

    .line 1793
    iget-object v6, v5, Landroidx/j/ag$a;->a:Landroid/view/View;

    if-eqz v6, :cond_5

    iget-object v6, v5, Landroidx/j/ag$a;->d:Landroidx/j/bj;

    .line 1794
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1795
    iget-object v6, v5, Landroidx/j/ag$a;->c:Landroidx/j/an;

    .line 1796
    iget-object v7, v5, Landroidx/j/ag$a;->a:Landroid/view/View;

    .line 1797
    invoke-virtual {p0, v7, v3}, Landroidx/j/ag;->c(Landroid/view/View;Z)Landroidx/j/an;

    move-result-object v8

    .line 1798
    invoke-virtual {p0, v7, v3}, Landroidx/j/ag;->d(Landroid/view/View;Z)Landroidx/j/an;

    move-result-object v9

    if-nez v8, :cond_0

    if-nez v9, :cond_0

    .line 1800
    iget-object v9, p0, Landroidx/j/ag;->I:Landroidx/j/ao;

    iget-object v9, v9, Landroidx/j/ao;->a:Landroidx/c/a;

    invoke-virtual {v9, v7}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Landroidx/j/an;

    :cond_0
    if-nez v8, :cond_1

    if-eqz v9, :cond_2

    .line 1802
    :cond_1
    iget-object v5, v5, Landroidx/j/ag$a;->e:Landroidx/j/ag;

    .line 1803
    invoke-virtual {v5, v6, v9}, Landroidx/j/ag;->a(Landroidx/j/an;Landroidx/j/an;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_5

    .line 1805
    invoke-virtual {v4}, Landroid/animation/Animator;->isRunning()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v4}, Landroid/animation/Animator;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 1814
    :cond_3
    invoke-virtual {v0, v4}, Landroidx/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1809
    :cond_4
    :goto_2
    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1821
    :cond_6
    iget-object v6, p0, Landroidx/j/ag;->H:Landroidx/j/ao;

    iget-object v7, p0, Landroidx/j/ag;->I:Landroidx/j/ao;

    iget-object v8, p0, Landroidx/j/ag;->K:Ljava/util/ArrayList;

    iget-object v9, p0, Landroidx/j/ag;->L:Ljava/util/ArrayList;

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroidx/j/ag;->a(Landroid/view/ViewGroup;Landroidx/j/ao;Landroidx/j/ao;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1822
    invoke-virtual {p0}, Landroidx/j/ag;->g()V

    return-void
.end method

.method protected a(Landroid/view/ViewGroup;Landroidx/j/ao;Landroidx/j/ao;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
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

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 710
    invoke-static {}, Landroidx/j/ag;->b()Landroidx/c/a;

    move-result-object v8

    .line 712
    new-instance v9, Landroid/util/SparseIntArray;

    invoke-direct {v9}, Landroid/util/SparseIntArray;-><init>()V

    .line 713
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-wide v0, 0x7fffffffffffffffL

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v10, :cond_d

    move-object/from16 v13, p4

    .line 715
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/j/an;

    move-object/from16 v14, p5

    .line 716
    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/j/an;

    if-eqz v2, :cond_0

    .line 717
    iget-object v5, v2, Landroidx/j/an;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v3, :cond_1

    .line 720
    iget-object v5, v3, Landroidx/j/an;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x0

    :cond_1
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    :cond_2
    move/from16 v16, v10

    move/from16 v18, v12

    goto/16 :goto_7

    :cond_3
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 727
    invoke-virtual {v6, v2, v3}, Landroidx/j/ag;->a(Landroidx/j/an;Landroidx/j/an;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_2

    .line 747
    invoke-virtual {v6, v7, v2, v3}, Landroidx/j/ag;->a(Landroid/view/ViewGroup;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_a

    .line 753
    iget-object v15, v3, Landroidx/j/an;->b:Landroid/view/View;

    .line 754
    invoke-virtual/range {p0 .. p0}, Landroidx/j/ag;->a()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 755
    array-length v11, v4

    if-lez v11, :cond_9

    .line 756
    new-instance v11, Landroidx/j/an;

    invoke-direct {v11, v15}, Landroidx/j/an;-><init>(Landroid/view/View;)V

    move-object/from16 v17, v5

    move/from16 v16, v10

    move-object/from16 v10, p3

    .line 757
    iget-object v5, v10, Landroidx/j/ao;->a:Landroidx/c/a;

    invoke-virtual {v5, v15}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/j/an;

    if-eqz v5, :cond_6

    const/4 v10, 0x0

    .line 759
    :goto_3
    array-length v13, v4

    if-ge v10, v13, :cond_6

    .line 760
    iget-object v13, v11, Landroidx/j/an;->a:Ljava/util/Map;

    aget-object v14, v4, v10

    move/from16 v18, v12

    iget-object v12, v5, Landroidx/j/an;->a:Ljava/util/Map;

    move-object/from16 v19, v5

    aget-object v5, v4, v10

    .line 761
    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 760
    invoke-interface {v13, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    move/from16 v12, v18

    move-object/from16 v5, v19

    move-object/from16 v14, p5

    goto :goto_3

    :cond_6
    move/from16 v18, v12

    .line 764
    invoke-virtual {v8}, Landroidx/c/a;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_8

    .line 766
    invoke-virtual {v8, v5}, Landroidx/c/a;->b(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator;

    .line 767
    invoke-virtual {v8, v10}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/j/ag$a;

    .line 768
    iget-object v12, v10, Landroidx/j/ag$a;->c:Landroidx/j/an;

    if-eqz v12, :cond_7

    iget-object v12, v10, Landroidx/j/ag$a;->a:Landroid/view/View;

    if-ne v12, v15, :cond_7

    iget-object v12, v10, Landroidx/j/ag$a;->b:Ljava/lang/String;

    .line 769
    invoke-virtual/range {p0 .. p0}, Landroidx/j/ag;->t()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 770
    iget-object v10, v10, Landroidx/j/ag$a;->c:Landroidx/j/an;

    invoke-virtual {v10, v11}, Landroidx/j/an;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v5, 0x0

    goto :goto_5

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v5, v17

    goto :goto_5

    :cond_9
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    move-object/from16 v5, v17

    const/4 v11, 0x0

    :goto_5
    move-object v10, v5

    move-object v5, v11

    goto :goto_6

    :cond_a
    move-object/from16 v17, v5

    move/from16 v16, v10

    move/from16 v18, v12

    .line 779
    iget-object v4, v2, Landroidx/j/an;->b:Landroid/view/View;

    move-object v15, v4

    move-object/from16 v10, v17

    const/4 v5, 0x0

    :goto_6
    if-eqz v10, :cond_c

    .line 782
    iget-object v4, v6, Landroidx/j/ag;->n:Landroidx/j/ak;

    if-eqz v4, :cond_b

    .line 783
    iget-object v4, v6, Landroidx/j/ag;->n:Landroidx/j/ak;

    invoke-virtual {v4, v7, v6, v2, v3}, Landroidx/j/ak;->a(Landroid/view/ViewGroup;Landroidx/j/ag;Landroidx/j/an;Landroidx/j/an;)J

    move-result-wide v2

    .line 784
    iget-object v4, v6, Landroidx/j/ag;->S:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    long-to-int v11, v2

    invoke-virtual {v9, v4, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 785
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_b
    move-wide v11, v0

    .line 787
    new-instance v13, Landroidx/j/ag$a;

    invoke-virtual/range {p0 .. p0}, Landroidx/j/ag;->t()Ljava/lang/String;

    move-result-object v2

    .line 788
    invoke-static/range {p1 .. p1}, Landroidx/j/ay;->b(Landroid/view/View;)Landroidx/j/bj;

    move-result-object v4

    move-object v0, v13

    move-object v1, v15

    move-object/from16 v3, p0

    invoke-direct/range {v0 .. v5}, Landroidx/j/ag$a;-><init>(Landroid/view/View;Ljava/lang/String;Landroidx/j/ag;Landroidx/j/bj;Landroidx/j/an;)V

    .line 789
    invoke-virtual {v8, v10, v13}, Landroidx/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    iget-object v0, v6, Landroidx/j/ag;->S:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v0, v11

    :cond_c
    :goto_7
    add-int/lit8 v12, v18, 0x1

    move/from16 v10, v16

    goto/16 :goto_0

    .line 795
    :cond_d
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    .line 796
    :goto_8
    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 797
    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 798
    iget-object v4, v6, Landroidx/j/ag;->S:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 799
    invoke-virtual {v9, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-virtual {v3}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v7

    add-long/2addr v4, v7

    .line 800
    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_e
    return-void
.end method

.method a(Landroid/view/ViewGroup;Z)V
    .locals 5

    .line 1471
    invoke-virtual {p0, p2}, Landroidx/j/ag;->c(Z)V

    .line 1472
    iget-object v0, p0, Landroidx/j/ag;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    iget-object v0, p0, Landroidx/j/ag;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    iget-object v0, p0, Landroidx/j/ag;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/j/ag;->y:Ljava/util/ArrayList;

    .line 1473
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Landroidx/j/ag;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/j/ag;->z:Ljava/util/ArrayList;

    .line 1474
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1511
    :cond_2
    invoke-direct {p0, p1, p2}, Landroidx/j/ag;->e(Landroid/view/View;Z)V

    goto/16 :goto_7

    :cond_3
    :goto_0
    move v0, v1

    .line 1475
    :goto_1
    iget-object v2, p0, Landroidx/j/ag;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 1476
    iget-object v2, p0, Landroidx/j/ag;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1477
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1479
    new-instance v3, Landroidx/j/an;

    invoke-direct {v3, v2}, Landroidx/j/an;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_4

    .line 1481
    invoke-virtual {p0, v3}, Landroidx/j/ag;->a(Landroidx/j/an;)V

    goto :goto_2

    .line 1483
    :cond_4
    invoke-virtual {p0, v3}, Landroidx/j/ag;->b(Landroidx/j/an;)V

    .line 1485
    :goto_2
    iget-object v4, v3, Landroidx/j/an;->c:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1486
    invoke-virtual {p0, v3}, Landroidx/j/ag;->c(Landroidx/j/an;)V

    if-eqz p2, :cond_5

    .line 1488
    iget-object v4, p0, Landroidx/j/ag;->H:Landroidx/j/ao;

    invoke-static {v4, v2, v3}, Landroidx/j/ag;->a(Landroidx/j/ao;Landroid/view/View;Landroidx/j/an;)V

    goto :goto_3

    .line 1490
    :cond_5
    iget-object v4, p0, Landroidx/j/ag;->I:Landroidx/j/ao;

    invoke-static {v4, v2, v3}, Landroidx/j/ag;->a(Landroidx/j/ao;Landroid/view/View;Landroidx/j/an;)V

    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move p1, v1

    .line 1494
    :goto_4
    iget-object v0, p0, Landroidx/j/ag;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_a

    .line 1495
    iget-object v0, p0, Landroidx/j/ag;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1496
    new-instance v2, Landroidx/j/an;

    invoke-direct {v2, v0}, Landroidx/j/an;-><init>(Landroid/view/View;)V

    if-eqz p2, :cond_8

    .line 1498
    invoke-virtual {p0, v2}, Landroidx/j/ag;->a(Landroidx/j/an;)V

    goto :goto_5

    .line 1500
    :cond_8
    invoke-virtual {p0, v2}, Landroidx/j/ag;->b(Landroidx/j/an;)V

    .line 1502
    :goto_5
    iget-object v3, v2, Landroidx/j/an;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1503
    invoke-virtual {p0, v2}, Landroidx/j/ag;->c(Landroidx/j/an;)V

    if-eqz p2, :cond_9

    .line 1505
    iget-object v3, p0, Landroidx/j/ag;->H:Landroidx/j/ao;

    invoke-static {v3, v0, v2}, Landroidx/j/ag;->a(Landroidx/j/ao;Landroid/view/View;Landroidx/j/an;)V

    goto :goto_6

    .line 1507
    :cond_9
    iget-object v3, p0, Landroidx/j/ag;->I:Landroidx/j/ao;

    invoke-static {v3, v0, v2}, Landroidx/j/ag;->a(Landroidx/j/ao;Landroid/view/View;Landroidx/j/an;)V

    :goto_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    :goto_7
    if-nez p2, :cond_d

    .line 1513
    iget-object p1, p0, Landroidx/j/ag;->U:Landroidx/c/a;

    if-eqz p1, :cond_d

    .line 1514
    iget-object p1, p0, Landroidx/j/ag;->U:Landroidx/c/a;

    invoke-virtual {p1}, Landroidx/c/a;->size()I

    move-result p1

    .line 1515
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_8
    if-ge v0, p1, :cond_b

    .line 1517
    iget-object v2, p0, Landroidx/j/ag;->U:Landroidx/c/a;

    invoke-virtual {v2, v0}, Landroidx/c/a;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1518
    iget-object v3, p0, Landroidx/j/ag;->H:Landroidx/j/ao;

    iget-object v3, v3, Landroidx/j/ao;->d:Landroidx/c/a;

    invoke-virtual {v3, v2}, Landroidx/c/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    if-ge v1, p1, :cond_d

    .line 1521
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_c

    .line 1523
    iget-object v2, p0, Landroidx/j/ag;->U:Landroidx/c/a;

    invoke-virtual {v2, v1}, Landroidx/c/a;->c(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1524
    iget-object v3, p0, Landroidx/j/ag;->H:Landroidx/j/ao;

    iget-object v3, v3, Landroidx/j/ao;->d:Landroidx/c/a;

    invoke-virtual {v3, v2, v0}, Landroidx/c/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_d
    return-void
.end method

.method public a(Landroidx/j/ag$c;)V
    .locals 0
    .param p1    # Landroidx/j/ag$c;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 2118
    iput-object p1, p0, Landroidx/j/ag;->T:Landroidx/j/ag$c;

    return-void
.end method

.method public a(Landroidx/j/ak;)V
    .locals 0
    .param p1    # Landroidx/j/ak;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 2164
    iput-object p1, p0, Landroidx/j/ag;->n:Landroidx/j/ak;

    return-void
.end method

.method public abstract a(Landroidx/j/an;)V
    .param p1    # Landroidx/j/an;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
.end method

.method public a(Landroidx/j/w;)V
    .locals 0
    .param p1    # Landroidx/j/w;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 2086
    sget-object p1, Landroidx/j/ag;->u:Landroidx/j/w;

    iput-object p1, p0, Landroidx/j/ag;->V:Landroidx/j/w;

    goto :goto_0

    .line 2088
    :cond_0
    iput-object p1, p0, Landroidx/j/ag;->V:Landroidx/j/w;

    :goto_0
    return-void
.end method

.method public varargs a([I)V
    .locals 2

    if-eqz p1, :cond_4

    .line 510
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 513
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 514
    aget v1, p1, v0

    .line 515
    invoke-static {v1}, Landroidx/j/ag;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 518
    invoke-static {p1, v0}, Landroidx/j/ag;->a([II)Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 519
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "matches contains a duplicate value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 516
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "matches contains invalid value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 522
    :cond_3
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Landroidx/j/ag;->J:[I

    goto :goto_2

    .line 511
    :cond_4
    :goto_1
    sget-object p1, Landroidx/j/ag;->t:[I

    iput-object p1, p0, Landroidx/j/ag;->J:[I

    :goto_2
    return-void
.end method

.method public a(Landroidx/j/an;Landroidx/j/an;)Z
    .locals 5
    .param p1    # Landroidx/j/an;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Landroidx/j/an;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1844
    invoke-virtual {p0}, Landroidx/j/ag;->a()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1846
    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p0, v3

    .line 1847
    invoke-static {p1, p2, v4}, Landroidx/j/ag;->a(Landroidx/j/an;Landroidx/j/an;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1853
    :cond_1
    iget-object p0, p1, Landroidx/j/an;->a:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1854
    invoke-static {p1, p2, v2}, Landroidx/j/ag;->a(Landroidx/j/an;Landroidx/j/an;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    move v0, v1

    :cond_3
    return v0
.end method

.method public a()[Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public b(I)Landroidx/j/ag;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    if-eqz p1, :cond_0

    .line 1025
    iget-object v0, p0, Landroidx/j/ag;->i:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public b(IZ)Landroidx/j/ag;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1301
    iget-object v0, p0, Landroidx/j/ag;->E:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/j/ag;->a(Ljava/util/ArrayList;IZ)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroidx/j/ag;->E:Ljava/util/ArrayList;

    return-object p0
.end method

.method public b(J)Landroidx/j/ag;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 371
    iput-wide p1, p0, Landroidx/j/ag;->w:J

    return-object p0
.end method

.method public b(Landroid/view/View;Z)Landroidx/j/ag;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1271
    iget-object v0, p0, Landroidx/j/ag;->F:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/j/ag;->a(Ljava/util/ArrayList;Landroid/view/View;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroidx/j/ag;->F:Ljava/util/ArrayList;

    return-object p0
.end method

.method public b(Landroidx/j/ag$e;)Landroidx/j/ag;
    .locals 1
    .param p1    # Landroidx/j/ag$e;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 2058
    iget-object v0, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-object p0

    .line 2061
    :cond_0
    iget-object v0, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2062
    iget-object p1, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2063
    iput-object p1, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    :cond_1
    return-object p0
.end method

.method public b(Ljava/lang/Class;)Landroidx/j/ag;
    .locals 1
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
            "Landroidx/j/ag;"
        }
    .end annotation

    .line 1150
    iget-object v0, p0, Landroidx/j/ag;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Landroidx/j/ag;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public b(Ljava/lang/Class;Z)Landroidx/j/ag;
    .locals 1
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

    .line 1384
    iget-object v0, p0, Landroidx/j/ag;->G:Ljava/util/ArrayList;

    invoke-direct {p0, v0, p1, p2}, Landroidx/j/ag;->a(Ljava/util/ArrayList;Ljava/lang/Class;Z)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Landroidx/j/ag;->G:Ljava/util/ArrayList;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Landroidx/j/ag;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1132
    iget-object v0, p0, Landroidx/j/ag;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Landroidx/j/ag;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method b(Landroid/view/ViewGroup;)V
    .locals 3
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 1991
    invoke-static {}, Landroidx/j/ag;->b()Landroidx/c/a;

    move-result-object p0

    .line 1992
    invoke-virtual {p0}, Landroidx/c/a;->size()I

    move-result v0

    if-eqz p1, :cond_3

    if-nez v0, :cond_0

    goto :goto_1

    .line 1997
    :cond_0
    invoke-static {p1}, Landroidx/j/ay;->b(Landroid/view/View;)Landroidx/j/bj;

    move-result-object p1

    .line 1998
    new-instance v1, Landroidx/c/a;

    invoke-direct {v1, p0}, Landroidx/c/a;-><init>(Landroidx/c/i;)V

    .line 1999
    invoke-virtual {p0}, Landroidx/c/a;->clear()V

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 2002
    invoke-virtual {v1, v0}, Landroidx/c/a;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/j/ag$a;

    .line 2003
    iget-object v2, p0, Landroidx/j/ag$a;->a:Landroid/view/View;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/j/ag$a;->d:Landroidx/j/bj;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2004
    invoke-virtual {v1, v0}, Landroidx/c/a;->b(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    .line 2005
    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method public abstract b(Landroidx/j/an;)V
    .param p1    # Landroidx/j/an;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
.end method

.method b(Landroid/view/View;)Z
    .locals 5

    .line 816
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 817
    iget-object v1, p0, Landroidx/j/ag;->A:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/j/ag;->A:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v2

    .line 820
    :cond_0
    iget-object v1, p0, Landroidx/j/ag;->B:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/j/ag;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 823
    :cond_1
    iget-object v1, p0, Landroidx/j/ag;->C:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 824
    iget-object v1, p0, Landroidx/j/ag;->C:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 826
    iget-object v4, p0, Landroidx/j/ag;->C:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 827
    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 832
    :cond_3
    iget-object v1, p0, Landroidx/j/ag;->D:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-static {p1}, Landroidx/core/n/af;->R(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 833
    iget-object v1, p0, Landroidx/j/ag;->D:Ljava/util/ArrayList;

    invoke-static {p1}, Landroidx/core/n/af;->R(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 837
    :cond_4
    iget-object v1, p0, Landroidx/j/ag;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroidx/j/ag;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Landroidx/j/ag;->z:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/j/ag;->z:Ljava/util/ArrayList;

    .line 838
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_5
    iget-object v1, p0, Landroidx/j/ag;->y:Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/j/ag;->y:Ljava/util/ArrayList;

    .line 839
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_6
    return v3

    .line 842
    :cond_7
    iget-object v1, p0, Landroidx/j/ag;->i:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Landroidx/j/ag;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 845
    :cond_8
    iget-object v0, p0, Landroidx/j/ag;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroidx/j/ag;->y:Ljava/util/ArrayList;

    invoke-static {p1}, Landroidx/core/n/af;->R(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v3

    .line 848
    :cond_9
    iget-object v0, p0, Landroidx/j/ag;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    move v0, v2

    .line 849
    :goto_1
    iget-object v1, p0, Landroidx/j/ag;->z:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    .line 850
    iget-object v1, p0, Landroidx/j/ag;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    return v3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_b
    return v2

    :cond_c
    :goto_2
    return v3
.end method

.method public c(I)Landroidx/j/ag;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    if-eqz p1, :cond_0

    .line 1115
    iget-object v0, p0, Landroidx/j/ag;->i:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public c(Landroid/view/View;)Landroidx/j/ag;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1000
    iget-object v0, p0, Landroidx/j/ag;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method c(Landroid/view/ViewGroup;)Landroidx/j/ag;
    .locals 0

    .line 2208
    iput-object p1, p0, Landroidx/j/ag;->N:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public c(Landroid/view/View;Z)Landroidx/j/an;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1663
    iget-object v0, p0, Landroidx/j/ag;->k:Landroidx/j/al;

    if-eqz v0, :cond_0

    .line 1664
    iget-object p0, p0, Landroidx/j/ag;->k:Landroidx/j/al;

    invoke-virtual {p0, p1, p2}, Landroidx/j/al;->c(Landroid/view/View;Z)Landroidx/j/an;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 1666
    iget-object p0, p0, Landroidx/j/ag;->H:Landroidx/j/ao;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/j/ag;->I:Landroidx/j/ao;

    .line 1667
    :goto_0
    iget-object p0, p0, Landroidx/j/ao;->a:Landroidx/c/a;

    invoke-virtual {p0, p1}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/j/an;

    return-object p0
.end method

.method c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 2254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2255
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2256
    iget-wide v0, p0, Landroidx/j/ag;->h:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dur("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Landroidx/j/ag;->h:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2259
    :cond_0
    iget-wide v0, p0, Landroidx/j/ag;->w:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "dly("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/j/ag;->w:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2262
    :cond_1
    iget-object v0, p0, Landroidx/j/ag;->x:Landroid/animation/TimeInterpolator;

    if-eqz v0, :cond_2

    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "interp("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/j/ag;->x:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2265
    :cond_2
    iget-object v0, p0, Landroidx/j/ag;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Landroidx/j/ag;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 2266
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "tgts("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2267
    iget-object v0, p0, Landroidx/j/ag;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_6

    move-object v0, p1

    move p1, v1

    .line 2268
    :goto_0
    iget-object v2, p0, Landroidx/j/ag;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_5

    if-lez p1, :cond_4

    .line 2270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2272
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/j/ag;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    move-object p1, v0

    .line 2275
    :cond_6
    iget-object v0, p0, Landroidx/j/ag;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 2276
    :goto_1
    iget-object v0, p0, Landroidx/j/ag;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    if-lez v1, :cond_7

    .line 2278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2280
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Landroidx/j/ag;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2283
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_9
    return-object p1
.end method

.method c(Landroidx/j/an;)V
    .locals 5

    .line 2189
    iget-object v0, p0, Landroidx/j/ag;->n:Landroidx/j/ak;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroidx/j/an;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2190
    iget-object v0, p0, Landroidx/j/ag;->n:Landroidx/j/ak;

    invoke-virtual {v0}, Landroidx/j/ak;->a()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 2195
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 2196
    iget-object v3, p1, Landroidx/j/an;->a:Ljava/util/Map;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 2202
    iget-object p0, p0, Landroidx/j/ag;->n:Landroidx/j/ak;

    invoke-virtual {p0, p1}, Landroidx/j/ak;->a(Landroidx/j/an;)V

    :cond_3
    return-void
.end method

.method c(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1578
    iget-object p1, p0, Landroidx/j/ag;->H:Landroidx/j/ao;

    iget-object p1, p1, Landroidx/j/ao;->a:Landroidx/c/a;

    invoke-virtual {p1}, Landroidx/c/a;->clear()V

    .line 1579
    iget-object p1, p0, Landroidx/j/ag;->H:Landroidx/j/ao;

    iget-object p1, p1, Landroidx/j/ao;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1580
    iget-object p0, p0, Landroidx/j/ag;->H:Landroidx/j/ao;

    iget-object p0, p0, Landroidx/j/ao;->c:Landroidx/c/f;

    invoke-virtual {p0}, Landroidx/c/f;->d()V

    goto :goto_0

    .line 1582
    :cond_0
    iget-object p1, p0, Landroidx/j/ag;->I:Landroidx/j/ao;

    iget-object p1, p1, Landroidx/j/ao;->a:Landroidx/c/a;

    invoke-virtual {p1}, Landroidx/c/a;->clear()V

    .line 1583
    iget-object p1, p0, Landroidx/j/ag;->I:Landroidx/j/ao;

    iget-object p1, p1, Landroidx/j/ao;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1584
    iget-object p0, p0, Landroidx/j/ag;->I:Landroidx/j/ao;

    iget-object p0, p0, Landroidx/j/ao;->c:Landroidx/c/f;

    invoke-virtual {p0}, Landroidx/c/f;->d()V

    :goto_0
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 120
    invoke-virtual {p0}, Landroidx/j/ag;->s()Landroidx/j/ag;

    move-result-object p0

    return-object p0
.end method

.method public d()J
    .locals 2

    .line 357
    iget-wide v0, p0, Landroidx/j/ag;->h:J

    return-wide v0
.end method

.method public d(Landroid/view/View;)Landroidx/j/ag;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1098
    iget-object v0, p0, Landroidx/j/ag;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method d(Landroid/view/View;Z)Landroidx/j/an;
    .locals 6

    .line 1682
    iget-object v0, p0, Landroidx/j/ag;->k:Landroidx/j/al;

    if-eqz v0, :cond_0

    .line 1683
    iget-object p0, p0, Landroidx/j/ag;->k:Landroidx/j/al;

    invoke-virtual {p0, p1, p2}, Landroidx/j/al;->d(Landroid/view/View;Z)Landroidx/j/an;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 1685
    iget-object v0, p0, Landroidx/j/ag;->K:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/j/ag;->L:Ljava/util/ArrayList;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    return-object v1

    .line 1689
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_5

    .line 1692
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/j/an;

    if-nez v5, :cond_3

    return-object v1

    .line 1697
    :cond_3
    iget-object v5, v5, Landroidx/j/an;->b:Landroid/view/View;

    if-ne v5, p1, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    if-ltz v3, :cond_7

    if-eqz p2, :cond_6

    .line 1704
    iget-object p0, p0, Landroidx/j/ag;->L:Ljava/util/ArrayList;

    goto :goto_3

    :cond_6
    iget-object p0, p0, Landroidx/j/ag;->K:Ljava/util/ArrayList;

    .line 1705
    :goto_3
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/j/an;

    :cond_7
    return-object v1
.end method

.method d(Z)V
    .locals 0

    .line 2213
    iput-boolean p1, p0, Landroidx/j/ag;->l:Z

    return-void
.end method

.method public e()J
    .locals 2

    .line 384
    iget-wide v0, p0, Landroidx/j/ag;->w:J

    return-wide v0
.end method

.method public e(Landroid/view/View;)V
    .locals 5
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 1719
    iget-boolean v0, p0, Landroidx/j/ag;->Q:Z

    if-nez v0, :cond_3

    .line 1720
    invoke-static {}, Landroidx/j/ag;->b()Landroidx/c/a;

    move-result-object v0

    .line 1721
    invoke-virtual {v0}, Landroidx/c/a;->size()I

    move-result v1

    .line 1722
    invoke-static {p1}, Landroidx/j/ay;->b(Landroid/view/View;)Landroidx/j/bj;

    move-result-object p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 1724
    invoke-virtual {v0, v1}, Landroidx/c/a;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/j/ag$a;

    .line 1725
    iget-object v4, v3, Landroidx/j/ag$a;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v3, v3, Landroidx/j/ag$a;->d:Landroidx/j/bj;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1726
    invoke-virtual {v0, v1}, Landroidx/c/a;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 1727
    invoke-static {v3}, Landroidx/j/a;->a(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1730
    :cond_1
    iget-object p1, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1731
    iget-object p1, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    .line 1732
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1733
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 1735
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/j/ag$e;

    invoke-interface {v3, p0}, Landroidx/j/ag$e;->c(Landroidx/j/ag;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1738
    :cond_2
    iput-boolean v2, p0, Landroidx/j/ag;->P:Z

    :cond_3
    return-void
.end method

.method public f()Landroid/animation/TimeInterpolator;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 412
    iget-object p0, p0, Landroidx/j/ag;->x:Landroid/animation/TimeInterpolator;

    return-object p0
.end method

.method public f(Landroid/view/View;)V
    .locals 5
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 1751
    iget-boolean v0, p0, Landroidx/j/ag;->P:Z

    if-eqz v0, :cond_3

    .line 1752
    iget-boolean v0, p0, Landroidx/j/ag;->Q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1753
    invoke-static {}, Landroidx/j/ag;->b()Landroidx/c/a;

    move-result-object v0

    .line 1754
    invoke-virtual {v0}, Landroidx/c/a;->size()I

    move-result v2

    .line 1755
    invoke-static {p1}, Landroidx/j/ay;->b(Landroid/view/View;)Landroidx/j/bj;

    move-result-object p1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 1757
    invoke-virtual {v0, v2}, Landroidx/c/a;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/j/ag$a;

    .line 1758
    iget-object v4, v3, Landroidx/j/ag$a;->a:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v3, v3, Landroidx/j/ag$a;->d:Landroidx/j/bj;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1759
    invoke-virtual {v0, v2}, Landroidx/c/a;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    .line 1760
    invoke-static {v3}, Landroidx/j/a;->b(Landroid/animation/Animator;)V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1763
    :cond_1
    iget-object p1, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 1764
    iget-object p1, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    .line 1765
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 1766
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_2

    .line 1768
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/j/ag$e;

    invoke-interface {v3, p0}, Landroidx/j/ag$e;->d(Landroidx/j/ag;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1772
    :cond_2
    iput-boolean v1, p0, Landroidx/j/ag;->P:Z

    :cond_3
    return-void
.end method

.method protected g()V
    .locals 4
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 878
    invoke-virtual {p0}, Landroidx/j/ag;->l()V

    .line 879
    invoke-static {}, Landroidx/j/ag;->b()Landroidx/c/a;

    move-result-object v0

    .line 881
    iget-object v1, p0, Landroidx/j/ag;->S:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    .line 885
    invoke-virtual {v0, v2}, Landroidx/c/a;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 886
    invoke-virtual {p0}, Landroidx/j/ag;->l()V

    .line 887
    invoke-direct {p0, v2, v0}, Landroidx/j/ag;->a(Landroid/animation/Animator;Landroidx/c/a;)V

    goto :goto_0

    .line 890
    :cond_1
    iget-object v0, p0, Landroidx/j/ag;->S:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 891
    invoke-virtual {p0}, Landroidx/j/ag;->m()V

    return-void
.end method

.method public h()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1415
    iget-object p0, p0, Landroidx/j/ag;->i:Ljava/util/ArrayList;

    return-object p0
.end method

.method public i()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1429
    iget-object p0, p0, Landroidx/j/ag;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method public j()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1444
    iget-object p0, p0, Landroidx/j/ag;->y:Ljava/util/ArrayList;

    return-object p0
.end method

.method public k()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1459
    iget-object p0, p0, Landroidx/j/ag;->z:Ljava/util/ArrayList;

    return-object p0
.end method

.method protected l()V
    .locals 5
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 1931
    iget v0, p0, Landroidx/j/ag;->O:I

    if-nez v0, :cond_1

    .line 1932
    iget-object v0, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1933
    iget-object v0, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    .line 1934
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1935
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1937
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/j/ag$e;

    invoke-interface {v4, p0}, Landroidx/j/ag$e;->e(Landroidx/j/ag;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1940
    :cond_0
    iput-boolean v1, p0, Landroidx/j/ag;->Q:Z

    .line 1942
    :cond_1
    iget v0, p0, Landroidx/j/ag;->O:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/j/ag;->O:I

    return-void
.end method

.method protected m()V
    .locals 6
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 1958
    iget v0, p0, Landroidx/j/ag;->O:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/j/ag;->O:I

    .line 1959
    iget v0, p0, Landroidx/j/ag;->O:I

    if-nez v0, :cond_5

    .line 1960
    iget-object v0, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1961
    iget-object v0, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    .line 1962
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1963
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    .line 1965
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/j/ag$e;

    invoke-interface {v5, p0}, Landroidx/j/ag$e;->b(Landroidx/j/ag;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1968
    :goto_1
    iget-object v3, p0, Landroidx/j/ag;->H:Landroidx/j/ao;

    iget-object v3, v3, Landroidx/j/ao;->c:Landroidx/c/f;

    invoke-virtual {v3}, Landroidx/c/f;->b()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1969
    iget-object v3, p0, Landroidx/j/ag;->H:Landroidx/j/ao;

    iget-object v3, v3, Landroidx/j/ao;->c:Landroidx/c/f;

    invoke-virtual {v3, v0}, Landroidx/c/f;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1971
    invoke-static {v3, v2}, Landroidx/core/n/af;->a(Landroid/view/View;Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    .line 1974
    :goto_2
    iget-object v3, p0, Landroidx/j/ag;->I:Landroidx/j/ao;

    iget-object v3, v3, Landroidx/j/ao;->c:Landroidx/c/f;

    invoke-virtual {v3}, Landroidx/c/f;->b()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1975
    iget-object v3, p0, Landroidx/j/ag;->I:Landroidx/j/ao;

    iget-object v3, v3, Landroidx/j/ao;->c:Landroidx/c/f;

    invoke-virtual {v3, v0}, Landroidx/c/f;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_3

    .line 1977
    invoke-static {v3, v2}, Landroidx/core/n/af;->a(Landroid/view/View;Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1980
    :cond_4
    iput-boolean v1, p0, Landroidx/j/ag;->Q:Z

    :cond_5
    return-void
.end method

.method protected n()V
    .locals 4
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 2017
    iget-object v0, p0, Landroidx/j/ag;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 2019
    iget-object v1, p0, Landroidx/j/ag;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 2020
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2022
    :cond_0
    iget-object v0, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2023
    iget-object v0, p0, Landroidx/j/ag;->R:Ljava/util/ArrayList;

    .line 2024
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2025
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 2027
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/j/ag$e;

    invoke-interface {v3, p0}, Landroidx/j/ag$e;->a(Landroidx/j/ag;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public o()Landroidx/j/w;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 2103
    iget-object p0, p0, Landroidx/j/ag;->V:Landroidx/j/w;

    return-object p0
.end method

.method public p()Landroidx/j/ag$c;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 2133
    iget-object p0, p0, Landroidx/j/ag;->T:Landroidx/j/ag$c;

    return-object p0
.end method

.method public q()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 2146
    iget-object v0, p0, Landroidx/j/ag;->T:Landroidx/j/ag$c;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2149
    :cond_0
    iget-object v0, p0, Landroidx/j/ag;->T:Landroidx/j/ag$c;

    invoke-virtual {v0, p0}, Landroidx/j/ag$c;->a(Landroidx/j/ag;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public r()Landroidx/j/ak;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 2181
    iget-object p0, p0, Landroidx/j/ag;->n:Landroidx/j/ak;

    return-object p0
.end method

.method public s()Landroidx/j/ag;
    .locals 2

    const/4 v0, 0x0

    .line 2224
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/j/ag;

    .line 2225
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/j/ag;->S:Ljava/util/ArrayList;

    .line 2226
    new-instance v1, Landroidx/j/ao;

    invoke-direct {v1}, Landroidx/j/ao;-><init>()V

    iput-object v1, p0, Landroidx/j/ag;->H:Landroidx/j/ao;

    .line 2227
    new-instance v1, Landroidx/j/ao;

    invoke-direct {v1}, Landroidx/j/ao;-><init>()V

    iput-object v1, p0, Landroidx/j/ag;->I:Landroidx/j/ao;

    .line 2228
    iput-object v0, p0, Landroidx/j/ag;->K:Ljava/util/ArrayList;

    .line 2229
    iput-object v0, p0, Landroidx/j/ag;->L:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 2250
    iget-object p0, p0, Landroidx/j/ag;->v:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 2218
    invoke-virtual {p0, v0}, Landroidx/j/ag;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
