.class public Lcom/google/android/material/datepicker/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/datepicker/f;


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/material/datepicker/f<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/v;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/Long;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 165
    new-instance v0, Lcom/google/android/material/datepicker/v$2;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/v$2;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/v;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/v;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/google/android/material/datepicker/v;->a:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/v;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/datepicker/v;->g()V

    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/google/android/material/datepicker/v;->a:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/a;Lcom/google/android/material/datepicker/s;)Landroid/view/View;
    .locals 7
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
    .param p5    # Lcom/google/android/material/datepicker/s;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "Landroid/os/Bundle;",
            "Lcom/google/android/material/datepicker/a;",
            "Lcom/google/android/material/datepicker/s<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 101
    sget p3, Lcom/google/android/material/a$k;->mtrl_picker_text_input_date:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 103
    sget p2, Lcom/google/android/material/a$h;->mtrl_picker_text_input_date:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/google/android/material/textfield/TextInputLayout;

    .line 104
    invoke-virtual {v4}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p2

    .line 105
    invoke-static {}, Lcom/google/android/material/internal/g;->d()Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0x11

    .line 107
    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 109
    :cond_0
    invoke-static {}, Lcom/google/android/material/datepicker/y;->d()Ljava/text/SimpleDateFormat;

    move-result-object v3

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-static {p3, v3}, Lcom/google/android/material/datepicker/y;->a(Landroid/content/res/Resources;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v2

    .line 112
    iget-object p3, p0, Lcom/google/android/material/datepicker/v;->a:Ljava/lang/Long;

    if-eqz p3, :cond_1

    .line 113
    iget-object p3, p0, Lcom/google/android/material/datepicker/v;->a:Ljava/lang/Long;

    invoke-virtual {v3, p3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :cond_1
    new-instance p3, Lcom/google/android/material/datepicker/v$1;

    move-object v0, p3

    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/datepicker/v$1;-><init>(Lcom/google/android/material/datepicker/v;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/a;Lcom/google/android/material/datepicker/s;)V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 135
    invoke-static {p2}, Lcom/google/android/material/internal/z;->b(Landroid/view/View;)V

    return-object p1
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 48
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/v;->f()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 150
    iget-object v0, p0, Lcom/google/android/material/datepicker/v;->a:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 151
    sget p0, Lcom/google/android/material/a$m;->mtrl_picker_date_header_unselected:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 153
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/datepicker/v;->a:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/g;->a(J)Ljava/lang/String;

    move-result-object p0

    .line 154
    sget v0, Lcom/google/android/material/a$m;->mtrl_picker_date_header_selected:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(J)V
    .locals 0

    .line 55
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/v;->a:Ljava/lang/Long;

    return-void
.end method

.method public a(Ljava/lang/Long;)V
    .locals 2
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/y;->a(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/material/datepicker/v;->a:Ljava/lang/Long;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 48
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/v;->a(Ljava/lang/Long;)V

    return-void
.end method

.method public b(Landroid/content/Context;)I
    .locals 1

    .line 142
    sget p0, Lcom/google/android/material/a$c;->materialCalendarTheme:I

    const-class v0, Lcom/google/android/material/datepicker/l;

    .line 143
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 142
    invoke-static {p1, p0, v0}, Lcom/google/android/material/q/b;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public b()Z
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/google/android/material/datepicker/v;->a:Ljava/lang/Long;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public c()Ljava/util/Collection;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    iget-object v1, p0, Lcom/google/android/material/datepicker/v;->a:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 83
    iget-object p0, p0, Lcom/google/android/material/datepicker/v;->a:Ljava/lang/Long;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method

.method public d()Ljava/util/Collection;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroidx/core/m/f<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 75
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public e()I
    .locals 0

    .line 159
    sget p0, Lcom/google/android/material/a$m;->mtrl_picker_date_header_title:I

    return p0
.end method

.method public f()Ljava/lang/Long;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 91
    iget-object p0, p0, Lcom/google/android/material/datepicker/v;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 189
    iget-object p0, p0, Lcom/google/android/material/datepicker/v;->a:Ljava/lang/Long;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
