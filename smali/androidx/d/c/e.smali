.class public Landroidx/d/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/d/c/e$a;,
        Landroidx/d/c/e$b;
    }
.end annotation


# static fields
.field public static final a:Z = false

.field public static final b:Z = false

.field public static final c:Z = false

.field public static d:Z = false

.field public static e:Z = true

.field public static f:Z = true

.field public static g:Z = true

.field public static h:Z = true

.field public static i:Z = false

.field public static r:Landroidx/d/c/f; = null

.field public static s:J = 0x0L

.field public static t:J = 0x0L

.field private static final u:Z = false

.field private static v:I = 0x3e8


# instance fields
.field private A:[Z

.field private B:I

.field private C:[Landroidx/d/c/i;

.field private D:I

.field private E:Landroidx/d/c/e$a;

.field public j:Z

.field k:I

.field l:[Landroidx/d/c/b;

.field public m:Z

.field public n:Z

.field o:I

.field p:I

.field final q:Landroidx/d/c/c;

.field private w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/d/c/i;",
            ">;"
        }
    .end annotation
.end field

.field private x:Landroidx/d/c/e$a;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Landroidx/d/c/e;->j:Z

    .line 53
    iput v0, p0, Landroidx/d/c/e;->k:I

    const/4 v1, 0x0

    .line 58
    iput-object v1, p0, Landroidx/d/c/e;->w:Ljava/util/HashMap;

    const/16 v2, 0x20

    .line 65
    iput v2, p0, Landroidx/d/c/e;->y:I

    .line 66
    iget v2, p0, Landroidx/d/c/e;->y:I

    iput v2, p0, Landroidx/d/c/e;->z:I

    .line 67
    iput-object v1, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    .line 70
    iput-boolean v0, p0, Landroidx/d/c/e;->m:Z

    .line 71
    iput-boolean v0, p0, Landroidx/d/c/e;->n:Z

    .line 74
    iget v1, p0, Landroidx/d/c/e;->y:I

    new-array v1, v1, [Z

    iput-object v1, p0, Landroidx/d/c/e;->A:[Z

    const/4 v1, 0x1

    .line 76
    iput v1, p0, Landroidx/d/c/e;->o:I

    .line 77
    iput v0, p0, Landroidx/d/c/e;->p:I

    .line 78
    iget v1, p0, Landroidx/d/c/e;->y:I

    iput v1, p0, Landroidx/d/c/e;->B:I

    .line 82
    sget v1, Landroidx/d/c/e;->v:I

    new-array v1, v1, [Landroidx/d/c/i;

    iput-object v1, p0, Landroidx/d/c/e;->C:[Landroidx/d/c/i;

    .line 83
    iput v0, p0, Landroidx/d/c/e;->D:I

    .line 95
    iget v0, p0, Landroidx/d/c/e;->y:I

    new-array v0, v0, [Landroidx/d/c/b;

    iput-object v0, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    .line 96
    invoke-direct {p0}, Landroidx/d/c/e;->q()V

    .line 97
    new-instance v0, Landroidx/d/c/c;

    invoke-direct {v0}, Landroidx/d/c/c;-><init>()V

    iput-object v0, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    .line 98
    new-instance v0, Landroidx/d/c/h;

    iget-object v1, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    invoke-direct {v0, v1}, Landroidx/d/c/h;-><init>(Landroidx/d/c/c;)V

    iput-object v0, p0, Landroidx/d/c/e;->x:Landroidx/d/c/e$a;

    .line 99
    sget-boolean v0, Landroidx/d/c/e;->i:Z

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Landroidx/d/c/e$b;

    iget-object v1, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    invoke-direct {v0, p0, v1}, Landroidx/d/c/e$b;-><init>(Landroidx/d/c/e;Landroidx/d/c/c;)V

    iput-object v0, p0, Landroidx/d/c/e;->E:Landroidx/d/c/e$a;

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Landroidx/d/c/b;

    iget-object v1, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    invoke-direct {v0, v1}, Landroidx/d/c/b;-><init>(Landroidx/d/c/c;)V

    iput-object v0, p0, Landroidx/d/c/e;->E:Landroidx/d/c/e$a;

    :goto_0
    return-void
.end method

.method private final a(Landroidx/d/c/e$a;Z)I
    .locals 12

    .line 716
    sget-object p2, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    const-wide/16 v0, 0x1

    if-eqz p2, :cond_0

    .line 717
    sget-object p2, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v2, p2, Landroidx/d/c/f;->l:J

    add-long/2addr v2, v0

    iput-wide v2, p2, Landroidx/d/c/f;->l:J

    :cond_0
    const/4 p2, 0x0

    move v2, p2

    .line 721
    :goto_0
    iget v3, p0, Landroidx/d/c/e;->o:I

    if-ge v2, v3, :cond_1

    .line 722
    iget-object v3, p0, Landroidx/d/c/e;->A:[Z

    aput-boolean p2, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, p2

    move v3, v2

    :cond_2
    :goto_1
    if-nez v2, :cond_e

    .line 734
    sget-object v4, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    if-eqz v4, :cond_3

    .line 735
    sget-object v4, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v5, v4, Landroidx/d/c/f;->m:J

    add-long/2addr v5, v0

    iput-wide v5, v4, Landroidx/d/c/f;->m:J

    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 742
    iget v4, p0, Landroidx/d/c/e;->o:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_4

    return v3

    .line 749
    :cond_4
    invoke-interface {p1}, Landroidx/d/c/e$a;->h()Landroidx/d/c/i;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 750
    iget-object v4, p0, Landroidx/d/c/e;->A:[Z

    invoke-interface {p1}, Landroidx/d/c/e$a;->h()Landroidx/d/c/i;

    move-result-object v6

    iget v6, v6, Landroidx/d/c/i;->k:I

    aput-boolean v5, v4, v6

    .line 752
    :cond_5
    iget-object v4, p0, Landroidx/d/c/e;->A:[Z

    invoke-interface {p1, p0, v4}, Landroidx/d/c/e$a;->a(Landroidx/d/c/e;[Z)Landroidx/d/c/i;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 758
    iget-object v6, p0, Landroidx/d/c/e;->A:[Z

    iget v7, v4, Landroidx/d/c/i;->k:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_6

    return v3

    .line 764
    :cond_6
    iget-object v6, p0, Landroidx/d/c/e;->A:[Z

    iget v7, v4, Landroidx/d/c/i;->k:I

    aput-boolean v5, v6, v7

    :cond_7
    if-eqz v4, :cond_d

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, -0x1

    move v8, v5

    move v7, v6

    move v5, p2

    .line 785
    :goto_2
    iget v9, p0, Landroidx/d/c/e;->p:I

    if-ge v5, v9, :cond_b

    .line 786
    iget-object v9, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v9, v9, v5

    .line 787
    iget-object v10, v9, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    .line 788
    iget-object v10, v10, Landroidx/d/c/i;->s:Landroidx/d/c/i$a;

    sget-object v11, Landroidx/d/c/i$a;->a:Landroidx/d/c/i$a;

    if-ne v10, v11, :cond_8

    goto :goto_3

    .line 792
    :cond_8
    iget-boolean v10, v9, Landroidx/d/c/b;->f:Z

    if-eqz v10, :cond_9

    goto :goto_3

    .line 796
    :cond_9
    invoke-virtual {v9, v4}, Landroidx/d/c/b;->a(Landroidx/d/c/i;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 802
    iget-object v10, v9, Landroidx/d/c/b;->e:Landroidx/d/c/b$a;

    invoke-interface {v10, v4}, Landroidx/d/c/b$a;->c(Landroidx/d/c/i;)F

    move-result v10

    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_a

    .line 804
    iget v9, v9, Landroidx/d/c/b;->b:F

    neg-float v9, v9

    div-float/2addr v9, v10

    cmpg-float v10, v9, v8

    if-gez v10, :cond_a

    move v7, v5

    move v8, v9

    :cond_a
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    if-le v7, v6, :cond_2

    .line 819
    iget-object v5, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v5, v5, v7

    .line 820
    iget-object v8, v5, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    iput v6, v8, Landroidx/d/c/i;->l:I

    .line 821
    sget-object v6, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    if-eqz v6, :cond_c

    .line 822
    sget-object v6, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v8, v6, Landroidx/d/c/f;->n:J

    add-long/2addr v8, v0

    iput-wide v8, v6, Landroidx/d/c/f;->n:J

    .line 824
    :cond_c
    invoke-virtual {v5, v4}, Landroidx/d/c/b;->b(Landroidx/d/c/i;)V

    .line 825
    iget-object v4, v5, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    iput v7, v4, Landroidx/d/c/i;->l:I

    .line 826
    iget-object v4, v5, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    invoke-virtual {v4, p0, v5}, Landroidx/d/c/i;->a(Landroidx/d/c/e;Landroidx/d/c/b;)V

    goto/16 :goto_1

    :cond_d
    move v2, v5

    goto/16 :goto_1

    :cond_e
    return v3
.end method

.method public static a(Landroidx/d/c/e;Landroidx/d/c/i;Landroidx/d/c/i;F)Landroidx/d/c/b;
    .locals 0

    .line 1430
    invoke-virtual {p0}, Landroidx/d/c/e;->c()Landroidx/d/c/b;

    move-result-object p0

    .line 1431
    invoke-virtual {p0, p1, p2, p3}, Landroidx/d/c/b;->a(Landroidx/d/c/i;Landroidx/d/c/i;F)Landroidx/d/c/b;

    move-result-object p0

    return-object p0
.end method

.method public static a()Landroidx/d/c/f;
    .locals 1

    .line 111
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    return-object v0
.end method

.method private a(Landroidx/d/c/i$a;Ljava/lang/String;)Landroidx/d/c/i;
    .locals 2

    .line 370
    iget-object v0, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v0, v0, Landroidx/d/c/c;->c:Landroidx/d/c/g$a;

    invoke-interface {v0}, Landroidx/d/c/g$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/c/i;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Landroidx/d/c/i;

    invoke-direct {v0, p1, p2}, Landroidx/d/c/i;-><init>(Landroidx/d/c/i$a;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0, p1, p2}, Landroidx/d/c/i;->a(Landroidx/d/c/i$a;Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {v0}, Landroidx/d/c/i;->d()V

    .line 376
    invoke-virtual {v0, p1, p2}, Landroidx/d/c/i;->a(Landroidx/d/c/i$a;Ljava/lang/String;)V

    .line 378
    :goto_0
    iget p1, p0, Landroidx/d/c/e;->D:I

    sget p2, Landroidx/d/c/e;->v:I

    if-lt p1, p2, :cond_1

    .line 379
    sget p1, Landroidx/d/c/e;->v:I

    mul-int/lit8 p1, p1, 0x2

    sput p1, Landroidx/d/c/e;->v:I

    .line 380
    iget-object p1, p0, Landroidx/d/c/e;->C:[Landroidx/d/c/i;

    sget p2, Landroidx/d/c/e;->v:I

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/d/c/i;

    iput-object p1, p0, Landroidx/d/c/e;->C:[Landroidx/d/c/i;

    .line 382
    :cond_1
    iget-object p1, p0, Landroidx/d/c/e;->C:[Landroidx/d/c/i;

    iget p2, p0, Landroidx/d/c/e;->D:I

    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Landroidx/d/c/e;->D:I

    aput-object v0, p1, p2

    return-object v0
.end method

.method private a(Landroidx/d/c/b;I)V
    .locals 1

    const/4 v0, 0x0

    .line 310
    invoke-virtual {p0, p1, p2, v0}, Landroidx/d/c/e;->a(Landroidx/d/c/b;II)V

    return-void
.end method

.method private b(Landroidx/d/c/e$a;)I
    .locals 18

    move-object/from16 v0, p0

    const/4 v2, 0x0

    .line 879
    :goto_0
    iget v3, v0, Landroidx/d/c/e;->p:I

    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 880
    iget-object v3, v0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v3, v3, v2

    iget-object v3, v3, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    .line 881
    iget-object v3, v3, Landroidx/d/c/i;->s:Landroidx/d/c/i$a;

    sget-object v6, Landroidx/d/c/i$a;->a:Landroidx/d/c/i$a;

    if-ne v3, v6, :cond_0

    goto :goto_1

    .line 884
    :cond_0
    iget-object v3, v0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v3, v3, v2

    iget v3, v3, Landroidx/d/c/b;->b:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_18

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_3
    :goto_3
    if-nez v2, :cond_17

    .line 902
    sget-object v6, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    const-wide/16 v7, 0x1

    if-eqz v6, :cond_4

    .line 903
    sget-object v6, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v9, v6, Landroidx/d/c/f;->o:J

    add-long/2addr v9, v7

    iput-wide v9, v6, Landroidx/d/c/f;->o:J

    :cond_4
    add-int/lit8 v3, v3, 0x1

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    move v12, v6

    const/4 v6, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v13, 0x0

    .line 914
    :goto_4
    iget v14, v0, Landroidx/d/c/e;->p:I

    if-ge v6, v14, :cond_14

    .line 915
    iget-object v14, v0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v14, v14, v6

    .line 916
    iget-object v15, v14, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    .line 917
    iget-object v15, v15, Landroidx/d/c/i;->s:Landroidx/d/c/i$a;

    sget-object v1, Landroidx/d/c/i$a;->a:Landroidx/d/c/i$a;

    if-ne v15, v1, :cond_5

    goto/16 :goto_b

    .line 922
    :cond_5
    iget-boolean v1, v14, Landroidx/d/c/b;->f:Z

    if-eqz v1, :cond_6

    goto/16 :goto_b

    .line 925
    :cond_6
    iget v1, v14, Landroidx/d/c/b;->b:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_13

    .line 930
    sget-boolean v1, Landroidx/d/c/e;->h:Z

    const/16 v15, 0x9

    if-eqz v1, :cond_d

    .line 931
    iget-object v1, v14, Landroidx/d/c/b;->e:Landroidx/d/c/b$a;

    invoke-interface {v1}, Landroidx/d/c/b$a;->e()I

    move-result v1

    move/from16 v17, v13

    move v13, v12

    move v12, v11

    move v11, v10

    const/4 v10, 0x0

    :goto_5
    if-ge v10, v1, :cond_c

    .line 933
    iget-object v5, v14, Landroidx/d/c/b;->e:Landroidx/d/c/b$a;

    invoke-interface {v5, v10}, Landroidx/d/c/b$a;->d(I)Landroidx/d/c/i;

    move-result-object v5

    .line 934
    iget-object v7, v14, Landroidx/d/c/b;->e:Landroidx/d/c/b$a;

    invoke-interface {v7, v5}, Landroidx/d/c/b$a;->c(Landroidx/d/c/i;)F

    move-result v7

    cmpg-float v8, v7, v4

    if-gtz v8, :cond_7

    goto :goto_7

    :cond_7
    move/from16 v9, v17

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v15, :cond_b

    .line 942
    iget-object v15, v5, Landroidx/d/c/i;->q:[F

    aget v15, v15, v8

    div-float/2addr v15, v7

    cmpg-float v17, v15, v13

    if-gez v17, :cond_8

    if-eq v8, v9, :cond_9

    :cond_8
    if-le v8, v9, :cond_a

    .line 946
    :cond_9
    iget v9, v5, Landroidx/d/c/i;->k:I

    move v11, v6

    move v12, v9

    move v13, v15

    move v9, v8

    :cond_a
    add-int/lit8 v8, v8, 0x1

    const/16 v15, 0x9

    goto :goto_6

    :cond_b
    move/from16 v17, v9

    :goto_7
    add-int/lit8 v10, v10, 0x1

    const-wide/16 v7, 0x1

    const/16 v15, 0x9

    goto :goto_5

    :cond_c
    move v10, v11

    move v11, v12

    move v12, v13

    move/from16 v13, v17

    goto :goto_b

    :cond_d
    const/4 v1, 0x1

    .line 952
    :goto_8
    iget v5, v0, Landroidx/d/c/e;->o:I

    if-ge v1, v5, :cond_13

    .line 953
    iget-object v5, v0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v5, v5, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    aget-object v5, v5, v1

    .line 954
    iget-object v7, v14, Landroidx/d/c/b;->e:Landroidx/d/c/b$a;

    invoke-interface {v7, v5}, Landroidx/d/c/b$a;->c(Landroidx/d/c/i;)F

    move-result v7

    cmpg-float v8, v7, v4

    if-gtz v8, :cond_e

    const/16 v9, 0x9

    goto :goto_a

    :cond_e
    const/4 v8, 0x0

    const/16 v9, 0x9

    :goto_9
    if-ge v8, v9, :cond_12

    .line 962
    iget-object v15, v5, Landroidx/d/c/i;->q:[F

    aget v15, v15, v8

    div-float/2addr v15, v7

    cmpg-float v17, v15, v12

    if-gez v17, :cond_f

    if-eq v8, v13, :cond_10

    :cond_f
    if-le v8, v13, :cond_11

    :cond_10
    move v11, v1

    move v10, v6

    move v13, v8

    move v12, v15

    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_12
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_13
    :goto_b
    add-int/lit8 v6, v6, 0x1

    const-wide/16 v7, 0x1

    goto/16 :goto_4

    :cond_14
    const/4 v1, -0x1

    if-eq v10, v1, :cond_16

    .line 977
    iget-object v5, v0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v5, v5, v10

    .line 982
    iget-object v6, v5, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    iput v1, v6, Landroidx/d/c/i;->l:I

    .line 983
    sget-object v1, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    if-eqz v1, :cond_15

    .line 984
    sget-object v1, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v6, v1, Landroidx/d/c/f;->n:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v1, Landroidx/d/c/f;->n:J

    .line 986
    :cond_15
    iget-object v1, v0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v1, v1, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    aget-object v1, v1, v11

    invoke-virtual {v5, v1}, Landroidx/d/c/b;->b(Landroidx/d/c/i;)V

    .line 987
    iget-object v1, v5, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    iput v10, v1, Landroidx/d/c/i;->l:I

    .line 988
    iget-object v1, v5, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    invoke-virtual {v1, v0, v5}, Landroidx/d/c/i;->a(Landroidx/d/c/e;Landroidx/d/c/b;)V

    goto :goto_c

    :cond_16
    const/4 v2, 0x1

    .line 997
    :goto_c
    iget v1, v0, Landroidx/d/c/e;->o:I

    div-int/lit8 v1, v1, 0x2

    if-le v3, v1, :cond_3

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_17
    move/from16 v16, v3

    goto :goto_d

    :cond_18
    const/16 v16, 0x0

    :goto_d
    return v16
.end method

.method private b(Ljava/lang/String;Landroidx/d/c/i$a;)Landroidx/d/c/i;
    .locals 5

    .line 328
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    if-eqz v0, :cond_0

    .line 329
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v1, v0, Landroidx/d/c/f;->p:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/d/c/f;->p:J

    .line 331
    :cond_0
    iget v0, p0, Landroidx/d/c/e;->o:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/d/c/e;->z:I

    if-lt v0, v1, :cond_1

    .line 332
    invoke-direct {p0}, Landroidx/d/c/e;->p()V

    :cond_1
    const/4 v0, 0x0

    .line 334
    invoke-direct {p0, p2, v0}, Landroidx/d/c/e;->a(Landroidx/d/c/i$a;Ljava/lang/String;)Landroidx/d/c/i;

    move-result-object p2

    .line 335
    invoke-virtual {p2, p1}, Landroidx/d/c/i;->a(Ljava/lang/String;)V

    .line 336
    iget v0, p0, Landroidx/d/c/e;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/d/c/e;->k:I

    .line 337
    iget v0, p0, Landroidx/d/c/e;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/d/c/e;->o:I

    .line 338
    iget v0, p0, Landroidx/d/c/e;->k:I

    iput v0, p2, Landroidx/d/c/i;->k:I

    .line 339
    iget-object v0, p0, Landroidx/d/c/e;->w:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 340
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/d/c/e;->w:Ljava/util/HashMap;

    .line 342
    :cond_2
    iget-object v0, p0, Landroidx/d/c/e;->w:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    iget-object p1, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object p1, p1, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    iget p0, p0, Landroidx/d/c/e;->k:I

    aput-object p2, p1, p0

    return-object p2
.end method

.method private b(I)Ljava/lang/String;
    .locals 1

    mul-int/lit8 p1, p1, 0x4

    .line 1159
    div-int/lit16 p0, p1, 0x400

    div-int/lit16 v0, p0, 0x400

    if-lez v0, :cond_0

    .line 1161
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Mb"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    if-lez p0, :cond_1

    .line 1165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " Kb"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1167
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-string p0, "LOW"

    return-object p0

    :cond_0
    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    const-string p0, "MEDIUM"

    return-object p0

    :cond_1
    const/4 p0, 0x3

    if-ne p1, p0, :cond_2

    const-string p0, "HIGH"

    return-object p0

    :cond_2
    const/4 p0, 0x4

    if-ne p1, p0, :cond_3

    const-string p0, "HIGHEST"

    return-object p0

    :cond_3
    const/4 p0, 0x5

    if-ne p1, p0, :cond_4

    const-string p0, "EQUALITY"

    return-object p0

    :cond_4
    const/16 p0, 0x8

    if-ne p1, p0, :cond_5

    const-string p0, "FIXED"

    return-object p0

    :cond_5
    const/4 p0, 0x6

    if-ne p1, p0, :cond_6

    const-string p0, "BARRIER"

    return-object p0

    :cond_6
    const-string p0, "NONE"

    return-object p0
.end method

.method private c(Landroidx/d/c/b;)V
    .locals 1

    const/4 v0, 0x0

    .line 306
    invoke-virtual {p1, p0, v0}, Landroidx/d/c/b;->a(Landroidx/d/c/e;I)Landroidx/d/c/b;

    return-void
.end method

.method private final d(Landroidx/d/c/b;)V
    .locals 7

    .line 639
    sget-boolean v0, Landroidx/d/c/e;->f:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroidx/d/c/b;->f:Z

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p1, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    iget p1, p1, Landroidx/d/c/b;->b:F

    invoke-virtual {v0, p0, p1}, Landroidx/d/c/i;->a(Landroidx/d/c/e;F)V

    goto :goto_0

    .line 642
    :cond_0
    iget-object v0, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    iget v1, p0, Landroidx/d/c/e;->p:I

    aput-object p1, v0, v1

    .line 643
    iget-object v0, p1, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    iget v1, p0, Landroidx/d/c/e;->p:I

    iput v1, v0, Landroidx/d/c/i;->l:I

    .line 644
    iget v0, p0, Landroidx/d/c/e;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/d/c/e;->p:I

    .line 645
    iget-object v0, p1, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    invoke-virtual {v0, p0, p1}, Landroidx/d/c/i;->a(Landroidx/d/c/e;Landroidx/d/c/b;)V

    .line 652
    :goto_0
    sget-boolean p1, Landroidx/d/c/e;->f:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Landroidx/d/c/e;->j:Z

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    move v0, p1

    .line 654
    :goto_1
    iget v1, p0, Landroidx/d/c/e;->p:I

    if-ge v0, v1, :cond_7

    .line 655
    iget-object v1, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 656
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "WTF"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 658
    :cond_1
    iget-object v1, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v1, v1, v0

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Landroidx/d/c/b;->f:Z

    if-eqz v1, :cond_6

    .line 659
    iget-object v1, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v1, v1, v0

    .line 660
    iget-object v2, v1, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    iget v3, v1, Landroidx/d/c/b;->b:F

    invoke-virtual {v2, p0, v3}, Landroidx/d/c/i;->a(Landroidx/d/c/e;F)V

    .line 661
    sget-boolean v2, Landroidx/d/c/e;->i:Z

    if-eqz v2, :cond_2

    .line 662
    iget-object v2, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v2, v2, Landroidx/d/c/c;->a:Landroidx/d/c/g$a;

    invoke-interface {v2, v1}, Landroidx/d/c/g$a;->a(Ljava/lang/Object;)Z

    goto :goto_2

    .line 664
    :cond_2
    iget-object v2, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v2, v2, Landroidx/d/c/c;->b:Landroidx/d/c/g$a;

    invoke-interface {v2, v1}, Landroidx/d/c/g$a;->a(Ljava/lang/Object;)Z

    .line 666
    :goto_2
    iget-object v1, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    move v3, v1

    .line 668
    :goto_3
    iget v4, p0, Landroidx/d/c/e;->p:I

    if-ge v1, v4, :cond_4

    .line 669
    iget-object v3, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    add-int/lit8 v4, v1, -0x1

    iget-object v5, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v5, v5, v1

    aput-object v5, v3, v4

    .line 670
    iget-object v3, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    iget v3, v3, Landroidx/d/c/i;->l:I

    if-ne v3, v1, :cond_3

    .line 671
    iget-object v3, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v3, v3, v4

    iget-object v3, v3, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    iput v4, v3, Landroidx/d/c/i;->l:I

    :cond_3
    add-int/lit8 v3, v1, 0x1

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_3

    .line 675
    :cond_4
    iget v1, p0, Landroidx/d/c/e;->p:I

    if-ge v3, v1, :cond_5

    .line 676
    iget-object v1, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aput-object v2, v1, v3

    .line 678
    :cond_5
    iget v1, p0, Landroidx/d/c/e;->p:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroidx/d/c/e;->p:I

    add-int/lit8 v0, v0, -0x1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 682
    :cond_7
    iput-boolean p1, p0, Landroidx/d/c/e;->j:Z

    :cond_8
    return-void
.end method

.method private p()V
    .locals 5

    .line 140
    iget v0, p0, Landroidx/d/c/e;->y:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/d/c/e;->y:I

    .line 141
    iget-object v0, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    iget v1, p0, Landroidx/d/c/e;->y:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/d/c/b;

    iput-object v0, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    .line 142
    iget-object v0, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v1, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v1, v1, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    iget v2, p0, Landroidx/d/c/e;->y:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/d/c/i;

    iput-object v1, v0, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    .line 143
    iget v0, p0, Landroidx/d/c/e;->y:I

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/d/c/e;->A:[Z

    .line 144
    iget v0, p0, Landroidx/d/c/e;->y:I

    iput v0, p0, Landroidx/d/c/e;->z:I

    .line 145
    iget v0, p0, Landroidx/d/c/e;->y:I

    iput v0, p0, Landroidx/d/c/e;->B:I

    .line 146
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v1, v0, Landroidx/d/c/f;->h:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/d/c/f;->h:J

    .line 148
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    sget-object v1, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v1, v1, Landroidx/d/c/f;->t:J

    iget p0, p0, Landroidx/d/c/e;->y:I

    int-to-long v3, p0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/d/c/f;->t:J

    .line 149
    sget-object p0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v0, v0, Landroidx/d/c/f;->t:J

    iput-wide v0, p0, Landroidx/d/c/f;->J:J

    :cond_0
    return-void
.end method

.method private q()V
    .locals 4

    .line 157
    sget-boolean v0, Landroidx/d/c/e;->i:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 158
    :goto_0
    iget v0, p0, Landroidx/d/c/e;->p:I

    if-ge v2, v0, :cond_3

    .line 159
    iget-object v0, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v0, v0, v2

    if-eqz v0, :cond_0

    .line 161
    iget-object v3, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v3, v3, Landroidx/d/c/c;->a:Landroidx/d/c/g$a;

    invoke-interface {v3, v0}, Landroidx/d/c/g$a;->a(Ljava/lang/Object;)Z

    .line 163
    :cond_0
    iget-object v0, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    :cond_1
    :goto_1
    iget v0, p0, Landroidx/d/c/e;->p:I

    if-ge v2, v0, :cond_3

    .line 167
    iget-object v0, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v0, v0, v2

    if-eqz v0, :cond_2

    .line 169
    iget-object v3, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v3, v3, Landroidx/d/c/c;->b:Landroidx/d/c/g$a;

    invoke-interface {v3, v0}, Landroidx/d/c/g$a;->a(Ljava/lang/Object;)Z

    .line 171
    :cond_2
    iget-object v0, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private r()V
    .locals 3

    const/4 v0, 0x0

    .line 1036
    :goto_0
    iget v1, p0, Landroidx/d/c/e;->p:I

    if-ge v0, v1, :cond_0

    .line 1037
    iget-object v1, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v1, v1, v0

    .line 1038
    iget-object v2, v1, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    iget v1, v1, Landroidx/d/c/b;->b:F

    iput v1, v2, Landroidx/d/c/i;->n:F

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private s()V
    .locals 3

    .line 1048
    invoke-direct {p0}, Landroidx/d/c/e;->t()V

    const-string v0, ""

    const/4 v1, 0x0

    .line 1050
    :goto_0
    iget v2, p0, Landroidx/d/c/e;->p:I

    if-ge v1, v2, :cond_0

    .line 1051
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1052
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1054
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/d/c/e;->x:Landroidx/d/c/e$a;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1055
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private t()V
    .locals 2

    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display Rows ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/d/c/e;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/d/c/e;->o:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1155
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)F
    .locals 1

    .line 401
    sget-object v0, Landroidx/d/c/i$a;->a:Landroidx/d/c/i$a;

    invoke-virtual {p0, p1, v0}, Landroidx/d/c/e;->a(Ljava/lang/String;Landroidx/d/c/i$a;)Landroidx/d/c/i;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 405
    :cond_0
    iget p0, p0, Landroidx/d/c/i;->n:F

    return p0
.end method

.method a(I)Landroidx/d/c/b;
    .locals 0

    .line 397
    iget-object p0, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public a(ILjava/lang/String;)Landroidx/d/c/i;
    .locals 5

    .line 348
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v1, v0, Landroidx/d/c/f;->q:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/d/c/f;->q:J

    .line 351
    :cond_0
    iget v0, p0, Landroidx/d/c/e;->o:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/d/c/e;->z:I

    if-lt v0, v1, :cond_1

    .line 352
    invoke-direct {p0}, Landroidx/d/c/e;->p()V

    .line 354
    :cond_1
    sget-object v0, Landroidx/d/c/i$a;->d:Landroidx/d/c/i$a;

    invoke-direct {p0, v0, p2}, Landroidx/d/c/e;->a(Landroidx/d/c/i$a;Ljava/lang/String;)Landroidx/d/c/i;

    move-result-object p2

    .line 355
    iget v0, p0, Landroidx/d/c/e;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/d/c/e;->k:I

    .line 356
    iget v0, p0, Landroidx/d/c/e;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/d/c/e;->o:I

    .line 357
    iget v0, p0, Landroidx/d/c/e;->k:I

    iput v0, p2, Landroidx/d/c/i;->k:I

    .line 358
    iput p1, p2, Landroidx/d/c/i;->m:I

    .line 359
    iget-object p1, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object p1, p1, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    iget v0, p0, Landroidx/d/c/e;->k:I

    aput-object p2, p1, v0

    .line 360
    iget-object p0, p0, Landroidx/d/c/e;->x:Landroidx/d/c/e$a;

    invoke-interface {p0, p2}, Landroidx/d/c/e$a;->d(Landroidx/d/c/i;)V

    return-object p2
.end method

.method public a(Ljava/lang/Object;)Landroidx/d/c/i;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 223
    :cond_0
    iget v1, p0, Landroidx/d/c/e;->o:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/d/c/e;->z:I

    if-lt v1, v2, :cond_1

    .line 224
    invoke-direct {p0}, Landroidx/d/c/e;->p()V

    .line 227
    :cond_1
    instance-of v1, p1, Landroidx/d/c/b/d;

    if-eqz v1, :cond_5

    .line 228
    check-cast p1, Landroidx/d/c/b/d;

    invoke-virtual {p1}, Landroidx/d/c/b/d;->g()Landroidx/d/c/i;

    move-result-object v0

    if-nez v0, :cond_2

    .line 230
    iget-object v0, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    invoke-virtual {p1, v0}, Landroidx/d/c/b/d;->a(Landroidx/d/c/c;)V

    .line 231
    invoke-virtual {p1}, Landroidx/d/c/b/d;->g()Landroidx/d/c/i;

    move-result-object p1

    move-object v0, p1

    .line 233
    :cond_2
    iget p1, v0, Landroidx/d/c/i;->k:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    iget p1, v0, Landroidx/d/c/i;->k:I

    iget v2, p0, Landroidx/d/c/e;->k:I

    if-gt p1, v2, :cond_3

    iget-object p1, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object p1, p1, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    iget v2, v0, Landroidx/d/c/i;->k:I

    aget-object p1, p1, v2

    if-nez p1, :cond_5

    .line 236
    :cond_3
    iget p1, v0, Landroidx/d/c/i;->k:I

    if-eq p1, v1, :cond_4

    .line 237
    invoke-virtual {v0}, Landroidx/d/c/i;->d()V

    .line 239
    :cond_4
    iget p1, p0, Landroidx/d/c/e;->k:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/d/c/e;->k:I

    .line 240
    iget p1, p0, Landroidx/d/c/e;->o:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/d/c/e;->o:I

    .line 241
    iget p1, p0, Landroidx/d/c/e;->k:I

    iput p1, v0, Landroidx/d/c/i;->k:I

    .line 242
    sget-object p1, Landroidx/d/c/i$a;->a:Landroidx/d/c/i$a;

    iput-object p1, v0, Landroidx/d/c/i;->s:Landroidx/d/c/i$a;

    .line 243
    iget-object p1, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object p1, p1, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    iget p0, p0, Landroidx/d/c/e;->k:I

    aput-object v0, p1, p0

    :cond_5
    return-object v0
.end method

.method a(Ljava/lang/String;Landroidx/d/c/i$a;)Landroidx/d/c/i;
    .locals 1

    .line 430
    iget-object v0, p0, Landroidx/d/c/e;->w:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/d/c/e;->w:Ljava/util/HashMap;

    .line 433
    :cond_0
    iget-object v0, p0, Landroidx/d/c/e;->w:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/c/i;

    if-nez v0, :cond_1

    .line 435
    invoke-direct {p0, p1, p2}, Landroidx/d/c/e;->b(Ljava/lang/String;Landroidx/d/c/i$a;)Landroidx/d/c/i;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public a(Landroidx/d/c/b/e;Landroidx/d/c/b/e;FI)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1445
    sget-object v3, Landroidx/d/c/b/d$a;->b:Landroidx/d/c/b/d$a;

    invoke-virtual {v1, v3}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d$a;)Landroidx/d/c/b/d;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v5

    .line 1446
    sget-object v3, Landroidx/d/c/b/d$a;->c:Landroidx/d/c/b/d$a;

    invoke-virtual {v1, v3}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d$a;)Landroidx/d/c/b/d;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v7

    .line 1447
    sget-object v3, Landroidx/d/c/b/d$a;->d:Landroidx/d/c/b/d$a;

    invoke-virtual {v1, v3}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d$a;)Landroidx/d/c/b/d;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v3

    .line 1448
    sget-object v4, Landroidx/d/c/b/d$a;->e:Landroidx/d/c/b/d$a;

    invoke-virtual {v1, v4}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d$a;)Landroidx/d/c/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v8

    .line 1450
    sget-object v1, Landroidx/d/c/b/d$a;->b:Landroidx/d/c/b/d$a;

    invoke-virtual {v2, v1}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d$a;)Landroidx/d/c/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v1

    .line 1451
    sget-object v4, Landroidx/d/c/b/d$a;->c:Landroidx/d/c/b/d$a;

    invoke-virtual {v2, v4}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d$a;)Landroidx/d/c/b/d;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v9

    .line 1452
    sget-object v4, Landroidx/d/c/b/d$a;->d:Landroidx/d/c/b/d$a;

    invoke-virtual {v2, v4}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d$a;)Landroidx/d/c/b/d;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v12

    .line 1453
    sget-object v4, Landroidx/d/c/b/d$a;->e:Landroidx/d/c/b/d$a;

    invoke-virtual {v2, v4}, Landroidx/d/c/b/e;->a(Landroidx/d/c/b/d$a;)Landroidx/d/c/b/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/d/c/e;->a(Ljava/lang/Object;)Landroidx/d/c/i;

    move-result-object v10

    .line 1455
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/e;->c()Landroidx/d/c/b;

    move-result-object v2

    move/from16 v4, p3

    float-to-double v13, v4

    .line 1456
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move/from16 v4, p4

    move-object/from16 v17, v3

    int-to-double v3, v4

    move-object/from16 v18, v12

    mul-double v11, v15, v3

    double-to-float v11, v11

    move-object v6, v2

    .line 1457
    invoke-virtual/range {v6 .. v11}, Landroidx/d/c/b;->b(Landroidx/d/c/i;Landroidx/d/c/i;Landroidx/d/c/i;Landroidx/d/c/i;F)Landroidx/d/c/b;

    .line 1458
    invoke-virtual {v0, v2}, Landroidx/d/c/e;->a(Landroidx/d/c/b;)V

    .line 1459
    invoke-virtual/range {p0 .. p0}, Landroidx/d/c/e;->c()Landroidx/d/c/b;

    move-result-object v2

    .line 1460
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v6, v3

    double-to-float v9, v6

    move-object v4, v2

    move-object/from16 v6, v17

    move-object v7, v1

    move-object/from16 v8, v18

    .line 1461
    invoke-virtual/range {v4 .. v9}, Landroidx/d/c/b;->b(Landroidx/d/c/i;Landroidx/d/c/i;Landroidx/d/c/i;Landroidx/d/c/i;F)Landroidx/d/c/b;

    .line 1462
    invoke-virtual {v0, v2}, Landroidx/d/c/e;->a(Landroidx/d/c/b;)V

    return-void
.end method

.method public a(Landroidx/d/c/b;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 556
    :cond_0
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 557
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v3, v0, Landroidx/d/c/f;->j:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/d/c/f;->j:J

    .line 558
    iget-boolean v0, p1, Landroidx/d/c/b;->f:Z

    if-eqz v0, :cond_1

    .line 559
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v3, v0, Landroidx/d/c/f;->k:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/d/c/f;->k:J

    .line 562
    :cond_1
    iget v0, p0, Landroidx/d/c/e;->p:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iget v4, p0, Landroidx/d/c/e;->B:I

    if-ge v0, v4, :cond_2

    iget v0, p0, Landroidx/d/c/e;->o:I

    add-int/2addr v0, v3

    iget v4, p0, Landroidx/d/c/e;->z:I

    if-lt v0, v4, :cond_3

    .line 563
    :cond_2
    invoke-direct {p0}, Landroidx/d/c/e;->p()V

    :cond_3
    const/4 v0, 0x0

    .line 571
    iget-boolean v4, p1, Landroidx/d/c/b;->f:Z

    if-nez v4, :cond_b

    .line 573
    invoke-virtual {p1, p0}, Landroidx/d/c/b;->c(Landroidx/d/c/e;)V

    .line 575
    invoke-virtual {p1}, Landroidx/d/c/b;->f()Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    .line 580
    :cond_4
    invoke-virtual {p1}, Landroidx/d/c/b;->e()V

    .line 587
    invoke-virtual {p1, p0}, Landroidx/d/c/b;->a(Landroidx/d/c/e;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 589
    invoke-virtual {p0}, Landroidx/d/c/e;->e()Landroidx/d/c/i;

    move-result-object v4

    .line 590
    iput-object v4, p1, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    .line 591
    iget v5, p0, Landroidx/d/c/e;->p:I

    .line 592
    invoke-direct {p0, p1}, Landroidx/d/c/e;->d(Landroidx/d/c/b;)V

    .line 593
    iget v6, p0, Landroidx/d/c/e;->p:I

    add-int/2addr v5, v3

    if-ne v6, v5, :cond_a

    .line 595
    iget-object v0, p0, Landroidx/d/c/e;->E:Landroidx/d/c/e$a;

    invoke-interface {v0, p1}, Landroidx/d/c/e$a;->a(Landroidx/d/c/e$a;)V

    .line 596
    iget-object v0, p0, Landroidx/d/c/e;->E:Landroidx/d/c/e$a;

    invoke-direct {p0, v0, v3}, Landroidx/d/c/e;->a(Landroidx/d/c/e$a;Z)I

    .line 597
    iget v0, v4, Landroidx/d/c/i;->l:I

    const/4 v5, -0x1

    if-ne v0, v5, :cond_9

    .line 601
    iget-object v0, p1, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    if-ne v0, v4, :cond_6

    .line 603
    invoke-virtual {p1, v4}, Landroidx/d/c/b;->c(Landroidx/d/c/i;)Landroidx/d/c/i;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 605
    sget-object v4, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    if-eqz v4, :cond_5

    .line 606
    sget-object v4, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v5, v4, Landroidx/d/c/f;->n:J

    add-long/2addr v5, v1

    iput-wide v5, v4, Landroidx/d/c/f;->n:J

    .line 608
    :cond_5
    invoke-virtual {p1, v0}, Landroidx/d/c/b;->b(Landroidx/d/c/i;)V

    .line 611
    :cond_6
    iget-boolean v0, p1, Landroidx/d/c/b;->f:Z

    if-nez v0, :cond_7

    .line 612
    iget-object v0, p1, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    invoke-virtual {v0, p0, p1}, Landroidx/d/c/i;->a(Landroidx/d/c/e;Landroidx/d/c/b;)V

    .line 614
    :cond_7
    sget-boolean v0, Landroidx/d/c/e;->i:Z

    if-eqz v0, :cond_8

    .line 615
    iget-object v0, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v0, v0, Landroidx/d/c/c;->a:Landroidx/d/c/g$a;

    invoke-interface {v0, p1}, Landroidx/d/c/g$a;->a(Ljava/lang/Object;)Z

    goto :goto_0

    .line 617
    :cond_8
    iget-object v0, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v0, v0, Landroidx/d/c/c;->b:Landroidx/d/c/g$a;

    invoke-interface {v0, p1}, Landroidx/d/c/g$a;->a(Ljava/lang/Object;)Z

    .line 619
    :goto_0
    iget v0, p0, Landroidx/d/c/e;->p:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroidx/d/c/e;->p:I

    :cond_9
    move v0, v3

    .line 624
    :cond_a
    invoke-virtual {p1}, Landroidx/d/c/b;->a()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    if-nez v0, :cond_c

    .line 634
    invoke-direct {p0, p1}, Landroidx/d/c/e;->d(Landroidx/d/c/b;)V

    :cond_c
    return-void
.end method

.method a(Landroidx/d/c/b;II)V
    .locals 1

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0, p3, v0}, Landroidx/d/c/e;->a(ILjava/lang/String;)Landroidx/d/c/i;

    move-result-object p0

    .line 324
    invoke-virtual {p1, p0, p2}, Landroidx/d/c/b;->c(Landroidx/d/c/i;I)Landroidx/d/c/b;

    return-void
.end method

.method a(Landroidx/d/c/e$a;)V
    .locals 5

    .line 494
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    if-eqz v0, :cond_0

    .line 495
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v1, v0, Landroidx/d/c/f;->z:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/d/c/f;->z:J

    .line 496
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    sget-object v1, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v1, v1, Landroidx/d/c/f;->A:J

    iget v3, p0, Landroidx/d/c/e;->o:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/d/c/f;->A:J

    .line 497
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    sget-object v1, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v1, v1, Landroidx/d/c/f;->B:J

    iget v3, p0, Landroidx/d/c/e;->p:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/d/c/f;->B:J

    .line 509
    :cond_0
    invoke-direct {p0, p1}, Landroidx/d/c/e;->b(Landroidx/d/c/e$a;)I

    const/4 v0, 0x0

    .line 514
    invoke-direct {p0, p1, v0}, Landroidx/d/c/e;->a(Landroidx/d/c/e$a;Z)I

    .line 519
    invoke-direct {p0}, Landroidx/d/c/e;->r()V

    return-void
.end method

.method public a(Landroidx/d/c/f;)V
    .locals 0

    .line 107
    sput-object p1, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    return-void
.end method

.method public a(Landroidx/d/c/i;I)V
    .locals 5

    .line 1377
    sget-boolean v0, Landroidx/d/c/e;->e:Z

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, p1, Landroidx/d/c/i;->l:I

    if-ne v0, v1, :cond_2

    int-to-float p2, p2

    .line 1381
    invoke-virtual {p1, p0, p2}, Landroidx/d/c/i;->a(Landroidx/d/c/e;F)V

    const/4 v0, 0x0

    .line 1382
    :goto_0
    iget v1, p0, Landroidx/d/c/e;->k:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    .line 1383
    iget-object v1, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v1, v1, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 1384
    iget-boolean v3, v1, Landroidx/d/c/i;->w:Z

    if-eqz v3, :cond_0

    iget v3, v1, Landroidx/d/c/i;->x:I

    iget v4, p1, Landroidx/d/c/i;->k:I

    if-ne v3, v4, :cond_0

    .line 1385
    iget v3, v1, Landroidx/d/c/i;->y:F

    add-float/2addr v3, p2

    invoke-virtual {v1, p0, v3}, Landroidx/d/c/i;->a(Landroidx/d/c/e;F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1393
    :cond_2
    iget v0, p1, Landroidx/d/c/i;->l:I

    .line 1394
    iget v3, p1, Landroidx/d/c/i;->l:I

    if-eq v3, v1, :cond_5

    .line 1395
    iget-object v1, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v0, v1, v0

    .line 1396
    iget-boolean v1, v0, Landroidx/d/c/b;->f:Z

    if-eqz v1, :cond_3

    int-to-float p0, p2

    .line 1397
    iput p0, v0, Landroidx/d/c/b;->b:F

    goto :goto_1

    .line 1399
    :cond_3
    iget-object v1, v0, Landroidx/d/c/b;->e:Landroidx/d/c/b$a;

    invoke-interface {v1}, Landroidx/d/c/b$a;->e()I

    move-result v1

    if-nez v1, :cond_4

    .line 1400
    iput-boolean v2, v0, Landroidx/d/c/b;->f:Z

    int-to-float p0, p2

    .line 1401
    iput p0, v0, Landroidx/d/c/b;->b:F

    goto :goto_1

    .line 1403
    :cond_4
    invoke-virtual {p0}, Landroidx/d/c/e;->c()Landroidx/d/c/b;

    move-result-object v0

    .line 1404
    invoke-virtual {v0, p1, p2}, Landroidx/d/c/b;->b(Landroidx/d/c/i;I)Landroidx/d/c/b;

    .line 1405
    invoke-virtual {p0, v0}, Landroidx/d/c/e;->a(Landroidx/d/c/b;)V

    goto :goto_1

    .line 1409
    :cond_5
    invoke-virtual {p0}, Landroidx/d/c/e;->c()Landroidx/d/c/b;

    move-result-object v0

    .line 1410
    invoke-virtual {v0, p1, p2}, Landroidx/d/c/b;->a(Landroidx/d/c/i;I)Landroidx/d/c/b;

    .line 1411
    invoke-virtual {p0, v0}, Landroidx/d/c/e;->a(Landroidx/d/c/b;)V

    :goto_1
    return-void
.end method

.method public a(Landroidx/d/c/i;Landroidx/d/c/i;I)V
    .locals 2

    .line 1309
    iget v0, p1, Landroidx/d/c/i;->l:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    if-nez p3, :cond_2

    .line 1313
    iget-boolean p3, p2, Landroidx/d/c/i;->w:Z

    if-eqz p3, :cond_0

    .line 1314
    iget p3, p2, Landroidx/d/c/i;->y:F

    .line 1315
    iget-object p3, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object p3, p3, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    iget p2, p2, Landroidx/d/c/i;->x:I

    aget-object p2, p3, p2

    .line 1317
    :cond_0
    iget-boolean p3, p1, Landroidx/d/c/i;->w:Z

    if-eqz p3, :cond_1

    .line 1318
    iget p2, p1, Landroidx/d/c/i;->y:F

    .line 1319
    iget-object p0, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object p0, p0, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    iget p1, p1, Landroidx/d/c/i;->x:I

    aget-object p0, p0, p1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    .line 1321
    invoke-virtual {p1, p0, p2, p3}, Landroidx/d/c/i;->a(Landroidx/d/c/e;Landroidx/d/c/i;F)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x8

    .line 1324
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/d/c/e;->c(Landroidx/d/c/i;Landroidx/d/c/i;II)Landroidx/d/c/b;

    :goto_0
    return-void
.end method

.method public a(Landroidx/d/c/i;Landroidx/d/c/i;IFLandroidx/d/c/i;Landroidx/d/c/i;II)V
    .locals 11

    move-object v0, p0

    move/from16 v1, p8

    .line 1288
    invoke-virtual {p0}, Landroidx/d/c/e;->c()Landroidx/d/c/b;

    move-result-object v10

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    .line 1289
    invoke-virtual/range {v2 .. v9}, Landroidx/d/c/b;->a(Landroidx/d/c/i;Landroidx/d/c/i;IFLandroidx/d/c/i;Landroidx/d/c/i;I)Landroidx/d/c/b;

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 1291
    invoke-virtual {v10, p0, v1}, Landroidx/d/c/b;->a(Landroidx/d/c/e;I)Landroidx/d/c/b;

    .line 1293
    :cond_0
    invoke-virtual {p0, v10}, Landroidx/d/c/e;->a(Landroidx/d/c/b;)V

    return-void
.end method

.method public a(Landroidx/d/c/i;Landroidx/d/c/i;II)V
    .locals 3

    .line 1214
    invoke-virtual {p0}, Landroidx/d/c/e;->c()Landroidx/d/c/b;

    move-result-object v0

    .line 1215
    invoke-virtual {p0}, Landroidx/d/c/e;->d()Landroidx/d/c/i;

    move-result-object v1

    const/4 v2, 0x0

    .line 1216
    iput v2, v1, Landroidx/d/c/i;->m:I

    .line 1217
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/d/c/b;->a(Landroidx/d/c/i;Landroidx/d/c/i;Landroidx/d/c/i;I)Landroidx/d/c/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    .line 1219
    iget-object p1, v0, Landroidx/d/c/b;->e:Landroidx/d/c/b$a;

    invoke-interface {p1, v1}, Landroidx/d/c/b$a;->c(Landroidx/d/c/i;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 1220
    invoke-virtual {p0, v0, p1, p4}, Landroidx/d/c/e;->a(Landroidx/d/c/b;II)V

    .line 1222
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/d/c/e;->a(Landroidx/d/c/b;)V

    return-void
.end method

.method public a(Landroidx/d/c/i;Landroidx/d/c/i;IZ)V
    .locals 2

    .line 1229
    invoke-virtual {p0}, Landroidx/d/c/e;->c()Landroidx/d/c/b;

    move-result-object p4

    .line 1230
    invoke-virtual {p0}, Landroidx/d/c/e;->d()Landroidx/d/c/i;

    move-result-object v0

    const/4 v1, 0x0

    .line 1231
    iput v1, v0, Landroidx/d/c/i;->m:I

    .line 1232
    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/d/c/b;->a(Landroidx/d/c/i;Landroidx/d/c/i;Landroidx/d/c/i;I)Landroidx/d/c/b;

    .line 1233
    invoke-virtual {p0, p4}, Landroidx/d/c/e;->a(Landroidx/d/c/b;)V

    return-void
.end method

.method public a(Landroidx/d/c/i;Landroidx/d/c/i;Landroidx/d/c/i;Landroidx/d/c/i;FI)V
    .locals 7

    .line 1300
    invoke-virtual {p0}, Landroidx/d/c/e;->c()Landroidx/d/c/b;

    move-result-object v6

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1301
    invoke-virtual/range {v0 .. v5}, Landroidx/d/c/b;->a(Landroidx/d/c/i;Landroidx/d/c/i;Landroidx/d/c/i;Landroidx/d/c/i;F)Landroidx/d/c/b;

    const/16 p1, 0x8

    if-eq p6, p1, :cond_0

    .line 1303
    invoke-virtual {v6, p0, p6}, Landroidx/d/c/b;->a(Landroidx/d/c/e;I)Landroidx/d/c/b;

    .line 1305
    :cond_0
    invoke-virtual {p0, v6}, Landroidx/d/c/e;->a(Landroidx/d/c/b;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)I
    .locals 0

    .line 409
    check-cast p1, Landroidx/d/c/b/d;

    .line 415
    invoke-virtual {p1}, Landroidx/d/c/b/d;->g()Landroidx/d/c/i;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 417
    iget p0, p0, Landroidx/d/c/i;->n:F

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 185
    :goto_0
    iget-object v2, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v2, v2, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 186
    iget-object v2, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v2, v2, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 188
    invoke-virtual {v2}, Landroidx/d/c/i;->d()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 191
    :cond_1
    iget-object v1, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v1, v1, Landroidx/d/c/c;->c:Landroidx/d/c/g$a;

    iget-object v2, p0, Landroidx/d/c/e;->C:[Landroidx/d/c/i;

    iget v3, p0, Landroidx/d/c/e;->D:I

    invoke-interface {v1, v2, v3}, Landroidx/d/c/g$a;->a([Ljava/lang/Object;I)V

    .line 192
    iput v0, p0, Landroidx/d/c/e;->D:I

    .line 194
    iget-object v1, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v1, v1, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 195
    iget-object v1, p0, Landroidx/d/c/e;->w:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 196
    iget-object v1, p0, Landroidx/d/c/e;->w:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 198
    :cond_2
    iput v0, p0, Landroidx/d/c/e;->k:I

    .line 199
    iget-object v1, p0, Landroidx/d/c/e;->x:Landroidx/d/c/e$a;

    invoke-interface {v1}, Landroidx/d/c/e$a;->g()V

    const/4 v1, 0x1

    .line 200
    iput v1, p0, Landroidx/d/c/e;->o:I

    move v1, v0

    .line 201
    :goto_1
    iget v2, p0, Landroidx/d/c/e;->p:I

    if-ge v1, v2, :cond_4

    .line 202
    iget-object v2, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    .line 203
    iget-object v2, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v2, v2, v1

    iput-boolean v0, v2, Landroidx/d/c/b;->c:Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 206
    :cond_4
    invoke-direct {p0}, Landroidx/d/c/e;->q()V

    .line 207
    iput v0, p0, Landroidx/d/c/e;->p:I

    .line 208
    sget-boolean v0, Landroidx/d/c/e;->i:Z

    if-eqz v0, :cond_5

    .line 209
    new-instance v0, Landroidx/d/c/e$b;

    iget-object v1, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    invoke-direct {v0, p0, v1}, Landroidx/d/c/e$b;-><init>(Landroidx/d/c/e;Landroidx/d/c/c;)V

    iput-object v0, p0, Landroidx/d/c/e;->E:Landroidx/d/c/e$a;

    goto :goto_2

    .line 211
    :cond_5
    new-instance v0, Landroidx/d/c/b;

    iget-object v1, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    invoke-direct {v0, v1}, Landroidx/d/c/b;-><init>(Landroidx/d/c/c;)V

    iput-object v0, p0, Landroidx/d/c/e;->E:Landroidx/d/c/e$a;

    :goto_2
    return-void
.end method

.method public b(Landroidx/d/c/b;)V
    .locals 4

    .line 687
    iget-boolean v0, p1, Landroidx/d/c/b;->f:Z

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    if-eqz v0, :cond_5

    .line 688
    iget-object v0, p1, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    iget v0, v0, Landroidx/d/c/i;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 689
    iget-object v0, p1, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    iget v0, v0, Landroidx/d/c/i;->l:I

    :goto_0
    iget v1, p0, Landroidx/d/c/e;->p:I

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 690
    iget-object v1, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    .line 691
    iget v3, v1, Landroidx/d/c/i;->l:I

    if-ne v3, v2, :cond_0

    .line 692
    iput v0, v1, Landroidx/d/c/i;->l:I

    .line 694
    :cond_0
    iget-object v1, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    iget-object v3, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v3, v3, v2

    aput-object v3, v1, v0

    move v0, v2

    goto :goto_0

    .line 696
    :cond_1
    iget v0, p0, Landroidx/d/c/e;->p:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/d/c/e;->p:I

    .line 698
    :cond_2
    iget-object v0, p1, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    iget-boolean v0, v0, Landroidx/d/c/i;->o:Z

    if-nez v0, :cond_3

    .line 699
    iget-object v0, p1, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    iget v1, p1, Landroidx/d/c/b;->b:F

    invoke-virtual {v0, p0, v1}, Landroidx/d/c/i;->a(Landroidx/d/c/e;F)V

    .line 701
    :cond_3
    sget-boolean v0, Landroidx/d/c/e;->i:Z

    if-eqz v0, :cond_4

    .line 702
    iget-object p0, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object p0, p0, Landroidx/d/c/c;->a:Landroidx/d/c/g$a;

    invoke-interface {p0, p1}, Landroidx/d/c/g$a;->a(Ljava/lang/Object;)Z

    goto :goto_1

    .line 704
    :cond_4
    iget-object p0, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object p0, p0, Landroidx/d/c/c;->b:Landroidx/d/c/g$a;

    invoke-interface {p0, p1}, Landroidx/d/c/g$a;->a(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public b(Landroidx/d/c/i;Landroidx/d/c/i;II)V
    .locals 3

    .line 1247
    invoke-virtual {p0}, Landroidx/d/c/e;->c()Landroidx/d/c/b;

    move-result-object v0

    .line 1248
    invoke-virtual {p0}, Landroidx/d/c/e;->d()Landroidx/d/c/i;

    move-result-object v1

    const/4 v2, 0x0

    .line 1249
    iput v2, v1, Landroidx/d/c/i;->m:I

    .line 1250
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/d/c/b;->b(Landroidx/d/c/i;Landroidx/d/c/i;Landroidx/d/c/i;I)Landroidx/d/c/b;

    const/16 p1, 0x8

    if-eq p4, p1, :cond_0

    .line 1252
    iget-object p1, v0, Landroidx/d/c/b;->e:Landroidx/d/c/b$a;

    invoke-interface {p1, v1}, Landroidx/d/c/b$a;->c(Landroidx/d/c/i;)F

    move-result p1

    const/high16 p2, -0x40800000    # -1.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 1253
    invoke-virtual {p0, v0, p1, p4}, Landroidx/d/c/e;->a(Landroidx/d/c/b;II)V

    .line 1255
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/d/c/e;->a(Landroidx/d/c/b;)V

    return-void
.end method

.method public b(Landroidx/d/c/i;Landroidx/d/c/i;IZ)V
    .locals 2

    .line 1262
    invoke-virtual {p0}, Landroidx/d/c/e;->c()Landroidx/d/c/b;

    move-result-object p4

    .line 1263
    invoke-virtual {p0}, Landroidx/d/c/e;->d()Landroidx/d/c/i;

    move-result-object v0

    const/4 v1, 0x0

    .line 1264
    iput v1, v0, Landroidx/d/c/i;->m:I

    .line 1265
    invoke-virtual {p4, p1, p2, v0, p3}, Landroidx/d/c/b;->b(Landroidx/d/c/i;Landroidx/d/c/i;Landroidx/d/c/i;I)Landroidx/d/c/b;

    .line 1266
    invoke-virtual {p0, p4}, Landroidx/d/c/e;->a(Landroidx/d/c/b;)V

    return-void
.end method

.method public c()Landroidx/d/c/b;
    .locals 5

    .line 254
    sget-boolean v0, Landroidx/d/c/e;->i:Z

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v0, v0, Landroidx/d/c/c;->a:Landroidx/d/c/g$a;

    invoke-interface {v0}, Landroidx/d/c/g$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/c/b;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Landroidx/d/c/e$b;

    iget-object v3, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    invoke-direct {v0, p0, v3}, Landroidx/d/c/e$b;-><init>(Landroidx/d/c/e;Landroidx/d/c/c;)V

    .line 258
    sget-wide v3, Landroidx/d/c/e;->t:J

    add-long/2addr v3, v1

    sput-wide v3, Landroidx/d/c/e;->t:J

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {v0}, Landroidx/d/c/b;->c()V

    goto :goto_0

    .line 263
    :cond_1
    iget-object v0, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v0, v0, Landroidx/d/c/c;->b:Landroidx/d/c/g$a;

    invoke-interface {v0}, Landroidx/d/c/g$a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/c/b;

    if-nez v0, :cond_2

    .line 265
    new-instance v0, Landroidx/d/c/b;

    iget-object p0, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    invoke-direct {v0, p0}, Landroidx/d/c/b;-><init>(Landroidx/d/c/c;)V

    .line 266
    sget-wide v3, Landroidx/d/c/e;->s:J

    add-long/2addr v3, v1

    sput-wide v3, Landroidx/d/c/e;->s:J

    goto :goto_0

    .line 268
    :cond_2
    invoke-virtual {v0}, Landroidx/d/c/b;->c()V

    .line 271
    :goto_0
    invoke-static {}, Landroidx/d/c/i;->a()V

    return-object v0
.end method

.method public c(Landroidx/d/c/i;Landroidx/d/c/i;II)Landroidx/d/c/b;
    .locals 3

    .line 1336
    sget-boolean v0, Landroidx/d/c/e;->e:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    if-ne p4, v1, :cond_0

    iget-boolean v0, p2, Landroidx/d/c/i;->o:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroidx/d/c/i;->l:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 1340
    iget p2, p2, Landroidx/d/c/i;->n:F

    int-to-float p3, p3

    add-float/2addr p2, p3

    invoke-virtual {p1, p0, p2}, Landroidx/d/c/i;->a(Landroidx/d/c/e;F)V

    const/4 p0, 0x0

    return-object p0

    .line 1362
    :cond_0
    invoke-virtual {p0}, Landroidx/d/c/e;->c()Landroidx/d/c/b;

    move-result-object v0

    .line 1363
    invoke-virtual {v0, p1, p2, p3}, Landroidx/d/c/b;->a(Landroidx/d/c/i;Landroidx/d/c/i;I)Landroidx/d/c/b;

    if-eq p4, v1, :cond_1

    .line 1365
    invoke-virtual {v0, p0, p4}, Landroidx/d/c/b;->a(Landroidx/d/c/e;I)Landroidx/d/c/b;

    .line 1367
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/d/c/e;->a(Landroidx/d/c/b;)V

    return-object v0
.end method

.method public d()Landroidx/d/c/i;
    .locals 5

    .line 276
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    if-eqz v0, :cond_0

    .line 277
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v1, v0, Landroidx/d/c/f;->r:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/d/c/f;->r:J

    .line 279
    :cond_0
    iget v0, p0, Landroidx/d/c/e;->o:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/d/c/e;->z:I

    if-lt v0, v1, :cond_1

    .line 280
    invoke-direct {p0}, Landroidx/d/c/e;->p()V

    .line 282
    :cond_1
    sget-object v0, Landroidx/d/c/i$a;->c:Landroidx/d/c/i$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/d/c/e;->a(Landroidx/d/c/i$a;Ljava/lang/String;)Landroidx/d/c/i;

    move-result-object v0

    .line 283
    iget v1, p0, Landroidx/d/c/e;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/d/c/e;->k:I

    .line 284
    iget v1, p0, Landroidx/d/c/e;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/d/c/e;->o:I

    .line 285
    iget v1, p0, Landroidx/d/c/e;->k:I

    iput v1, v0, Landroidx/d/c/i;->k:I

    .line 286
    iget-object v1, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v1, v1, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    iget p0, p0, Landroidx/d/c/e;->k:I

    aput-object v0, v1, p0

    return-object v0
.end method

.method public e()Landroidx/d/c/i;
    .locals 5

    .line 291
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    if-eqz v0, :cond_0

    .line 292
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v1, v0, Landroidx/d/c/f;->s:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/d/c/f;->s:J

    .line 294
    :cond_0
    iget v0, p0, Landroidx/d/c/e;->o:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/d/c/e;->z:I

    if-lt v0, v1, :cond_1

    .line 295
    invoke-direct {p0}, Landroidx/d/c/e;->p()V

    .line 297
    :cond_1
    sget-object v0, Landroidx/d/c/i$a;->c:Landroidx/d/c/i$a;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/d/c/e;->a(Landroidx/d/c/i$a;Ljava/lang/String;)Landroidx/d/c/i;

    move-result-object v0

    .line 298
    iget v1, p0, Landroidx/d/c/e;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/d/c/e;->k:I

    .line 299
    iget v1, p0, Landroidx/d/c/e;->o:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/d/c/e;->o:I

    .line 300
    iget v1, p0, Landroidx/d/c/e;->k:I

    iput v1, v0, Landroidx/d/c/i;->k:I

    .line 301
    iget-object v1, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v1, v1, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    iget p0, p0, Landroidx/d/c/e;->k:I

    aput-object v0, v1, p0

    return-object v0
.end method

.method f()Landroidx/d/c/e$a;
    .locals 0

    .line 394
    iget-object p0, p0, Landroidx/d/c/e;->x:Landroidx/d/c/e$a;

    return-object p0
.end method

.method public g()V
    .locals 5

    .line 448
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 449
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v3, v0, Landroidx/d/c/f;->i:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/d/c/f;->i:J

    .line 451
    :cond_0
    iget-object v0, p0, Landroidx/d/c/e;->x:Landroidx/d/c/e$a;

    invoke-interface {v0}, Landroidx/d/c/e$a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 455
    invoke-direct {p0}, Landroidx/d/c/e;->r()V

    return-void

    .line 461
    :cond_1
    iget-boolean v0, p0, Landroidx/d/c/e;->m:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroidx/d/c/e;->n:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 482
    :cond_2
    iget-object v0, p0, Landroidx/d/c/e;->x:Landroidx/d/c/e$a;

    invoke-virtual {p0, v0}, Landroidx/d/c/e;->a(Landroidx/d/c/e$a;)V

    goto :goto_3

    .line 462
    :cond_3
    :goto_0
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    if-eqz v0, :cond_4

    .line 463
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v3, v0, Landroidx/d/c/f;->v:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/d/c/f;->v:J

    :cond_4
    const/4 v0, 0x0

    move v3, v0

    .line 466
    :goto_1
    iget v4, p0, Landroidx/d/c/e;->p:I

    if-ge v3, v4, :cond_6

    .line 467
    iget-object v4, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v4, v4, v3

    .line 468
    iget-boolean v4, v4, Landroidx/d/c/b;->f:Z

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    :goto_2
    if-nez v0, :cond_7

    .line 474
    iget-object v0, p0, Landroidx/d/c/e;->x:Landroidx/d/c/e$a;

    invoke-virtual {p0, v0}, Landroidx/d/c/e;->a(Landroidx/d/c/e$a;)V

    goto :goto_3

    .line 476
    :cond_7
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    if-eqz v0, :cond_8

    .line 477
    sget-object v0, Landroidx/d/c/e;->r:Landroidx/d/c/f;

    iget-wide v3, v0, Landroidx/d/c/f;->u:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/d/c/f;->u:J

    .line 479
    :cond_8
    invoke-direct {p0}, Landroidx/d/c/e;->r()V

    :goto_3
    return-void
.end method

.method final h()V
    .locals 7

    const/4 v0, 0x0

    .line 524
    :goto_0
    iget v1, p0, Landroidx/d/c/e;->p:I

    if-ge v0, v1, :cond_4

    .line 525
    iget-object v1, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v1, v1, v0

    .line 526
    iget-object v2, v1, Landroidx/d/c/b;->e:Landroidx/d/c/b$a;

    invoke-interface {v2}, Landroidx/d/c/b$a;->e()I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 527
    iput-boolean v3, v1, Landroidx/d/c/b;->f:Z

    .line 529
    :cond_0
    iget-boolean v2, v1, Landroidx/d/c/b;->f:Z

    if-eqz v2, :cond_3

    .line 530
    iget-object v2, v1, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    iget v4, v1, Landroidx/d/c/b;->b:F

    iput v4, v2, Landroidx/d/c/i;->n:F

    .line 531
    iget-object v2, v1, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    invoke-virtual {v2, v1}, Landroidx/d/c/i;->b(Landroidx/d/c/b;)V

    move v2, v0

    .line 532
    :goto_1
    iget v4, p0, Landroidx/d/c/e;->p:I

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_1

    .line 533
    iget-object v4, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    iget-object v5, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    aput-object v5, v4, v2

    move v2, v6

    goto :goto_1

    .line 535
    :cond_1
    iget-object v2, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    iget v4, p0, Landroidx/d/c/e;->p:I

    sub-int/2addr v4, v3

    const/4 v5, 0x0

    aput-object v5, v2, v4

    .line 536
    iget v2, p0, Landroidx/d/c/e;->p:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroidx/d/c/e;->p:I

    add-int/lit8 v0, v0, -0x1

    .line 538
    sget-boolean v2, Landroidx/d/c/e;->i:Z

    if-eqz v2, :cond_2

    .line 539
    iget-object v2, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v2, v2, Landroidx/d/c/c;->a:Landroidx/d/c/g$a;

    invoke-interface {v2, v1}, Landroidx/d/c/g$a;->a(Ljava/lang/Object;)Z

    goto :goto_2

    .line 541
    :cond_2
    iget-object v2, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v2, v2, Landroidx/d/c/c;->b:Landroidx/d/c/g$a;

    invoke-interface {v2, v1}, Landroidx/d/c/g$a;->a(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/2addr v0, v3

    goto :goto_0

    :cond_4
    return-void
.end method

.method public i()V
    .locals 6

    .line 1059
    invoke-direct {p0}, Landroidx/d/c/e;->t()V

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " num vars "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/d/c/e;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v0

    move v0, v1

    .line 1061
    :goto_0
    iget v3, p0, Landroidx/d/c/e;->k:I

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_1

    .line 1062
    iget-object v3, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v3, v3, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    .line 1063
    iget-boolean v4, v3, Landroidx/d/c/i;->o:Z

    if-eqz v4, :cond_0

    .line 1064
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " $["

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] => "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroidx/d/c/i;->n:F

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1067
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 1068
    :goto_1
    iget v3, p0, Landroidx/d/c/e;->k:I

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_3

    .line 1069
    iget-object v3, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v3, v3, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2

    .line 1070
    iget-boolean v4, v3, Landroidx/d/c/i;->w:Z

    if-eqz v4, :cond_2

    .line 1071
    iget-object v4, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    iget-object v4, v4, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    iget v5, v3, Landroidx/d/c/i;->x:I

    aget-object v4, v4, v5

    .line 1072
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ~["

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] => "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " + "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v3, Landroidx/d/c/i;->y:F

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1075
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n #  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1076
    :goto_2
    iget v2, p0, Landroidx/d/c/e;->p:I

    if-ge v1, v2, :cond_4

    .line 1077
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroidx/d/c/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1078
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n #  "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1080
    :cond_4
    iget-object v1, p0, Landroidx/d/c/e;->x:Landroidx/d/c/e$a;

    if-eqz v1, :cond_5

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Goal: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/d/c/e;->x:Landroidx/d/c/e$a;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1083
    :cond_5
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 4

    .line 1088
    invoke-direct {p0}, Landroidx/d/c/e;->t()V

    const-string v0, ""

    const/4 v1, 0x0

    .line 1090
    :goto_0
    iget v2, p0, Landroidx/d/c/e;->p:I

    if-ge v1, v2, :cond_1

    .line 1091
    iget-object v2, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroidx/d/c/b;->a:Landroidx/d/c/i;

    iget-object v2, v2, Landroidx/d/c/i;->s:Landroidx/d/c/i$a;

    sget-object v3, Landroidx/d/c/i$a;->a:Landroidx/d/c/i$a;

    if-ne v2, v3, :cond_0

    .line 1092
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroidx/d/c/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1093
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1096
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/d/c/e;->x:Landroidx/d/c/e$a;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1097
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public k()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1103
    :goto_0
    iget v2, p0, Landroidx/d/c/e;->p:I

    if-ge v0, v2, :cond_1

    .line 1104
    iget-object v2, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 1105
    iget-object v2, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroidx/d/c/b;->d()I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public l()I
    .locals 0

    .line 1112
    iget p0, p0, Landroidx/d/c/e;->p:I

    return p0
.end method

.method public m()I
    .locals 0

    .line 1114
    iget p0, p0, Landroidx/d/c/e;->k:I

    return p0
.end method

.method n()V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1122
    :goto_0
    iget v3, p0, Landroidx/d/c/e;->y:I

    if-ge v1, v3, :cond_1

    .line 1123
    iget-object v3, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 1124
    iget-object v3, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroidx/d/c/b;->d()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    move v3, v1

    .line 1128
    :goto_1
    iget v4, p0, Landroidx/d/c/e;->p:I

    if-ge v1, v4, :cond_3

    .line 1129
    iget-object v4, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    .line 1130
    iget-object v4, p0, Landroidx/d/c/e;->l:[Landroidx/d/c/b;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroidx/d/c/b;->d()I

    move-result v4

    add-int/2addr v3, v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1134
    :cond_3
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Linear System -> Table size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/d/c/e;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroidx/d/c/e;->y:I

    iget v6, p0, Landroidx/d/c/e;->y:I

    mul-int/2addr v5, v6

    .line 1135
    invoke-direct {p0, v5}, Landroidx/d/c/e;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") -- row sizes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1136
    invoke-direct {p0, v2}, Landroidx/d/c/e;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", actual size: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    invoke-direct {p0, v3}, Landroidx/d/c/e;->b(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rows: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/d/c/e;->p:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/d/c/e;->B:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cols: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/d/c/e;->o:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/d/c/e;->z:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " occupied cells, "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    invoke-direct {p0, v0}, Landroidx/d/c/e;->b(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1134
    invoke-virtual {v1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public o()Landroidx/d/c/c;
    .locals 0

    .line 1171
    iget-object p0, p0, Landroidx/d/c/e;->q:Landroidx/d/c/c;

    return-object p0
.end method
