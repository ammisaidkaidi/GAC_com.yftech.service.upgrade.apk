.class public Lcom/google/android/material/chip/ChipGroup;
.super Lcom/google/android/material/internal/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/chip/ChipGroup$d;,
        Lcom/google/android/material/chip/ChipGroup$a;,
        Lcom/google/android/material/chip/ChipGroup$b;,
        Lcom/google/android/material/chip/ChipGroup$c;
    }
.end annotation


# static fields
.field private static final a:I


# instance fields
.field private b:I
    .annotation build Landroidx/annotation/p;
    .end annotation
.end field

.field private c:I
    .annotation build Landroidx/annotation/p;
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Lcom/google/android/material/chip/ChipGroup$c;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private final g:Lcom/google/android/material/chip/ChipGroup$a;

.field private h:Lcom/google/android/material/chip/ChipGroup$d;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private i:I
    .annotation build Landroidx/annotation/w;
    .end annotation
.end field

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    sget v0, Lcom/google/android/material/a$n;->Widget_MaterialComponents_ChipGroup:I

    sput v0, Lcom/google/android/material/chip/ChipGroup;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 116
    sget v0, Lcom/google/android/material/a$c;->chipGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/chip/ChipGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .line 120
    sget v0, Lcom/google/android/material/chip/ChipGroup;->a:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    new-instance p1, Lcom/google/android/material/chip/ChipGroup$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/chip/ChipGroup$a;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V

    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->g:Lcom/google/android/material/chip/ChipGroup$a;

    .line 104
    new-instance p1, Lcom/google/android/material/chip/ChipGroup$d;

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/chip/ChipGroup$d;-><init>(Lcom/google/android/material/chip/ChipGroup;Lcom/google/android/material/chip/ChipGroup$1;)V

    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->h:Lcom/google/android/material/chip/ChipGroup$d;

    const/4 p1, -0x1

    .line 108
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->j:Z

    .line 122
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 124
    sget-object v3, Lcom/google/android/material/a$o;->ChipGroup:[I

    sget v5, Lcom/google/android/material/chip/ChipGroup;->a:I

    new-array v6, v0, [I

    move-object v2, p2

    move v4, p3

    .line 125
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/s;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 132
    sget p3, Lcom/google/android/material/a$o;->ChipGroup_chipSpacing:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 133
    sget v1, Lcom/google/android/material/a$o;->ChipGroup_chipSpacingHorizontal:I

    .line 134
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 133
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 135
    sget v1, Lcom/google/android/material/a$o;->ChipGroup_chipSpacingVertical:I

    .line 136
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    .line 135
    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    .line 137
    sget p3, Lcom/google/android/material/a$o;->ChipGroup_singleLine:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    .line 138
    sget p3, Lcom/google/android/material/a$o;->ChipGroup_singleSelection:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    .line 139
    sget p3, Lcom/google/android/material/a$o;->ChipGroup_selectionRequired:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/chip/ChipGroup;->setSelectionRequired(Z)V

    .line 140
    sget p3, Lcom/google/android/material/a$o;->ChipGroup_checkedChip:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eq p3, p1, :cond_0

    .line 142
    iput p3, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    .line 145
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    iget-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->h:Lcom/google/android/material/chip/ChipGroup$d;

    invoke-super {p0, p1}, Lcom/google/android/material/internal/e;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    const/4 p1, 0x1

    .line 148
    invoke-static {p0, p1}, Landroidx/core/n/af;->e(Landroid/view/View;I)V

    return-void
.end method

.method private a(IZ)V
    .locals 1

    .line 365
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    .line 367
    iget-object v0, p0, Lcom/google/android/material/chip/ChipGroup;->f:Lcom/google/android/material/chip/ChipGroup$c;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->d:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 368
    iget-object p2, p0, Lcom/google/android/material/chip/ChipGroup;->f:Lcom/google/android/material/chip/ChipGroup$c;

    invoke-interface {p2, p0, p1}, Lcom/google/android/material/chip/ChipGroup$c;->a(Lcom/google/android/material/chip/ChipGroup;I)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/material/chip/ChipGroup;I)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/chip/ChipGroup;IZ)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/chip/ChipGroup;->b(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->j:Z

    return p0
.end method

.method private b(IZ)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param

    .line 373
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 374
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 375
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->j:Z

    .line 376
    check-cast p1, Lcom/google/android/material/chip/Chip;

    invoke-virtual {p1, p2}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    const/4 p1, 0x0

    .line 377
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->j:Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/google/android/material/chip/ChipGroup;IZ)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/chip/ChipGroup;->a(IZ)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->e:Z

    return p0
.end method

.method static synthetic c(Lcom/google/android/material/chip/ChipGroup;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    return p0
.end method

.method static synthetic d(Lcom/google/android/material/chip/ChipGroup;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/google/android/material/chip/ChipGroup;)Lcom/google/android/material/chip/ChipGroup$a;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup;->g:Lcom/google/android/material/chip/ChipGroup$a;

    return-object p0
.end method

.method private getChipCount()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 383
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 384
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/material/chip/Chip;

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private setCheckedId(I)V
    .locals 1

    const/4 v0, 0x1

    .line 361
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipGroup;->a(IZ)V

    return-void
.end method


# virtual methods
.method a(Landroid/view/View;)I
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 397
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 401
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 402
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/material/chip/Chip;

    if-eqz v3, :cond_2

    .line 403
    invoke-virtual {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/chip/Chip;

    if-ne v3, p1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public a()V
    .locals 4

    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->j:Z

    const/4 v0, 0x0

    move v1, v0

    .line 339
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 340
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 341
    instance-of v3, v2, Lcom/google/android/material/chip/Chip;

    if-eqz v3, :cond_0

    .line 342
    check-cast v2, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v2, v0}, Lcom/google/android/material/chip/Chip;->setChecked(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->j:Z

    const/4 v0, -0x1

    .line 347
    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    return-void
.end method

.method public a(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param

    .line 270
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    if-ne p1, v0, :cond_0

    return-void

    .line 274
    :cond_0
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->d:Z

    if-eqz v0, :cond_1

    .line 275
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/google/android/material/chip/ChipGroup;->b(IZ)V

    :cond_1
    if-eq p1, v1, :cond_2

    const/4 v0, 0x1

    .line 279
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/chip/ChipGroup;->b(IZ)V

    .line 282
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    .line 209
    instance-of v0, p1, Lcom/google/android/material/chip/Chip;

    if-eqz v0, :cond_1

    .line 210
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 211
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    iget v1, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/material/chip/ChipGroup;->d:Z

    if-eqz v1, :cond_0

    .line 213
    iget v1, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/material/chip/ChipGroup;->b(IZ)V

    .line 215
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/material/chip/Chip;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    .line 219
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/material/internal/e;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b()Z
    .locals 0

    .line 468
    invoke-super {p0}, Lcom/google/android/material/internal/e;->b()Z

    move-result p0

    return p0
.end method

.method public c()Z
    .locals 0

    .line 485
    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->d:Z

    return p0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 187
    invoke-super {p0, p1}, Lcom/google/android/material/internal/e;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lcom/google/android/material/chip/ChipGroup$b;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d()Z
    .locals 0

    .line 528
    iget-boolean p0, p0, Lcom/google/android/material/chip/ChipGroup;->e:Z

    return p0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 182
    new-instance p0, Lcom/google/android/material/chip/ChipGroup$b;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/google/android/material/chip/ChipGroup$b;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 170
    new-instance v0, Lcom/google/android/material/chip/ChipGroup$b;

    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/chip/ChipGroup$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 176
    new-instance p0, Lcom/google/android/material/chip/ChipGroup$b;

    invoke-direct {p0, p1}, Lcom/google/android/material/chip/ChipGroup$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getCheckedChipId()I
    .locals 1
    .annotation build Landroidx/annotation/w;
    .end annotation

    .line 297
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->d:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getCheckedChipIds()Ljava/util/List;
    .locals 4
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

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 314
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 315
    invoke-virtual {p0, v1}, Lcom/google/android/material/chip/ChipGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 316
    instance-of v3, v2, Lcom/google/android/material/chip/Chip;

    if-eqz v3, :cond_0

    .line 317
    move-object v3, v2

    check-cast v3, Lcom/google/android/material/chip/Chip;

    invoke-virtual {v3}, Lcom/google/android/material/chip/Chip;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    iget-boolean v2, p0, Lcom/google/android/material/chip/ChipGroup;->d:Z

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getChipSpacingHorizontal()I
    .locals 0
    .annotation build Landroidx/annotation/p;
    .end annotation

    .line 427
    iget p0, p0, Lcom/google/android/material/chip/ChipGroup;->b:I

    return p0
.end method

.method public getChipSpacingVertical()I
    .locals 0
    .annotation build Landroidx/annotation/p;
    .end annotation

    .line 447
    iget p0, p0, Lcom/google/android/material/chip/ChipGroup;->c:I

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 198
    invoke-super {p0}, Lcom/google/android/material/internal/e;->onFinishInflate()V

    .line 201
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 202
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/chip/ChipGroup;->b(IZ)V

    .line 203
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->i:I

    invoke-direct {p0, v0}, Lcom/google/android/material/chip/ChipGroup;->setCheckedId(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 153
    invoke-super {p0, p1}, Lcom/google/android/material/internal/e;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 154
    invoke-static {p1}, Landroidx/core/n/a/d;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/n/a/d;

    move-result-object p1

    .line 156
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/material/chip/ChipGroup;->getChipCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 159
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getRowCount()I

    move-result v1

    const/4 v2, 0x0

    .line 162
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->c()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x2

    .line 158
    :goto_1
    invoke-static {v1, v0, v2, p0}, Landroidx/core/n/a/d$b;->a(IIZI)Landroidx/core/n/a/d$b;

    move-result-object p0

    .line 157
    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public setChipSpacing(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param

    .line 415
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    .line 416
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    return-void
.end method

.method public setChipSpacingHorizontal(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param

    .line 432
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->b:I

    if-eq v0, p1, :cond_0

    .line 433
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->b:I

    .line 434
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setItemSpacing(I)V

    .line 435
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChipSpacingHorizontalResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 441
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingHorizontal(I)V

    return-void
.end method

.method public setChipSpacingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 421
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacing(I)V

    return-void
.end method

.method public setChipSpacingVertical(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param

    .line 452
    iget v0, p0, Lcom/google/android/material/chip/ChipGroup;->c:I

    if-eq v0, p1, :cond_0

    .line 453
    iput p1, p0, Lcom/google/android/material/chip/ChipGroup;->c:I

    .line 454
    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setLineSpacing(I)V

    .line 455
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setChipSpacingVerticalResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 461
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setChipSpacingVertical(I)V

    return-void
.end method

.method public setDividerDrawableHorizontal(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 225
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDividerDrawableVertical(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 233
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Changing divider drawables have no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFlexWrap(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Changing flex wrap not allowed. ChipGroup exposes a singleLine attribute instead."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnCheckedChangeListener(Lcom/google/android/material/chip/ChipGroup$c;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/google/android/material/chip/ChipGroup;->f:Lcom/google/android/material/chip/ChipGroup$c;

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/google/android/material/chip/ChipGroup;->h:Lcom/google/android/material/chip/ChipGroup$d;

    invoke-static {p0, p1}, Lcom/google/android/material/chip/ChipGroup$d;->a(Lcom/google/android/material/chip/ChipGroup$d;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setSelectionRequired(Z)V
    .locals 0

    .line 517
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->e:Z

    return-void
.end method

.method public setShowDividerHorizontal(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setShowDividerVertical(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Changing divider modes has no effect. ChipGroup do not use divider drawables as spacing."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSingleLine(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/h;
        .end annotation
    .end param

    .line 480
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0

    .line 475
    invoke-super {p0, p1}, Lcom/google/android/material/internal/e;->setSingleLine(Z)V

    return-void
.end method

.method public setSingleSelection(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/h;
        .end annotation
    .end param

    .line 507
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/chip/ChipGroup;->setSingleSelection(Z)V

    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 1

    .line 494
    iget-boolean v0, p0, Lcom/google/android/material/chip/ChipGroup;->d:Z

    if-eq v0, p1, :cond_0

    .line 495
    iput-boolean p1, p0, Lcom/google/android/material/chip/ChipGroup;->d:Z

    .line 497
    invoke-virtual {p0}, Lcom/google/android/material/chip/ChipGroup;->a()V

    :cond_0
    return-void
.end method
