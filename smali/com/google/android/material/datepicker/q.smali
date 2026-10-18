.class Lcom/google/android/material/datepicker/q;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field static final a:I


# instance fields
.field final b:Lcom/google/android/material/datepicker/p;

.field final c:Lcom/google/android/material/datepicker/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/f<",
            "*>;"
        }
    .end annotation
.end field

.field d:Lcom/google/android/material/datepicker/c;

.field final e:Lcom/google/android/material/datepicker/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    invoke-static {}, Lcom/google/android/material/datepicker/y;->c()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Lcom/google/android/material/datepicker/q;->a:I

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/datepicker/p;Lcom/google/android/material/datepicker/f;Lcom/google/android/material/datepicker/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/p;",
            "Lcom/google/android/material/datepicker/f<",
            "*>;",
            "Lcom/google/android/material/datepicker/a;",
            ")V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/p;

    .line 54
    iput-object p2, p0, Lcom/google/android/material/datepicker/q;->c:Lcom/google/android/material/datepicker/f;

    .line 55
    iput-object p3, p0, Lcom/google/android/material/datepicker/q;->e:Lcom/google/android/material/datepicker/a;

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/android/material/datepicker/q;->d:Lcom/google/android/material/datepicker/c;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/google/android/material/datepicker/c;

    invoke-direct {v0, p1}, Lcom/google/android/material/datepicker/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/q;->d:Lcom/google/android/material/datepicker/c;

    :cond_0
    return-void
.end method


# virtual methods
.method a()I
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/p;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/p;->b()I

    move-result p0

    return p0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 5
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 101
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/q;->a(Landroid/content/Context;)V

    .line 102
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 104
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 105
    sget v0, Lcom/google/android/material/a$k;->mtrl_calendar_day:I

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/q;->a()I

    move-result p2

    sub-int p2, p1, p2

    const/4 p3, 0x1

    if-ltz p2, :cond_3

    .line 108
    iget-object v2, p0, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/p;

    iget v2, v2, Lcom/google/android/material/datepicker/p;->d:I

    if-lt p2, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr p2, p3

    .line 114
    iget-object v2, p0, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/p;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 115
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v2, p0, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/p;

    invoke-virtual {v2, p2}, Lcom/google/android/material/datepicker/p;->a(I)J

    move-result-wide v2

    .line 117
    iget-object p2, p0, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/p;

    iget p2, p2, Lcom/google/android/material/datepicker/p;->b:I

    invoke-static {}, Lcom/google/android/material/datepicker/p;->a()Lcom/google/android/material/datepicker/p;

    move-result-object v4

    iget v4, v4, Lcom/google/android/material/datepicker/p;->b:I

    if-ne p2, v4, :cond_2

    .line 118
    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/g;->c(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 120
    :cond_2
    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/g;->d(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 122
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    :cond_3
    :goto_1
    const/16 p2, 0x8

    .line 109
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 126
    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/q;->a(I)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_4

    return-object v0

    .line 130
    :cond_4
    iget-object p2, p0, Lcom/google/android/material/datepicker/q;->e:Lcom/google/android/material/datepicker/a;

    invoke-virtual {p2}, Lcom/google/android/material/datepicker/a;->a()Lcom/google/android/material/datepicker/a$b;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p2, v2, v3}, Lcom/google/android/material/datepicker/a$b;->a(J)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 131
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 132
    iget-object p2, p0, Lcom/google/android/material/datepicker/q;->c:Lcom/google/android/material/datepicker/f;

    invoke-interface {p2}, Lcom/google/android/material/datepicker/f;->c()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/material/datepicker/y;->a(J)J

    move-result-wide v3

    invoke-static {v1, v2}, Lcom/google/android/material/datepicker/y;->a(J)J

    move-result-wide v1

    cmp-long p3, v3, v1

    if-nez p3, :cond_5

    .line 134
    iget-object p0, p0, Lcom/google/android/material/datepicker/q;->d:Lcom/google/android/material/datepicker/c;

    iget-object p0, p0, Lcom/google/android/material/datepicker/c;->b:Lcom/google/android/material/datepicker/b;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/b;->a(Landroid/widget/TextView;)V

    return-object v0

    .line 139
    :cond_6
    invoke-static {}, Lcom/google/android/material/datepicker/y;->b()Ljava/util/Calendar;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long p1, p2, v1

    if-nez p1, :cond_7

    .line 140
    iget-object p0, p0, Lcom/google/android/material/datepicker/q;->d:Lcom/google/android/material/datepicker/c;

    iget-object p0, p0, Lcom/google/android/material/datepicker/c;->c:Lcom/google/android/material/datepicker/b;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/b;->a(Landroid/widget/TextView;)V

    return-object v0

    .line 143
    :cond_7
    iget-object p0, p0, Lcom/google/android/material/datepicker/q;->d:Lcom/google/android/material/datepicker/c;

    iget-object p0, p0, Lcom/google/android/material/datepicker/c;->a:Lcom/google/android/material/datepicker/b;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/b;->a(Landroid/widget/TextView;)V

    return-object v0

    .line 147
    :cond_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 148
    iget-object p0, p0, Lcom/google/android/material/datepicker/q;->d:Lcom/google/android/material/datepicker/c;

    iget-object p0, p0, Lcom/google/android/material/datepicker/c;->g:Lcom/google/android/material/datepicker/b;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/b;->a(Landroid/widget/TextView;)V

    return-object v0
.end method

.method public a(I)Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/p;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/p;->b()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/q;->b()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/p;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/q;->b(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/datepicker/p;->a(I)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method b()I
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/p;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/p;->b()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/p;

    iget p0, p0, Lcom/google/android/material/datepicker/p;->d:I

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method b(I)I
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/p;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/p;->b()I

    move-result p0

    sub-int/2addr p1, p0

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method c(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    .line 195
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/q;->a()I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method d(I)Z
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/q;->a()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/q;->b()I

    move-result p0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method e(I)Z
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/p;

    iget p0, p0, Lcom/google/android/material/datepicker/p;->c:I

    rem-int/2addr p1, p0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method f(I)Z
    .locals 1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 216
    iget-object p0, p0, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/p;

    iget p0, p0, Lcom/google/android/material/datepicker/p;->c:I

    rem-int/2addr p1, p0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCount()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/p;

    iget v0, v0, Lcom/google/android/material/datepicker/p;->d:I

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/q;->a()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/q;->a(I)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/google/android/material/datepicker/q;->b:Lcom/google/android/material/datepicker/p;

    iget p0, p0, Lcom/google/android/material/datepicker/p;->c:I

    div-int/2addr p1, p0

    int-to-long p0, p1

    return-wide p0
.end method

.method public synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/q;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
