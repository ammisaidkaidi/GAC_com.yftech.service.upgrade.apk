.class Lcom/google/android/material/datepicker/k$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic b:Lcom/google/android/material/datepicker/k;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/k;Lcom/google/android/material/datepicker/r;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/google/android/material/datepicker/k$9;->b:Lcom/google/android/material/datepicker/k;

    iput-object p2, p0, Lcom/google/android/material/datepicker/k$9;->a:Lcom/google/android/material/datepicker/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 430
    iget-object p1, p0, Lcom/google/android/material/datepicker/k$9;->b:Lcom/google/android/material/datepicker/k;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/k;->i()Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->u()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 431
    iget-object v0, p0, Lcom/google/android/material/datepicker/k$9;->b:Lcom/google/android/material/datepicker/k;

    invoke-static {v0}, Lcom/google/android/material/datepicker/k;->a(Lcom/google/android/material/datepicker/k;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$a;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/google/android/material/datepicker/k$9;->b:Lcom/google/android/material/datepicker/k;

    iget-object p0, p0, Lcom/google/android/material/datepicker/k$9;->a:Lcom/google/android/material/datepicker/r;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/r;->g(I)Lcom/google/android/material/datepicker/p;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/datepicker/k;->a(Lcom/google/android/material/datepicker/p;)V

    :cond_0
    return-void
.end method
