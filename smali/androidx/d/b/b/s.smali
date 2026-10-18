.class public Landroidx/d/b/b/s;
.super Landroidx/d/e/d;
.source "SourceFile"

# interfaces
.implements Landroidx/core/n/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/d/b/b/s$g;,
        Landroidx/d/b/b/s$b;,
        Landroidx/d/b/b/s$c;,
        Landroidx/d/b/b/s$a;,
        Landroidx/d/b/b/s$f;,
        Landroidx/d/b/b/s$e;,
        Landroidx/d/b/b/s$d;,
        Landroidx/d/b/b/s$h;
    }
.end annotation


# static fields
.field public static final J:I = 0x0

.field public static final K:I = 0x1

.field public static final L:I = 0x2

.field public static final M:I = 0x3

.field public static final a:I = 0x0

.field private static final aP:F = 1.0E-5f

.field private static final am:Z = false

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field static final g:Ljava/lang/String; = "MotionLayout"

.field public static h:Z = false

.field public static final s:I = 0x0

.field public static final t:I = 0x1

.field public static final u:I = 0x2

.field static final w:I = 0x32


# instance fields
.field A:I

.field B:I

.field C:I

.field D:Z

.field E:F

.field F:F

.field G:J

.field H:F

.field I:Z

.field protected N:Z

.field O:I

.field P:I

.field Q:I

.field R:I

.field S:I

.field T:I

.field U:F

.field V:Landroidx/d/b/b/s$h;

.field W:Landroidx/d/b/b/s$c;

.field private aA:Landroidx/d/b/a/h;

.field private aB:Landroidx/d/b/b/s$a;

.field private aC:Landroidx/d/b/b/d;

.field private aD:Z

.field private aE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/d/b/b/q;",
            ">;"
        }
    .end annotation
.end field

.field private aF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/d/b/b/q;",
            ">;"
        }
    .end annotation
.end field

.field private aG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/d/b/b/s$g;",
            ">;"
        }
    .end annotation
.end field

.field private aH:I

.field private aI:J

.field private aJ:F

.field private aK:I

.field private aL:F

.field private aM:Landroidx/d/b/b/g;

.field private aN:Z

.field private aO:Landroidx/d/b/b/s$f;

.field private aQ:Z

.field private aR:Landroid/graphics/RectF;

.field private aS:Landroid/view/View;

.field aa:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private an:I

.field private ao:I

.field private ap:I

.field private aq:I

.field private ar:Z

.field private as:J

.field private at:F

.field private au:J

.field private av:Z

.field private aw:Landroidx/d/b/b/s$g;

.field private ax:F

.field private ay:F

.field private az:Z

.field i:Landroidx/d/b/b/u;

.field j:Landroid/view/animation/Interpolator;

.field k:F

.field l:I

.field m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroidx/d/b/b/p;",
            ">;"
        }
    .end annotation
.end field

.field n:F

.field o:F

.field p:F

.field q:Z

.field r:Z

.field v:I

.field x:Landroidx/d/b/b/s$b;

.field y:Z

.field z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 963
    invoke-direct {p0, p1}, Landroidx/d/e/d;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 876
    iput p1, p0, Landroidx/d/b/b/s;->k:F

    const/4 v0, -0x1

    .line 877
    iput v0, p0, Landroidx/d/b/b/s;->an:I

    .line 878
    iput v0, p0, Landroidx/d/b/b/s;->l:I

    .line 879
    iput v0, p0, Landroidx/d/b/b/s;->ao:I

    const/4 v0, 0x0

    .line 880
    iput v0, p0, Landroidx/d/b/b/s;->ap:I

    .line 881
    iput v0, p0, Landroidx/d/b/b/s;->aq:I

    const/4 v1, 0x1

    .line 882
    iput-boolean v1, p0, Landroidx/d/b/b/s;->ar:Z

    .line 884
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    .line 886
    iput-wide v2, p0, Landroidx/d/b/b/s;->as:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 887
    iput v2, p0, Landroidx/d/b/b/s;->at:F

    .line 888
    iput p1, p0, Landroidx/d/b/b/s;->n:F

    .line 889
    iput p1, p0, Landroidx/d/b/b/s;->o:F

    .line 891
    iput p1, p0, Landroidx/d/b/b/s;->p:F

    .line 893
    iput-boolean v0, p0, Landroidx/d/b/b/s;->q:Z

    .line 894
    iput-boolean v0, p0, Landroidx/d/b/b/s;->r:Z

    .line 901
    iput v0, p0, Landroidx/d/b/b/s;->v:I

    .line 905
    iput-boolean v0, p0, Landroidx/d/b/b/s;->az:Z

    .line 906
    new-instance v2, Landroidx/d/b/a/h;

    invoke-direct {v2}, Landroidx/d/b/a/h;-><init>()V

    iput-object v2, p0, Landroidx/d/b/b/s;->aA:Landroidx/d/b/a/h;

    .line 907
    new-instance v2, Landroidx/d/b/b/s$a;

    invoke-direct {v2, p0}, Landroidx/d/b/b/s$a;-><init>(Landroidx/d/b/b/s;)V

    iput-object v2, p0, Landroidx/d/b/b/s;->aB:Landroidx/d/b/b/s$a;

    .line 911
    iput-boolean v1, p0, Landroidx/d/b/b/s;->y:Z

    .line 918
    iput-boolean v0, p0, Landroidx/d/b/b/s;->D:Z

    .line 923
    iput-boolean v0, p0, Landroidx/d/b/b/s;->aD:Z

    const/4 v1, 0x0

    .line 925
    iput-object v1, p0, Landroidx/d/b/b/s;->aE:Ljava/util/ArrayList;

    .line 926
    iput-object v1, p0, Landroidx/d/b/b/s;->aF:Ljava/util/ArrayList;

    .line 927
    iput-object v1, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    .line 928
    iput v0, p0, Landroidx/d/b/b/s;->aH:I

    const-wide/16 v2, -0x1

    .line 929
    iput-wide v2, p0, Landroidx/d/b/b/s;->aI:J

    .line 930
    iput p1, p0, Landroidx/d/b/b/s;->aJ:F

    .line 931
    iput v0, p0, Landroidx/d/b/b/s;->aK:I

    .line 932
    iput p1, p0, Landroidx/d/b/b/s;->aL:F

    .line 933
    iput-boolean v0, p0, Landroidx/d/b/b/s;->I:Z

    .line 940
    iput-boolean v0, p0, Landroidx/d/b/b/s;->N:Z

    .line 948
    new-instance p1, Landroidx/d/b/b/g;

    invoke-direct {p1}, Landroidx/d/b/b/g;-><init>()V

    iput-object p1, p0, Landroidx/d/b/b/s;->aM:Landroidx/d/b/b/g;

    .line 949
    iput-boolean v0, p0, Landroidx/d/b/b/s;->aN:Z

    .line 959
    sget-object p1, Landroidx/d/b/b/s$h;->a:Landroidx/d/b/b/s$h;

    iput-object p1, p0, Landroidx/d/b/b/s;->V:Landroidx/d/b/b/s$h;

    .line 2336
    new-instance p1, Landroidx/d/b/b/s$c;

    invoke-direct {p1, p0}, Landroidx/d/b/b/s$c;-><init>(Landroidx/d/b/b/s;)V

    iput-object p1, p0, Landroidx/d/b/b/s;->W:Landroidx/d/b/b/s$c;

    .line 3182
    iput-boolean v0, p0, Landroidx/d/b/b/s;->aQ:Z

    .line 3388
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/d/b/b/s;->aR:Landroid/graphics/RectF;

    .line 3389
    iput-object v1, p0, Landroidx/d/b/b/s;->aS:Landroid/view/View;

    .line 3746
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/d/b/b/s;->aa:Ljava/util/ArrayList;

    .line 964
    invoke-direct {p0, v1}, Landroidx/d/b/b/s;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 968
    invoke-direct {p0, p1, p2}, Landroidx/d/e/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 876
    iput p1, p0, Landroidx/d/b/b/s;->k:F

    const/4 v0, -0x1

    .line 877
    iput v0, p0, Landroidx/d/b/b/s;->an:I

    .line 878
    iput v0, p0, Landroidx/d/b/b/s;->l:I

    .line 879
    iput v0, p0, Landroidx/d/b/b/s;->ao:I

    const/4 v0, 0x0

    .line 880
    iput v0, p0, Landroidx/d/b/b/s;->ap:I

    .line 881
    iput v0, p0, Landroidx/d/b/b/s;->aq:I

    const/4 v1, 0x1

    .line 882
    iput-boolean v1, p0, Landroidx/d/b/b/s;->ar:Z

    .line 884
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    const-wide/16 v2, 0x0

    .line 886
    iput-wide v2, p0, Landroidx/d/b/b/s;->as:J

    const/high16 v2, 0x3f800000    # 1.0f

    .line 887
    iput v2, p0, Landroidx/d/b/b/s;->at:F

    .line 888
    iput p1, p0, Landroidx/d/b/b/s;->n:F

    .line 889
    iput p1, p0, Landroidx/d/b/b/s;->o:F

    .line 891
    iput p1, p0, Landroidx/d/b/b/s;->p:F

    .line 893
    iput-boolean v0, p0, Landroidx/d/b/b/s;->q:Z

    .line 894
    iput-boolean v0, p0, Landroidx/d/b/b/s;->r:Z

    .line 901
    iput v0, p0, Landroidx/d/b/b/s;->v:I

    .line 905
    iput-boolean v0, p0, Landroidx/d/b/b/s;->az:Z

    .line 906
    new-instance v2, Landroidx/d/b/a/h;

    invoke-direct {v2}, Landroidx/d/b/a/h;-><init>()V

    iput-object v2, p0, Landroidx/d/b/b/s;->aA:Landroidx/d/b/a/h;

    .line 907
    new-instance v2, Landroidx/d/b/b/s$a;

    invoke-direct {v2, p0}, Landroidx/d/b/b/s$a;-><init>(Landroidx/d/b/b/s;)V

    iput-object v2, p0, Landroidx/d/b/b/s;->aB:Landroidx/d/b/b/s$a;

    .line 911
    iput-boolean v1, p0, Landroidx/d/b/b/s;->y:Z

    .line 918
    iput-boolean v0, p0, Landroidx/d/b/b/s;->D:Z

    .line 923
    iput-boolean v0, p0, Landroidx/d/b/b/s;->aD:Z

    const/4 v1, 0x0

    .line 925
    iput-object v1, p0, Landroidx/d/b/b/s;->aE:Ljava/util/ArrayList;

    .line 926
    iput-object v1, p0, Landroidx/d/b/b/s;->aF:Ljava/util/ArrayList;

    .line 927
    iput-object v1, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    .line 928
    iput v0, p0, Landroidx/d/b/b/s;->aH:I

    const-wide/16 v2, -0x1

    .line 929
    iput-wide v2, p0, Landroidx/d/b/b/s;->aI:J

    .line 930
    iput p1, p0, Landroidx/d/b/b/s;->aJ:F

    .line 931
    iput v0, p0, Landroidx/d/b/b/s;->aK:I

    .line 932
    iput p1, p0, Landroidx/d/b/b/s;->aL:F

    .line 933
    iput-boolean v0, p0, Landroidx/d/b/b/s;->I:Z

    .line 940
    iput-boolean v0, p0, Landroidx/d/b/b/s;->N:Z

    .line 948
    new-instance p1, Landroidx/d/b/b/g;

    invoke-direct {p1}, Landroidx/d/b/b/g;-><init>()V

    iput-object p1, p0, Landroidx/d/b/b/s;->aM:Landroidx/d/b/b/g;

    .line 949
    iput-boolean v0, p0, Landroidx/d/b/b/s;->aN:Z

    .line 959
    sget-object p1, Landroidx/d/b/b/s$h;->a:Landroidx/d/b/b/s$h;

    iput-object p1, p0, Landroidx/d/b/b/s;->V:Landroidx/d/b/b/s$h;

    .line 2336
    new-instance p1, Landroidx/d/b/b/s$c;

    invoke-direct {p1, p0}, Landroidx/d/b/b/s$c;-><init>(Landroidx/d/b/b/s;)V

    iput-object p1, p0, Landroidx/d/b/b/s;->W:Landroidx/d/b/b/s$c;

    .line 3182
    iput-boolean v0, p0, Landroidx/d/b/b/s;->aQ:Z

    .line 3388
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/d/b/b/s;->aR:Landroid/graphics/RectF;

    .line 3389
    iput-object v1, p0, Landroidx/d/b/b/s;->aS:Landroid/view/View;

    .line 3746
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/d/b/b/s;->aa:Ljava/util/ArrayList;

    .line 969
    invoke-direct {p0, p2}, Landroidx/d/b/b/s;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 973
    invoke-direct {p0, p1, p2, p3}, Landroidx/d/e/d;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 876
    iput p1, p0, Landroidx/d/b/b/s;->k:F

    const/4 p3, -0x1

    .line 877
    iput p3, p0, Landroidx/d/b/b/s;->an:I

    .line 878
    iput p3, p0, Landroidx/d/b/b/s;->l:I

    .line 879
    iput p3, p0, Landroidx/d/b/b/s;->ao:I

    const/4 p3, 0x0

    .line 880
    iput p3, p0, Landroidx/d/b/b/s;->ap:I

    .line 881
    iput p3, p0, Landroidx/d/b/b/s;->aq:I

    const/4 v0, 0x1

    .line 882
    iput-boolean v0, p0, Landroidx/d/b/b/s;->ar:Z

    .line 884
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    const-wide/16 v1, 0x0

    .line 886
    iput-wide v1, p0, Landroidx/d/b/b/s;->as:J

    const/high16 v1, 0x3f800000    # 1.0f

    .line 887
    iput v1, p0, Landroidx/d/b/b/s;->at:F

    .line 888
    iput p1, p0, Landroidx/d/b/b/s;->n:F

    .line 889
    iput p1, p0, Landroidx/d/b/b/s;->o:F

    .line 891
    iput p1, p0, Landroidx/d/b/b/s;->p:F

    .line 893
    iput-boolean p3, p0, Landroidx/d/b/b/s;->q:Z

    .line 894
    iput-boolean p3, p0, Landroidx/d/b/b/s;->r:Z

    .line 901
    iput p3, p0, Landroidx/d/b/b/s;->v:I

    .line 905
    iput-boolean p3, p0, Landroidx/d/b/b/s;->az:Z

    .line 906
    new-instance v1, Landroidx/d/b/a/h;

    invoke-direct {v1}, Landroidx/d/b/a/h;-><init>()V

    iput-object v1, p0, Landroidx/d/b/b/s;->aA:Landroidx/d/b/a/h;

    .line 907
    new-instance v1, Landroidx/d/b/b/s$a;

    invoke-direct {v1, p0}, Landroidx/d/b/b/s$a;-><init>(Landroidx/d/b/b/s;)V

    iput-object v1, p0, Landroidx/d/b/b/s;->aB:Landroidx/d/b/b/s$a;

    .line 911
    iput-boolean v0, p0, Landroidx/d/b/b/s;->y:Z

    .line 918
    iput-boolean p3, p0, Landroidx/d/b/b/s;->D:Z

    .line 923
    iput-boolean p3, p0, Landroidx/d/b/b/s;->aD:Z

    const/4 v0, 0x0

    .line 925
    iput-object v0, p0, Landroidx/d/b/b/s;->aE:Ljava/util/ArrayList;

    .line 926
    iput-object v0, p0, Landroidx/d/b/b/s;->aF:Ljava/util/ArrayList;

    .line 927
    iput-object v0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    .line 928
    iput p3, p0, Landroidx/d/b/b/s;->aH:I

    const-wide/16 v1, -0x1

    .line 929
    iput-wide v1, p0, Landroidx/d/b/b/s;->aI:J

    .line 930
    iput p1, p0, Landroidx/d/b/b/s;->aJ:F

    .line 931
    iput p3, p0, Landroidx/d/b/b/s;->aK:I

    .line 932
    iput p1, p0, Landroidx/d/b/b/s;->aL:F

    .line 933
    iput-boolean p3, p0, Landroidx/d/b/b/s;->I:Z

    .line 940
    iput-boolean p3, p0, Landroidx/d/b/b/s;->N:Z

    .line 948
    new-instance p1, Landroidx/d/b/b/g;

    invoke-direct {p1}, Landroidx/d/b/b/g;-><init>()V

    iput-object p1, p0, Landroidx/d/b/b/s;->aM:Landroidx/d/b/b/g;

    .line 949
    iput-boolean p3, p0, Landroidx/d/b/b/s;->aN:Z

    .line 959
    sget-object p1, Landroidx/d/b/b/s$h;->a:Landroidx/d/b/b/s$h;

    iput-object p1, p0, Landroidx/d/b/b/s;->V:Landroidx/d/b/b/s$h;

    .line 2336
    new-instance p1, Landroidx/d/b/b/s$c;

    invoke-direct {p1, p0}, Landroidx/d/b/b/s$c;-><init>(Landroidx/d/b/b/s;)V

    iput-object p1, p0, Landroidx/d/b/b/s;->W:Landroidx/d/b/b/s$c;

    .line 3182
    iput-boolean p3, p0, Landroidx/d/b/b/s;->aQ:Z

    .line 3388
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Landroidx/d/b/b/s;->aR:Landroid/graphics/RectF;

    .line 3389
    iput-object v0, p0, Landroidx/d/b/b/s;->aS:Landroid/view/View;

    .line 3746
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/d/b/b/s;->aa:Ljava/util/ArrayList;

    .line 974
    invoke-direct {p0, p2}, Landroidx/d/b/b/s;->b(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Landroidx/d/b/b/s;)I
    .locals 0

    .line 859
    iget p0, p0, Landroidx/d/b/b/s;->ao:I

    return p0
.end method

.method private a(Landroidx/d/b/b/s;II)V
    .locals 1

    .line 4045
    iget-object v0, p0, Landroidx/d/b/b/s;->aw:Landroidx/d/b/b/s$g;

    if-eqz v0, :cond_0

    .line 4046
    iget-object v0, p0, Landroidx/d/b/b/s;->aw:Landroidx/d/b/b/s$g;

    invoke-interface {v0, p0, p2, p3}, Landroidx/d/b/b/s$g;->a(Landroidx/d/b/b/s;II)V

    .line 4048
    :cond_0
    iget-object v0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 4049
    iget-object p0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/b/b/s$g;

    .line 4050
    invoke-interface {v0, p1, p2, p3}, Landroidx/d/b/b/s$g;->a(Landroidx/d/b/b/s;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Landroidx/d/b/b/s;IIIIZZ)V
    .locals 0

    .line 859
    invoke-virtual/range {p0 .. p6}, Landroidx/d/b/b/s;->a(IIIIZZ)V

    return-void
.end method

.method static synthetic a(Landroidx/d/b/b/s;Landroidx/d/c/b/f;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/d/b/b/s;->a(Landroidx/d/c/b/f;III)V

    return-void
.end method

.method static synthetic a(Landroidx/d/b/b/s;ZLandroid/view/View;Landroidx/d/c/b/e;Landroidx/d/e/d$a;Landroid/util/SparseArray;)V
    .locals 0

    .line 859
    invoke-virtual/range {p0 .. p5}, Landroidx/d/b/b/s;->a(ZLandroid/view/View;Landroidx/d/c/b/e;Landroidx/d/e/d$a;Landroid/util/SparseArray;)V

    return-void
.end method

.method private a(Landroidx/d/b/b/u$a;)V
    .locals 3

    const-string v0, "MotionLayout"

    .line 3357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHECK: transition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/d/b/b/s;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/d/b/b/u$a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "MotionLayout"

    .line 3358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CHECK: transition.setDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/d/b/b/u$a;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    invoke-virtual {p1}, Landroidx/d/b/b/u$a;->e()I

    move-result p0

    invoke-virtual {p1}, Landroidx/d/b/b/u$a;->d()I

    move-result p1

    if-ne p0, p1, :cond_0

    const-string p0, "MotionLayout"

    const-string p1, "CHECK: start and end constraint set should not be the same!"

    .line 3360
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static a(FFF)Z
    .locals 5

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    if-lez v1, :cond_1

    div-float v0, p0, p2

    mul-float/2addr p0, v0

    mul-float/2addr p2, v0

    mul-float/2addr p2, v0

    div-float/2addr p2, v4

    sub-float/2addr p0, p2

    add-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    move v2, v3

    :cond_0
    return v2

    :cond_1
    neg-float v1, p0

    div-float/2addr v1, p2

    mul-float/2addr p0, v1

    mul-float/2addr p2, v1

    mul-float/2addr p2, v1

    div-float/2addr p2, v4

    add-float/2addr p0, p2

    add-float/2addr p1, p0

    cmpg-float p0, p1, v0

    if-gez p0, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method private a(FFLandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 3401
    instance-of v0, p3, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3402
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    .line 3403
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    .line 3405
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3406
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, p2

    invoke-direct {p0, v6, v7, v5, p4}, Landroidx/d/b/b/s;->a(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3411
    :cond_1
    iget-object v0, p0, Landroidx/d/b/b/s;->aR:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, p1

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p2

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p1, v5

    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr p2, v5

    invoke-virtual {v0, v3, v4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3413
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_2

    .line 3414
    iget-object p0, p0, Landroidx/d/b/b/s;->aR:Landroid/graphics/RectF;

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 3415
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    .line 3420
    :cond_2
    invoke-virtual {p3, p4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method static synthetic b(Landroidx/d/b/b/s;)I
    .locals 0

    .line 859
    iget p0, p0, Landroidx/d/b/b/s;->an:I

    return p0
.end method

.method private b(ILandroidx/d/e/g;)V
    .locals 8

    .line 3326
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/d/b/b/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 3327
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_2

    .line 3329
    invoke-virtual {p0, v2}, Landroidx/d/b/b/s;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3330
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v3, :cond_0

    const-string v3, "MotionLayout"

    .line 3332
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CHECK: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ALL VIEWS SHOULD HAVE ID\'s "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3333
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " does not!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3332
    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    :cond_0
    invoke-virtual {p2, v5}, Landroidx/d/e/g;->k(I)Landroidx/d/e/g$a;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "MotionLayout"

    .line 3337
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CHECK: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " NO CONSTRAINTS for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroidx/d/b/b/c;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3340
    :cond_2
    invoke-virtual {p2}, Landroidx/d/e/g;->b()[I

    move-result-object v0

    .line 3341
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 3342
    aget v2, v0, v1

    .line 3343
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Landroidx/d/b/b/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    .line 3344
    aget v5, v0, v1

    invoke-virtual {p0, v5}, Landroidx/d/b/b/s;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v5, "MotionLayout"

    .line 3345
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CHECK: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " NO View matches id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3347
    :cond_3
    invoke-virtual {p2, v2}, Landroidx/d/e/g;->e(I)I

    move-result v5

    if-ne v5, v3, :cond_4

    const-string v5, "MotionLayout"

    .line 3348
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CHECK: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") no LAYOUT_HEIGHT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    :cond_4
    invoke-virtual {p2, v2}, Landroidx/d/e/g;->f(I)I

    move-result v2

    if-ne v2, v3, :cond_5

    const-string v2, "MotionLayout"

    .line 3351
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CHECK: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") no LAYOUT_HEIGHT"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method private b(Landroid/util/AttributeSet;)V
    .locals 9

    .line 3225
    invoke-virtual {p0}, Landroidx/d/b/b/s;->isInEditMode()Z

    move-result v0

    sput-boolean v0, Landroidx/d/b/b/s;->h:Z

    const/4 v0, -0x1

    if-eqz p1, :cond_9

    .line 3227
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/d/e/m$m;->MotionLayout:[I

    .line 3228
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 3229
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v5, v2

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_7

    .line 3233
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 3234
    sget v7, Landroidx/d/e/m$m;->MotionLayout_layoutDescription:I

    if-ne v6, v7, :cond_0

    .line 3235
    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 3236
    new-instance v7, Landroidx/d/b/b/u;

    invoke-virtual {p0}, Landroidx/d/b/b/s;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8, p0, v6}, Landroidx/d/b/b/u;-><init>(Landroid/content/Context;Landroidx/d/b/b/s;I)V

    iput-object v7, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    goto :goto_2

    .line 3237
    :cond_0
    sget v7, Landroidx/d/e/m$m;->MotionLayout_currentState:I

    if-ne v6, v7, :cond_1

    .line 3238
    invoke-virtual {p1, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, Landroidx/d/b/b/s;->l:I

    goto :goto_2

    .line 3239
    :cond_1
    sget v7, Landroidx/d/e/m$m;->MotionLayout_motionProgress:I

    if-ne v6, v7, :cond_2

    const/4 v7, 0x0

    .line 3240
    invoke-virtual {p1, v6, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Landroidx/d/b/b/s;->p:F

    .line 3241
    iput-boolean v2, p0, Landroidx/d/b/b/s;->q:Z

    goto :goto_2

    .line 3242
    :cond_2
    sget v7, Landroidx/d/e/m$m;->MotionLayout_applyMotionScene:I

    if-ne v6, v7, :cond_3

    .line 3243
    invoke-virtual {p1, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    goto :goto_2

    .line 3244
    :cond_3
    sget v7, Landroidx/d/e/m$m;->MotionLayout_showPaths:I

    if-ne v6, v7, :cond_5

    .line 3245
    iget v7, p0, Landroidx/d/b/b/s;->v:I

    if-nez v7, :cond_6

    .line 3246
    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x2

    goto :goto_1

    :cond_4
    move v6, v3

    :goto_1
    iput v6, p0, Landroidx/d/b/b/s;->v:I

    goto :goto_2

    .line 3248
    :cond_5
    sget v7, Landroidx/d/e/m$m;->MotionLayout_motionDebug:I

    if-ne v6, v7, :cond_6

    .line 3249
    invoke-virtual {p1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, p0, Landroidx/d/b/b/s;->v:I

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3252
    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 3253
    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-nez p1, :cond_8

    const-string p1, "MotionLayout"

    const-string v1, "WARNING NO app:layoutDescription tag"

    .line 3254
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-nez v5, :cond_9

    const/4 p1, 0x0

    .line 3257
    iput-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    .line 3260
    :cond_9
    iget p1, p0, Landroidx/d/b/b/s;->v:I

    if-eqz p1, :cond_a

    .line 3261
    invoke-direct {p0}, Landroidx/d/b/b/s;->p()V

    .line 3263
    :cond_a
    iget p1, p0, Landroidx/d/b/b/s;->l:I

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-eqz p1, :cond_b

    .line 3264
    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p1}, Landroidx/d/b/b/u;->d()I

    move-result p1

    iput p1, p0, Landroidx/d/b/b/s;->l:I

    .line 3265
    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p1}, Landroidx/d/b/b/u;->d()I

    move-result p1

    iput p1, p0, Landroidx/d/b/b/s;->an:I

    .line 3269
    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p1}, Landroidx/d/b/b/u;->e()I

    move-result p1

    iput p1, p0, Landroidx/d/b/b/s;->ao:I

    :cond_b
    return-void
.end method

.method static synthetic b(Landroidx/d/b/b/s;Landroidx/d/c/b/f;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/d/b/b/s;->a(Landroidx/d/c/b/f;III)V

    return-void
.end method

.method static synthetic c(Landroidx/d/b/b/s;)Landroidx/d/c/b/f;
    .locals 0

    .line 859
    iget-object p0, p0, Landroidx/d/b/b/s;->ad:Landroidx/d/c/b/f;

    return-object p0
.end method

.method static synthetic c(Landroidx/d/b/b/s;Landroidx/d/c/b/f;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/d/b/b/s;->a(Landroidx/d/c/b/f;III)V

    return-void
.end method

.method static synthetic d(Landroidx/d/b/b/s;)Landroidx/d/c/b/f;
    .locals 0

    .line 859
    iget-object p0, p0, Landroidx/d/b/b/s;->ad:Landroidx/d/c/b/f;

    return-object p0
.end method

.method static synthetic d(Landroidx/d/b/b/s;Landroidx/d/c/b/f;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/d/b/b/s;->a(Landroidx/d/c/b/f;III)V

    return-void
.end method

.method static synthetic e(Landroidx/d/b/b/s;)Landroidx/d/c/b/f;
    .locals 0

    .line 859
    iget-object p0, p0, Landroidx/d/b/b/s;->ad:Landroidx/d/c/b/f;

    return-object p0
.end method

.method static synthetic e(Landroidx/d/b/b/s;Landroidx/d/c/b/f;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/d/b/b/s;->a(Landroidx/d/c/b/f;III)V

    return-void
.end method

.method static synthetic f(Landroidx/d/b/b/s;)Landroidx/d/c/b/f;
    .locals 0

    .line 859
    iget-object p0, p0, Landroidx/d/b/b/s;->ad:Landroidx/d/c/b/f;

    return-object p0
.end method

.method static synthetic f(Landroidx/d/b/b/s;Landroidx/d/c/b/f;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/d/b/b/s;->a(Landroidx/d/c/b/f;III)V

    return-void
.end method

.method static synthetic g(Landroidx/d/b/b/s;Landroidx/d/c/b/f;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/d/b/b/s;->a(Landroidx/d/c/b/f;III)V

    return-void
.end method

.method static synthetic g(Landroidx/d/b/b/s;)Z
    .locals 0

    .line 859
    invoke-virtual {p0}, Landroidx/d/b/b/s;->j()Z

    move-result p0

    return p0
.end method

.method static synthetic h(Landroidx/d/b/b/s;Landroidx/d/c/b/f;III)V
    .locals 0

    .line 859
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/d/b/b/s;->a(Landroidx/d/c/b/f;III)V

    return-void
.end method

.method static synthetic h(Landroidx/d/b/b/s;)Z
    .locals 0

    .line 859
    invoke-virtual {p0}, Landroidx/d/b/b/s;->j()Z

    move-result p0

    return p0
.end method

.method static synthetic i(Landroidx/d/b/b/s;)I
    .locals 0

    .line 859
    iget p0, p0, Landroidx/d/b/b/s;->ap:I

    return p0
.end method

.method static synthetic j(Landroidx/d/b/b/s;)I
    .locals 0

    .line 859
    iget p0, p0, Landroidx/d/b/b/s;->aq:I

    return p0
.end method

.method static synthetic k(Landroidx/d/b/b/s;)V
    .locals 0

    .line 859
    invoke-direct {p0}, Landroidx/d/b/b/s;->l()V

    return-void
.end method

.method private l()V
    .locals 12

    .line 1519
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getChildCount()I

    move-result v0

    .line 1521
    iget-object v1, p0, Landroidx/d/b/b/s;->W:Landroidx/d/b/b/s$c;

    invoke-virtual {v1}, Landroidx/d/b/b/s$c;->b()V

    const/4 v1, 0x1

    .line 1522
    iput-boolean v1, p0, Landroidx/d/b/b/s;->q:Z

    .line 1524
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getWidth()I

    move-result v8

    .line 1525
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getHeight()I

    move-result v9

    .line 1526
    iget-object v2, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v2}, Landroidx/d/b/b/u;->h()I

    move-result v2

    const/4 v10, 0x0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    move v3, v10

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1529
    iget-object v4, p0, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    invoke-virtual {p0, v3}, Landroidx/d/b/b/s;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/d/b/b/p;

    if-eqz v4, :cond_0

    .line 1531
    invoke-virtual {v4, v2}, Landroidx/d/b/b/p;->b(I)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v11, v10

    :goto_1
    if-ge v11, v0, :cond_3

    .line 1537
    iget-object v2, p0, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    invoke-virtual {p0, v11}, Landroidx/d/b/b/s;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/b/b/p;

    if-eqz v2, :cond_2

    .line 1539
    iget-object v3, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v3, v2}, Landroidx/d/b/b/u;->a(Landroidx/d/b/b/p;)V

    .line 1540
    iget v5, p0, Landroidx/d/b/b/s;->at:F

    invoke-virtual {p0}, Landroidx/d/b/b/s;->getNanoTime()J

    move-result-wide v6

    move v3, v8

    move v4, v9

    invoke-virtual/range {v2 .. v7}, Landroidx/d/b/b/p;->a(IIFJ)V

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1544
    :cond_3
    iget-object v2, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v2}, Landroidx/d/b/b/u;->i()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_e

    float-to-double v3, v2

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v10

    .line 1548
    :goto_2
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, -0x800001

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    move v8, v4

    move v7, v5

    move v6, v10

    :goto_3
    if-ge v6, v0, :cond_7

    .line 1551
    iget-object v9, p0, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    invoke-virtual {p0, v6}, Landroidx/d/b/b/s;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/d/b/b/p;

    .line 1552
    iget v11, v9, Landroidx/d/b/b/p;->q:F

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_5

    .line 1556
    :cond_5
    invoke-virtual {v9}, Landroidx/d/b/b/p;->c()F

    move-result v11

    .line 1557
    invoke-virtual {v9}, Landroidx/d/b/b/p;->d()F

    move-result v9

    if-eqz v3, :cond_6

    sub-float/2addr v9, v11

    goto :goto_4

    :cond_6
    add-float/2addr v9, v11

    .line 1559
    :goto_4
    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1560
    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    move v1, v10

    :goto_5
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v1, :cond_c

    move v1, v10

    :goto_6
    if-ge v1, v0, :cond_9

    .line 1567
    iget-object v7, p0, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Landroidx/d/b/b/s;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/d/b/b/p;

    .line 1568
    iget v8, v7, Landroidx/d/b/b/p;->q:F

    invoke-static {v8}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_8

    .line 1569
    iget v8, v7, Landroidx/d/b/b/p;->q:F

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 1570
    iget v7, v7, Landroidx/d/b/b/p;->q:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    :goto_7
    if-ge v10, v0, :cond_e

    .line 1574
    iget-object v1, p0, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    invoke-virtual {p0, v10}, Landroidx/d/b/b/s;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/b/b/p;

    .line 1575
    iget v7, v1, Landroidx/d/b/b/p;->q:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_b

    sub-float v7, v6, v2

    div-float v7, v6, v7

    .line 1577
    iput v7, v1, Landroidx/d/b/b/p;->s:F

    if-eqz v3, :cond_a

    .line 1579
    iget v7, v1, Landroidx/d/b/b/p;->q:F

    sub-float v7, v4, v7

    sub-float v8, v4, v5

    div-float/2addr v7, v8

    mul-float/2addr v7, v2

    sub-float v7, v2, v7

    iput v7, v1, Landroidx/d/b/b/p;->r:F

    goto :goto_8

    .line 1581
    :cond_a
    iget v7, v1, Landroidx/d/b/b/p;->q:F

    sub-float/2addr v7, v5

    mul-float/2addr v7, v2

    sub-float v8, v4, v5

    div-float/2addr v7, v8

    sub-float v7, v2, v7

    iput v7, v1, Landroidx/d/b/b/p;->r:F

    :cond_b
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_c
    :goto_9
    if-ge v10, v0, :cond_e

    .line 1587
    iget-object v1, p0, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    invoke-virtual {p0, v10}, Landroidx/d/b/b/s;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/b/b/p;

    .line 1588
    invoke-virtual {v1}, Landroidx/d/b/b/p;->c()F

    move-result v4

    .line 1589
    invoke-virtual {v1}, Landroidx/d/b/b/p;->d()F

    move-result v5

    if-eqz v3, :cond_d

    sub-float/2addr v5, v4

    goto :goto_a

    :cond_d
    add-float/2addr v5, v4

    :goto_a
    sub-float v4, v6, v2

    div-float v4, v6, v4

    .line 1591
    iput v4, v1, Landroidx/d/b/b/p;->s:F

    sub-float/2addr v5, v7

    mul-float/2addr v5, v2

    sub-float v4, v8, v7

    div-float/2addr v5, v4

    sub-float v4, v2, v5

    .line 1592
    iput v4, v1, Landroidx/d/b/b/p;->r:F

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_e
    return-void
.end method

.method private m()V
    .locals 4

    .line 1770
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1772
    invoke-virtual {p0, v1}, Landroidx/d/b/b/s;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1773
    iget-object v3, p0, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/d/b/b/p;

    if-nez v3, :cond_0

    goto :goto_1

    .line 1777
    :cond_0
    invoke-virtual {v3, v2}, Landroidx/d/b/b/p;->b(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private n()V
    .locals 6

    const/4 v0, 0x0

    .line 2882
    :goto_0
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2883
    invoke-virtual {p0, v0}, Landroidx/d/b/b/s;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "MotionLayout"

    .line 2884
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroidx/d/b/b/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroidx/d/b/b/c;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2885
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Landroidx/d/b/b/s;->l:I

    invoke-static {v4, v5}, Landroidx/d/b/b/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroidx/d/b/b/c;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2886
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2887
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2884
    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private o()V
    .locals 11

    .line 2955
    iget v0, p0, Landroidx/d/b/b/s;->p:F

    iget v1, p0, Landroidx/d/b/b/s;->o:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    .line 2956
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getNanoTime()J

    move-result-wide v1

    .line 2959
    iget-object v3, p0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    instance-of v3, v3, Landroidx/d/b/a/h;

    const v4, 0x3089705f    # 1.0E-9f

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 2960
    iget-wide v6, p0, Landroidx/d/b/b/s;->au:J

    sub-long v6, v1, v6

    long-to-float v3, v6

    mul-float/2addr v3, v0

    mul-float/2addr v3, v4

    iget v6, p0, Landroidx/d/b/b/s;->at:F

    div-float/2addr v3, v6

    goto :goto_0

    :cond_0
    move v3, v5

    .line 2962
    :goto_0
    iget v6, p0, Landroidx/d/b/b/s;->o:F

    add-float/2addr v6, v3

    .line 2965
    iget-boolean v3, p0, Landroidx/d/b/b/s;->av:Z

    if-eqz v3, :cond_1

    .line 2966
    iget v6, p0, Landroidx/d/b/b/s;->p:F

    :cond_1
    cmpl-float v3, v0, v5

    const/4 v7, 0x0

    if-lez v3, :cond_2

    .line 2969
    iget v8, p0, Landroidx/d/b/b/s;->p:F

    cmpl-float v8, v6, v8

    if-gez v8, :cond_3

    :cond_2
    cmpg-float v8, v0, v5

    if-gtz v8, :cond_4

    iget v8, p0, Landroidx/d/b/b/s;->p:F

    cmpg-float v8, v6, v8

    if-gtz v8, :cond_4

    .line 2971
    :cond_3
    iget v6, p0, Landroidx/d/b/b/s;->p:F

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    move v8, v7

    .line 2974
    :goto_1
    iget-object v9, p0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    if-eqz v9, :cond_6

    if-nez v8, :cond_6

    .line 2975
    iget-boolean v8, p0, Landroidx/d/b/b/s;->az:Z

    if-eqz v8, :cond_5

    .line 2976
    iget-wide v8, p0, Landroidx/d/b/b/s;->as:J

    sub-long/2addr v1, v8

    long-to-float v1, v1

    mul-float/2addr v1, v4

    .line 2977
    iget-object v2, p0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    invoke-interface {v2, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    goto :goto_2

    .line 2979
    :cond_5
    iget-object v1, p0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v6}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v6

    :cond_6
    :goto_2
    if-lez v3, :cond_7

    .line 2982
    iget v1, p0, Landroidx/d/b/b/s;->p:F

    cmpl-float v1, v6, v1

    if-gez v1, :cond_8

    :cond_7
    cmpg-float v0, v0, v5

    if-gtz v0, :cond_9

    iget v0, p0, Landroidx/d/b/b/s;->p:F

    cmpg-float v0, v6, v0

    if-gtz v0, :cond_9

    .line 2984
    :cond_8
    iget v6, p0, Landroidx/d/b/b/s;->p:F

    .line 2986
    :cond_9
    iput v6, p0, Landroidx/d/b/b/s;->U:F

    .line 2987
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getChildCount()I

    move-result v8

    .line 2988
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getNanoTime()J

    move-result-wide v9

    :goto_3
    if-ge v7, v8, :cond_b

    .line 2990
    invoke-virtual {p0, v7}, Landroidx/d/b/b/s;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2991
    iget-object v0, p0, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/b/b/p;

    if-eqz v0, :cond_a

    .line 2993
    iget-object v5, p0, Landroidx/d/b/b/s;->aM:Landroidx/d/b/b/g;

    move v2, v6

    move-wide v3, v9

    invoke-virtual/range {v0 .. v5}, Landroidx/d/b/b/p;->a(Landroid/view/View;FJLandroidx/d/b/b/g;)Z

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2996
    :cond_b
    iget-boolean v0, p0, Landroidx/d/b/b/s;->N:Z

    if-eqz v0, :cond_c

    .line 2997
    invoke-virtual {p0}, Landroidx/d/b/b/s;->requestLayout()V

    :cond_c
    return-void
.end method

.method private p()V
    .locals 10

    .line 3286
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-nez v0, :cond_0

    const-string p0, "MotionLayout"

    const-string v0, "CHECK: motion scene not set! set \"app:layoutDescription=\"@xml/file\""

    .line 3287
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3291
    :cond_0
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v0}, Landroidx/d/b/b/u;->d()I

    move-result v0

    iget-object v1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget-object v2, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v2}, Landroidx/d/b/b/u;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroidx/d/b/b/s;->b(ILandroidx/d/e/g;)V

    .line 3292
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 3293
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 3294
    iget-object v2, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v2}, Landroidx/d/b/b/u;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/d/b/b/u$a;

    .line 3295
    iget-object v4, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget-object v4, v4, Landroidx/d/b/b/u;->f:Landroidx/d/b/b/u$a;

    if-ne v3, v4, :cond_2

    const-string v4, "MotionLayout"

    const-string v5, "CHECK: CURRENT"

    .line 3296
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    :cond_2
    invoke-direct {p0, v3}, Landroidx/d/b/b/s;->a(Landroidx/d/b/b/u$a;)V

    .line 3299
    invoke-virtual {v3}, Landroidx/d/b/b/u$a;->e()I

    move-result v4

    .line 3300
    invoke-virtual {v3}, Landroidx/d/b/b/u$a;->d()I

    move-result v3

    .line 3301
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Landroidx/d/b/b/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 3302
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Landroidx/d/b/b/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    .line 3303
    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-ne v7, v3, :cond_3

    const-string v7, "MotionLayout"

    .line 3305
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CHECK: two transitions with the same start and end "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3308
    :cond_3
    invoke-virtual {v1, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-ne v7, v4, :cond_4

    const-string v7, "MotionLayout"

    .line 3310
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CHECK: you can\'t have reverse transitions"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "->"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    :cond_4
    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 3314
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 3315
    iget-object v6, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v6, v4}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v4, "MotionLayout"

    .line 3316
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " no such constraintSetStart "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3319
    :cond_5
    iget-object v4, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v4, v3}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "MotionLayout"

    .line 3320
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " no such constraintSetEnd "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private q()V
    .locals 6

    .line 3718
    iget-object v0, p0, Landroidx/d/b/b/s;->aw:Landroidx/d/b/b/s$g;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 3719
    :cond_0
    iget v0, p0, Landroidx/d/b/b/s;->aL:F

    iget v1, p0, Landroidx/d/b/b/s;->n:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 3720
    iget v0, p0, Landroidx/d/b/b/s;->aK:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 3721
    iget-object v0, p0, Landroidx/d/b/b/s;->aw:Landroidx/d/b/b/s$g;

    if-eqz v0, :cond_1

    .line 3722
    iget-object v0, p0, Landroidx/d/b/b/s;->aw:Landroidx/d/b/b/s$g;

    iget v3, p0, Landroidx/d/b/b/s;->an:I

    iget v4, p0, Landroidx/d/b/b/s;->ao:I

    invoke-interface {v0, p0, v3, v4}, Landroidx/d/b/b/s$g;->a(Landroidx/d/b/b/s;II)V

    .line 3724
    :cond_1
    iget-object v0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 3725
    iget-object v0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/d/b/b/s$g;

    .line 3726
    iget v4, p0, Landroidx/d/b/b/s;->an:I

    iget v5, p0, Landroidx/d/b/b/s;->ao:I

    invoke-interface {v3, p0, v4, v5}, Landroidx/d/b/b/s$g;->a(Landroidx/d/b/b/s;II)V

    goto :goto_0

    .line 3729
    :cond_2
    iput-boolean v1, p0, Landroidx/d/b/b/s;->I:Z

    .line 3731
    :cond_3
    iput v2, p0, Landroidx/d/b/b/s;->aK:I

    .line 3732
    iget v0, p0, Landroidx/d/b/b/s;->n:F

    iput v0, p0, Landroidx/d/b/b/s;->aL:F

    .line 3733
    iget-object v0, p0, Landroidx/d/b/b/s;->aw:Landroidx/d/b/b/s$g;

    if-eqz v0, :cond_4

    .line 3734
    iget-object v0, p0, Landroidx/d/b/b/s;->aw:Landroidx/d/b/b/s$g;

    iget v2, p0, Landroidx/d/b/b/s;->an:I

    iget v3, p0, Landroidx/d/b/b/s;->ao:I

    iget v4, p0, Landroidx/d/b/b/s;->n:F

    invoke-interface {v0, p0, v2, v3, v4}, Landroidx/d/b/b/s$g;->a(Landroidx/d/b/b/s;IIF)V

    .line 3736
    :cond_4
    iget-object v0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 3737
    iget-object v0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/b/b/s$g;

    .line 3738
    iget v3, p0, Landroidx/d/b/b/s;->an:I

    iget v4, p0, Landroidx/d/b/b/s;->ao:I

    iget v5, p0, Landroidx/d/b/b/s;->n:F

    invoke-interface {v2, p0, v3, v4, v5}, Landroidx/d/b/b/s$g;->a(Landroidx/d/b/b/s;IIF)V

    goto :goto_1

    .line 3741
    :cond_5
    iput-boolean v1, p0, Landroidx/d/b/b/s;->I:Z

    :cond_6
    return-void
.end method

.method private r()V
    .locals 5

    .line 3768
    iget-object v0, p0, Landroidx/d/b/b/s;->aw:Landroidx/d/b/b/s$g;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3771
    iput-boolean v0, p0, Landroidx/d/b/b/s;->I:Z

    .line 3772
    iget-object v0, p0, Landroidx/d/b/b/s;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3773
    iget-object v2, p0, Landroidx/d/b/b/s;->aw:Landroidx/d/b/b/s$g;

    if-eqz v2, :cond_3

    .line 3774
    iget-object v2, p0, Landroidx/d/b/b/s;->aw:Landroidx/d/b/b/s$g;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, p0, v3}, Landroidx/d/b/b/s$g;->a(Landroidx/d/b/b/s;I)V

    .line 3776
    :cond_3
    iget-object v2, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 3777
    iget-object v2, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/d/b/b/s$g;

    .line 3778
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, p0, v4}, Landroidx/d/b/b/s$g;->a(Landroidx/d/b/b/s;I)V

    goto :goto_0

    .line 3782
    :cond_4
    iget-object p0, p0, Landroidx/d/b/b/s;->aa:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)I
    .locals 1

    .line 3989
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3992
    :cond_0
    iget-object p0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p0, p1}, Landroidx/d/b/b/u;->b(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method protected a()Landroidx/d/b/b/s$d;
    .locals 0

    .line 992
    invoke-static {}, Landroidx/d/b/b/s$e;->e()Landroidx/d/b/b/s$e;

    move-result-object p0

    return-object p0
.end method

.method a(F)V
    .locals 4

    .line 1739
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-nez v0, :cond_0

    return-void

    .line 1743
    :cond_0
    iget v0, p0, Landroidx/d/b/b/s;->o:F

    iget v1, p0, Landroidx/d/b/b/s;->n:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/d/b/b/s;->av:Z

    if-eqz v0, :cond_1

    .line 1746
    iget v0, p0, Landroidx/d/b/b/s;->n:F

    iput v0, p0, Landroidx/d/b/b/s;->o:F

    .line 1749
    :cond_1
    iget v0, p0, Landroidx/d/b/b/s;->o:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 1752
    iput-boolean v0, p0, Landroidx/d/b/b/s;->az:Z

    .line 1753
    iget v1, p0, Landroidx/d/b/b/s;->o:F

    .line 1754
    iput p1, p0, Landroidx/d/b/b/s;->p:F

    .line 1755
    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p1}, Landroidx/d/b/b/u;->g()I

    move-result p1

    int-to-float p1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p1, v2

    iput p1, p0, Landroidx/d/b/b/s;->at:F

    .line 1756
    iget p1, p0, Landroidx/d/b/b/s;->p:F

    invoke-virtual {p0, p1}, Landroidx/d/b/b/s;->setProgress(F)V

    .line 1757
    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p1}, Landroidx/d/b/b/u;->f()Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    .line 1758
    iput-boolean v0, p0, Landroidx/d/b/b/s;->av:Z

    .line 1759
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getNanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/d/b/b/s;->as:J

    const/4 p1, 0x1

    .line 1760
    iput-boolean p1, p0, Landroidx/d/b/b/s;->q:Z

    .line 1761
    iput v1, p0, Landroidx/d/b/b/s;->n:F

    .line 1765
    iput v1, p0, Landroidx/d/b/b/s;->o:F

    .line 1766
    invoke-virtual {p0}, Landroidx/d/b/b/s;->invalidate()V

    return-void
.end method

.method public a(FF)V
    .locals 1

    .line 1347
    invoke-virtual {p0}, Landroidx/d/b/b/s;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1348
    iget-object v0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    if-nez v0, :cond_0

    .line 1349
    new-instance v0, Landroidx/d/b/b/s$f;

    invoke-direct {v0, p0}, Landroidx/d/b/b/s$f;-><init>(Landroidx/d/b/b/s;)V

    iput-object v0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    .line 1351
    :cond_0
    iget-object v0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    invoke-virtual {v0, p1}, Landroidx/d/b/b/s$f;->a(F)V

    .line 1352
    iget-object p0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    invoke-virtual {p0, p2}, Landroidx/d/b/b/s$f;->b(F)V

    return-void

    .line 1355
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/d/b/b/s;->setProgress(F)V

    .line 1356
    sget-object p1, Landroidx/d/b/b/s$h;->c:Landroidx/d/b/b/s$h;

    invoke-virtual {p0, p1}, Landroidx/d/b/b/s;->setState(Landroidx/d/b/b/s$h;)V

    .line 1357
    iput p2, p0, Landroidx/d/b/b/s;->k:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1358
    invoke-virtual {p0, p1}, Landroidx/d/b/b/s;->a(F)V

    return-void
.end method

.method public a(I)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1276
    :try_start_0
    new-instance v0, Landroidx/d/b/b/u;

    invoke-virtual {p0}, Landroidx/d/b/b/s;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/d/b/b/u;-><init>(Landroid/content/Context;Landroidx/d/b/b/s;I)V

    iput-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    .line 1277
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Landroidx/d/b/b/s;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1278
    :cond_0
    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p1, p0}, Landroidx/d/b/b/u;->b(Landroidx/d/b/b/s;)V

    .line 1279
    iget-object p1, p0, Landroidx/d/b/b/s;->W:Landroidx/d/b/b/s$c;

    iget-object v0, p0, Landroidx/d/b/b/s;->ad:Landroidx/d/c/b/f;

    iget-object v1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget v2, p0, Landroidx/d/b/b/s;->an:I

    invoke-virtual {v1, v2}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object v1

    iget-object v2, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget v3, p0, Landroidx/d/b/b/s;->ao:I

    invoke-virtual {v2, v3}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/d/b/b/s$c;->a(Landroidx/d/c/b/f;Landroidx/d/e/g;Landroidx/d/e/g;)V

    .line 1280
    invoke-virtual {p0}, Landroidx/d/b/b/s;->g()V

    .line 1281
    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p0}, Landroidx/d/b/b/s;->j()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/d/b/b/u;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1284
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unable to parse MotionScene file"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 1287
    iput-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    :cond_2
    :goto_0
    return-void
.end method

.method public a(IFF)V
    .locals 9

    .line 1617
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-nez v0, :cond_0

    return-void

    .line 1620
    :cond_0
    iget v0, p0, Landroidx/d/b/b/s;->o:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1624
    iput-boolean v0, p0, Landroidx/d/b/b/s;->az:Z

    .line 1625
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Landroidx/d/b/b/s;->as:J

    .line 1626
    iget-object v1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v1}, Landroidx/d/b/b/u;->g()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    iput v1, p0, Landroidx/d/b/b/s;->at:F

    .line 1628
    iput p2, p0, Landroidx/d/b/b/s;->p:F

    .line 1629
    iput-boolean v0, p0, Landroidx/d/b/b/s;->q:Z

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 1659
    :pswitch_0
    iget p1, p0, Landroidx/d/b/b/s;->o:F

    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v0}, Landroidx/d/b/b/u;->j()F

    move-result v0

    invoke-static {p3, p1, v0}, Landroidx/d/b/b/s;->a(FFF)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1660
    iget-object p1, p0, Landroidx/d/b/b/s;->aB:Landroidx/d/b/b/s$a;

    iget p2, p0, Landroidx/d/b/b/s;->o:F

    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v0}, Landroidx/d/b/b/u;->j()F

    move-result v0

    invoke-virtual {p1, p3, p2, v0}, Landroidx/d/b/b/s$a;->a(FFF)V

    .line 1661
    iget-object p1, p0, Landroidx/d/b/b/s;->aB:Landroidx/d/b/b/s$a;

    iput-object p1, p0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 1663
    :cond_2
    iget-object v2, p0, Landroidx/d/b/b/s;->aA:Landroidx/d/b/a/h;

    iget v3, p0, Landroidx/d/b/b/s;->o:F

    iget v6, p0, Landroidx/d/b/b/s;->at:F

    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    .line 1664
    invoke-virtual {p1}, Landroidx/d/b/b/u;->j()F

    move-result v7

    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p1}, Landroidx/d/b/b/u;->k()F

    move-result v8

    move v4, p2

    move v5, p3

    .line 1663
    invoke-virtual/range {v2 .. v8}, Landroidx/d/b/a/h;->a(FFFFFF)V

    .line 1665
    iput v1, p0, Landroidx/d/b/b/s;->k:F

    .line 1666
    iget p1, p0, Landroidx/d/b/b/s;->l:I

    .line 1667
    iput p2, p0, Landroidx/d/b/b/s;->p:F

    .line 1668
    iput p1, p0, Landroidx/d/b/b/s;->l:I

    .line 1669
    iget-object p1, p0, Landroidx/d/b/b/s;->aA:Landroidx/d/b/a/h;

    iput-object p1, p0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    goto :goto_1

    .line 1654
    :pswitch_1
    iget-object p1, p0, Landroidx/d/b/b/s;->aB:Landroidx/d/b/b/s$a;

    iget p2, p0, Landroidx/d/b/b/s;->o:F

    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v0}, Landroidx/d/b/b/u;->j()F

    move-result v0

    invoke-virtual {p1, p3, p2, v0}, Landroidx/d/b/b/s$a;->a(FFF)V

    .line 1655
    iget-object p1, p0, Landroidx/d/b/b/s;->aB:Landroidx/d/b/b/s$a;

    iput-object p1, p0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    goto :goto_1

    :pswitch_2
    if-ne p1, v0, :cond_3

    move p2, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    const/high16 p2, 0x3f800000    # 1.0f

    .line 1640
    :cond_4
    :goto_0
    iget-object v0, p0, Landroidx/d/b/b/s;->aA:Landroidx/d/b/a/h;

    iget v1, p0, Landroidx/d/b/b/s;->o:F

    iget v4, p0, Landroidx/d/b/b/s;->at:F

    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    .line 1641
    invoke-virtual {p1}, Landroidx/d/b/b/u;->j()F

    move-result v5

    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p1}, Landroidx/d/b/b/u;->k()F

    move-result v6

    move v2, p2

    move v3, p3

    .line 1640
    invoke-virtual/range {v0 .. v6}, Landroidx/d/b/a/h;->a(FFFFFF)V

    .line 1643
    iget p1, p0, Landroidx/d/b/b/s;->l:I

    .line 1644
    iput p2, p0, Landroidx/d/b/b/s;->p:F

    .line 1645
    iput p1, p0, Landroidx/d/b/b/s;->l:I

    .line 1646
    iget-object p1, p0, Landroidx/d/b/b/s;->aA:Landroidx/d/b/a/h;

    iput-object p1, p0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    :goto_1
    :pswitch_3
    const/4 p1, 0x0

    .line 1675
    iput-boolean p1, p0, Landroidx/d/b/b/s;->av:Z

    .line 1676
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getNanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/d/b/b/s;->as:J

    .line 1677
    invoke-virtual {p0}, Landroidx/d/b/b/s;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(IFFF[F)V
    .locals 2

    .line 3576
    iget-object v0, p0, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Landroidx/d/b/b/s;->g(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/b/b/p;

    if-eqz v0, :cond_0

    .line 3581
    invoke-virtual {v0, p2, p3, p4, p5}, Landroidx/d/b/b/p;->a(FFF[F)V

    .line 3582
    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result p1

    .line 3583
    iget p3, p0, Landroidx/d/b/b/s;->ax:F

    sub-float p3, p2, p3

    .line 3584
    iget p4, p0, Landroidx/d/b/b/s;->ay:F

    const/4 p4, 0x0

    cmpl-float p3, p3, p4

    .line 3590
    iput p2, p0, Landroidx/d/b/b/s;->ax:F

    .line 3591
    iput p1, p0, Landroidx/d/b/b/s;->ay:F

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 3593
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3594
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "MotionLayout"

    .line 3595
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WARNING could not find view id "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public a(II)V
    .locals 3

    .line 1154
    invoke-virtual {p0}, Landroidx/d/b/b/s;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1155
    iget-object v0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    if-nez v0, :cond_0

    .line 1156
    new-instance v0, Landroidx/d/b/b/s$f;

    invoke-direct {v0, p0}, Landroidx/d/b/b/s$f;-><init>(Landroidx/d/b/b/s;)V

    iput-object v0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    .line 1158
    :cond_0
    iget-object v0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    invoke-virtual {v0, p1}, Landroidx/d/b/b/s$f;->b(I)V

    .line 1159
    iget-object p0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    invoke-virtual {p0, p2}, Landroidx/d/b/b/s$f;->a(I)V

    return-void

    .line 1163
    :cond_1
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-eqz v0, :cond_2

    .line 1164
    iput p1, p0, Landroidx/d/b/b/s;->an:I

    .line 1165
    iput p2, p0, Landroidx/d/b/b/s;->ao:I

    .line 1171
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v0, p1, p2}, Landroidx/d/b/b/u;->a(II)V

    .line 1172
    iget-object v0, p0, Landroidx/d/b/b/s;->W:Landroidx/d/b/b/s$c;

    iget-object v1, p0, Landroidx/d/b/b/s;->ad:Landroidx/d/c/b/f;

    iget-object v2, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v2, p1}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object p1

    iget-object v2, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v2, p2}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Landroidx/d/b/b/s$c;->a(Landroidx/d/c/b/f;Landroidx/d/e/g;Landroidx/d/e/g;)V

    .line 1173
    invoke-virtual {p0}, Landroidx/d/b/b/s;->g()V

    const/4 p1, 0x0

    .line 1174
    iput p1, p0, Landroidx/d/b/b/s;->o:F

    .line 1175
    invoke-virtual {p0}, Landroidx/d/b/b/s;->b()V

    :cond_2
    return-void
.end method

.method public a(III)V
    .locals 1

    .line 1312
    sget-object v0, Landroidx/d/b/b/s$h;->b:Landroidx/d/b/b/s$h;

    invoke-virtual {p0, v0}, Landroidx/d/b/b/s;->setState(Landroidx/d/b/b/s$h;)V

    .line 1313
    iput p1, p0, Landroidx/d/b/b/s;->l:I

    const/4 v0, -0x1

    .line 1314
    iput v0, p0, Landroidx/d/b/b/s;->an:I

    .line 1315
    iput v0, p0, Landroidx/d/b/b/s;->ao:I

    .line 1316
    iget-object v0, p0, Landroidx/d/b/b/s;->af:Landroidx/d/e/e;

    if-eqz v0, :cond_0

    .line 1317
    iget-object p0, p0, Landroidx/d/b/b/s;->af:Landroidx/d/e/e;

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/d/e/e;->b(IFF)V

    goto :goto_0

    .line 1318
    :cond_0
    iget-object p2, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-eqz p2, :cond_1

    .line 1319
    iget-object p2, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p2, p1}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/d/e/g;->c(Landroidx/d/e/d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(ILandroidx/d/e/g;)V
    .locals 1

    .line 3908
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-eqz v0, :cond_0

    .line 3909
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v0, p1, p2}, Landroidx/d/b/b/u;->a(ILandroidx/d/e/g;)V

    .line 3911
    :cond_0
    invoke-virtual {p0}, Landroidx/d/b/b/s;->h()V

    .line 3912
    iget v0, p0, Landroidx/d/b/b/s;->l:I

    if-ne v0, p1, :cond_1

    .line 3913
    invoke-virtual {p2, p0}, Landroidx/d/e/g;->c(Landroidx/d/e/d;)V

    :cond_1
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 996
    invoke-virtual {p0, p1}, Landroidx/d/b/b/s;->e(I)Landroidx/d/b/b/u$a;

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    .line 998
    invoke-virtual {p1, p0}, Landroidx/d/b/b/u$a;->a(Z)V

    return-void

    .line 1001
    :cond_0
    iget-object p2, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget-object p2, p2, Landroidx/d/b/b/u;->f:Landroidx/d/b/b/u$a;

    if-ne p1, p2, :cond_2

    .line 1002
    iget-object p2, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget v0, p0, Landroidx/d/b/b/s;->l:I

    invoke-virtual {p2, v0}, Landroidx/d/b/b/u;->a(I)Ljava/util/List;

    move-result-object p2

    .line 1003
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/b/b/u$a;

    .line 1004
    invoke-virtual {v0}, Landroidx/d/b/b/u$a;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1005
    iget-object p0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iput-object v0, p0, Landroidx/d/b/b/u;->f:Landroidx/d/b/b/u$a;

    :cond_2
    const/4 p0, 0x0

    .line 1010
    invoke-virtual {p1, p0}, Landroidx/d/b/b/u$a;->a(Z)V

    return-void
.end method

.method public a(IZF)V
    .locals 2

    .line 3707
    iget-object v0, p0, Landroidx/d/b/b/s;->aw:Landroidx/d/b/b/s$g;

    if-eqz v0, :cond_0

    .line 3708
    iget-object v0, p0, Landroidx/d/b/b/s;->aw:Landroidx/d/b/b/s$g;

    invoke-interface {v0, p0, p1, p2, p3}, Landroidx/d/b/b/s$g;->a(Landroidx/d/b/b/s;IZF)V

    .line 3710
    :cond_0
    iget-object v0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3711
    iget-object v0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/b/b/s$g;

    .line 3712
    invoke-interface {v1, p0, p1, p2, p3}, Landroidx/d/b/b/s$g;->a(Landroidx/d/b/b/s;IZF)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/view/View;FF[FI)V
    .locals 11

    move-object v0, p0

    move-object v7, p4

    move/from16 v8, p5

    .line 1962
    iget v1, v0, Landroidx/d/b/b/s;->k:F

    .line 1963
    iget v2, v0, Landroidx/d/b/b/s;->o:F

    .line 1964
    iget-object v3, v0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    if-eqz v3, :cond_0

    const v1, 0x3727c5ac    # 1.0E-5f

    .line 1966
    iget v2, v0, Landroidx/d/b/b/s;->p:F

    iget v3, v0, Landroidx/d/b/b/s;->o:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    .line 1967
    iget-object v3, v0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    iget v4, v0, Landroidx/d/b/b/s;->o:F

    add-float/2addr v4, v1

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 1968
    iget-object v4, v0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    iget v5, v0, Landroidx/d/b/b/s;->o:F

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    mul-float/2addr v2, v3

    .line 1971
    iget v1, v0, Landroidx/d/b/b/s;->at:F

    div-float v1, v2, v1

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_0
    move v10, v2

    move v2, v1

    move v1, v10

    .line 1974
    :goto_0
    iget-object v3, v0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    instance-of v3, v3, Landroidx/d/b/b/r;

    if-eqz v3, :cond_1

    .line 1975
    iget-object v2, v0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    check-cast v2, Landroidx/d/b/b/r;

    invoke-virtual {v2}, Landroidx/d/b/b/r;->a()F

    move-result v2

    :cond_1
    move v9, v2

    .line 1978
    iget-object v0, v0, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    move-object v2, p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/b/b/p;

    and-int/lit8 v3, v8, 0x1

    if-nez v3, :cond_2

    .line 1981
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    move v2, v3

    move v3, v4

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 1980
    invoke-virtual/range {v0 .. v6}, Landroidx/d/b/b/p;->a(FIIFF[F)V

    goto :goto_1

    :cond_2
    move v2, p2

    move v3, p3

    .line 1984
    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/d/b/b/p;->a(FFF[F)V

    :goto_1
    const/4 v0, 0x2

    if-ge v8, v0, :cond_3

    const/4 v0, 0x0

    .line 1987
    aget v1, v7, v0

    mul-float/2addr v1, v9

    aput v1, v7, v0

    const/4 v0, 0x1

    .line 1988
    aget v1, v7, v0

    mul-float/2addr v1, v9

    aput v1, v7, v0

    :cond_3
    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    .line 2438
    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-nez p1, :cond_0

    return-void

    .line 2441
    :cond_0
    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget p2, p0, Landroidx/d/b/b/s;->E:F

    iget v0, p0, Landroidx/d/b/b/s;->H:F

    div-float/2addr p2, v0

    iget v0, p0, Landroidx/d/b/b/s;->F:F

    iget p0, p0, Landroidx/d/b/b/s;->H:F

    div-float/2addr v0, p0

    invoke-virtual {p1, p2, v0}, Landroidx/d/b/b/u;->b(FF)V

    return-void
.end method

.method public a(Landroid/view/View;IIIII)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;IIIII[I)V
    .locals 0

    .line 2446
    iget-boolean p1, p0, Landroidx/d/b/b/s;->D:Z

    const/4 p6, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 2447
    :cond_0
    aget p1, p7, p6

    add-int/2addr p1, p4

    aput p1, p7, p6

    const/4 p1, 0x1

    .line 2448
    aget p2, p7, p1

    add-int/2addr p2, p5

    aput p2, p7, p1

    .line 2450
    :cond_1
    iput-boolean p6, p0, Landroidx/d/b/b/s;->D:Z

    return-void
.end method

.method public a(Landroid/view/View;II[II)V
    .locals 9

    .line 2463
    iget-object p5, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-eqz p5, :cond_c

    iget-object p5, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget-object p5, p5, Landroidx/d/b/b/u;->f:Landroidx/d/b/b/u$a;

    if-nez p5, :cond_0

    goto/16 :goto_0

    .line 2467
    :cond_0
    iget-object p5, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget-object p5, p5, Landroidx/d/b/b/u;->f:Landroidx/d/b/b/u$a;

    invoke-virtual {p5}, Landroidx/d/b/b/u$a;->l()Z

    move-result p5

    if-nez p5, :cond_1

    return-void

    .line 2471
    :cond_1
    iget-object p5, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget-object p5, p5, Landroidx/d/b/b/u;->f:Landroidx/d/b/b/u$a;

    const/4 v0, -0x1

    if-eqz p5, :cond_2

    .line 2472
    invoke-virtual {p5}, Landroidx/d/b/b/u$a;->l()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2473
    invoke-virtual {p5}, Landroidx/d/b/b/u$a;->j()Landroidx/d/b/b/y;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2475
    invoke-virtual {v1}, Landroidx/d/b/b/y;->f()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 2476
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v1, :cond_2

    return-void

    .line 2482
    :cond_2
    iget-object v1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v1}, Landroidx/d/b/b/u;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2484
    iget v1, p0, Landroidx/d/b/b/s;->n:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_3

    iget v1, p0, Landroidx/d/b/b/s;->n:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 2490
    :cond_4
    invoke-virtual {p5}, Landroidx/d/b/b/u$a;->j()Landroidx/d/b/b/y;

    move-result-object p5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p5, :cond_8

    iget-object p5, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget-object p5, p5, Landroidx/d/b/b/u;->f:Landroidx/d/b/b/u$a;

    invoke-virtual {p5}, Landroidx/d/b/b/u$a;->j()Landroidx/d/b/b/y;

    move-result-object p5

    invoke-virtual {p5}, Landroidx/d/b/b/y;->h()I

    move-result p5

    and-int/2addr p5, v1

    if-eqz p5, :cond_8

    .line 2491
    iget-object p5, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    int-to-float v4, p2

    int-to-float v5, p3

    invoke-virtual {p5, v4, v5}, Landroidx/d/b/b/u;->c(FF)F

    move-result p5

    .line 2492
    iget v4, p0, Landroidx/d/b/b/s;->o:F

    cmpg-float v4, v4, v3

    if-gtz v4, :cond_5

    cmpg-float v4, p5, v3

    if-ltz v4, :cond_6

    :cond_5
    iget v4, p0, Landroidx/d/b/b/s;->o:F

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_8

    cmpl-float p5, p5, v3

    if-lez p5, :cond_8

    .line 2494
    :cond_6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x15

    if-lt p2, p3, :cond_7

    .line 2495
    invoke-virtual {p1, v0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    .line 2497
    new-instance p2, Landroidx/d/b/b/s$1;

    invoke-direct {p2, p0, p1}, Landroidx/d/b/b/s$1;-><init>(Landroidx/d/b/b/s;Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void

    .line 2511
    :cond_8
    iget p1, p0, Landroidx/d/b/b/s;->n:F

    .line 2512
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getNanoTime()J

    move-result-wide v2

    int-to-float p5, p2

    .line 2513
    iput p5, p0, Landroidx/d/b/b/s;->E:F

    int-to-float v4, p3

    .line 2514
    iput v4, p0, Landroidx/d/b/b/s;->F:F

    .line 2515
    iget-wide v5, p0, Landroidx/d/b/b/s;->G:J

    sub-long v5, v2, v5

    long-to-double v5, v5

    const-wide v7, 0x3e112e0be826d695L    # 1.0E-9

    mul-double/2addr v5, v7

    double-to-float v5, v5

    iput v5, p0, Landroidx/d/b/b/s;->H:F

    .line 2516
    iput-wide v2, p0, Landroidx/d/b/b/s;->G:J

    .line 2520
    iget-object v2, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v2, p5, v4}, Landroidx/d/b/b/u;->a(FF)V

    .line 2521
    iget p5, p0, Landroidx/d/b/b/s;->n:F

    cmpl-float p1, p1, p5

    if-eqz p1, :cond_9

    .line 2522
    aput p2, p4, v0

    .line 2523
    aput p3, p4, v1

    .line 2525
    :cond_9
    invoke-virtual {p0, v0}, Landroidx/d/b/b/s;->a(Z)V

    .line 2526
    aget p1, p4, v0

    if-nez p1, :cond_a

    aget p1, p4, v1

    if-eqz p1, :cond_b

    .line 2527
    :cond_a
    iput-boolean v1, p0, Landroidx/d/b/b/s;->D:Z

    :cond_b
    return-void

    :cond_c
    :goto_0
    return-void
.end method

.method public a(Landroidx/d/b/b/s$g;)V
    .locals 1

    .line 3628
    iget-object v0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    .line 3631
    :cond_0
    iget-object p0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method a(Z)V
    .locals 21

    move-object/from16 v0, p0

    .line 3003
    iget-wide v1, v0, Landroidx/d/b/b/s;->au:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 3004
    invoke-virtual/range {p0 .. p0}, Landroidx/d/b/b/s;->getNanoTime()J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/d/b/b/s;->au:J

    .line 3006
    :cond_0
    iget v1, v0, Landroidx/d/b/b/s;->o:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v1, :cond_1

    iget v1, v0, Landroidx/d/b/b/s;->o:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 3007
    iput v3, v0, Landroidx/d/b/b/s;->l:I

    .line 3011
    :cond_1
    iget-boolean v1, v0, Landroidx/d/b/b/s;->aD:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_3

    iget-boolean v1, v0, Landroidx/d/b/b/s;->q:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_3

    iget v1, v0, Landroidx/d/b/b/s;->p:F

    iget v7, v0, Landroidx/d/b/b/s;->o:F

    cmpl-float v1, v1, v7

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move/from16 v19, v6

    goto/16 :goto_b

    .line 3012
    :cond_3
    :goto_0
    iget v1, v0, Landroidx/d/b/b/s;->p:F

    iget v7, v0, Landroidx/d/b/b/s;->o:F

    sub-float/2addr v1, v7

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    .line 3013
    invoke-virtual/range {p0 .. p0}, Landroidx/d/b/b/s;->getNanoTime()J

    move-result-wide v7

    .line 3016
    iget-object v9, v0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    instance-of v9, v9, Landroidx/d/b/b/r;

    const v10, 0x3089705f    # 1.0E-9f

    if-nez v9, :cond_4

    .line 3017
    iget-wide v11, v0, Landroidx/d/b/b/s;->au:J

    sub-long v11, v7, v11

    long-to-float v9, v11

    mul-float/2addr v9, v1

    mul-float/2addr v9, v10

    iget v11, v0, Landroidx/d/b/b/s;->at:F

    div-float/2addr v9, v11

    .line 3018
    iput v9, v0, Landroidx/d/b/b/s;->k:F

    goto :goto_1

    :cond_4
    move v9, v2

    .line 3020
    :goto_1
    iget v11, v0, Landroidx/d/b/b/s;->o:F

    add-float/2addr v11, v9

    .line 3023
    iget-boolean v12, v0, Landroidx/d/b/b/s;->av:Z

    if-eqz v12, :cond_5

    .line 3024
    iget v11, v0, Landroidx/d/b/b/s;->p:F

    :cond_5
    cmpl-float v12, v1, v2

    if-lez v12, :cond_6

    .line 3027
    iget v13, v0, Landroidx/d/b/b/s;->p:F

    cmpl-float v13, v11, v13

    if-gez v13, :cond_7

    :cond_6
    cmpg-float v13, v1, v2

    if-gtz v13, :cond_8

    iget v13, v0, Landroidx/d/b/b/s;->p:F

    cmpg-float v13, v11, v13

    if-gtz v13, :cond_8

    .line 3029
    :cond_7
    iget v11, v0, Landroidx/d/b/b/s;->p:F

    .line 3030
    iput-boolean v6, v0, Landroidx/d/b/b/s;->q:Z

    move v13, v5

    goto :goto_2

    :cond_8
    move v13, v6

    .line 3036
    :goto_2
    iput v11, v0, Landroidx/d/b/b/s;->o:F

    .line 3037
    iput v11, v0, Landroidx/d/b/b/s;->n:F

    .line 3038
    iput-wide v7, v0, Landroidx/d/b/b/s;->au:J

    .line 3040
    iget-object v14, v0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    const v15, 0x3727c5ac    # 1.0E-5f

    if-eqz v14, :cond_e

    if-nez v13, :cond_e

    .line 3041
    iget-boolean v13, v0, Landroidx/d/b/b/s;->az:Z

    if-eqz v13, :cond_c

    .line 3042
    iget-wide v13, v0, Landroidx/d/b/b/s;->as:J

    sub-long v13, v7, v13

    long-to-float v9, v13

    mul-float/2addr v9, v10

    .line 3043
    iget-object v10, v0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    invoke-interface {v10, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v9

    .line 3047
    iput v9, v0, Landroidx/d/b/b/s;->o:F

    .line 3049
    iput-wide v7, v0, Landroidx/d/b/b/s;->au:J

    .line 3050
    iget-object v7, v0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    instance-of v7, v7, Landroidx/d/b/b/r;

    if-eqz v7, :cond_b

    .line 3051
    iget-object v7, v0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    check-cast v7, Landroidx/d/b/b/r;

    invoke-virtual {v7}, Landroidx/d/b/b/r;->a()F

    move-result v7

    .line 3052
    iput v7, v0, Landroidx/d/b/b/s;->k:F

    .line 3053
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v10, v0, Landroidx/d/b/b/s;->at:F

    mul-float/2addr v8, v10

    cmpg-float v8, v8, v15

    if-gtz v8, :cond_9

    .line 3054
    iput-boolean v6, v0, Landroidx/d/b/b/s;->q:Z

    :cond_9
    cmpl-float v8, v7, v2

    if-lez v8, :cond_a

    cmpl-float v8, v9, v4

    if-ltz v8, :cond_a

    .line 3057
    iput v4, v0, Landroidx/d/b/b/s;->o:F

    .line 3058
    iput-boolean v6, v0, Landroidx/d/b/b/s;->q:Z

    move v9, v4

    :cond_a
    cmpg-float v7, v7, v2

    if-gez v7, :cond_b

    cmpg-float v7, v9, v2

    if-gtz v7, :cond_b

    .line 3061
    iput v2, v0, Landroidx/d/b/b/s;->o:F

    .line 3062
    iput-boolean v6, v0, Landroidx/d/b/b/s;->q:Z

    move v11, v2

    goto :goto_4

    :cond_b
    move v11, v9

    goto :goto_4

    .line 3069
    :cond_c
    iget-object v7, v0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    invoke-interface {v7, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    .line 3070
    iget-object v8, v0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    instance-of v8, v8, Landroidx/d/b/b/r;

    if-eqz v8, :cond_d

    .line 3071
    iget-object v8, v0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    check-cast v8, Landroidx/d/b/b/r;

    invoke-virtual {v8}, Landroidx/d/b/b/r;->a()F

    move-result v8

    iput v8, v0, Landroidx/d/b/b/s;->k:F

    goto :goto_3

    .line 3073
    :cond_d
    iget-object v8, v0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    add-float/2addr v11, v9

    invoke-interface {v8, v11}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v8

    sub-float/2addr v8, v7

    mul-float/2addr v8, v1

    div-float/2addr v8, v9

    .line 3074
    iput v8, v0, Landroidx/d/b/b/s;->k:F

    :goto_3
    move v11, v7

    .line 3079
    :cond_e
    :goto_4
    iget v7, v0, Landroidx/d/b/b/s;->k:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v7, v7, v15

    if-lez v7, :cond_f

    .line 3080
    sget-object v7, Landroidx/d/b/b/s$h;->c:Landroidx/d/b/b/s$h;

    invoke-virtual {v0, v7}, Landroidx/d/b/b/s;->setState(Landroidx/d/b/b/s$h;)V

    :cond_f
    if-lez v12, :cond_10

    .line 3083
    iget v7, v0, Landroidx/d/b/b/s;->p:F

    cmpl-float v7, v11, v7

    if-gez v7, :cond_11

    :cond_10
    cmpg-float v7, v1, v2

    if-gtz v7, :cond_12

    iget v7, v0, Landroidx/d/b/b/s;->p:F

    cmpg-float v7, v11, v7

    if-gtz v7, :cond_12

    .line 3085
    :cond_11
    iget v11, v0, Landroidx/d/b/b/s;->p:F

    .line 3086
    iput-boolean v6, v0, Landroidx/d/b/b/s;->q:Z

    :cond_12
    cmpl-float v7, v11, v4

    if-gez v7, :cond_13

    cmpg-float v8, v11, v2

    if-gtz v8, :cond_14

    .line 3090
    :cond_13
    iput-boolean v6, v0, Landroidx/d/b/b/s;->q:Z

    .line 3091
    sget-object v8, Landroidx/d/b/b/s$h;->d:Landroidx/d/b/b/s$h;

    invoke-virtual {v0, v8}, Landroidx/d/b/b/s;->setState(Landroidx/d/b/b/s$h;)V

    .line 3094
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroidx/d/b/b/s;->getChildCount()I

    move-result v8

    .line 3095
    iput-boolean v6, v0, Landroidx/d/b/b/s;->aD:Z

    .line 3096
    invoke-virtual/range {p0 .. p0}, Landroidx/d/b/b/s;->getNanoTime()J

    move-result-wide v9

    .line 3100
    iput v11, v0, Landroidx/d/b/b/s;->U:F

    move v15, v6

    :goto_5
    if-ge v15, v8, :cond_16

    .line 3102
    invoke-virtual {v0, v15}, Landroidx/d/b/b/s;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 3103
    iget-object v13, v0, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/d/b/b/p;

    if-eqz v13, :cond_15

    .line 3105
    iget-boolean v6, v0, Landroidx/d/b/b/s;->aD:Z

    iget-object v4, v0, Landroidx/d/b/b/s;->aM:Landroidx/d/b/b/g;

    move/from16 v20, v15

    move v15, v11

    move-wide/from16 v16, v9

    move-object/from16 v18, v4

    invoke-virtual/range {v13 .. v18}, Landroidx/d/b/b/p;->a(Landroid/view/View;FJLandroidx/d/b/b/g;)Z

    move-result v4

    or-int/2addr v4, v6

    iput-boolean v4, v0, Landroidx/d/b/b/s;->aD:Z

    goto :goto_6

    :cond_15
    move/from16 v20, v15

    :goto_6
    add-int/lit8 v15, v20, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    goto :goto_5

    :cond_16
    if-lez v12, :cond_17

    .line 3113
    iget v4, v0, Landroidx/d/b/b/s;->p:F

    cmpl-float v4, v11, v4

    if-gez v4, :cond_18

    :cond_17
    cmpg-float v4, v1, v2

    if-gtz v4, :cond_19

    iget v4, v0, Landroidx/d/b/b/s;->p:F

    cmpg-float v4, v11, v4

    if-gtz v4, :cond_19

    :cond_18
    move v4, v5

    goto :goto_7

    :cond_19
    const/4 v4, 0x0

    .line 3115
    :goto_7
    iget-boolean v6, v0, Landroidx/d/b/b/s;->aD:Z

    if-nez v6, :cond_1a

    iget-boolean v6, v0, Landroidx/d/b/b/s;->q:Z

    if-nez v6, :cond_1a

    if-eqz v4, :cond_1a

    .line 3116
    sget-object v6, Landroidx/d/b/b/s$h;->d:Landroidx/d/b/b/s$h;

    invoke-virtual {v0, v6}, Landroidx/d/b/b/s;->setState(Landroidx/d/b/b/s$h;)V

    .line 3118
    :cond_1a
    iget-boolean v6, v0, Landroidx/d/b/b/s;->N:Z

    if-eqz v6, :cond_1b

    .line 3119
    invoke-virtual/range {p0 .. p0}, Landroidx/d/b/b/s;->requestLayout()V

    .line 3122
    :cond_1b
    iget-boolean v6, v0, Landroidx/d/b/b/s;->aD:Z

    xor-int/2addr v4, v5

    or-int/2addr v4, v6

    iput-boolean v4, v0, Landroidx/d/b/b/s;->aD:Z

    cmpg-float v4, v11, v2

    if-gtz v4, :cond_1c

    .line 3125
    iget v4, v0, Landroidx/d/b/b/s;->an:I

    if-eq v4, v3, :cond_1c

    .line 3129
    iget v3, v0, Landroidx/d/b/b/s;->l:I

    iget v4, v0, Landroidx/d/b/b/s;->an:I

    if-eq v3, v4, :cond_1c

    .line 3131
    iget v3, v0, Landroidx/d/b/b/s;->an:I

    iput v3, v0, Landroidx/d/b/b/s;->l:I

    .line 3132
    iget-object v3, v0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget v4, v0, Landroidx/d/b/b/s;->an:I

    invoke-virtual {v3, v4}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object v3

    .line 3133
    invoke-virtual {v3, v0}, Landroidx/d/e/g;->e(Landroidx/d/e/d;)V

    .line 3134
    sget-object v3, Landroidx/d/b/b/s$h;->d:Landroidx/d/b/b/s$h;

    invoke-virtual {v0, v3}, Landroidx/d/b/b/s;->setState(Landroidx/d/b/b/s$h;)V

    move/from16 v19, v5

    goto :goto_8

    :cond_1c
    const/16 v19, 0x0

    :goto_8
    float-to-double v3, v11

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v3, v8

    if-ltz v3, :cond_1d

    .line 3142
    iget v3, v0, Landroidx/d/b/b/s;->l:I

    iget v4, v0, Landroidx/d/b/b/s;->ao:I

    if-eq v3, v4, :cond_1d

    .line 3144
    iget v3, v0, Landroidx/d/b/b/s;->ao:I

    iput v3, v0, Landroidx/d/b/b/s;->l:I

    .line 3145
    iget-object v3, v0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget v4, v0, Landroidx/d/b/b/s;->ao:I

    invoke-virtual {v3, v4}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object v3

    .line 3146
    invoke-virtual {v3, v0}, Landroidx/d/e/g;->e(Landroidx/d/e/d;)V

    .line 3147
    sget-object v3, Landroidx/d/b/b/s$h;->d:Landroidx/d/b/b/s$h;

    invoke-virtual {v0, v3}, Landroidx/d/b/b/s;->setState(Landroidx/d/b/b/s$h;)V

    move/from16 v19, v5

    .line 3151
    :cond_1d
    iget-boolean v3, v0, Landroidx/d/b/b/s;->aD:Z

    if-nez v3, :cond_21

    iget-boolean v3, v0, Landroidx/d/b/b/s;->q:Z

    if-eqz v3, :cond_1e

    goto :goto_9

    :cond_1e
    if-lez v12, :cond_1f

    if-eqz v7, :cond_20

    :cond_1f
    cmpg-float v3, v1, v2

    if-gez v3, :cond_22

    cmpl-float v3, v11, v2

    if-nez v3, :cond_22

    .line 3155
    :cond_20
    sget-object v3, Landroidx/d/b/b/s$h;->d:Landroidx/d/b/b/s$h;

    invoke-virtual {v0, v3}, Landroidx/d/b/b/s;->setState(Landroidx/d/b/b/s$h;)V

    goto :goto_a

    .line 3152
    :cond_21
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroidx/d/b/b/s;->invalidate()V

    .line 3157
    :cond_22
    :goto_a
    iget-boolean v3, v0, Landroidx/d/b/b/s;->aD:Z

    if-nez v3, :cond_23

    iget-boolean v3, v0, Landroidx/d/b/b/s;->q:Z

    if-eqz v3, :cond_23

    if-lez v12, :cond_23

    if-eqz v7, :cond_24

    :cond_23
    cmpg-float v1, v1, v2

    if-gez v1, :cond_25

    cmpl-float v1, v11, v2

    if-nez v1, :cond_25

    .line 3158
    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroidx/d/b/b/s;->d()V

    .line 3161
    :cond_25
    :goto_b
    iget v1, v0, Landroidx/d/b/b/s;->o:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_27

    .line 3162
    iget v1, v0, Landroidx/d/b/b/s;->l:I

    iget v2, v0, Landroidx/d/b/b/s;->ao:I

    if-eq v1, v2, :cond_26

    move/from16 v19, v5

    .line 3165
    :cond_26
    iget v1, v0, Landroidx/d/b/b/s;->ao:I

    iput v1, v0, Landroidx/d/b/b/s;->l:I

    goto :goto_c

    .line 3166
    :cond_27
    iget v1, v0, Landroidx/d/b/b/s;->o:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_29

    .line 3167
    iget v1, v0, Landroidx/d/b/b/s;->l:I

    iget v2, v0, Landroidx/d/b/b/s;->an:I

    if-eq v1, v2, :cond_28

    move/from16 v19, v5

    .line 3170
    :cond_28
    iget v1, v0, Landroidx/d/b/b/s;->an:I

    iput v1, v0, Landroidx/d/b/b/s;->l:I

    .line 3173
    :cond_29
    :goto_c
    iget-boolean v1, v0, Landroidx/d/b/b/s;->aQ:Z

    or-int v1, v1, v19

    iput-boolean v1, v0, Landroidx/d/b/b/s;->aQ:Z

    if-eqz v19, :cond_2a

    .line 3175
    iget-boolean v1, v0, Landroidx/d/b/b/s;->aN:Z

    if-nez v1, :cond_2a

    .line 3176
    invoke-virtual/range {p0 .. p0}, Landroidx/d/b/b/s;->requestLayout()V

    .line 3179
    :cond_2a
    iget v1, v0, Landroidx/d/b/b/s;->o:F

    iput v1, v0, Landroidx/d/b/b/s;->n:F

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    .line 2415
    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget-object p1, p1, Landroidx/d/b/b/u;->f:Landroidx/d/b/b/u$a;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget-object p1, p1, Landroidx/d/b/b/u;->f:Landroidx/d/b/b/u$a;

    .line 2417
    invoke-virtual {p1}, Landroidx/d/b/b/u$a;->j()Landroidx/d/b/b/y;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget-object p0, p0, Landroidx/d/b/b/u;->f:Landroidx/d/b/b/u$a;

    .line 2418
    invoke-virtual {p0}, Landroidx/d/b/b/u$a;->j()Landroidx/d/b/b/y;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/d/b/b/y;->h()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1787
    invoke-virtual {p0, v0}, Landroidx/d/b/b/s;->a(F)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1806
    invoke-virtual {p0}, Landroidx/d/b/b/s;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1807
    iget-object v0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    if-nez v0, :cond_0

    .line 1808
    new-instance v0, Landroidx/d/b/b/s$f;

    invoke-direct {v0, p0}, Landroidx/d/b/b/s$f;-><init>(Landroidx/d/b/b/s;)V

    iput-object v0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    .line 1810
    :cond_0
    iget-object p0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    invoke-virtual {p0, p1}, Landroidx/d/b/b/s$f;->a(I)V

    return-void

    :cond_1
    const/4 v0, -0x1

    .line 1813
    invoke-virtual {p0, p1, v0, v0}, Landroidx/d/b/b/s;->b(III)V

    return-void
.end method

.method public b(III)V
    .locals 11

    .line 1834
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget-object v0, v0, Landroidx/d/b/b/u;->e:Landroidx/d/e/n;

    if-eqz v0, :cond_0

    .line 1835
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget-object v0, v0, Landroidx/d/b/b/u;->e:Landroidx/d/e/n;

    iget v2, p0, Landroidx/d/b/b/s;->l:I

    int-to-float p2, p2

    int-to-float p3, p3

    invoke-virtual {v0, v2, p1, p2, p3}, Landroidx/d/e/n;->a(IIFF)I

    move-result p2

    if-eq p2, v1, :cond_0

    move p1, p2

    .line 1846
    :cond_0
    iget p2, p0, Landroidx/d/b/b/s;->l:I

    if-ne p2, p1, :cond_1

    return-void

    .line 1849
    :cond_1
    iget p2, p0, Landroidx/d/b/b/s;->an:I

    const/4 p3, 0x0

    if-ne p2, p1, :cond_2

    .line 1850
    invoke-virtual {p0, p3}, Landroidx/d/b/b/s;->a(F)V

    return-void

    .line 1853
    :cond_2
    iget p2, p0, Landroidx/d/b/b/s;->ao:I

    const/high16 v0, 0x3f800000    # 1.0f

    if-ne p2, p1, :cond_3

    .line 1854
    invoke-virtual {p0, v0}, Landroidx/d/b/b/s;->a(F)V

    return-void

    .line 1857
    :cond_3
    iput p1, p0, Landroidx/d/b/b/s;->ao:I

    .line 1858
    iget p2, p0, Landroidx/d/b/b/s;->l:I

    if-eq p2, v1, :cond_4

    .line 1866
    iget p2, p0, Landroidx/d/b/b/s;->l:I

    invoke-virtual {p0, p2, p1}, Landroidx/d/b/b/s;->a(II)V

    .line 1867
    invoke-virtual {p0, v0}, Landroidx/d/b/b/s;->a(F)V

    .line 1869
    iput p3, p0, Landroidx/d/b/b/s;->o:F

    .line 1870
    invoke-virtual {p0}, Landroidx/d/b/b/s;->c()V

    return-void

    :cond_4
    const/4 p2, 0x0

    .line 1879
    iput-boolean p2, p0, Landroidx/d/b/b/s;->az:Z

    .line 1880
    iput v0, p0, Landroidx/d/b/b/s;->p:F

    .line 1881
    iput p3, p0, Landroidx/d/b/b/s;->n:F

    .line 1882
    iput p3, p0, Landroidx/d/b/b/s;->o:F

    .line 1883
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getNanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/d/b/b/s;->au:J

    .line 1884
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getNanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Landroidx/d/b/b/s;->as:J

    .line 1885
    iput-boolean p2, p0, Landroidx/d/b/b/s;->av:Z

    const/4 v2, 0x0

    .line 1886
    iput-object v2, p0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    .line 1887
    iget-object v3, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v3}, Landroidx/d/b/b/u;->g()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    iput v3, p0, Landroidx/d/b/b/s;->at:F

    .line 1888
    iput v1, p0, Landroidx/d/b/b/s;->an:I

    .line 1889
    iget-object v1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget v3, p0, Landroidx/d/b/b/s;->an:I

    iget v4, p0, Landroidx/d/b/b/s;->ao:I

    invoke-virtual {v1, v3, v4}, Landroidx/d/b/b/u;->a(II)V

    .line 1891
    iget-object v1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v1}, Landroidx/d/b/b/u;->d()I

    .line 1893
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getChildCount()I

    move-result v1

    .line 1894
    iget-object v3, p0, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    move v3, p2

    :goto_0
    if-ge v3, v1, :cond_5

    .line 1896
    invoke-virtual {p0, v3}, Landroidx/d/b/b/s;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1897
    new-instance v5, Landroidx/d/b/b/p;

    invoke-direct {v5, v4}, Landroidx/d/b/b/p;-><init>(Landroid/view/View;)V

    .line 1898
    iget-object v6, p0, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    .line 1900
    iput-boolean v3, p0, Landroidx/d/b/b/s;->q:Z

    .line 1902
    iget-object v4, p0, Landroidx/d/b/b/s;->W:Landroidx/d/b/b/s$c;

    iget-object v5, p0, Landroidx/d/b/b/s;->ad:Landroidx/d/c/b/f;

    iget-object v6, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v6, p1}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object p1

    invoke-virtual {v4, v5, v2, p1}, Landroidx/d/b/b/s$c;->a(Landroidx/d/c/b/f;Landroidx/d/e/g;Landroidx/d/e/g;)V

    .line 1903
    invoke-virtual {p0}, Landroidx/d/b/b/s;->g()V

    .line 1904
    iget-object p1, p0, Landroidx/d/b/b/s;->W:Landroidx/d/b/b/s$c;

    invoke-virtual {p1}, Landroidx/d/b/b/s$c;->b()V

    .line 1905
    invoke-direct {p0}, Landroidx/d/b/b/s;->m()V

    .line 1906
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getWidth()I

    move-result p1

    .line 1907
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getHeight()I

    move-result v2

    move v10, p2

    :goto_1
    if-ge v10, v1, :cond_6

    .line 1910
    iget-object v4, p0, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    invoke-virtual {p0, v10}, Landroidx/d/b/b/s;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/d/b/b/p;

    .line 1911
    iget-object v5, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v5, v4}, Landroidx/d/b/b/u;->a(Landroidx/d/b/b/p;)V

    .line 1912
    iget v7, p0, Landroidx/d/b/b/s;->at:F

    invoke-virtual {p0}, Landroidx/d/b/b/s;->getNanoTime()J

    move-result-wide v8

    move v5, p1

    move v6, v2

    invoke-virtual/range {v4 .. v9}, Landroidx/d/b/b/p;->a(IIFJ)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1915
    :cond_6
    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p1}, Landroidx/d/b/b/u;->i()F

    move-result p1

    cmpl-float v2, p1, p3

    if-eqz v2, :cond_8

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const v4, -0x800001

    move v5, v4

    move v4, v2

    move v2, p2

    :goto_2
    if-ge v2, v1, :cond_7

    .line 1920
    iget-object v6, p0, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Landroidx/d/b/b/s;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/d/b/b/p;

    .line 1921
    invoke-virtual {v6}, Landroidx/d/b/b/p;->c()F

    move-result v7

    .line 1922
    invoke-virtual {v6}, Landroidx/d/b/b/p;->d()F

    move-result v6

    add-float/2addr v6, v7

    .line 1923
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1924
    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    if-ge p2, v1, :cond_8

    .line 1928
    iget-object v2, p0, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Landroidx/d/b/b/s;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/b/b/p;

    .line 1929
    invoke-virtual {v2}, Landroidx/d/b/b/p;->c()F

    move-result v6

    .line 1930
    invoke-virtual {v2}, Landroidx/d/b/b/p;->d()F

    move-result v7

    sub-float v8, v0, p1

    div-float v8, v0, v8

    .line 1931
    iput v8, v2, Landroidx/d/b/b/p;->s:F

    add-float/2addr v6, v7

    sub-float/2addr v6, v4

    mul-float/2addr v6, p1

    sub-float v7, v5, v4

    div-float/2addr v6, v7

    sub-float v6, p1, v6

    .line 1932
    iput v6, v2, Landroidx/d/b/b/p;->r:F

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 1936
    :cond_8
    iput p3, p0, Landroidx/d/b/b/s;->n:F

    .line 1937
    iput p3, p0, Landroidx/d/b/b/s;->o:F

    .line 1938
    iput-boolean v3, p0, Landroidx/d/b/b/s;->q:Z

    .line 1940
    invoke-virtual {p0}, Landroidx/d/b/b/s;->invalidate()V

    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 3384
    :goto_0
    iput p1, p0, Landroidx/d/b/b/s;->v:I

    .line 3385
    invoke-virtual {p0}, Landroidx/d/b/b/s;->invalidate()V

    return-void
.end method

.method public b(Landroidx/d/b/b/s$g;)Z
    .locals 1

    .line 3642
    iget-object v0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3645
    :cond_0
    iget-object p0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public c()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1796
    invoke-virtual {p0, v0}, Landroidx/d/b/b/s;->a(F)V

    return-void
.end method

.method protected c(I)V
    .locals 0

    const/4 p1, 0x0

    .line 3221
    iput-object p1, p0, Landroidx/d/b/b/s;->af:Landroidx/d/e/e;

    return-void
.end method

.method c(Z)V
    .locals 1

    .line 4014
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-nez v0, :cond_0

    return-void

    .line 4017
    :cond_0
    iget-object p0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p0, p1}, Landroidx/d/b/b/u;->b(Z)V

    return-void
.end method

.method public d(I)Landroidx/d/e/g;
    .locals 1

    .line 3876
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3879
    :cond_0
    iget-object p0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p0, p1}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object p0

    return-object p0
.end method

.method d()V
    .locals 2

    .line 3528
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-nez v0, :cond_0

    return-void

    .line 3531
    :cond_0
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget v1, p0, Landroidx/d/b/b/s;->l:I

    invoke-virtual {v0, p0, v1}, Landroidx/d/b/b/u;->b(Landroidx/d/b/b/s;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3532
    invoke-virtual {p0}, Landroidx/d/b/b/s;->requestLayout()V

    return-void

    .line 3535
    :cond_1
    iget v0, p0, Landroidx/d/b/b/s;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 3536
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget v1, p0, Landroidx/d/b/b/s;->l:I

    invoke-virtual {v0, p0, v1}, Landroidx/d/b/b/u;->a(Landroidx/d/b/b/s;I)V

    .line 3538
    :cond_2
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v0}, Landroidx/d/b/b/u;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3539
    iget-object p0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p0}, Landroidx/d/b/b/u;->l()V

    :cond_3
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9

    const/4 v0, 0x0

    .line 2901
    invoke-virtual {p0, v0}, Landroidx/d/b/b/s;->a(Z)V

    .line 2908
    invoke-super {p0, p1}, Landroidx/d/e/d;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2909
    iget-object v1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-nez v1, :cond_0

    return-void

    .line 2915
    :cond_0
    iget v1, p0, Landroidx/d/b/b/s;->v:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 2916
    invoke-virtual {p0}, Landroidx/d/b/b/s;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2917
    iget v1, p0, Landroidx/d/b/b/s;->aH:I

    add-int/2addr v1, v2

    iput v1, p0, Landroidx/d/b/b/s;->aH:I

    .line 2918
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getNanoTime()J

    move-result-wide v3

    .line 2919
    iget-wide v5, p0, Landroidx/d/b/b/s;->aI:J

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_1

    .line 2920
    iget-wide v5, p0, Landroidx/d/b/b/s;->aI:J

    sub-long v5, v3, v5

    const-wide/32 v7, 0xbebc200

    cmp-long v1, v5, v7

    if-lez v1, :cond_2

    .line 2922
    iget v1, p0, Landroidx/d/b/b/s;->aH:I

    int-to-float v1, v1

    long-to-float v5, v5

    const v6, 0x3089705f    # 1.0E-9f

    mul-float/2addr v5, v6

    div-float/2addr v1, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v1, v5

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    .line 2923
    iput v1, p0, Landroidx/d/b/b/s;->aJ:F

    .line 2924
    iput v0, p0, Landroidx/d/b/b/s;->aH:I

    .line 2925
    iput-wide v3, p0, Landroidx/d/b/b/s;->aI:J

    goto :goto_0

    .line 2928
    :cond_1
    iput-wide v3, p0, Landroidx/d/b/b/s;->aI:J

    .line 2930
    :cond_2
    :goto_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, 0x42280000    # 42.0f

    .line 2931
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2932
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getProgress()F

    move-result v1

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v1, v3

    .line 2933
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroidx/d/b/b/s;->aJ:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " fps "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/d/b/b/s;->an:I

    invoke-static {p0, v5}, Landroidx/d/b/b/c;->a(Landroidx/d/b/b/s;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2934
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroidx/d/b/b/s;->ao:I

    invoke-static {p0, v4}, Landroidx/d/b/b/c;->a(Landroidx/d/b/b/s;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (progress: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " ) state="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/d/b/b/s;->l:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    const-string v1, "undefined"

    goto :goto_1

    :cond_3
    iget v1, p0, Landroidx/d/b/b/s;->l:I

    .line 2935
    invoke-static {p0, v1}, Landroidx/d/b/b/c;->a(Landroidx/d/b/b/s;I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v4, -0x1000000

    .line 2936
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v4, 0x41300000    # 11.0f

    .line 2937
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getHeight()I

    move-result v5

    add-int/lit8 v5, v5, -0x1d

    int-to-float v5, v5

    invoke-virtual {p1, v1, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const v4, -0x77ff78

    .line 2938
    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2939
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1e

    int-to-float v4, v4

    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2943
    :cond_4
    iget v0, p0, Landroidx/d/b/b/s;->v:I

    if-le v0, v2, :cond_6

    .line 2944
    iget-object v0, p0, Landroidx/d/b/b/s;->x:Landroidx/d/b/b/s$b;

    if-nez v0, :cond_5

    .line 2945
    new-instance v0, Landroidx/d/b/b/s$b;

    invoke-direct {v0, p0}, Landroidx/d/b/b/s$b;-><init>(Landroidx/d/b/b/s;)V

    iput-object v0, p0, Landroidx/d/b/b/s;->x:Landroidx/d/b/b/s$b;

    .line 2947
    :cond_5
    iget-object v0, p0, Landroidx/d/b/b/s;->x:Landroidx/d/b/b/s$b;

    iget-object v1, p0, Landroidx/d/b/b/s;->m:Ljava/util/HashMap;

    iget-object v2, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v2}, Landroidx/d/b/b/u;->g()I

    move-result v2

    iget p0, p0, Landroidx/d/b/b/s;->v:I

    invoke-virtual {v0, p1, v1, v2, p0}, Landroidx/d/b/b/s$b;->a(Landroid/graphics/Canvas;Ljava/util/HashMap;II)V

    :cond_6
    return-void
.end method

.method public e(I)Landroidx/d/b/b/u$a;
    .locals 0

    .line 3978
    iget-object p0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p0, p1}, Landroidx/d/b/b/u;->b(I)Landroidx/d/b/b/u$a;

    move-result-object p0

    return-object p0
.end method

.method protected e()V
    .locals 3

    .line 3752
    iget-object v0, p0, Landroidx/d/b/b/s;->aw:Landroidx/d/b/b/s$g;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3753
    :cond_0
    iget v0, p0, Landroidx/d/b/b/s;->aK:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 3754
    iget v0, p0, Landroidx/d/b/b/s;->l:I

    iput v0, p0, Landroidx/d/b/b/s;->aK:I

    .line 3756
    iget-object v0, p0, Landroidx/d/b/b/s;->aa:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3757
    iget-object v0, p0, Landroidx/d/b/b/s;->aa:Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/d/b/b/s;->aa:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 3759
    :goto_0
    iget v2, p0, Landroidx/d/b/b/s;->l:I

    if-eq v0, v2, :cond_2

    iget v0, p0, Landroidx/d/b/b/s;->l:I

    if-eq v0, v1, :cond_2

    .line 3760
    iget-object v0, p0, Landroidx/d/b/b/s;->aa:Ljava/util/ArrayList;

    iget v1, p0, Landroidx/d/b/b/s;->l:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3764
    :cond_2
    invoke-direct {p0}, Landroidx/d/b/b/s;->r()V

    return-void
.end method

.method f(I)Ljava/lang/String;
    .locals 1

    .line 4002
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4005
    :cond_0
    iget-object p0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p0, p1}, Landroidx/d/b/b/u;->f(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public f()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "MotionLayout"

    const-string v1, "This method is deprecated. Please call rebuildScene() instead."

    .line 3889
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    invoke-virtual {p0}, Landroidx/d/b/b/s;->g()V

    return-void
.end method

.method public g()V
    .locals 1

    .line 3897
    iget-object v0, p0, Landroidx/d/b/b/s;->W:Landroidx/d/b/b/s$c;

    invoke-virtual {v0}, Landroidx/d/b/b/s$c;->a()V

    .line 3898
    invoke-virtual {p0}, Landroidx/d/b/b/s;->invalidate()V

    return-void
.end method

.method public getConstraintSetIds()[I
    .locals 1

    .line 3863
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3866
    :cond_0
    iget-object p0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p0}, Landroidx/d/b/b/u;->b()[I

    move-result-object p0

    return-object p0
.end method

.method public getCurrentState()I
    .locals 0

    .line 3549
    iget p0, p0, Landroidx/d/b/b/s;->l:I

    return p0
.end method

.method public getDefinedTransitions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/d/b/b/u$a;",
            ">;"
        }
    .end annotation

    .line 3928
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3931
    :cond_0
    iget-object p0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p0}, Landroidx/d/b/b/u;->a()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getDesignTool()Landroidx/d/b/b/d;
    .locals 1

    .line 3789
    iget-object v0, p0, Landroidx/d/b/b/s;->aC:Landroidx/d/b/b/d;

    if-nez v0, :cond_0

    .line 3790
    new-instance v0, Landroidx/d/b/b/d;

    invoke-direct {v0, p0}, Landroidx/d/b/b/d;-><init>(Landroidx/d/b/b/s;)V

    iput-object v0, p0, Landroidx/d/b/b/s;->aC:Landroidx/d/b/b/d;

    .line 3792
    :cond_0
    iget-object p0, p0, Landroidx/d/b/b/s;->aC:Landroidx/d/b/b/d;

    return-object p0
.end method

.method public getEndState()I
    .locals 0

    .line 3950
    iget p0, p0, Landroidx/d/b/b/s;->ao:I

    return p0
.end method

.method protected getNanoTime()J
    .locals 2

    .line 983
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getProgress()F
    .locals 0

    .line 3558
    iget p0, p0, Landroidx/d/b/b/s;->o:F

    return p0
.end method

.method public getStartState()I
    .locals 0

    .line 3941
    iget p0, p0, Landroidx/d/b/b/s;->an:I

    return p0
.end method

.method public getTargetPosition()F
    .locals 0

    .line 3960
    iget p0, p0, Landroidx/d/b/b/s;->p:F

    return p0
.end method

.method public getTransitionState()Landroid/os/Bundle;
    .locals 1

    .line 1454
    iget-object v0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    if-nez v0, :cond_0

    .line 1455
    new-instance v0, Landroidx/d/b/b/s$f;

    invoke-direct {v0, p0}, Landroidx/d/b/b/s$f;-><init>(Landroidx/d/b/b/s;)V

    iput-object v0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    .line 1457
    :cond_0
    iget-object v0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    invoke-virtual {v0}, Landroidx/d/b/b/s$f;->c()V

    .line 1458
    iget-object p0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    invoke-virtual {p0}, Landroidx/d/b/b/s$f;->b()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getTransitionTimeMs()J
    .locals 2

    .line 3605
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    const/high16 v1, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_0

    .line 3606
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v0}, Landroidx/d/b/b/u;->g()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Landroidx/d/b/b/s;->at:F

    .line 3608
    :cond_0
    iget p0, p0, Landroidx/d/b/b/s;->at:F

    mul-float/2addr p0, v1

    float-to-long v0, p0

    return-wide v0
.end method

.method public getVelocity()F
    .locals 0

    .line 1949
    iget p0, p0, Landroidx/d/b/b/s;->k:F

    return p0
.end method

.method public h()V
    .locals 5

    .line 3918
    iget-object v0, p0, Landroidx/d/b/b/s;->W:Landroidx/d/b/b/s$c;

    iget-object v1, p0, Landroidx/d/b/b/s;->ad:Landroidx/d/c/b/f;

    iget-object v2, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget v3, p0, Landroidx/d/b/b/s;->an:I

    invoke-virtual {v2, v3}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object v2

    iget-object v3, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget v4, p0, Landroidx/d/b/b/s;->ao:I

    invoke-virtual {v3, v4}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/d/b/b/s$c;->a(Landroidx/d/c/b/f;Landroidx/d/e/g;Landroidx/d/e/g;)V

    .line 3919
    invoke-virtual {p0}, Landroidx/d/b/b/s;->g()V

    return-void
.end method

.method public i()Z
    .locals 0

    .line 4040
    iget-boolean p0, p0, Landroidx/d/b/b/s;->ar:Z

    return p0
.end method

.method public isAttachedToWindow()Z
    .locals 2

    .line 1296
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 1297
    invoke-super {p0}, Landroidx/d/e/d;->isAttachedToWindow()Z

    move-result p0

    return p0

    .line 1299
    :cond_0
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 3493
    invoke-super {p0}, Landroidx/d/e/d;->onAttachedToWindow()V

    .line 3494
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/d/b/b/s;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 3495
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget v1, p0, Landroidx/d/b/b/s;->l:I

    invoke-virtual {v0, v1}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object v0

    .line 3496
    iget-object v1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v1, p0}, Landroidx/d/b/b/u;->b(Landroidx/d/b/b/s;)V

    if-eqz v0, :cond_0

    .line 3498
    invoke-virtual {v0, p0}, Landroidx/d/e/g;->c(Landroidx/d/e/d;)V

    .line 3500
    :cond_0
    iget v0, p0, Landroidx/d/b/b/s;->l:I

    iput v0, p0, Landroidx/d/b/b/s;->an:I

    .line 3502
    :cond_1
    invoke-virtual {p0}, Landroidx/d/b/b/s;->d()V

    .line 3503
    iget-object v0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    if-eqz v0, :cond_2

    .line 3504
    iget-object p0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    invoke-virtual {p0}, Landroidx/d/b/b/s$f;->a()V

    goto :goto_0

    .line 3506
    :cond_2
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget-object v0, v0, Landroidx/d/b/b/u;->f:Landroidx/d/b/b/u$a;

    if-eqz v0, :cond_3

    .line 3507
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget-object v0, v0, Landroidx/d/b/b/u;->f:Landroidx/d/b/b/u$a;

    invoke-virtual {v0}, Landroidx/d/b/b/u$a;->b()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 3508
    invoke-virtual {p0}, Landroidx/d/b/b/s;->c()V

    .line 3509
    sget-object v0, Landroidx/d/b/b/s$h;->b:Landroidx/d/b/b/s$h;

    invoke-virtual {p0, v0}, Landroidx/d/b/b/s;->setState(Landroidx/d/b/b/s$h;)V

    .line 3510
    sget-object v0, Landroidx/d/b/b/s$h;->c:Landroidx/d/b/b/s$h;

    invoke-virtual {p0, v0}, Landroidx/d/b/b/s;->setState(Landroidx/d/b/b/s$h;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 3436
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroidx/d/b/b/s;->ar:Z

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 3439
    :cond_0
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget-object v0, v0, Landroidx/d/b/b/u;->f:Landroidx/d/b/b/u$a;

    if-eqz v0, :cond_4

    .line 3440
    invoke-virtual {v0}, Landroidx/d/b/b/u$a;->l()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3441
    invoke-virtual {v0}, Landroidx/d/b/b/u$a;->j()Landroidx/d/b/b/y;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 3444
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v0, p0, v2}, Landroidx/d/b/b/y;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3446
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 3450
    :cond_1
    invoke-virtual {v0}, Landroidx/d/b/b/y;->f()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    .line 3452
    iget-object v2, p0, Landroidx/d/b/b/s;->aS:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/d/b/b/s;->aS:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 3453
    :cond_2
    invoke-virtual {p0, v0}, Landroidx/d/b/b/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/d/b/b/s;->aS:Landroid/view/View;

    .line 3455
    :cond_3
    iget-object v0, p0, Landroidx/d/b/b/s;->aS:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 3456
    iget-object v0, p0, Landroidx/d/b/b/s;->aR:Landroid/graphics/RectF;

    iget-object v2, p0, Landroidx/d/b/b/s;->aS:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/d/b/b/s;->aS:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroidx/d/b/b/s;->aS:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroidx/d/b/b/s;->aS:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3457
    iget-object v0, p0, Landroidx/d/b/b/s;->aR:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3460
    iget-object v0, p0, Landroidx/d/b/b/s;->aS:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, p1}, Landroidx/d/b/b/s;->a(FFLandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3462
    invoke-virtual {p0, p1}, Landroidx/d/b/b/s;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    const/4 v0, 0x1

    .line 3186
    iput-boolean v0, p0, Landroidx/d/b/b/s;->aN:Z

    const/4 v1, 0x0

    .line 3191
    :try_start_0
    iget-object v2, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-nez v2, :cond_0

    .line 3192
    invoke-super/range {p0 .. p5}, Landroidx/d/e/d;->onLayout(ZIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3210
    iput-boolean v1, p0, Landroidx/d/b/b/s;->aN:Z

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 3197
    :try_start_1
    iget p1, p0, Landroidx/d/b/b/s;->B:I

    if-ne p1, p4, :cond_1

    iget p1, p0, Landroidx/d/b/b/s;->C:I

    if-eq p1, p5, :cond_2

    .line 3198
    :cond_1
    invoke-virtual {p0}, Landroidx/d/b/b/s;->g()V

    .line 3199
    invoke-virtual {p0, v0}, Landroidx/d/b/b/s;->a(Z)V

    .line 3205
    :cond_2
    iput p4, p0, Landroidx/d/b/b/s;->B:I

    .line 3206
    iput p5, p0, Landroidx/d/b/b/s;->C:I

    .line 3207
    iput p4, p0, Landroidx/d/b/b/s;->z:I

    .line 3208
    iput p5, p0, Landroidx/d/b/b/s;->A:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3210
    iput-boolean v1, p0, Landroidx/d/b/b/s;->aN:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroidx/d/b/b/s;->aN:Z

    .line 3211
    throw p1
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 2362
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-nez v0, :cond_0

    .line 2363
    invoke-super {p0, p1, p2}, Landroidx/d/e/d;->onMeasure(II)V

    return-void

    .line 2366
    :cond_0
    iget v0, p0, Landroidx/d/b/b/s;->ap:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_2

    iget v0, p0, Landroidx/d/b/b/s;->aq:I

    if-eq v0, p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v2

    .line 2367
    :goto_1
    iget-boolean v3, p0, Landroidx/d/b/b/s;->aQ:Z

    if-eqz v3, :cond_3

    .line 2368
    iput-boolean v1, p0, Landroidx/d/b/b/s;->aQ:Z

    .line 2369
    invoke-virtual {p0}, Landroidx/d/b/b/s;->d()V

    .line 2370
    invoke-direct {p0}, Landroidx/d/b/b/s;->r()V

    move v0, v2

    .line 2374
    :cond_3
    iget-boolean v3, p0, Landroidx/d/b/b/s;->ae:Z

    if-eqz v3, :cond_4

    move v0, v2

    .line 2378
    :cond_4
    iput p1, p0, Landroidx/d/b/b/s;->ap:I

    .line 2379
    iput p2, p0, Landroidx/d/b/b/s;->aq:I

    .line 2381
    iget-object v3, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v3}, Landroidx/d/b/b/u;->d()I

    move-result v3

    .line 2382
    iget-object v4, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v4}, Landroidx/d/b/b/u;->e()I

    move-result v4

    if-nez v0, :cond_5

    .line 2384
    iget-object v0, p0, Landroidx/d/b/b/s;->W:Landroidx/d/b/b/s$c;

    invoke-virtual {v0, v3, v4}, Landroidx/d/b/b/s$c;->c(II)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget v0, p0, Landroidx/d/b/b/s;->an:I

    const/4 v5, -0x1

    if-eq v0, v5, :cond_6

    .line 2385
    invoke-super {p0, p1, p2}, Landroidx/d/e/d;->onMeasure(II)V

    .line 2386
    iget-object p1, p0, Landroidx/d/b/b/s;->W:Landroidx/d/b/b/s$c;

    iget-object p2, p0, Landroidx/d/b/b/s;->ad:Landroidx/d/c/b/f;

    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v0, v3}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object v0

    iget-object v2, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v2, v4}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object v2

    invoke-virtual {p1, p2, v0, v2}, Landroidx/d/b/b/s$c;->a(Landroidx/d/c/b/f;Landroidx/d/e/g;Landroidx/d/e/g;)V

    .line 2387
    iget-object p1, p0, Landroidx/d/b/b/s;->W:Landroidx/d/b/b/s$c;

    invoke-virtual {p1}, Landroidx/d/b/b/s$c;->a()V

    .line 2388
    iget-object p1, p0, Landroidx/d/b/b/s;->W:Landroidx/d/b/b/s$c;

    invoke-virtual {p1, v3, v4}, Landroidx/d/b/b/s$c;->b(II)V

    goto :goto_2

    :cond_6
    move v1, v2

    .line 2392
    :goto_2
    iget-boolean p1, p0, Landroidx/d/b/b/s;->N:Z

    if-nez p1, :cond_7

    if-eqz v1, :cond_c

    .line 2393
    :cond_7
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroidx/d/b/b/s;->getPaddingBottom()I

    move-result p2

    add-int/2addr p1, p2

    .line 2394
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getPaddingLeft()I

    move-result p2

    invoke-virtual {p0}, Landroidx/d/b/b/s;->getPaddingRight()I

    move-result v0

    add-int/2addr p2, v0

    .line 2395
    iget-object v0, p0, Landroidx/d/b/b/s;->ad:Landroidx/d/c/b/f;

    invoke-virtual {v0}, Landroidx/d/c/b/f;->I()I

    move-result v0

    add-int/2addr v0, p2

    .line 2396
    iget-object p2, p0, Landroidx/d/b/b/s;->ad:Landroidx/d/c/b/f;

    invoke-virtual {p2}, Landroidx/d/c/b/f;->L()I

    move-result p2

    add-int/2addr p2, p1

    .line 2397
    iget p1, p0, Landroidx/d/b/b/s;->S:I

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_8

    iget p1, p0, Landroidx/d/b/b/s;->S:I

    if-nez p1, :cond_9

    .line 2398
    :cond_8
    iget p1, p0, Landroidx/d/b/b/s;->O:I

    int-to-float p1, p1

    iget v0, p0, Landroidx/d/b/b/s;->U:F

    iget v2, p0, Landroidx/d/b/b/s;->Q:I

    iget v3, p0, Landroidx/d/b/b/s;->O:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr p1, v0

    float-to-int v0, p1

    .line 2399
    invoke-virtual {p0}, Landroidx/d/b/b/s;->requestLayout()V

    .line 2401
    :cond_9
    iget p1, p0, Landroidx/d/b/b/s;->T:I

    if-eq p1, v1, :cond_a

    iget p1, p0, Landroidx/d/b/b/s;->T:I

    if-nez p1, :cond_b

    .line 2402
    :cond_a
    iget p1, p0, Landroidx/d/b/b/s;->P:I

    int-to-float p1, p1

    iget p2, p0, Landroidx/d/b/b/s;->U:F

    iget v1, p0, Landroidx/d/b/b/s;->R:I

    iget v2, p0, Landroidx/d/b/b/s;->P:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr p2, v1

    add-float/2addr p1, p2

    float-to-int p2, p1

    .line 2403
    invoke-virtual {p0}, Landroidx/d/b/b/s;->requestLayout()V

    .line 2405
    :cond_b
    invoke-virtual {p0, v0, p2}, Landroidx/d/b/b/s;->setMeasuredDimension(II)V

    .line 2407
    :cond_c
    invoke-direct {p0}, Landroidx/d/b/b/s;->o()V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    .line 3518
    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-eqz p1, :cond_0

    .line 3519
    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p0}, Landroidx/d/b/b/s;->j()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/d/b/b/u;->a(Z)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 3477
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/d/b/b/s;->ar:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v0}, Landroidx/d/b/b/u;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3478
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget-object v0, v0, Landroidx/d/b/b/u;->f:Landroidx/d/b/b/u$a;

    if-eqz v0, :cond_0

    .line 3479
    invoke-virtual {v0}, Landroidx/d/b/b/u$a;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3480
    invoke-super {p0, p1}, Landroidx/d/e/d;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 3482
    :cond_0
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p0}, Landroidx/d/b/b/s;->getCurrentState()I

    move-result v1

    invoke-virtual {v0, p1, v1, p0}, Landroidx/d/b/b/u;->a(Landroid/view/MotionEvent;ILandroidx/d/b/b/s;)V

    const/4 p0, 0x1

    return p0

    .line 3488
    :cond_1
    invoke-super {p0, p1}, Landroidx/d/e/d;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    .line 3800
    invoke-super {p0, p1}, Landroidx/d/e/d;->onViewAdded(Landroid/view/View;)V

    .line 3801
    instance-of v0, p1, Landroidx/d/b/b/q;

    if-eqz v0, :cond_4

    .line 3802
    check-cast p1, Landroidx/d/b/b/q;

    .line 3803
    iget-object v0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3804
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    .line 3806
    :cond_0
    iget-object v0, p0, Landroidx/d/b/b/s;->aG:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3808
    invoke-virtual {p1}, Landroidx/d/b/b/q;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3809
    iget-object v0, p0, Landroidx/d/b/b/s;->aE:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 3810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/d/b/b/s;->aE:Ljava/util/ArrayList;

    .line 3812
    :cond_1
    iget-object v0, p0, Landroidx/d/b/b/s;->aE:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3814
    :cond_2
    invoke-virtual {p1}, Landroidx/d/b/b/q;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3815
    iget-object v0, p0, Landroidx/d/b/b/s;->aF:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 3816
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/d/b/b/s;->aF:Ljava/util/ArrayList;

    .line 3818
    :cond_3
    iget-object p0, p0, Landroidx/d/b/b/s;->aF:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    .line 3828
    invoke-super {p0, p1}, Landroidx/d/e/d;->onViewRemoved(Landroid/view/View;)V

    .line 3829
    iget-object v0, p0, Landroidx/d/b/b/s;->aE:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3830
    iget-object v0, p0, Landroidx/d/b/b/s;->aE:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3832
    :cond_0
    iget-object v0, p0, Landroidx/d/b/b/s;->aF:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 3833
    iget-object p0, p0, Landroidx/d/b/b/s;->aF:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public requestLayout()V
    .locals 2

    .line 2340
    iget-boolean v0, p0, Landroidx/d/b/b/s;->N:Z

    if-nez v0, :cond_0

    .line 2341
    iget v0, p0, Landroidx/d/b/b/s;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget-object v0, v0, Landroidx/d/b/b/u;->f:Landroidx/d/b/b/u$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget-object v0, v0, Landroidx/d/b/b/u;->f:Landroidx/d/b/b/u$a;

    .line 2343
    invoke-virtual {v0}, Landroidx/d/b/b/u$a;->a()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2347
    :cond_0
    invoke-super {p0}, Landroidx/d/e/d;->requestLayout()V

    return-void
.end method

.method public setDebugMode(I)V
    .locals 0

    .line 3371
    iput p1, p0, Landroidx/d/b/b/s;->v:I

    .line 3372
    invoke-virtual {p0}, Landroidx/d/b/b/s;->invalidate()V

    return-void
.end method

.method public setInteractionEnabled(Z)V
    .locals 0

    .line 4027
    iput-boolean p1, p0, Landroidx/d/b/b/s;->ar:Z

    return-void
.end method

.method public setInterpolatedProgress(F)V
    .locals 1

    .line 1329
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-eqz v0, :cond_0

    .line 1330
    sget-object v0, Landroidx/d/b/b/s$h;->c:Landroidx/d/b/b/s$h;

    invoke-virtual {p0, v0}, Landroidx/d/b/b/s;->setState(Landroidx/d/b/b/s$h;)V

    .line 1331
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v0}, Landroidx/d/b/b/u;->f()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1333
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/d/b/b/s;->setProgress(F)V

    return-void

    .line 1337
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/d/b/b/s;->setProgress(F)V

    return-void
.end method

.method public setOnHide(F)V
    .locals 3

    .line 3848
    iget-object v0, p0, Landroidx/d/b/b/s;->aF:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3849
    iget-object v0, p0, Landroidx/d/b/b/s;->aF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3851
    iget-object v2, p0, Landroidx/d/b/b/s;->aF:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/b/b/q;

    .line 3852
    invoke-virtual {v2, p1}, Landroidx/d/b/b/q;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOnShow(F)V
    .locals 3

    .line 3838
    iget-object v0, p0, Landroidx/d/b/b/s;->aE:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 3839
    iget-object v0, p0, Landroidx/d/b/b/s;->aE:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 3841
    iget-object v2, p0, Landroidx/d/b/b/s;->aE:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/b/b/q;

    .line 3842
    invoke-virtual {v2, p1}, Landroidx/d/b/b/q;->setProgress(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProgress(F)V
    .locals 5

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz v1, :cond_0

    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    :cond_0
    const-string v3, "MotionLayout"

    const-string v4, "Warning! Progress is defined for values between 0.0 and 1.0 inclusive"

    .line 1468
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    :cond_1
    invoke-virtual {p0}, Landroidx/d/b/b/s;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1471
    iget-object v0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    if-nez v0, :cond_2

    .line 1472
    new-instance v0, Landroidx/d/b/b/s$f;

    invoke-direct {v0, p0}, Landroidx/d/b/b/s$f;-><init>(Landroidx/d/b/b/s;)V

    iput-object v0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    .line 1474
    :cond_2
    iget-object p0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    invoke-virtual {p0, p1}, Landroidx/d/b/b/s$f;->a(F)V

    return-void

    :cond_3
    if-gtz v1, :cond_4

    .line 1485
    iget v1, p0, Landroidx/d/b/b/s;->an:I

    iput v1, p0, Landroidx/d/b/b/s;->l:I

    .line 1486
    iget v1, p0, Landroidx/d/b/b/s;->o:F

    cmpl-float v0, v1, v0

    if-nez v0, :cond_6

    .line 1487
    sget-object v0, Landroidx/d/b/b/s$h;->d:Landroidx/d/b/b/s$h;

    invoke-virtual {p0, v0}, Landroidx/d/b/b/s;->setState(Landroidx/d/b/b/s$h;)V

    goto :goto_0

    :cond_4
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_5

    .line 1490
    iget v0, p0, Landroidx/d/b/b/s;->ao:I

    iput v0, p0, Landroidx/d/b/b/s;->l:I

    .line 1491
    iget v0, p0, Landroidx/d/b/b/s;->o:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    .line 1492
    sget-object v0, Landroidx/d/b/b/s$h;->d:Landroidx/d/b/b/s$h;

    invoke-virtual {p0, v0}, Landroidx/d/b/b/s;->setState(Landroidx/d/b/b/s$h;)V

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    .line 1495
    iput v0, p0, Landroidx/d/b/b/s;->l:I

    .line 1496
    sget-object v0, Landroidx/d/b/b/s$h;->c:Landroidx/d/b/b/s$h;

    invoke-virtual {p0, v0}, Landroidx/d/b/b/s;->setState(Landroidx/d/b/b/s$h;)V

    .line 1500
    :cond_6
    :goto_0
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 1504
    iput-boolean v0, p0, Landroidx/d/b/b/s;->av:Z

    .line 1505
    iput p1, p0, Landroidx/d/b/b/s;->p:F

    .line 1506
    iput p1, p0, Landroidx/d/b/b/s;->n:F

    const-wide/16 v1, -0x1

    .line 1507
    iput-wide v1, p0, Landroidx/d/b/b/s;->au:J

    .line 1508
    iput-wide v1, p0, Landroidx/d/b/b/s;->as:J

    const/4 p1, 0x0

    .line 1509
    iput-object p1, p0, Landroidx/d/b/b/s;->j:Landroid/view/animation/Interpolator;

    .line 1511
    iput-boolean v0, p0, Landroidx/d/b/b/s;->q:Z

    .line 1512
    invoke-virtual {p0}, Landroidx/d/b/b/s;->invalidate()V

    return-void
.end method

.method public setScene(Landroidx/d/b/b/u;)V
    .locals 1

    .line 3280
    iput-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    .line 3281
    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p0}, Landroidx/d/b/b/s;->j()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/d/b/b/u;->a(Z)V

    .line 3282
    invoke-virtual {p0}, Landroidx/d/b/b/s;->g()V

    return-void
.end method

.method setState(Landroidx/d/b/b/s$h;)V
    .locals 2

    .line 1040
    sget-object v0, Landroidx/d/b/b/s$h;->d:Landroidx/d/b/b/s$h;

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroidx/d/b/b/s;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 1043
    :cond_0
    iget-object v0, p0, Landroidx/d/b/b/s;->V:Landroidx/d/b/b/s$h;

    .line 1044
    iput-object p1, p0, Landroidx/d/b/b/s;->V:Landroidx/d/b/b/s$h;

    .line 1046
    sget-object v1, Landroidx/d/b/b/s$h;->c:Landroidx/d/b/b/s$h;

    if-ne v0, v1, :cond_1

    sget-object v1, Landroidx/d/b/b/s$h;->c:Landroidx/d/b/b/s$h;

    if-ne p1, v1, :cond_1

    .line 1047
    invoke-direct {p0}, Landroidx/d/b/b/s;->q()V

    .line 1049
    :cond_1
    sget-object v1, Landroidx/d/b/b/s$2;->a:[I

    invoke-virtual {v0}, Landroidx/d/b/b/s$h;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1060
    :pswitch_0
    sget-object v0, Landroidx/d/b/b/s$h;->d:Landroidx/d/b/b/s$h;

    if-ne p1, v0, :cond_3

    .line 1061
    invoke-virtual {p0}, Landroidx/d/b/b/s;->e()V

    goto :goto_0

    .line 1052
    :pswitch_1
    sget-object v0, Landroidx/d/b/b/s$h;->c:Landroidx/d/b/b/s$h;

    if-ne p1, v0, :cond_2

    .line 1053
    invoke-direct {p0}, Landroidx/d/b/b/s;->q()V

    .line 1055
    :cond_2
    sget-object v0, Landroidx/d/b/b/s$h;->d:Landroidx/d/b/b/s$h;

    if-ne p1, v0, :cond_3

    .line 1056
    invoke-virtual {p0}, Landroidx/d/b/b/s;->e()V

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setTransition(I)V
    .locals 6

    .line 1186
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-eqz v0, :cond_6

    .line 1187
    invoke-virtual {p0, p1}, Landroidx/d/b/b/s;->e(I)Landroidx/d/b/b/u$a;

    move-result-object p1

    .line 1188
    iget v0, p0, Landroidx/d/b/b/s;->l:I

    .line 1189
    invoke-virtual {p1}, Landroidx/d/b/b/u$a;->e()I

    move-result v0

    iput v0, p0, Landroidx/d/b/b/s;->an:I

    .line 1190
    invoke-virtual {p1}, Landroidx/d/b/b/u$a;->d()I

    move-result v0

    iput v0, p0, Landroidx/d/b/b/s;->ao:I

    .line 1192
    invoke-virtual {p0}, Landroidx/d/b/b/s;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1193
    iget-object p1, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    if-nez p1, :cond_0

    .line 1194
    new-instance p1, Landroidx/d/b/b/s$f;

    invoke-direct {p1, p0}, Landroidx/d/b/b/s$f;-><init>(Landroidx/d/b/b/s;)V

    iput-object p1, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    .line 1196
    :cond_0
    iget-object p1, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    iget v0, p0, Landroidx/d/b/b/s;->an:I

    invoke-virtual {p1, v0}, Landroidx/d/b/b/s$f;->b(I)V

    .line 1197
    iget-object p1, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    iget p0, p0, Landroidx/d/b/b/s;->ao:I

    invoke-virtual {p1, p0}, Landroidx/d/b/b/s$f;->a(I)V

    return-void

    :cond_1
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 1209
    iget v1, p0, Landroidx/d/b/b/s;->l:I

    iget v2, p0, Landroidx/d/b/b/s;->an:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    move v0, v3

    goto :goto_0

    .line 1211
    :cond_2
    iget v1, p0, Landroidx/d/b/b/s;->l:I

    iget v2, p0, Landroidx/d/b/b/s;->ao:I

    if-ne v1, v2, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1214
    :cond_3
    :goto_0
    iget-object v1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v1, p1}, Landroidx/d/b/b/u;->c(Landroidx/d/b/b/u$a;)V

    .line 1215
    iget-object p1, p0, Landroidx/d/b/b/s;->W:Landroidx/d/b/b/s$c;

    iget-object v1, p0, Landroidx/d/b/b/s;->ad:Landroidx/d/c/b/f;

    iget-object v2, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget v4, p0, Landroidx/d/b/b/s;->an:I

    invoke-virtual {v2, v4}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object v2

    iget-object v4, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget v5, p0, Landroidx/d/b/b/s;->ao:I

    invoke-virtual {v4, v5}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v4}, Landroidx/d/b/b/s$c;->a(Landroidx/d/c/b/f;Landroidx/d/e/g;Landroidx/d/e/g;)V

    .line 1216
    invoke-virtual {p0}, Landroidx/d/b/b/s;->g()V

    .line 1218
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v3, v0

    :goto_1
    iput v3, p0, Landroidx/d/b/b/s;->o:F

    .line 1220
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "MotionLayout"

    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroidx/d/b/b/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transitionToStart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    invoke-virtual {p0}, Landroidx/d/b/b/s;->b()V

    goto :goto_2

    .line 1224
    :cond_5
    invoke-virtual {p0, v0}, Landroidx/d/b/b/s;->setProgress(F)V

    :cond_6
    :goto_2
    return-void
.end method

.method protected setTransition(Landroidx/d/b/b/u$a;)V
    .locals 4

    .line 1230
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v0, p1}, Landroidx/d/b/b/u;->c(Landroidx/d/b/b/u$a;)V

    .line 1232
    sget-object v0, Landroidx/d/b/b/s$h;->b:Landroidx/d/b/b/s$h;

    invoke-virtual {p0, v0}, Landroidx/d/b/b/s;->setState(Landroidx/d/b/b/s$h;)V

    .line 1233
    iget v0, p0, Landroidx/d/b/b/s;->l:I

    iget-object v1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v1}, Landroidx/d/b/b/u;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1234
    iput v0, p0, Landroidx/d/b/b/s;->o:F

    .line 1235
    iput v0, p0, Landroidx/d/b/b/s;->n:F

    .line 1236
    iput v0, p0, Landroidx/d/b/b/s;->p:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1238
    iput v0, p0, Landroidx/d/b/b/s;->o:F

    .line 1239
    iput v0, p0, Landroidx/d/b/b/s;->n:F

    .line 1240
    iput v0, p0, Landroidx/d/b/b/s;->p:F

    :goto_0
    const/4 v0, 0x1

    .line 1242
    invoke-virtual {p1, v0}, Landroidx/d/b/b/u$a;->d(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getNanoTime()J

    move-result-wide v0

    :goto_1
    iput-wide v0, p0, Landroidx/d/b/b/s;->au:J

    .line 1247
    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p1}, Landroidx/d/b/b/u;->d()I

    move-result p1

    .line 1248
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {v0}, Landroidx/d/b/b/u;->e()I

    move-result v0

    .line 1249
    iget v1, p0, Landroidx/d/b/b/s;->an:I

    if-ne p1, v1, :cond_2

    iget v1, p0, Landroidx/d/b/b/s;->ao:I

    if-ne v0, v1, :cond_2

    return-void

    .line 1252
    :cond_2
    iput p1, p0, Landroidx/d/b/b/s;->an:I

    .line 1253
    iput v0, p0, Landroidx/d/b/b/s;->ao:I

    .line 1254
    iget-object p1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget v0, p0, Landroidx/d/b/b/s;->an:I

    iget v1, p0, Landroidx/d/b/b/s;->ao:I

    invoke-virtual {p1, v0, v1}, Landroidx/d/b/b/u;->a(II)V

    .line 1260
    iget-object p1, p0, Landroidx/d/b/b/s;->W:Landroidx/d/b/b/s$c;

    iget-object v0, p0, Landroidx/d/b/b/s;->ad:Landroidx/d/c/b/f;

    iget-object v1, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget v2, p0, Landroidx/d/b/b/s;->an:I

    invoke-virtual {v1, v2}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object v1

    iget-object v2, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    iget v3, p0, Landroidx/d/b/b/s;->ao:I

    invoke-virtual {v2, v3}, Landroidx/d/b/b/u;->c(I)Landroidx/d/e/g;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/d/b/b/s$c;->a(Landroidx/d/c/b/f;Landroidx/d/e/g;Landroidx/d/e/g;)V

    .line 1261
    iget-object p1, p0, Landroidx/d/b/b/s;->W:Landroidx/d/b/b/s$c;

    iget v0, p0, Landroidx/d/b/b/s;->an:I

    iget v1, p0, Landroidx/d/b/b/s;->ao:I

    invoke-virtual {p1, v0, v1}, Landroidx/d/b/b/s$c;->b(II)V

    .line 1262
    iget-object p1, p0, Landroidx/d/b/b/s;->W:Landroidx/d/b/b/s$c;

    invoke-virtual {p1}, Landroidx/d/b/b/s$c;->a()V

    .line 1264
    invoke-virtual {p0}, Landroidx/d/b/b/s;->g()V

    return-void
.end method

.method public setTransitionDuration(I)V
    .locals 1

    .line 3964
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-nez v0, :cond_0

    const-string p0, "MotionLayout"

    const-string p1, "MotionScene not defined"

    .line 3965
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3968
    :cond_0
    iget-object p0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    invoke-virtual {p0, p1}, Landroidx/d/b/b/u;->e(I)V

    return-void
.end method

.method public setTransitionListener(Landroidx/d/b/b/s$g;)V
    .locals 0

    .line 3618
    iput-object p1, p0, Landroidx/d/b/b/s;->aw:Landroidx/d/b/b/s$g;

    return-void
.end method

.method public setTransitionState(Landroid/os/Bundle;)V
    .locals 1

    .line 1441
    iget-object v0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    if-nez v0, :cond_0

    .line 1442
    new-instance v0, Landroidx/d/b/b/s$f;

    invoke-direct {v0, p0}, Landroidx/d/b/b/s$f;-><init>(Landroidx/d/b/b/s;)V

    iput-object v0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    .line 1444
    :cond_0
    iget-object v0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    invoke-virtual {v0, p1}, Landroidx/d/b/b/s$f;->a(Landroid/os/Bundle;)V

    .line 1445
    invoke-virtual {p0}, Landroidx/d/b/b/s;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1446
    iget-object p0, p0, Landroidx/d/b/b/s;->aO:Landroidx/d/b/b/s$f;

    invoke-virtual {p0}, Landroidx/d/b/b/s$f;->a()V

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2352
    invoke-virtual {p0}, Landroidx/d/b/b/s;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroidx/d/b/b/s;->an:I

    invoke-static {v0, v2}, Landroidx/d/b/b/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/d/b/b/s;->ao:I

    .line 2354
    invoke-static {v0, v2}, Landroidx/d/b/b/c;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (pos:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/d/b/b/s;->o:F

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " Dpos/Dt:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/d/b/b/s;->k:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
