.class Landroidx/appcompat/app/n;
.super Landroidx/appcompat/app/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/n$b;,
        Landroidx/appcompat/app/n$a;,
        Landroidx/appcompat/app/n$c;
    }
.end annotation


# instance fields
.field i:Landroidx/appcompat/widget/ae;

.field j:Z

.field k:Landroid/view/Window$Callback;

.field private l:Z

.field private m:Z

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/appcompat/app/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/lang/Runnable;

.field private final p:Landroidx/appcompat/widget/Toolbar$c;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Landroidx/appcompat/app/a;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/n;->n:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Landroidx/appcompat/app/n$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/n$1;-><init>(Landroidx/appcompat/app/n;)V

    iput-object v0, p0, Landroidx/appcompat/app/n;->o:Ljava/lang/Runnable;

    .line 61
    new-instance v0, Landroidx/appcompat/app/n$2;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/n$2;-><init>(Landroidx/appcompat/app/n;)V

    iput-object v0, p0, Landroidx/appcompat/app/n;->p:Landroidx/appcompat/widget/Toolbar$c;

    .line 70
    new-instance v0, Landroidx/appcompat/widget/bb;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroidx/appcompat/widget/bb;-><init>(Landroidx/appcompat/widget/Toolbar;Z)V

    iput-object v0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    .line 71
    new-instance v0, Landroidx/appcompat/app/n$c;

    invoke-direct {v0, p0, p3}, Landroidx/appcompat/app/n$c;-><init>(Landroidx/appcompat/app/n;Landroid/view/Window$Callback;)V

    iput-object v0, p0, Landroidx/appcompat/app/n;->k:Landroid/view/Window$Callback;

    .line 72
    iget-object p3, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    iget-object v0, p0, Landroidx/appcompat/app/n;->k:Landroid/view/Window$Callback;

    invoke-interface {p3, v0}, Landroidx/appcompat/widget/ae;->a(Landroid/view/Window$Callback;)V

    .line 73
    iget-object p3, p0, Landroidx/appcompat/app/n;->p:Landroidx/appcompat/widget/Toolbar$c;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$c;)V

    .line 74
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p2}, Landroidx/appcompat/widget/ae;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private C()Landroid/view/Menu;
    .locals 3

    .line 544
    iget-boolean v0, p0, Landroidx/appcompat/app/n;->l:Z

    if-nez v0, :cond_0

    .line 545
    iget-object v0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    new-instance v1, Landroidx/appcompat/app/n$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/n$a;-><init>(Landroidx/appcompat/app/n;)V

    new-instance v2, Landroidx/appcompat/app/n$b;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/n$b;-><init>(Landroidx/appcompat/app/n;)V

    invoke-interface {v0, v1, v2}, Landroidx/appcompat/widget/ae;->a(Landroidx/appcompat/view/menu/n$a;Landroidx/appcompat/view/menu/g$a;)V

    const/4 v0, 0x1

    .line 547
    iput-boolean v0, p0, Landroidx/appcompat/app/n;->l:Z

    .line 549
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->A()Landroid/view/Menu;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public A()Landroid/view/Window$Callback;
    .locals 0

    .line 78
    iget-object p0, p0, Landroidx/appcompat/app/n;->k:Landroid/view/Window$Callback;

    return-object p0
.end method

.method B()V
    .locals 5

    .line 449
    invoke-direct {p0}, Landroidx/appcompat/app/n;->C()Landroid/view/Menu;

    move-result-object v0

    .line 450
    instance-of v1, v0, Landroidx/appcompat/view/menu/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroidx/appcompat/view/menu/g;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 452
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->i()V

    .line 455
    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 456
    iget-object v3, p0, Landroidx/appcompat/app/n;->k:Landroid/view/Window$Callback;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v0}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object p0, p0, Landroidx/appcompat/app/n;->k:Landroid/view/Window$Callback;

    .line 457
    invoke-interface {p0, v4, v2, v0}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 458
    :cond_2
    invoke-interface {v0}, Landroid/view/Menu;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v1, :cond_4

    .line 462
    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->j()V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/g;->j()V

    .line 464
    :cond_5
    throw p0
.end method

.method public a()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public a(F)V
    .locals 0

    .line 137
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->a()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0, p1}, Landroidx/core/n/af;->m(Landroid/view/View;F)V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 96
    iget-object v0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 97
    iget-object v1, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v1}, Landroidx/appcompat/widget/ae;->a()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/n;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 260
    iget-object v0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->r()I

    move-result v0

    .line 261
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    and-int/2addr p1, p2

    not-int p2, p2

    and-int/2addr p2, v0

    or-int/2addr p1, p2

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->c(I)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .line 187
    invoke-super {p0, p1}, Landroidx/appcompat/app/a;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 107
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .line 83
    new-instance v0, Landroidx/appcompat/app/a$b;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/appcompat/app/a$b;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/n;->a(Landroid/view/View;Landroidx/appcompat/app/a$b;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroidx/appcompat/app/a$b;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/widget/SpinnerAdapter;Landroidx/appcompat/app/a$e;)V
    .locals 1

    .line 192
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    new-instance v0, Landroidx/appcompat/app/l;

    invoke-direct {v0, p2}, Landroidx/appcompat/app/l;-><init>(Landroidx/appcompat/app/a$e;)V

    invoke-interface {p0, p1, v0}, Landroidx/appcompat/widget/ae;->a(Landroid/widget/SpinnerAdapter;Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public a(Landroidx/appcompat/app/a$d;)V
    .locals 0

    .line 495
    iget-object p0, p0, Landroidx/appcompat/app/n;->n:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Landroidx/appcompat/app/a$f;)V
    .locals 0

    .line 335
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Tabs are not supported in toolbar action bars"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Landroidx/appcompat/app/a$f;I)V
    .locals 0

    .line 347
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Tabs are not supported in toolbar action bars"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Landroidx/appcompat/app/a$f;IZ)V
    .locals 0

    .line 353
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Tabs are not supported in toolbar action bars"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Landroidx/appcompat/app/a$f;Z)V
    .locals 0

    .line 341
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Tabs are not supported in toolbar action bars"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 219
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 266
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/n;->a(II)V

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 477
    invoke-direct {p0}, Landroidx/appcompat/app/n;->C()Landroid/view/Menu;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_0

    .line 480
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 479
    :goto_0
    invoke-static {v1}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v1

    .line 481
    invoke-virtual {v1}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-interface {p0, v2}, Landroid/view/Menu;->setQwertyMode(Z)V

    .line 482
    invoke-interface {p0, p1, p2, v0}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 469
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 470
    invoke-virtual {p0}, Landroidx/appcompat/app/n;->u()Z

    :cond_0
    return v0
.end method

.method public b()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b(I)V
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->a(I)V

    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 117
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b(Landroidx/appcompat/app/a$d;)V
    .locals 0

    .line 500
    iget-object p0, p0, Landroidx/appcompat/app/n;->n:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Landroidx/appcompat/app/a$f;)V
    .locals 0

    .line 359
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Tabs are not supported in toolbar action bars"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 0

    .line 244
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 271
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/n;->a(II)V

    return-void
.end method

.method public c()Landroid/view/View;
    .locals 0

    .line 296
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->x()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public c(I)V
    .locals 0

    .line 112
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->b(I)V

    return-void
.end method

.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 291
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->e(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public c(Landroidx/appcompat/app/a$f;)V
    .locals 0

    .line 377
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Tabs are not supported in toolbar action bars"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(Ljava/lang/CharSequence;)V
    .locals 0

    .line 167
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->d(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public c(Z)V
    .locals 1

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 276
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/n;->a(II)V

    return-void
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 0

    .line 301
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->e()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public d(I)V
    .locals 2

    .line 197
    iget-object v0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->u()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 199
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->e(I)V

    return-void

    .line 202
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/CharSequence;)V
    .locals 0

    .line 229
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 281
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/n;->a(II)V

    return-void
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 0

    .line 306
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->f()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public e(I)V
    .locals 1

    .line 224
    iget-object v0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->b()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Landroidx/appcompat/widget/ae;->b(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public e(Z)V
    .locals 1

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 286
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/n;->a(II)V

    return-void
.end method

.method public f()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public f(I)V
    .locals 1

    .line 249
    iget-object v0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->b()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Landroidx/appcompat/widget/ae;->c(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public f(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 157
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->c(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public f(Z)V
    .locals 0

    return-void
.end method

.method public g()I
    .locals 0

    .line 324
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->r()I

    move-result p0

    return p0
.end method

.method public g(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/4 v0, -0x1

    .line 255
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/n;->a(II)V

    return-void
.end method

.method public h()Landroidx/appcompat/app/a$f;
    .locals 1

    .line 329
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tabs are not supported in toolbar action bars"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h(I)V
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 319
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->d(I)V

    return-void

    .line 317
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tabs not supported in this configuration"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public h(Z)V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 1

    .line 371
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tabs are not supported in toolbar action bars"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public i(I)V
    .locals 0

    .line 365
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Tabs are not supported in toolbar action bars"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public i(Z)V
    .locals 0

    return-void
.end method

.method public j()Landroidx/appcompat/app/a$f;
    .locals 1

    .line 383
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Tabs are not supported in toolbar action bars"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public j(I)Landroidx/appcompat/app/a$f;
    .locals 0

    .line 389
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Tabs are not supported in toolbar action bars"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public j(Z)V
    .locals 3

    .line 505
    iget-boolean v0, p0, Landroidx/appcompat/app/n;->m:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 508
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/app/n;->m:Z

    .line 510
    iget-object v0, p0, Landroidx/appcompat/app/n;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 512
    iget-object v2, p0, Landroidx/appcompat/app/n;->n:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/a$d;

    invoke-interface {v2, p1}, Landroidx/appcompat/app/a$d;->a(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public k()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public k(I)V
    .locals 0

    .line 162
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->g(I)V

    return-void
.end method

.method public l()I
    .locals 0

    .line 400
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->y()I

    move-result p0

    return p0
.end method

.method public l(I)V
    .locals 0

    .line 177
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0, p1}, Landroidx/appcompat/widget/ae;->h(I)V

    return-void
.end method

.method public m()V
    .locals 1

    .line 407
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroidx/appcompat/widget/ae;->j(I)V

    return-void
.end method

.method public n()V
    .locals 1

    .line 414
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    const/16 v0, 0x8

    invoke-interface {p0, v0}, Landroidx/appcompat/widget/ae;->j(I)V

    return-void
.end method

.method public o()Z
    .locals 0

    .line 419
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->z()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public p()Landroid/content/Context;
    .locals 0

    .line 147
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->b()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public q()Z
    .locals 0

    .line 152
    invoke-super {p0}, Landroidx/appcompat/app/a;->q()Z

    move-result p0

    return p0
.end method

.method public t()F
    .locals 0

    .line 142
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->a()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/n/af;->P(Landroid/view/View;)F

    move-result p0

    return p0
.end method

.method public u()Z
    .locals 0

    .line 424
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->n()Z

    move-result p0

    return p0
.end method

.method public v()Z
    .locals 0

    .line 429
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->o()Z

    move-result p0

    return p0
.end method

.method public w()Z
    .locals 2

    .line 434
    iget-object v0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/n;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 435
    iget-object v0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/app/n;->o:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Landroidx/core/n/af;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method public x()Z
    .locals 1

    .line 441
    iget-object v0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->d()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public y()Z
    .locals 1

    .line 234
    iget-object p0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {p0}, Landroidx/appcompat/widget/ae;->a()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 235
    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method z()V
    .locals 1

    .line 490
    iget-object v0, p0, Landroidx/appcompat/app/n;->i:Landroidx/appcompat/widget/ae;

    invoke-interface {v0}, Landroidx/appcompat/widget/ae;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/app/n;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
