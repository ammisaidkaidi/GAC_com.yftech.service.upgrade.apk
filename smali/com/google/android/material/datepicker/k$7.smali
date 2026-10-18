.class Lcom/google/android/material/datepicker/k$7;
.super Landroidx/recyclerview/widget/RecyclerView$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/k;->a(Landroid/view/View;Lcom/google/android/material/datepicker/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/r;

.field final synthetic b:Lcom/google/android/material/button/MaterialButton;

.field final synthetic c:Lcom/google/android/material/datepicker/k;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/k;Lcom/google/android/material/datepicker/r;Lcom/google/android/material/button/MaterialButton;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/google/android/material/datepicker/k$7;->c:Lcom/google/android/material/datepicker/k;

    iput-object p2, p0, Lcom/google/android/material/datepicker/k$7;->a:Lcom/google/android/material/datepicker/r;

    iput-object p3, p0, Lcom/google/android/material/datepicker/k$7;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    if-nez p2, :cond_1

    .line 408
    iget-object p0, p0, Lcom/google/android/material/datepicker/k$7;->b:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    .line 409
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p2, v0, :cond_0

    .line 410
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x800

    .line 412
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->sendAccessibilityEvent(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    if-gez p2, :cond_0

    .line 397
    iget-object p1, p0, Lcom/google/android/material/datepicker/k$7;->c:Lcom/google/android/material/datepicker/k;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/k;->i()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->u()I

    move-result p1

    goto :goto_0

    .line 399
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/k$7;->c:Lcom/google/android/material/datepicker/k;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/k;->i()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->w()I

    move-result p1

    .line 401
    :goto_0
    iget-object p2, p0, Lcom/google/android/material/datepicker/k$7;->c:Lcom/google/android/material/datepicker/k;

    iget-object p3, p0, Lcom/google/android/material/datepicker/k$7;->a:Lcom/google/android/material/datepicker/r;

    invoke-virtual {p3, p1}, Lcom/google/android/material/datepicker/r;->g(I)Lcom/google/android/material/datepicker/p;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/k;->a(Lcom/google/android/material/datepicker/k;Lcom/google/android/material/datepicker/p;)Lcom/google/android/material/datepicker/p;

    .line 402
    iget-object p2, p0, Lcom/google/android/material/datepicker/k$7;->b:Lcom/google/android/material/button/MaterialButton;

    iget-object p0, p0, Lcom/google/android/material/datepicker/k$7;->a:Lcom/google/android/material/datepicker/r;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/r;->a(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
