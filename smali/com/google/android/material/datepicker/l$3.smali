.class Lcom/google/android/material/datepicker/l$3;
.super Lcom/google/android/material/datepicker/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/l;->aT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/datepicker/s<",
        "TS;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/l;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/l;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/google/android/material/datepicker/l$3;->a:Lcom/google/android/material/datepicker/l;

    invoke-direct {p0}, Lcom/google/android/material/datepicker/s;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 357
    iget-object p0, p0, Lcom/google/android/material/datepicker/l$3;->a:Lcom/google/android/material/datepicker/l;

    invoke-static {p0}, Lcom/google/android/material/datepicker/l;->e(Lcom/google/android/material/datepicker/l;)Landroid/widget/Button;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 351
    iget-object p1, p0, Lcom/google/android/material/datepicker/l$3;->a:Lcom/google/android/material/datepicker/l;

    invoke-static {p1}, Lcom/google/android/material/datepicker/l;->c(Lcom/google/android/material/datepicker/l;)V

    .line 352
    iget-object p1, p0, Lcom/google/android/material/datepicker/l$3;->a:Lcom/google/android/material/datepicker/l;

    invoke-static {p1}, Lcom/google/android/material/datepicker/l;->e(Lcom/google/android/material/datepicker/l;)Landroid/widget/Button;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/material/datepicker/l$3;->a:Lcom/google/android/material/datepicker/l;

    invoke-static {p0}, Lcom/google/android/material/datepicker/l;->d(Lcom/google/android/material/datepicker/l;)Lcom/google/android/material/datepicker/f;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/material/datepicker/f;->b()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
