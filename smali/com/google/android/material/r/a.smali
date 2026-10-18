.class public Lcom/google/android/material/r/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroidx/core/graphics/drawable/e;
.implements Lcom/google/android/material/t/s;


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/r/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/material/r/a$a;


# direct methods
.method private constructor <init>(Lcom/google/android/material/r/a$a;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/android/material/r/a;->a:Lcom/google/android/material/r/a$a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/r/a$a;Lcom/google/android/material/r/a$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/google/android/material/r/a;-><init>(Lcom/google/android/material/r/a$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/t/o;)V
    .locals 2

    .line 58
    new-instance v0, Lcom/google/android/material/r/a$a;

    new-instance v1, Lcom/google/android/material/t/j;

    invoke-direct {v1, p1}, Lcom/google/android/material/t/j;-><init>(Lcom/google/android/material/t/o;)V

    invoke-direct {v0, v1}, Lcom/google/android/material/r/a$a;-><init>(Lcom/google/android/material/t/j;)V

    invoke-direct {p0, v0}, Lcom/google/android/material/r/a;-><init>(Lcom/google/android/material/r/a$a;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/material/r/a;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 146
    new-instance v0, Lcom/google/android/material/r/a$a;

    iget-object v1, p0, Lcom/google/android/material/r/a;->a:Lcom/google/android/material/r/a$a;

    invoke-direct {v0, v1}, Lcom/google/android/material/r/a$a;-><init>(Lcom/google/android/material/r/a$a;)V

    .line 147
    iput-object v0, p0, Lcom/google/android/material/r/a;->a:Lcom/google/android/material/r/a$a;

    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/android/material/r/a;->a:Lcom/google/android/material/r/a$a;

    iget-boolean v0, v0, Lcom/google/android/material/r/a$a;->b:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object p0, p0, Lcom/google/android/material/r/a;->a:Lcom/google/android/material/r/a$a;

    iget-object p0, p0, Lcom/google/android/material/r/a$a;->a:Lcom/google/android/material/t/j;

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 140
    iget-object p0, p0, Lcom/google/android/material/r/a;->a:Lcom/google/android/material/r/a$a;

    return-object p0
.end method

.method public getOpacity()I
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/google/android/material/r/a;->a:Lcom/google/android/material/r/a$a;

    iget-object p0, p0, Lcom/google/android/material/r/a$a;->a:Lcom/google/android/material/t/j;

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->getOpacity()I

    move-result p0

    return p0
.end method

.method public getShapeAppearanceModel()Lcom/google/android/material/t/o;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 95
    iget-object p0, p0, Lcom/google/android/material/r/a;->a:Lcom/google/android/material/r/a$a;

    iget-object p0, p0, Lcom/google/android/material/r/a$a;->a:Lcom/google/android/material/t/j;

    invoke-virtual {p0}, Lcom/google/android/material/t/j;->getShapeAppearanceModel()Lcom/google/android/material/t/o;

    move-result-object p0

    return-object p0
.end method

.method public isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic mutate()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 46
    invoke-virtual {p0}, Lcom/google/android/material/r/a;->a()Lcom/google/android/material/r/a;

    move-result-object p0

    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 133
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 134
    iget-object p0, p0, Lcom/google/android/material/r/a;->a:Lcom/google/android/material/r/a$a;

    iget-object p0, p0, Lcom/google/android/material/r/a$a;->a:Lcom/google/android/material/t/j;

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 3
    .param p1    # [I
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 109
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/google/android/material/r/a;->a:Lcom/google/android/material/r/a$a;

    iget-object v1, v1, Lcom/google/android/material/r/a$a;->a:Lcom/google/android/material/t/j;

    invoke-virtual {v1, p1}, Lcom/google/android/material/t/j;->setState([I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v0, v2

    .line 113
    :cond_0
    invoke-static {p1}, Lcom/google/android/material/r/b;->a([I)Z

    move-result p1

    .line 116
    iget-object v1, p0, Lcom/google/android/material/r/a;->a:Lcom/google/android/material/r/a$a;

    iget-boolean v1, v1, Lcom/google/android/material/r/a$a;->b:Z

    if-eq v1, p1, :cond_1

    .line 117
    iget-object p0, p0, Lcom/google/android/material/r/a;->a:Lcom/google/android/material/r/a$a;

    iput-boolean p1, p0, Lcom/google/android/material/r/a$a;->b:Z

    move v0, v2

    :cond_1
    return v0
.end method

.method public setAlpha(I)V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/google/android/material/r/a;->a:Lcom/google/android/material/r/a$a;

    iget-object p0, p0, Lcom/google/android/material/r/a$a;->a:Lcom/google/android/material/t/j;

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 158
    iget-object p0, p0, Lcom/google/android/material/r/a;->a:Lcom/google/android/material/r/a$a;

    iget-object p0, p0, Lcom/google/android/material/r/a$a;->a:Lcom/google/android/material/t/j;

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method public setShapeAppearanceModel(Lcom/google/android/material/t/o;)V
    .locals 0
    .param p1    # Lcom/google/android/material/t/o;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 83
    iget-object p0, p0, Lcom/google/android/material/r/a;->a:Lcom/google/android/material/r/a$a;

    iget-object p0, p0, Lcom/google/android/material/r/a$a;->a:Lcom/google/android/material/t/j;

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->setShapeAppearanceModel(Lcom/google/android/material/t/o;)V

    return-void
.end method

.method public setTint(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/k;
        .end annotation
    .end param

    .line 68
    iget-object p0, p0, Lcom/google/android/material/r/a;->a:Lcom/google/android/material/r/a$a;

    iget-object p0, p0, Lcom/google/android/material/r/a$a;->a:Lcom/google/android/material/t/j;

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->setTint(I)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 78
    iget-object p0, p0, Lcom/google/android/material/r/a;->a:Lcom/google/android/material/r/a$a;

    iget-object p0, p0, Lcom/google/android/material/r/a$a;->a:Lcom/google/android/material/t/j;

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0
    .param p1    # Landroid/graphics/PorterDuff$Mode;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 73
    iget-object p0, p0, Lcom/google/android/material/r/a;->a:Lcom/google/android/material/r/a$a;

    iget-object p0, p0, Lcom/google/android/material/r/a$a;->a:Lcom/google/android/material/t/j;

    invoke-virtual {p0, p1}, Lcom/google/android/material/t/j;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method
