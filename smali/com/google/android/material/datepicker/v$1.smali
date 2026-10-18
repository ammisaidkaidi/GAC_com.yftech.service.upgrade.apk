.class Lcom/google/android/material/datepicker/v$1;
.super Lcom/google/android/material/datepicker/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/v;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;Lcom/google/android/material/datepicker/a;Lcom/google/android/material/datepicker/s;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/datepicker/s;

.field final synthetic b:Lcom/google/android/material/datepicker/v;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/v;Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/a;Lcom/google/android/material/datepicker/s;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/google/android/material/datepicker/v$1;->b:Lcom/google/android/material/datepicker/v;

    iput-object p6, p0, Lcom/google/android/material/datepicker/v$1;->a:Lcom/google/android/material/datepicker/s;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/material/datepicker/e;-><init>(Ljava/lang/String;Ljava/text/DateFormat;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/datepicker/a;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/google/android/material/datepicker/v$1;->a:Lcom/google/android/material/datepicker/s;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/s;->a()V

    return-void
.end method

.method a(Ljava/lang/Long;)V
    .locals 3
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/google/android/material/datepicker/v$1;->b:Lcom/google/android/material/datepicker/v;

    invoke-static {p1}, Lcom/google/android/material/datepicker/v;->a(Lcom/google/android/material/datepicker/v;)V

    goto :goto_0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/datepicker/v$1;->b:Lcom/google/android/material/datepicker/v;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/datepicker/v;->a(J)V

    .line 126
    :goto_0
    iget-object p1, p0, Lcom/google/android/material/datepicker/v$1;->a:Lcom/google/android/material/datepicker/s;

    iget-object p0, p0, Lcom/google/android/material/datepicker/v$1;->b:Lcom/google/android/material/datepicker/v;

    invoke-virtual {p0}, Lcom/google/android/material/datepicker/v;->f()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/datepicker/s;->a(Ljava/lang/Object;)V

    return-void
.end method
