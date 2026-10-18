.class public Landroidx/appcompat/widget/au;
.super Landroid/widget/CompoundButton;
.source "SourceFile"


# static fields
.field private static final W:[I

.field private static final c:I = 0xfa

.field private static final d:I = 0x0

.field private static final e:I = 0x1

.field private static final f:I = 0x2

.field private static final g:Ljava/lang/String; = "android.widget.Switch"

.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:I = 0x3

.field private static final k:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroidx/appcompat/widget/au;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Ljava/lang/CharSequence;

.field private B:Z

.field private C:I

.field private D:I

.field private E:F

.field private F:F

.field private G:Landroid/view/VelocityTracker;

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private final P:Landroid/text/TextPaint;

.field private Q:Landroid/content/res/ColorStateList;

.field private R:Landroid/text/Layout;

.field private S:Landroid/text/Layout;

.field private T:Landroid/text/method/TransformationMethod;

.field private final U:Landroidx/appcompat/widget/z;

.field private final V:Landroid/graphics/Rect;

.field a:F

.field b:Landroid/animation/ObjectAnimator;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/content/res/ColorStateList;

.field private n:Landroid/graphics/PorterDuff$Mode;

.field private o:Z

.field private p:Z

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/content/res/ColorStateList;

.field private s:Landroid/graphics/PorterDuff$Mode;

.field private t:Z

.field private u:Z

.field private v:I

.field private w:I

.field private x:I

.field private y:Z

.field private z:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 102
    new-instance v0, Landroidx/appcompat/widget/au$1;

    const-class v1, Ljava/lang/Float;

    const-string v2, "thumbPos"

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/widget/au$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/appcompat/widget/au;->k:Landroid/util/Property;

    const/4 v0, 0x1

    .line 185
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Landroidx/appcompat/widget/au;->W:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 195
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/au;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 206
    sget v0, Landroidx/appcompat/a$b;->switchStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/au;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 220
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Landroidx/appcompat/widget/au;->m:Landroid/content/res/ColorStateList;

    .line 117
    iput-object v0, p0, Landroidx/appcompat/widget/au;->n:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    .line 118
    iput-boolean v1, p0, Landroidx/appcompat/widget/au;->o:Z

    .line 119
    iput-boolean v1, p0, Landroidx/appcompat/widget/au;->p:Z

    .line 122
    iput-object v0, p0, Landroidx/appcompat/widget/au;->r:Landroid/content/res/ColorStateList;

    .line 123
    iput-object v0, p0, Landroidx/appcompat/widget/au;->s:Landroid/graphics/PorterDuff$Mode;

    .line 124
    iput-boolean v1, p0, Landroidx/appcompat/widget/au;->t:Z

    .line 125
    iput-boolean v1, p0, Landroidx/appcompat/widget/au;->u:Z

    .line 139
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Landroidx/appcompat/widget/au;->G:Landroid/view/VelocityTracker;

    .line 182
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroidx/appcompat/widget/au;->V:Landroid/graphics/Rect;

    .line 222
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p0, v2}, Landroidx/appcompat/widget/av;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 224
    new-instance v2, Landroid/text/TextPaint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, p0, Landroidx/appcompat/widget/au;->P:Landroid/text/TextPaint;

    .line 226
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 227
    iget-object v4, p0, Landroidx/appcompat/widget/au;->P:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, v4, Landroid/text/TextPaint;->density:F

    .line 229
    sget-object v2, Landroidx/appcompat/a$m;->SwitchCompat:[I

    invoke-static {p1, p2, v2, p3, v1}, Landroidx/appcompat/widget/ba;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ba;

    move-result-object v2

    .line 231
    sget-object v6, Landroidx/appcompat/a$m;->SwitchCompat:[I

    .line 233
    invoke-virtual {v2}, Landroidx/appcompat/widget/ba;->a()Landroid/content/res/TypedArray;

    move-result-object v8

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v7, p2

    move v9, p3

    .line 231
    invoke-static/range {v4 .. v10}, Landroidx/core/n/af;->a(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 235
    sget v4, Landroidx/appcompat/a$m;->SwitchCompat_android_thumb:I

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/ba;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    .line 236
    iget-object v4, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 237
    iget-object v4, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 239
    :cond_0
    sget v4, Landroidx/appcompat/a$m;->SwitchCompat_track:I

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/ba;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    .line 240
    iget-object v4, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 241
    iget-object v4, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 243
    :cond_1
    sget v4, Landroidx/appcompat/a$m;->SwitchCompat_android_textOn:I

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/ba;->d(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/widget/au;->z:Ljava/lang/CharSequence;

    .line 244
    sget v4, Landroidx/appcompat/a$m;->SwitchCompat_android_textOff:I

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/ba;->d(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroidx/appcompat/widget/au;->A:Ljava/lang/CharSequence;

    .line 245
    sget v4, Landroidx/appcompat/a$m;->SwitchCompat_showText:I

    invoke-virtual {v2, v4, v3}, Landroidx/appcompat/widget/ba;->a(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/appcompat/widget/au;->B:Z

    .line 246
    sget v4, Landroidx/appcompat/a$m;->SwitchCompat_thumbTextPadding:I

    invoke-virtual {v2, v4, v1}, Landroidx/appcompat/widget/ba;->e(II)I

    move-result v4

    iput v4, p0, Landroidx/appcompat/widget/au;->v:I

    .line 248
    sget v4, Landroidx/appcompat/a$m;->SwitchCompat_switchMinWidth:I

    invoke-virtual {v2, v4, v1}, Landroidx/appcompat/widget/ba;->e(II)I

    move-result v4

    iput v4, p0, Landroidx/appcompat/widget/au;->w:I

    .line 250
    sget v4, Landroidx/appcompat/a$m;->SwitchCompat_switchPadding:I

    invoke-virtual {v2, v4, v1}, Landroidx/appcompat/widget/ba;->e(II)I

    move-result v4

    iput v4, p0, Landroidx/appcompat/widget/au;->x:I

    .line 252
    sget v4, Landroidx/appcompat/a$m;->SwitchCompat_splitTrack:I

    invoke-virtual {v2, v4, v1}, Landroidx/appcompat/widget/ba;->a(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/appcompat/widget/au;->y:Z

    .line 254
    sget v4, Landroidx/appcompat/a$m;->SwitchCompat_thumbTint:I

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/ba;->g(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 256
    iput-object v4, p0, Landroidx/appcompat/widget/au;->m:Landroid/content/res/ColorStateList;

    .line 257
    iput-boolean v3, p0, Landroidx/appcompat/widget/au;->o:Z

    .line 259
    :cond_2
    sget v4, Landroidx/appcompat/a$m;->SwitchCompat_thumbTintMode:I

    const/4 v5, -0x1

    .line 260
    invoke-virtual {v2, v4, v5}, Landroidx/appcompat/widget/ba;->a(II)I

    move-result v4

    .line 259
    invoke-static {v4, v0}, Landroidx/appcompat/widget/af;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    .line 261
    iget-object v6, p0, Landroidx/appcompat/widget/au;->n:Landroid/graphics/PorterDuff$Mode;

    if-eq v6, v4, :cond_3

    .line 262
    iput-object v4, p0, Landroidx/appcompat/widget/au;->n:Landroid/graphics/PorterDuff$Mode;

    .line 263
    iput-boolean v3, p0, Landroidx/appcompat/widget/au;->p:Z

    .line 265
    :cond_3
    iget-boolean v4, p0, Landroidx/appcompat/widget/au;->o:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Landroidx/appcompat/widget/au;->p:Z

    if-eqz v4, :cond_5

    .line 266
    :cond_4
    invoke-direct {p0}, Landroidx/appcompat/widget/au;->b()V

    .line 269
    :cond_5
    sget v4, Landroidx/appcompat/a$m;->SwitchCompat_trackTint:I

    invoke-virtual {v2, v4}, Landroidx/appcompat/widget/ba;->g(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 271
    iput-object v4, p0, Landroidx/appcompat/widget/au;->r:Landroid/content/res/ColorStateList;

    .line 272
    iput-boolean v3, p0, Landroidx/appcompat/widget/au;->t:Z

    .line 274
    :cond_6
    sget v4, Landroidx/appcompat/a$m;->SwitchCompat_trackTintMode:I

    .line 275
    invoke-virtual {v2, v4, v5}, Landroidx/appcompat/widget/ba;->a(II)I

    move-result v4

    .line 274
    invoke-static {v4, v0}, Landroidx/appcompat/widget/af;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 276
    iget-object v4, p0, Landroidx/appcompat/widget/au;->s:Landroid/graphics/PorterDuff$Mode;

    if-eq v4, v0, :cond_7

    .line 277
    iput-object v0, p0, Landroidx/appcompat/widget/au;->s:Landroid/graphics/PorterDuff$Mode;

    .line 278
    iput-boolean v3, p0, Landroidx/appcompat/widget/au;->u:Z

    .line 280
    :cond_7
    iget-boolean v0, p0, Landroidx/appcompat/widget/au;->t:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroidx/appcompat/widget/au;->u:Z

    if-eqz v0, :cond_9

    .line 281
    :cond_8
    invoke-direct {p0}, Landroidx/appcompat/widget/au;->a()V

    .line 284
    :cond_9
    sget v0, Landroidx/appcompat/a$m;->SwitchCompat_switchTextAppearance:I

    invoke-virtual {v2, v0, v1}, Landroidx/appcompat/widget/ba;->g(II)I

    move-result v0

    if-eqz v0, :cond_a

    .line 287
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/au;->a(Landroid/content/Context;I)V

    .line 290
    :cond_a
    new-instance v0, Landroidx/appcompat/widget/z;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/z;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroidx/appcompat/widget/au;->U:Landroidx/appcompat/widget/z;

    .line 291
    iget-object v0, p0, Landroidx/appcompat/widget/au;->U:Landroidx/appcompat/widget/z;

    invoke-virtual {v0, p2, p3}, Landroidx/appcompat/widget/z;->a(Landroid/util/AttributeSet;I)V

    .line 293
    invoke-virtual {v2}, Landroidx/appcompat/widget/ba;->f()V

    .line 295
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 296
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/au;->D:I

    .line 297
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/au;->H:I

    .line 300
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->refreshDrawableState()V

    .line 301
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/au;->setChecked(Z)V

    return-void
.end method

.method private static a(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method private a(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8

    .line 885
    iget-object v0, p0, Landroidx/appcompat/widget/au;->T:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Landroidx/appcompat/widget/au;->T:Landroid/text/method/TransformationMethod;

    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    move-object v1, p1

    .line 889
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroidx/appcompat/widget/au;->P:Landroid/text/TextPaint;

    if-eqz v1, :cond_1

    .line 891
    iget-object p0, p0, Landroidx/appcompat/widget/au;->P:Landroid/text/TextPaint;

    invoke-static {v1, p0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result p0

    float-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p0, v3

    :goto_0
    move v3, p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :goto_1
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p1
.end method

.method private a()V
    .locals 2

    .line 582
    iget-object v0, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/widget/au;->t:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/au;->u:Z

    if-eqz v0, :cond_3

    .line 583
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    .line 585
    iget-boolean v0, p0, Landroidx/appcompat/widget/au;->t:Z

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/au;->r:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 589
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/au;->u:Z

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/au;->s:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 595
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 596
    iget-object v0, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private a(II)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    .line 361
    :pswitch_0
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 357
    :pswitch_1
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 353
    :pswitch_2
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 365
    :goto_0
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/au;->a(Landroid/graphics/Typeface;I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 995
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 996
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 997
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 998
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private a(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1036
    :goto_0
    sget-object v0, Landroidx/appcompat/widget/au;->k:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/au;->b:Landroid/animation/ObjectAnimator;

    .line 1037
    iget-object p1, p0, Landroidx/appcompat/widget/au;->b:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1038
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_1

    .line 1039
    iget-object p1, p0, Landroidx/appcompat/widget/au;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 1041
    :cond_1
    iget-object p0, p0, Landroidx/appcompat/widget/au;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private a(FF)Z
    .locals 5

    .line 899
    iget-object v0, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 904
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/au;->getThumbOffset()I

    move-result v0

    .line 906
    iget-object v2, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroidx/appcompat/widget/au;->V:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 907
    iget v2, p0, Landroidx/appcompat/widget/au;->M:I

    iget v3, p0, Landroidx/appcompat/widget/au;->D:I

    sub-int/2addr v2, v3

    .line 908
    iget v3, p0, Landroidx/appcompat/widget/au;->L:I

    add-int/2addr v3, v0

    iget v0, p0, Landroidx/appcompat/widget/au;->D:I

    sub-int/2addr v3, v0

    .line 909
    iget v0, p0, Landroidx/appcompat/widget/au;->K:I

    add-int/2addr v0, v3

    iget-object v4, p0, Landroidx/appcompat/widget/au;->V:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    iget-object v4, p0, Landroidx/appcompat/widget/au;->V:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v4

    iget v4, p0, Landroidx/appcompat/widget/au;->D:I

    add-int/2addr v0, v4

    .line 911
    iget v4, p0, Landroidx/appcompat/widget/au;->O:I

    iget p0, p0, Landroidx/appcompat/widget/au;->D:I

    add-int/2addr v4, p0

    int-to-float p0, v3

    cmpl-float p0, p1, p0

    if-lez p0, :cond_1

    int-to-float p0, v0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    int-to-float p0, v2

    cmpl-float p0, p2, p0

    if-lez p0, :cond_1

    int-to-float p0, v4

    cmpg-float p0, p2, p0

    if-gez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private b()V
    .locals 2

    .line 705
    iget-object v0, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroidx/appcompat/widget/au;->o:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/au;->p:Z

    if-eqz v0, :cond_3

    .line 706
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    .line 708
    iget-boolean v0, p0, Landroidx/appcompat/widget/au;->o:Z

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/au;->m:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 712
    :cond_1
    iget-boolean v0, p0, Landroidx/appcompat/widget/au;->p:Z

    if-eqz v0, :cond_2

    .line 713
    iget-object v0, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroidx/appcompat/widget/au;->n:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 718
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 719
    iget-object v0, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 6

    const/4 v0, 0x0

    .line 1007
    iput v0, p0, Landroidx/appcompat/widget/au;->C:I

    .line 1011
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1012
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->isChecked()Z

    move-result v3

    if-eqz v1, :cond_4

    .line 1015
    iget-object v1, p0, Landroidx/appcompat/widget/au;->G:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v1, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 1016
    iget-object v1, p0, Landroidx/appcompat/widget/au;->G:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 1017
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroidx/appcompat/widget/au;->H:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 1018
    invoke-static {p0}, Landroidx/appcompat/widget/bg;->a(Landroid/view/View;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    cmpg-float v1, v1, v5

    if-gez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_1

    :cond_2
    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    :goto_1
    move v1, v2

    goto :goto_2

    .line 1020
    :cond_3
    invoke-direct {p0}, Landroidx/appcompat/widget/au;->getTargetCheckedState()Z

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    if-eq v1, v3, :cond_5

    .line 1027
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/au;->playSoundEffect(I)V

    .line 1030
    :cond_5
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/au;->setChecked(Z)V

    .line 1031
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/au;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private c()V
    .locals 1

    .line 1045
    iget-object v0, p0, Landroidx/appcompat/widget/au;->b:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1046
    iget-object p0, p0, Landroidx/appcompat/widget/au;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 1

    .line 1051
    iget p0, p0, Landroidx/appcompat/widget/au;->a:F

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getThumbOffset()I
    .locals 2

    .line 1304
    invoke-static {p0}, Landroidx/appcompat/widget/bg;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1305
    iget v1, p0, Landroidx/appcompat/widget/au;->a:F

    sub-float/2addr v0, v1

    goto :goto_0

    .line 1307
    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/au;->a:F

    .line 1309
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/widget/au;->getThumbScrollRange()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method private getThumbScrollRange()I
    .locals 3

    .line 1313
    iget-object v0, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1314
    iget-object v0, p0, Landroidx/appcompat/widget/au;->V:Landroid/graphics/Rect;

    .line 1315
    iget-object v1, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1318
    iget-object v1, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1319
    iget-object v1, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Landroidx/appcompat/widget/af;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0

    .line 1321
    :cond_0
    sget-object v1, Landroidx/appcompat/widget/af;->a:Landroid/graphics/Rect;

    .line 1324
    :goto_0
    iget v2, p0, Landroidx/appcompat/widget/au;->I:I

    iget p0, p0, Landroidx/appcompat/widget/au;->K:I

    sub-int/2addr v2, p0

    iget p0, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p0

    iget p0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p0

    iget p0, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, p0

    iget p0, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, p0

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Landroid/content/Context;I)V
    .locals 3

    .line 311
    sget-object v0, Landroidx/appcompat/a$m;->TextAppearance:[I

    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/ba;->a(Landroid/content/Context;I[I)Landroidx/appcompat/widget/ba;

    move-result-object p1

    .line 317
    sget p2, Landroidx/appcompat/a$m;->TextAppearance_android_textColor:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/ba;->g(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 319
    iput-object p2, p0, Landroidx/appcompat/widget/au;->Q:Landroid/content/res/ColorStateList;

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroidx/appcompat/widget/au;->Q:Landroid/content/res/ColorStateList;

    .line 325
    :goto_0
    sget p2, Landroidx/appcompat/a$m;->TextAppearance_android_textSize:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/ba;->e(II)I

    move-result p2

    if-eqz p2, :cond_1

    int-to-float p2, p2

    .line 327
    iget-object v1, p0, Landroidx/appcompat/widget/au;->P:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Landroidx/appcompat/widget/au;->P:Landroid/text/TextPaint;

    invoke-virtual {v1, p2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 329
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->requestLayout()V

    .line 334
    :cond_1
    sget p2, Landroidx/appcompat/a$m;->TextAppearance_android_typeface:I

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/ba;->a(II)I

    move-result p2

    .line 335
    sget v2, Landroidx/appcompat/a$m;->TextAppearance_android_textStyle:I

    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/ba;->a(II)I

    move-result v1

    .line 337
    invoke-direct {p0, p2, v1}, Landroidx/appcompat/widget/au;->a(II)V

    .line 339
    sget p2, Landroidx/appcompat/a$m;->TextAppearance_textAllCaps:I

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/ba;->a(IZ)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 341
    new-instance p2, Landroidx/appcompat/d/a;

    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroidx/appcompat/d/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroidx/appcompat/widget/au;->T:Landroid/text/method/TransformationMethod;

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 343
    iput-object p2, p0, Landroidx/appcompat/widget/au;->T:Landroid/text/method/TransformationMethod;

    .line 346
    :goto_1
    invoke-virtual {p1}, Landroidx/appcompat/widget/ba;->f()V

    return-void
.end method

.method public a(Landroid/graphics/Typeface;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-lez p2, :cond_4

    if-nez p1, :cond_0

    .line 377
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    .line 379
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 382
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/au;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    if-eqz p1, :cond_1

    .line 384
    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    not-int p1, p1

    and-int/2addr p1, p2

    .line 386
    iget-object p2, p0, Landroidx/appcompat/widget/au;->P:Landroid/text/TextPaint;

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 387
    iget-object p0, p0, Landroidx/appcompat/widget/au;->P:Landroid/text/TextPaint;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_3

    const/high16 v0, -0x41800000    # -0.25f

    :cond_3
    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_2

    .line 389
    :cond_4
    iget-object p2, p0, Landroidx/appcompat/widget/au;->P:Landroid/text/TextPaint;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 390
    iget-object p2, p0, Landroidx/appcompat/widget/au;->P:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 391
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/au;->setSwitchTypeface(Landroid/graphics/Typeface;)V

    :goto_2
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1144
    iget-object v0, p0, Landroidx/appcompat/widget/au;->V:Landroid/graphics/Rect;

    .line 1145
    iget v1, p0, Landroidx/appcompat/widget/au;->L:I

    .line 1146
    iget v2, p0, Landroidx/appcompat/widget/au;->M:I

    .line 1147
    iget v3, p0, Landroidx/appcompat/widget/au;->N:I

    .line 1148
    iget v4, p0, Landroidx/appcompat/widget/au;->O:I

    .line 1150
    invoke-direct {p0}, Landroidx/appcompat/widget/au;->getThumbOffset()I

    move-result v5

    add-int/2addr v5, v1

    .line 1153
    iget-object v6, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 1154
    iget-object v6, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v6}, Landroidx/appcompat/widget/af;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_0

    .line 1156
    :cond_0
    sget-object v6, Landroidx/appcompat/widget/af;->a:Landroid/graphics/Rect;

    .line 1160
    :goto_0
    iget-object v7, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    .line 1161
    iget-object v7, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1164
    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    if-eqz v6, :cond_4

    .line 1172
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-le v7, v8, :cond_1

    .line 1173
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    add-int/2addr v1, v7

    .line 1175
    :cond_1
    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-le v7, v8, :cond_2

    .line 1176
    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v7, v2

    goto :goto_1

    :cond_2
    move v7, v2

    .line 1178
    :goto_1
    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_3

    .line 1179
    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    sub-int/2addr v3, v8

    .line 1181
    :cond_3
    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_5

    .line 1182
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v8

    sub-int v6, v4, v6

    goto :goto_2

    :cond_4
    move v7, v2

    :cond_5
    move v6, v4

    .line 1185
    :goto_2
    iget-object v8, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v1, v7, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1189
    :cond_6
    iget-object v1, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    .line 1190
    iget-object v1, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1192
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v5, v1

    .line 1193
    iget v3, p0, Landroidx/appcompat/widget/au;->K:I

    add-int/2addr v5, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    .line 1194
    iget-object v0, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1196
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1198
    invoke-static {v0, v1, v2, v5, v4}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    .line 1204
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 2

    .line 1364
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1365
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 1368
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1369
    iget-object v0, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, p1, p2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    .line 1372
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 1373
    iget-object p0, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1, p2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_2
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 4

    .line 1342
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 1344
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getDrawableState()[I

    move-result-object v0

    .line 1347
    iget-object v1, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1348
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1349
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 1352
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1353
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1354
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_1
    if-eqz v2, :cond_2

    .line 1358
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->invalidate()V

    :cond_2
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 1274
    invoke-static {p0}, Landroidx/appcompat/widget/bg;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1275
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result p0

    return p0

    .line 1277
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/au;->I:I

    add-int/2addr v0, v1

    .line 1278
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1279
    iget p0, p0, Landroidx/appcompat/widget/au;->x:I

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .line 1286
    invoke-static {p0}, Landroidx/appcompat/widget/bg;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1287
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result p0

    return p0

    .line 1289
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/au;->I:I

    add-int/2addr v0, v1

    .line 1290
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1291
    iget p0, p0, Landroidx/appcompat/widget/au;->x:I

    add-int/2addr v0, p0

    :cond_1
    return v0
.end method

.method public getShowText()Z
    .locals 0

    .line 803
    iget-boolean p0, p0, Landroidx/appcompat/widget/au;->B:Z

    return p0
.end method

.method public getSplitTrack()Z
    .locals 0

    .line 744
    iget-boolean p0, p0, Landroidx/appcompat/widget/au;->y:Z

    return p0
.end method

.method public getSwitchMinWidth()I
    .locals 0

    .line 457
    iget p0, p0, Landroidx/appcompat/widget/au;->w:I

    return p0
.end method

.method public getSwitchPadding()I
    .locals 0

    .line 432
    iget p0, p0, Landroidx/appcompat/widget/au;->x:I

    return p0
.end method

.method public getTextOff()Ljava/lang/CharSequence;
    .locals 0

    .line 772
    iget-object p0, p0, Landroidx/appcompat/widget/au;->A:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTextOn()Ljava/lang/CharSequence;
    .locals 0

    .line 753
    iget-object p0, p0, Landroidx/appcompat/widget/au;->z:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 641
    iget-object p0, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getThumbTextPadding()I
    .locals 0

    .line 480
    iget p0, p0, Landroidx/appcompat/widget/au;->v:I

    return p0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 672
    iget-object p0, p0, Landroidx/appcompat/widget/au;->m:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 701
    iget-object p0, p0, Landroidx/appcompat/widget/au;->n:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 520
    iget-object p0, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 550
    iget-object p0, p0, Landroidx/appcompat/widget/au;->r:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 578
    iget-object p0, p0, Landroidx/appcompat/widget/au;->s:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1384
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 1386
    iget-object v0, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1390
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 1391
    iget-object v0, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 1394
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/au;->b:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/au;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1395
    iget-object v0, p0, Landroidx/appcompat/widget/au;->b:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    const/4 v0, 0x0

    .line 1396
    iput-object v0, p0, Landroidx/appcompat/widget/au;->b:Landroid/animation/ObjectAnimator;

    :cond_2
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 0

    add-int/lit8 p1, p1, 0x1

    .line 1333
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 1334
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1335
    sget-object p0, Landroidx/appcompat/widget/au;->W:[I

    invoke-static {p1, p0}, Landroidx/appcompat/widget/au;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1209
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 1211
    iget-object v0, p0, Landroidx/appcompat/widget/au;->V:Landroid/graphics/Rect;

    .line 1212
    iget-object v1, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1214
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 1216
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1219
    :goto_0
    iget v2, p0, Landroidx/appcompat/widget/au;->M:I

    .line 1220
    iget v3, p0, Landroidx/appcompat/widget/au;->O:I

    .line 1221
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    .line 1222
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 1224
    iget-object v4, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1226
    iget-boolean v5, p0, Landroidx/appcompat/widget/au;->y:Z

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 1227
    invoke-static {v4}, Landroidx/appcompat/widget/af;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v5

    .line 1228
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1229
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 1230
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v5

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 1232
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 1233
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1234
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1235
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 1237
    :cond_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1241
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    if-eqz v4, :cond_3

    .line 1244
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1247
    :cond_3
    invoke-direct {p0}, Landroidx/appcompat/widget/au;->getTargetCheckedState()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroidx/appcompat/widget/au;->R:Landroid/text/Layout;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Landroidx/appcompat/widget/au;->S:Landroid/text/Layout;

    :goto_2
    if-eqz v1, :cond_7

    .line 1249
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getDrawableState()[I

    move-result-object v5

    .line 1250
    iget-object v6, p0, Landroidx/appcompat/widget/au;->Q:Landroid/content/res/ColorStateList;

    if-eqz v6, :cond_5

    .line 1251
    iget-object v6, p0, Landroidx/appcompat/widget/au;->P:Landroid/text/TextPaint;

    iget-object v7, p0, Landroidx/appcompat/widget/au;->Q:Landroid/content/res/ColorStateList;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 1253
    :cond_5
    iget-object v6, p0, Landroidx/appcompat/widget/au;->P:Landroid/text/TextPaint;

    iput-object v5, v6, Landroid/text/TextPaint;->drawableState:[I

    if-eqz v4, :cond_6

    .line 1257
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 1258
    iget v4, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, p0

    goto :goto_3

    .line 1260
    :cond_6
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getWidth()I

    move-result v4

    .line 1263
    :goto_3
    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v4, p0

    add-int/2addr v2, v3

    .line 1264
    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v2, p0

    int-to-float p0, v4

    int-to-float v2, v2

    .line 1265
    invoke-virtual {p1, p0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1266
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 1269
    :cond_7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 1402
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string p0, "android.widget.Switch"

    .line 1403
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1408
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.Switch"

    .line 1409
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1410
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/au;->z:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/au;->A:Ljava/lang/CharSequence;

    .line 1411
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1412
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1413
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1414
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1416
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1417
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1418
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1088
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 1092
    iget-object p1, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 1093
    iget-object p1, p0, Landroidx/appcompat/widget/au;->V:Landroid/graphics/Rect;

    .line 1094
    iget-object p3, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    .line 1095
    iget-object p3, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 1097
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1100
    :goto_0
    iget-object p3, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {p3}, Landroidx/appcompat/widget/af;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object p3

    .line 1101
    iget p4, p3, Landroid/graphics/Rect;->left:I

    iget p5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 1102
    iget p3, p3, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    move p1, p2

    move p2, p4

    goto :goto_1

    :cond_1
    move p1, p2

    .line 1107
    :goto_1
    invoke-static {p0}, Landroidx/appcompat/widget/bg;->a(Landroid/view/View;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1108
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getPaddingLeft()I

    move-result p3

    add-int/2addr p3, p2

    .line 1109
    iget p4, p0, Landroidx/appcompat/widget/au;->I:I

    add-int/2addr p4, p3

    sub-int/2addr p4, p2

    sub-int/2addr p4, p1

    goto :goto_2

    .line 1111
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getPaddingRight()I

    move-result p4

    sub-int/2addr p3, p4

    sub-int p4, p3, p1

    .line 1112
    iget p3, p0, Landroidx/appcompat/widget/au;->I:I

    sub-int p3, p4, p3

    add-int/2addr p3, p2

    add-int/2addr p3, p1

    .line 1117
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getGravity()I

    move-result p1

    and-int/lit8 p1, p1, 0x70

    const/16 p2, 0x10

    if-eq p1, p2, :cond_4

    const/16 p2, 0x50

    if-eq p1, p2, :cond_3

    .line 1120
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getPaddingTop()I

    move-result p1

    .line 1121
    iget p2, p0, Landroidx/appcompat/widget/au;->J:I

    add-int/2addr p2, p1

    goto :goto_3

    .line 1131
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getPaddingBottom()I

    move-result p2

    sub-int p2, p1, p2

    .line 1132
    iget p1, p0, Landroidx/appcompat/widget/au;->J:I

    sub-int p1, p2, p1

    goto :goto_3

    .line 1125
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p2, p0, Landroidx/appcompat/widget/au;->J:I

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p1, p2

    .line 1127
    iget p2, p0, Landroidx/appcompat/widget/au;->J:I

    add-int/2addr p2, p1

    .line 1136
    :goto_3
    iput p3, p0, Landroidx/appcompat/widget/au;->L:I

    .line 1137
    iput p1, p0, Landroidx/appcompat/widget/au;->M:I

    .line 1138
    iput p2, p0, Landroidx/appcompat/widget/au;->O:I

    .line 1139
    iput p4, p0, Landroidx/appcompat/widget/au;->N:I

    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 808
    iget-boolean v0, p0, Landroidx/appcompat/widget/au;->B:Z

    if-eqz v0, :cond_1

    .line 809
    iget-object v0, p0, Landroidx/appcompat/widget/au;->R:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 810
    iget-object v0, p0, Landroidx/appcompat/widget/au;->z:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/au;->a(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/au;->R:Landroid/text/Layout;

    .line 813
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/au;->S:Landroid/text/Layout;

    if-nez v0, :cond_1

    .line 814
    iget-object v0, p0, Landroidx/appcompat/widget/au;->A:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/au;->a(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/au;->S:Landroid/text/Layout;

    .line 818
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/au;->V:Landroid/graphics/Rect;

    .line 821
    iget-object v1, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 823
    iget-object v1, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 824
    iget-object v1, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    .line 825
    iget-object v3, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    goto :goto_0

    :cond_2
    move v1, v2

    move v3, v1

    .line 832
    :goto_0
    iget-boolean v4, p0, Landroidx/appcompat/widget/au;->B:Z

    if-eqz v4, :cond_3

    .line 833
    iget-object v4, p0, Landroidx/appcompat/widget/au;->R:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroidx/appcompat/widget/au;->S:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Landroidx/appcompat/widget/au;->v:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    goto :goto_1

    :cond_3
    move v4, v2

    .line 839
    :goto_1
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/au;->K:I

    .line 842
    iget-object v1, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 843
    iget-object v1, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 844
    iget-object v1, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_2

    .line 846
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 852
    :goto_2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 853
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 854
    iget-object v4, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 855
    iget-object v4, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v4}, Landroidx/appcompat/widget/af;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v4

    .line 856
    iget v5, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 857
    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 860
    :cond_5
    iget v4, p0, Landroidx/appcompat/widget/au;->w:I

    iget v5, p0, Landroidx/appcompat/widget/au;->K:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 862
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 863
    iput v0, p0, Landroidx/appcompat/widget/au;->I:I

    .line 864
    iput v1, p0, Landroidx/appcompat/widget/au;->J:I

    .line 866
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 868
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getMeasuredHeight()I

    move-result p1

    if-ge p1, v1, :cond_6

    .line 870
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getMeasuredWidthAndState()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/au;->setMeasuredDimension(II)V

    :cond_6
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 876
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 878
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/au;->z:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/au;->A:Ljava/lang/CharSequence;

    :goto_0
    if-eqz p0, :cond_1

    .line 880
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 917
    iget-object v0, p0, Landroidx/appcompat/widget/au;->G:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 918
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 932
    :pswitch_0
    iget v0, p0, Landroidx/appcompat/widget/au;->C:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_1

    .line 952
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 953
    invoke-direct {p0}, Landroidx/appcompat/widget/au;->getThumbScrollRange()I

    move-result v0

    .line 954
    iget v1, p0, Landroidx/appcompat/widget/au;->E:F

    sub-float v1, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, v1, v4

    if-lez v0, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    const/high16 v0, -0x40800000    # -1.0f

    move v1, v0

    .line 963
    :goto_0
    invoke-static {p0}, Landroidx/appcompat/widget/bg;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    neg-float v1, v1

    .line 966
    :cond_2
    iget v0, p0, Landroidx/appcompat/widget/au;->a:F

    add-float/2addr v0, v1

    invoke-static {v0, v4, v3}, Landroidx/appcompat/widget/au;->a(FFF)F

    move-result v0

    .line 967
    iget v1, p0, Landroidx/appcompat/widget/au;->a:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_3

    .line 968
    iput p1, p0, Landroidx/appcompat/widget/au;->E:F

    .line 969
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/au;->setThumbPosition(F)V

    :cond_3
    return v2

    .line 938
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 939
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 940
    iget v4, p0, Landroidx/appcompat/widget/au;->E:F

    sub-float v4, v0, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroidx/appcompat/widget/au;->D:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_4

    iget v4, p0, Landroidx/appcompat/widget/au;->F:F

    sub-float v4, v3, v4

    .line 941
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Landroidx/appcompat/widget/au;->D:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6

    .line 942
    :cond_4
    iput v1, p0, Landroidx/appcompat/widget/au;->C:I

    .line 943
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 944
    iput v0, p0, Landroidx/appcompat/widget/au;->E:F

    .line 945
    iput v3, p0, Landroidx/appcompat/widget/au;->F:F

    return v2

    .line 979
    :pswitch_3
    iget v0, p0, Landroidx/appcompat/widget/au;->C:I

    if-ne v0, v1, :cond_5

    .line 980
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/au;->b(Landroid/view/MotionEvent;)V

    .line 982
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    :cond_5
    const/4 v0, 0x0

    .line 985
    iput v0, p0, Landroidx/appcompat/widget/au;->C:I

    .line 986
    iget-object v0, p0, Landroidx/appcompat/widget/au;->G:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_1

    .line 921
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 922
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 923
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/widget/au;->a(FF)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 924
    iput v2, p0, Landroidx/appcompat/widget/au;->C:I

    .line 925
    iput v0, p0, Landroidx/appcompat/widget/au;->E:F

    .line 926
    iput v1, p0, Landroidx/appcompat/widget/au;->F:F

    .line 991
    :cond_6
    :goto_1
    :pswitch_5
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 1

    .line 1071
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1075
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->isChecked()Z

    move-result p1

    .line 1077
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/core/n/af;->ag(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1078
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/au;->a(Z)V

    goto :goto_1

    .line 1081
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/au;->c()V

    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1082
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/au;->setThumbPosition(F)V

    :goto_1
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 1430
    invoke-static {p0, p1}, Landroidx/core/widget/m;->b(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    .line 1429
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public setShowText(Z)V
    .locals 1

    .line 792
    iget-boolean v0, p0, Landroidx/appcompat/widget/au;->B:Z

    if-eq v0, p1, :cond_0

    .line 793
    iput-boolean p1, p0, Landroidx/appcompat/widget/au;->B:Z

    .line 794
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0

    .line 734
    iput-boolean p1, p0, Landroidx/appcompat/widget/au;->y:Z

    .line 735
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->invalidate()V

    return-void
.end method

.method public setSwitchMinWidth(I)V
    .locals 0

    .line 444
    iput p1, p0, Landroidx/appcompat/widget/au;->w:I

    .line 445
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->requestLayout()V

    return-void
.end method

.method public setSwitchPadding(I)V
    .locals 0

    .line 420
    iput p1, p0, Landroidx/appcompat/widget/au;->x:I

    .line 421
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->requestLayout()V

    return-void
.end method

.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 403
    iget-object v0, p0, Landroidx/appcompat/widget/au;->P:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/au;->P:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/au;->P:Landroid/text/TextPaint;

    .line 404
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 405
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/au;->P:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 407
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->requestLayout()V

    .line 408
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->invalidate()V

    :cond_2
    return-void
.end method

.method public setTextOff(Ljava/lang/CharSequence;)V
    .locals 0

    .line 781
    iput-object p1, p0, Landroidx/appcompat/widget/au;->A:Ljava/lang/CharSequence;

    .line 782
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->requestLayout()V

    return-void
.end method

.method public setTextOn(Ljava/lang/CharSequence;)V
    .locals 0

    .line 762
    iput-object p1, p0, Landroidx/appcompat/widget/au;->z:Ljava/lang/CharSequence;

    .line 763
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->requestLayout()V

    return-void
.end method

.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 610
    iget-object v0, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 613
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 615
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 617
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->requestLayout()V

    return-void
.end method

.method setThumbPosition(F)V
    .locals 0

    .line 1060
    iput p1, p0, Landroidx/appcompat/widget/au;->a:F

    .line 1061
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->invalidate()V

    return-void
.end method

.method public setThumbResource(I)V
    .locals 1

    .line 629
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/au;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setThumbTextPadding(I)V
    .locals 0

    .line 468
    iput p1, p0, Landroidx/appcompat/widget/au;->v:I

    .line 469
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->requestLayout()V

    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 659
    iput-object p1, p0, Landroidx/appcompat/widget/au;->m:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 660
    iput-boolean p1, p0, Landroidx/appcompat/widget/au;->o:Z

    .line 662
    invoke-direct {p0}, Landroidx/appcompat/widget/au;->b()V

    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 687
    iput-object p1, p0, Landroidx/appcompat/widget/au;->n:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 688
    iput-boolean p1, p0, Landroidx/appcompat/widget/au;->p:Z

    .line 690
    invoke-direct {p0}, Landroidx/appcompat/widget/au;->b()V

    return-void
.end method

.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 491
    iget-object v0, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 494
    :cond_0
    iput-object p1, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    .line 496
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 498
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->requestLayout()V

    return-void
.end method

.method public setTrackResource(I)V
    .locals 1

    .line 509
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/au;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 537
    iput-object p1, p0, Landroidx/appcompat/widget/au;->r:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 538
    iput-boolean p1, p0, Landroidx/appcompat/widget/au;->t:Z

    .line 540
    invoke-direct {p0}, Landroidx/appcompat/widget/au;->a()V

    return-void
.end method

.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 564
    iput-object p1, p0, Landroidx/appcompat/widget/au;->s:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    .line 565
    iput-boolean p1, p0, Landroidx/appcompat/widget/au;->u:Z

    .line 567
    invoke-direct {p0}, Landroidx/appcompat/widget/au;->a()V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 1066
    invoke-virtual {p0}, Landroidx/appcompat/widget/au;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/au;->setChecked(Z)V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1379
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/au;->l:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/au;->q:Landroid/graphics/drawable/Drawable;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
