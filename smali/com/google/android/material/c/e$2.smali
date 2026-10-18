.class Lcom/google/android/material/c/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/z$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/c/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/c/e;


# direct methods
.method constructor <init>(Lcom/google/android/material/c/e;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/google/android/material/c/e$2;->a:Lcom/google/android/material/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/n/ao;Lcom/google/android/material/internal/z$b;)Landroidx/core/n/ao;
    .locals 1
    .param p2    # Landroidx/core/n/ao;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/internal/z$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 263
    iget p0, p3, Lcom/google/android/material/internal/z$b;->d:I

    invoke-virtual {p2}, Landroidx/core/n/ao;->d()I

    move-result v0

    add-int/2addr p0, v0

    iput p0, p3, Lcom/google/android/material/internal/z$b;->d:I

    .line 264
    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/z$b;->a(Landroid/view/View;)V

    return-object p2
.end method
