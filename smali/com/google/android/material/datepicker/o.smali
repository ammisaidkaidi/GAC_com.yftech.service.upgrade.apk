.class public final Lcom/google/android/material/datepicker/o;
.super Lcom/google/android/material/datepicker/t;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/material/datepicker/t<",
        "TS;>;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DATE_SELECTOR_KEY"

.field private static final b:Ljava/lang/String; = "CALENDAR_CONSTRAINTS_KEY"


# instance fields
.field private c:Lcom/google/android/material/datepicker/f;
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/f<",
            "TS;>;"
        }
    .end annotation
.end field

.field private d:Lcom/google/android/material/datepicker/a;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/android/material/datepicker/t;-><init>()V

    return-void
.end method

.method static a(Lcom/google/android/material/datepicker/f;Lcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/o;
    .locals 3
    .param p0    # Lcom/google/android/material/datepicker/f;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/material/datepicker/a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/datepicker/f<",
            "TT;>;",
            "Lcom/google/android/material/datepicker/a;",
            ")",
            "Lcom/google/android/material/datepicker/o<",
            "TT;>;"
        }
    .end annotation

    .line 44
    new-instance v0, Lcom/google/android/material/datepicker/o;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/o;-><init>()V

    .line 45
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "DATE_SELECTOR_KEY"

    .line 46
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "CALENDAR_CONSTRAINTS_KEY"

    .line 47
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/o;->g(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/google/android/material/datepicker/o;->c:Lcom/google/android/material/datepicker/f;

    iget-object v4, p0, Lcom/google/android/material/datepicker/o;->d:Lcom/google/android/material/datepicker/a;

    new-instance v5, Lcom/google/android/material/datepicker/o$1;

    invoke-direct {v5, p0}, Lcom/google/android/material/datepicker/o$1;-><init>(Lcom/google/android/material/datepicker/o;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/google/android/material/datepicker/f;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/a;Lcom/google/android/material/datepicker/s;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 61
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/t;->b(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/google/android/material/datepicker/o;->t()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const-string v0, "DATE_SELECTOR_KEY"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/f;

    iput-object v0, p0, Lcom/google/android/material/datepicker/o;->c:Lcom/google/android/material/datepicker/f;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/a;

    iput-object p1, p0, Lcom/google/android/material/datepicker/o;->d:Lcom/google/android/material/datepicker/a;

    return-void
.end method

.method public e()Lcom/google/android/material/datepicker/f;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/datepicker/f<",
            "TS;>;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/google/android/material/datepicker/o;->c:Lcom/google/android/material/datepicker/f;

    if-eqz v0, :cond_0

    .line 104
    iget-object p0, p0, Lcom/google/android/material/datepicker/o;->c:Lcom/google/android/material/datepicker/f;

    return-object p0

    .line 99
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "dateSelector should not be null. Use MaterialTextInputPicker#newInstance() to create this fragment with a DateSelector, and call this method after the fragment has been created."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 54
    invoke-super {p0, p1}, Lcom/google/android/material/datepicker/t;->e(Landroid/os/Bundle;)V

    const-string v0, "DATE_SELECTOR_KEY"

    .line 55
    iget-object v1, p0, Lcom/google/android/material/datepicker/o;->c:Lcom/google/android/material/datepicker/f;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 56
    iget-object p0, p0, Lcom/google/android/material/datepicker/o;->d:Lcom/google/android/material/datepicker/a;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
