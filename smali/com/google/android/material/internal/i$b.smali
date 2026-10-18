.class Lcom/google/android/material/internal/i$b;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/google/android/material/internal/i$k;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "android:menu:checked"

.field private static final c:Ljava/lang/String; = "android:menu:action_views"

.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final g:I = 0x3


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/i;

.field private final h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/material/internal/i$d;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroidx/appcompat/view/menu/j;

.field private j:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/i;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 439
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    .line 444
    invoke-direct {p0}, Lcom/google/android/material/internal/i$b;->i()V

    return-void
.end method

.method private e(II)V
    .locals 2

    :goto_0
    if-ge p1, p2, :cond_0

    .line 625
    iget-object v0, p0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/internal/i$f;

    const/4 v1, 0x1

    .line 626
    iput-boolean v1, v0, Lcom/google/android/material/internal/i$f;->a:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private i()V
    .locals 16

    move-object/from16 v0, p0

    .line 555
    iget-boolean v1, v0, Lcom/google/android/material/internal/i$b;->j:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 558
    iput-boolean v1, v0, Lcom/google/android/material/internal/i$b;->j:Z

    .line 559
    iget-object v2, v0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 560
    iget-object v2, v0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    new-instance v3, Lcom/google/android/material/internal/i$c;

    invoke-direct {v3}, Lcom/google/android/material/internal/i$c;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    .line 565
    iget-object v3, v0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget-object v3, v3, Lcom/google/android/material/internal/i;->b:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/g;->k()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v2

    move v2, v4

    move v6, v2

    move v7, v6

    :goto_0
    if-ge v2, v3, :cond_f

    .line 566
    iget-object v8, v0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget-object v8, v8, Lcom/google/android/material/internal/i;->b:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v8}, Landroidx/appcompat/view/menu/g;->k()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/appcompat/view/menu/j;

    .line 567
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/j;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 568
    invoke-virtual {v0, v8}, Lcom/google/android/material/internal/i$b;->a(Landroidx/appcompat/view/menu/j;)V

    .line 570
    :cond_1
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/j;->isCheckable()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 571
    invoke-virtual {v8, v4}, Landroidx/appcompat/view/menu/j;->a(Z)V

    .line 573
    :cond_2
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/j;->hasSubMenu()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 574
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/j;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v9

    .line 575
    invoke-interface {v9}, Landroid/view/SubMenu;->hasVisibleItems()Z

    move-result v10

    if-eqz v10, :cond_e

    if-eqz v2, :cond_3

    .line 577
    iget-object v10, v0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    new-instance v11, Lcom/google/android/material/internal/i$e;

    iget-object v12, v0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget v12, v12, Lcom/google/android/material/internal/i;->o:I

    invoke-direct {v11, v12, v4}, Lcom/google/android/material/internal/i$e;-><init>(II)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    :cond_3
    iget-object v10, v0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    new-instance v11, Lcom/google/android/material/internal/i$f;

    invoke-direct {v11, v8}, Lcom/google/android/material/internal/i$f;-><init>(Landroidx/appcompat/view/menu/j;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    iget-object v10, v0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 582
    invoke-interface {v9}, Landroid/view/SubMenu;->size()I

    move-result v11

    move v12, v4

    move v13, v12

    :goto_1
    if-ge v12, v11, :cond_8

    .line 583
    invoke-interface {v9, v12}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/view/menu/j;

    .line 584
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/j;->isVisible()Z

    move-result v15

    if-eqz v15, :cond_7

    if-nez v13, :cond_4

    .line 585
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    if-eqz v15, :cond_4

    move v13, v1

    .line 588
    :cond_4
    invoke-virtual {v14}, Landroidx/appcompat/view/menu/j;->isCheckable()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 589
    invoke-virtual {v14, v4}, Landroidx/appcompat/view/menu/j;->a(Z)V

    .line 591
    :cond_5
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/j;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 592
    invoke-virtual {v0, v8}, Lcom/google/android/material/internal/i$b;->a(Landroidx/appcompat/view/menu/j;)V

    .line 594
    :cond_6
    iget-object v15, v0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/material/internal/i$f;

    invoke-direct {v1, v14}, Lcom/google/android/material/internal/i$f;-><init>(Landroidx/appcompat/view/menu/j;)V

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v12, v12, 0x1

    const/4 v1, 0x1

    goto :goto_1

    :cond_8
    if-eqz v13, :cond_e

    .line 598
    iget-object v1, v0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v10, v1}, Lcom/google/android/material/internal/i$b;->e(II)V

    goto :goto_4

    .line 602
    :cond_9
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/j;->getGroupId()I

    move-result v1

    if-eq v1, v5, :cond_c

    .line 604
    iget-object v5, v0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 605
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    goto :goto_2

    :cond_a
    move v5, v4

    :goto_2
    if-eqz v2, :cond_b

    add-int/lit8 v7, v7, 0x1

    .line 608
    iget-object v6, v0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    new-instance v9, Lcom/google/android/material/internal/i$e;

    iget-object v10, v0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget v10, v10, Lcom/google/android/material/internal/i;->o:I

    iget-object v11, v0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget v11, v11, Lcom/google/android/material/internal/i;->o:I

    invoke-direct {v9, v10, v11}, Lcom/google/android/material/internal/i$e;-><init>(II)V

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move v6, v5

    goto :goto_3

    :cond_c
    if-nez v6, :cond_d

    .line 610
    invoke-virtual {v8}, Landroidx/appcompat/view/menu/j;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 612
    iget-object v5, v0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v0, v7, v5}, Lcom/google/android/material/internal/i$b;->e(II)V

    const/4 v6, 0x1

    .line 614
    :cond_d
    :goto_3
    new-instance v5, Lcom/google/android/material/internal/i$f;

    invoke-direct {v5, v8}, Lcom/google/android/material/internal/i$f;-><init>(Landroidx/appcompat/view/menu/j;)V

    .line 615
    iput-boolean v6, v5, Lcom/google/android/material/internal/i$f;->a:Z

    .line 616
    iget-object v8, v0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v1

    :cond_e
    :goto_4
    add-int/lit8 v2, v2, 0x1

    const/4 v1, 0x1

    goto/16 :goto_0

    .line 620
    :cond_f
    iput-boolean v4, v0, Lcom/google/android/material/internal/i$b;->j:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 454
    iget-object p0, p0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public synthetic a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$z;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 429
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/i$b;->c(Landroid/view/ViewGroup;I)Lcom/google/android/material/internal/i$k;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const-string v0, "android:menu:checked"

    const/4 v1, 0x0

    .line 670
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 672
    iput-boolean v2, p0, Lcom/google/android/material/internal/i$b;->j:Z

    .line 673
    iget-object v2, p0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 674
    iget-object v4, p0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/i$d;

    .line 675
    instance-of v5, v4, Lcom/google/android/material/internal/i$f;

    if-eqz v5, :cond_0

    .line 676
    check-cast v4, Lcom/google/android/material/internal/i$f;

    invoke-virtual {v4}, Lcom/google/android/material/internal/i$f;->a()Landroidx/appcompat/view/menu/j;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 677
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/j;->getItemId()I

    move-result v5

    if-ne v5, v0, :cond_0

    .line 678
    invoke-virtual {p0, v4}, Lcom/google/android/material/internal/i$b;->a(Landroidx/appcompat/view/menu/j;)V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 683
    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/google/android/material/internal/i$b;->j:Z

    .line 684
    invoke-direct {p0}, Lcom/google/android/material/internal/i$b;->i()V

    :cond_2
    const-string v0, "android:menu:action_views"

    .line 688
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 690
    iget-object v0, p0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_7

    .line 691
    iget-object v2, p0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/i$d;

    .line 692
    instance-of v3, v2, Lcom/google/android/material/internal/i$f;

    if-nez v3, :cond_3

    goto :goto_3

    .line 695
    :cond_3
    check-cast v2, Lcom/google/android/material/internal/i$f;

    invoke-virtual {v2}, Lcom/google/android/material/internal/i$f;->a()Landroidx/appcompat/view/menu/j;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 699
    :cond_4
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/j;->getActionView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_3

    .line 703
    :cond_5
    invoke-virtual {v2}, Landroidx/appcompat/view/menu/j;->getItemId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/k;

    if-nez v2, :cond_6

    goto :goto_3

    .line 707
    :cond_6
    invoke-virtual {v3, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/j;)V
    .locals 2
    .param p1    # Landroidx/appcompat/view/menu/j;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 631
    iget-object v0, p0, Lcom/google/android/material/internal/i$b;->i:Landroidx/appcompat/view/menu/j;

    if-eq v0, p1, :cond_2

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/j;->isCheckable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/i$b;->i:Landroidx/appcompat/view/menu/j;

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/google/android/material/internal/i$b;->i:Landroidx/appcompat/view/menu/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/j;->setChecked(Z)Landroid/view/MenuItem;

    .line 637
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/internal/i$b;->i:Landroidx/appcompat/view/menu/j;

    const/4 p0, 0x1

    .line 638
    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/j;->setChecked(Z)Landroid/view/MenuItem;

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$z;)V
    .locals 0

    .line 429
    check-cast p1, Lcom/google/android/material/internal/i$k;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i$b;->a(Lcom/google/android/material/internal/i$k;)V

    return-void
.end method

.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$z;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 429
    check-cast p1, Lcom/google/android/material/internal/i$k;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/internal/i$b;->a(Lcom/google/android/material/internal/i$k;I)V

    return-void
.end method

.method public a(Lcom/google/android/material/internal/i$k;)V
    .locals 0

    .line 540
    instance-of p0, p1, Lcom/google/android/material/internal/i$h;

    if-eqz p0, :cond_0

    .line 541
    iget-object p0, p1, Lcom/google/android/material/internal/i$k;->a:Landroid/view/View;

    check-cast p0, Lcom/google/android/material/internal/NavigationMenuItemView;

    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->b()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/material/internal/i$k;I)V
    .locals 2
    .param p1    # Lcom/google/android/material/internal/i$k;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 493
    invoke-virtual {p0, p2}, Lcom/google/android/material/internal/i$b;->b(I)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 527
    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/i$e;

    .line 528
    iget-object p1, p1, Lcom/google/android/material/internal/i$k;->a:Landroid/view/View;

    invoke-virtual {p0}, Lcom/google/android/material/internal/i$e;->a()I

    move-result p2

    invoke-virtual {p0}, Lcom/google/android/material/internal/i$e;->b()I

    move-result p0

    invoke-virtual {p1, v1, p2, v1, p0}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    .line 520
    :pswitch_1
    iget-object p1, p1, Lcom/google/android/material/internal/i$k;->a:Landroid/view/View;

    check-cast p1, Landroid/widget/TextView;

    .line 521
    iget-object p0, p0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/i$f;

    .line 522
    invoke-virtual {p0}, Lcom/google/android/material/internal/i$f;->a()Landroidx/appcompat/view/menu/j;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 496
    :pswitch_2
    iget-object p1, p1, Lcom/google/android/material/internal/i$k;->a:Landroid/view/View;

    check-cast p1, Lcom/google/android/material/internal/NavigationMenuItemView;

    .line 497
    iget-object v0, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget-object v0, v0, Lcom/google/android/material/internal/i;->h:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    .line 498
    iget-object v0, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget-boolean v0, v0, Lcom/google/android/material/internal/i;->f:Z

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget v0, v0, Lcom/google/android/material/internal/i;->e:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextAppearance(I)V

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget-object v0, v0, Lcom/google/android/material/internal/i;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget-object v0, v0, Lcom/google/android/material/internal/i;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 504
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget-object v0, v0, Lcom/google/android/material/internal/i;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget-object v0, v0, Lcom/google/android/material/internal/i;->i:Landroid/graphics/drawable/Drawable;

    .line 506
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 504
    :goto_0
    invoke-static {p1, v0}, Landroidx/core/n/af;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 507
    iget-object v0, p0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/material/internal/i$f;

    .line 508
    iget-boolean v0, p2, Lcom/google/android/material/internal/i$f;->a:Z

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setNeedsEmptyIcon(Z)V

    .line 509
    iget-object v0, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget v0, v0, Lcom/google/android/material/internal/i;->j:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setHorizontalPadding(I)V

    .line 510
    iget-object v0, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget v0, v0, Lcom/google/android/material/internal/i;->k:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconPadding(I)V

    .line 511
    iget-object v0, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget-boolean v0, v0, Lcom/google/android/material/internal/i;->m:Z

    if-eqz v0, :cond_3

    .line 512
    iget-object v0, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget v0, v0, Lcom/google/android/material/internal/i;->l:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setIconSize(I)V

    .line 514
    :cond_3
    iget-object p0, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    invoke-static {p0}, Lcom/google/android/material/internal/i;->a(Lcom/google/android/material/internal/i;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setMaxLines(I)V

    .line 515
    invoke-virtual {p2}, Lcom/google/android/material/internal/i$f;->a()Landroidx/appcompat/view/menu/j;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lcom/google/android/material/internal/NavigationMenuItemView;->a(Landroidx/appcompat/view/menu/j;I)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(I)I
    .locals 0

    .line 459
    iget-object p0, p0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/internal/i$d;

    .line 460
    instance-of p1, p0, Lcom/google/android/material/internal/i$e;

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    .line 462
    :cond_0
    instance-of p1, p0, Lcom/google/android/material/internal/i$c;

    if-eqz p1, :cond_1

    const/4 p0, 0x3

    return p0

    .line 464
    :cond_1
    instance-of p1, p0, Lcom/google/android/material/internal/i$f;

    if-eqz p1, :cond_3

    .line 465
    check-cast p0, Lcom/google/android/material/internal/i$f;

    .line 466
    invoke-virtual {p0}, Lcom/google/android/material/internal/i$f;->a()Landroidx/appcompat/view/menu/j;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j;->hasSubMenu()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0

    .line 472
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Unknown item type."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()V
    .locals 0

    .line 546
    invoke-direct {p0}, Lcom/google/android/material/internal/i$b;->i()V

    .line 547
    invoke-virtual {p0}, Lcom/google/android/material/internal/i$b;->e()V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 713
    iput-boolean p1, p0, Lcom/google/android/material/internal/i$b;->j:Z

    return-void
.end method

.method public c(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/google/android/material/internal/i$k;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    packed-switch p2, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 486
    :pswitch_0
    new-instance p1, Lcom/google/android/material/internal/i$a;

    iget-object p0, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget-object p0, p0, Lcom/google/android/material/internal/i;->a:Landroid/widget/LinearLayout;

    invoke-direct {p1, p0}, Lcom/google/android/material/internal/i$a;-><init>(Landroid/view/View;)V

    return-object p1

    .line 484
    :pswitch_1
    new-instance p2, Lcom/google/android/material/internal/i$i;

    iget-object p0, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget-object p0, p0, Lcom/google/android/material/internal/i;->d:Landroid/view/LayoutInflater;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/internal/i$i;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    .line 482
    :pswitch_2
    new-instance p2, Lcom/google/android/material/internal/i$j;

    iget-object p0, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget-object p0, p0, Lcom/google/android/material/internal/i;->d:Landroid/view/LayoutInflater;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/internal/i$j;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)V

    return-object p2

    .line 480
    :pswitch_3
    new-instance p2, Lcom/google/android/material/internal/i$h;

    iget-object v0, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget-object v0, v0, Lcom/google/android/material/internal/i;->d:Landroid/view/LayoutInflater;

    iget-object p0, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget-object p0, p0, Lcom/google/android/material/internal/i;->p:Landroid/view/View$OnClickListener;

    invoke-direct {p2, v0, p1, p0}, Lcom/google/android/material/internal/i$h;-><init>(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f()Landroidx/appcompat/view/menu/j;
    .locals 0

    .line 642
    iget-object p0, p0, Lcom/google/android/material/internal/i$b;->i:Landroidx/appcompat/view/menu/j;

    return-object p0
.end method

.method public g()Landroid/os/Bundle;
    .locals 7
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 647
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 648
    iget-object v1, p0, Lcom/google/android/material/internal/i$b;->i:Landroidx/appcompat/view/menu/j;

    if-eqz v1, :cond_0

    const-string v1, "android:menu:checked"

    .line 649
    iget-object v2, p0, Lcom/google/android/material/internal/i$b;->i:Landroidx/appcompat/view/menu/j;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/j;->getItemId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 652
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    .line 653
    iget-object v3, p0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_3

    .line 654
    iget-object v4, p0, Lcom/google/android/material/internal/i$b;->h:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/internal/i$d;

    .line 655
    instance-of v5, v4, Lcom/google/android/material/internal/i$f;

    if-eqz v5, :cond_2

    .line 656
    check-cast v4, Lcom/google/android/material/internal/i$f;

    invoke-virtual {v4}, Lcom/google/android/material/internal/i$f;->a()Landroidx/appcompat/view/menu/j;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 657
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/j;->getActionView()Landroid/view/View;

    move-result-object v5

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    .line 659
    new-instance v6, Lcom/google/android/material/internal/k;

    invoke-direct {v6}, Lcom/google/android/material/internal/k;-><init>()V

    .line 660
    invoke-virtual {v5, v6}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 661
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/j;->getItemId()I

    move-result v4

    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p0, "android:menu:action_views"

    .line 665
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method h()I
    .locals 3

    .line 718
    iget-object v0, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget-object v0, v0, Lcom/google/android/material/internal/i;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 719
    :goto_0
    iget-object v2, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget-object v2, v2, Lcom/google/android/material/internal/i;->c:Lcom/google/android/material/internal/i$b;

    invoke-virtual {v2}, Lcom/google/android/material/internal/i$b;->a()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 720
    iget-object v2, p0, Lcom/google/android/material/internal/i$b;->a:Lcom/google/android/material/internal/i;

    iget-object v2, v2, Lcom/google/android/material/internal/i;->c:Lcom/google/android/material/internal/i$b;

    invoke-virtual {v2, v1}, Lcom/google/android/material/internal/i$b;->b(I)I

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
