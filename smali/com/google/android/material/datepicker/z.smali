.class Lcom/google/android/material/datepicker/z;
.super Landroidx/recyclerview/widget/RecyclerView$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/z$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$a<",
        "Lcom/google/android/material/datepicker/z$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/material/datepicker/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/k<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/k<",
            "*>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$a;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/android/material/datepicker/z;->a:Lcom/google/android/material/datepicker/k;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/z;)Lcom/google/android/material/datepicker/k;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/google/android/material/datepicker/z;->a:Lcom/google/android/material/datepicker/k;

    return-object p0
.end method

.method private h(I)Landroid/view/View$OnClickListener;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 84
    new-instance v0, Lcom/google/android/material/datepicker/z$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/datepicker/z$1;-><init>(Lcom/google/android/material/datepicker/z;I)V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/android/material/datepicker/z;->a:Lcom/google/android/material/datepicker/k;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/k;->b()Lcom/google/android/material/datepicker/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/a;->f()I

    move-result p0

    return p0
.end method

.method a(I)I
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/google/android/material/datepicker/z;->a:Lcom/google/android/material/datepicker/k;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/k;->b()Lcom/google/android/material/datepicker/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/a;->b()Lcom/google/android/material/datepicker/p;

    move-result-object p0

    iget p0, p0, Lcom/google/android/material/datepicker/p;->b:I

    sub-int/2addr p1, p0

    return p1
.end method

.method public synthetic a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$z;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/z;->c(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/z$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Landroidx/recyclerview/widget/RecyclerView$z;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$z;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 31
    check-cast p1, Lcom/google/android/material/datepicker/z$a;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/datepicker/z;->a(Lcom/google/android/material/datepicker/z$a;I)V

    return-void
.end method

.method public a(Lcom/google/android/material/datepicker/z$a;I)V
    .locals 8
    .param p1    # Lcom/google/android/material/datepicker/z$a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 61
    invoke-virtual {p0, p2}, Lcom/google/android/material/datepicker/z;->g(I)I

    move-result p2

    .line 62
    iget-object v0, p1, Lcom/google/android/material/datepicker/z$a;->E:Landroid/widget/TextView;

    .line 65
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$m;->mtrl_picker_navigate_to_year_description:I

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p1, Lcom/google/android/material/datepicker/z$a;->E:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v1, p1, Lcom/google/android/material/datepicker/z$a;->E:Landroid/widget/TextView;

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/material/datepicker/z;->a:Lcom/google/android/material/datepicker/k;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/k;->g()Lcom/google/android/material/datepicker/c;

    move-result-object v0

    .line 70
    invoke-static {}, Lcom/google/android/material/datepicker/y;->b()Ljava/util/Calendar;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v2, p2, :cond_0

    iget-object v2, v0, Lcom/google/android/material/datepicker/c;->f:Lcom/google/android/material/datepicker/b;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/google/android/material/datepicker/c;->d:Lcom/google/android/material/datepicker/b;

    .line 72
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/datepicker/z;->a:Lcom/google/android/material/datepicker/k;

    invoke-virtual {v3}, Lcom/google/android/material/datepicker/k;->e()Lcom/google/android/material/datepicker/f;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/material/datepicker/f;->c()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 73
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 74
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v5, p2, :cond_1

    .line 75
    iget-object v2, v0, Lcom/google/android/material/datepicker/c;->e:Lcom/google/android/material/datepicker/b;

    goto :goto_1

    .line 78
    :cond_2
    iget-object v0, p1, Lcom/google/android/material/datepicker/z$a;->E:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Lcom/google/android/material/datepicker/b;->a(Landroid/widget/TextView;)V

    .line 79
    iget-object p1, p1, Lcom/google/android/material/datepicker/z$a;->E:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/google/android/material/datepicker/z;->h(I)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c(Landroid/view/ViewGroup;I)Lcom/google/android/material/datepicker/z$a;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 54
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget p2, Lcom/google/android/material/a$k;->mtrl_calendar_year:I

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 56
    new-instance p1, Lcom/google/android/material/datepicker/z$a;

    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/z$a;-><init>(Landroid/widget/TextView;)V

    return-object p1
.end method

.method g(I)I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/google/android/material/datepicker/z;->a:Lcom/google/android/material/datepicker/k;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/k;->b()Lcom/google/android/material/datepicker/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/a;->b()Lcom/google/android/material/datepicker/p;

    move-result-object p0

    iget p0, p0, Lcom/google/android/material/datepicker/p;->b:I

    add-int/2addr p0, p1

    return p0
.end method
