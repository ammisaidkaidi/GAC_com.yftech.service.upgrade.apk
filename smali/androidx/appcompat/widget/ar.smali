.class public Landroidx/appcompat/widget/ar;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ar$d;,
        Landroidx/appcompat/widget/ar$b;,
        Landroidx/appcompat/widget/ar$a;,
        Landroidx/appcompat/widget/ar$c;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final m:Landroid/view/animation/Interpolator;

.field private static final n:I = 0xc8


# instance fields
.field a:Ljava/lang/Runnable;

.field b:Landroidx/appcompat/widget/aj;

.field c:I

.field d:I

.field protected e:Landroid/view/ViewPropertyAnimator;

.field protected final f:Landroidx/appcompat/widget/ar$d;

.field private h:Landroidx/appcompat/widget/ar$b;

.field private i:Landroid/widget/Spinner;

.field private j:Z

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroidx/appcompat/widget/ar;->m:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Landroidx/appcompat/widget/ar$d;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/ar$d;-><init>(Landroidx/appcompat/widget/ar;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ar;->f:Landroidx/appcompat/widget/ar$d;

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ar;->setHorizontalScrollBarEnabled(Z)V

    .line 87
    invoke-static {p1}, Landroidx/appcompat/view/a;->a(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Landroidx/appcompat/view/a;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ar;->setContentHeight(I)V

    .line 89
    invoke-virtual {p1}, Landroidx/appcompat/view/a;->g()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ar;->d:I

    .line 91
    invoke-direct {p0}, Landroidx/appcompat/widget/ar;->e()Landroidx/appcompat/widget/aj;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/ar;->b:Landroidx/appcompat/widget/aj;

    .line 92
    iget-object p1, p0, Landroidx/appcompat/widget/ar;->b:Landroidx/appcompat/widget/aj;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/ar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private b()Z
    .locals 1

    .line 147
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private c()V
    .locals 4

    .line 155
    invoke-direct {p0}, Landroidx/appcompat/widget/ar;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 158
    invoke-direct {p0}, Landroidx/appcompat/widget/ar;->f()Landroid/widget/Spinner;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    .line 160
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->b:Landroidx/appcompat/widget/aj;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ar;->removeView(Landroid/view/View;)V

    .line 161
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/ar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 164
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    new-instance v1, Landroidx/appcompat/widget/ar$a;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/ar$a;-><init>(Landroidx/appcompat/widget/ar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 166
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ar;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Landroidx/appcompat/widget/ar;->a:Ljava/lang/Runnable;

    .line 170
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    iget p0, p0, Landroidx/appcompat/widget/ar;->l:I

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method private d()Z
    .locals 5

    .line 174
    invoke-direct {p0}, Landroidx/appcompat/widget/ar;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 176
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ar;->removeView(Landroid/view/View;)V

    .line 177
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->b:Landroidx/appcompat/widget/aj;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/widget/ar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ar;->setTabSelected(I)V

    return v1
.end method

.method private e()Landroidx/appcompat/widget/aj;
    .locals 3

    .line 205
    new-instance v0, Landroidx/appcompat/widget/aj;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ar;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Landroidx/appcompat/a$b;->actionBarTabBarStyle:I

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2, v1}, Landroidx/appcompat/widget/aj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p0, 0x1

    .line 207
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/aj;->setMeasureWithLargestChildEnabled(Z)V

    const/16 p0, 0x11

    .line 208
    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/aj;->setGravity(I)V

    .line 209
    new-instance p0, Landroidx/appcompat/widget/aj$b;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Landroidx/appcompat/widget/aj$b;-><init>(II)V

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/aj;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private f()Landroid/widget/Spinner;
    .locals 4

    .line 215
    new-instance v0, Landroidx/appcompat/widget/x;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroidx/appcompat/a$b;->actionDropDownStyle:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Landroidx/appcompat/widget/x;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 217
    new-instance v1, Landroidx/appcompat/widget/aj$b;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroidx/appcompat/widget/aj$b;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-object v0
.end method


# virtual methods
.method a(Landroidx/appcompat/app/a$f;Z)Landroidx/appcompat/widget/ar$c;
    .locals 2

    .line 294
    new-instance v0, Landroidx/appcompat/widget/ar$c;

    invoke-virtual {p0}, Landroidx/appcompat/widget/ar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Landroidx/appcompat/widget/ar$c;-><init>(Landroidx/appcompat/widget/ar;Landroid/content/Context;Landroidx/appcompat/app/a$f;Z)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 296
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ar$c;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    const/4 p2, -0x1

    iget p0, p0, Landroidx/appcompat/widget/ar;->k:I

    invoke-direct {p1, p2, p0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ar$c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 300
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ar$c;->setFocusable(Z)V

    .line 302
    iget-object p1, p0, Landroidx/appcompat/widget/ar;->h:Landroidx/appcompat/widget/ar$b;

    if-nez p1, :cond_1

    .line 303
    new-instance p1, Landroidx/appcompat/widget/ar$b;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/ar$b;-><init>(Landroidx/appcompat/widget/ar;)V

    iput-object p1, p0, Landroidx/appcompat/widget/ar;->h:Landroidx/appcompat/widget/ar$b;

    .line 305
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/ar;->h:Landroidx/appcompat/widget/ar$b;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/ar$c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-object v0
.end method

.method public a()V
    .locals 1

    .line 361
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->b:Landroidx/appcompat/widget/aj;

    invoke-virtual {v0}, Landroidx/appcompat/widget/aj;->removeAllViews()V

    .line 362
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ar$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ar$a;->notifyDataSetChanged()V

    .line 365
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/ar;->j:Z

    if-eqz v0, :cond_1

    .line 366
    invoke-virtual {p0}, Landroidx/appcompat/widget/ar;->requestLayout()V

    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 4

    .line 236
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->e:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->e:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    const-wide/16 v0, 0xc8

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 240
    invoke-virtual {p0}, Landroidx/appcompat/widget/ar;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ar;->setAlpha(F)V

    .line 244
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/ar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 245
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 247
    sget-object v0, Landroidx/appcompat/widget/ar;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 248
    iget-object p0, p0, Landroidx/appcompat/widget/ar;->f:Landroidx/appcompat/widget/ar$d;

    invoke-virtual {p0, v2, p1}, Landroidx/appcompat/widget/ar$d;->a(Landroid/view/ViewPropertyAnimator;I)Landroidx/appcompat/widget/ar$d;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 249
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 251
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/ar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 252
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 254
    sget-object v0, Landroidx/appcompat/widget/ar;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 255
    iget-object p0, p0, Landroidx/appcompat/widget/ar;->f:Landroidx/appcompat/widget/ar$d;

    invoke-virtual {p0, v2, p1}, Landroidx/appcompat/widget/ar$d;->a(Landroid/view/ViewPropertyAnimator;I)Landroidx/appcompat/widget/ar$d;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 256
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method public a(Landroidx/appcompat/app/a$f;IZ)V
    .locals 5

    const/4 v0, 0x0

    .line 326
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/ar;->a(Landroidx/appcompat/app/a$f;Z)Landroidx/appcompat/widget/ar$c;

    move-result-object p1

    .line 327
    iget-object v1, p0, Landroidx/appcompat/widget/ar;->b:Landroidx/appcompat/widget/aj;

    new-instance v2, Landroidx/appcompat/widget/aj$b;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v0, v3, v4}, Landroidx/appcompat/widget/aj$b;-><init>(IIF)V

    invoke-virtual {v1, p1, p2, v2}, Landroidx/appcompat/widget/aj;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 329
    iget-object p2, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    if-eqz p2, :cond_0

    .line 330
    iget-object p2, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/ar$a;

    invoke-virtual {p2}, Landroidx/appcompat/widget/ar$a;->notifyDataSetChanged()V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 333
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ar$c;->setSelected(Z)V

    .line 335
    :cond_1
    iget-boolean p1, p0, Landroidx/appcompat/widget/ar;->j:Z

    if-eqz p1, :cond_2

    .line 336
    invoke-virtual {p0}, Landroidx/appcompat/widget/ar;->requestLayout()V

    :cond_2
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 261
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->b:Landroidx/appcompat/widget/aj;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 262
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 265
    :cond_0
    new-instance v0, Landroidx/appcompat/widget/ar$1;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/ar$1;-><init>(Landroidx/appcompat/widget/ar;Landroid/view/View;)V

    iput-object v0, p0, Landroidx/appcompat/widget/ar;->a:Ljava/lang/Runnable;

    .line 273
    iget-object p1, p0, Landroidx/appcompat/widget/ar;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public b(Landroidx/appcompat/app/a$f;Z)V
    .locals 5

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/ar;->a(Landroidx/appcompat/app/a$f;Z)Landroidx/appcompat/widget/ar$c;

    move-result-object p1

    .line 312
    iget-object v1, p0, Landroidx/appcompat/widget/ar;->b:Landroidx/appcompat/widget/aj;

    new-instance v2, Landroidx/appcompat/widget/aj$b;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v0, v3, v4}, Landroidx/appcompat/widget/aj$b;-><init>(IIF)V

    invoke-virtual {v1, p1, v2}, Landroidx/appcompat/widget/aj;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ar$a;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ar$a;->notifyDataSetChanged()V

    :cond_0
    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 318
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ar$c;->setSelected(Z)V

    .line 320
    :cond_1
    iget-boolean p1, p0, Landroidx/appcompat/widget/ar;->j:Z

    if-eqz p1, :cond_2

    .line 321
    invoke-virtual {p0}, Landroidx/appcompat/widget/ar;->requestLayout()V

    :cond_2
    return-void
.end method

.method public c(I)V
    .locals 1

    .line 341
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->b:Landroidx/appcompat/widget/aj;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ar$c;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ar$c;->a()V

    .line 342
    iget-object p1, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    if-eqz p1, :cond_0

    .line 343
    iget-object p1, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ar$a;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ar$a;->notifyDataSetChanged()V

    .line 345
    :cond_0
    iget-boolean p1, p0, Landroidx/appcompat/widget/ar;->j:Z

    if-eqz p1, :cond_1

    .line 346
    invoke-virtual {p0}, Landroidx/appcompat/widget/ar;->requestLayout()V

    :cond_1
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 351
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->b:Landroidx/appcompat/widget/aj;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/aj;->removeViewAt(I)V

    .line 352
    iget-object p1, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    if-eqz p1, :cond_0

    .line 353
    iget-object p1, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/ar$a;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ar$a;->notifyDataSetChanged()V

    .line 355
    :cond_0
    iget-boolean p1, p0, Landroidx/appcompat/widget/ar;->j:Z

    if-eqz p1, :cond_1

    .line 356
    invoke-virtual {p0}, Landroidx/appcompat/widget/ar;->requestLayout()V

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 278
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 279
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ar;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 226
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    invoke-virtual {p0}, Landroidx/appcompat/widget/ar;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/a;->a(Landroid/content/Context;)Landroidx/appcompat/view/a;

    move-result-object p1

    .line 231
    invoke-virtual {p1}, Landroidx/appcompat/view/a;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ar;->setContentHeight(I)V

    .line 232
    invoke-virtual {p1}, Landroidx/appcompat/view/a;->g()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/ar;->d:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 287
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 288
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/ar;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 372
    check-cast p2, Landroidx/appcompat/widget/ar$c;

    .line 373
    invoke-virtual {p2}, Landroidx/appcompat/widget/ar$c;->b()Landroidx/appcompat/app/a$f;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/a$f;->f()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 98
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    if-ne p2, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    .line 100
    :goto_0
    invoke-virtual {p0, v3}, Landroidx/appcompat/widget/ar;->setFillViewport(Z)V

    .line 102
    iget-object v4, p0, Landroidx/appcompat/widget/ar;->b:Landroidx/appcompat/widget/aj;

    invoke-virtual {v4}, Landroidx/appcompat/widget/aj;->getChildCount()I

    move-result v4

    if-le v4, v1, :cond_3

    if-eq p2, v2, :cond_1

    const/high16 v5, -0x80000000

    if-ne p2, v5, :cond_3

    :cond_1
    const/4 p2, 0x2

    if-le v4, p2, :cond_2

    .line 106
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    const v4, 0x3ecccccd    # 0.4f

    mul-float/2addr p2, v4

    float-to-int p2, p2

    iput p2, p0, Landroidx/appcompat/widget/ar;->c:I

    goto :goto_1

    .line 108
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    div-int/2addr v4, p2

    iput v4, p0, Landroidx/appcompat/widget/ar;->c:I

    .line 110
    :goto_1
    iget p2, p0, Landroidx/appcompat/widget/ar;->c:I

    iget v4, p0, Landroidx/appcompat/widget/ar;->d:I

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/ar;->c:I

    goto :goto_2

    :cond_3
    const/4 p2, -0x1

    .line 112
    iput p2, p0, Landroidx/appcompat/widget/ar;->c:I

    .line 115
    :goto_2
    iget p2, p0, Landroidx/appcompat/widget/ar;->k:I

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    if-nez v3, :cond_4

    .line 117
    iget-boolean v2, p0, Landroidx/appcompat/widget/ar;->j:Z

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move v1, v0

    :goto_3
    if-eqz v1, :cond_6

    .line 121
    iget-object v1, p0, Landroidx/appcompat/widget/ar;->b:Landroidx/appcompat/widget/aj;

    invoke-virtual {v1, v0, p2}, Landroidx/appcompat/widget/aj;->measure(II)V

    .line 122
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->b:Landroidx/appcompat/widget/aj;

    invoke-virtual {v0}, Landroidx/appcompat/widget/aj;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-le v0, v1, :cond_5

    .line 123
    invoke-direct {p0}, Landroidx/appcompat/widget/ar;->c()V

    goto :goto_4

    .line 125
    :cond_5
    invoke-direct {p0}, Landroidx/appcompat/widget/ar;->d()Z

    goto :goto_4

    .line 128
    :cond_6
    invoke-direct {p0}, Landroidx/appcompat/widget/ar;->d()Z

    .line 131
    :goto_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/ar;->getMeasuredWidth()I

    move-result v0

    .line 132
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 133
    invoke-virtual {p0}, Landroidx/appcompat/widget/ar;->getMeasuredWidth()I

    move-result p1

    if-eqz v3, :cond_7

    if-eq v0, p1, :cond_7

    .line 137
    iget p1, p0, Landroidx/appcompat/widget/ar;->l:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ar;->setTabSelected(I)V

    :cond_7
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0

    .line 151
    iput-boolean p1, p0, Landroidx/appcompat/widget/ar;->j:Z

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    .line 200
    iput p1, p0, Landroidx/appcompat/widget/ar;->k:I

    .line 201
    invoke-virtual {p0}, Landroidx/appcompat/widget/ar;->requestLayout()V

    return-void
.end method

.method public setTabSelected(I)V
    .locals 5

    .line 184
    iput p1, p0, Landroidx/appcompat/widget/ar;->l:I

    .line 185
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->b:Landroidx/appcompat/widget/aj;

    invoke-virtual {v0}, Landroidx/appcompat/widget/aj;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 187
    iget-object v3, p0, Landroidx/appcompat/widget/ar;->b:Landroidx/appcompat/widget/aj;

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 189
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    if-eqz v4, :cond_1

    .line 191
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ar;->b(I)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    if-ltz p1, :cond_3

    .line 195
    iget-object p0, p0, Landroidx/appcompat/widget/ar;->i:Landroid/widget/Spinner;

    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_3
    return-void
.end method
