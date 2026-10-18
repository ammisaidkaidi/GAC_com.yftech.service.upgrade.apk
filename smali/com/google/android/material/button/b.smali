.class public Lcom/google/android/material/button/b;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/b$b;,
        Lcom/google/android/material/button/b$d;,
        Lcom/google/android/material/button/b$a;,
        Lcom/google/android/material/button/b$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "b"

.field private static final b:I


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/button/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/material/button/b$a;

.field private final e:Lcom/google/android/material/button/b$d;

.field private final f:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/button/b$c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/google/android/material/button/MaterialButton;",
            ">;"
        }
    .end annotation
.end field

.field private h:[Ljava/lang/Integer;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:I
    .annotation build Landroidx/annotation/w;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 140
    sget v0, Lcom/google/android/material/a$n;->Widget_MaterialComponents_MaterialButtonToggleGroup:I

    sput v0, Lcom/google/android/material/button/b;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 180
    sget v0, Lcom/google/android/material/a$c;->materialButtonToggleGroupStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 185
    sget v0, Lcom/google/android/material/button/b;->b:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/b;->c:Ljava/util/List;

    .line 145
    new-instance p1, Lcom/google/android/material/button/b$a;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/button/b$a;-><init>(Lcom/google/android/material/button/b;Lcom/google/android/material/button/b$1;)V

    iput-object p1, p0, Lcom/google/android/material/button/b;->d:Lcom/google/android/material/button/b$a;

    .line 146
    new-instance p1, Lcom/google/android/material/button/b$d;

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/button/b$d;-><init>(Lcom/google/android/material/button/b;Lcom/google/android/material/button/b$1;)V

    iput-object p1, p0, Lcom/google/android/material/button/b;->e:Lcom/google/android/material/button/b$d;

    .line 147
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/b;->f:Ljava/util/LinkedHashSet;

    .line 149
    new-instance p1, Lcom/google/android/material/button/b$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/button/b$1;-><init>(Lcom/google/android/material/button/b;)V

    iput-object p1, p0, Lcom/google/android/material/button/b;->g:Ljava/util/Comparator;

    const/4 p1, 0x0

    .line 169
    iput-boolean p1, p0, Lcom/google/android/material/button/b;->i:Z

    .line 187
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 188
    sget-object v2, Lcom/google/android/material/a$o;->MaterialButtonToggleGroup:[I

    sget v4, Lcom/google/android/material/button/b;->b:I

    new-array v5, p1, [I

    move-object v1, p2

    move v3, p3

    .line 189
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/s;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 192
    sget p3, Lcom/google/android/material/a$o;->MaterialButtonToggleGroup_singleSelection:I

    .line 193
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    .line 192
    invoke-virtual {p0, p3}, Lcom/google/android/material/button/b;->setSingleSelection(Z)V

    .line 194
    sget p3, Lcom/google/android/material/a$o;->MaterialButtonToggleGroup_checkedButton:I

    const/4 v0, -0x1

    .line 195
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/button/b;->l:I

    .line 196
    sget p3, Lcom/google/android/material/a$o;->MaterialButtonToggleGroup_selectionRequired:I

    .line 197
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/material/button/b;->k:Z

    const/4 p1, 0x1

    .line 198
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/b;->setChildrenDrawingOrderEnabled(Z)V

    .line 199
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 201
    invoke-static {p0, p1}, Landroidx/core/n/af;->e(Landroid/view/View;I)V

    return-void
.end method

.method private a(Landroid/view/View;)I
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 639
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 643
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 644
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/b;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_1

    return v2

    .line 647
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/b;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/google/android/material/button/MaterialButton;

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/material/button/b;->e(I)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method static synthetic a(Lcom/google/android/material/button/b;I)I
    .locals 0

    .line 122
    iput p1, p0, Lcom/google/android/material/button/b;->l:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/material/button/b;Landroid/view/View;)I
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/google/android/material/button/b;->a(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method private a(III)Lcom/google/android/material/button/b$b;
    .locals 2
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 657
    iget-object v0, p0, Lcom/google/android/material/button/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/b$b;

    if-ne p2, p3, :cond_0

    return-object v0

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->getOrientation()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ne p1, p2, :cond_3

    if-eqz v1, :cond_2

    .line 666
    invoke-static {v0, p0}, Lcom/google/android/material/button/b$b;->a(Lcom/google/android/material/button/b$b;Landroid/view/View;)Lcom/google/android/material/button/b$b;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {v0}, Lcom/google/android/material/button/b$b;->c(Lcom/google/android/material/button/b$b;)Lcom/google/android/material/button/b$b;

    move-result-object p0

    :goto_1
    return-object p0

    :cond_3
    if-ne p1, p3, :cond_5

    if-eqz v1, :cond_4

    .line 670
    invoke-static {v0, p0}, Lcom/google/android/material/button/b$b;->b(Lcom/google/android/material/button/b$b;Landroid/view/View;)Lcom/google/android/material/button/b$b;

    move-result-object p0

    goto :goto_2

    :cond_4
    invoke-static {v0}, Lcom/google/android/material/button/b$b;->d(Lcom/google/android/material/button/b$b;)Lcom/google/android/material/button/b$b;

    move-result-object p0

    :goto_2
    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(IZ)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param

    .line 503
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/b;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 504
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 505
    iput-boolean v0, p0, Lcom/google/android/material/button/b;->i:Z

    .line 506
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    const/4 p1, 0x0

    .line 507
    iput-boolean p1, p0, Lcom/google/android/material/button/b;->i:Z

    :cond_0
    return-void
.end method

.method private static a(Lcom/google/android/material/t/o$a;Lcom/google/android/material/button/b$b;)V
    .locals 1
    .param p1    # Lcom/google/android/material/button/b$b;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 679
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->a(F)Lcom/google/android/material/t/o$a;

    return-void

    .line 683
    :cond_0
    iget-object v0, p1, Lcom/google/android/material/button/b$b;->a:Lcom/google/android/material/t/d;

    .line 684
    invoke-virtual {p0, v0}, Lcom/google/android/material/t/o$a;->b(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    iget-object v0, p1, Lcom/google/android/material/button/b$b;->d:Lcom/google/android/material/t/d;

    .line 685
    invoke-virtual {p0, v0}, Lcom/google/android/material/t/o$a;->e(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    iget-object v0, p1, Lcom/google/android/material/button/b$b;->b:Lcom/google/android/material/t/d;

    .line 686
    invoke-virtual {p0, v0}, Lcom/google/android/material/t/o$a;->c(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    move-result-object p0

    iget-object p1, p1, Lcom/google/android/material/button/b$b;->c:Lcom/google/android/material/t/d;

    .line 687
    invoke-virtual {p0, p1}, Lcom/google/android/material/t/o$a;->d(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/o$a;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/button/b;)Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/google/android/material/button/b;->i:Z

    return p0
.end method

.method static synthetic a(Lcom/google/android/material/button/b;IZ)Z
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/b;->b(IZ)Z

    move-result p0

    return p0
.end method

.method private b(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 763
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 764
    instance-of p1, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_0

    .line 765
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    return-object p0

    .line 768
    :cond_0
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p1, v0, p0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/material/button/b;IZ)V
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/b;->c(IZ)V

    return-void
.end method

.method private b(IZ)Z
    .locals 4

    .line 704
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->getCheckedButtonIds()Ljava/util/List;

    move-result-object v0

    .line 705
    iget-boolean v1, p0, Lcom/google/android/material/button/b;->k:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    invoke-direct {p0, p1, v2}, Lcom/google/android/material/button/b;->a(IZ)V

    .line 708
    iput p1, p0, Lcom/google/android/material/button/b;->l:I

    return v3

    :cond_0
    if-eqz p2, :cond_1

    .line 713
    iget-boolean p2, p0, Lcom/google/android/material/button/b;->j:Z

    if-eqz p2, :cond_1

    .line 714
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 715
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 716
    invoke-direct {p0, p2, v3}, Lcom/google/android/material/button/b;->a(IZ)V

    .line 717
    invoke-direct {p0, p2, v3}, Lcom/google/android/material/button/b;->c(IZ)V

    goto :goto_0

    :cond_1
    return v2
.end method

.method static synthetic b(Lcom/google/android/material/button/b;)Z
    .locals 0

    .line 122
    iget-boolean p0, p0, Lcom/google/android/material/button/b;->j:Z

    return p0
.end method

.method private c(I)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 559
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/b;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method private c(IZ)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param

    .line 724
    iget-object v0, p0, Lcom/google/android/material/button/b;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/b$c;

    .line 725
    invoke-interface {v1, p0, p1, p2}, Lcom/google/android/material/button/b$c;->a(Lcom/google/android/material/button/b;IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 2

    .line 563
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/button/b;->c(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object p1

    .line 568
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 569
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->getOrientation()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_1

    .line 570
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 571
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    return-void

    .line 575
    :cond_1
    invoke-static {p1, v1}, Landroidx/core/n/m;->b(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 576
    invoke-static {p1, v1}, Landroidx/core/n/m;->a(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    .line 577
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 578
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private e(I)Z
    .locals 0

    .line 624
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/b;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 625
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private f()V
    .locals 7

    .line 529
    invoke-direct {p0}, Lcom/google/android/material/button/b;->getFirstVisibleChildIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 534
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 536
    invoke-direct {p0, v1}, Lcom/google/android/material/button/b;->c(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    .line 537
    invoke-direct {p0, v3}, Lcom/google/android/material/button/b;->c(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v3

    .line 541
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getStrokeWidth()I

    move-result v4

    invoke-virtual {v3}, Lcom/google/android/material/button/MaterialButton;->getStrokeWidth()I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 543
    invoke-direct {p0, v2}, Lcom/google/android/material/button/b;->b(Landroid/view/View;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    .line 544
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->getOrientation()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_1

    .line 545
    invoke-static {v4, v6}, Landroidx/core/n/m;->b(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    neg-int v3, v3

    .line 546
    invoke-static {v4, v3}, Landroidx/core/n/m;->a(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    goto :goto_1

    .line 548
    :cond_1
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    neg-int v3, v3

    .line 549
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 552
    :goto_1
    invoke-virtual {v2, v4}, Lcom/google/android/material/button/MaterialButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 555
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/material/button/b;->d(I)V

    return-void
.end method

.method private f(I)V
    .locals 1

    const/4 v0, 0x1

    .line 730
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/b;->a(IZ)V

    .line 731
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/b;->b(IZ)Z

    .line 732
    invoke-direct {p0, p1}, Lcom/google/android/material/button/b;->setCheckedId(I)V

    return-void
.end method

.method private g()V
    .locals 6

    .line 786
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/android/material/button/b;->g:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 787
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 789
    invoke-direct {p0, v3}, Lcom/google/android/material/button/b;->c(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 792
    :cond_0
    invoke-interface {v0}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/material/button/b;->h:[Ljava/lang/Integer;

    return-void
.end method

.method private getFirstVisibleChildIndex()I
    .locals 3

    .line 602
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 604
    invoke-direct {p0, v1}, Lcom/google/android/material/button/b;->e(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getLastVisibleChildIndex()I
    .locals 2

    .line 613
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 615
    invoke-direct {p0, v0}, Lcom/google/android/material/button/b;->e(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private getVisibleButtonCount()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 630
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 631
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/material/button/MaterialButton;

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/material/button/b;->e(I)Z

    move-result v2

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

    .line 512
    iput p1, p0, Lcom/google/android/material/button/b;->l:I

    const/4 v0, 0x1

    .line 514
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/b;->c(IZ)V

    return-void
.end method

.method private setGeneratedIdIfNeeded(Lcom/google/android/material/button/MaterialButton;)V
    .locals 1
    .param p1    # Lcom/google/android/material/button/MaterialButton;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 737
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 738
    invoke-static {}, Landroidx/core/n/af;->a()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/button/MaterialButton;->setId(I)V

    :cond_0
    return-void
.end method

.method private setupButtonChild(Lcom/google/android/material/button/MaterialButton;)V
    .locals 2
    .param p1    # Lcom/google/android/material/button/MaterialButton;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 750
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setMaxLines(I)V

    .line 751
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 752
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setCheckable(Z)V

    .line 754
    iget-object v1, p0, Lcom/google/android/material/button/b;->d:Lcom/google/android/material/button/b$a;

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->a(Lcom/google/android/material/button/MaterialButton$b;)V

    .line 755
    iget-object p0, p0, Lcom/google/android/material/button/b;->e:Lcom/google/android/material/button/b$d;

    invoke-virtual {p1, p0}, Lcom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$c;)V

    .line 758
    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setShouldDrawSurfaceColorStroke(Z)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v0, 0x1

    .line 363
    iput-boolean v0, p0, Lcom/google/android/material/button/b;->i:Z

    const/4 v0, 0x0

    move v1, v0

    .line 364
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 365
    invoke-direct {p0, v1}, Lcom/google/android/material/button/b;->c(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v2

    .line 366
    invoke-virtual {v2, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    .line 368
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/google/android/material/button/b;->c(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    :cond_0
    iput-boolean v0, p0, Lcom/google/android/material/button/b;->i:Z

    const/4 v0, -0x1

    .line 372
    invoke-direct {p0, v0}, Lcom/google/android/material/button/b;->setCheckedId(I)V

    return-void
.end method

.method public a(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param

    .line 330
    iget v0, p0, Lcom/google/android/material/button/b;->l:I

    if-ne p1, v0, :cond_0

    return-void

    .line 334
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/button/b;->f(I)V

    return-void
.end method

.method public a(Lcom/google/android/material/button/b$c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/button/b$c;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 429
    iget-object p0, p0, Lcom/google/android/material/button/b;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .line 226
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-nez v0, :cond_0

    .line 227
    sget-object p0, Lcom/google/android/material/button/b;->a:Ljava/lang/String;

    const-string p1, "Child views must be of type MaterialButton."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 231
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 232
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 233
    invoke-direct {p0, p1}, Lcom/google/android/material/button/b;->setGeneratedIdIfNeeded(Lcom/google/android/material/button/MaterialButton;)V

    .line 235
    invoke-direct {p0, p1}, Lcom/google/android/material/button/b;->setupButtonChild(Lcom/google/android/material/button/MaterialButton;)V

    .line 238
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 239
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result p2

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, Lcom/google/android/material/button/b;->b(IZ)Z

    .line 240
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/google/android/material/button/b;->setCheckedId(I)V

    .line 244
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->getShapeAppearanceModel()Lcom/google/android/material/t/o;

    move-result-object p2

    .line 245
    iget-object p3, p0, Lcom/google/android/material/button/b;->c:Ljava/util/List;

    new-instance v0, Lcom/google/android/material/button/b$b;

    .line 247
    invoke-virtual {p2}, Lcom/google/android/material/t/o;->f()Lcom/google/android/material/t/d;

    move-result-object v1

    .line 248
    invoke-virtual {p2}, Lcom/google/android/material/t/o;->i()Lcom/google/android/material/t/d;

    move-result-object v2

    .line 249
    invoke-virtual {p2}, Lcom/google/android/material/t/o;->g()Lcom/google/android/material/t/d;

    move-result-object v3

    .line 250
    invoke-virtual {p2}, Lcom/google/android/material/t/o;->h()Lcom/google/android/material/t/d;

    move-result-object p2

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/google/android/material/button/b$b;-><init>(Lcom/google/android/material/t/d;Lcom/google/android/material/t/d;Lcom/google/android/material/t/d;Lcom/google/android/material/t/d;)V

    .line 245
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance p2, Lcom/google/android/material/button/b$2;

    invoke-direct {p2, p0}, Lcom/google/android/material/button/b$2;-><init>(Lcom/google/android/material/button/b;)V

    invoke-static {p1, p2}, Landroidx/core/n/af;->a(Landroid/view/View;Landroidx/core/n/a;)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 444
    iget-object p0, p0, Lcom/google/android/material/button/b;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public b(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 347
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/b;->a(IZ)V

    .line 348
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/b;->b(IZ)Z

    const/4 v1, -0x1

    .line 349
    iput v1, p0, Lcom/google/android/material/button/b;->l:I

    .line 350
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/b;->c(IZ)V

    return-void
.end method

.method public b(Lcom/google/android/material/button/b$c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/button/b$c;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 439
    iget-object p0, p0, Lcom/google/android/material/button/b;->f:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Z
    .locals 0

    .line 454
    iget-boolean p0, p0, Lcom/google/android/material/button/b;->j:Z

    return p0
.end method

.method public d()Z
    .locals 0

    .line 487
    iget-boolean p0, p0, Lcom/google/android/material/button/b;->k:Z

    return p0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 216
    invoke-direct {p0}, Lcom/google/android/material/button/b;->g()V

    .line 217
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method e()V
    .locals 7
    .annotation build Landroidx/annotation/ax;
    .end annotation

    .line 584
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->getChildCount()I

    move-result v0

    .line 585
    invoke-direct {p0}, Lcom/google/android/material/button/b;->getFirstVisibleChildIndex()I

    move-result v1

    .line 586
    invoke-direct {p0}, Lcom/google/android/material/button/b;->getLastVisibleChildIndex()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 588
    invoke-direct {p0, v3}, Lcom/google/android/material/button/b;->c(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v4

    .line 589
    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 593
    :cond_0
    invoke-virtual {v4}, Lcom/google/android/material/button/MaterialButton;->getShapeAppearanceModel()Lcom/google/android/material/t/o;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/material/t/o;->n()Lcom/google/android/material/t/o$a;

    move-result-object v5

    .line 594
    invoke-direct {p0, v3, v1, v2}, Lcom/google/android/material/button/b;->a(III)Lcom/google/android/material/button/b$b;

    move-result-object v6

    .line 595
    invoke-static {v5, v6}, Lcom/google/android/material/button/b;->a(Lcom/google/android/material/t/o$a;Lcom/google/android/material/button/b$b;)V

    .line 597
    invoke-virtual {v5}, Lcom/google/android/material/t/o$a;->a()Lcom/google/android/material/t/o;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 300
    const-class p0, Lcom/google/android/material/button/b;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCheckedButtonId()I
    .locals 1
    .annotation build Landroidx/annotation/w;
    .end annotation

    .line 391
    iget-boolean v0, p0, Lcom/google/android/material/button/b;->j:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/material/button/b;->l:I

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public getCheckedButtonIds()Ljava/util/List;
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

    .line 408
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 409
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 410
    invoke-direct {p0, v1}, Lcom/google/android/material/button/b;->c(I)Lcom/google/android/material/button/MaterialButton;

    move-result-object v2

    .line 411
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 412
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0

    .line 777
    iget-object p1, p0, Lcom/google/android/material/button/b;->h:[Ljava/lang/Integer;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/material/button/b;->h:[Ljava/lang/Integer;

    array-length p1, p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    .line 782
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/button/b;->h:[Ljava/lang/Integer;

    aget-object p0, p0, p2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 778
    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/material/button/b;->a:Ljava/lang/String;

    const-string p1, "Child order wasn\'t updated"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 206
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 209
    iget v0, p0, Lcom/google/android/material/button/b;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 210
    iget v0, p0, Lcom/google/android/material/button/b;->l:I

    invoke-direct {p0, v0}, Lcom/google/android/material/button/b;->f(I)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 305
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 306
    invoke-static {p1}, Landroidx/core/n/a/d;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/n/a/d;

    move-result-object p1

    .line 310
    invoke-direct {p0}, Lcom/google/android/material/button/b;->getVisibleButtonCount()I

    move-result v0

    .line 312
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->c()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    const/4 v2, 0x0

    .line 308
    invoke-static {v1, v0, v2, p0}, Landroidx/core/n/a/d$b;->a(IIZI)Landroidx/core/n/a/d$b;

    move-result-object p0

    .line 307
    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 291
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->e()V

    .line 292
    invoke-direct {p0}, Lcom/google/android/material/button/b;->f()V

    .line 294
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2

    .line 273
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    .line 275
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_0

    .line 276
    move-object v0, p1

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iget-object v1, p0, Lcom/google/android/material/button/b;->d:Lcom/google/android/material/button/b$a;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->b(Lcom/google/android/material/button/MaterialButton$b;)V

    const/4 v1, 0x0

    .line 277
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$c;)V

    .line 280
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/b;->indexOfChild(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/google/android/material/button/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 285
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->e()V

    .line 286
    invoke-direct {p0}, Lcom/google/android/material/button/b;->f()V

    return-void
.end method

.method public setSelectionRequired(Z)V
    .locals 0

    .line 478
    iput-boolean p1, p0, Lcom/google/android/material/button/b;->k:Z

    return-void
.end method

.method public setSingleSelection(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/h;
        .end annotation
    .end param

    .line 499
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/b;->setSingleSelection(Z)V

    return-void
.end method

.method public setSingleSelection(Z)V
    .locals 1

    .line 466
    iget-boolean v0, p0, Lcom/google/android/material/button/b;->j:Z

    if-eq v0, p1, :cond_0

    .line 467
    iput-boolean p1, p0, Lcom/google/android/material/button/b;->j:Z

    .line 468
    invoke-virtual {p0}, Lcom/google/android/material/button/b;->a()V

    :cond_0
    return-void
.end method
