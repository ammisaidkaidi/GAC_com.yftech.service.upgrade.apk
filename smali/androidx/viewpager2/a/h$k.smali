.class Landroidx/viewpager2/a/h$k;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "k"
.end annotation


# instance fields
.field final synthetic al:Landroidx/viewpager2/a/h;


# direct methods
.method constructor <init>(Landroidx/viewpager2/a/h;Landroid/content/Context;)V
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 967
    iput-object p1, p0, Landroidx/viewpager2/a/h$k;->al:Landroidx/viewpager2/a/h;

    .line 968
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/am;
        a = 0x17
    .end annotation

    .line 974
    iget-object v0, p0, Landroidx/viewpager2/a/h$k;->al:Landroidx/viewpager2/a/h;

    iget-object v0, v0, Landroidx/viewpager2/a/h;->l:Landroidx/viewpager2/a/h$a;

    invoke-virtual {v0}, Landroidx/viewpager2/a/h$a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    iget-object p0, p0, Landroidx/viewpager2/a/h$k;->al:Landroidx/viewpager2/a/h;

    iget-object p0, p0, Landroidx/viewpager2/a/h;->l:Landroidx/viewpager2/a/h$a;

    invoke-virtual {p0}, Landroidx/viewpager2/a/h$a;->i()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 977
    :cond_0
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 982
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 983
    iget-object v0, p0, Landroidx/viewpager2/a/h$k;->al:Landroidx/viewpager2/a/h;

    iget v0, v0, Landroidx/viewpager2/a/h;->h:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 984
    iget-object v0, p0, Landroidx/viewpager2/a/h$k;->al:Landroidx/viewpager2/a/h;

    iget v0, v0, Landroidx/viewpager2/a/h;->h:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 985
    iget-object p0, p0, Landroidx/viewpager2/a/h$k;->al:Landroidx/viewpager2/a/h;

    iget-object p0, p0, Landroidx/viewpager2/a/h;->l:Landroidx/viewpager2/a/h$a;

    invoke-virtual {p0, p1}, Landroidx/viewpager2/a/h$a;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 996
    iget-object v0, p0, Landroidx/viewpager2/a/h$k;->al:Landroidx/viewpager2/a/h;

    invoke-virtual {v0}, Landroidx/viewpager2/a/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 991
    iget-object v0, p0, Landroidx/viewpager2/a/h$k;->al:Landroidx/viewpager2/a/h;

    invoke-virtual {v0}, Landroidx/viewpager2/a/h;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
