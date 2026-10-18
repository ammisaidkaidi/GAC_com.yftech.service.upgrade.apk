.class Landroidx/d/b/b/u$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/b/b/u$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static final c:I = 0x1

.field public static final d:I = 0x11

.field public static final e:I = 0x10

.field public static final f:I = 0x100

.field public static final g:I = 0x1000


# instance fields
.field a:I

.field b:I

.field private final h:Landroidx/d/b/b/u$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/d/b/b/u$a;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 648
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 640
    iput v0, p0, Landroidx/d/b/b/u$a$a;->a:I

    const/16 v0, 0x11

    .line 641
    iput v0, p0, Landroidx/d/b/b/u$a$a;->b:I

    .line 649
    iput-object p2, p0, Landroidx/d/b/b/u$a$a;->h:Landroidx/d/b/b/u$a;

    .line 650
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object p3, Landroidx/d/e/m$m;->OnClick:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 651
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    .line 653
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    .line 654
    sget v1, Landroidx/d/e/m$m;->OnClick_targetId:I

    if-ne v0, v1, :cond_0

    .line 655
    iget v1, p0, Landroidx/d/b/b/u$a$a;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroidx/d/b/b/u$a$a;->a:I

    goto :goto_1

    .line 656
    :cond_0
    sget v1, Landroidx/d/e/m$m;->OnClick_clickAction:I

    if-ne v0, v1, :cond_1

    .line 657
    iget v1, p0, Landroidx/d/b/b/u$a$a;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/d/b/b/u$a$a;->b:I

    :cond_1
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 660
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/d/b/b/s;)V
    .locals 2

    .line 688
    iget v0, p0, Landroidx/d/b/b/u$a$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 691
    :cond_0
    iget v0, p0, Landroidx/d/b/b/u$a$a;->a:I

    invoke-virtual {p1, v0}, Landroidx/d/b/b/s;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, "MotionScene"

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (*)  could not find id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/d/b/b/u$a$a;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p0, 0x0

    .line 696
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Landroidx/d/b/b/s;ILandroidx/d/b/b/u$a;)V
    .locals 5

    .line 664
    iget v0, p0, Landroidx/d/b/b/u$a$a;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/d/b/b/u$a$a;->a:I

    invoke-virtual {p1, v0}, Landroidx/d/b/b/s;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, "MotionScene"

    .line 666
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "OnClick could not find id "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/d/b/b/u$a$a;->a:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 669
    :cond_1
    invoke-static {p3}, Landroidx/d/b/b/u$a;->b(Landroidx/d/b/b/u$a;)I

    move-result v0

    .line 670
    invoke-static {p3}, Landroidx/d/b/b/u$a;->a(Landroidx/d/b/b/u$a;)I

    move-result p3

    if-ne v0, v1, :cond_2

    .line 672
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    .line 676
    :cond_2
    iget v1, p0, Landroidx/d/b/b/u$a$a;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    if-ne p2, v0, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    move v1, v3

    .line 677
    :goto_1
    iget v4, p0, Landroidx/d/b/b/u$a$a;->b:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_4

    if-ne p2, v0, :cond_4

    move v4, v2

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    or-int/2addr v1, v4

    .line 678
    iget v4, p0, Landroidx/d/b/b/u$a$a;->b:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_5

    if-ne p2, v0, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v3

    :goto_3
    or-int/2addr v0, v1

    .line 679
    iget v1, p0, Landroidx/d/b/b/u$a$a;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_6

    if-ne p2, p3, :cond_6

    move v1, v2

    goto :goto_4

    :cond_6
    move v1, v3

    :goto_4
    or-int/2addr v0, v1

    .line 680
    iget v1, p0, Landroidx/d/b/b/u$a$a;->b:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_7

    if-ne p2, p3, :cond_7

    goto :goto_5

    :cond_7
    move v2, v3

    :goto_5
    or-int p2, v0, v2

    if-eqz p2, :cond_8

    .line 683
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    return-void
.end method

.method a(Landroidx/d/b/b/u$a;Landroidx/d/b/b/s;)Z
    .locals 3

    .line 700
    iget-object v0, p0, Landroidx/d/b/b/u$a$a;->h:Landroidx/d/b/b/u$a;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 703
    :cond_0
    iget-object p1, p0, Landroidx/d/b/b/u$a$a;->h:Landroidx/d/b/b/u$a;

    invoke-static {p1}, Landroidx/d/b/b/u$a;->a(Landroidx/d/b/b/u$a;)I

    move-result p1

    .line 704
    iget-object p0, p0, Landroidx/d/b/b/u$a$a;->h:Landroidx/d/b/b/u$a;

    invoke-static {p0}, Landroidx/d/b/b/u$a;->b(Landroidx/d/b/b/u$a;)I

    move-result p0

    const/4 v0, -0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_2

    .line 706
    iget p0, p2, Landroidx/d/b/b/s;->l:I

    if-eq p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    .line 708
    :cond_2
    iget v0, p2, Landroidx/d/b/b/s;->l:I

    if-eq v0, p0, :cond_4

    iget p0, p2, Landroidx/d/b/b/s;->l:I

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 714
    iget-object p1, p0, Landroidx/d/b/b/u$a$a;->h:Landroidx/d/b/b/u$a;

    invoke-static {p1}, Landroidx/d/b/b/u$a;->h(Landroidx/d/b/b/u$a;)Landroidx/d/b/b/u;

    move-result-object p1

    invoke-static {p1}, Landroidx/d/b/b/u;->a(Landroidx/d/b/b/u;)Landroidx/d/b/b/s;

    move-result-object p1

    .line 715
    invoke-virtual {p1}, Landroidx/d/b/b/s;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 718
    :cond_0
    iget-object v0, p0, Landroidx/d/b/b/u$a$a;->h:Landroidx/d/b/b/u$a;

    invoke-static {v0}, Landroidx/d/b/b/u$a;->b(Landroidx/d/b/b/u$a;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 719
    invoke-virtual {p1}, Landroidx/d/b/b/s;->getCurrentState()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 721
    iget-object p0, p0, Landroidx/d/b/b/u$a$a;->h:Landroidx/d/b/b/u$a;

    invoke-static {p0}, Landroidx/d/b/b/u$a;->a(Landroidx/d/b/b/u$a;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/d/b/b/s;->b(I)V

    return-void

    .line 724
    :cond_1
    new-instance v1, Landroidx/d/b/b/u$a;

    iget-object v2, p0, Landroidx/d/b/b/u$a$a;->h:Landroidx/d/b/b/u$a;

    invoke-static {v2}, Landroidx/d/b/b/u$a;->h(Landroidx/d/b/b/u$a;)Landroidx/d/b/b/u;

    move-result-object v2

    iget-object v3, p0, Landroidx/d/b/b/u$a$a;->h:Landroidx/d/b/b/u$a;

    invoke-direct {v1, v2, v3}, Landroidx/d/b/b/u$a;-><init>(Landroidx/d/b/b/u;Landroidx/d/b/b/u$a;)V

    .line 725
    invoke-static {v1, v0}, Landroidx/d/b/b/u$a;->a(Landroidx/d/b/b/u$a;I)I

    .line 726
    iget-object p0, p0, Landroidx/d/b/b/u$a$a;->h:Landroidx/d/b/b/u$a;

    invoke-static {p0}, Landroidx/d/b/b/u$a;->a(Landroidx/d/b/b/u$a;)I

    move-result p0

    invoke-static {v1, p0}, Landroidx/d/b/b/u$a;->b(Landroidx/d/b/b/u$a;I)I

    .line 727
    invoke-virtual {p1, v1}, Landroidx/d/b/b/s;->setTransition(Landroidx/d/b/b/u$a;)V

    .line 728
    invoke-virtual {p1}, Landroidx/d/b/b/s;->c()V

    return-void

    .line 731
    :cond_2
    iget-object v0, p0, Landroidx/d/b/b/u$a$a;->h:Landroidx/d/b/b/u$a;

    invoke-static {v0}, Landroidx/d/b/b/u$a;->h(Landroidx/d/b/b/u$a;)Landroidx/d/b/b/u;

    move-result-object v0

    iget-object v0, v0, Landroidx/d/b/b/u;->f:Landroidx/d/b/b/u$a;

    .line 732
    iget v1, p0, Landroidx/d/b/b/u$a$a;->b:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-nez v1, :cond_4

    iget v1, p0, Landroidx/d/b/b/u$a$a;->b:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v2

    .line 733
    :goto_1
    iget v4, p0, Landroidx/d/b/b/u$a$a;->b:I

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_6

    iget v4, p0, Landroidx/d/b/b/u$a$a;->b:I

    and-int/lit16 v4, v4, 0x1000

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    move v4, v3

    goto :goto_3

    :cond_6
    :goto_2
    move v4, v2

    :goto_3
    if-eqz v1, :cond_7

    if-eqz v4, :cond_7

    move v5, v2

    goto :goto_4

    :cond_7
    move v5, v3

    :goto_4
    if-eqz v5, :cond_b

    .line 736
    iget-object v5, p0, Landroidx/d/b/b/u$a$a;->h:Landroidx/d/b/b/u$a;

    invoke-static {v5}, Landroidx/d/b/b/u$a;->h(Landroidx/d/b/b/u$a;)Landroidx/d/b/b/u;

    move-result-object v5

    iget-object v5, v5, Landroidx/d/b/b/u;->f:Landroidx/d/b/b/u$a;

    iget-object v6, p0, Landroidx/d/b/b/u$a$a;->h:Landroidx/d/b/b/u$a;

    if-eq v5, v6, :cond_8

    .line 737
    iget-object v5, p0, Landroidx/d/b/b/u$a$a;->h:Landroidx/d/b/b/u$a;

    invoke-virtual {p1, v5}, Landroidx/d/b/b/s;->setTransition(Landroidx/d/b/b/u$a;)V

    .line 739
    :cond_8
    invoke-virtual {p1}, Landroidx/d/b/b/s;->getCurrentState()I

    move-result v5

    invoke-virtual {p1}, Landroidx/d/b/b/s;->getEndState()I

    move-result v6

    if-eq v5, v6, :cond_a

    invoke-virtual {p1}, Landroidx/d/b/b/s;->getProgress()F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_9

    goto :goto_5

    :cond_9
    move v4, v3

    goto :goto_6

    :cond_a
    :goto_5
    move v1, v3

    .line 745
    :cond_b
    :goto_6
    invoke-virtual {p0, v0, p1}, Landroidx/d/b/b/u$a$a;->a(Landroidx/d/b/b/u$a;Landroidx/d/b/b/s;)Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz v1, :cond_c

    .line 746
    iget v0, p0, Landroidx/d/b/b/u$a$a;->b:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_c

    .line 747
    iget-object p0, p0, Landroidx/d/b/b/u$a$a;->h:Landroidx/d/b/b/u$a;

    invoke-virtual {p1, p0}, Landroidx/d/b/b/s;->setTransition(Landroidx/d/b/b/u$a;)V

    .line 748
    invoke-virtual {p1}, Landroidx/d/b/b/s;->c()V

    goto :goto_7

    :cond_c
    if-eqz v4, :cond_d

    .line 749
    iget v0, p0, Landroidx/d/b/b/u$a$a;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_d

    .line 750
    iget-object p0, p0, Landroidx/d/b/b/u$a$a;->h:Landroidx/d/b/b/u$a;

    invoke-virtual {p1, p0}, Landroidx/d/b/b/s;->setTransition(Landroidx/d/b/b/u$a;)V

    .line 751
    invoke-virtual {p1}, Landroidx/d/b/b/s;->b()V

    goto :goto_7

    :cond_d
    if-eqz v1, :cond_e

    .line 752
    iget v0, p0, Landroidx/d/b/b/u$a$a;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_e

    .line 753
    iget-object p0, p0, Landroidx/d/b/b/u$a$a;->h:Landroidx/d/b/b/u$a;

    invoke-virtual {p1, p0}, Landroidx/d/b/b/s;->setTransition(Landroidx/d/b/b/u$a;)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 754
    invoke-virtual {p1, p0}, Landroidx/d/b/b/s;->setProgress(F)V

    goto :goto_7

    :cond_e
    if-eqz v4, :cond_f

    .line 755
    iget v0, p0, Landroidx/d/b/b/u$a$a;->b:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_f

    .line 756
    iget-object p0, p0, Landroidx/d/b/b/u$a$a;->h:Landroidx/d/b/b/u$a;

    invoke-virtual {p1, p0}, Landroidx/d/b/b/s;->setTransition(Landroidx/d/b/b/u$a;)V

    const/4 p0, 0x0

    .line 757
    invoke-virtual {p1, p0}, Landroidx/d/b/b/s;->setProgress(F)V

    :cond_f
    :goto_7
    return-void
.end method
