.class final Lcom/google/android/material/internal/z$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/n/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/z;->a(Landroid/view/View;Lcom/google/android/material/internal/z$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/z$a;

.field final synthetic b:Lcom/google/android/material/internal/z$b;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/z$a;Lcom/google/android/material/internal/z$b;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/google/android/material/internal/z$3;->a:Lcom/google/android/material/internal/z$a;

    iput-object p2, p0, Lcom/google/android/material/internal/z$3;->b:Lcom/google/android/material/internal/z$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/n/ao;)Landroidx/core/n/ao;
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/google/android/material/internal/z$3;->a:Lcom/google/android/material/internal/z$a;

    new-instance v1, Lcom/google/android/material/internal/z$b;

    iget-object p0, p0, Lcom/google/android/material/internal/z$3;->b:Lcom/google/android/material/internal/z$b;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/z$b;-><init>(Lcom/google/android/material/internal/z$b;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/material/internal/z$a;->a(Landroid/view/View;Landroidx/core/n/ao;Lcom/google/android/material/internal/z$b;)Landroidx/core/n/ao;

    move-result-object p0

    return-object p0
.end method
