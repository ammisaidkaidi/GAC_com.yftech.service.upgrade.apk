.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/n/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a(Landroid/view/View;Landroidx/core/n/a/d$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;I)V
    .locals 0

    .line 1755
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iput p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/n/a/g$a;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/core/n/a/g$a;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1758
    iget-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    iget p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$5;->a:I

    invoke-virtual {p1, p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d(I)V

    const/4 p0, 0x1

    return p0
.end method
