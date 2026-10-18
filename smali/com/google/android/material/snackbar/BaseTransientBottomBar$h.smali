.class public Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/snackbar/BaseTransientBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "h"
.end annotation


# static fields
.field private static final a:Landroid/view/View$OnTouchListener;


# instance fields
.field private b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$g;

.field private c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$f;

.field private d:I

.field private final e:F

.field private final f:F

.field private g:Landroid/content/res/ColorStateList;

.field private h:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1068
    new-instance v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h$1;

    invoke-direct {v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h$1;-><init>()V

    sput-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->a:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1087
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1091
    invoke-static {p1, p2, v0, v0}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1094
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 1095
    sget-object v1, Lcom/google/android/material/a$o;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1096
    sget v1, Lcom/google/android/material/a$o;->SnackbarLayout_elevation:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1097
    sget v1, Lcom/google/android/material/a$o;->SnackbarLayout_elevation:I

    .line 1098
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    .line 1097
    invoke-static {p0, v1}, Landroidx/core/n/af;->m(Landroid/view/View;F)V

    .line 1100
    :cond_0
    sget v1, Lcom/google/android/material/a$o;->SnackbarLayout_animationMode:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->d:I

    .line 1101
    sget v0, Lcom/google/android/material/a$o;->SnackbarLayout_backgroundOverlayColorAlpha:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1102
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->e:F

    .line 1103
    sget v0, Lcom/google/android/material/a$o;->SnackbarLayout_backgroundTint:I

    .line 1104
    invoke-static {p1, p2, v0}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 1103
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1106
    sget p1, Lcom/google/android/material/a$o;->SnackbarLayout_backgroundTintMode:I

    const/4 v0, -0x1

    .line 1108
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 1107
    invoke-static {p1, v0}, Lcom/google/android/material/internal/z;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 1106
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1109
    sget p1, Lcom/google/android/material/a$o;->SnackbarLayout_actionTextColorAlpha:I

    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->f:F

    .line 1110
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 1112
    sget-object p1, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 p1, 0x1

    .line 1113
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->setFocusable(Z)V

    .line 1115
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 1116
    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->a()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/core/n/af;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private a()Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1223
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/a$f;->mtrl_snackbar_background_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 1225
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    .line 1226
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 1227
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1229
    sget v0, Lcom/google/android/material/a$c;->colorSurface:I

    sget v2, Lcom/google/android/material/a$c;->colorOnSurface:I

    .line 1231
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getBackgroundOverlayColorAlpha()F

    move-result v3

    .line 1230
    invoke-static {p0, v0, v2, v3}, Lcom/google/android/material/h/a;->a(Landroid/view/View;IIF)I

    move-result v0

    .line 1232
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1233
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 1234
    invoke-static {v1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1235
    iget-object p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->g:Landroid/content/res/ColorStateList;

    invoke-static {v0, p0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-object v0

    .line 1238
    :cond_0
    invoke-static {v1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method getActionTextColorAlpha()F
    .locals 0

    .line 1217
    iget p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->f:F

    return p0
.end method

.method getAnimationMode()I
    .locals 0

    .line 1205
    iget p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->d:I

    return p0
.end method

.method getBackgroundOverlayColorAlpha()F
    .locals 0

    .line 1213
    iget p0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->e:F

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1177
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1178
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$f;

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$f;

    invoke-interface {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$f;->a(Landroid/view/View;)V

    .line 1182
    :cond_0
    invoke-static {p0}, Landroidx/core/n/af;->T(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1187
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1188
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$f;

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$f;

    invoke-interface {v0, p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$f;->b(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 1169
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1170
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$g;

    if-eqz p1, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$g;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$g;->a(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method setAnimationMode(I)V
    .locals 0

    .line 1209
    iput p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->d:I

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1122
    invoke-virtual {p0, p1}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->g:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 1128
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1129
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->g:Landroid/content/res/ColorStateList;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1130
    iget-object v0, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1132
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1137
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->g:Landroid/content/res/ColorStateList;

    .line 1138
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1139
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1140
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 1141
    iget-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->h:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1142
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq v0, p1, :cond_0

    .line 1143
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1150
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->h:Landroid/graphics/PorterDuff$Mode;

    .line 1151
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1152
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/graphics/drawable/a;->g(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1153
    invoke-static {v0, p1}, Landroidx/core/graphics/drawable/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 1154
    invoke-virtual {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eq v0, p1, :cond_0

    .line 1155
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method setOnAttachStateChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$f;)V
    .locals 0

    .line 1200
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->c:Lcom/google/android/material/snackbar/BaseTransientBottomBar$f;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1163
    :cond_0
    sget-object v0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->a:Landroid/view/View$OnTouchListener;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1164
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method setOnLayoutChangeListener(Lcom/google/android/material/snackbar/BaseTransientBottomBar$g;)V
    .locals 0

    .line 1195
    iput-object p1, p0, Lcom/google/android/material/snackbar/BaseTransientBottomBar$h;->b:Lcom/google/android/material/snackbar/BaseTransientBottomBar$g;

    return-void
.end method
