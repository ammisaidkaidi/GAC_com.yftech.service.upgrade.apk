.class Lcom/google/android/material/datepicker/k$6;
.super Landroidx/core/n/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/k;->a(Landroid/view/View;Lcom/google/android/material/datepicker/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/k;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/k;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/google/android/material/datepicker/k$6;->a:Lcom/google/android/material/datepicker/k;

    invoke-direct {p0}, Landroidx/core/n/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/n/a/d;)V
    .locals 0
    .param p2    # Landroidx/core/n/a/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 374
    invoke-super {p0, p1, p2}, Landroidx/core/n/a;->a(Landroid/view/View;Landroidx/core/n/a/d;)V

    .line 375
    iget-object p1, p0, Lcom/google/android/material/datepicker/k$6;->a:Lcom/google/android/material/datepicker/k;

    .line 376
    invoke-static {p1}, Lcom/google/android/material/datepicker/k;->f(Lcom/google/android/material/datepicker/k;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/datepicker/k$6;->a:Lcom/google/android/material/datepicker/k;

    sget p1, Lcom/google/android/material/a$m;->mtrl_picker_toggle_to_year_selection:I

    .line 377
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/k;->b(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/material/datepicker/k$6;->a:Lcom/google/android/material/datepicker/k;

    sget p1, Lcom/google/android/material/a$m;->mtrl_picker_toggle_to_day_selection:I

    .line 378
    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/k;->b(I)Ljava/lang/String;

    move-result-object p0

    .line 375
    :goto_0
    invoke-virtual {p2, p0}, Landroidx/core/n/a/d;->f(Ljava/lang/CharSequence;)V

    return-void
.end method
