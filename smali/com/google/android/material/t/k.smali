.class public Lcom/google/android/material/t/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/google/android/material/t/e;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 43
    new-instance v0, Lcom/google/android/material/t/n;

    invoke-direct {v0}, Lcom/google/android/material/t/n;-><init>()V

    return-object v0
.end method

.method static a(I)Lcom/google/android/material/t/e;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    packed-switch p0, :pswitch_data_0

    .line 37
    invoke-static {}, Lcom/google/android/material/t/k;->a()Lcom/google/android/material/t/e;

    move-result-object p0

    return-object p0

    .line 35
    :pswitch_0
    new-instance p0, Lcom/google/android/material/t/f;

    invoke-direct {p0}, Lcom/google/android/material/t/f;-><init>()V

    return-object p0

    .line 33
    :pswitch_1
    new-instance p0, Lcom/google/android/material/t/n;

    invoke-direct {p0}, Lcom/google/android/material/t/n;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/view/View;)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 71
    instance-of v1, v0, Lcom/google/android/material/t/j;

    if-eqz v1, :cond_0

    .line 72
    check-cast v0, Lcom/google/android/material/t/j;

    invoke-static {p0, v0}, Lcom/google/android/material/t/k;->a(Landroid/view/View;Lcom/google/android/material/t/j;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;F)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 58
    instance-of v0, p0, Lcom/google/android/material/t/j;

    if-eqz v0, :cond_0

    .line 59
    check-cast p0, Lcom/google/android/material/t/j;

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->r(F)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/view/View;Lcom/google/android/material/t/j;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/t/j;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 83
    invoke-virtual {p1}, Lcom/google/android/material/t/j;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {p0}, Lcom/google/android/material/internal/z;->d(Landroid/view/View;)F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/t/j;->q(F)V

    :cond_0
    return-void
.end method

.method static b()Lcom/google/android/material/t/g;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 48
    new-instance v0, Lcom/google/android/material/t/g;

    invoke-direct {v0}, Lcom/google/android/material/t/g;-><init>()V

    return-object v0
.end method
