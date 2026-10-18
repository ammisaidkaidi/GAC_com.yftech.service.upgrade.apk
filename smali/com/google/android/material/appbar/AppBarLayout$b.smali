.class public Lcom/google/android/material/appbar/AppBarLayout$b;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/appbar/AppBarLayout$b$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x4

.field public static final e:I = 0x8

.field public static final f:I = 0x10

.field public static final g:I = 0x20

.field static final h:I = 0x5

.field static final i:I = 0x11

.field static final j:I = 0xa


# instance fields
.field k:I

.field l:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1107
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x1

    .line 1092
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$b;->k:I

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    .line 1111
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    const/4 p1, 0x1

    .line 1092
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$b;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1096
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 1092
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$b;->k:I

    .line 1097
    sget-object v0, Lcom/google/android/material/a$o;->AppBarLayout_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1098
    sget v0, Lcom/google/android/material/a$o;->AppBarLayout_Layout_layout_scrollFlags:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$b;->k:I

    .line 1099
    sget v0, Lcom/google/android/material/a$o;->AppBarLayout_Layout_layout_scrollInterpolator:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1100
    sget v0, Lcom/google/android/material/a$o;->AppBarLayout_Layout_layout_scrollInterpolator:I

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 1101
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$b;->l:Landroid/view/animation/Interpolator;

    .line 1103
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1115
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 1092
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$b;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0

    .line 1119
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x1

    .line 1092
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$b;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 0
    .annotation build Landroidx/annotation/am;
        a = 0x13
    .end annotation

    .line 1125
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    const/4 p1, 0x1

    .line 1092
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$b;->k:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout$b;)V
    .locals 1
    .param p1    # Lcom/google/android/material/appbar/AppBarLayout$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/am;
        a = 0x13
    .end annotation

    .line 1131
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    const/4 v0, 0x1

    .line 1092
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$b;->k:I

    .line 1132
    iget v0, p1, Lcom/google/android/material/appbar/AppBarLayout$b;->k:I

    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout$b;->k:I

    .line 1133
    iget-object p1, p1, Lcom/google/android/material/appbar/AppBarLayout$b;->l:Landroid/view/animation/Interpolator;

    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$b;->l:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 1159
    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout$b;->k:I

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 1148
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout$b;->k:I

    return-void
.end method

.method public a(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1170
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout$b;->l:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public b()Landroid/view/animation/Interpolator;
    .locals 0

    .line 1181
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout$b;->l:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method c()Z
    .locals 2

    .line 1186
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout$b;->k:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout$b;->k:I

    and-int/lit8 p0, p0, 0xa

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
