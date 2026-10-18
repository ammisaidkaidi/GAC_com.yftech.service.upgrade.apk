.class Landroidx/core/n/ao$d;
.super Landroidx/core/n/ao$b;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/am;
    b = 0x1d
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/n/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field final a:Landroid/view/WindowInsets$Builder;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1115
    invoke-direct {p0}, Landroidx/core/n/ao$b;-><init>()V

    .line 1116
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    iput-object v0, p0, Landroidx/core/n/ao$d;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method constructor <init>(Landroidx/core/n/ao;)V
    .locals 1
    .param p1    # Landroidx/core/n/ao;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1119
    invoke-direct {p0}, Landroidx/core/n/ao$b;-><init>()V

    .line 1120
    invoke-virtual {p1}, Landroidx/core/n/ao;->w()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1122
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0, p1}, Landroid/view/WindowInsets$Builder;-><init>(Landroid/view/WindowInsets;)V

    goto :goto_0

    .line 1123
    :cond_0
    new-instance v0, Landroid/view/WindowInsets$Builder;

    invoke-direct {v0}, Landroid/view/WindowInsets$Builder;-><init>()V

    :goto_0
    iput-object v0, p0, Landroidx/core/n/ao$d;->a:Landroid/view/WindowInsets$Builder;

    return-void
.end method


# virtual methods
.method a()Landroidx/core/n/ao;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1159
    iget-object p0, p0, Landroidx/core/n/ao$d;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p0}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/n/ao;->a(Landroid/view/WindowInsets;)Landroidx/core/n/ao;

    move-result-object p0

    return-object p0
.end method

.method a(Landroidx/core/graphics/f;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/f;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1128
    iget-object p0, p0, Landroidx/core/n/ao$d;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/f;->a()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method a(Landroidx/core/n/d;)V
    .locals 0
    .param p1    # Landroidx/core/n/d;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1153
    iget-object p0, p0, Landroidx/core/n/ao$d;->a:Landroid/view/WindowInsets$Builder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/core/n/d;->f()Landroid/view/DisplayCutout;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setDisplayCutout(Landroid/view/DisplayCutout;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method b(Landroidx/core/graphics/f;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/f;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1133
    iget-object p0, p0, Landroidx/core/n/ao$d;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/f;->a()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setSystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method c(Landroidx/core/graphics/f;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/f;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1138
    iget-object p0, p0, Landroidx/core/n/ao$d;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/f;->a()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setMandatorySystemGestureInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method d(Landroidx/core/graphics/f;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/f;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1143
    iget-object p0, p0, Landroidx/core/n/ao$d;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/f;->a()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setTappableElementInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method

.method e(Landroidx/core/graphics/f;)V
    .locals 0
    .param p1    # Landroidx/core/graphics/f;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1148
    iget-object p0, p0, Landroidx/core/n/ao$d;->a:Landroid/view/WindowInsets$Builder;

    invoke-virtual {p1}, Landroidx/core/graphics/f;->a()Landroid/graphics/Insets;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets$Builder;->setStableInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    return-void
.end method
