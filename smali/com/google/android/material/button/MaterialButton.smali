.class public Lcom/google/android/material/button/MaterialButton;
.super Landroidx/appcompat/widget/g;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/google/android/material/t/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/button/MaterialButton$d;,
        Lcom/google/android/material/button/MaterialButton$a;,
        Lcom/google/android/material/button/MaterialButton$c;,
        Lcom/google/android/material/button/MaterialButton$b;
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final e:I = 0x4

.field private static final f:[I

.field private static final g:[I

.field private static final h:Ljava/lang/String; = "MaterialButton"

.field private static final i:I


# instance fields
.field private final j:Lcom/google/android/material/button/a;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final k:Ljava/util/LinkedHashSet;
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/button/MaterialButton$b;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/google/android/material/button/MaterialButton$c;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private m:Landroid/graphics/PorterDuff$Mode;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private n:Landroid/content/res/ColorStateList;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private o:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private p:I
    .annotation build Landroidx/annotation/ak;
    .end annotation
.end field

.field private q:I
    .annotation build Landroidx/annotation/ak;
    .end annotation
.end field

.field private r:I
    .annotation build Landroidx/annotation/ak;
    .end annotation
.end field

.field private s:Z

.field private t:Z

.field private u:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 128
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x101009f

    aput v3, v1, v2

    sput-object v1, Lcom/google/android/material/button/MaterialButton;->f:[I

    .line 129
    new-array v0, v0, [I

    const v1, 0x10100a0

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/button/MaterialButton;->g:[I

    .line 170
    sget v0, Lcom/google/android/material/a$n;->Widget_MaterialComponents_Button:I

    sput v0, Lcom/google/android/material/button/MaterialButton;->i:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 190
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 194
    sget v0, Lcom/google/android/material/a$c;->materialButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 198
    sget v0, Lcom/google/android/material/button/MaterialButton;->i:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 173
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->k:Ljava/util/LinkedHashSet;

    const/4 p1, 0x0

    .line 185
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->s:Z

    .line 186
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->t:Z

    .line 200
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 202
    sget-object v2, Lcom/google/android/material/a$o;->MaterialButton:[I

    sget v4, Lcom/google/android/material/button/MaterialButton;->i:I

    new-array v5, p1, [I

    move-object v0, v6

    move-object v1, p2

    move v3, p3

    .line 203
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/s;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 206
    sget v1, Lcom/google/android/material/a$o;->MaterialButton_iconPadding:I

    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->r:I

    .line 207
    sget v1, Lcom/google/android/material/a$o;->MaterialButton_iconTintMode:I

    const/4 v2, -0x1

    .line 209
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 208
    invoke-static {v1, v2}, Lcom/google/android/material/internal/z;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/button/MaterialButton;->m:Landroid/graphics/PorterDuff$Mode;

    .line 213
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$o;->MaterialButton_iconTint:I

    .line 212
    invoke-static {v1, v0, v2}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/button/MaterialButton;->n:Landroid/content/res/ColorStateList;

    .line 214
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/android/material/a$o;->MaterialButton_icon:I

    invoke-static {v1, v0, v2}, Lcom/google/android/material/q/c;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/material/button/MaterialButton;->o:Landroid/graphics/drawable/Drawable;

    .line 215
    sget v1, Lcom/google/android/material/a$o;->MaterialButton_iconGravity:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->u:I

    .line 217
    sget v1, Lcom/google/android/material/a$o;->MaterialButton_iconSize:I

    invoke-virtual {v0, v1, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    .line 218
    sget v1, Lcom/google/android/material/button/MaterialButton;->i:I

    .line 219
    invoke-static {v6, p2, p3, v1}, Lcom/google/android/material/t/o;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lcom/google/android/material/t/o$a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/material/t/o$a;->a()Lcom/google/android/material/t/o;

    move-result-object p2

    .line 222
    new-instance p3, Lcom/google/android/material/button/a;

    invoke-direct {p3, p0, p2}, Lcom/google/android/material/button/a;-><init>(Lcom/google/android/material/button/MaterialButton;Lcom/google/android/material/t/o;)V

    iput-object p3, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    .line 223
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p2, v0}, Lcom/google/android/material/button/a;->a(Landroid/content/res/TypedArray;)V

    .line 225
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 227
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->r:I

    invoke-virtual {p0, p2}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    .line 228
    iget-object p2, p0, Lcom/google/android/material/button/MaterialButton;->o:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    move p1, v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    .line 682
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->o:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 683
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->o:Landroid/graphics/drawable/Drawable;

    .line 684
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->o:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->n:Landroid/content/res/ColorStateList;

    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 685
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->m:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->o:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->m:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 689
    :cond_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 690
    :goto_0
    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 691
    :goto_1
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->o:Landroid/graphics/drawable/Drawable;

    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->q:I

    iget v5, p0, Lcom/google/android/material/button/MaterialButton;->q:I

    add-int/2addr v5, v0

    invoke-virtual {v3, v4, v1, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 695
    :cond_3
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->u:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->u:I

    if-ne v0, v2, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v3

    :goto_3
    if-eqz p1, :cond_6

    .line 699
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButton;->b(Z)V

    return-void

    .line 704
    :cond_6
    invoke-static {p0}, Landroidx/core/widget/m;->c(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 705
    aget-object v4, p1, v1

    .line 706
    aget-object p1, p1, v2

    if-eqz v0, :cond_7

    .line 707
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->o:Landroid/graphics/drawable/Drawable;

    if-ne v4, v2, :cond_8

    :cond_7
    if-nez v0, :cond_9

    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->o:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_9

    :cond_8
    move v1, v3

    :cond_9
    if-eqz v1, :cond_a

    .line 711
    invoke-direct {p0, v0}, Lcom/google/android/material/button/MaterialButton;->b(Z)V

    :cond_a
    return-void
.end method

.method private b(Z)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 717
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1, v0, v0, v0}, Landroidx/core/widget/m;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 719
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0, v0, p1, v0}, Landroidx/core/widget/m;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private c()V
    .locals 6

    .line 456
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->o:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 460
    :cond_0
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->u:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->u:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    goto :goto_2

    .line 466
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 467
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 468
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 471
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    invoke-interface {v4, v3, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 475
    :cond_2
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 477
    iget v3, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    .line 479
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v4, v0

    .line 481
    invoke-static {p0}, Landroidx/core/n/af;->x(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->r:I

    sub-int/2addr v4, v0

    .line 484
    invoke-static {p0}, Landroidx/core/n/af;->w(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    .line 488
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->d()Z

    move-result v0

    iget v3, p0, Lcom/google/android/material/button/MaterialButton;->u:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    if-eq v0, v1, :cond_5

    neg-int v4, v4

    .line 492
    :cond_5
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->q:I

    if-eq v0, v4, :cond_6

    .line 493
    iput v4, p0, Lcom/google/android/material/button/MaterialButton;->q:I

    .line 494
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    :cond_6
    return-void

    .line 461
    :cond_7
    :goto_2
    iput v2, p0, Lcom/google/android/material/button/MaterialButton;->q:I

    .line 462
    invoke-direct {p0, v2}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    return-void

    :cond_8
    :goto_3
    return-void
.end method

.method private d()Z
    .locals 1

    .line 499
    invoke-static {p0}, Landroidx/core/n/af;->p(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private e()Z
    .locals 1

    .line 1069
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p0}, Lcom/google/android/material/button/a;->b()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getA11yClassName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Landroid/widget/CompoundButton;

    goto :goto_0

    :cond_0
    const-class p0, Landroid/widget/Button;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 956
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public a(Lcom/google/android/material/button/MaterialButton$b;)V
    .locals 0
    .param p1    # Lcom/google/android/material/button/MaterialButton$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 941
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/google/android/material/button/MaterialButton$b;)V
    .locals 0
    .param p1    # Lcom/google/android/material/button/MaterialButton$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 951
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1002
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p0}, Lcom/google/android/material/button/a;->j()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 356
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 367
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public getCornerRadius()I
    .locals 1
    .annotation build Landroidx/annotation/ak;
    .end annotation

    .line 887
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p0}, Lcom/google/android/material/button/a;->h()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 610
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->o:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getIconGravity()I
    .locals 0

    .line 899
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->u:I

    return p0
.end method

.method public getIconPadding()I
    .locals 0
    .annotation build Landroidx/annotation/ak;
    .end annotation

    .line 536
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->r:I

    return p0
.end method

.method public getIconSize()I
    .locals 0
    .annotation build Landroidx/annotation/ak;
    .end annotation

    .line 566
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    return p0
.end method

.method public getIconTint()Landroid/content/res/ColorStateList;
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->n:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public getIconTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    .line 674
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->m:Landroid/graphics/PorterDuff$Mode;

    return-object p0
.end method

.method public getRippleColor()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 761
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p0}, Lcom/google/android/material/button/a;->e()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/t/o;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1043
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1044
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p0}, Lcom/google/android/material/button/a;->l()Lcom/google/android/material/t/o;

    move-result-object p0

    return-object p0

    .line 1046
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStrokeColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 803
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p0}, Lcom/google/android/material/button/a;->f()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getStrokeWidth()I
    .locals 1
    .annotation build Landroidx/annotation/ak;
    .end annotation

    .line 846
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p0}, Lcom/google/android/material/button/a;->g()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 301
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p0}, Lcom/google/android/material/button/a;->c()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 307
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/g;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 339
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p0}, Lcom/google/android/material/button/a;->d()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0

    .line 344
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/widget/g;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    return-object p0
.end method

.method public isChecked()Z
    .locals 0

    .line 980
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButton;->s:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 438
    invoke-super {p0}, Landroidx/appcompat/widget/g;->onAttachedToWindow()V

    .line 440
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    .line 442
    invoke-virtual {v0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/t/j;

    move-result-object v0

    .line 441
    invoke-static {p0, v0}, Lcom/google/android/material/t/k;->a(Landroid/view/View;Lcom/google/android/material/t/j;)V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x2

    .line 918
    invoke-super {p0, p1}, Landroidx/appcompat/widget/g;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 920
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    sget-object v0, Lcom/google/android/material/button/MaterialButton;->f:[I

    invoke-static {p1, v0}, Lcom/google/android/material/button/MaterialButton;->mergeDrawableStates([I[I)[I

    .line 924
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 925
    sget-object p0, Lcom/google/android/material/button/MaterialButton;->g:[I

    invoke-static {p1, p0}, Lcom/google/android/material/button/MaterialButton;->mergeDrawableStates([I[I)[I

    :cond_1
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 248
    invoke-super {p0, p1}, Landroidx/appcompat/widget/g;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 249
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 250
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 239
    invoke-super {p0, p1}, Landroidx/appcompat/widget/g;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 240
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->getA11yClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 241
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 242
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 243
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isClickable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 417
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/g;->onLayout(ZIIII)V

    .line 419
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    if-eqz p1, :cond_0

    .line 420
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    sub-int/2addr p5, p3

    sub-int/2addr p4, p2

    invoke-virtual {p0, p5, p4}, Lcom/google/android/material/button/a;->a(II)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 426
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/g;->onMeasure(II)V

    .line 427
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->c()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 264
    instance-of v0, p1, Lcom/google/android/material/button/MaterialButton$d;

    if-nez v0, :cond_0

    .line 265
    invoke-super {p0, p1}, Landroidx/appcompat/widget/g;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 268
    :cond_0
    check-cast p1, Lcom/google/android/material/button/MaterialButton$d;

    .line 269
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton$d;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/g;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 270
    iget-boolean p1, p1, Lcom/google/android/material/button/MaterialButton$d;->a:Z

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 256
    invoke-super {p0}, Landroidx/appcompat/widget/g;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 257
    new-instance v1, Lcom/google/android/material/button/MaterialButton$d;

    invoke-direct {v1, v0}, Lcom/google/android/material/button/MaterialButton$d;-><init>(Landroid/os/Parcelable;)V

    .line 258
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButton;->s:Z

    iput-boolean p0, v1, Lcom/google/android/material/button/MaterialButton$d;->a:Z

    return-object v1
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 432
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/g;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 433
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->c()V

    return-void
.end method

.method public performClick()Z
    .locals 0

    .line 990
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->toggle()V

    .line 992
    invoke-super {p0}, Landroidx/appcompat/widget/g;->performClick()Z

    move-result p0

    return p0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 383
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 372
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/a;->a(I)V

    goto :goto_0

    .line 377
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/g;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 397
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 398
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const-string v0, "MaterialButton"

    const-string v1, "Do not set the background; MaterialButton manages its own background drawable."

    .line 399
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {v0}, Lcom/google/android/material/button/a;->a()V

    .line 403
    invoke-super {p0, p1}, Landroidx/appcompat/widget/g;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    .line 411
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/widget/g;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 392
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 350
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 361
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setCheckable(Z)V
    .locals 1

    .line 1012
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/a;->b(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 2

    .line 961
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->s:Z

    if-eq v0, p1, :cond_2

    .line 962
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->s:Z

    .line 963
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->refreshDrawableState()V

    .line 966
    iget-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->t:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 970
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->t:Z

    .line 971
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->k:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton$b;

    .line 972
    iget-boolean v1, p0, Lcom/google/android/material/button/MaterialButton;->s:Z

    invoke-interface {v0, p0, v1}, Lcom/google/android/material/button/MaterialButton$b;->a(Lcom/google/android/material/button/MaterialButton;Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 974
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->t:Z

    :cond_2
    return-void
.end method

.method public setCornerRadius(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param

    .line 858
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/a;->c(I)V

    :cond_0
    return-void
.end method

.method public setCornerRadiusResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 872
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCornerRadius(I)V

    :cond_0
    return-void
.end method

.method public setElevation(F)V
    .locals 1
    .annotation build Landroidx/annotation/am;
        a = 0x15
    .end annotation

    .line 449
    invoke-super {p0, p1}, Landroidx/appcompat/widget/g;->setElevation(F)V

    .line 450
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p0}, Lcom/google/android/material/button/a;->i()Lcom/google/android/material/t/j;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->r(F)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 579
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->o:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 580
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->o:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    .line 581
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    :cond_0
    return-void
.end method

.method public setIconGravity(I)V
    .locals 1

    .line 910
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->u:I

    if-eq v0, p1, :cond_0

    .line 911
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->u:I

    .line 912
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->c()V

    :cond_0
    return-void
.end method

.method public setIconPadding(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param

    .line 521
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->r:I

    if-eq v0, p1, :cond_0

    .line 522
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->r:I

    .line 523
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    :cond_0
    return-void
.end method

.method public setIconResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 596
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 598
    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIconSize(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param

    if-ltz p1, :cond_1

    .line 551
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    if-eq v0, p1, :cond_0

    .line 552
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    const/4 p1, 0x1

    .line 553
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    :cond_0
    return-void

    .line 548
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "iconSize cannot be less than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 622
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->n:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 623
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->n:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 624
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    :cond_0
    return-void
.end method

.method public setIconTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->m:Landroid/graphics/PorterDuff$Mode;

    if-eq v0, p1, :cond_0

    .line 661
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->m:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x0

    .line 662
    invoke-direct {p0, p1}, Lcom/google/android/material/button/MaterialButton;->a(Z)V

    :cond_0
    return-void
.end method

.method public setIconTintResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/m;
        .end annotation
    .end param

    .line 637
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method setInternalBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 510
    invoke-super {p0, p1}, Landroidx/appcompat/widget/g;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method setOnPressedChangeListenerInternal(Lcom/google/android/material/button/MaterialButton$c;)V
    .locals 0
    .param p1    # Lcom/google/android/material/button/MaterialButton$c;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1057
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButton;->l:Lcom/google/android/material/button/MaterialButton$c;

    return-void
.end method

.method public setPressed(Z)V
    .locals 1

    .line 1062
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Lcom/google/android/material/button/MaterialButton$c;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Lcom/google/android/material/button/MaterialButton$c;

    invoke-interface {v0, p0, p1}, Lcom/google/android/material/button/MaterialButton$c;->a(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 1065
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/g;->setPressed(Z)V

    return-void
.end method

.method public setRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 732
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/a;->b(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setRippleColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/m;
        .end annotation
    .end param

    .line 746
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setRippleColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/t/o;)V
    .locals 1
    .param p1    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1024
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/a;->a(Lcom/google/android/material/t/o;)V

    return-void

    .line 1027
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setShouldDrawSurfaceColorStroke(Z)V
    .locals 1

    .line 1073
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public setStrokeColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 774
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/a;->c(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setStrokeColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/m;
        .end annotation
    .end param

    .line 789
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ak;
        .end annotation
    .end param

    .line 816
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/a;->b(I)V

    :cond_0
    return-void
.end method

.method public setStrokeWidthResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 831
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 282
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/a;->a(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 287
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/g;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 320
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->j:Lcom/google/android/material/button/a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/button/a;->a(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 325
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/g;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :goto_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 985
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->s:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    return-void
.end method
