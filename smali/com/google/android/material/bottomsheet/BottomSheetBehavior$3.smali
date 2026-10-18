.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/z$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    .line 1272
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/n/ao;Lcom/google/android/material/internal/z$b;)Landroidx/core/n/ao;
    .locals 0

    .line 1276
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    invoke-virtual {p2}, Landroidx/core/n/ao;->t()Landroidx/core/graphics/f;

    move-result-object p3

    iget p3, p3, Landroidx/core/graphics/f;->e:I

    invoke-static {p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)I

    .line 1277
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$3;->a:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V

    return-object p2
.end method
