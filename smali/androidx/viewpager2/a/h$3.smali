.class Landroidx/viewpager2/a/h$3;
.super Landroidx/viewpager2/a/h$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager2/a/h;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager2/a/h;


# direct methods
.method constructor <init>(Landroidx/viewpager2/a/h;)V
    .locals 0

    .line 230
    iput-object p1, p0, Landroidx/viewpager2/a/h$3;->a:Landroidx/viewpager2/a/h;

    invoke-direct {p0}, Landroidx/viewpager2/a/h$f;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 0

    .line 233
    iget-object p1, p0, Landroidx/viewpager2/a/h$3;->a:Landroidx/viewpager2/a/h;

    invoke-virtual {p1}, Landroidx/viewpager2/a/h;->clearFocus()V

    .line 234
    iget-object p1, p0, Landroidx/viewpager2/a/h$3;->a:Landroidx/viewpager2/a/h;

    invoke-virtual {p1}, Landroidx/viewpager2/a/h;->hasFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 235
    iget-object p0, p0, Landroidx/viewpager2/a/h$3;->a:Landroidx/viewpager2/a/h;

    iget-object p0, p0, Landroidx/viewpager2/a/h;->j:Landroidx/recyclerview/widget/RecyclerView;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->requestFocus(I)Z

    :cond_0
    return-void
.end method
