.class Landroidx/appcompat/app/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/app/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/h;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h;)V
    .locals 0

    .line 3306
    iput-object p1, p0, Landroidx/appcompat/app/h$a;->a:Landroidx/appcompat/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 3312
    invoke-virtual {p0}, Landroidx/appcompat/app/h$a;->b()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Landroidx/appcompat/a$b;->homeAsUpIndicator:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x0

    .line 3311
    invoke-static {p0, v1, v0}, Landroidx/appcompat/widget/ba;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/ba;

    move-result-object p0

    .line 3313
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ba;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3314
    invoke-virtual {p0}, Landroidx/appcompat/widget/ba;->f()V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 3340
    iget-object p0, p0, Landroidx/appcompat/app/h$a;->a:Landroidx/appcompat/app/h;

    invoke-virtual {p0}, Landroidx/appcompat/app/h;->a()Landroidx/appcompat/app/a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3342
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a;->l(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 3331
    iget-object p0, p0, Landroidx/appcompat/app/h$a;->a:Landroidx/appcompat/app/h;

    invoke-virtual {p0}, Landroidx/appcompat/app/h;->a()Landroidx/appcompat/app/a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3333
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/a;->f(Landroid/graphics/drawable/Drawable;)V

    .line 3334
    invoke-virtual {p0, p2}, Landroidx/appcompat/app/a;->l(I)V

    :cond_0
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 0

    .line 3320
    iget-object p0, p0, Landroidx/appcompat/app/h$a;->a:Landroidx/appcompat/app/h;

    invoke-virtual {p0}, Landroidx/appcompat/app/h;->q()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public c()Z
    .locals 0

    .line 3325
    iget-object p0, p0, Landroidx/appcompat/app/h$a;->a:Landroidx/appcompat/app/h;

    invoke-virtual {p0}, Landroidx/appcompat/app/h;->a()Landroidx/appcompat/app/a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3326
    invoke-virtual {p0}, Landroidx/appcompat/app/a;->g()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
