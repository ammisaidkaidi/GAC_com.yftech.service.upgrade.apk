.class Lcom/google/android/material/o/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/o/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/o/a;


# direct methods
.method constructor <init>(Lcom/google/android/material/o/a;)V
    .locals 0

    .line 676
    iput-object p1, p0, Lcom/google/android/material/o/a$2;->a:Lcom/google/android/material/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 679
    iget-object v0, p0, Lcom/google/android/material/o/a$2;->a:Lcom/google/android/material/o/a;

    iget-object v1, p0, Lcom/google/android/material/o/a$2;->a:Lcom/google/android/material/o/a;

    invoke-static {v1}, Lcom/google/android/material/o/a;->a(Lcom/google/android/material/o/a;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/o/a;->getLocationOnScreen([I)V

    .line 680
    iget-object v0, p0, Lcom/google/android/material/o/a$2;->a:Lcom/google/android/material/o/a;

    invoke-static {v0}, Lcom/google/android/material/o/a;->a(Lcom/google/android/material/o/a;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 681
    :goto_0
    iget-object v3, p0, Lcom/google/android/material/o/a$2;->a:Lcom/google/android/material/o/a;

    invoke-static {v3}, Lcom/google/android/material/o/a;->b(Lcom/google/android/material/o/a;)Lcom/google/android/material/internal/i;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/material/internal/i;->c(Z)V

    .line 682
    iget-object v3, p0, Lcom/google/android/material/o/a$2;->a:Lcom/google/android/material/o/a;

    invoke-virtual {v3, v0}, Lcom/google/android/material/o/a;->setDrawTopInsetForeground(Z)V

    .line 684
    iget-object v0, p0, Lcom/google/android/material/o/a$2;->a:Lcom/google/android/material/o/a;

    invoke-virtual {v0}, Lcom/google/android/material/o/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/material/internal/b;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 685
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_4

    const v3, 0x1020002

    .line 687
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/material/o/a$2;->a:Lcom/google/android/material/o/a;

    invoke-virtual {v4}, Lcom/google/android/material/o/a;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 689
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getNavigationBarColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    .line 691
    :goto_2
    iget-object p0, p0, Lcom/google/android/material/o/a$2;->a:Lcom/google/android/material/o/a;

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    invoke-virtual {p0, v1}, Lcom/google/android/material/o/a;->setDrawBottomInsetForeground(Z)V

    :cond_4
    return-void
.end method
