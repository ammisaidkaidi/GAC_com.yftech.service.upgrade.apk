.class public Landroidx/appcompat/widget/an;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/an$a;,
        Landroidx/appcompat/widget/an$b;
    }
.end annotation


# instance fields
.field final a:Landroidx/appcompat/view/menu/m;

.field b:Landroidx/appcompat/widget/an$b;

.field c:Landroidx/appcompat/widget/an$a;

.field private final d:Landroid/content/Context;

.field private final e:Landroidx/appcompat/view/menu/g;

.field private final f:Landroid/view/View;

.field private g:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/an;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 83
    sget v4, Landroidx/appcompat/a$b;->popupMenuStyle:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/an;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/f;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Landroidx/appcompat/widget/an;->d:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Landroidx/appcompat/widget/an;->f:Landroid/view/View;

    .line 108
    new-instance v0, Landroidx/appcompat/view/menu/g;

    invoke-direct {v0, p1}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/widget/an;->e:Landroidx/appcompat/view/menu/g;

    .line 109
    iget-object v0, p0, Landroidx/appcompat/widget/an;->e:Landroidx/appcompat/view/menu/g;

    new-instance v1, Landroidx/appcompat/widget/an$1;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/an$1;-><init>(Landroidx/appcompat/widget/an;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g$a;)V

    .line 123
    new-instance v0, Landroidx/appcompat/view/menu/m;

    iget-object v4, p0, Landroidx/appcompat/widget/an;->e:Landroidx/appcompat/view/menu/g;

    const/4 v6, 0x0

    move-object v2, v0

    move-object v3, p1

    move-object v5, p2

    move v7, p4

    move v8, p5

    invoke-direct/range {v2 .. v8}, Landroidx/appcompat/view/menu/m;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/g;Landroid/view/View;ZII)V

    iput-object v0, p0, Landroidx/appcompat/widget/an;->a:Landroidx/appcompat/view/menu/m;

    .line 124
    iget-object p1, p0, Landroidx/appcompat/widget/an;->a:Landroidx/appcompat/view/menu/m;

    invoke-virtual {p1, p3}, Landroidx/appcompat/view/menu/m;->a(I)V

    .line 125
    iget-object p1, p0, Landroidx/appcompat/widget/an;->a:Landroidx/appcompat/view/menu/m;

    new-instance p2, Landroidx/appcompat/widget/an$2;

    invoke-direct {p2, p0}, Landroidx/appcompat/widget/an$2;-><init>(Landroidx/appcompat/widget/an;)V

    invoke-virtual {p1, p2}, Landroidx/appcompat/view/menu/m;->a(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 153
    iget-object p0, p0, Landroidx/appcompat/widget/an;->a:Landroidx/appcompat/view/menu/m;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m;->b()I

    move-result p0

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 145
    iget-object p0, p0, Landroidx/appcompat/widget/an;->a:Landroidx/appcompat/view/menu/m;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/m;->a(I)V

    return-void
.end method

.method public a(Landroidx/appcompat/widget/an$a;)V
    .locals 0
    .param p1    # Landroidx/appcompat/widget/an$a;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 266
    iput-object p1, p0, Landroidx/appcompat/widget/an;->c:Landroidx/appcompat/widget/an$a;

    return-void
.end method

.method public a(Landroidx/appcompat/widget/an$b;)V
    .locals 0
    .param p1    # Landroidx/appcompat/widget/an$b;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 257
    iput-object p1, p0, Landroidx/appcompat/widget/an;->b:Landroidx/appcompat/widget/an$b;

    return-void
.end method

.method public b()Landroid/view/View$OnTouchListener;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 174
    iget-object v0, p0, Landroidx/appcompat/widget/an;->g:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Landroidx/appcompat/widget/an$3;

    iget-object v1, p0, Landroidx/appcompat/widget/an;->f:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/widget/an$3;-><init>(Landroidx/appcompat/widget/an;Landroid/view/View;)V

    iput-object v0, p0, Landroidx/appcompat/widget/an;->g:Landroid/view/View$OnTouchListener;

    .line 196
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/an;->g:Landroid/view/View$OnTouchListener;

    return-object p0
.end method

.method public b(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/af;
        .end annotation
    .end param

    .line 229
    invoke-virtual {p0}, Landroidx/appcompat/widget/an;->d()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object p0, p0, Landroidx/appcompat/widget/an;->e:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p1, p0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public c()Landroid/view/Menu;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 209
    iget-object p0, p0, Landroidx/appcompat/widget/an;->e:Landroidx/appcompat/view/menu/g;

    return-object p0
.end method

.method public d()Landroid/view/MenuInflater;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 219
    new-instance v0, Landroidx/appcompat/view/g;

    iget-object p0, p0, Landroidx/appcompat/widget/an;->d:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public e()V
    .locals 0

    .line 238
    iget-object p0, p0, Landroidx/appcompat/widget/an;->a:Landroidx/appcompat/view/menu/m;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m;->c()V

    return-void
.end method

.method public f()V
    .locals 0

    .line 247
    iget-object p0, p0, Landroidx/appcompat/widget/an;->a:Landroidx/appcompat/view/menu/m;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m;->a()V

    return-void
.end method

.method g()Landroid/widget/ListView;
    .locals 1
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Landroidx/appcompat/widget/an;->a:Landroidx/appcompat/view/menu/m;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/m;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 309
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/an;->a:Landroidx/appcompat/view/menu/m;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/m;->h()Landroid/widget/ListView;

    move-result-object p0

    return-object p0
.end method
