.class public Landroidx/d/e/a;
.super Landroidx/d/e/c;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x2

.field public static final c:I = 0x1

.field public static final d:I = 0x3

.field public static final e:I = 0x5

.field public static final f:I = 0x6


# instance fields
.field private g:I

.field private h:I

.field private i:Landroidx/d/c/b/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Landroidx/d/e/c;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 119
    invoke-super {p0, p1}, Landroidx/d/e/c;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Landroidx/d/e/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    .line 124
    invoke-super {p0, p1}, Landroidx/d/e/c;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroidx/d/e/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    .line 129
    invoke-super {p0, p1}, Landroidx/d/e/c;->setVisibility(I)V

    return-void
.end method

.method private a(Landroidx/d/c/b/e;IZ)V
    .locals 5

    .line 151
    iput p2, p0, Landroidx/d/e/a;->h:I

    .line 152
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/16 v4, 0x11

    if-ge p2, v4, :cond_1

    .line 155
    iget p2, p0, Landroidx/d/e/a;->g:I

    if-ne p2, v3, :cond_0

    .line 156
    iput v2, p0, Landroidx/d/e/a;->h:I

    goto :goto_0

    .line 157
    :cond_0
    iget p2, p0, Landroidx/d/e/a;->g:I

    if-ne p2, v1, :cond_5

    .line 158
    iput v0, p0, Landroidx/d/e/a;->h:I

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_3

    .line 163
    iget p2, p0, Landroidx/d/e/a;->g:I

    if-ne p2, v3, :cond_2

    .line 164
    iput v0, p0, Landroidx/d/e/a;->h:I

    goto :goto_0

    .line 165
    :cond_2
    iget p2, p0, Landroidx/d/e/a;->g:I

    if-ne p2, v1, :cond_5

    .line 166
    iput v2, p0, Landroidx/d/e/a;->h:I

    goto :goto_0

    .line 169
    :cond_3
    iget p2, p0, Landroidx/d/e/a;->g:I

    if-ne p2, v3, :cond_4

    .line 170
    iput v2, p0, Landroidx/d/e/a;->h:I

    goto :goto_0

    .line 171
    :cond_4
    iget p2, p0, Landroidx/d/e/a;->g:I

    if-ne p2, v1, :cond_5

    .line 172
    iput v0, p0, Landroidx/d/e/a;->h:I

    .line 176
    :cond_5
    :goto_0
    instance-of p2, p1, Landroidx/d/c/b/a;

    if-eqz p2, :cond_6

    .line 177
    check-cast p1, Landroidx/d/c/b/a;

    .line 178
    iget p0, p0, Landroidx/d/e/a;->h:I

    invoke-virtual {p1, p0}, Landroidx/d/c/b/a;->a(I)V

    :cond_6
    return-void
.end method


# virtual methods
.method protected a(Landroid/util/AttributeSet;)V
    .locals 6

    .line 193
    invoke-super {p0, p1}, Landroidx/d/e/c;->a(Landroid/util/AttributeSet;)V

    .line 194
    new-instance v0, Landroidx/d/c/b/a;

    invoke-direct {v0}, Landroidx/d/c/b/a;-><init>()V

    iput-object v0, p0, Landroidx/d/e/a;->i:Landroidx/d/c/b/a;

    if-eqz p1, :cond_4

    .line 196
    invoke-virtual {p0}, Landroidx/d/e/a;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/d/e/m$m;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 199
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 200
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_barrierDirection:I

    if-ne v3, v4, :cond_0

    .line 201
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/d/e/a;->setType(I)V

    goto :goto_1

    .line 202
    :cond_0
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_barrierAllowsGoneWidgets:I

    if-ne v3, v4, :cond_1

    .line 203
    iget-object v4, p0, Landroidx/d/e/a;->i:Landroidx/d/c/b/a;

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/d/c/b/a;->a(Z)V

    goto :goto_1

    .line 204
    :cond_1
    sget v4, Landroidx/d/e/m$m;->ConstraintLayout_Layout_barrierMargin:I

    if-ne v3, v4, :cond_2

    .line 205
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 206
    iget-object v4, p0, Landroidx/d/e/a;->i:Landroidx/d/c/b/a;

    invoke-virtual {v4, v3}, Landroidx/d/c/b/a;->b(I)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 211
    :cond_4
    iget-object p1, p0, Landroidx/d/e/a;->i:Landroidx/d/c/b/a;

    iput-object p1, p0, Landroidx/d/e/a;->s:Landroidx/d/c/b/i;

    .line 212
    invoke-virtual {p0}, Landroidx/d/e/a;->c()V

    return-void
.end method

.method public a(Landroidx/d/c/b/e;Z)V
    .locals 1

    .line 184
    iget v0, p0, Landroidx/d/e/a;->g:I

    invoke-direct {p0, p1, v0, p2}, Landroidx/d/e/a;->a(Landroidx/d/c/b/e;IZ)V

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

    .line 254
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/d/e/c;->a(Landroidx/d/e/g$a;Landroidx/d/c/b/j;Landroidx/d/e/d$a;Landroid/util/SparseArray;)V

    .line 255
    instance-of p3, p2, Landroidx/d/c/b/a;

    if-eqz p3, :cond_0

    .line 256
    move-object p3, p2

    check-cast p3, Landroidx/d/c/b/a;

    .line 257
    invoke-virtual {p2}, Landroidx/d/c/b/j;->A()Landroidx/d/c/b/e;

    move-result-object p2

    check-cast p2, Landroidx/d/c/b/f;

    .line 258
    invoke-virtual {p2}, Landroidx/d/c/b/f;->as()Z

    move-result p2

    .line 259
    iget-object p4, p1, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget p4, p4, Landroidx/d/e/g$b;->ac:I

    invoke-direct {p0, p3, p4, p2}, Landroidx/d/e/a;->a(Landroidx/d/c/b/e;IZ)V

    .line 260
    iget-object p0, p1, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget-boolean p0, p0, Landroidx/d/e/g$b;->ak:Z

    invoke-virtual {p3, p0}, Landroidx/d/c/b/a;->a(Z)V

    .line 261
    iget-object p0, p1, Landroidx/d/e/g$a;->d:Landroidx/d/e/g$b;

    iget p0, p0, Landroidx/d/e/g$b;->ad:I

    invoke-virtual {p3, p0}, Landroidx/d/c/b/a;->b(I)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 0

    .line 220
    iget-object p0, p0, Landroidx/d/e/a;->i:Landroidx/d/c/b/a;

    invoke-virtual {p0}, Landroidx/d/c/b/a;->c()Z

    move-result p0

    return p0
.end method

.method public getMargin()I
    .locals 0

    .line 240
    iget-object p0, p0, Landroidx/d/e/a;->i:Landroidx/d/c/b/a;

    invoke-virtual {p0}, Landroidx/d/c/b/a;->g()I

    move-result p0

    return p0
.end method

.method public getType()I
    .locals 0

    .line 138
    iget p0, p0, Landroidx/d/e/a;->g:I

    return p0
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 0

    .line 216
    iget-object p0, p0, Landroidx/d/e/a;->i:Landroidx/d/c/b/a;

    invoke-virtual {p0, p1}, Landroidx/d/c/b/a;->a(Z)V

    return-void
.end method

.method public setDpMargin(I)V
    .locals 1

    .line 229
    invoke-virtual {p0}, Landroidx/d/e/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 231
    iget-object p0, p0, Landroidx/d/e/a;->i:Landroidx/d/c/b/a;

    invoke-virtual {p0, p1}, Landroidx/d/c/b/a;->b(I)V

    return-void
.end method

.method public setMargin(I)V
    .locals 0

    .line 249
    iget-object p0, p0, Landroidx/d/e/a;->i:Landroidx/d/c/b/a;

    invoke-virtual {p0, p1}, Landroidx/d/c/b/a;->b(I)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 147
    iput p1, p0, Landroidx/d/e/a;->g:I

    return-void
.end method
