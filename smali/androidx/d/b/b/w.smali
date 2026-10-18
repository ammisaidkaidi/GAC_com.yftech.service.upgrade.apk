.class public abstract Landroidx/d/b/b/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/d/b/b/w$m;,
        Landroidx/d/b/b/w$g;,
        Landroidx/d/b/b/w$b;,
        Landroidx/d/b/b/w$p;,
        Landroidx/d/b/b/w$o;,
        Landroidx/d/b/b/w$n;,
        Landroidx/d/b/b/w$l;,
        Landroidx/d/b/b/w$k;,
        Landroidx/d/b/b/w$d;,
        Landroidx/d/b/b/w$f;,
        Landroidx/d/b/b/w$e;,
        Landroidx/d/b/b/w$j;,
        Landroidx/d/b/b/w$i;,
        Landroidx/d/b/b/w$h;,
        Landroidx/d/b/b/w$a;,
        Landroidx/d/b/b/w$c;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "SplineSet"


# instance fields
.field protected a:Landroidx/d/b/a/b;

.field protected b:[I

.field protected c:[F

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 40
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/d/b/b/w;->b:[I

    .line 41
    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/d/b/b/w;->c:[F

    return-void
.end method

.method static a(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/d/b/b/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/d/e/b;",
            ">;)",
            "Landroidx/d/b/b/w;"
        }
    .end annotation

    .line 75
    new-instance v0, Landroidx/d/b/b/w$b;

    invoke-direct {v0, p0, p1}, Landroidx/d/b/b/w$b;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method static b(Ljava/lang/String;)Landroidx/d/b/b/w;
    .locals 1

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "waveOffset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "transformPivotY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "transformPivotX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "waveVariesBy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto :goto_1

    :sswitch_8
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto :goto_1

    :sswitch_9
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_a
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xf

    goto :goto_1

    :sswitch_b
    const-string v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xe

    goto :goto_1

    :sswitch_c
    const-string v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd

    goto :goto_1

    :sswitch_d
    const-string v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc

    goto :goto_1

    :sswitch_e
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_f
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 111
    :pswitch_0
    new-instance p0, Landroidx/d/b/b/w$g;

    invoke-direct {p0}, Landroidx/d/b/b/w$g;-><init>()V

    return-object p0

    .line 109
    :pswitch_1
    new-instance p0, Landroidx/d/b/b/w$p;

    invoke-direct {p0}, Landroidx/d/b/b/w$p;-><init>()V

    return-object p0

    .line 107
    :pswitch_2
    new-instance p0, Landroidx/d/b/b/w$o;

    invoke-direct {p0}, Landroidx/d/b/b/w$o;-><init>()V

    return-object p0

    .line 105
    :pswitch_3
    new-instance p0, Landroidx/d/b/b/w$n;

    invoke-direct {p0}, Landroidx/d/b/b/w$n;-><init>()V

    return-object p0

    .line 103
    :pswitch_4
    new-instance p0, Landroidx/d/b/b/w$a;

    invoke-direct {p0}, Landroidx/d/b/b/w$a;-><init>()V

    return-object p0

    .line 101
    :pswitch_5
    new-instance p0, Landroidx/d/b/b/w$a;

    invoke-direct {p0}, Landroidx/d/b/b/w$a;-><init>()V

    return-object p0

    .line 99
    :pswitch_6
    new-instance p0, Landroidx/d/b/b/w$l;

    invoke-direct {p0}, Landroidx/d/b/b/w$l;-><init>()V

    return-object p0

    .line 97
    :pswitch_7
    new-instance p0, Landroidx/d/b/b/w$k;

    invoke-direct {p0}, Landroidx/d/b/b/w$k;-><init>()V

    return-object p0

    .line 95
    :pswitch_8
    new-instance p0, Landroidx/d/b/b/w$d;

    invoke-direct {p0}, Landroidx/d/b/b/w$d;-><init>()V

    return-object p0

    .line 93
    :pswitch_9
    new-instance p0, Landroidx/d/b/b/w$f;

    invoke-direct {p0}, Landroidx/d/b/b/w$f;-><init>()V

    return-object p0

    .line 91
    :pswitch_a
    new-instance p0, Landroidx/d/b/b/w$e;

    invoke-direct {p0}, Landroidx/d/b/b/w$e;-><init>()V

    return-object p0

    .line 89
    :pswitch_b
    new-instance p0, Landroidx/d/b/b/w$j;

    invoke-direct {p0}, Landroidx/d/b/b/w$j;-><init>()V

    return-object p0

    .line 87
    :pswitch_c
    new-instance p0, Landroidx/d/b/b/w$i;

    invoke-direct {p0}, Landroidx/d/b/b/w$i;-><init>()V

    return-object p0

    .line 85
    :pswitch_d
    new-instance p0, Landroidx/d/b/b/w$h;

    invoke-direct {p0}, Landroidx/d/b/b/w$h;-><init>()V

    return-object p0

    .line 83
    :pswitch_e
    new-instance p0, Landroidx/d/b/b/w$c;

    invoke-direct {p0}, Landroidx/d/b/b/w$c;-><init>()V

    return-object p0

    .line 81
    :pswitch_f
    new-instance p0, Landroidx/d/b/b/w$a;

    invoke-direct {p0}, Landroidx/d/b/b/w$a;-><init>()V

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_f
        -0x4a771f65 -> :sswitch_e
        -0x490b9c39 -> :sswitch_d
        -0x490b9c38 -> :sswitch_c
        -0x490b9c37 -> :sswitch_b
        -0x3bab3dd3 -> :sswitch_a
        -0x3621dfb2 -> :sswitch_9
        -0x3621dfb1 -> :sswitch_8
        -0x2f893320 -> :sswitch_7
        -0x2d5a2d1e -> :sswitch_6
        -0x2d5a2d1d -> :sswitch_5
        -0x266f082 -> :sswitch_4
        -0x42d1a3 -> :sswitch_3
        0x2382115 -> :sswitch_2
        0x589b15e -> :sswitch_1
        0x94e04ec -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(F)F
    .locals 2

    .line 63
    iget-object p0, p0, Landroidx/d/b/b/w;->a:Landroidx/d/b/a/b;

    float-to-double v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroidx/d/b/a/b;->a(DI)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public a()Landroidx/d/b/a/b;
    .locals 0

    .line 71
    iget-object p0, p0, Landroidx/d/b/b/w;->a:Landroidx/d/b/a/b;

    return-object p0
.end method

.method public a(I)V
    .locals 9

    .line 130
    iget v0, p0, Landroidx/d/b/b/w;->e:I

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Landroidx/d/b/b/w;->b:[I

    iget-object v1, p0, Landroidx/d/b/b/w;->c:[F

    iget v2, p0, Landroidx/d/b/b/w;->e:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2}, Landroidx/d/b/b/w$m;->a([I[FII)V

    move v0, v3

    move v1, v0

    .line 138
    :goto_0
    iget v2, p0, Landroidx/d/b/b/w;->e:I

    if-ge v0, v2, :cond_2

    .line 139
    iget-object v2, p0, Landroidx/d/b/b/w;->b:[I

    add-int/lit8 v5, v0, -0x1

    aget v2, v2, v5

    iget-object v5, p0, Landroidx/d/b/b/w;->b:[I

    aget v5, v5, v0

    if-eq v2, v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_2
    new-array v0, v1, [D

    .line 145
    filled-new-array {v1, v3}, [I

    move-result-object v1

    const-class v2, D

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move v2, v4

    move v3, v2

    .line 147
    :goto_1
    iget v5, p0, Landroidx/d/b/b/w;->e:I

    if-ge v2, v5, :cond_4

    if-lez v2, :cond_3

    .line 148
    iget-object v5, p0, Landroidx/d/b/b/w;->b:[I

    aget v5, v5, v2

    iget-object v6, p0, Landroidx/d/b/b/w;->b:[I

    add-int/lit8 v7, v2, -0x1

    aget v6, v6, v7

    if-ne v5, v6, :cond_3

    goto :goto_2

    .line 152
    :cond_3
    iget-object v5, p0, Landroidx/d/b/b/w;->b:[I

    aget v5, v5, v2

    int-to-double v5, v5

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v5, v7

    aput-wide v5, v0, v3

    .line 153
    aget-object v5, v1, v3

    iget-object v6, p0, Landroidx/d/b/b/w;->c:[F

    aget v6, v6, v2

    float-to-double v6, v6

    aput-wide v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 156
    :cond_4
    invoke-static {p1, v0, v1}, Landroidx/d/b/a/b;->a(I[D[[D)Landroidx/d/b/a/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/d/b/b/w;->a:Landroidx/d/b/a/b;

    return-void
.end method

.method public a(IF)V
    .locals 2

    .line 120
    iget-object v0, p0, Landroidx/d/b/b/w;->b:[I

    array-length v0, v0

    iget v1, p0, Landroidx/d/b/b/w;->e:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Landroidx/d/b/b/w;->b:[I

    iget-object v1, p0, Landroidx/d/b/b/w;->b:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/d/b/b/w;->b:[I

    .line 122
    iget-object v0, p0, Landroidx/d/b/b/w;->c:[F

    iget-object v1, p0, Landroidx/d/b/b/w;->c:[F

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/d/b/b/w;->c:[F

    .line 124
    :cond_0
    iget-object v0, p0, Landroidx/d/b/b/w;->b:[I

    iget v1, p0, Landroidx/d/b/b/w;->e:I

    aput p1, v0, v1

    .line 125
    iget-object p1, p0, Landroidx/d/b/b/w;->c:[F

    iget v0, p0, Landroidx/d/b/b/w;->e:I

    aput p2, p1, v0

    .line 126
    iget p1, p0, Landroidx/d/b/b/w;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/d/b/b/w;->e:I

    return-void
.end method

.method public abstract a(Landroid/view/View;F)V
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Landroidx/d/b/b/w;->f:Ljava/lang/String;

    return-void
.end method

.method public b(F)F
    .locals 2

    .line 67
    iget-object p0, p0, Landroidx/d/b/b/w;->a:Landroidx/d/b/a/b;

    float-to-double v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroidx/d/b/a/b;->b(DI)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 47
    iget-object v0, p0, Landroidx/d/b/b/w;->f:Ljava/lang/String;

    .line 48
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 49
    :goto_0
    iget v3, p0, Landroidx/d/b/b/w;->e:I

    if-ge v2, v3, :cond_0

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/d/b/b/w;->b:[I

    aget v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/d/b/b/w;->c:[F

    aget v0, v0, v2

    float-to-double v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
