.class public Landroidx/d/b/b/k;
.super Landroidx/d/b/b/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/d/b/b/k$a;
    }
.end annotation


# static fields
.field public static final I:I = 0x2

.field public static final J:I = 0x1

.field public static final K:I = 0x0

.field static final M:I = 0x2

.field private static final P:Ljava/lang/String; = "KeyPosition"

.field private static final S:Ljava/lang/String; = "percentY"

.field private static final T:Ljava/lang/String; = "percentX"

.field static final y:Ljava/lang/String; = "KeyPosition"


# instance fields
.field A:I

.field B:I

.field C:F

.field D:F

.field E:F

.field F:F

.field G:F

.field H:F

.field L:I

.field private Q:F

.field private R:F

.field z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Landroidx/d/b/b/l;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Landroidx/d/b/b/k;->z:Ljava/lang/String;

    .line 44
    sget v0, Landroidx/d/b/b/k;->a:I

    iput v0, p0, Landroidx/d/b/b/k;->A:I

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Landroidx/d/b/b/k;->B:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 46
    iput v1, p0, Landroidx/d/b/b/k;->C:F

    .line 47
    iput v1, p0, Landroidx/d/b/b/k;->D:F

    .line 48
    iput v1, p0, Landroidx/d/b/b/k;->E:F

    .line 49
    iput v1, p0, Landroidx/d/b/b/k;->F:F

    .line 50
    iput v1, p0, Landroidx/d/b/b/k;->G:F

    .line 51
    iput v1, p0, Landroidx/d/b/b/k;->H:F

    .line 55
    iput v0, p0, Landroidx/d/b/b/k;->L:I

    .line 57
    iput v1, p0, Landroidx/d/b/b/k;->Q:F

    .line 58
    iput v1, p0, Landroidx/d/b/b/k;->R:F

    const/4 v0, 0x2

    .line 62
    iput v0, p0, Landroidx/d/b/b/k;->e:I

    return-void
.end method

.method private a(FFFF)V
    .locals 2

    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    neg-float v0, p4

    .line 106
    iget v1, p0, Landroidx/d/b/b/k;->E:F

    mul-float/2addr v1, p3

    add-float/2addr p1, v1

    iget v1, p0, Landroidx/d/b/b/k;->F:F

    mul-float/2addr v0, v1

    add-float/2addr p1, v0

    iput p1, p0, Landroidx/d/b/b/k;->Q:F

    .line 107
    iget p1, p0, Landroidx/d/b/b/k;->E:F

    mul-float/2addr p4, p1

    add-float/2addr p2, p4

    iget p1, p0, Landroidx/d/b/b/k;->F:F

    mul-float/2addr p3, p1

    add-float/2addr p2, p3

    iput p2, p0, Landroidx/d/b/b/k;->R:F

    return-void
.end method

.method private a(II)V
    .locals 2

    const/4 v0, 0x0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 96
    iget v1, p0, Landroidx/d/b/b/k;->E:F

    mul-float/2addr p1, v1

    int-to-float v1, v0

    add-float/2addr p1, v1

    iput p1, p0, Landroidx/d/b/b/k;->Q:F

    sub-int/2addr p2, v0

    int-to-float p1, p2

    .line 97
    iget p2, p0, Landroidx/d/b/b/k;->E:F

    mul-float/2addr p1, p2

    add-float/2addr p1, v1

    iput p1, p0, Landroidx/d/b/b/k;->R:F

    return-void
.end method

.method private b(FFFF)V
    .locals 5

    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    .line 114
    iget v0, p0, Landroidx/d/b/b/k;->E:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/d/b/b/k;->E:F

    .line 115
    :goto_0
    iget v2, p0, Landroidx/d/b/b/k;->H:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    iget v2, p0, Landroidx/d/b/b/k;->H:F

    .line 116
    :goto_1
    iget v3, p0, Landroidx/d/b/b/k;->F:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_2

    :cond_2
    iget v3, p0, Landroidx/d/b/b/k;->F:F

    .line 117
    :goto_2
    iget v4, p0, Landroidx/d/b/b/k;->G:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    iget v1, p0, Landroidx/d/b/b/k;->G:F

    :goto_3
    mul-float/2addr v0, p3

    add-float/2addr p1, v0

    mul-float/2addr v1, p4

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float p1, p1

    .line 118
    iput p1, p0, Landroidx/d/b/b/k;->Q:F

    mul-float/2addr p3, v2

    add-float/2addr p2, p3

    mul-float/2addr p4, v3

    add-float/2addr p2, p4

    float-to-int p1, p2

    int-to-float p1, p1

    .line 119
    iput p1, p0, Landroidx/d/b/b/k;->R:F

    return-void
.end method


# virtual methods
.method a()F
    .locals 0

    .line 124
    iget p0, p0, Landroidx/d/b/b/k;->Q:F

    return p0
.end method

.method a(IIFFFF)V
    .locals 1

    .line 77
    iget v0, p0, Landroidx/d/b/b/k;->L:I

    packed-switch v0, :pswitch_data_0

    .line 87
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/d/b/b/k;->b(FFFF)V

    return-void

    .line 79
    :pswitch_0
    invoke-direct {p0, p1, p2}, Landroidx/d/b/b/k;->a(II)V

    return-void

    .line 83
    :pswitch_1
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/d/b/b/k;->a(FFFF)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 67
    sget-object v0, Landroidx/d/e/m$m;->KeyPosition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    invoke-static {p0, p1}, Landroidx/d/b/b/k$a;->a(Landroidx/d/b/b/k;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method a(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .locals 6

    .line 154
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    .line 155
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    .line 156
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 157
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float/2addr v0, p0

    sub-float/2addr p2, p1

    float-to-double v1, v0

    float-to-double v3, p2

    .line 160
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v1

    double-to-float v1, v1

    float-to-double v2, v1

    const-wide v4, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_0

    .line 162
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p1, "distance ~ 0"

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 163
    aput p0, p6, v4

    .line 164
    aput p0, p6, v3

    return-void

    :cond_0
    div-float/2addr v0, v1

    div-float/2addr p2, v1

    sub-float/2addr p4, p1

    mul-float p1, v0, p4

    sub-float/2addr p3, p0

    mul-float p0, p3, p2

    sub-float/2addr p1, p0

    div-float/2addr p1, v1

    mul-float/2addr v0, p3

    mul-float/2addr p2, p4

    add-float/2addr v0, p2

    div-float/2addr v0, v1

    .line 172
    aget-object p0, p5, v4

    if-eqz p0, :cond_1

    const-string p0, "percentX"

    .line 173
    aget-object p2, p5, v4

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 174
    aput v0, p6, v4

    .line 175
    aput p1, p6, v3

    goto :goto_0

    :cond_1
    const-string p0, "percentX"

    .line 178
    aput-object p0, p5, v4

    const-string p0, "percentY"

    .line 179
    aput-object p0, p5, v3

    .line 180
    aput v0, p6, v4

    .line 181
    aput p1, p6, v3

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .locals 7

    .line 137
    iget v0, p0, Landroidx/d/b/b/k;->L:I

    packed-switch v0, :pswitch_data_0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 147
    invoke-virtual/range {v0 .. v6}, Landroidx/d/b/b/k;->b(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    return-void

    .line 143
    :pswitch_0
    invoke-virtual/range {p0 .. p7}, Landroidx/d/b/b/k;->b(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    return-void

    :pswitch_1
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 140
    invoke-virtual/range {v0 .. v6}, Landroidx/d/b/b/k;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 346
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "percentY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_1
    const-string v0, "percentX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "sizePercent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "drawPath"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "percentHeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "percentWidth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_6
    const-string v0, "transitionEasing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 366
    :pswitch_0
    invoke-virtual {p0, p2}, Landroidx/d/b/b/k;->a(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/d/b/b/k;->F:F

    goto :goto_2

    .line 363
    :pswitch_1
    invoke-virtual {p0, p2}, Landroidx/d/b/b/k;->a(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/d/b/b/k;->E:F

    goto :goto_2

    .line 360
    :pswitch_2
    invoke-virtual {p0, p2}, Landroidx/d/b/b/k;->a(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/d/b/b/k;->C:F

    iput p1, p0, Landroidx/d/b/b/k;->D:F

    goto :goto_2

    .line 357
    :pswitch_3
    invoke-virtual {p0, p2}, Landroidx/d/b/b/k;->a(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/d/b/b/k;->D:F

    goto :goto_2

    .line 354
    :pswitch_4
    invoke-virtual {p0, p2}, Landroidx/d/b/b/k;->a(Ljava/lang/Object;)F

    move-result p1

    iput p1, p0, Landroidx/d/b/b/k;->C:F

    goto :goto_2

    .line 351
    :pswitch_5
    invoke-virtual {p0, p2}, Landroidx/d/b/b/k;->b(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/d/b/b/k;->B:I

    goto :goto_2

    .line 348
    :pswitch_6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/d/b/b/k;->z:Ljava/lang/String;

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_6
        -0x4330437f -> :sswitch_5
        -0x3ca72634 -> :sswitch_4
        -0x314b3c77 -> :sswitch_3
        -0xbefb6fc -> :sswitch_2
        0x198424b3 -> :sswitch_1
        0x198424b4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/d/b/b/w;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public a(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z
    .locals 7

    .line 237
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    invoke-virtual {p4}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v6}, Landroidx/d/b/b/k;->a(IIFFFF)V

    .line 238
    iget p1, p0, Landroidx/d/b/b/k;->Q:F

    sub-float/2addr p5, p1

    invoke-static {p5}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x41a00000    # 20.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    iget p0, p0, Landroidx/d/b/b/k;->R:F

    sub-float/2addr p6, p0

    .line 239
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, p2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method b()F
    .locals 0

    .line 129
    iget p0, p0, Landroidx/d/b/b/k;->R:F

    return p0
.end method

.method b(Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .locals 4

    .line 213
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result p0

    .line 214
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerY()F

    move-result p1

    .line 215
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 216
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    sub-float/2addr v0, p0

    sub-float/2addr p2, p1

    const/4 v1, 0x0

    .line 219
    aget-object v2, p5, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v2, "percentX"

    .line 220
    aget-object p5, p5, v1

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_0

    sub-float/2addr p3, p0

    div-float/2addr p3, v0

    .line 221
    aput p3, p6, v1

    sub-float/2addr p4, p1

    div-float/2addr p4, p2

    .line 222
    aput p4, p6, v3

    goto :goto_0

    :cond_0
    sub-float/2addr p3, p0

    div-float/2addr p3, v0

    .line 224
    aput p3, p6, v3

    sub-float/2addr p4, p1

    div-float/2addr p4, p2

    .line 225
    aput p4, p6, v1

    goto :goto_0

    :cond_1
    const-string v2, "percentX"

    .line 228
    aput-object v2, p5, v1

    sub-float/2addr p3, p0

    div-float/2addr p3, v0

    .line 229
    aput p3, p6, v1

    const-string p0, "percentY"

    .line 230
    aput-object p0, p5, v3

    sub-float/2addr p4, p1

    div-float/2addr p4, p2

    .line 231
    aput p4, p6, v3

    :goto_0
    return-void
.end method

.method b(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V
    .locals 1

    .line 186
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerX()F

    .line 187
    invoke-virtual {p2}, Landroid/graphics/RectF;->centerY()F

    .line 188
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    .line 189
    invoke-virtual {p3}, Landroid/graphics/RectF;->centerY()F

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    .line 193
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    .line 194
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    const/4 p2, 0x0

    .line 196
    aget-object p3, p6, p2

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    const-string p3, "percentX"

    .line 197
    aget-object p6, p6, p2

    invoke-virtual {p3, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    int-to-float p1, p1

    div-float/2addr p4, p1

    .line 198
    aput p4, p7, p2

    int-to-float p0, p0

    div-float/2addr p5, p0

    .line 199
    aput p5, p7, v0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    div-float/2addr p4, p1

    .line 201
    aput p4, p7, v0

    int-to-float p0, p0

    div-float/2addr p5, p0

    .line 202
    aput p5, p7, p2

    goto :goto_0

    :cond_1
    const-string p3, "percentX"

    .line 205
    aput-object p3, p6, p2

    int-to-float p1, p1

    div-float/2addr p4, p1

    .line 206
    aput p4, p7, p2

    const-string p1, "percentY"

    .line 207
    aput-object p1, p6, v0

    int-to-float p0, p0

    div-float/2addr p5, p0

    .line 208
    aput p5, p7, v0

    :goto_0
    return-void
.end method
