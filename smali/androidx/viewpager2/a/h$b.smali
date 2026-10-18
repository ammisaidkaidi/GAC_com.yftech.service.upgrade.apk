.class Landroidx/viewpager2/a/h$b;
.super Landroidx/viewpager2/a/h$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Landroidx/viewpager2/a/h;


# direct methods
.method constructor <init>(Landroidx/viewpager2/a/h;)V
    .locals 1

    .line 1288
    iput-object p1, p0, Landroidx/viewpager2/a/h$b;->b:Landroidx/viewpager2/a/h;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/viewpager2/a/h$a;-><init>(Landroidx/viewpager2/a/h;Landroidx/viewpager2/a/h$1;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/n/a/d;)V
    .locals 0
    .param p1    # Landroidx/core/n/a/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1307
    iget-object p0, p0, Landroidx/viewpager2/a/h$b;->b:Landroidx/viewpager2/a/h;

    invoke-virtual {p0}, Landroidx/viewpager2/a/h;->g()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1308
    sget-object p0, Landroidx/core/n/a/d$a;->n:Landroidx/core/n/a/d$a;

    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->b(Landroidx/core/n/a/d$a;)Z

    .line 1309
    sget-object p0, Landroidx/core/n/a/d$a;->m:Landroidx/core/n/a/d$a;

    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->b(Landroidx/core/n/a/d$a;)Z

    const/4 p0, 0x0

    .line 1310
    invoke-virtual {p1, p0}, Landroidx/core/n/a/d;->l(Z)V

    :cond_0
    return-void
.end method

.method public a(I)Z
    .locals 1

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    .line 1291
    :cond_0
    iget-object p0, p0, Landroidx/viewpager2/a/h$b;->b:Landroidx/viewpager2/a/h;

    .line 1293
    invoke-virtual {p0}, Landroidx/viewpager2/a/h;->g()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(I)Z
    .locals 0

    .line 1298
    invoke-virtual {p0, p1}, Landroidx/viewpager2/a/h$b;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1299
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public h()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public i()Ljava/lang/CharSequence;
    .locals 0

    .line 1321
    invoke-virtual {p0}, Landroidx/viewpager2/a/h$b;->h()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "androidx.viewpager.widget.ViewPager"

    return-object p0

    .line 1322
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
