.class final Lcom/google/android/material/textfield/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:I = 0x0

.field static final b:I = 0x1

.field static final c:I = 0x2

.field private static final d:I = 0xd9

.field private static final e:I = 0xa7

.field private static final f:I = 0x0

.field private static final g:I = 0x1

.field private static final h:I = 0x2


# instance fields
.field private A:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private B:I

.field private C:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private D:Landroid/graphics/Typeface;

.field private final i:Landroid/content/Context;

.field private final j:Lcom/google/android/material/textfield/TextInputLayout;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private k:Landroid/widget/LinearLayout;

.field private l:I

.field private m:Landroid/widget/FrameLayout;

.field private n:I

.field private o:Landroid/animation/Animator;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private final p:F

.field private q:I

.field private r:I

.field private s:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private t:Z

.field private u:Landroid/widget/TextView;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private v:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private w:I

.field private x:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private y:Ljava/lang/CharSequence;

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1
    .param p1    # Lcom/google/android/material/textfield/TextInputLayout;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/textfield/f;->i:Landroid/content/Context;

    .line 121
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->j:Lcom/google/android/material/textfield/TextInputLayout;

    .line 122
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->i:Landroid/content/Context;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/google/android/material/a$f;->design_textinput_caption_translate_y:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/google/android/material/textfield/f;->p:F

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/textfield/f;I)I
    .locals 0

    .line 59
    iput p1, p0, Lcom/google/android/material/textfield/f;->q:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/material/textfield/f;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->o:Landroid/animation/Animator;

    return-object p1
.end method

.method private a(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;
    .locals 3

    .line 323
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget p0, p0, Lcom/google/android/material/textfield/f;->p:F

    neg-float p0, p0

    const/4 v2, 0x0

    aput p0, v1, v2

    const/4 p0, 0x1

    const/4 v2, 0x0

    aput v2, v1, p0

    .line 324
    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0xd9

    .line 325
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 326
    sget-object p1, Lcom/google/android/material/a/a;->d:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private a(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;
    .locals 2

    if-eqz p2, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 316
    :goto_0
    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 p1, 0xa7

    .line 317
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 318
    sget-object p1, Lcom/google/android/material/a/a;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/material/textfield/f;)Landroid/widget/TextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    return-object p0
.end method

.method private a(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 273
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/f;->d(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 275
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 276
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    if-eqz p1, :cond_2

    .line 281
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/f;->d(I)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    .line 283
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 p1, 0x0

    .line 286
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :cond_2
    iput p2, p0, Lcom/google/android/material/textfield/f;->q:I

    return-void
.end method

.method private a(IIZ)V
    .locals 13

    move-object v7, p0

    move v8, p2

    move v9, p1

    move/from16 v10, p3

    if-ne v9, v8, :cond_0

    return-void

    :cond_0
    if-eqz v10, :cond_1

    .line 207
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 208
    iput-object v11, v7, Lcom/google/android/material/textfield/f;->o:Landroid/animation/Animator;

    .line 209
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 211
    iget-boolean v2, v7, Lcom/google/android/material/textfield/f;->z:Z

    iget-object v3, v7, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, v12

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/textfield/f;->a(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 219
    iget-boolean v2, v7, Lcom/google/android/material/textfield/f;->t:Z

    iget-object v3, v7, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/textfield/f;->a(Ljava/util/List;ZLandroid/widget/TextView;III)V

    .line 227
    invoke-static {v11, v12}, Lcom/google/android/material/a/b;->a(Landroid/animation/AnimatorSet;Ljava/util/List;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/google/android/material/textfield/f;->d(I)Landroid/widget/TextView;

    move-result-object v3

    .line 229
    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/f;->d(I)Landroid/widget/TextView;

    move-result-object v5

    .line 231
    new-instance v6, Lcom/google/android/material/textfield/f$1;

    move-object v0, v6

    move-object v1, p0

    move v2, p2

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/material/textfield/f$1;-><init>(Lcom/google/android/material/textfield/f;ILandroid/widget/TextView;ILandroid/widget/TextView;)V

    invoke-virtual {v11, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 257
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 259
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/f;->a(II)V

    .line 261
    :goto_0
    iget-object v0, v7, Lcom/google/android/material/textfield/f;->j:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    .line 262
    iget-object v0, v7, Lcom/google/android/material/textfield/f;->j:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v10}, Lcom/google/android/material/textfield/TextInputLayout;->a(Z)V

    .line 263
    iget-object v0, v7, Lcom/google/android/material/textfield/f;->j:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->p()V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;I)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    if-nez p2, :cond_0

    const/16 p0, 0x8

    .line 416
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V
    .locals 0
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 544
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/List;ZLandroid/widget/TextView;III)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;Z",
            "Landroid/widget/TextView;",
            "III)V"
        }
    .end annotation

    if-eqz p3, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eq p4, p6, :cond_1

    if-ne p4, p5, :cond_3

    :cond_1
    if-ne p6, p4, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 307
    :goto_0
    invoke-direct {p0, p3, p2}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Z)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 306
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne p6, p4, :cond_3

    .line 309
    invoke-direct {p0, p3}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 190
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->j:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0}, Landroidx/core/n/af;->ag(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/textfield/f;->j:Lcom/google/android/material/textfield/TextInputLayout;

    .line 191
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/textfield/f;->r:I

    iget p0, p0, Lcom/google/android/material/textfield/f;->q:I

    if-ne v0, p0, :cond_0

    if-eqz p1, :cond_0

    .line 194
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private d(I)Landroid/widget/TextView;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 346
    :pswitch_0
    iget-object p0, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    return-object p0

    .line 344
    :pswitch_1
    iget-object p0, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 505
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/f;->s:Ljava/lang/CharSequence;

    .line 507
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private f(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 519
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/f;->y:Ljava/lang/CharSequence;

    .line 521
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private r()Z
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->k:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/f;->j:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method a()V
    .locals 4

    .line 140
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->c()V

    .line 143
    iget v0, p0, Lcom/google/android/material/textfield/f;->q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lcom/google/android/material/textfield/f;->r:I

    .line 146
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/f;->q:I

    iget v1, p0, Lcom/google/android/material/textfield/f;->r:I

    iget-object v2, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    const/4 v3, 0x0

    .line 147
    invoke-direct {p0, v2, v3}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 146
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/material/textfield/f;->a(IIZ)V

    return-void
.end method

.method a(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 559
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->x:Landroid/content/res/ColorStateList;

    .line 560
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 561
    iget-object p0, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method a(Landroid/graphics/Typeface;)V
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->D:Landroid/graphics/Typeface;

    if-eq p1, v0, :cond_0

    .line 536
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->D:Landroid/graphics/Typeface;

    .line 537
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    .line 538
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    :cond_0
    return-void
.end method

.method a(Landroid/widget/TextView;I)V
    .locals 5

    .line 370
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->k:Landroid/widget/LinearLayout;

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 371
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/google/android/material/textfield/f;->i:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/f;->k:Landroid/widget/LinearLayout;

    .line 372
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 373
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->j:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object v3, p0, Lcom/google/android/material/textfield/f;->k:Landroid/widget/LinearLayout;

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4, v1}, Lcom/google/android/material/textfield/TextInputLayout;->addView(Landroid/view/View;II)V

    .line 375
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/android/material/textfield/f;->i:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/FrameLayout;

    .line 376
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 378
    iget-object v3, p0, Lcom/google/android/material/textfield/f;->k:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->j:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->d()V

    .line 385
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/f;->a(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 386
    iget-object p2, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 387
    iget-object p2, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 388
    iget p1, p0, Lcom/google/android/material/textfield/f;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/material/textfield/f;->n:I

    goto :goto_0

    .line 390
    :cond_1
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 392
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 394
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    iget p1, p0, Lcom/google/android/material/textfield/f;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/material/textfield/f;->l:I

    return-void
.end method

.method a(Ljava/lang/CharSequence;)V
    .locals 3

    .line 127
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->c()V

    .line 128
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->y:Ljava/lang/CharSequence;

    .line 129
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget v0, p0, Lcom/google/android/material/textfield/f;->q:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 133
    iput v1, p0, Lcom/google/android/material/textfield/f;->r:I

    .line 135
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/f;->q:I

    iget v1, p0, Lcom/google/android/material/textfield/f;->r:I

    iget-object v2, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    .line 136
    invoke-direct {p0, v2, p1}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 135
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/textfield/f;->a(IIZ)V

    return-void
.end method

.method a(Z)V
    .locals 3

    .line 422
    iget-boolean v0, p0, Lcom/google/android/material/textfield/f;->t:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 427
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->c()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 430
    new-instance v1, Landroidx/appcompat/widget/aa;

    iget-object v2, p0, Lcom/google/android/material/textfield/f;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/aa;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    .line 431
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    sget v2, Lcom/google/android/material/a$h;->textinput_error:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 432
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 433
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->D:Landroid/graphics/Typeface;

    if-eqz v1, :cond_2

    .line 436
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/material/textfield/f;->D:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 438
    :cond_2
    iget v1, p0, Lcom/google/android/material/textfield/f;->w:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/f;->b(I)V

    .line 439
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->x:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/f;->a(Landroid/content/res/ColorStateList;)V

    .line 440
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->v:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/f;->c(Ljava/lang/CharSequence;)V

    .line 441
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroidx/core/n/af;->j(Landroid/view/View;I)V

    .line 443
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 445
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->b()V

    .line 446
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/f;->b(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    .line 447
    iput-object v0, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    .line 448
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->j:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    .line 449
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->j:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->p()V

    .line 451
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/f;->t:Z

    return-void
.end method

.method a(I)Z
    .locals 0

    const/4 p0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0
.end method

.method b()V
    .locals 4

    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/google/android/material/textfield/f;->s:Ljava/lang/CharSequence;

    .line 165
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->c()V

    .line 167
    iget v1, p0, Lcom/google/android/material/textfield/f;->q:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 169
    iget-boolean v1, p0, Lcom/google/android/material/textfield/f;->z:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/textfield/f;->y:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    .line 170
    iput v1, p0, Lcom/google/android/material/textfield/f;->r:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 173
    iput v1, p0, Lcom/google/android/material/textfield/f;->r:I

    .line 176
    :cond_1
    :goto_0
    iget v1, p0, Lcom/google/android/material/textfield/f;->q:I

    iget v2, p0, Lcom/google/android/material/textfield/f;->r:I

    iget-object v3, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    .line 177
    invoke-direct {p0, v3, v0}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 176
    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/material/textfield/f;->a(IIZ)V

    return-void
.end method

.method b(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param

    .line 566
    iput p1, p0, Lcom/google/android/material/textfield/f;->w:I

    .line 567
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->j:Lcom/google/android/material/textfield/TextInputLayout;

    iget-object p0, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->a(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method b(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 595
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->C:Landroid/content/res/ColorStateList;

    .line 596
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 597
    iget-object p0, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method b(Landroid/widget/TextView;I)V
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->k:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 403
    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/material/textfield/f;->a(I)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_1

    .line 404
    iget p2, p0, Lcom/google/android/material/textfield/f;->n:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/android/material/textfield/f;->n:I

    .line 405
    iget-object p2, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/FrameLayout;

    iget v0, p0, Lcom/google/android/material/textfield/f;->n:I

    invoke-direct {p0, p2, v0}, Lcom/google/android/material/textfield/f;->a(Landroid/view/ViewGroup;I)V

    .line 406
    iget-object p2, p0, Lcom/google/android/material/textfield/f;->m:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 408
    :cond_1
    iget-object p2, p0, Lcom/google/android/material/textfield/f;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 410
    :goto_0
    iget p1, p0, Lcom/google/android/material/textfield/f;->l:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/material/textfield/f;->l:I

    .line 411
    iget-object p1, p0, Lcom/google/android/material/textfield/f;->k:Landroid/widget/LinearLayout;

    iget p2, p0, Lcom/google/android/material/textfield/f;->l:I

    invoke-direct {p0, p1, p2}, Lcom/google/android/material/textfield/f;->a(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method b(Ljava/lang/CharSequence;)V
    .locals 3

    .line 151
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->c()V

    .line 152
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->s:Ljava/lang/CharSequence;

    .line 153
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget v0, p0, Lcom/google/android/material/textfield/f;->q:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 157
    iput v1, p0, Lcom/google/android/material/textfield/f;->r:I

    .line 159
    :cond_0
    iget v0, p0, Lcom/google/android/material/textfield/f;->q:I

    iget v1, p0, Lcom/google/android/material/textfield/f;->r:I

    iget-object v2, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    .line 160
    invoke-direct {p0, v2, p1}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 159
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/material/textfield/f;->a(IIZ)V

    return-void
.end method

.method b(Z)V
    .locals 3

    .line 464
    iget-boolean v0, p0, Lcom/google/android/material/textfield/f;->z:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 469
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->c()V

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 472
    new-instance v1, Landroidx/appcompat/widget/aa;

    iget-object v2, p0, Lcom/google/android/material/textfield/f;->i:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/appcompat/widget/aa;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    .line 473
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    sget v2, Lcom/google/android/material/a$h;->textinput_helper_text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 474
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 475
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->D:Landroid/graphics/Typeface;

    if-eqz v1, :cond_2

    .line 478
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/material/textfield/f;->D:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 480
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 481
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    invoke-static {v1, v0}, Landroidx/core/n/af;->j(Landroid/view/View;I)V

    .line 483
    iget v1, p0, Lcom/google/android/material/textfield/f;->B:I

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/f;->c(I)V

    .line 484
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->C:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1}, Lcom/google/android/material/textfield/f;->b(Landroid/content/res/ColorStateList;)V

    .line 485
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/f;->a(Landroid/widget/TextView;I)V

    goto :goto_0

    .line 487
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/textfield/f;->a()V

    .line 488
    iget-object v1, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/material/textfield/f;->b(Landroid/widget/TextView;I)V

    const/4 v0, 0x0

    .line 489
    iput-object v0, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    .line 490
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->j:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->f()V

    .line 491
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->j:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->p()V

    .line 493
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/material/textfield/f;->z:Z

    return-void
.end method

.method c()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->o:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 332
    iget-object p0, p0, Lcom/google/android/material/textfield/f;->o:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method c(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param

    .line 602
    iput p1, p0, Lcom/google/android/material/textfield/f;->B:I

    .line 603
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 604
    iget-object p0, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    invoke-static {p0, p1}, Landroidx/core/widget/m;->a(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method c(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 573
    iput-object p1, p0, Lcom/google/android/material/textfield/f;->v:Ljava/lang/CharSequence;

    .line 574
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 575
    iget-object p0, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method d()V
    .locals 3

    .line 354
    invoke-direct {p0}, Lcom/google/android/material/textfield/f;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->k:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/material/textfield/f;->j:Lcom/google/android/material/textfield/TextInputLayout;

    .line 358
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/n/af;->w(Landroid/view/View;)I

    move-result v1

    iget-object p0, p0, Lcom/google/android/material/textfield/f;->j:Lcom/google/android/material/textfield/TextInputLayout;

    .line 360
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/n/af;->x(Landroid/view/View;)I

    move-result p0

    const/4 v2, 0x0

    .line 356
    invoke-static {v0, v1, v2, p0, v2}, Landroidx/core/n/af;->b(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method e()Z
    .locals 0

    .line 455
    iget-boolean p0, p0, Lcom/google/android/material/textfield/f;->t:Z

    return p0
.end method

.method f()Z
    .locals 0

    .line 459
    iget-boolean p0, p0, Lcom/google/android/material/textfield/f;->z:Z

    return p0
.end method

.method g()Z
    .locals 1

    .line 497
    iget v0, p0, Lcom/google/android/material/textfield/f;->q:I

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/f;->e(I)Z

    move-result p0

    return p0
.end method

.method h()Z
    .locals 1

    .line 501
    iget v0, p0, Lcom/google/android/material/textfield/f;->r:I

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/f;->e(I)Z

    move-result p0

    return p0
.end method

.method i()Z
    .locals 1

    .line 511
    iget v0, p0, Lcom/google/android/material/textfield/f;->q:I

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/f;->f(I)Z

    move-result p0

    return p0
.end method

.method j()Z
    .locals 1

    .line 515
    iget v0, p0, Lcom/google/android/material/textfield/f;->r:I

    invoke-direct {p0, v0}, Lcom/google/android/material/textfield/f;->f(I)Z

    move-result p0

    return p0
.end method

.method k()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 526
    iget-object p0, p0, Lcom/google/android/material/textfield/f;->s:Ljava/lang/CharSequence;

    return-object p0
.end method

.method l()Ljava/lang/CharSequence;
    .locals 0

    .line 530
    iget-object p0, p0, Lcom/google/android/material/textfield/f;->y:Ljava/lang/CharSequence;

    return-object p0
.end method

.method m()I
    .locals 1
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method n()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 555
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/f;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method o()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 581
    iget-object p0, p0, Lcom/google/android/material/textfield/f;->v:Ljava/lang/CharSequence;

    return-object p0
.end method

.method p()I
    .locals 1
    .annotation build Landroidx/annotation/k;
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method q()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 591
    iget-object v0, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/textfield/f;->A:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
