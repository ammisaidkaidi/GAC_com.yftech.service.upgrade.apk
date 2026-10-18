.class Lcom/google/android/material/textfield/a;
.super Lcom/google/android/material/textfield/e;
.source "SourceFile"


# static fields
.field private static final d:I = 0x64

.field private static final e:I = 0x96

.field private static final f:F = 0.8f


# instance fields
.field private final g:Landroid/text/TextWatcher;

.field private final h:Landroid/view/View$OnFocusChangeListener;

.field private final i:Lcom/google/android/material/textfield/TextInputLayout$d;

.field private final j:Lcom/google/android/material/textfield/TextInputLayout$e;

.field private k:Landroid/animation/AnimatorSet;

.field private l:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0
    .param p1    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 102
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/e;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 46
    new-instance p1, Lcom/google/android/material/textfield/a$1;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/a$1;-><init>(Lcom/google/android/material/textfield/a;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/a;->g:Landroid/text/TextWatcher;

    .line 62
    new-instance p1, Lcom/google/android/material/textfield/a$2;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/a$2;-><init>(Lcom/google/android/material/textfield/a;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/a;->h:Landroid/view/View$OnFocusChangeListener;

    .line 70
    new-instance p1, Lcom/google/android/material/textfield/a$3;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/a$3;-><init>(Lcom/google/android/material/textfield/a;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/a;->i:Lcom/google/android/material/textfield/TextInputLayout$d;

    .line 83
    new-instance p1, Lcom/google/android/material/textfield/a$4;

    invoke-direct {p1, p0}, Lcom/google/android/material/textfield/a$4;-><init>(Lcom/google/android/material/textfield/a;)V

    iput-object p1, p0, Lcom/google/android/material/textfield/a;->j:Lcom/google/android/material/textfield/TextInputLayout$e;

    return-void
.end method

.method private varargs a([F)Landroid/animation/ValueAnimator;
    .locals 2

    .line 174
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 175
    sget-object v0, Lcom/google/android/material/a/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x64

    .line 176
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 177
    new-instance v0, Lcom/google/android/material/textfield/a$8;

    invoke-direct {v0, p0}, Lcom/google/android/material/textfield/a$8;-><init>(Lcom/google/android/material/textfield/a;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/material/textfield/a;)Landroid/view/View$OnFocusChangeListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/android/material/textfield/a;->h:Landroid/view/View$OnFocusChangeListener;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/material/textfield/a;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/a;->b(Z)V

    return-void
.end method

.method static synthetic a(Landroid/text/Editable;)Z
    .locals 0

    .line 40
    invoke-static {p0}, Lcom/google/android/material/textfield/a;->b(Landroid/text/Editable;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/textfield/a;)Landroid/text/TextWatcher;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/android/material/textfield/a;->g:Landroid/text/TextWatcher;

    return-object p0
.end method

.method private b(Z)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->j()Z

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 137
    iget-object p1, p0, Lcom/google/android/material/textfield/a;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 138
    iget-object p1, p0, Lcom/google/android/material/textfield/a;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    if-eqz v0, :cond_2

    .line 140
    iget-object p0, p0, Lcom/google/android/material/textfield/a;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    goto :goto_1

    .line 143
    :cond_1
    iget-object p1, p0, Lcom/google/android/material/textfield/a;->k:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 144
    iget-object p1, p0, Lcom/google/android/material/textfield/a;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    if-eqz v0, :cond_2

    .line 146
    iget-object p0, p0, Lcom/google/android/material/textfield/a;->l:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    :cond_2
    :goto_1
    return-void
.end method

.method private static b(Landroid/text/Editable;)Z
    .locals 0
    .param p0    # Landroid/text/Editable;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 206
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c()V
    .locals 6

    .line 152
    invoke-direct {p0}, Lcom/google/android/material/textfield/a;->d()Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, 0x2

    .line 153
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-direct {p0, v2}, Lcom/google/android/material/textfield/a;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 154
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v3, p0, Lcom/google/android/material/textfield/a;->k:Landroid/animation/AnimatorSet;

    .line 155
    iget-object v3, p0, Lcom/google/android/material/textfield/a;->k:Landroid/animation/AnimatorSet;

    new-array v4, v1, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v2, v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 156
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->k:Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/google/android/material/textfield/a$6;

    invoke-direct {v2, p0}, Lcom/google/android/material/textfield/a$6;-><init>(Lcom/google/android/material/textfield/a;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 163
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/a;->a([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/a;->l:Landroid/animation/ValueAnimator;

    .line 164
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->l:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/google/android/material/textfield/a$7;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/a$7;-><init>(Lcom/google/android/material/textfield/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private d()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    .line 190
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 191
    sget-object v1, Lcom/google/android/material/a/a;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0x96

    .line 192
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 193
    new-instance v1, Lcom/google/android/material/textfield/a$9;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/a$9;-><init>(Lcom/google/android/material/textfield/a;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method a()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/a;->b:Landroid/content/Context;

    sget v2, Lcom/google/android/material/a$g;->mtrl_ic_cancel:I

    .line 108
    invoke-static {v1, v2}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 109
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 110
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$m;->clear_text_end_icon_content_description:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconContentDescription(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    new-instance v1, Lcom/google/android/material/textfield/a$5;

    invoke-direct {v1, p0}, Lcom/google/android/material/textfield/a$5;-><init>(Lcom/google/android/material/textfield/a;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEndIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/a;->i:Lcom/google/android/material/textfield/TextInputLayout$d;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout$d;)V

    .line 122
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/a;->j:Lcom/google/android/material/textfield/TextInputLayout$e;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Lcom/google/android/material/textfield/TextInputLayout$e;)V

    .line 123
    invoke-direct {p0}, Lcom/google/android/material/textfield/a;->c()V

    return-void
.end method

.method a(Z)V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/google/android/material/textfield/a;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getSuffixText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/a;->b(Z)V

    return-void
.end method
