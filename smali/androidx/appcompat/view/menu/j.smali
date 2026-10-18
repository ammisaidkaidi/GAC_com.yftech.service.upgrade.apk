.class public final Landroidx/appcompat/view/menu/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/e/a/b;


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
    }
.end annotation


# static fields
.field private static final H:I = 0x1

.field private static final I:I = 0x2

.field private static final J:I = 0x4

.field private static final K:I = 0x8

.field private static final L:I = 0x10

.field private static final M:I = 0x20

.field static final b:I = 0x0

.field private static final h:Ljava/lang/String; = "MenuItemImpl"

.field private static final i:I = 0x3


# instance fields
.field private A:Ljava/lang/CharSequence;

.field private B:Landroid/content/res/ColorStateList;

.field private C:Landroid/graphics/PorterDuff$Mode;

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:I

.field private N:I

.field private O:Landroid/view/View;

.field private P:Landroidx/core/n/b;

.field private Q:Landroid/view/MenuItem$OnActionExpandListener;

.field private R:Z

.field private S:Landroid/view/ContextMenu$ContextMenuInfo;

.field a:Landroidx/appcompat/view/menu/g;

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private n:Ljava/lang/CharSequence;

.field private o:Ljava/lang/CharSequence;

.field private p:Landroid/content/Intent;

.field private q:C

.field private r:I

.field private s:C

.field private t:I

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:I

.field private w:Landroidx/appcompat/view/menu/s;

.field private x:Ljava/lang/Runnable;

.field private y:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private z:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/g;IIIILjava/lang/CharSequence;I)V
    .locals 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1000

    .line 68
    iput v0, p0, Landroidx/appcompat/view/menu/j;->r:I

    .line 70
    iput v0, p0, Landroidx/appcompat/view/menu/j;->t:I

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Landroidx/appcompat/view/menu/j;->v:I

    const/4 v1, 0x0

    .line 93
    iput-object v1, p0, Landroidx/appcompat/view/menu/j;->B:Landroid/content/res/ColorStateList;

    .line 94
    iput-object v1, p0, Landroidx/appcompat/view/menu/j;->C:Landroid/graphics/PorterDuff$Mode;

    .line 95
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/j;->D:Z

    .line 96
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/j;->E:Z

    .line 97
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/j;->F:Z

    const/16 v1, 0x10

    .line 99
    iput v1, p0, Landroidx/appcompat/view/menu/j;->G:I

    .line 107
    iput v0, p0, Landroidx/appcompat/view/menu/j;->N:I

    .line 112
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/j;->R:Z

    .line 139
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    .line 140
    iput p3, p0, Landroidx/appcompat/view/menu/j;->j:I

    .line 141
    iput p2, p0, Landroidx/appcompat/view/menu/j;->k:I

    .line 142
    iput p4, p0, Landroidx/appcompat/view/menu/j;->l:I

    .line 143
    iput p5, p0, Landroidx/appcompat/view/menu/j;->m:I

    .line 144
    iput-object p6, p0, Landroidx/appcompat/view/menu/j;->n:Ljava/lang/CharSequence;

    .line 145
    iput p7, p0, Landroidx/appcompat/view/menu/j;->N:I

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p1, :cond_3

    .line 570
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/j;->F:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/j;->D:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/view/menu/j;->E:Z

    if-eqz v0, :cond_3

    .line 571
    :cond_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 572
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 574
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/j;->D:Z

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->B:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 578
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/j;->E:Z

    if-eqz v0, :cond_2

    .line 579
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->C:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    const/4 v0, 0x0

    .line 582
    iput-boolean v0, p0, Landroidx/appcompat/view/menu/j;->F:Z

    :cond_3
    return-object p1
.end method

.method private static a(Ljava/lang/StringBuilder;IILjava/lang/String;)V
    .locals 0

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    .line 403
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;)Landroid/view/MenuItem;
    .locals 0

    .line 237
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->x:Ljava/lang/Runnable;

    return-object p0
.end method

.method public a(I)Landroidx/core/e/a/b;
    .locals 3

    .line 762
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->g()Landroid/content/Context;

    move-result-object v0

    .line 763
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 764
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j;->a(Landroid/view/View;)Landroidx/core/e/a/b;

    return-object p0
.end method

.method public a(Landroid/view/View;)Landroidx/core/e/a/b;
    .locals 2

    .line 751
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->O:Landroid/view/View;

    const/4 v0, 0x0

    .line 752
    iput-object v0, p0, Landroidx/appcompat/view/menu/j;->P:Landroidx/core/n/b;

    if-eqz p1, :cond_0

    .line 753
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/j;->j:I

    if-lez v0, :cond_0

    .line 754
    iget v0, p0, Landroidx/appcompat/view/menu/j;->j:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 756
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/j;)V

    return-object p0
.end method

.method public a(Landroidx/core/n/b;)Landroidx/core/e/a/b;
    .locals 1

    .line 799
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->P:Landroidx/core/n/b;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->P:Landroidx/core/n/b;

    invoke-virtual {v0}, Landroidx/core/n/b;->h()V

    :cond_0
    const/4 v0, 0x0

    .line 802
    iput-object v0, p0, Landroidx/appcompat/view/menu/j;->O:Landroid/view/View;

    .line 803
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->P:Landroidx/core/n/b;

    .line 804
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->c(Z)V

    .line 805
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->P:Landroidx/core/n/b;

    if-eqz p1, :cond_1

    .line 806
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->P:Landroidx/core/n/b;

    new-instance v0, Landroidx/appcompat/view/menu/j$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/menu/j$1;-><init>(Landroidx/appcompat/view/menu/j;)V

    invoke-virtual {p1, v0}, Landroidx/core/n/b;->a(Landroidx/core/n/b$b;)V

    :cond_1
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroidx/core/e/a/b;
    .locals 1

    .line 882
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->z:Ljava/lang/CharSequence;

    .line 884
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->c(Z)V

    return-object p0
.end method

.method a(Landroidx/appcompat/view/menu/o$a;)Ljava/lang/CharSequence;
    .locals 0

    if-eqz p1, :cond_0

    .line 446
    invoke-interface {p1}, Landroidx/appcompat/view/menu/o$a;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 447
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j;->getTitleCondensed()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method a(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .line 682
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->S:Landroid/view/ContextMenu$ContextMenuInfo;

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/s;)V
    .locals 0

    .line 428
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->w:Landroidx/appcompat/view/menu/s;

    .line 430
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/s;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 605
    iget v0, p0, Landroidx/appcompat/view/menu/j;->G:I

    and-int/lit8 v0, v0, -0x5

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/view/menu/j;->G:I

    return-void
.end method

.method public a()Z
    .locals 4

    .line 154
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->y:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->y:Landroid/view/MenuItem$OnMenuItemClickListener;

    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 158
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    iget-object v2, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, v2, p0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 162
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->x:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 163
    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->x:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return v1

    .line 167
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->p:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 169
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->g()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Landroidx/appcompat/view/menu/j;->p:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v2, "MenuItemImpl"

    const-string v3, "Can\'t find activity to handle intent; ignoring"

    .line 172
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->P:Landroidx/core/n/b;

    if-eqz v0, :cond_4

    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->P:Landroidx/core/n/b;

    invoke-virtual {p0}, Landroidx/core/n/b;->b()Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public b(I)Landroidx/core/e/a/b;
    .locals 0

    .line 818
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j;->setShowAsAction(I)V

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroidx/core/e/a/b;
    .locals 1

    .line 896
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->A:Ljava/lang/CharSequence;

    .line 898
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->c(Z)V

    return-object p0
.end method

.method public b()Landroidx/core/n/b;
    .locals 0

    .line 794
    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->P:Landroidx/core/n/b;

    return-object p0
.end method

.method b(Z)V
    .locals 3

    .line 631
    iget v0, p0, Landroidx/appcompat/view/menu/j;->G:I

    .line 632
    iget v1, p0, Landroidx/appcompat/view/menu/j;->G:I

    and-int/lit8 v1, v1, -0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    or-int/2addr p1, v1

    iput p1, p0, Landroidx/appcompat/view/menu/j;->G:I

    .line 633
    iget p1, p0, Landroidx/appcompat/view/menu/j;->G:I

    if-eq v0, p1, :cond_1

    .line 634
    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/g;->c(Z)V

    :cond_1
    return-void
.end method

.method public c()I
    .locals 0

    .line 218
    iget p0, p0, Landroidx/appcompat/view/menu/j;->m:I

    return p0
.end method

.method c(Z)Z
    .locals 3

    .line 655
    iget v0, p0, Landroidx/appcompat/view/menu/j;->G:I

    .line 656
    iget v1, p0, Landroidx/appcompat/view/menu/j;->G:I

    and-int/lit8 v1, v1, -0x9

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    or-int/2addr p1, v1

    iput p1, p0, Landroidx/appcompat/view/menu/j;->G:I

    .line 657
    iget p0, p0, Landroidx/appcompat/view/menu/j;->G:I

    if-eq v0, p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public collapseActionView()Z
    .locals 2

    .line 838
    iget v0, p0, Landroidx/appcompat/view/menu/j;->N:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 841
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->O:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 846
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->Q:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->Q:Landroid/view/MenuItem$OnActionExpandListener;

    .line 847
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 848
    :cond_3
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/g;->d(Landroidx/appcompat/view/menu/j;)Z

    move-result p0

    return p0
.end method

.method d()Ljava/lang/Runnable;
    .locals 0

    .line 233
    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->x:Ljava/lang/Runnable;

    return-object p0
.end method

.method public d(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 721
    iget p1, p0, Landroidx/appcompat/view/menu/j;->G:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroidx/appcompat/view/menu/j;->G:I

    goto :goto_0

    .line 723
    :cond_0
    iget p1, p0, Landroidx/appcompat/view/menu/j;->G:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroidx/appcompat/view/menu/j;->G:I

    :goto_0
    return-void
.end method

.method e()C
    .locals 1

    .line 342
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-char p0, p0, Landroidx/appcompat/view/menu/j;->s:C

    goto :goto_0

    :cond_0
    iget-char p0, p0, Landroidx/appcompat/view/menu/j;->q:C

    :goto_0
    return p0
.end method

.method public e(Z)V
    .locals 0

    .line 865
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/j;->R:Z

    .line 866
    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/g;->c(Z)V

    return-void
.end method

.method public expandActionView()Z
    .locals 2

    .line 824
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 828
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->Q:Landroid/view/MenuItem$OnActionExpandListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->Q:Landroid/view/MenuItem$OnActionExpandListener;

    .line 829
    invoke-interface {v0, p0}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 830
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/g;->c(Landroidx/appcompat/view/menu/j;)Z

    move-result p0

    return p0
.end method

.method f()Ljava/lang/String;
    .locals 5

    .line 352
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j;->e()C

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 357
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    iget-object v3, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/g;->g()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 361
    sget v3, Landroidx/appcompat/a$k;->abc_prepend_shortcut_label:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    :cond_1
    iget-object v3, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3}, Landroidx/appcompat/view/menu/g;->d()Z

    move-result v3

    if-eqz v3, :cond_2

    iget p0, p0, Landroidx/appcompat/view/menu/j;->t:I

    goto :goto_0

    :cond_2
    iget p0, p0, Landroidx/appcompat/view/menu/j;->r:I

    :goto_0
    const/high16 v3, 0x10000

    .line 366
    sget v4, Landroidx/appcompat/a$k;->abc_menu_meta_shortcut_label:I

    .line 367
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 366
    invoke-static {v2, p0, v3, v4}, Landroidx/appcompat/view/menu/j;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    const/16 v3, 0x1000

    .line 368
    sget v4, Landroidx/appcompat/a$k;->abc_menu_ctrl_shortcut_label:I

    .line 369
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 368
    invoke-static {v2, p0, v3, v4}, Landroidx/appcompat/view/menu/j;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    const/4 v3, 0x2

    .line 370
    sget v4, Landroidx/appcompat/a$k;->abc_menu_alt_shortcut_label:I

    .line 371
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 370
    invoke-static {v2, p0, v3, v4}, Landroidx/appcompat/view/menu/j;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    const/4 v3, 0x1

    .line 372
    sget v4, Landroidx/appcompat/a$k;->abc_menu_shift_shortcut_label:I

    .line 373
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 372
    invoke-static {v2, p0, v3, v4}, Landroidx/appcompat/view/menu/j;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    const/4 v3, 0x4

    .line 374
    sget v4, Landroidx/appcompat/a$k;->abc_menu_sym_shortcut_label:I

    .line 375
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 374
    invoke-static {v2, p0, v3, v4}, Landroidx/appcompat/view/menu/j;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    .line 376
    sget v3, Landroidx/appcompat/a$k;->abc_menu_function_shortcut_label:I

    .line 377
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    .line 376
    invoke-static {v2, p0, v4, v3}, Landroidx/appcompat/view/menu/j;->a(Ljava/lang/StringBuilder;IILjava/lang/String;)V

    if-eq v0, v4, :cond_5

    const/16 p0, 0xa

    if-eq v0, p0, :cond_4

    const/16 p0, 0x20

    if-eq v0, p0, :cond_3

    .line 394
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 390
    :cond_3
    sget p0, Landroidx/appcompat/a$k;->abc_menu_space_shortcut_label:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 382
    :cond_4
    sget p0, Landroidx/appcompat/a$k;->abc_menu_enter_shortcut_label:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 386
    :cond_5
    sget p0, Landroidx/appcompat/a$k;->abc_menu_delete_shortcut_label:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method g()Z
    .locals 1

    .line 414
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j;->e()C

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getActionProvider()Landroid/view/ActionProvider;
    .locals 1

    .line 788
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is not supported, use MenuItemCompat.getActionProvider()"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getActionView()Landroid/view/View;
    .locals 1

    .line 770
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->O:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 771
    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->O:Landroid/view/View;

    return-object p0

    .line 772
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->P:Landroidx/core/n/b;

    if-eqz v0, :cond_1

    .line 773
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->P:Landroidx/core/n/b;

    invoke-virtual {v0, p0}, Landroidx/core/n/b;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/j;->O:Landroid/view/View;

    .line 774
    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->O:Landroid/view/View;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAlphabeticModifiers()I
    .locals 0

    .line 275
    iget p0, p0, Landroidx/appcompat/view/menu/j;->t:I

    return p0
.end method

.method public getAlphabeticShortcut()C
    .locals 0

    .line 243
    iget-char p0, p0, Landroidx/appcompat/view/menu/j;->s:C

    return p0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    .line 891
    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->z:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getGroupId()I
    .locals 0

    .line 203
    iget p0, p0, Landroidx/appcompat/view/menu/j;->k:I

    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 500
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->u:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->u:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/j;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 504
    :cond_0
    iget v0, p0, Landroidx/appcompat/view/menu/j;->v:I

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->g()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Landroidx/appcompat/view/menu/j;->v:I

    invoke-static {v0, v1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    .line 506
    iput v1, p0, Landroidx/appcompat/view/menu/j;->v:I

    .line 507
    iput-object v0, p0, Landroidx/appcompat/view/menu/j;->u:Landroid/graphics/drawable/Drawable;

    .line 508
    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/j;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIconTintList()Landroid/content/res/ColorStateList;
    .locals 0

    .line 550
    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->B:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 566
    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->C:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 223
    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->p:Landroid/content/Intent;

    return-object p0
.end method

.method public getItemId()I
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 209
    iget p0, p0, Landroidx/appcompat/view/menu/j;->j:I

    return p0
.end method

.method public getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 0

    .line 687
    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->S:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object p0
.end method

.method public getNumericModifiers()I
    .locals 0

    .line 285
    iget p0, p0, Landroidx/appcompat/view/menu/j;->r:I

    return p0
.end method

.method public getNumericShortcut()C
    .locals 0

    .line 280
    iget-char p0, p0, Landroidx/appcompat/view/menu/j;->q:C

    return p0
.end method

.method public getOrder()I
    .locals 0

    .line 214
    iget p0, p0, Landroidx/appcompat/view/menu/j;->l:I

    return p0
.end method

.method public getSubMenu()Landroid/view/SubMenu;
    .locals 0

    .line 419
    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->w:Landroidx/appcompat/view/menu/s;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .line 436
    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->n:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitleCondensed()Ljava/lang/CharSequence;
    .locals 2

    .line 471
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->o:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->o:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->n:Ljava/lang/CharSequence;

    .line 473
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    if-eqz p0, :cond_1

    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 477
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p0
.end method

.method public getTooltipText()Ljava/lang/CharSequence;
    .locals 0

    .line 905
    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->A:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public h()Z
    .locals 0

    .line 609
    iget p0, p0, Landroidx/appcompat/view/menu/j;->G:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasSubMenu()Z
    .locals 0

    .line 424
    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->w:Landroidx/appcompat/view/menu/s;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public i()V
    .locals 1

    .line 691
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p0}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/j;)V

    return-void
.end method

.method public isActionViewExpanded()Z
    .locals 0

    .line 871
    iget-boolean p0, p0, Landroidx/appcompat/view/menu/j;->R:Z

    return p0
.end method

.method public isCheckable()Z
    .locals 1

    .line 590
    iget p0, p0, Landroidx/appcompat/view/menu/j;->G:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 614
    iget p0, p0, Landroidx/appcompat/view/menu/j;->G:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 185
    iget p0, p0, Landroidx/appcompat/view/menu/j;->G:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVisible()Z
    .locals 3

    .line 640
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->P:Landroidx/core/n/b;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->P:Landroidx/core/n/b;

    invoke-virtual {v0}, Landroidx/core/n/b;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    iget v0, p0, Landroidx/appcompat/view/menu/j;->G:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->P:Landroidx/core/n/b;

    invoke-virtual {p0}, Landroidx/core/n/b;->e()Z

    move-result p0

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    .line 643
    :cond_1
    iget p0, p0, Landroidx/appcompat/view/menu/j;->G:I

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public j()Z
    .locals 0

    .line 698
    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/g;->s()Z

    move-result p0

    return p0
.end method

.method public k()Z
    .locals 1

    .line 702
    iget p0, p0, Landroidx/appcompat/view/menu/j;->G:I

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public l()Z
    .locals 1

    .line 706
    iget p0, p0, Landroidx/appcompat/view/menu/j;->N:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 1

    .line 728
    iget p0, p0, Landroidx/appcompat/view/menu/j;->N:I

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public n()Z
    .locals 2

    .line 855
    iget v0, p0, Landroidx/appcompat/view/menu/j;->N:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 856
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->O:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->P:Landroidx/core/n/b;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->P:Landroidx/core/n/b;

    invoke-virtual {v0, p0}, Landroidx/core/n/b;->a(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/j;->O:Landroid/view/View;

    .line 859
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->O:Landroid/view/View;

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public requiresActionButton()Z
    .locals 1

    .line 711
    iget p0, p0, Landroidx/appcompat/view/menu/j;->N:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public requiresOverflow()Z
    .locals 1

    .line 716
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j;->requiresActionButton()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/j;->l()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
    .locals 0

    .line 782
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "This is not supported, use MenuItemCompat.setActionProvider()"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic setActionView(I)Landroid/view/MenuItem;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j;->a(I)Landroidx/core/e/a/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic setActionView(Landroid/view/View;)Landroid/view/MenuItem;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j;->a(Landroid/view/View;)Landroidx/core/e/a/b;

    move-result-object p0

    return-object p0
.end method

.method public setAlphabeticShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 248
    iget-char v0, p0, Landroidx/appcompat/view/menu/j;->s:C

    if-ne v0, p1, :cond_0

    return-object p0

    .line 252
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/j;->s:C

    .line 254
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->c(Z)V

    return-object p0
.end method

.method public setAlphabeticShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 261
    iget-char v0, p0, Landroidx/appcompat/view/menu/j;->s:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/j;->t:I

    if-ne v0, p2, :cond_0

    return-object p0

    .line 266
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/j;->s:C

    .line 267
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/j;->t:I

    .line 269
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/g;->c(Z)V

    return-object p0
.end method

.method public setCheckable(Z)Landroid/view/MenuItem;
    .locals 2

    .line 595
    iget v0, p0, Landroidx/appcompat/view/menu/j;->G:I

    .line 596
    iget v1, p0, Landroidx/appcompat/view/menu/j;->G:I

    and-int/lit8 v1, v1, -0x2

    or-int/2addr p1, v1

    iput p1, p0, Landroidx/appcompat/view/menu/j;->G:I

    .line 597
    iget p1, p0, Landroidx/appcompat/view/menu/j;->G:I

    if-eq v0, p1, :cond_0

    .line 598
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->c(Z)V

    :cond_0
    return-object p0
.end method

.method public setChecked(Z)Landroid/view/MenuItem;
    .locals 1

    .line 619
    iget v0, p0, Landroidx/appcompat/view/menu/j;->G:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 622
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/g;->a(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 624
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j;->b(Z)V

    :goto_0
    return-object p0
.end method

.method public synthetic setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j;->a(Ljava/lang/CharSequence;)Landroidx/core/e/a/b;

    move-result-object p0

    return-object p0
.end method

.method public setEnabled(Z)Landroid/view/MenuItem;
    .locals 1

    if-eqz p1, :cond_0

    .line 191
    iget p1, p0, Landroidx/appcompat/view/menu/j;->G:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroidx/appcompat/view/menu/j;->G:I

    goto :goto_0

    .line 193
    :cond_0
    iget p1, p0, Landroidx/appcompat/view/menu/j;->G:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroidx/appcompat/view/menu/j;->G:I

    .line 196
    :goto_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->c(Z)V

    return-object p0
.end method

.method public setIcon(I)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 526
    iput-object v0, p0, Landroidx/appcompat/view/menu/j;->u:Landroid/graphics/drawable/Drawable;

    .line 527
    iput p1, p0, Landroidx/appcompat/view/menu/j;->v:I

    const/4 p1, 0x1

    .line 528
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/j;->F:Z

    .line 531
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->c(Z)V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
    .locals 1

    const/4 v0, 0x0

    .line 516
    iput v0, p0, Landroidx/appcompat/view/menu/j;->v:I

    .line 517
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->u:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 518
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/j;->F:Z

    .line 519
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->c(Z)V

    return-object p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 539
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->B:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 540
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/j;->D:Z

    .line 541
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/j;->F:Z

    .line 543
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->c(Z)V

    return-object p0
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;
    .locals 1

    .line 555
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->C:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 556
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/j;->E:Z

    .line 557
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/j;->F:Z

    .line 559
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->c(Z)V

    return-object p0
.end method

.method public setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    .locals 0

    .line 228
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->p:Landroid/content/Intent;

    return-object p0
.end method

.method public setNumericShortcut(C)Landroid/view/MenuItem;
    .locals 1

    .line 290
    iget-char v0, p0, Landroidx/appcompat/view/menu/j;->q:C

    if-ne v0, p1, :cond_0

    return-object p0

    .line 294
    :cond_0
    iput-char p1, p0, Landroidx/appcompat/view/menu/j;->q:C

    .line 296
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->c(Z)V

    return-object p0
.end method

.method public setNumericShortcut(CI)Landroid/view/MenuItem;
    .locals 1

    .line 303
    iget-char v0, p0, Landroidx/appcompat/view/menu/j;->q:C

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroidx/appcompat/view/menu/j;->r:I

    if-ne v0, p2, :cond_0

    return-object p0

    .line 307
    :cond_0
    iput-char p1, p0, Landroidx/appcompat/view/menu/j;->q:C

    .line 308
    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/j;->r:I

    .line 310
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/g;->c(Z)V

    return-object p0
.end method

.method public setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;
    .locals 0

    .line 876
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->Q:Landroid/view/MenuItem$OnActionExpandListener;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
    .locals 0

    .line 672
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->y:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object p0
.end method

.method public setShortcut(CC)Landroid/view/MenuItem;
    .locals 0

    .line 317
    iput-char p1, p0, Landroidx/appcompat/view/menu/j;->q:C

    .line 318
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/j;->s:C

    .line 320
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/g;->c(Z)V

    return-object p0
.end method

.method public setShortcut(CCII)Landroid/view/MenuItem;
    .locals 0

    .line 328
    iput-char p1, p0, Landroidx/appcompat/view/menu/j;->q:C

    .line 329
    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/j;->r:I

    .line 330
    invoke-static {p2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    iput-char p1, p0, Landroidx/appcompat/view/menu/j;->s:C

    .line 331
    invoke-static {p4}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/j;->t:I

    .line 333
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/g;->c(Z)V

    return-object p0
.end method

.method public setShowAsAction(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x3

    packed-switch v0, :pswitch_data_0

    .line 742
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 745
    :pswitch_0
    iput p1, p0, Landroidx/appcompat/view/menu/j;->N:I

    .line 746
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/g;->b(Landroidx/appcompat/view/menu/j;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic setShowAsActionFlags(I)Landroid/view/MenuItem;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j;->b(I)Landroidx/core/e/a/b;

    move-result-object p0

    return-object p0
.end method

.method public setTitle(I)Landroid/view/MenuItem;
    .locals 1

    .line 466
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->g()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 2

    .line 453
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Ljava/lang/CharSequence;

    .line 455
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->c(Z)V

    .line 457
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->w:Landroidx/appcompat/view/menu/s;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->w:Landroidx/appcompat/view/menu/s;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/s;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    :cond_0
    return-object p0
.end method

.method public setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1

    .line 486
    iput-object p1, p0, Landroidx/appcompat/view/menu/j;->o:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    .line 490
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->n:Ljava/lang/CharSequence;

    .line 493
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/view/menu/g;->c(Z)V

    return-object p0
.end method

.method public synthetic setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j;->b(Ljava/lang/CharSequence;)Landroidx/core/e/a/b;

    move-result-object p0

    return-object p0
.end method

.method public setVisible(Z)Landroid/view/MenuItem;
    .locals 0

    .line 665
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/j;->c(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/j;->a:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/j;)V

    :cond_0
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 678
    iget-object v0, p0, Landroidx/appcompat/view/menu/j;->n:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/view/menu/j;->n:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
