.class Landroidx/j/aq;
.super Landroidx/j/av;
.source "SourceFile"

# interfaces
.implements Landroidx/j/as;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroidx/j/av;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static a(Landroid/view/ViewGroup;)Landroidx/j/aq;
    .locals 0

    .line 32
    invoke-static {p0}, Landroidx/j/av;->d(Landroid/view/View;)Landroidx/j/av;

    move-result-object p0

    check-cast p0, Landroidx/j/aq;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 37
    iget-object p0, p0, Landroidx/j/aq;->a:Landroidx/j/av$a;

    invoke-virtual {p0, p1}, Landroidx/j/av$a;->a(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 42
    iget-object p0, p0, Landroidx/j/aq;->a:Landroidx/j/av$a;

    invoke-virtual {p0, p1}, Landroidx/j/av$a;->b(Landroid/view/View;)V

    return-void
.end method
