.class public Landroidx/appcompat/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/g/a/a$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/b$d;,
        Landroidx/appcompat/app/b$c;,
        Landroidx/appcompat/app/b$a;,
        Landroidx/appcompat/app/b$b;
    }
.end annotation


# instance fields
.field a:Z

.field b:Landroid/view/View$OnClickListener;

.field private final c:Landroidx/appcompat/app/b$a;

.field private final d:Landroidx/g/a/a;

.field private e:Landroidx/appcompat/b/a/d;

.field private f:Z

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Z

.field private final i:I

.field private final j:I

.field private k:Z


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroidx/g/a/a;Landroidx/appcompat/b/a/d;II)V
    .locals 1
    .param p5    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 120
    iput-boolean v0, p0, Landroidx/appcompat/app/b;->f:Z

    .line 122
    iput-boolean v0, p0, Landroidx/appcompat/app/b;->a:Z

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Landroidx/appcompat/app/b;->k:Z

    if-eqz p2, :cond_0

    .line 197
    new-instance p1, Landroidx/appcompat/app/b$d;

    invoke-direct {p1, p2}, Landroidx/appcompat/app/b$d;-><init>(Landroidx/appcompat/widget/Toolbar;)V

    iput-object p1, p0, Landroidx/appcompat/app/b;->c:Landroidx/appcompat/app/b$a;

    .line 198
    new-instance p1, Landroidx/appcompat/app/b$1;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/b$1;-><init>(Landroidx/appcompat/app/b;)V

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 208
    :cond_0
    instance-of p2, p1, Landroidx/appcompat/app/b$b;

    if-eqz p2, :cond_1

    .line 209
    check-cast p1, Landroidx/appcompat/app/b$b;

    invoke-interface {p1}, Landroidx/appcompat/app/b$b;->a()Landroidx/appcompat/app/b$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/b;->c:Landroidx/appcompat/app/b$a;

    goto :goto_0

    .line 211
    :cond_1
    new-instance p2, Landroidx/appcompat/app/b$c;

    invoke-direct {p2, p1}, Landroidx/appcompat/app/b$c;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Landroidx/appcompat/app/b;->c:Landroidx/appcompat/app/b$a;

    .line 214
    :goto_0
    iput-object p3, p0, Landroidx/appcompat/app/b;->d:Landroidx/g/a/a;

    .line 215
    iput p5, p0, Landroidx/appcompat/app/b;->i:I

    .line 216
    iput p6, p0, Landroidx/appcompat/app/b;->j:I

    if-nez p4, :cond_2

    .line 218
    new-instance p1, Landroidx/appcompat/b/a/d;

    iget-object p2, p0, Landroidx/appcompat/app/b;->c:Landroidx/appcompat/app/b$a;

    invoke-interface {p2}, Landroidx/appcompat/app/b$a;->b()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/b/a/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/app/b;->e:Landroidx/appcompat/b/a/d;

    goto :goto_1

    .line 220
    :cond_2
    iput-object p4, p0, Landroidx/appcompat/app/b;->e:Landroidx/appcompat/b/a/d;

    .line 223
    :goto_1
    invoke-virtual {p0}, Landroidx/appcompat/app/b;->g()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/b;->g:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/g/a/a;II)V
    .locals 7
    .param p3    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    .line 153
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/app/b;-><init>(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroidx/g/a/a;Landroidx/appcompat/b/a/d;II)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroidx/g/a/a;Landroidx/appcompat/widget/Toolbar;II)V
    .locals 7
    .param p4    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p4

    move v6, p5

    .line 184
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/app/b;-><init>(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroidx/g/a/a;Landroidx/appcompat/b/a/d;II)V

    return-void
.end method

.method private a(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 508
    iget-object v0, p0, Landroidx/appcompat/app/b;->e:Landroidx/appcompat/b/a/d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/b/a/d;->b(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 510
    iget-object v0, p0, Landroidx/appcompat/app/b;->e:Landroidx/appcompat/b/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/b/a/d;->b(Z)V

    .line 512
    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/appcompat/app/b;->e:Landroidx/appcompat/b/a/d;

    invoke-virtual {p0, p1}, Landroidx/appcompat/b/a/d;->f(F)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 236
    iget-object v0, p0, Landroidx/appcompat/app/b;->d:Landroidx/g/a/a;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/g/a/a;->g(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 237
    invoke-direct {p0, v0}, Landroidx/appcompat/app/b;->a(F)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 239
    invoke-direct {p0, v0}, Landroidx/appcompat/app/b;->a(F)V

    .line 241
    :goto_0
    iget-boolean v0, p0, Landroidx/appcompat/app/b;->a:Z

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Landroidx/appcompat/app/b;->e:Landroidx/appcompat/b/a/d;

    .line 243
    iget-object v2, p0, Landroidx/appcompat/app/b;->d:Landroidx/g/a/a;

    invoke-virtual {v2, v1}, Landroidx/g/a/a;->g(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    iget v1, p0, Landroidx/appcompat/app/b;->j:I

    goto :goto_1

    :cond_1
    iget v1, p0, Landroidx/appcompat/app/b;->i:I

    .line 242
    :goto_1
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/b;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 330
    iget-object v0, p0, Landroidx/appcompat/app/b;->d:Landroidx/g/a/a;

    invoke-virtual {v0}, Landroidx/g/a/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 332
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/b;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 0

    .line 258
    iget-boolean p1, p0, Landroidx/appcompat/app/b;->h:Z

    if-nez p1, :cond_0

    .line 259
    invoke-virtual {p0}, Landroidx/appcompat/app/b;->g()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/b;->g:Landroid/graphics/drawable/Drawable;

    .line 261
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/b;->a()V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 304
    invoke-virtual {p0}, Landroidx/appcompat/app/b;->g()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/b;->g:Landroid/graphics/drawable/Drawable;

    .line 305
    iput-boolean v0, p0, Landroidx/appcompat/app/b;->h:Z

    goto :goto_0

    .line 307
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/app/b;->g:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 308
    iput-boolean p1, p0, Landroidx/appcompat/app/b;->h:Z

    .line 311
    :goto_0
    iget-boolean p1, p0, Landroidx/appcompat/app/b;->a:Z

    if-nez p1, :cond_1

    .line 312
    iget-object p1, p0, Landroidx/appcompat/app/b;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/b;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_1
    return-void
.end method

.method a(Landroid/graphics/drawable/Drawable;I)V
    .locals 2

    .line 489
    iget-boolean v0, p0, Landroidx/appcompat/app/b;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/b;->c:Landroidx/appcompat/app/b$a;

    invoke-interface {v0}, Landroidx/appcompat/app/b$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ActionBarDrawerToggle"

    const-string v1, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);"

    .line 490
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 493
    iput-boolean v0, p0, Landroidx/appcompat/app/b;->k:Z

    .line 495
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/b;->c:Landroidx/appcompat/app/b$a;

    invoke-interface {p0, p1, p2}, Landroidx/appcompat/app/b$a;->a(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 485
    iput-object p1, p0, Landroidx/appcompat/app/b;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 429
    invoke-direct {p0, p1}, Landroidx/appcompat/app/b;->a(F)V

    .line 430
    iget-boolean p1, p0, Landroidx/appcompat/app/b;->a:Z

    if-eqz p1, :cond_0

    .line 431
    iget p1, p0, Landroidx/appcompat/app/b;->j:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/b;->c(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;F)V
    .locals 1

    .line 413
    iget-boolean p1, p0, Landroidx/appcompat/app/b;->f:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 414
    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/app/b;->a(F)V

    goto :goto_0

    .line 416
    :cond_0
    invoke-direct {p0, v0}, Landroidx/appcompat/app/b;->a(F)V

    :goto_0
    return-void
.end method

.method public a(Landroidx/appcompat/b/a/d;)V
    .locals 0
    .param p1    # Landroidx/appcompat/b/a/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 380
    iput-object p1, p0, Landroidx/appcompat/app/b;->e:Landroidx/appcompat/b/a/d;

    .line 381
    invoke-virtual {p0}, Landroidx/appcompat/app/b;->a()V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 354
    iget-boolean v0, p0, Landroidx/appcompat/app/b;->a:Z

    if-eq p1, v0, :cond_2

    if-eqz p1, :cond_1

    .line 356
    iget-object v0, p0, Landroidx/appcompat/app/b;->e:Landroidx/appcompat/b/a/d;

    .line 357
    iget-object v1, p0, Landroidx/appcompat/app/b;->d:Landroidx/g/a/a;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroidx/g/a/a;->g(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    iget v1, p0, Landroidx/appcompat/app/b;->j:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/appcompat/app/b;->i:I

    .line 356
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/b;->a(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1

    .line 360
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/b;->g:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/b;->a(Landroid/graphics/drawable/Drawable;I)V

    .line 362
    :goto_1
    iput-boolean p1, p0, Landroidx/appcompat/app/b;->a:Z

    :cond_2
    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 274
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x102002c

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Landroidx/appcompat/app/b;->a:Z

    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p0}, Landroidx/appcompat/app/b;->b()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method b()V
    .locals 3

    .line 282
    iget-object v0, p0, Landroidx/appcompat/app/b;->d:Landroidx/g/a/a;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroidx/g/a/a;->a(I)I

    move-result v0

    .line 283
    iget-object v2, p0, Landroidx/appcompat/app/b;->d:Landroidx/g/a/a;

    invoke-virtual {v2, v1}, Landroidx/g/a/a;->h(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 285
    iget-object p0, p0, Landroidx/appcompat/app/b;->d:Landroidx/g/a/a;

    invoke-virtual {p0, v1}, Landroidx/g/a/a;->f(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 287
    iget-object p0, p0, Landroidx/appcompat/app/b;->d:Landroidx/g/a/a;

    invoke-virtual {p0, v1}, Landroidx/g/a/a;->e(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 444
    invoke-direct {p0, p1}, Landroidx/appcompat/app/b;->a(F)V

    .line 445
    iget-boolean p1, p0, Landroidx/appcompat/app/b;->a:Z

    if-eqz p1, :cond_0

    .line 446
    iget p1, p0, Landroidx/appcompat/app/b;->i:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/b;->c(I)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 390
    iput-boolean p1, p0, Landroidx/appcompat/app/b;->f:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 392
    invoke-direct {p0, p1}, Landroidx/appcompat/app/b;->a(F)V

    :cond_0
    return-void
.end method

.method c(I)V
    .locals 0

    .line 499
    iget-object p0, p0, Landroidx/appcompat/app/b;->c:Landroidx/appcompat/app/b$a;

    invoke-interface {p0, p1}, Landroidx/appcompat/app/b$a;->a(I)V

    return-void
.end method

.method public c()Z
    .locals 0

    .line 340
    iget-boolean p0, p0, Landroidx/appcompat/app/b;->a:Z

    return p0
.end method

.method public d()Landroidx/appcompat/b/a/d;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 371
    iget-object p0, p0, Landroidx/appcompat/app/b;->e:Landroidx/appcompat/b/a/d;

    return-object p0
.end method

.method public e()Z
    .locals 0

    .line 400
    iget-boolean p0, p0, Landroidx/appcompat/app/b;->f:Z

    return p0
.end method

.method public f()Landroid/view/View$OnClickListener;
    .locals 0

    .line 471
    iget-object p0, p0, Landroidx/appcompat/app/b;->b:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method g()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 503
    iget-object p0, p0, Landroidx/appcompat/app/b;->c:Landroidx/appcompat/app/b$a;

    invoke-interface {p0}, Landroidx/appcompat/app/b$a;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
