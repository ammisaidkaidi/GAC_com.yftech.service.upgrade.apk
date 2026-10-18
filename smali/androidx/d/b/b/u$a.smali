.class public Landroidx/d/b/b/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/b/b/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/d/b/b/u$a$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field static final f:I = 0x1


# instance fields
.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:F

.field private final p:Landroidx/d/b/b/u;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/d/b/b/j;",
            ">;"
        }
    .end annotation
.end field

.field private r:Landroidx/d/b/b/y;

.field private s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/d/b/b/u$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private t:I

.field private u:Z

.field private v:I

.field private w:I

.field private x:I


# direct methods
.method public constructor <init>(ILandroidx/d/b/b/u;II)V
    .locals 4

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 434
    iput v0, p0, Landroidx/d/b/b/u$a;->g:I

    const/4 v1, 0x0

    .line 435
    iput-boolean v1, p0, Landroidx/d/b/b/u$a;->h:Z

    .line 436
    iput v0, p0, Landroidx/d/b/b/u$a;->i:I

    .line 437
    iput v0, p0, Landroidx/d/b/b/u$a;->j:I

    .line 438
    iput v1, p0, Landroidx/d/b/b/u$a;->k:I

    const/4 v2, 0x0

    .line 439
    iput-object v2, p0, Landroidx/d/b/b/u$a;->l:Ljava/lang/String;

    .line 440
    iput v0, p0, Landroidx/d/b/b/u$a;->m:I

    const/16 v3, 0x190

    .line 441
    iput v3, p0, Landroidx/d/b/b/u$a;->n:I

    const/4 v3, 0x0

    .line 442
    iput v3, p0, Landroidx/d/b/b/u$a;->o:F

    .line 444
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/d/b/b/u$a;->q:Ljava/util/ArrayList;

    .line 445
    iput-object v2, p0, Landroidx/d/b/b/u$a;->r:Landroidx/d/b/b/y;

    .line 446
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/d/b/b/u$a;->s:Ljava/util/ArrayList;

    .line 447
    iput v1, p0, Landroidx/d/b/b/u$a;->t:I

    .line 453
    iput-boolean v1, p0, Landroidx/d/b/b/u$a;->u:Z

    .line 454
    iput v0, p0, Landroidx/d/b/b/u$a;->v:I

    .line 455
    iput v1, p0, Landroidx/d/b/b/u$a;->w:I

    .line 456
    iput v1, p0, Landroidx/d/b/b/u$a;->x:I

    .line 791
    iput p1, p0, Landroidx/d/b/b/u$a;->g:I

    .line 792
    iput-object p2, p0, Landroidx/d/b/b/u$a;->p:Landroidx/d/b/b/u;

    .line 793
    iput p3, p0, Landroidx/d/b/b/u$a;->j:I

    .line 794
    iput p4, p0, Landroidx/d/b/b/u$a;->i:I

    .line 795
    invoke-static {p2}, Landroidx/d/b/b/u;->b(Landroidx/d/b/b/u;)I

    move-result p1

    iput p1, p0, Landroidx/d/b/b/u$a;->n:I

    .line 796
    invoke-static {p2}, Landroidx/d/b/b/u;->c(Landroidx/d/b/b/u;)I

    move-result p1

    iput p1, p0, Landroidx/d/b/b/u$a;->w:I

    return-void
.end method

.method constructor <init>(Landroidx/d/b/b/u;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 434
    iput v0, p0, Landroidx/d/b/b/u$a;->g:I

    const/4 v1, 0x0

    .line 435
    iput-boolean v1, p0, Landroidx/d/b/b/u$a;->h:Z

    .line 436
    iput v0, p0, Landroidx/d/b/b/u$a;->i:I

    .line 437
    iput v0, p0, Landroidx/d/b/b/u$a;->j:I

    .line 438
    iput v1, p0, Landroidx/d/b/b/u$a;->k:I

    const/4 v2, 0x0

    .line 439
    iput-object v2, p0, Landroidx/d/b/b/u$a;->l:Ljava/lang/String;

    .line 440
    iput v0, p0, Landroidx/d/b/b/u$a;->m:I

    const/16 v3, 0x190

    .line 441
    iput v3, p0, Landroidx/d/b/b/u$a;->n:I

    const/4 v3, 0x0

    .line 442
    iput v3, p0, Landroidx/d/b/b/u$a;->o:F

    .line 444
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/d/b/b/u$a;->q:Ljava/util/ArrayList;

    .line 445
    iput-object v2, p0, Landroidx/d/b/b/u$a;->r:Landroidx/d/b/b/y;

    .line 446
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/d/b/b/u$a;->s:Ljava/util/ArrayList;

    .line 447
    iput v1, p0, Landroidx/d/b/b/u$a;->t:I

    .line 453
    iput-boolean v1, p0, Landroidx/d/b/b/u$a;->u:Z

    .line 454
    iput v0, p0, Landroidx/d/b/b/u$a;->v:I

    .line 455
    iput v1, p0, Landroidx/d/b/b/u$a;->w:I

    .line 456
    iput v1, p0, Landroidx/d/b/b/u$a;->x:I

    .line 800
    invoke-static {p1}, Landroidx/d/b/b/u;->b(Landroidx/d/b/b/u;)I

    move-result v0

    iput v0, p0, Landroidx/d/b/b/u$a;->n:I

    .line 801
    invoke-static {p1}, Landroidx/d/b/b/u;->c(Landroidx/d/b/b/u;)I

    move-result v0

    iput v0, p0, Landroidx/d/b/b/u$a;->w:I

    .line 802
    iput-object p1, p0, Landroidx/d/b/b/u$a;->p:Landroidx/d/b/b/u;

    .line 803
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Landroidx/d/b/b/u$a;->a(Landroidx/d/b/b/u;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroidx/d/b/b/u;Landroidx/d/b/b/u$a;)V
    .locals 4

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 434
    iput v0, p0, Landroidx/d/b/b/u$a;->g:I

    const/4 v1, 0x0

    .line 435
    iput-boolean v1, p0, Landroidx/d/b/b/u$a;->h:Z

    .line 436
    iput v0, p0, Landroidx/d/b/b/u$a;->i:I

    .line 437
    iput v0, p0, Landroidx/d/b/b/u$a;->j:I

    .line 438
    iput v1, p0, Landroidx/d/b/b/u$a;->k:I

    const/4 v2, 0x0

    .line 439
    iput-object v2, p0, Landroidx/d/b/b/u$a;->l:Ljava/lang/String;

    .line 440
    iput v0, p0, Landroidx/d/b/b/u$a;->m:I

    const/16 v3, 0x190

    .line 441
    iput v3, p0, Landroidx/d/b/b/u$a;->n:I

    const/4 v3, 0x0

    .line 442
    iput v3, p0, Landroidx/d/b/b/u$a;->o:F

    .line 444
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroidx/d/b/b/u$a;->q:Ljava/util/ArrayList;

    .line 445
    iput-object v2, p0, Landroidx/d/b/b/u$a;->r:Landroidx/d/b/b/y;

    .line 446
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/d/b/b/u$a;->s:Ljava/util/ArrayList;

    .line 447
    iput v1, p0, Landroidx/d/b/b/u$a;->t:I

    .line 453
    iput-boolean v1, p0, Landroidx/d/b/b/u$a;->u:Z

    .line 454
    iput v0, p0, Landroidx/d/b/b/u$a;->v:I

    .line 455
    iput v1, p0, Landroidx/d/b/b/u$a;->w:I

    .line 456
    iput v1, p0, Landroidx/d/b/b/u$a;->x:I

    .line 764
    iput-object p1, p0, Landroidx/d/b/b/u$a;->p:Landroidx/d/b/b/u;

    if-eqz p2, :cond_0

    .line 766
    iget p1, p2, Landroidx/d/b/b/u$a;->v:I

    iput p1, p0, Landroidx/d/b/b/u$a;->v:I

    .line 767
    iget p1, p2, Landroidx/d/b/b/u$a;->k:I

    iput p1, p0, Landroidx/d/b/b/u$a;->k:I

    .line 768
    iget-object p1, p2, Landroidx/d/b/b/u$a;->l:Ljava/lang/String;

    iput-object p1, p0, Landroidx/d/b/b/u$a;->l:Ljava/lang/String;

    .line 769
    iget p1, p2, Landroidx/d/b/b/u$a;->m:I

    iput p1, p0, Landroidx/d/b/b/u$a;->m:I

    .line 770
    iget p1, p2, Landroidx/d/b/b/u$a;->n:I

    iput p1, p0, Landroidx/d/b/b/u$a;->n:I

    .line 771
    iget-object p1, p2, Landroidx/d/b/b/u$a;->q:Ljava/util/ArrayList;

    iput-object p1, p0, Landroidx/d/b/b/u$a;->q:Ljava/util/ArrayList;

    .line 772
    iget p1, p2, Landroidx/d/b/b/u$a;->o:F

    iput p1, p0, Landroidx/d/b/b/u$a;->o:F

    .line 773
    iget p1, p2, Landroidx/d/b/b/u$a;->w:I

    iput p1, p0, Landroidx/d/b/b/u$a;->w:I

    :cond_0
    return-void
.end method

.method static synthetic a(Landroidx/d/b/b/u$a;)I
    .locals 0

    .line 433
    iget p0, p0, Landroidx/d/b/b/u$a;->i:I

    return p0
.end method

.method static synthetic a(Landroidx/d/b/b/u$a;I)I
    .locals 0

    .line 433
    iput p1, p0, Landroidx/d/b/b/u$a;->j:I

    return p1
.end method

.method static synthetic a(Landroidx/d/b/b/u$a;Landroidx/d/b/b/y;)Landroidx/d/b/b/y;
    .locals 0

    .line 433
    iput-object p1, p0, Landroidx/d/b/b/u$a;->r:Landroidx/d/b/b/y;

    return-object p1
.end method

.method private a(Landroidx/d/b/b/u;Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 9

    .line 813
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ge v2, v0, :cond_e

    .line 815
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 816
    sget v6, Landroidx/d/e/m$m;->Transition_constraintSetEnd:I

    if-ne v5, v6, :cond_0

    .line 817
    iget v3, p0, Landroidx/d/b/b/u$a;->i:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/d/b/b/u$a;->i:I

    .line 818
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroidx/d/b/b/u$a;->i:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "layout"

    .line 819
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 820
    new-instance v3, Landroidx/d/e/g;

    invoke-direct {v3}, Landroidx/d/e/g;-><init>()V

    .line 821
    iget v4, p0, Landroidx/d/b/b/u$a;->i:I

    invoke-virtual {v3, p2, v4}, Landroidx/d/e/g;->b(Landroid/content/Context;I)V

    .line 822
    invoke-static {p1}, Landroidx/d/b/b/u;->d(Landroidx/d/b/b/u;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Landroidx/d/b/b/u$a;->i:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 828
    :cond_0
    sget v6, Landroidx/d/e/m$m;->Transition_constraintSetStart:I

    if-ne v5, v6, :cond_1

    .line 829
    iget v3, p0, Landroidx/d/b/b/u$a;->j:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/d/b/b/u$a;->j:I

    .line 830
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Landroidx/d/b/b/u$a;->j:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "layout"

    .line 831
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 832
    new-instance v3, Landroidx/d/e/g;

    invoke-direct {v3}, Landroidx/d/e/g;-><init>()V

    .line 833
    iget v4, p0, Landroidx/d/b/b/u$a;->j:I

    invoke-virtual {v3, p2, v4}, Landroidx/d/e/g;->b(Landroid/content/Context;I)V

    .line 834
    invoke-static {p1}, Landroidx/d/b/b/u;->d(Landroidx/d/b/b/u;)Landroid/util/SparseArray;

    move-result-object v4

    iget v5, p0, Landroidx/d/b/b/u$a;->j:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 836
    :cond_1
    sget v6, Landroidx/d/e/m$m;->Transition_motionInterpolator:I

    if-ne v5, v6, :cond_5

    .line 837
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 839
    iget v7, v6, Landroid/util/TypedValue;->type:I

    const/4 v8, -0x2

    if-ne v7, v3, :cond_2

    .line 840
    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/d/b/b/u$a;->m:I

    .line 841
    iget v3, p0, Landroidx/d/b/b/u$a;->m:I

    if-eq v3, v4, :cond_d

    .line 842
    iput v8, p0, Landroidx/d/b/b/u$a;->k:I

    goto/16 :goto_1

    .line 844
    :cond_2
    iget v3, v6, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_4

    .line 845
    invoke-virtual {p3, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/d/b/b/u$a;->l:Ljava/lang/String;

    .line 846
    iget-object v3, p0, Landroidx/d/b/b/u$a;->l:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    .line 847
    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/d/b/b/u$a;->m:I

    .line 848
    iput v8, p0, Landroidx/d/b/b/u$a;->k:I

    goto/16 :goto_1

    .line 850
    :cond_3
    iput v4, p0, Landroidx/d/b/b/u$a;->k:I

    goto/16 :goto_1

    .line 853
    :cond_4
    iget v3, p0, Landroidx/d/b/b/u$a;->k:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/d/b/b/u$a;->k:I

    goto :goto_1

    .line 856
    :cond_5
    sget v3, Landroidx/d/e/m$m;->Transition_duration:I

    if-ne v5, v3, :cond_6

    .line 857
    iget v3, p0, Landroidx/d/b/b/u$a;->n:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/d/b/b/u$a;->n:I

    goto :goto_1

    .line 858
    :cond_6
    sget v3, Landroidx/d/e/m$m;->Transition_staggered:I

    if-ne v5, v3, :cond_7

    .line 859
    iget v3, p0, Landroidx/d/b/b/u$a;->o:F

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/d/b/b/u$a;->o:F

    goto :goto_1

    .line 860
    :cond_7
    sget v3, Landroidx/d/e/m$m;->Transition_autoTransition:I

    if-ne v5, v3, :cond_8

    .line 861
    iget v3, p0, Landroidx/d/b/b/u$a;->t:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/d/b/b/u$a;->t:I

    goto :goto_1

    .line 862
    :cond_8
    sget v3, Landroidx/d/e/m$m;->Transition_android_id:I

    if-ne v5, v3, :cond_9

    .line 863
    iget v3, p0, Landroidx/d/b/b/u$a;->g:I

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroidx/d/b/b/u$a;->g:I

    goto :goto_1

    .line 864
    :cond_9
    sget v3, Landroidx/d/e/m$m;->Transition_transitionDisable:I

    if-ne v5, v3, :cond_a

    .line 865
    iget-boolean v3, p0, Landroidx/d/b/b/u$a;->u:Z

    invoke-virtual {p3, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/d/b/b/u$a;->u:Z

    goto :goto_1

    .line 866
    :cond_a
    sget v3, Landroidx/d/e/m$m;->Transition_pathMotionArc:I

    if-ne v5, v3, :cond_b

    .line 867
    invoke-virtual {p3, v5, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/d/b/b/u$a;->v:I

    goto :goto_1

    .line 868
    :cond_b
    sget v3, Landroidx/d/e/m$m;->Transition_layoutDuringTransition:I

    if-ne v5, v3, :cond_c

    .line 869
    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/d/b/b/u$a;->w:I

    goto :goto_1

    .line 870
    :cond_c
    sget v3, Landroidx/d/e/m$m;->Transition_transitionFlags:I

    if-ne v5, v3, :cond_d

    .line 871
    invoke-virtual {p3, v5, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroidx/d/b/b/u$a;->x:I

    :cond_d
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 874
    :cond_e
    iget p1, p0, Landroidx/d/b/b/u$a;->j:I

    if-ne p1, v4, :cond_f

    .line 875
    iput-boolean v3, p0, Landroidx/d/b/b/u$a;->h:Z

    :cond_f
    return-void
.end method

.method private a(Landroidx/d/b/b/u;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 807
    sget-object v0, Landroidx/d/e/m$m;->Transition:[I

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 808
    invoke-direct {p0, p1, p2, p3}, Landroidx/d/b/b/u$a;->a(Landroidx/d/b/b/u;Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 809
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic b(Landroidx/d/b/b/u$a;)I
    .locals 0

    .line 433
    iget p0, p0, Landroidx/d/b/b/u$a;->j:I

    return p0
.end method

.method static synthetic b(Landroidx/d/b/b/u$a;I)I
    .locals 0

    .line 433
    iput p1, p0, Landroidx/d/b/b/u$a;->i:I

    return p1
.end method

.method static synthetic c(Landroidx/d/b/b/u$a;)Landroidx/d/b/b/y;
    .locals 0

    .line 433
    iget-object p0, p0, Landroidx/d/b/b/u$a;->r:Landroidx/d/b/b/y;

    return-object p0
.end method

.method static synthetic d(Landroidx/d/b/b/u$a;)I
    .locals 0

    .line 433
    iget p0, p0, Landroidx/d/b/b/u$a;->g:I

    return p0
.end method

.method static synthetic e(Landroidx/d/b/b/u$a;)Ljava/util/ArrayList;
    .locals 0

    .line 433
    iget-object p0, p0, Landroidx/d/b/b/u$a;->s:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic f(Landroidx/d/b/b/u$a;)Z
    .locals 0

    .line 433
    iget-boolean p0, p0, Landroidx/d/b/b/u$a;->u:Z

    return p0
.end method

.method static synthetic g(Landroidx/d/b/b/u$a;)I
    .locals 0

    .line 433
    iget p0, p0, Landroidx/d/b/b/u$a;->t:I

    return p0
.end method

.method static synthetic h(Landroidx/d/b/b/u$a;)Landroidx/d/b/b/u;
    .locals 0

    .line 433
    iget-object p0, p0, Landroidx/d/b/b/u$a;->p:Landroidx/d/b/b/u;

    return-object p0
.end method

.method static synthetic i(Landroidx/d/b/b/u$a;)Z
    .locals 0

    .line 433
    iget-boolean p0, p0, Landroidx/d/b/b/u$a;->h:Z

    return p0
.end method

.method static synthetic j(Landroidx/d/b/b/u$a;)Ljava/util/ArrayList;
    .locals 0

    .line 433
    iget-object p0, p0, Landroidx/d/b/b/u$a;->q:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic k(Landroidx/d/b/b/u$a;)I
    .locals 0

    .line 433
    iget p0, p0, Landroidx/d/b/b/u$a;->k:I

    return p0
.end method

.method static synthetic l(Landroidx/d/b/b/u$a;)Ljava/lang/String;
    .locals 0

    .line 433
    iget-object p0, p0, Landroidx/d/b/b/u$a;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Landroidx/d/b/b/u$a;)I
    .locals 0

    .line 433
    iget p0, p0, Landroidx/d/b/b/u$a;->m:I

    return p0
.end method

.method static synthetic n(Landroidx/d/b/b/u$a;)I
    .locals 0

    .line 433
    iget p0, p0, Landroidx/d/b/b/u$a;->n:I

    return p0
.end method

.method static synthetic o(Landroidx/d/b/b/u$a;)I
    .locals 0

    .line 433
    iget p0, p0, Landroidx/d/b/b/u$a;->v:I

    return p0
.end method

.method static synthetic p(Landroidx/d/b/b/u$a;)F
    .locals 0

    .line 433
    iget p0, p0, Landroidx/d/b/b/u$a;->o:F

    return p0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 460
    iget p0, p0, Landroidx/d/b/b/u$a;->w:I

    return p0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 621
    iget v0, p0, Landroidx/d/b/b/u$a;->j:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "null"

    goto :goto_0

    .line 624
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Landroidx/d/b/b/u$a;->j:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 626
    :goto_0
    iget v2, p0, Landroidx/d/b/b/u$a;->i:I

    if-ne v2, v1, :cond_1

    .line 627
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -> null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 629
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p0, p0, Landroidx/d/b/b/u$a;->i:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public a(F)V
    .locals 0

    .line 571
    iput p1, p0, Landroidx/d/b/b/u$a;->o:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 475
    iput p1, p0, Landroidx/d/b/b/u$a;->t:I

    return-void
.end method

.method public a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 464
    iget-object v0, p0, Landroidx/d/b/b/u$a;->s:Ljava/util/ArrayList;

    new-instance v1, Landroidx/d/b/b/u$a$a;

    invoke-direct {v1, p1, p0, p2}, Landroidx/d/b/b/u$a$a;-><init>(Landroid/content/Context;Landroidx/d/b/b/u$a;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 609
    iput-boolean p1, p0, Landroidx/d/b/b/u$a;->u:Z

    return-void
.end method

.method public b()I
    .locals 0

    .line 485
    iget p0, p0, Landroidx/d/b/b/u$a;->t:I

    return p0
.end method

.method public b(I)V
    .locals 0

    .line 520
    iput p1, p0, Landroidx/d/b/b/u$a;->n:I

    return-void
.end method

.method public c()I
    .locals 0

    .line 493
    iget p0, p0, Landroidx/d/b/b/u$a;->g:I

    return p0
.end method

.method public c(I)V
    .locals 0

    .line 581
    iput p1, p0, Landroidx/d/b/b/u$a;->v:I

    return-void
.end method

.method public d()I
    .locals 0

    .line 502
    iget p0, p0, Landroidx/d/b/b/u$a;->i:I

    return p0
.end method

.method public d(I)Z
    .locals 0

    .line 635
    iget p0, p0, Landroidx/d/b/b/u$a;->x:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public e()I
    .locals 0

    .line 511
    iget p0, p0, Landroidx/d/b/b/u$a;->j:I

    return p0
.end method

.method public f()I
    .locals 0

    .line 529
    iget p0, p0, Landroidx/d/b/b/u$a;->n:I

    return p0
.end method

.method public g()F
    .locals 0

    .line 538
    iget p0, p0, Landroidx/d/b/b/u$a;->o:F

    return p0
.end method

.method public h()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/d/b/b/j;",
            ">;"
        }
    .end annotation

    .line 542
    iget-object p0, p0, Landroidx/d/b/b/u$a;->q:Ljava/util/ArrayList;

    return-object p0
.end method

.method public i()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/d/b/b/u$a$a;",
            ">;"
        }
    .end annotation

    .line 551
    iget-object p0, p0, Landroidx/d/b/b/u$a;->s:Ljava/util/ArrayList;

    return-object p0
.end method

.method public j()Landroidx/d/b/b/y;
    .locals 0

    .line 560
    iget-object p0, p0, Landroidx/d/b/b/u$a;->r:Landroidx/d/b/b/y;

    return-object p0
.end method

.method public k()I
    .locals 0

    .line 591
    iget p0, p0, Landroidx/d/b/b/u$a;->v:I

    return p0
.end method

.method public l()Z
    .locals 0

    .line 599
    iget-boolean p0, p0, Landroidx/d/b/b/u$a;->u:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
