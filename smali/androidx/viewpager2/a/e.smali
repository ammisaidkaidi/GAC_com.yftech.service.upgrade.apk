.class public final Landroidx/viewpager2/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager2/a/h$i;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Margin must be non-negative"

    .line 48
    invoke-static {p1, v0}, Landroidx/core/m/i;->a(ILjava/lang/String;)I

    .line 49
    iput p1, p0, Landroidx/viewpager2/a/e;->a:I

    return-void
.end method

.method private a(Landroid/view/View;)Landroidx/viewpager2/a/h;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 67
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 69
    instance-of p0, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_0

    instance-of p0, p1, Landroidx/viewpager2/a/h;

    if-eqz p0, :cond_0

    .line 70
    check-cast p1, Landroidx/viewpager2/a/h;

    return-object p1

    .line 73
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expected the page view to be managed by a ViewPager2 instance."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(Landroid/view/View;F)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 54
    invoke-direct {p0, p1}, Landroidx/viewpager2/a/e;->a(Landroid/view/View;)Landroidx/viewpager2/a/h;

    move-result-object v0

    .line 56
    iget p0, p0, Landroidx/viewpager2/a/e;->a:I

    int-to-float p0, p0

    mul-float/2addr p0, p2

    .line 58
    invoke-virtual {v0}, Landroidx/viewpager2/a/h;->getOrientation()I

    move-result p2

    if-nez p2, :cond_1

    .line 59
    invoke-virtual {v0}, Landroidx/viewpager2/a/h;->b()Z

    move-result p2

    if-eqz p2, :cond_0

    neg-float p0, p0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method
