.class public final Lcom/google/android/material/datepicker/l;
.super Landroidx/fragment/app/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/datepicker/l$a;,
        Lcom/google/android/material/datepicker/l$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/c;"
    }
.end annotation


# static fields
.field static final an:Ljava/lang/Object;

.field static final ao:Ljava/lang/Object;

.field static final ap:Ljava/lang/Object;

.field public static final aq:I = 0x0

.field public static final ar:I = 0x1

.field private static final as:Ljava/lang/String; = "OVERRIDE_THEME_RES_ID"

.field private static final at:Ljava/lang/String; = "DATE_SELECTOR_KEY"

.field private static final au:Ljava/lang/String; = "CALENDAR_CONSTRAINTS_KEY"

.field private static final av:Ljava/lang/String; = "TITLE_TEXT_RES_ID_KEY"

.field private static final aw:Ljava/lang/String; = "TITLE_TEXT_KEY"

.field private static final ax:Ljava/lang/String; = "INPUT_MODE_KEY"


# instance fields
.field private final aA:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/content/DialogInterface$OnCancelListener;",
            ">;"
        }
    .end annotation
.end field

.field private final aB:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/content/DialogInterface$OnDismissListener;",
            ">;"
        }
    .end annotation
.end field

.field private aC:I
    .annotation build Landroidx/annotation/at;
    .end annotation
.end field

.field private aD:Lcom/google/android/material/datepicker/f;
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/f<",
            "TS;>;"
        }
    .end annotation
.end field

.field private aE:Lcom/google/android/material/datepicker/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/t<",
            "TS;>;"
        }
    .end annotation
.end field

.field private aF:Lcom/google/android/material/datepicker/a;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private aG:Lcom/google/android/material/datepicker/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/k<",
            "TS;>;"
        }
    .end annotation
.end field

.field private aH:I
    .annotation build Landroidx/annotation/as;
    .end annotation
.end field

.field private aI:Ljava/lang/CharSequence;

.field private aJ:Z

.field private aK:I

.field private aL:Landroid/widget/TextView;

.field private aM:Lcom/google/android/material/internal/CheckableImageButton;

.field private aN:Lcom/google/android/material/t/j;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private aO:Landroid/widget/Button;

.field private final ay:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/datepicker/m<",
            "-TS;>;>;"
        }
    .end annotation
.end field

.field private final az:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "CONFIRM_BUTTON_TAG"

    .line 71
    sput-object v0, Lcom/google/android/material/datepicker/l;->an:Ljava/lang/Object;

    const-string v0, "CANCEL_BUTTON_TAG"

    .line 72
    sput-object v0, Lcom/google/android/material/datepicker/l;->ao:Ljava/lang/Object;

    const-string v0, "TOGGLE_BUTTON_TAG"

    .line 73
    sput-object v0, Lcom/google/android/material/datepicker/l;->ap:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroidx/fragment/app/c;-><init>()V

    .line 108
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/l;->ay:Ljava/util/LinkedHashSet;

    .line 110
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/l;->az:Ljava/util/LinkedHashSet;

    .line 112
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/l;->aA:Ljava/util/LinkedHashSet;

    .line 114
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/datepicker/l;->aB:Ljava/util/LinkedHashSet;

    return-void
.end method

.method static a(Lcom/google/android/material/datepicker/l$a;)Lcom/google/android/material/datepicker/l;
    .locals 4
    .param p0    # Lcom/google/android/material/datepicker/l$a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/l$a<",
            "TS;>;)",
            "Lcom/google/android/material/datepicker/l<",
            "TS;>;"
        }
    .end annotation

    .line 134
    new-instance v0, Lcom/google/android/material/datepicker/l;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/l;-><init>()V

    .line 135
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "OVERRIDE_THEME_RES_ID"

    .line 136
    iget v3, p0, Lcom/google/android/material/datepicker/l$a;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "DATE_SELECTOR_KEY"

    .line 137
    iget-object v3, p0, Lcom/google/android/material/datepicker/l$a;->a:Lcom/google/android/material/datepicker/f;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "CALENDAR_CONSTRAINTS_KEY"

    .line 138
    iget-object v3, p0, Lcom/google/android/material/datepicker/l$a;->c:Lcom/google/android/material/datepicker/a;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v2, "TITLE_TEXT_RES_ID_KEY"

    .line 139
    iget v3, p0, Lcom/google/android/material/datepicker/l$a;->d:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "TITLE_TEXT_KEY"

    .line 140
    iget-object v3, p0, Lcom/google/android/material/datepicker/l$a;->e:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v2, "INPUT_MODE_KEY"

    .line 141
    iget p0, p0, Lcom/google/android/material/datepicker/l$a;->g:I

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/l;->g(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/l;)Ljava/util/LinkedHashSet;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->ay:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/material/datepicker/l;Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/l;->a(Lcom/google/android/material/internal/CheckableImageButton;)V

    return-void
.end method

.method private a(Lcom/google/android/material/internal/CheckableImageButton;)V
    .locals 1
    .param p1    # Lcom/google/android/material/internal/CheckableImageButton;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 386
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->aM:Lcom/google/android/material/internal/CheckableImageButton;

    .line 387
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/google/android/material/a$m;->mtrl_picker_toggle_to_calendar_input_mode:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 389
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/internal/CheckableImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/google/android/material/a$m;->mtrl_picker_toggle_to_text_input_mode:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 390
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->aM:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static aK()J
    .locals 2

    .line 89
    invoke-static {}, Lcom/google/android/material/datepicker/y;->b()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static aL()J
    .locals 2

    .line 96
    invoke-static {}, Lcom/google/android/material/datepicker/p;->a()Lcom/google/android/material/datepicker/p;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/p;->e:J

    return-wide v0
.end method

.method private aS()V
    .locals 5

    .line 327
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/l;->aM()Ljava/lang/String;

    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->aL:Landroid/widget/TextView;

    sget v2, Lcom/google/android/material/a$m;->mtrl_picker_announce_current_selection:I

    .line 329
    invoke-virtual {p0, v2}, Lcom/google/android/material/datepicker/l;->b(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 328
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 330
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->aL:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private aT()V
    .locals 3

    .line 334
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->aD:Lcom/google/android/material/datepicker/f;

    .line 336
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/l;->z()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/l;->c(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/datepicker/l;->aF:Lcom/google/android/material/datepicker/a;

    .line 335
    invoke-static {v0, v1, v2}, Lcom/google/android/material/datepicker/k;->a(Lcom/google/android/material/datepicker/f;ILcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/k;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/l;->aG:Lcom/google/android/material/datepicker/k;

    .line 337
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->aM:Lcom/google/android/material/internal/CheckableImageButton;

    .line 338
    invoke-virtual {v0}, Lcom/google/android/material/internal/CheckableImageButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->aD:Lcom/google/android/material/datepicker/f;

    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->aF:Lcom/google/android/material/datepicker/a;

    .line 339
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/o;->a(Lcom/google/android/material/datepicker/f;Lcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/o;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->aG:Lcom/google/android/material/datepicker/k;

    :goto_0
    iput-object v0, p0, Lcom/google/android/material/datepicker/l;->aE:Lcom/google/android/material/datepicker/t;

    .line 341
    invoke-direct {p0}, Lcom/google/android/material/datepicker/l;->aS()V

    .line 343
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/l;->H()Landroidx/fragment/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/j;->a()Landroidx/fragment/app/s;

    move-result-object v0

    .line 344
    sget v1, Lcom/google/android/material/a$h;->mtrl_calendar_frame:I

    iget-object v2, p0, Lcom/google/android/material/datepicker/l;->aE:Lcom/google/android/material/datepicker/t;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/s;->b(ILandroidx/fragment/app/d;)Landroidx/fragment/app/s;

    .line 345
    invoke-virtual {v0}, Landroidx/fragment/app/s;->i()V

    .line 347
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->aE:Lcom/google/android/material/datepicker/t;

    new-instance v1, Lcom/google/android/material/datepicker/l$3;

    invoke-direct {v1, p0}, Lcom/google/android/material/datepicker/l$3;-><init>(Lcom/google/android/material/datepicker/l;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/t;->a(Lcom/google/android/material/datepicker/s;)Z

    return-void
.end method

.method static synthetic b(Lcom/google/android/material/datepicker/l;)Ljava/util/LinkedHashSet;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->az:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method static b(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 407
    sget v0, Lcom/google/android/material/a$c;->materialCalendarStyle:I

    const-class v1, Lcom/google/android/material/datepicker/k;

    .line 409
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-static {p0, v0, v1}, Lcom/google/android/material/q/b;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    .line 410
    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x101020d

    aput v3, v1, v2

    .line 411
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 412
    invoke-virtual {p0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 413
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method private c(Landroid/content/Context;)I
    .locals 1

    .line 175
    iget v0, p0, Lcom/google/android/material/datepicker/l;->aC:I

    if-eqz v0, :cond_0

    .line 176
    iget p0, p0, Lcom/google/android/material/datepicker/l;->aC:I

    return p0

    .line 178
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->aD:Lcom/google/android/material/datepicker/f;

    invoke-interface {p0, p1}, Lcom/google/android/material/datepicker/f;->b(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/google/android/material/datepicker/l;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/google/android/material/datepicker/l;->aS()V

    return-void
.end method

.method static synthetic d(Lcom/google/android/material/datepicker/l;)Lcom/google/android/material/datepicker/f;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->aD:Lcom/google/android/material/datepicker/f;

    return-object p0
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->aM:Lcom/google/android/material/internal/CheckableImageButton;

    sget-object v1, Lcom/google/android/material/datepicker/l;->ap:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/CheckableImageButton;->setTag(Ljava/lang/Object;)V

    .line 364
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->aM:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, Lcom/google/android/material/datepicker/l;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->aM:Lcom/google/android/material/internal/CheckableImageButton;

    iget v0, p0, Lcom/google/android/material/datepicker/l;->aK:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    .line 369
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->aM:Lcom/google/android/material/internal/CheckableImageButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/n/af;->a(Landroid/view/View;Landroidx/core/n/a;)V

    .line 370
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->aM:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/l;->a(Lcom/google/android/material/internal/CheckableImageButton;)V

    .line 371
    iget-object p1, p0, Lcom/google/android/material/datepicker/l;->aM:Lcom/google/android/material/internal/CheckableImageButton;

    new-instance v0, Lcom/google/android/material/datepicker/l$4;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/l$4;-><init>(Lcom/google/android/material/datepicker/l;)V

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/CheckableImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 396
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x1

    .line 397
    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sget v3, Lcom/google/android/material/a$g;->material_ic_calendar_black_24dp:I

    .line 399
    invoke-static {p0, v3}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 397
    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 400
    new-array v1, v2, [I

    sget v2, Lcom/google/android/material/a$g;->material_ic_edit_black_24dp:I

    .line 402
    invoke-static {p0, v2}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 400
    invoke-virtual {v0, v1, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/material/datepicker/l;)Landroid/widget/Button;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->aO:Landroid/widget/Button;

    return-object p0
.end method

.method private static f(Landroid/content/Context;)I
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 418
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 419
    sget v0, Lcom/google/android/material/a$f;->mtrl_calendar_navigation_height:I

    .line 420
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/google/android/material/a$f;->mtrl_calendar_navigation_top_padding:I

    .line 421
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    sget v1, Lcom/google/android/material/a$f;->mtrl_calendar_navigation_bottom_padding:I

    .line 422
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 423
    sget v1, Lcom/google/android/material/a$f;->mtrl_calendar_days_of_week_height:I

    .line 424
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 425
    sget v2, Lcom/google/android/material/datepicker/q;->a:I

    sget v3, Lcom/google/android/material/a$f;->mtrl_calendar_day_height:I

    .line 427
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/2addr v2, v3

    sget v3, Lcom/google/android/material/datepicker/q;->a:I

    add-int/lit8 v3, v3, -0x1

    sget v4, Lcom/google/android/material/a$f;->mtrl_calendar_month_vertical_padding:I

    .line 429
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 430
    sget v3, Lcom/google/android/material/a$f;->mtrl_calendar_bottom_padding:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    add-int/2addr v0, p0

    return v0
.end method

.method static synthetic f(Lcom/google/android/material/datepicker/l;)Lcom/google/android/material/internal/CheckableImageButton;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->aM:Lcom/google/android/material/internal/CheckableImageButton;

    return-object p0
.end method

.method private static g(Landroid/content/Context;)I
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 435
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 436
    sget v0, Lcom/google/android/material/a$f;->mtrl_calendar_content_padding:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 437
    invoke-static {}, Lcom/google/android/material/datepicker/p;->a()Lcom/google/android/material/datepicker/p;

    move-result-object v1

    iget v1, v1, Lcom/google/android/material/datepicker/p;->c:I

    .line 438
    sget v2, Lcom/google/android/material/a$f;->mtrl_calendar_day_width:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 439
    sget v3, Lcom/google/android/material/a$f;->mtrl_calendar_month_horizontal_padding:I

    .line 440
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    mul-int/lit8 v0, v0, 0x2

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method static synthetic g(Lcom/google/android/material/datepicker/l;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/google/android/material/datepicker/l;->aT()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 184
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/l;->z()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/l;->z()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/material/datepicker/l;->c(Landroid/content/Context;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 185
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/google/android/material/datepicker/l;->b(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/material/datepicker/l;->aJ:Z

    .line 187
    sget v1, Lcom/google/android/material/a$c;->colorSurface:I

    const-class v2, Lcom/google/android/material/datepicker/l;

    .line 189
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-static {v0, v1, v2}, Lcom/google/android/material/q/b;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    .line 190
    new-instance v2, Lcom/google/android/material/t/j;

    sget v3, Lcom/google/android/material/a$c;->materialCalendarStyle:I

    sget v4, Lcom/google/android/material/a$n;->Widget_MaterialComponents_MaterialCalendar:I

    const/4 v5, 0x0

    invoke-direct {v2, v0, v5, v3, v4}, Lcom/google/android/material/t/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v2, p0, Lcom/google/android/material/datepicker/l;->aN:Lcom/google/android/material/t/j;

    .line 196
    iget-object v2, p0, Lcom/google/android/material/datepicker/l;->aN:Lcom/google/android/material/t/j;

    invoke-virtual {v2, v0}, Lcom/google/android/material/t/j;->b(Landroid/content/Context;)V

    .line 197
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->aN:Lcom/google/android/material/t/j;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/t/j;->g(Landroid/content/res/ColorStateList;)V

    .line 198
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->aN:Lcom/google/android/material/t/j;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/n/af;->P(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/t/j;->r(F)V

    return-object p1
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
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

    .line 208
    iget-boolean p3, p0, Lcom/google/android/material/datepicker/l;->aJ:Z

    if-eqz p3, :cond_0

    sget p3, Lcom/google/android/material/a$k;->mtrl_picker_fullscreen:I

    goto :goto_0

    :cond_0
    sget p3, Lcom/google/android/material/a$k;->mtrl_picker_dialog:I

    .line 209
    :goto_0
    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 212
    iget-boolean p3, p0, Lcom/google/android/material/datepicker/l;->aJ:Z

    if-eqz p3, :cond_1

    .line 213
    sget p3, Lcom/google/android/material/a$h;->mtrl_calendar_frame:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 214
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 215
    invoke-static {p2}, Lcom/google/android/material/datepicker/l;->g(Landroid/content/Context;)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 214
    invoke-virtual {p3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 217
    :cond_1
    sget p3, Lcom/google/android/material/a$h;->mtrl_calendar_main_pane:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 218
    sget v0, Lcom/google/android/material/a$h;->mtrl_calendar_frame:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 219
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 220
    invoke-static {p2}, Lcom/google/android/material/datepicker/l;->g(Landroid/content/Context;)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 219
    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/l;->z()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/material/datepicker/l;->f(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/View;->setMinimumHeight(I)V

    .line 224
    :goto_1
    sget p3, Lcom/google/android/material/a$h;->mtrl_picker_header_selection_text:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/google/android/material/datepicker/l;->aL:Landroid/widget/TextView;

    .line 225
    iget-object p3, p0, Lcom/google/android/material/datepicker/l;->aL:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-static {p3, v0}, Landroidx/core/n/af;->j(Landroid/view/View;I)V

    .line 227
    sget p3, Lcom/google/android/material/a$h;->mtrl_picker_header_toggle:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/internal/CheckableImageButton;

    iput-object p3, p0, Lcom/google/android/material/datepicker/l;->aM:Lcom/google/android/material/internal/CheckableImageButton;

    .line 228
    sget p3, Lcom/google/android/material/a$h;->mtrl_picker_title_text:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 229
    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->aI:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 230
    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->aI:Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 232
    :cond_2
    iget v1, p0, Lcom/google/android/material/datepicker/l;->aH:I

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 234
    :goto_2
    invoke-direct {p0, p2}, Lcom/google/android/material/datepicker/l;->d(Landroid/content/Context;)V

    .line 236
    sget p2, Lcom/google/android/material/a$h;->confirm_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/google/android/material/datepicker/l;->aO:Landroid/widget/Button;

    .line 237
    iget-object p2, p0, Lcom/google/android/material/datepicker/l;->aD:Lcom/google/android/material/datepicker/f;

    invoke-interface {p2}, Lcom/google/android/material/datepicker/f;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 238
    iget-object p2, p0, Lcom/google/android/material/datepicker/l;->aO:Landroid/widget/Button;

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 240
    :cond_3
    iget-object p2, p0, Lcom/google/android/material/datepicker/l;->aO:Landroid/widget/Button;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 242
    :goto_3
    iget-object p2, p0, Lcom/google/android/material/datepicker/l;->aO:Landroid/widget/Button;

    sget-object p3, Lcom/google/android/material/datepicker/l;->an:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 243
    iget-object p2, p0, Lcom/google/android/material/datepicker/l;->aO:Landroid/widget/Button;

    new-instance p3, Lcom/google/android/material/datepicker/l$1;

    invoke-direct {p3, p0}, Lcom/google/android/material/datepicker/l$1;-><init>(Lcom/google/android/material/datepicker/l;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    sget p2, Lcom/google/android/material/a$h;->cancel_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 256
    sget-object p3, Lcom/google/android/material/datepicker/l;->ao:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 257
    new-instance p3, Lcom/google/android/material/datepicker/l$2;

    invoke-direct {p3, p0}, Lcom/google/android/material/datepicker/l$2;-><init>(Lcom/google/android/material/datepicker/l;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)Z
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->aA:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 0

    .line 513
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->aB:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public a(Landroid/view/View$OnClickListener;)Z
    .locals 0

    .line 469
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->az:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public a(Lcom/google/android/material/datepicker/m;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/m<",
            "-TS;>;)Z"
        }
    .end annotation

    .line 447
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->ay:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public aM()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->aD:Lcom/google/android/material/datepicker/f;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/l;->y()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/material/datepicker/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final aN()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 323
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->aD:Lcom/google/android/material/datepicker/f;

    invoke-interface {p0}, Lcom/google/android/material/datepicker/f;->a()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public aO()V
    .locals 0

    .line 463
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->ay:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public aP()V
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->az:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public aQ()V
    .locals 0

    .line 505
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->aA:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public aR()V
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->aB:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 164
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->b(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/l;->t()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const-string v0, "OVERRIDE_THEME_RES_ID"

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/l;->aC:I

    const-string v0, "DATE_SELECTOR_KEY"

    .line 167
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/f;

    iput-object v0, p0, Lcom/google/android/material/datepicker/l;->aD:Lcom/google/android/material/datepicker/f;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/a;

    iput-object v0, p0, Lcom/google/android/material/datepicker/l;->aF:Lcom/google/android/material/datepicker/a;

    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    .line 169
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/datepicker/l;->aH:I

    const-string v0, "TITLE_TEXT_KEY"

    .line 170
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/l;->aI:Ljava/lang/CharSequence;

    const-string v0, "INPUT_MODE_KEY"

    .line 171
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/datepicker/l;->aK:I

    return-void
.end method

.method public b(Landroid/content/DialogInterface$OnCancelListener;)Z
    .locals 0

    .line 500
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->aA:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public b(Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 0

    .line 518
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->aB:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public b(Landroid/view/View$OnClickListener;)Z
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->az:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public b(Lcom/google/android/material/datepicker/m;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/m<",
            "-TS;>;)Z"
        }
    .end annotation

    .line 456
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->ay:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final e(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 148
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->e(Landroid/os/Bundle;)V

    const-string v0, "OVERRIDE_THEME_RES_ID"

    .line 149
    iget v1, p0, Lcom/google/android/material/datepicker/l;->aC:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "DATE_SELECTOR_KEY"

    .line 150
    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->aD:Lcom/google/android/material/datepicker/f;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 152
    new-instance v0, Lcom/google/android/material/datepicker/a$a;

    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->aF:Lcom/google/android/material/datepicker/a;

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/a$a;-><init>(Lcom/google/android/material/datepicker/a;)V

    .line 154
    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->aG:Lcom/google/android/material/datepicker/k;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/k;->a()Lcom/google/android/material/datepicker/p;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->aG:Lcom/google/android/material/datepicker/k;

    invoke-virtual {v1}, Lcom/google/android/material/datepicker/k;->a()Lcom/google/android/material/datepicker/p;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/material/datepicker/p;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/datepicker/a$a;->c(J)Lcom/google/android/material/datepicker/a$a;

    :cond_0
    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    .line 157
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/a$a;->a()Lcom/google/android/material/datepicker/a;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "TITLE_TEXT_RES_ID_KEY"

    .line 158
    iget v1, p0, Lcom/google/android/material/datepicker/l;->aH:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "TITLE_TEXT_KEY"

    .line 159
    iget-object p0, p0, Lcom/google/android/material/datepicker/l;->aI:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public l()V
    .locals 9

    .line 272
    invoke-super {p0}, Landroidx/fragment/app/c;->l()V

    .line 273
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/l;->g()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 275
    iget-boolean v1, p0, Lcom/google/android/material/datepicker/l;->aJ:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 276
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 277
    iget-object v1, p0, Lcom/google/android/material/datepicker/l;->aN:Lcom/google/android/material/t/j;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x2

    .line 279
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 281
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/l;->E()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$f;->mtrl_calendar_dialog_background_inset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    .line 282
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v8, v8, v8, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 283
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    iget-object v4, p0, Lcom/google/android/material/datepicker/l;->aN:Lcom/google/android/material/t/j;

    move-object v3, v2

    move v5, v8

    move v6, v8

    move v7, v8

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lcom/google/android/material/i/a;

    .line 286
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/l;->g()Landroid/app/Dialog;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/android/material/i/a;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 288
    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/datepicker/l;->aT()V

    return-void
.end method

.method public m()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->aE:Lcom/google/android/material/datepicker/t;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/t;->j()V

    .line 294
    invoke-super {p0}, Landroidx/fragment/app/c;->m()V

    return-void
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 299
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->aA:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnCancelListener;

    .line 300
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 302
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 307
    iget-object v0, p0, Lcom/google/android/material/datepicker/l;->aB:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/DialogInterface$OnDismissListener;

    .line 308
    invoke-interface {v1, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/l;->X()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 314
    :cond_1
    invoke-super {p0, p1}, Landroidx/fragment/app/c;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method
