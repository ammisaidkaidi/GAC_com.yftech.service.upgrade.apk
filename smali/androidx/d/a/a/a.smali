.class public Landroidx/d/a/a/a;
.super Landroidx/d/e/o;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x0

.field public static final g:I = 0x1

.field public static final h:I = 0x2

.field public static final i:I = 0x0

.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field public static final l:I = 0x0

.field public static final m:I = 0x1

.field public static final n:I = 0x2

.field public static final o:I = 0x3

.field private static final w:Ljava/lang/String; = "Flow"


# instance fields
.field private x:Landroidx/d/c/b/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Landroidx/d/e/o;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1, p2}, Landroidx/d/e/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroidx/d/e/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/AttributeSet;)V
    .locals 6

    .line 200
    invoke-super {p0, p1}, Landroidx/d/e/o;->a(Landroid/util/AttributeSet;)V

    .line 201
    new-instance v0, Landroidx/d/c/b/g;

    invoke-direct {v0}, Landroidx/d/c/b/g;-><init>()V

    iput-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    if-eqz p1, :cond_1b

    .line 203
    invoke-virtual {p0}, Landroidx/d/a/a/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/d/e/m$m;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1a

    .line 206
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 207
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_android_orientation:I

    if-ne v3, v4, :cond_0

    .line 208
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->a(I)V

    goto/16 :goto_1

    .line 209
    :cond_0
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_android_padding:I

    if-ne v3, v4, :cond_1

    .line 210
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->N(I)V

    goto/16 :goto_1

    .line 211
    :cond_1
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_android_paddingStart:I

    const/16 v5, 0x11

    if-ne v3, v4, :cond_2

    .line 212
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_19

    .line 213
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->O(I)V

    goto/16 :goto_1

    .line 215
    :cond_2
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_android_paddingEnd:I

    if-ne v3, v4, :cond_3

    .line 216
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_19

    .line 217
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->P(I)V

    goto/16 :goto_1

    .line 219
    :cond_3
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_android_paddingLeft:I

    if-ne v3, v4, :cond_4

    .line 220
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->Q(I)V

    goto/16 :goto_1

    .line 221
    :cond_4
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_android_paddingTop:I

    if-ne v3, v4, :cond_5

    .line 222
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->R(I)V

    goto/16 :goto_1

    .line 223
    :cond_5
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_android_paddingRight:I

    if-ne v3, v4, :cond_6

    .line 224
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->S(I)V

    goto/16 :goto_1

    .line 225
    :cond_6
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_android_paddingBottom:I

    if-ne v3, v4, :cond_7

    .line 226
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->T(I)V

    goto/16 :goto_1

    .line 227
    :cond_7
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_flow_wrapMode:I

    if-ne v3, v4, :cond_8

    .line 228
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->I(I)V

    goto/16 :goto_1

    .line 229
    :cond_8
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_flow_horizontalStyle:I

    if-ne v3, v4, :cond_9

    .line 230
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->E(I)V

    goto/16 :goto_1

    .line 231
    :cond_9
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_flow_verticalStyle:I

    if-ne v3, v4, :cond_a

    .line 232
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->F(I)V

    goto/16 :goto_1

    .line 233
    :cond_a
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_flow_firstHorizontalStyle:I

    if-ne v3, v4, :cond_b

    .line 234
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->b(I)V

    goto/16 :goto_1

    .line 235
    :cond_b
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_flow_lastHorizontalStyle:I

    if-ne v3, v4, :cond_c

    .line 236
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->C(I)V

    goto/16 :goto_1

    .line 237
    :cond_c
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_flow_firstVerticalStyle:I

    if-ne v3, v4, :cond_d

    .line 238
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->B(I)V

    goto/16 :goto_1

    .line 239
    :cond_d
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_flow_lastVerticalStyle:I

    if-ne v3, v4, :cond_e

    .line 240
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->D(I)V

    goto/16 :goto_1

    .line 241
    :cond_e
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_flow_horizontalBias:I

    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v3, v4, :cond_f

    .line 242
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->e(F)V

    goto/16 :goto_1

    .line 243
    :cond_f
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_flow_firstHorizontalBias:I

    if-ne v3, v4, :cond_10

    .line 244
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->g(F)V

    goto/16 :goto_1

    .line 245
    :cond_10
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_flow_lastHorizontalBias:I

    if-ne v3, v4, :cond_11

    .line 246
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->i(F)V

    goto/16 :goto_1

    .line 247
    :cond_11
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_flow_firstVerticalBias:I

    if-ne v3, v4, :cond_12

    .line 248
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->h(F)V

    goto :goto_1

    .line 249
    :cond_12
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_flow_lastVerticalBias:I

    if-ne v3, v4, :cond_13

    .line 250
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->j(F)V

    goto :goto_1

    .line 251
    :cond_13
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_flow_verticalBias:I

    if-ne v3, v4, :cond_14

    .line 252
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->f(F)V

    goto :goto_1

    .line 253
    :cond_14
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_flow_horizontalAlign:I

    const/4 v5, 0x2

    if-ne v3, v4, :cond_15

    .line 254
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->G(I)V

    goto :goto_1

    .line 255
    :cond_15
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_flow_verticalAlign:I

    if-ne v3, v4, :cond_16

    .line 256
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->H(I)V

    goto :goto_1

    .line 257
    :cond_16
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_flow_horizontalGap:I

    if-ne v3, v4, :cond_17

    .line 258
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->J(I)V

    goto :goto_1

    .line 259
    :cond_17
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_flow_verticalGap:I

    if-ne v3, v4, :cond_18

    .line 260
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->K(I)V

    goto :goto_1

    .line 261
    :cond_18
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_flow_maxElementsWrap:I

    if-ne v3, v4, :cond_19

    .line 262
    iget-object v4, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    const/4 v5, -0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/g;->L(I)V

    :cond_19
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 265
    :cond_1a
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 268
    :cond_1b
    iget-object p1, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    iput-object p1, p0, Landroidx/d/a/a/a;->s:Landroidx/d/c/b/i;

    .line 269
    invoke-virtual {p0}, Landroidx/d/a/a/a;->c()V

    return-void
.end method

.method public a(Landroidx/d/c/b/e;Z)V
    .locals 0

    .line 144
    iget-object p0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p0, p2}, Landroidx/d/c/b/g;->a(Z)V

    return-void
.end method

.method public a(Landroidx/d/c/b/m;II)V
    .locals 2

    .line 162
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 163
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 164
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 165
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p1, v0, p2, v1, p3}, Landroidx/d/c/b/m;->b(IIII)V

    .line 168
    invoke-virtual {p1}, Landroidx/d/c/b/m;->aq()I

    move-result p2

    invoke-virtual {p1}, Landroidx/d/c/b/m;->ar()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Landroidx/d/a/a/a;->setMeasuredDimension(II)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 170
    invoke-virtual {p0, p1, p1}, Landroidx/d/a/a/a;->setMeasuredDimension(II)V

    :goto_0
    return-void
.end method

.method public a(Landroidx/d/e/g$a;Landroidx/d/c/b/j;Landroidx/d/e/d$a;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/d/e/g$a;",
            "Landroidx/d/c/b/j;",
            "Landroidx/d/e/d$a;",
            "Landroid/util/SparseArray<",
            "Landroidx/d/c/b/e;",
            ">;)V"
        }
    .end annotation

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/d/e/o;->a(Landroidx/d/e/g$a;Landroidx/d/c/b/j;Landroidx/d/e/d$a;Landroid/util/SparseArray;)V

    .line 185
    instance-of p0, p2, Landroidx/d/c/b/g;

    if-eqz p0, :cond_0

    .line 186
    check-cast p2, Landroidx/d/c/b/g;

    .line 187
    iget p0, p3, Landroidx/d/e/d$a;->ak:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    .line 188
    iget p0, p3, Landroidx/d/e/d$a;->ak:I

    invoke-virtual {p2, p0}, Landroidx/d/c/b/g;->a(I)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {p0, v0, p1, p2}, Landroidx/d/a/a/a;->a(Landroidx/d/c/b/m;II)V

    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .locals 1

    .line 420
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/g;->g(F)V

    .line 421
    invoke-virtual {p0}, Landroidx/d/a/a/a;->requestLayout()V

    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .locals 1

    .line 400
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/g;->b(I)V

    .line 401
    invoke-virtual {p0}, Landroidx/d/a/a/a;->requestLayout()V

    return-void
.end method

.method public setFirstVerticalBias(F)V
    .locals 1

    .line 430
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/g;->h(F)V

    .line 431
    invoke-virtual {p0}, Landroidx/d/a/a/a;->requestLayout()V

    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .locals 1

    .line 410
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/g;->B(I)V

    .line 411
    invoke-virtual {p0}, Landroidx/d/a/a/a;->requestLayout()V

    return-void
.end method

.method public setHorizontalAlign(I)V
    .locals 1

    .line 445
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/g;->G(I)V

    .line 446
    invoke-virtual {p0}, Landroidx/d/a/a/a;->requestLayout()V

    return-void
.end method

.method public setHorizontalBias(F)V
    .locals 1

    .line 380
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/g;->e(F)V

    .line 381
    invoke-virtual {p0}, Landroidx/d/a/a/a;->requestLayout()V

    return-void
.end method

.method public setHorizontalGap(I)V
    .locals 1

    .line 471
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/g;->J(I)V

    .line 472
    invoke-virtual {p0}, Landroidx/d/a/a/a;->requestLayout()V

    return-void
.end method

.method public setHorizontalStyle(I)V
    .locals 1

    .line 356
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/g;->E(I)V

    .line 357
    invoke-virtual {p0}, Landroidx/d/a/a/a;->requestLayout()V

    return-void
.end method

.method public setMaxElementsWrap(I)V
    .locals 1

    .line 491
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/g;->L(I)V

    .line 492
    invoke-virtual {p0}, Landroidx/d/a/a/a;->requestLayout()V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 278
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/g;->a(I)V

    .line 279
    invoke-virtual {p0}, Landroidx/d/a/a/a;->requestLayout()V

    return-void
.end method

.method public setPadding(I)V
    .locals 1

    .line 288
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/g;->N(I)V

    .line 289
    invoke-virtual {p0}, Landroidx/d/a/a/a;->requestLayout()V

    return-void
.end method

.method public setPaddingBottom(I)V
    .locals 1

    .line 328
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/g;->T(I)V

    .line 329
    invoke-virtual {p0}, Landroidx/d/a/a/a;->requestLayout()V

    return-void
.end method

.method public setPaddingLeft(I)V
    .locals 1

    .line 298
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/g;->Q(I)V

    .line 299
    invoke-virtual {p0}, Landroidx/d/a/a/a;->requestLayout()V

    return-void
.end method

.method public setPaddingRight(I)V
    .locals 1

    .line 318
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/g;->S(I)V

    .line 319
    invoke-virtual {p0}, Landroidx/d/a/a/a;->requestLayout()V

    return-void
.end method

.method public setPaddingTop(I)V
    .locals 1

    .line 308
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/g;->R(I)V

    .line 309
    invoke-virtual {p0}, Landroidx/d/a/a/a;->requestLayout()V

    return-void
.end method

.method public setVerticalAlign(I)V
    .locals 1

    .line 461
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/g;->H(I)V

    .line 462
    invoke-virtual {p0}, Landroidx/d/a/a/a;->requestLayout()V

    return-void
.end method

.method public setVerticalBias(F)V
    .locals 1

    .line 390
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/g;->f(F)V

    .line 391
    invoke-virtual {p0}, Landroidx/d/a/a/a;->requestLayout()V

    return-void
.end method

.method public setVerticalGap(I)V
    .locals 1

    .line 481
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/g;->K(I)V

    .line 482
    invoke-virtual {p0}, Landroidx/d/a/a/a;->requestLayout()V

    return-void
.end method

.method public setVerticalStyle(I)V
    .locals 1

    .line 370
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/g;->F(I)V

    .line 371
    invoke-virtual {p0}, Landroidx/d/a/a/a;->requestLayout()V

    return-void
.end method

.method public setWrapMode(I)V
    .locals 1

    .line 342
    iget-object v0, p0, Landroidx/d/a/a/a;->x:Landroidx/d/c/b/g;

    invoke-virtual {v0, p1}, Landroidx/d/c/b/g;->I(I)V

    .line 343
    invoke-virtual {p0}, Landroidx/d/a/a/a;->requestLayout()V

    return-void
.end method
