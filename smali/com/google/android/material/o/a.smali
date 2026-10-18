.class public Lcom/google/android/material/o/a;
.super Lcom/google/android/material/internal/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/o/a$b;,
        Lcom/google/android/material/o/a$a;
    }
.end annotation


# static fields
.field private static final d:[I

.field private static final e:[I

.field private static final f:I

.field private static final g:I = 0x1


# instance fields
.field c:Lcom/google/android/material/o/a$a;

.field private final h:Lcom/google/android/material/internal/h;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final i:Lcom/google/android/material/internal/i;

.field private final j:I

.field private final k:[I

.field private l:Landroid/view/MenuInflater;

.field private m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 100
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, Lcom/google/android/material/o/a;->d:[I

    .line 101
    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, Lcom/google/android/material/o/a;->e:[I

    .line 103
    sget v0, Lcom/google/android/material/a$n;->Widget_Design_NavigationView:I

    sput v0, Lcom/google/android/material/o/a;->f:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/o/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 122
    sget v0, Lcom/google/android/material/a$c;->navigationViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/o/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 126
    sget v0, Lcom/google/android/material/o/a;->f:I

    invoke-static {p1, p2, p3, v0}, Lcom/google/android/material/theme/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/internal/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    new-instance p1, Lcom/google/android/material/internal/i;

    invoke-direct {p1}, Lcom/google/android/material/internal/i;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    const/4 p1, 0x2

    .line 112
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/material/o/a;->k:[I

    .line 128
    invoke-virtual {p0}, Lcom/google/android/material/o/a;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 131
    new-instance v0, Lcom/google/android/material/internal/h;

    invoke-direct {v0, p1}, Lcom/google/android/material/internal/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/o/a;->h:Lcom/google/android/material/internal/h;

    .line 134
    sget-object v2, Lcom/google/android/material/a$o;->NavigationView:[I

    sget v4, Lcom/google/android/material/o/a;->f:I

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    move v3, p3

    .line 135
    invoke-static/range {v0 .. v5}, Lcom/google/android/material/internal/s;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroidx/appcompat/widget/ba;

    move-result-object p2

    .line 142
    sget p3, Lcom/google/android/material/a$o;->NavigationView_android_background:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ba;->j(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 143
    sget p3, Lcom/google/android/material/a$o;->NavigationView_android_background:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ba;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p0, p3}, Landroidx/core/n/af;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/o/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/material/o/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    instance-of p3, p3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p3, :cond_3

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/material/o/a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 150
    new-instance v0, Lcom/google/android/material/t/j;

    invoke-direct {v0}, Lcom/google/android/material/t/j;-><init>()V

    .line 151
    instance-of v1, p3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_2

    .line 152
    check-cast p3, Landroid/graphics/drawable/ColorDrawable;

    .line 153
    invoke-virtual {p3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p3

    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 152
    invoke-virtual {v0, p3}, Lcom/google/android/material/t/j;->g(Landroid/content/res/ColorStateList;)V

    .line 155
    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/android/material/t/j;->b(Landroid/content/Context;)V

    .line 156
    invoke-static {p0, v0}, Landroidx/core/n/af;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 159
    :cond_3
    sget p3, Lcom/google/android/material/a$o;->NavigationView_elevation:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ba;->j(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 160
    sget p3, Lcom/google/android/material/a$o;->NavigationView_elevation:I

    invoke-virtual {p2, p3, v6}, Landroidx/appcompat/widget/ba;->e(II)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/o/a;->setElevation(F)V

    .line 162
    :cond_4
    sget p3, Lcom/google/android/material/a$o;->NavigationView_android_fitsSystemWindows:I

    invoke-virtual {p2, p3, v6}, Landroidx/appcompat/widget/ba;->a(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/google/android/material/o/a;->setFitsSystemWindows(Z)V

    .line 164
    sget p3, Lcom/google/android/material/a$o;->NavigationView_android_maxWidth:I

    invoke-virtual {p2, p3, v6}, Landroidx/appcompat/widget/ba;->e(II)I

    move-result p3

    iput p3, p0, Lcom/google/android/material/o/a;->j:I

    .line 167
    sget p3, Lcom/google/android/material/a$o;->NavigationView_itemIconTint:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ba;->j(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 168
    sget p3, Lcom/google/android/material/a$o;->NavigationView_itemIconTint:I

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/ba;->g(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    goto :goto_0

    :cond_5
    const p3, 0x1010038

    .line 170
    invoke-direct {p0, p3}, Lcom/google/android/material/o/a;->d(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 175
    :goto_0
    sget v0, Lcom/google/android/material/a$o;->NavigationView_itemTextAppearance:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/ba;->j(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 176
    sget v0, Lcom/google/android/material/a$o;->NavigationView_itemTextAppearance:I

    invoke-virtual {p2, v0, v6}, Landroidx/appcompat/widget/ba;->g(II)I

    move-result v0

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v6

    move v2, v0

    .line 180
    :goto_1
    sget v3, Lcom/google/android/material/a$o;->NavigationView_itemIconSize:I

    invoke-virtual {p2, v3}, Landroidx/appcompat/widget/ba;->j(I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 181
    sget v3, Lcom/google/android/material/a$o;->NavigationView_itemIconSize:I

    invoke-virtual {p2, v3, v6}, Landroidx/appcompat/widget/ba;->e(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/material/o/a;->setItemIconSize(I)V

    :cond_7
    const/4 v3, 0x0

    .line 185
    sget v4, Lcom/google/android/material/a$o;->NavigationView_itemTextColor:I

    invoke-virtual {p2, v4}, Landroidx/appcompat/widget/ba;->j(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 186
    sget v3, Lcom/google/android/material/a$o;->NavigationView_itemTextColor:I

    invoke-virtual {p2, v3}, Landroidx/appcompat/widget/ba;->g(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    :cond_8
    if-nez v0, :cond_9

    if-nez v3, :cond_9

    const v3, 0x1010036

    .line 191
    invoke-direct {p0, v3}, Lcom/google/android/material/o/a;->d(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 194
    :cond_9
    sget v4, Lcom/google/android/material/a$o;->NavigationView_itemBackground:I

    invoke-virtual {p2, v4}, Landroidx/appcompat/widget/ba;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_a

    .line 197
    invoke-direct {p0, p2}, Lcom/google/android/material/o/a;->a(Landroidx/appcompat/widget/ba;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 198
    invoke-direct {p0, p2}, Lcom/google/android/material/o/a;->b(Landroidx/appcompat/widget/ba;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 201
    :cond_a
    sget v5, Lcom/google/android/material/a$o;->NavigationView_itemHorizontalPadding:I

    invoke-virtual {p2, v5}, Landroidx/appcompat/widget/ba;->j(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 202
    sget v5, Lcom/google/android/material/a$o;->NavigationView_itemHorizontalPadding:I

    .line 203
    invoke-virtual {p2, v5, v6}, Landroidx/appcompat/widget/ba;->e(II)I

    move-result v5

    .line 204
    iget-object v7, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {v7, v5}, Lcom/google/android/material/internal/i;->e(I)V

    .line 206
    :cond_b
    sget v5, Lcom/google/android/material/a$o;->NavigationView_itemIconPadding:I

    .line 207
    invoke-virtual {p2, v5, v6}, Landroidx/appcompat/widget/ba;->e(II)I

    move-result v5

    .line 209
    sget v7, Lcom/google/android/material/a$o;->NavigationView_itemMaxLines:I

    invoke-virtual {p2, v7, v1}, Landroidx/appcompat/widget/ba;->a(II)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/google/android/material/o/a;->setItemMaxLines(I)V

    .line 211
    iget-object v7, p0, Lcom/google/android/material/o/a;->h:Lcom/google/android/material/internal/h;

    new-instance v8, Lcom/google/android/material/o/a$1;

    invoke-direct {v8, p0}, Lcom/google/android/material/o/a$1;-><init>(Lcom/google/android/material/o/a;)V

    invoke-virtual {v7, v8}, Lcom/google/android/material/internal/h;->a(Landroidx/appcompat/view/menu/g$a;)V

    .line 221
    iget-object v7, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {v7, v1}, Lcom/google/android/material/internal/i;->a(I)V

    .line 222
    iget-object v1, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    iget-object v7, p0, Lcom/google/android/material/o/a;->h:Lcom/google/android/material/internal/h;

    invoke-virtual {v1, p1, v7}, Lcom/google/android/material/internal/i;->a(Landroid/content/Context;Landroidx/appcompat/view/menu/g;)V

    .line 223
    iget-object p1, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p1, p3}, Lcom/google/android/material/internal/i;->a(Landroid/content/res/ColorStateList;)V

    .line 224
    iget-object p1, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0}, Lcom/google/android/material/o/a;->getOverScrollMode()I

    move-result p3

    invoke-virtual {p1, p3}, Lcom/google/android/material/internal/i;->i(I)V

    if-eqz v0, :cond_c

    .line 226
    iget-object p1, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p1, v2}, Lcom/google/android/material/internal/i;->d(I)V

    .line 228
    :cond_c
    iget-object p1, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p1, v3}, Lcom/google/android/material/internal/i;->b(Landroid/content/res/ColorStateList;)V

    .line 229
    iget-object p1, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p1, v4}, Lcom/google/android/material/internal/i;->a(Landroid/graphics/drawable/Drawable;)V

    .line 230
    iget-object p1, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p1, v5}, Lcom/google/android/material/internal/i;->f(I)V

    .line 231
    iget-object p1, p0, Lcom/google/android/material/o/a;->h:Lcom/google/android/material/internal/h;

    iget-object p3, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p1, p3}, Lcom/google/android/material/internal/h;->a(Landroidx/appcompat/view/menu/n;)V

    .line 232
    iget-object p1, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p1, p0}, Lcom/google/android/material/internal/i;->a(Landroid/view/ViewGroup;)Landroidx/appcompat/view/menu/o;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/google/android/material/o/a;->addView(Landroid/view/View;)V

    .line 234
    sget p1, Lcom/google/android/material/a$o;->NavigationView_menu:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/ba;->j(I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 235
    sget p1, Lcom/google/android/material/a$o;->NavigationView_menu:I

    invoke-virtual {p2, p1, v6}, Landroidx/appcompat/widget/ba;->g(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/o/a;->a(I)V

    .line 238
    :cond_d
    sget p1, Lcom/google/android/material/a$o;->NavigationView_headerLayout:I

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/ba;->j(I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 239
    sget p1, Lcom/google/android/material/a$o;->NavigationView_headerLayout:I

    invoke-virtual {p2, p1, v6}, Landroidx/appcompat/widget/ba;->g(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/o/a;->b(I)Landroid/view/View;

    .line 242
    :cond_e
    invoke-virtual {p2}, Landroidx/appcompat/widget/ba;->f()V

    .line 244
    invoke-direct {p0}, Lcom/google/android/material/o/a;->a()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 676
    new-instance v0, Lcom/google/android/material/o/a$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/o/a$2;-><init>(Lcom/google/android/material/o/a;)V

    iput-object v0, p0, Lcom/google/android/material/o/a;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 696
    invoke-virtual {p0}, Lcom/google/android/material/o/a;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/o/a;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 697
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private a(Landroidx/appcompat/widget/ba;)Z
    .locals 0
    .param p1    # Landroidx/appcompat/widget/ba;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 256
    sget p0, Lcom/google/android/material/a$o;->NavigationView_itemShapeAppearance:I

    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ba;->j(I)Z

    move-result p0

    if-nez p0, :cond_1

    sget p0, Lcom/google/android/material/a$o;->NavigationView_itemShapeAppearanceOverlay:I

    .line 257
    invoke-virtual {p1, p0}, Landroidx/appcompat/widget/ba;->j(I)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method static synthetic a(Lcom/google/android/material/o/a;)[I
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/android/material/o/a;->k:[I

    return-object p0
.end method

.method private final b(Landroidx/appcompat/widget/ba;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1    # Landroidx/appcompat/widget/ba;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 283
    sget v0, Lcom/google/android/material/a$o;->NavigationView_itemShapeAppearance:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/widget/ba;->g(II)I

    move-result v0

    .line 284
    sget v2, Lcom/google/android/material/a$o;->NavigationView_itemShapeAppearanceOverlay:I

    .line 285
    invoke-virtual {p1, v2, v1}, Landroidx/appcompat/widget/ba;->g(II)I

    move-result v2

    .line 286
    new-instance v4, Lcom/google/android/material/t/j;

    .line 289
    invoke-virtual {p0}, Lcom/google/android/material/o/a;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 288
    invoke-static {v3, v0, v2}, Lcom/google/android/material/t/o;->a(Landroid/content/Context;II)Lcom/google/android/material/t/o$a;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Lcom/google/android/material/t/o$a;->a()Lcom/google/android/material/t/o;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/android/material/t/j;-><init>(Lcom/google/android/material/t/o;)V

    .line 293
    invoke-virtual {p0}, Lcom/google/android/material/o/a;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/google/android/material/a$o;->NavigationView_itemShapeFillColor:I

    .line 292
    invoke-static {p0, p1, v0}, Lcom/google/android/material/q/c;->a(Landroid/content/Context;Landroidx/appcompat/widget/ba;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 291
    invoke-virtual {v4, p0}, Lcom/google/android/material/t/j;->g(Landroid/content/res/ColorStateList;)V

    .line 295
    sget p0, Lcom/google/android/material/a$o;->NavigationView_itemShapeInsetStart:I

    invoke-virtual {p1, p0, v1}, Landroidx/appcompat/widget/ba;->e(II)I

    move-result v5

    .line 296
    sget p0, Lcom/google/android/material/a$o;->NavigationView_itemShapeInsetTop:I

    invoke-virtual {p1, p0, v1}, Landroidx/appcompat/widget/ba;->e(II)I

    move-result v6

    .line 297
    sget p0, Lcom/google/android/material/a$o;->NavigationView_itemShapeInsetEnd:I

    invoke-virtual {p1, p0, v1}, Landroidx/appcompat/widget/ba;->e(II)I

    move-result v7

    .line 298
    sget p0, Lcom/google/android/material/a$o;->NavigationView_itemShapeInsetBottom:I

    invoke-virtual {p1, p0, v1}, Landroidx/appcompat/widget/ba;->e(II)I

    move-result v8

    .line 299
    new-instance p0, Landroid/graphics/drawable/InsetDrawable;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/material/o/a;)Lcom/google/android/material/internal/i;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    return-object p0
.end method

.method private d(I)Landroid/content/res/ColorStateList;
    .locals 8
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 641
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 642
    invoke-virtual {p0}, Lcom/google/android/material/o/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 645
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/o/a;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Landroidx/appcompat/a/a/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 646
    invoke-virtual {p0}, Lcom/google/android/material/o/a;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 647
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v3, Landroidx/appcompat/a$b;->colorPrimary:I

    .line 648
    invoke-virtual {p0, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    .line 651
    :cond_1
    iget p0, v0, Landroid/util/TypedValue;->data:I

    .line 652
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 653
    new-instance v1, Landroid/content/res/ColorStateList;

    const/4 v3, 0x3

    new-array v4, v3, [[I

    sget-object v5, Lcom/google/android/material/o/a;->e:[I

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Lcom/google/android/material/o/a;->d:[I

    aput-object v5, v4, v2

    sget-object v5, Lcom/google/android/material/o/a;->EMPTY_STATE_SET:[I

    const/4 v7, 0x2

    aput-object v5, v4, v7

    new-array v3, v3, [I

    sget-object v5, Lcom/google/android/material/o/a;->e:[I

    .line 656
    invoke-virtual {p1, v5, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v3, v6

    aput p0, v3, v2

    aput v0, v3, v7

    invoke-direct {v1, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/google/android/material/o/a;->l:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 634
    new-instance v0, Landroidx/appcompat/view/g;

    invoke-virtual {p0}, Lcom/google/android/material/o/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/o/a;->l:Landroid/view/MenuInflater;

    .line 636
    :cond_0
    iget-object p0, p0, Lcom/google/android/material/o/a;->l:Landroid/view/MenuInflater;

    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/internal/i;->b(Z)V

    .line 367
    invoke-direct {p0}, Lcom/google/android/material/o/a;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/o/a;->h:Lcom/google/android/material/internal/h;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 368
    iget-object p1, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/material/internal/i;->b(Z)V

    .line 369
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/i;->a(Z)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 394
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->a(Landroid/view/View;)V

    return-void
.end method

.method protected a(Landroidx/core/n/ao;)V
    .locals 0
    .param p1    # Landroidx/core/n/ao;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 355
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->a(Landroidx/core/n/ao;)V

    return-void
.end method

.method public b(I)Landroid/view/View;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ac;
        .end annotation
    .end param

    .line 385
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->b(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 403
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->b(Landroid/view/View;)V

    return-void
.end method

.method public c(I)Landroid/view/View;
    .locals 0

    .line 423
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->c(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 592
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0}, Lcom/google/android/material/internal/i;->a()Landroidx/appcompat/view/menu/j;

    move-result-object p0

    return-object p0
.end method

.method public getHeaderCount()I
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0}, Lcom/google/android/material/internal/i;->d()I

    move-result p0

    return p0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 476
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0}, Lcom/google/android/material/internal/i;->h()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getItemHorizontalPadding()I
    .locals 0
    .annotation build Landroidx/annotation/p;
    .end annotation

    .line 508
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0}, Lcom/google/android/material/internal/i;->i()I

    move-result p0

    return p0
.end method

.method public getItemIconPadding()I
    .locals 0
    .annotation build Landroidx/annotation/p;
    .end annotation

    .line 539
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0}, Lcom/google/android/material/internal/i;->j()I

    move-result p0

    return p0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 434
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0}, Lcom/google/android/material/internal/i;->e()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getItemMaxLines()I
    .locals 0

    .line 629
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0}, Lcom/google/android/material/internal/i;->k()I

    move-result p0

    return p0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 455
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0}, Lcom/google/android/material/internal/i;->g()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 375
    iget-object p0, p0, Lcom/google/android/material/o/a;->h:Lcom/google/android/material/internal/h;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 262
    invoke-super {p0}, Lcom/google/android/material/internal/n;->onAttachedToWindow()V

    .line 264
    invoke-static {p0}, Lcom/google/android/material/t/k;->a(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 662
    invoke-super {p0}, Lcom/google/android/material/internal/n;->onDetachedFromWindow()V

    .line 663
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 664
    invoke-virtual {p0}, Lcom/google/android/material/o/a;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/o/a;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 666
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/o/a;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/o/a;->m:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 334
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    iget p1, p0, Lcom/google/android/material/o/a;->j:I

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 341
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lcom/google/android/material/o/a;->j:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 340
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 348
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/android/material/internal/n;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 313
    instance-of v0, p1, Lcom/google/android/material/o/a$b;

    if-nez v0, :cond_0

    .line 314
    invoke-super {p0, p1}, Lcom/google/android/material/internal/n;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 317
    :cond_0
    check-cast p1, Lcom/google/android/material/o/a$b;

    .line 318
    invoke-virtual {p1}, Lcom/google/android/material/o/a$b;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/android/material/internal/n;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 319
    iget-object p0, p0, Lcom/google/android/material/o/a;->h:Lcom/google/android/material/internal/h;

    iget-object p1, p1, Lcom/google/android/material/o/a$b;->a:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/h;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 304
    invoke-super {p0}, Lcom/google/android/material/internal/n;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 305
    new-instance v1, Lcom/google/android/material/o/a$b;

    invoke-direct {v1, v0}, Lcom/google/android/material/o/a$b;-><init>(Landroid/os/Parcelable;)V

    .line 306
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/o/a$b;->a:Landroid/os/Bundle;

    .line 307
    iget-object p0, p0, Lcom/google/android/material/o/a;->h:Lcom/google/android/material/internal/h;

    iget-object v0, v1, Lcom/google/android/material/o/a$b;->a:Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/h;->a(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public setCheckedItem(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param

    .line 568
    iget-object v0, p0, Lcom/google/android/material/o/a;->h:Lcom/google/android/material/internal/h;

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 570
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    check-cast p1, Landroidx/appcompat/view/menu/j;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->a(Landroidx/appcompat/view/menu/j;)V

    :cond_0
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 580
    iget-object v0, p0, Lcom/google/android/material/o/a;->h:Lcom/google/android/material/internal/h;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/internal/h;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 582
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    check-cast p1, Landroidx/appcompat/view/menu/j;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->a(Landroidx/appcompat/view/menu/j;)V

    return-void

    .line 584
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setElevation(F)V
    .locals 2

    .line 269
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 270
    invoke-super {p0, p1}, Lcom/google/android/material/internal/n;->setElevation(F)V

    .line 272
    :cond_0
    invoke-static {p0, p1}, Lcom/google/android/material/t/k;->a(Landroid/view/View;F)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 497
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/q;
        .end annotation
    .end param

    .line 487
    invoke-virtual {p0}, Lcom/google/android/material/o/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/b/c;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/material/o/a;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param

    .line 518
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->e(I)V

    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 528
    iget-object v0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0}, Lcom/google/android/material/o/a;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/internal/i;->e(I)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param

    .line 549
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->f(I)V

    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0}, Lcom/google/android/material/o/a;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/android/material/internal/i;->f(I)V

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/p;
        .end annotation
    .end param

    .line 611
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->h(I)V

    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 444
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 0

    .line 620
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->g(I)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param

    .line 601
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->d(I)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 465
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->b(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setNavigationItemSelectedListener(Lcom/google/android/material/o/a$a;)V
    .locals 0
    .param p1    # Lcom/google/android/material/o/a$a;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 329
    iput-object p1, p0, Lcom/google/android/material/o/a;->c:Lcom/google/android/material/o/a$a;

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .line 249
    invoke-super {p0, p1}, Lcom/google/android/material/internal/n;->setOverScrollMode(I)V

    .line 250
    iget-object v0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    if-eqz v0, :cond_0

    .line 251
    iget-object p0, p0, Lcom/google/android/material/o/a;->i:Lcom/google/android/material/internal/i;

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/i;->i(I)V

    :cond_0
    return-void
.end method
