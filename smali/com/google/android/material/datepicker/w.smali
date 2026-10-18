.class Lcom/google/android/material/datepicker/w;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# static fields
.field private static final a:F = 100.0f


# direct methods
.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$w;I)V
    .locals 0

    .line 40
    new-instance p2, Lcom/google/android/material/datepicker/w$1;

    .line 41
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/datepicker/w$1;-><init>(Lcom/google/android/material/datepicker/w;Landroid/content/Context;)V

    .line 48
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/q;->c(I)V

    .line 49
    invoke-virtual {p0, p2}, Lcom/google/android/material/datepicker/w;->a(Landroidx/recyclerview/widget/RecyclerView$v;)V

    return-void
.end method
