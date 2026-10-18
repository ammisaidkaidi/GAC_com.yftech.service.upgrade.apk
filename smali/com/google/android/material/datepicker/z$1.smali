.class Lcom/google/android/material/datepicker/z$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/datepicker/z;->h(I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/material/datepicker/z;


# direct methods
.method constructor <init>(Lcom/google/android/material/datepicker/z;I)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/google/android/material/datepicker/z$1;->b:Lcom/google/android/material/datepicker/z;

    iput p2, p0, Lcom/google/android/material/datepicker/z$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 87
    iget p1, p0, Lcom/google/android/material/datepicker/z$1;->a:I

    iget-object v0, p0, Lcom/google/android/material/datepicker/z$1;->b:Lcom/google/android/material/datepicker/z;

    invoke-static {v0}, Lcom/google/android/material/datepicker/z;->a(Lcom/google/android/material/datepicker/z;)Lcom/google/android/material/datepicker/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/k;->a()Lcom/google/android/material/datepicker/p;

    move-result-object v0

    iget v0, v0, Lcom/google/android/material/datepicker/p;->a:I

    invoke-static {p1, v0}, Lcom/google/android/material/datepicker/p;->a(II)Lcom/google/android/material/datepicker/p;

    move-result-object p1

    .line 88
    iget-object v0, p0, Lcom/google/android/material/datepicker/z$1;->b:Lcom/google/android/material/datepicker/z;

    invoke-static {v0}, Lcom/google/android/material/datepicker/z;->a(Lcom/google/android/material/datepicker/z;)Lcom/google/android/material/datepicker/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/k;->b()Lcom/google/android/material/datepicker/a;

    move-result-object v0

    .line 89
    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/a;->a(Lcom/google/android/material/datepicker/p;)Lcom/google/android/material/datepicker/p;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lcom/google/android/material/datepicker/z$1;->b:Lcom/google/android/material/datepicker/z;

    invoke-static {v0}, Lcom/google/android/material/datepicker/z;->a(Lcom/google/android/material/datepicker/z;)Lcom/google/android/material/datepicker/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/material/datepicker/k;->a(Lcom/google/android/material/datepicker/p;)V

    .line 91
    iget-object p0, p0, Lcom/google/android/material/datepicker/z$1;->b:Lcom/google/android/material/datepicker/z;

    invoke-static {p0}, Lcom/google/android/material/datepicker/z;->a(Lcom/google/android/material/datepicker/z;)Lcom/google/android/material/datepicker/k;

    move-result-object p0

    sget-object p1, Lcom/google/android/material/datepicker/k$a;->a:Lcom/google/android/material/datepicker/k$a;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/k;->a(Lcom/google/android/material/datepicker/k$a;)V

    return-void
.end method
