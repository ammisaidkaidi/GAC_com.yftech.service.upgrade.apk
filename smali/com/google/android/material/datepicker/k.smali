.class public final Lcom/google/android/material/datepicker/k;
.super Lcom/google/android/material/datepicker/t;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/k$b;,
        Lcom/google/android/material/datepicker/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/t<",
        "TS;>;"
    }
.end annotation


# static fields
.field static final a:Ljava/lang/Object;
    .annotation build Landroidx/annotation/ax;
    .end annotation
.end field

.field static final b:Ljava/lang/Object;
    .annotation build Landroidx/annotation/ax;
    .end annotation
.end field

.field static final c:Ljava/lang/Object;
    .annotation build Landroidx/annotation/ax;
    .end annotation
.end field

.field static final d:Ljava/lang/Object;
    .annotation build Landroidx/annotation/ax;
    .end annotation
.end field

.field private static final f:Ljava/lang/String; = "THEME_RES_ID_KEY"

.field private static final g:Ljava/lang/String; = "GRID_SELECTOR_KEY"

.field private static final h:Ljava/lang/String; = "CALENDAR_CONSTRAINTS_KEY"

.field private static final i:Ljava/lang/String; = "CURRENT_MONTH_KEY"

.field private static final j:I = 0x3


# instance fields
.field private an:Lcom/google/android/material/datepicker/p;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private ao:Lcom/google/android/material/datepicker/k$a;

.field private ap:Lcom/google/android/material/datepicker/c;

.field private aq:Landroidx/recyclerview/widget/RecyclerView;

.field private ar:Landroidx/recyclerview/widget/RecyclerView;

.field private as:Landroid/view/View;

.field private at:Landroid/view/View;

.field private k:I

.field private l:Lcom/google/android/material/datepicker/f;
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/f<",
            "TS;>;"
        }
    .end annotation
.end field

.field private m:Lcom/google/android/material/datepicker/a;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    .line 73
    sput-object v0, Lcom/google/android/material/datepicker/k;->a:Ljava/lang/Object;

    const-string v0, "NAVIGATION_PREV_TAG"

    .line 75
    sput-object v0, Lcom/google/android/material/datepicker/k;->b:Ljava/lang/Object;

    const-string v0, "NAVIGATION_NEXT_TAG"

    .line 77
    sput-object v0, Lcom/google/android/material/datepicker/k;->c:Ljava/lang/Object;

    const-string v0, "SELECTOR_TOGGLE_TAG"

    .line 79
    sput-object v0, Lcom/google/android/material/datepicker/k;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/google/android/material/datepicker/t;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/k;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/android/material/datepicker/k;->ar:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static a(Lcom/google/android/material/datepicker/f;ILcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/k;
    .locals 3
    .param p2    # Lcom/google/android/material/datepicker/a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/f<",
            "TT;>;I",
            "Lcom/google/android/material/datepicker/a;",
            ")",
            "Lcom/google/android/material/datepicker/k<",
            "TT;>;"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/google/android/material/datepicker/k;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/k;-><init>()V

    .line 98
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "THEME_RES_ID_KEY"

    .line 99
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "GRID_SELECTOR_KEY"

    .line 100
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "CALENDAR_CONSTRAINTS_KEY"

    .line 101
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "CURRENT_MONTH_KEY"

    .line 102
    invoke-virtual {p2}, Lcom/google/android/material/datepicker/a;->d()Lcom/google/android/material/datepicker/p;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 103
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/k;->g(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/k;Lcom/google/android/material/datepicker/p;)Lcom/google/android/material/datepicker/p;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/android/material/datepicker/k;->an:Lcom/google/android/material/datepicker/p;

    return-object p1
.end method

.method private a(Landroid/view/View;Lcom/google/android/material/datepicker/r;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/datepicker/r;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 365
    sget v0, Lcom/google/android/material/a$h;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    .line 366
    sget-object v1, Lcom/google/android/material/datepicker/k;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    .line 367
    new-instance v1, Lcom/google/android/material/datepicker/k$6;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/k$6;-><init>(Lcom/google/android/material/datepicker/k;)V

    invoke-static {v0, v1}, Landroidx/core/n/af;->a(Landroid/view/View;Landroidx/core/n/a;)V

    .line 382
    sget v1, Lcom/google/android/material/a$h;->month_navigation_previous:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 383
    sget-object v2, Lcom/google/android/material/datepicker/k;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    .line 384
    sget v2, Lcom/google/android/material/a$h;->month_navigation_next:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 385
    sget-object v3, Lcom/google/android/material/datepicker/k;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/android/material/button/MaterialButton;->setTag(Ljava/lang/Object;)V

    .line 387
    sget v3, Lcom/google/android/material/a$h;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/material/datepicker/k;->as:Landroid/view/View;

    .line 388
    sget v3, Lcom/google/android/material/a$h;->mtrl_calendar_day_selector_frame:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/k;->at:Landroid/view/View;

    .line 389
    sget-object p1, Lcom/google/android/material/datepicker/k$a;->a:Lcom/google/android/material/datepicker/k$a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/k;->a(Lcom/google/android/material/datepicker/k$a;)V

    .line 390
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->an:Lcom/google/android/material/datepicker/p;

    invoke-virtual {p1}, Lcom/google/android/material/datepicker/p;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->ar:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/google/android/material/datepicker/k$7;

    invoke-direct {v3, p0, p2, v0}, Lcom/google/android/material/datepicker/k$7;-><init>(Lcom/google/android/material/datepicker/k;Lcom/google/android/material/datepicker/r;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 418
    new-instance p1, Lcom/google/android/material/datepicker/k$8;

    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/k$8;-><init>(Lcom/google/android/material/datepicker/k;)V

    invoke-virtual {v0, p1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    new-instance p1, Lcom/google/android/material/datepicker/k$9;

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/datepicker/k$9;-><init>(Lcom/google/android/material/datepicker/k;Lcom/google/android/material/datepicker/r;)V

    invoke-virtual {v2, p1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    new-instance p1, Lcom/google/android/material/datepicker/k$10;

    invoke-direct {p1, p0, p2}, Lcom/google/android/material/datepicker/k$10;-><init>(Lcom/google/android/material/datepicker/k;Lcom/google/android/material/datepicker/r;)V

    invoke-virtual {v1, p1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private aK()Landroidx/recyclerview/widget/RecyclerView$h;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 231
    new-instance v0, Lcom/google/android/material/datepicker/k$5;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/k$5;-><init>(Lcom/google/android/material/datepicker/k;)V

    return-object v0
.end method

.method static b(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ak;
    .end annotation

    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/google/android/material/a$f;->mtrl_calendar_day_height:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/datepicker/k;)Lcom/google/android/material/datepicker/a;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/android/material/datepicker/k;->m:Lcom/google/android/material/datepicker/a;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/material/datepicker/k;)Lcom/google/android/material/datepicker/f;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/android/material/datepicker/k;->l:Lcom/google/android/material/datepicker/f;

    return-object p0
.end method

.method static synthetic d(Lcom/google/android/material/datepicker/k;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/android/material/datepicker/k;->aq:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/material/datepicker/k;)Lcom/google/android/material/datepicker/c;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/android/material/datepicker/k;->ap:Lcom/google/android/material/datepicker/c;

    return-object p0
.end method

.method private e(I)V
    .locals 2

    .line 449
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->ar:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/android/material/datepicker/k$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/material/datepicker/k$2;-><init>(Lcom/google/android/material/datepicker/k;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic f(Lcom/google/android/material/datepicker/k;)Landroid/view/View;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/android/material/datepicker/k;->at:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 132
    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/k;->y()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/datepicker/k;->k:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 133
    new-instance v0, Lcom/google/android/material/datepicker/c;

    invoke-direct {v0, p3}, Lcom/google/android/material/datepicker/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/datepicker/k;->ap:Lcom/google/android/material/datepicker/c;

    .line 134
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 136
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->m:Lcom/google/android/material/datepicker/a;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a;->b()Lcom/google/android/material/datepicker/p;

    move-result-object v0

    .line 140
    invoke-static {p3}, Lcom/google/android/material/datepicker/l;->b(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 141
    sget v1, Lcom/google/android/material/a$k;->mtrl_calendar_vertical:I

    move v9, v2

    goto :goto_0

    .line 144
    :cond_0
    sget v1, Lcom/google/android/material/a$k;->mtrl_calendar_horizontal:I

    move v9, v3

    .line 148
    :goto_0
    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 149
    sget p2, Lcom/google/android/material/a$h;->mtrl_calendar_days_of_week:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    .line 150
    new-instance v1, Lcom/google/android/material/datepicker/k$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/k$1;-><init>(Lcom/google/android/material/datepicker/k;)V

    invoke-static {p2, v1}, Landroidx/core/n/af;->a(Landroid/view/View;Landroidx/core/n/a;)V

    .line 161
    new-instance v1, Lcom/google/android/material/datepicker/j;

    invoke-direct {v1}, Lcom/google/android/material/datepicker/j;-><init>()V

    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    iget v0, v0, Lcom/google/android/material/datepicker/p;->c:I

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 163
    invoke-virtual {p2, v3}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 165
    sget p2, Lcom/google/android/material/a$h;->mtrl_calendar_months:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/google/android/material/datepicker/k;->ar:Landroidx/recyclerview/widget/RecyclerView;

    .line 167
    new-instance p2, Lcom/google/android/material/datepicker/k$3;

    .line 168
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/k;->y()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p0

    move v7, v9

    invoke-direct/range {v4 .. v9}, Lcom/google/android/material/datepicker/k$3;-><init>(Lcom/google/android/material/datepicker/k;Landroid/content/Context;IZI)V

    .line 180
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->ar:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 181
    iget-object p2, p0, Lcom/google/android/material/datepicker/k;->ar:Landroidx/recyclerview/widget/RecyclerView;

    sget-object v0, Lcom/google/android/material/datepicker/k;->a:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 183
    new-instance p2, Lcom/google/android/material/datepicker/r;

    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->l:Lcom/google/android/material/datepicker/f;

    iget-object v1, p0, Lcom/google/android/material/datepicker/k;->m:Lcom/google/android/material/datepicker/a;

    new-instance v4, Lcom/google/android/material/datepicker/k$4;

    invoke-direct {v4, p0}, Lcom/google/android/material/datepicker/k$4;-><init>(Lcom/google/android/material/datepicker/k;)V

    invoke-direct {p2, p3, v0, v1, v4}, Lcom/google/android/material/datepicker/r;-><init>(Landroid/content/Context;Lcom/google/android/material/datepicker/f;Lcom/google/android/material/datepicker/a;Lcom/google/android/material/datepicker/k$b;)V

    .line 205
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->ar:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 208
    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$i;->mtrl_calendar_year_selector_span:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 209
    sget v1, Lcom/google/android/material/a$h;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v1, p0, Lcom/google/android/material/datepicker/k;->aq:Landroidx/recyclerview/widget/RecyclerView;

    .line 210
    iget-object v1, p0, Lcom/google/android/material/datepicker/k;->aq:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/google/android/material/datepicker/k;->aq:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 212
    iget-object v1, p0, Lcom/google/android/material/datepicker/k;->aq:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v4, p3, v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 214
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->aq:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/google/android/material/datepicker/z;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/z;-><init>(Lcom/google/android/material/datepicker/k;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 215
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->aq:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Lcom/google/android/material/datepicker/k;->aK()Landroidx/recyclerview/widget/RecyclerView$h;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;)V

    .line 218
    :cond_1
    sget v0, Lcom/google/android/material/a$h;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/datepicker/k;->a(Landroid/view/View;Lcom/google/android/material/datepicker/r;)V

    .line 222
    :cond_2
    invoke-static {p3}, Lcom/google/android/material/datepicker/l;->b(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 223
    new-instance p3, Landroidx/recyclerview/widget/r;

    invoke-direct {p3}, Landroidx/recyclerview/widget/r;-><init>()V

    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->ar:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Landroidx/recyclerview/widget/r;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 225
    :cond_3
    iget-object p3, p0, Lcom/google/android/material/datepicker/k;->ar:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/google/android/material/datepicker/k;->an:Lcom/google/android/material/datepicker/p;

    invoke-virtual {p2, p0}, Lcom/google/android/material/datepicker/r;->a(Lcom/google/android/material/datepicker/p;)I

    move-result p0

    invoke-virtual {p3, p0}, Landroidx/recyclerview/widget/RecyclerView;->e(I)V

    return-object p1
.end method

.method a()Lcom/google/android/material/datepicker/p;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 283
    iget-object p0, p0, Lcom/google/android/material/datepicker/k;->an:Lcom/google/android/material/datepicker/p;

    return-object p0
.end method

.method a(Lcom/google/android/material/datepicker/k$a;)V
    .locals 4

    .line 338
    iput-object p1, p0, Lcom/google/android/material/datepicker/k;->ao:Lcom/google/android/material/datepicker/k$a;

    .line 339
    sget-object v0, Lcom/google/android/material/datepicker/k$a;->b:Lcom/google/android/material/datepicker/k$a;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 340
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->aq:Landroidx/recyclerview/widget/RecyclerView;

    .line 341
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->aq:Landroidx/recyclerview/widget/RecyclerView;

    .line 343
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/z;

    iget-object v3, p0, Lcom/google/android/material/datepicker/k;->an:Lcom/google/android/material/datepicker/p;

    iget v3, v3, Lcom/google/android/material/datepicker/p;->b:I

    invoke-virtual {v0, v3}, Lcom/google/android/material/datepicker/z;->a(I)I

    move-result v0

    .line 342
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$i;->e(I)V

    .line 344
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->as:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    iget-object p0, p0, Lcom/google/android/material/datepicker/k;->at:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 346
    :cond_0
    sget-object v0, Lcom/google/android/material/datepicker/k$a;->a:Lcom/google/android/material/datepicker/k$a;

    if-ne p1, v0, :cond_1

    .line 347
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->as:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->at:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 351
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->an:Lcom/google/android/material/datepicker/p;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/k;->a(Lcom/google/android/material/datepicker/p;)V

    :cond_1
    :goto_0
    return-void
.end method

.method a(Lcom/google/android/material/datepicker/p;)V
    .locals 6

    .line 299
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->ar:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/r;

    .line 300
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/r;->a(Lcom/google/android/material/datepicker/p;)I

    move-result v1

    .line 301
    iget-object v2, p0, Lcom/google/android/material/datepicker/k;->an:Lcom/google/android/material/datepicker/p;

    invoke-virtual {v0, v2}, Lcom/google/android/material/datepicker/r;->a(Lcom/google/android/material/datepicker/p;)I

    move-result v0

    sub-int v0, v1, v0

    .line 302
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-le v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-lez v0, :cond_1

    move v3, v4

    .line 304
    :cond_1
    iput-object p1, p0, Lcom/google/android/material/datepicker/k;->an:Lcom/google/android/material/datepicker/p;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 306
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->ar:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, -0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->e(I)V

    .line 307
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/k;->e(I)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 309
    iget-object p1, p0, Lcom/google/android/material/datepicker/k;->ar:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, 0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->e(I)V

    .line 310
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/k;->e(I)V

    goto :goto_1

    .line 312
    :cond_3
    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/k;->e(I)V

    :goto_1
    return-void
.end method

.method b()Lcom/google/android/material/datepicker/a;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 289
    iget-object p0, p0, Lcom/google/android/material/datepicker/k;->m:Lcom/google/android/material/datepicker/a;

    return-object p0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 118
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/t;->b(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/k;->t()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    .line 120
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/k;->k:I

    const-string v0, "GRID_SELECTOR_KEY"

    .line 121
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/f;

    iput-object v0, p0, Lcom/google/android/material/datepicker/k;->l:Lcom/google/android/material/datepicker/f;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 122
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/a;

    iput-object v0, p0, Lcom/google/android/material/datepicker/k;->m:Lcom/google/android/material/datepicker/a;

    const-string v0, "CURRENT_MONTH_KEY"

    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/p;

    iput-object p1, p0, Lcom/google/android/material/datepicker/k;->an:Lcom/google/android/material/datepicker/p;

    return-void
.end method

.method public e()Lcom/google/android/material/datepicker/f;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/f<",
            "TS;>;"
        }
    .end annotation

    .line 319
    iget-object p0, p0, Lcom/google/android/material/datepicker/k;->l:Lcom/google/android/material/datepicker/f;

    return-object p0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 109
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/t;->e(Landroid/os/Bundle;)V

    const-string v0, "THEME_RES_ID_KEY"

    .line 110
    iget v1, p0, Lcom/google/android/material/datepicker/k;->k:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "GRID_SELECTOR_KEY"

    .line 111
    iget-object v1, p0, Lcom/google/android/material/datepicker/k;->l:Lcom/google/android/material/datepicker/f;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 112
    iget-object v1, p0, Lcom/google/android/material/datepicker/k;->m:Lcom/google/android/material/datepicker/a;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CURRENT_MONTH_KEY"

    .line 113
    iget-object p0, p0, Lcom/google/android/material/datepicker/k;->an:Lcom/google/android/material/datepicker/p;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method g()Lcom/google/android/material/datepicker/c;
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/google/android/material/datepicker/k;->ap:Lcom/google/android/material/datepicker/c;

    return-object p0
.end method

.method h()V
    .locals 2

    .line 356
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->ao:Lcom/google/android/material/datepicker/k$a;

    sget-object v1, Lcom/google/android/material/datepicker/k$a;->b:Lcom/google/android/material/datepicker/k$a;

    if-ne v0, v1, :cond_0

    .line 357
    sget-object v0, Lcom/google/android/material/datepicker/k$a;->a:Lcom/google/android/material/datepicker/k$a;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/k;->a(Lcom/google/android/material/datepicker/k$a;)V

    goto :goto_0

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/k;->ao:Lcom/google/android/material/datepicker/k$a;

    sget-object v1, Lcom/google/android/material/datepicker/k$a;->a:Lcom/google/android/material/datepicker/k$a;

    if-ne v0, v1, :cond_1

    .line 359
    sget-object v0, Lcom/google/android/material/datepicker/k$a;->b:Lcom/google/android/material/datepicker/k$a;

    invoke-virtual {p0, v0}, Lcom/google/android/material/datepicker/k;->a(Lcom/google/android/material/datepicker/k$a;)V

    :cond_1
    :goto_0
    return-void
.end method

.method i()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 460
    iget-object p0, p0, Lcom/google/android/material/datepicker/k;->ar:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$i;

    move-result-object p0

    check-cast p0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object p0
.end method
