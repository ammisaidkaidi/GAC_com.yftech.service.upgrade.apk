.class Lcom/google/android/material/datepicker/r;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/google/android/material/datepicker/r$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/datepicker/a;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final b:Lcom/google/android/material/datepicker/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/f<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/material/datepicker/k$b;

.field private final d:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/material/datepicker/f;Lcom/google/android/material/datepicker/a;Lcom/google/android/material/datepicker/k$b;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/datepicker/a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/material/datepicker/f<",
            "*>;",
            "Lcom/google/android/material/datepicker/a;",
            "Lcom/google/android/material/datepicker/k$b;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 50
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/a;->b()Lcom/google/android/material/datepicker/p;

    move-result-object v0

    .line 51
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/a;->c()Lcom/google/android/material/datepicker/p;

    move-result-object v1

    .line 52
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/a;->d()Lcom/google/android/material/datepicker/p;

    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/p;->a(Lcom/google/android/material/datepicker/p;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 57
    invoke-virtual {v2, v1}, Lcom/google/android/material/datepicker/p;->a(Lcom/google/android/material/datepicker/p;)I

    move-result v0

    if-gtz v0, :cond_1

    .line 61
    sget v0, Lcom/google/android/material/datepicker/q;->a:I

    invoke-static {p1}, Lcom/google/android/material/datepicker/k;->b(Landroid/content/Context;)I

    move-result v1

    mul-int/2addr v0, v1

    .line 63
    invoke-static {p1}, Lcom/google/android/material/datepicker/l;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/google/android/material/datepicker/k;->b(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    add-int/2addr v0, p1

    .line 65
    iput v0, p0, Lcom/google/android/material/datepicker/r;->d:I

    .line 66
    iput-object p3, p0, Lcom/google/android/material/datepicker/r;->a:Lcom/google/android/material/datepicker/a;

    .line 67
    iput-object p2, p0, Lcom/google/android/material/datepicker/r;->b:Lcom/google/android/material/datepicker/f;

    .line 68
    iput-object p4, p0, Lcom/google/android/material/datepicker/r;->c:Lcom/google/android/material/datepicker/k$b;

    const/4 p1, 0x1

    .line 69
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/r;->a(Z)V

    return-void

    .line 58
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "currentPage cannot be after lastPage"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "firstPage cannot be after currentPage"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/r;)Lcom/google/android/material/datepicker/k$b;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/google/android/material/datepicker/r;->c:Lcom/google/android/material/datepicker/k$b;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/google/android/material/datepicker/r;->a:Lcom/google/android/material/datepicker/a;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/a;->e()I

    move-result p0

    return p0
.end method

.method a(Lcom/google/android/material/datepicker/p;)I
    .locals 0
    .param p1    # Lcom/google/android/material/datepicker/p;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 150
    iget-object p0, p0, Lcom/google/android/material/datepicker/r;->a:Lcom/google/android/material/datepicker/a;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/a;->b()Lcom/google/android/material/datepicker/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/p;->b(Lcom/google/android/material/datepicker/p;)I

    move-result p0

    return p0
.end method

.method public synthetic a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$z;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/r;->c(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/r$a;

    move-result-object p0

    return-object p0
.end method

.method a(I)Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 141
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/r;->g(I)Lcom/google/android/material/datepicker/p;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/p;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$z;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 38
    check-cast p1, Lcom/google/android/material/datepicker/r$a;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/r;->a(Lcom/google/android/material/datepicker/r$a;I)V

    return-void
.end method

.method public a(Lcom/google/android/material/datepicker/r$a;I)V
    .locals 3
    .param p1    # Lcom/google/android/material/datepicker/r$a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 106
    iget-object v0, p0, Lcom/google/android/material/datepicker/r;->a:Lcom/google/android/material/datepicker/a;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a;->b()Lcom/google/android/material/datepicker/p;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/material/datepicker/p;->b(I)Lcom/google/android/material/datepicker/p;

    move-result-object p2

    .line 107
    iget-object v0, p1, Lcom/google/android/material/datepicker/r$a;->E:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/p;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p1, p1, Lcom/google/android/material/datepicker/r$a;->F:Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    sget v0, Lcom/google/android/material/a$h;->month_grid:I

    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/MaterialCalendarGridView;

    .line 110
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/q;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/p;

    invoke-virtual {p2, v0}, Lcom/google/android/material/datepicker/p;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Lcom/google/android/material/datepicker/q;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/q;->notifyDataSetChanged()V

    goto :goto_0

    .line 113
    :cond_0
    new-instance v0, Lcom/google/android/material/datepicker/q;

    iget-object v1, p0, Lcom/google/android/material/datepicker/r;->b:Lcom/google/android/material/datepicker/f;

    iget-object v2, p0, Lcom/google/android/material/datepicker/r;->a:Lcom/google/android/material/datepicker/a;

    invoke-direct {v0, p2, v1, v2}, Lcom/google/android/material/datepicker/q;-><init>(Lcom/google/android/material/datepicker/p;Lcom/google/android/material/datepicker/f;Lcom/google/android/material/datepicker/a;)V

    .line 114
    iget p2, p2, Lcom/google/android/material/datepicker/p;->c:I

    invoke-virtual {p1, p2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setNumColumns(I)V

    .line 115
    invoke-virtual {p1, v0}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    :goto_0
    new-instance p2, Lcom/google/android/material/datepicker/r$1;

    invoke-direct {p2, p0, p1}, Lcom/google/android/material/datepicker/r$1;-><init>(Lcom/google/android/material/datepicker/r;Lcom/google/android/material/datepicker/MaterialCalendarGridView;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public c(I)J
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/google/android/material/datepicker/r;->a:Lcom/google/android/material/datepicker/a;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/a;->b()Lcom/google/android/material/datepicker/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/p;->b(I)Lcom/google/android/material/datepicker/p;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/p;->c()J

    move-result-wide p0

    return-wide p0
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/r$a;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 93
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/google/android/material/a$k;->mtrl_calendar_month_labeled:I

    const/4 v1, 0x0

    .line 94
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 96
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/material/datepicker/l;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    new-instance p1, Landroidx/recyclerview/widget/RecyclerView$j;

    const/4 v0, -0x1

    iget p0, p0, Lcom/google/android/material/datepicker/r;->d:I

    invoke-direct {p1, v0, p0}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    new-instance p0, Lcom/google/android/material/datepicker/r$a;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/google/android/material/datepicker/r$a;-><init>(Landroid/widget/LinearLayout;Z)V

    return-object p0

    .line 100
    :cond_0
    new-instance p0, Lcom/google/android/material/datepicker/r$a;

    invoke-direct {p0, p2, v1}, Lcom/google/android/material/datepicker/r$a;-><init>(Landroid/widget/LinearLayout;Z)V

    return-object p0
.end method

.method g(I)Lcom/google/android/material/datepicker/p;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 146
    iget-object p0, p0, Lcom/google/android/material/datepicker/r;->a:Lcom/google/android/material/datepicker/a;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/a;->b()Lcom/google/android/material/datepicker/p;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/p;->b(I)Lcom/google/android/material/datepicker/p;

    move-result-object p0

    return-object p0
.end method
