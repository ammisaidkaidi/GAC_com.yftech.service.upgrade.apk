.class public Lcom/google/android/material/u/g;
.super Lcom/google/android/material/u/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/u/g$b;,
        Lcom/google/android/material/u/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/u/c<",
        "Lcom/google/android/material/u/g;",
        "Lcom/google/android/material/u/g$a;",
        "Lcom/google/android/material/u/g$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/u/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    .line 56
    sget v0, Lcom/google/android/material/a$c;->sliderStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/u/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/material/u/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    .line 61
    new-array p3, p3, [I

    const/4 v0, 0x0

    const v1, 0x1010024

    aput v1, p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 63
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/google/android/material/u/g;->setValue(F)V

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()V
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->a()V

    return-void
.end method

.method public bridge synthetic b()V
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->b()V

    return-void
.end method

.method public bridge synthetic c()Z
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->c()Z

    move-result p0

    return p0
.end method

.method protected d()Z
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcom/google/android/material/u/g;->getActiveThumbIndex()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0}, Lcom/google/android/material/u/g;->setActiveThumbIndex(I)V

    return v1
.end method

.method public bridge synthetic dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getActiveThumbIndex()I
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getActiveThumbIndex()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getFocusedThumbIndex()I
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getFocusedThumbIndex()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getHaloRadius()I
    .locals 0
    .annotation build Landroidx/annotation/p;
    .end annotation

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getHaloRadius()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getHaloTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getHaloTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLabelBehavior()I
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getLabelBehavior()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStepSize()F
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getStepSize()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getThumbElevation()F
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getThumbElevation()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getThumbRadius()I
    .locals 0
    .annotation build Landroidx/annotation/p;
    .end annotation

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getThumbRadius()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTickActiveTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getTickActiveTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTickInactiveTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getTickInactiveTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTickTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getTickTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTrackActiveTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getTrackActiveTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTrackHeight()I
    .locals 0
    .annotation build Landroidx/annotation/p;
    .end annotation

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getTrackHeight()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getTrackInactiveTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getTrackInactiveTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTrackSidePadding()I
    .locals 0
    .annotation build Landroidx/annotation/p;
    .end annotation

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getTrackSidePadding()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getTrackTintList()Landroid/content/res/ColorStateList;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getTrackTintList()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTrackWidth()I
    .locals 0
    .annotation build Landroidx/annotation/p;
    .end annotation

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getTrackWidth()I

    move-result p0

    return p0
.end method

.method public getValue()F
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/google/android/material/u/g;->getValues()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValueFrom()F
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getValueFrom()F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValueTo()F
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/google/android/material/u/c;->getValueTo()F

    move-result p0

    return p0
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1, p2}, Lcom/google/android/material/u/c;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1, p2}, Lcom/google/android/material/u/c;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic setFocusedThumbIndex(I)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setFocusedThumbIndex(I)V

    return-void
.end method

.method public bridge synthetic setHaloRadius(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/p;
        .end annotation

        .annotation build Landroidx/annotation/z;
            a = 0x0L
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setHaloRadius(I)V

    return-void
.end method

.method public bridge synthetic setHaloRadiusResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setHaloRadiusResource(I)V

    return-void
.end method

.method public bridge synthetic setHaloTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setHaloTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setLabelBehavior(I)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setLabelBehavior(I)V

    return-void
.end method

.method public bridge synthetic setLabelFormatter(Lcom/google/android/material/u/e;)V
    .locals 0
    .param p1    # Lcom/google/android/material/u/e;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setLabelFormatter(Lcom/google/android/material/u/e;)V

    return-void
.end method

.method public bridge synthetic setStepSize(F)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setStepSize(F)V

    return-void
.end method

.method public bridge synthetic setThumbElevation(F)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setThumbElevation(F)V

    return-void
.end method

.method public bridge synthetic setThumbElevationResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setThumbElevationResource(I)V

    return-void
.end method

.method public bridge synthetic setThumbRadius(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/p;
        .end annotation

        .annotation build Landroidx/annotation/z;
            a = 0x0L
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setThumbRadius(I)V

    return-void
.end method

.method public bridge synthetic setThumbRadiusResource(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/o;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setThumbRadiusResource(I)V

    return-void
.end method

.method public bridge synthetic setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTickActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setTickActiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTickInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setTickInactiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTickTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setTickTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTrackActiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setTrackActiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTrackHeight(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/p;
        .end annotation

        .annotation build Landroidx/annotation/z;
            a = 0x0L
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setTrackHeight(I)V

    return-void
.end method

.method public bridge synthetic setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setTrackInactiveTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public bridge synthetic setTrackTintList(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setTrackTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setValue(F)V
    .locals 2

    const/4 v0, 0x1

    .line 95
    new-array v0, v0, [Ljava/lang/Float;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/material/u/g;->setValues([Ljava/lang/Float;)V

    return-void
.end method

.method public bridge synthetic setValueFrom(F)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setValueFrom(F)V

    return-void
.end method

.method public bridge synthetic setValueTo(F)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Lcom/google/android/material/u/c;->setValueTo(F)V

    return-void
.end method
