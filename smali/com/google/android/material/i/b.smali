.class public Lcom/google/android/material/i/b;
.super Landroidx/appcompat/app/d$a;
.source "SourceFile"


# static fields
.field private static final a:I
    .annotation build Landroidx/annotation/f;
    .end annotation
.end field

.field private static final b:I
    .annotation build Landroidx/annotation/at;
    .end annotation
.end field

.field private static final c:I
    .annotation build Landroidx/annotation/f;
    .end annotation
.end field


# instance fields
.field private d:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private final e:Landroid/graphics/Rect;
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation build Landroidx/annotation/p;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    sget v0, Lcom/google/android/material/a$c;->alertDialogStyle:I

    sput v0, Lcom/google/android/material/i/b;->a:I

    .line 70
    sget v0, Lcom/google/android/material/a$n;->MaterialAlertDialog_MaterialComponents:I

    sput v0, Lcom/google/android/material/i/b;->b:I

    .line 73
    sget v0, Lcom/google/android/material/a$c;->materialAlertDialogTheme:I

    sput v0, Lcom/google/android/material/i/b;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 103
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/i/b;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 110
    invoke-static {p1}, Lcom/google/android/material/i/b;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 111
    invoke-static {p1, p2}, Lcom/google/android/material/i/b;->a(Landroid/content/Context;I)I

    move-result p1

    .line 109
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;I)V

    .line 113
    invoke-virtual {p0}, Lcom/google/android/material/i/b;->a()Landroid/content/Context;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    .line 116
    sget v0, Lcom/google/android/material/i/b;->a:I

    sget v1, Lcom/google/android/material/i/b;->b:I

    .line 117
    invoke-static {p1, v0, v1}, Lcom/google/android/material/i/c;->a(Landroid/content/Context;II)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/i/b;->e:Landroid/graphics/Rect;

    .line 119
    sget v0, Lcom/google/android/material/a$c;->colorSurface:I

    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/google/android/material/h/a;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    .line 121
    new-instance v1, Lcom/google/android/material/t/j;

    sget v2, Lcom/google/android/material/i/b;->a:I

    sget v3, Lcom/google/android/material/i/b;->b:I

    const/4 v4, 0x0

    invoke-direct {v1, p1, v4, v2, v3}, Lcom/google/android/material/t/j;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 123
    invoke-virtual {v1, p1}, Lcom/google/android/material/t/j;->b(Landroid/content/Context;)V

    .line 124
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/android/material/t/j;->g(Landroid/content/res/ColorStateList;)V

    .line 127
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-lt p1, v0, :cond_0

    .line 128
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    const v0, 0x1010571

    const/4 v2, 0x1

    .line 129
    invoke-virtual {p2, v0, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 131
    invoke-virtual {p0}, Lcom/google/android/material/i/b;->a()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p2

    .line 132
    iget p1, p1, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    .line 133
    invoke-virtual {v1, p2}, Lcom/google/android/material/t/j;->o(F)V

    .line 136
    :cond_0
    iput-object v1, p0, Lcom/google/android/material/i/b;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 79
    sget v0, Lcom/google/android/material/i/b;->c:I

    .line 80
    invoke-static {p0, v0}, Lcom/google/android/material/q/b;->a(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 84
    :cond_0
    iget p0, p0, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method private static a(Landroid/content/Context;I)I
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 98
    invoke-static {p0}, Lcom/google/android/material/i/b;->a(Landroid/content/Context;)I

    move-result p1

    :cond_0
    return p1
.end method

.method private static b(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 88
    invoke-static {p0}, Lcom/google/android/material/i/b;->a(Landroid/content/Context;)I

    move-result v0

    .line 89
    sget v1, Lcom/google/android/material/i/b;->a:I

    sget v2, Lcom/google/android/material/i/b;->b:I

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v2}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p0

    if-nez v0, :cond_0

    return-object p0

    .line 93
    :cond_0
    new-instance v1, Landroidx/appcompat/view/d;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method


# virtual methods
.method public synthetic a(I)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/material/i/b;->j(I)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(IILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/e;
        .end annotation
    .end param
    .param p3    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/i/b;->b(IILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/i/b;->e(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/e;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/i/b;->b(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/material/i/b;->b(Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/material/i/b;->b(Landroid/content/DialogInterface$OnDismissListener;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnKeyListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/material/i/b;->b(Landroid/content/DialogInterface$OnKeyListener;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/i/b;->b(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/i/b;->b(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/material/i/b;->b(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/material/i/b;->f(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(Landroid/view/View;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/material/i/b;->c(Landroid/view/View;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # Landroid/widget/AdapterView$OnItemSelectedListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/material/i/b;->b(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/i/b;->b(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/i/b;->b(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/material/i/b;->c(Ljava/lang/CharSequence;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/i/b;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a(Z)Landroidx/appcompat/app/d$a;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/material/i/b;->d(Z)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # [Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/i/b;->b([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # [Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/i/b;->b([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic a([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # [Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/i/b;->b([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic b(I)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/material/i/b;->k(I)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic b(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/i/b;->f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic b(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/material/i/b;->g(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic b(Landroid/view/View;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/material/i/b;->d(Landroid/view/View;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/material/i/b;->d(Ljava/lang/CharSequence;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/i/b;->e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public b()Landroidx/appcompat/app/d;
    .locals 5
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 142
    invoke-super {p0}, Landroidx/appcompat/app/d$a;->b()Landroidx/appcompat/app/d;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroidx/appcompat/app/d;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 146
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 147
    iget-object v3, p0, Lcom/google/android/material/i/b;->d:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Lcom/google/android/material/t/j;

    if-eqz v3, :cond_0

    .line 148
    iget-object v3, p0, Lcom/google/android/material/i/b;->d:Landroid/graphics/drawable/Drawable;

    check-cast v3, Lcom/google/android/material/t/j;

    invoke-static {v2}, Landroidx/core/n/af;->P(Landroid/view/View;)F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/material/t/j;->r(F)V

    .line 151
    :cond_0
    iget-object v3, p0, Lcom/google/android/material/i/b;->d:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/google/android/material/i/b;->e:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Lcom/google/android/material/i/c;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)Landroid/graphics/drawable/InsetDrawable;

    move-result-object v3

    .line 152
    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    new-instance v1, Lcom/google/android/material/i/a;

    iget-object p0, p0, Lcom/google/android/material/i/b;->e:Landroid/graphics/Rect;

    invoke-direct {v1, v0, p0}, Lcom/google/android/material/i/a;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method public b(IILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/e;
        .end annotation
    .end param
    .param p3    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 404
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/d$a;->a(IILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public b(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/e;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 377
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/d$a;->a(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public b(Landroid/content/DialogInterface$OnCancelListener;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnCancelListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 325
    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->a(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public b(Landroid/content/DialogInterface$OnDismissListener;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnDismissListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 332
    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->a(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public b(Landroid/content/DialogInterface$OnKeyListener;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Landroid/content/DialogInterface$OnKeyListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 338
    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->a(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public b(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 415
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/app/d$a;->a(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public b(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 368
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/d$a;->a(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public b(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 397
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/app/d$a;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public b(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Landroid/widget/AdapterView$OnItemSelectedListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 436
    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->a(Landroid/widget/AdapterView$OnItemSelectedListener;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public b(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 429
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/d$a;->a(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public b(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Landroid/widget/ListAdapter;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 359
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d$a;->a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public b([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # [Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 422
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/d$a;->a([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public b([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # [Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 352
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d$a;->a([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public b([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # [Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 386
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/d$a;->a([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public synthetic c(I)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/material/i/b;->l(I)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic c(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/i/b;->g(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic c(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/material/i/b;->h(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/i/b;->f(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public c(Landroid/view/View;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 222
    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->a(Landroid/view/View;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 216
    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public d()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 159
    iget-object p0, p0, Lcom/google/android/material/i/b;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public synthetic d(I)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/f;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/material/i/b;->m(I)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic d(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/e;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/i/b;->h(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public synthetic d(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/d$a;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/material/i/b;->i(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public d(Landroid/view/View;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 448
    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->b(Landroid/view/View;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 234
    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->b(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 266
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d$a;->a(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public d(Z)Lcom/google/android/material/i/b;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 318
    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->a(Z)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public synthetic e(I)Landroidx/appcompat/app/d$a;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 67
    invoke-virtual {p0, p1}, Lcom/google/android/material/i/b;->n(I)Lcom/google/android/material/i/b;

    move-result-object p0

    return-object p0
.end method

.method public e(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 259
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public e(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/google/android/material/i/b;->d:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public e(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 286
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d$a;->b(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public f(I)Lcom/google/android/material/i/b;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/google/android/material/i/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/google/android/material/i/b;->e:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/i/b;->e:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    return-object p0
.end method

.method public f(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 279
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public f(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 246
    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->a(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public f(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 306
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d$a;->c(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public g(I)Lcom/google/android/material/i/b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/google/android/material/i/b;->e:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->top:I

    return-object p0
.end method

.method public g(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 299
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public g(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 272
    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->b(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public h(I)Lcom/google/android/material/i/b;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 189
    invoke-virtual {p0}, Lcom/google/android/material/i/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 191
    iget-object v0, p0, Lcom/google/android/material/i/b;->e:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/i/b;->e:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    return-object p0
.end method

.method public h(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/e;
        .end annotation
    .end param
    .param p2    # Landroid/content/DialogInterface$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 345
    invoke-super {p0, p1, p2}, Landroidx/appcompat/app/d$a;->d(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public h(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 292
    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->c(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public i(I)Lcom/google/android/material/i/b;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/google/android/material/i/b;->e:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object p0
.end method

.method public i(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 312
    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->d(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public j(I)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 210
    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->a(I)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public k(I)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 228
    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->b(I)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public l(I)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 240
    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->c(I)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public m(I)Lcom/google/android/material/i/b;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/f;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 252
    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->d(I)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method

.method public n(I)Lcom/google/android/material/i/b;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 442
    invoke-super {p0, p1}, Landroidx/appcompat/app/d$a;->e(I)Landroidx/appcompat/app/d$a;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/i/b;

    return-object p0
.end method
