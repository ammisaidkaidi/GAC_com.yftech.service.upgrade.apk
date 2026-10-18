.class public Lcom/google/android/material/appbar/a$a;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field private static final f:F = 0.5f


# instance fields
.field d:I

.field e:F


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1195
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 1177
    iput p1, p0, Lcom/google/android/material/appbar/a$a;->d:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 1178
    iput p1, p0, Lcom/google/android/material/appbar/a$a;->e:F

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1199
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    const/4 p1, 0x0

    .line 1177
    iput p1, p0, Lcom/google/android/material/appbar/a$a;->d:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 1178
    iput p1, p0, Lcom/google/android/material/appbar/a$a;->e:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1181
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 1177
    iput v0, p0, Lcom/google/android/material/appbar/a$a;->d:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 1178
    iput v1, p0, Lcom/google/android/material/appbar/a$a;->e:F

    .line 1183
    sget-object v2, Lcom/google/android/material/a$o;->CollapsingToolbarLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1184
    sget p2, Lcom/google/android/material/a$o;->CollapsingToolbarLayout_Layout_layout_collapseMode:I

    .line 1185
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/appbar/a$a;->d:I

    .line 1187
    sget p2, Lcom/google/android/material/a$o;->CollapsingToolbarLayout_Layout_layout_collapseParallaxMultiplier:I

    .line 1188
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    .line 1187
    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/a$a;->a(F)V

    .line 1191
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1203
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 1177
    iput p1, p0, Lcom/google/android/material/appbar/a$a;->d:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 1178
    iput p1, p0, Lcom/google/android/material/appbar/a$a;->e:F

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup$MarginLayoutParams;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1207
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/4 p1, 0x0

    .line 1177
    iput p1, p0, Lcom/google/android/material/appbar/a$a;->d:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 1178
    iput p1, p0, Lcom/google/android/material/appbar/a$a;->e:F

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0
    .param p1    # Landroid/widget/FrameLayout$LayoutParams;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/am;
        a = 0x13
    .end annotation

    .line 1213
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    const/4 p1, 0x0

    .line 1177
    iput p1, p0, Lcom/google/android/material/appbar/a$a;->d:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 1178
    iput p1, p0, Lcom/google/android/material/appbar/a$a;->e:F

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 1234
    iget p0, p0, Lcom/google/android/material/appbar/a$a;->d:I

    return p0
.end method

.method public a(F)V
    .locals 0

    .line 1246
    iput p1, p0, Lcom/google/android/material/appbar/a$a;->e:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 1223
    iput p1, p0, Lcom/google/android/material/appbar/a$a;->d:I

    return-void
.end method

.method public b()F
    .locals 0

    .line 1256
    iget p0, p0, Lcom/google/android/material/appbar/a$a;->e:F

    return p0
.end method
