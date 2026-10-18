.class public Lcom/google/android/material/datepicker/u;
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
        "Landroidx/core/m/f<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Ljava/lang/Long;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private d:Ljava/lang/Long;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private e:Ljava/lang/Long;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private f:Ljava/lang/Long;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 278
    new-instance v0, Lcom/google/android/material/datepicker/u$3;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/u$3;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/u;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, " "

    .line 56
    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    .line 58
    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    .line 59
    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->e:Ljava/lang/Long;

    .line 60
    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->f:Ljava/lang/Long;

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/u;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/google/android/material/datepicker/u;->e:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/u;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/s;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/datepicker/u;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/s;)V

    return-void
.end method

.method private a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 2
    .param p1    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 262
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/datepicker/u;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 263
    invoke-virtual {p1, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 265
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, " "

    invoke-virtual {p2}, Lcom/google/android/material/textfield/TextInputLayout;->getError()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 266
    invoke-virtual {p2, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/s;)V
    .locals 4
    .param p1    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/datepicker/s;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/textfield/TextInputLayout;",
            "Lcom/google/android/material/textfield/TextInputLayout;",
            "Lcom/google/android/material/datepicker/s<",
            "Landroidx/core/m/f<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->e:Ljava/lang/Long;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->f:Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_1

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->e:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/material/datepicker/u;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/material/datepicker/u;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    iget-object p1, p0, Lcom/google/android/material/datepicker/u;->e:Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    .line 253
    iget-object p1, p0, Lcom/google/android/material/datepicker/u;->f:Ljava/lang/Long;

    iput-object p1, p0, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    .line 254
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->f()Landroidx/core/m/f;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/google/android/material/datepicker/s;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 256
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/datepicker/u;->b(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 257
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/s;->a()V

    :goto_0
    return-void

    .line 247
    :cond_2
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/datepicker/u;->a(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 248
    invoke-virtual {p3}, Lcom/google/android/material/datepicker/s;->a()V

    return-void
.end method

.method private a(JJ)Z
    .locals 0

    cmp-long p0, p1, p3

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic b(Lcom/google/android/material/datepicker/u;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/google/android/material/datepicker/u;->f:Ljava/lang/Long;

    return-object p1
.end method

.method private b(Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0
    .param p1    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 271
    iget-object p0, p0, Lcom/google/android/material/datepicker/u;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    const-string p0, " "

    .line 272
    invoke-virtual {p2, p0}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic c(Lcom/google/android/material/datepicker/u;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic d(Lcom/google/android/material/datepicker/u;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/a;Lcom/google/android/material/datepicker/s;)Landroid/view/View;
    .locals 17
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
            "Landroidx/core/m/f<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;)",
            "Landroid/view/View;"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 175
    sget v0, Lcom/google/android/material/a$k;->mtrl_picker_text_input_date_range:I

    const/4 v1, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 176
    invoke-virtual {v2, v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 178
    sget v0, Lcom/google/android/material/a$h;->mtrl_picker_text_input_range_start:I

    .line 179
    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/google/android/material/textfield/TextInputLayout;

    .line 180
    sget v0, Lcom/google/android/material/a$h;->mtrl_picker_text_input_range_end:I

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/google/android/material/textfield/TextInputLayout;

    .line 181
    invoke-virtual {v11}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v13

    .line 182
    invoke-virtual {v12}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v14

    .line 183
    invoke-static {}, Lcom/google/android/material/internal/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    .line 185
    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 186
    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 189
    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$m;->mtrl_picker_invalid_range:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/material/datepicker/u;->a:Ljava/lang/String;

    .line 191
    invoke-static {}, Lcom/google/android/material/datepicker/y;->d()Ljava/text/SimpleDateFormat;

    move-result-object v15

    .line 193
    iget-object v0, v9, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, v9, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    invoke-virtual {v15, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, v9, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    iput-object v0, v9, Lcom/google/android/material/datepicker/u;->e:Ljava/lang/Long;

    .line 197
    :cond_1
    iget-object v0, v9, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, v9, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    invoke-virtual {v15, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v0, v9, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    iput-object v0, v9, Lcom/google/android/material/datepicker/u;->f:Ljava/lang/Long;

    .line 202
    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v15}, Lcom/google/android/material/datepicker/y;->a(Landroid/content/res/Resources;Ljava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v16

    .line 204
    new-instance v8, Lcom/google/android/material/datepicker/u$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object v3, v15

    move-object v4, v11

    move-object/from16 v5, p4

    move-object v6, v11

    move-object v7, v12

    move-object v9, v8

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/datepicker/u$1;-><init>(Lcom/google/android/material/datepicker/u;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/a;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/s;)V

    invoke-virtual {v13, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 220
    new-instance v9, Lcom/google/android/material/datepicker/u$2;

    move-object v0, v9

    move-object v4, v12

    invoke-direct/range {v0 .. v8}, Lcom/google/android/material/datepicker/u$2;-><init>(Lcom/google/android/material/datepicker/u;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/a;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/s;)V

    invoke-virtual {v14, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 233
    invoke-static {v13}, Lcom/google/android/material/internal/z;->b(Landroid/view/View;)V

    return-object v10
.end method

.method public synthetic a()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/u;->f()Landroidx/core/m/f;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 143
    sget p0, Lcom/google/android/material/a$m;->mtrl_picker_range_header_unselected:I

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 146
    sget v0, Lcom/google/android/material/a$m;->mtrl_picker_range_header_only_start_selected:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    .line 148
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/material/datepicker/g;->e(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    .line 146
    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 151
    sget v0, Lcom/google/android/material/a$m;->mtrl_picker_range_header_only_end_selected:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    .line 153
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/material/datepicker/g;->e(J)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v1

    .line 151
    invoke-virtual {p1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    iget-object p0, p0, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    .line 156
    invoke-static {v0, p0}, Lcom/google/android/material/datepicker/g;->a(Ljava/lang/Long;Ljava/lang/Long;)Landroidx/core/m/f;

    move-result-object p0

    .line 157
    sget v0, Lcom/google/android/material/a$m;->mtrl_picker_range_header_selected:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Landroidx/core/m/f;->a:Ljava/lang/Object;

    aput-object v4, v3, v1

    iget-object p0, p0, Landroidx/core/m/f;->b:Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-virtual {p1, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(J)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 65
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    goto :goto_0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/google/android/material/datepicker/u;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    .line 70
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    :goto_0
    return-void
.end method

.method public a(Landroidx/core/m/f;)V
    .locals 4
    .param p1    # Landroidx/core/m/f;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/m/f<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p1, Landroidx/core/m/f;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroidx/core/m/f;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p1, Landroidx/core/m/f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p1, Landroidx/core/m/f;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/material/datepicker/u;->a(JJ)Z

    move-result v0

    invoke-static {v0}, Landroidx/core/m/i;->a(Z)V

    .line 86
    :cond_0
    iget-object v0, p1, Landroidx/core/m/f;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Landroidx/core/m/f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 87
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/y;->a(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    .line 88
    iget-object v0, p1, Landroidx/core/m/f;->b:Ljava/lang/Object;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p1, Landroidx/core/m/f;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    .line 89
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/y;->a(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 51
    check-cast p1, Landroidx/core/m/f;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/u;->a(Landroidx/core/m/f;)V

    return-void
.end method

.method public b(Landroid/content/Context;)I
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 126
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 127
    sget v1, Lcom/google/android/material/a$f;->mtrl_calendar_maximum_default_fullscreen_minor_axis:I

    .line 128
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 129
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-le v0, p0, :cond_0

    .line 130
    sget p0, Lcom/google/android/material/a$c;->materialCalendarTheme:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/google/android/material/a$c;->materialCalendarFullscreenTheme:I

    .line 134
    :goto_0
    const-class v0, Lcom/google/android/material/datepicker/l;

    .line 135
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {p1, p0, v0}, Lcom/google/android/material/q/b;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public b()Z
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/material/datepicker/u;->a(JJ)Z

    move-result p0

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

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 118
    iget-object p0, p0, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public d()Ljava/util/Collection;
    .locals 3
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

    .line 101
    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    if-nez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    new-instance v1, Landroidx/core/m/f;

    iget-object v2, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    iget-object p0, p0, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    invoke-direct {v1, v2, p0}, Landroidx/core/m/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 102
    :cond_1
    :goto_0
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

    .line 165
    sget p0, Lcom/google/android/material/a$m;->mtrl_picker_range_header_title:I

    return p0
.end method

.method public f()Landroidx/core/m/f;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/core/m/f<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Landroidx/core/m/f;

    iget-object v1, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    iget-object p0, p0, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    invoke-direct {v0, v1, p0}, Landroidx/core/m/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 304
    iget-object p2, p0, Lcom/google/android/material/datepicker/u;->c:Ljava/lang/Long;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 305
    iget-object p0, p0, Lcom/google/android/material/datepicker/u;->d:Ljava/lang/Long;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
