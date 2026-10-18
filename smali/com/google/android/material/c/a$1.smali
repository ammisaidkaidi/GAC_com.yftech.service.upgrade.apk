.class Lcom/google/android/material/c/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/c/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/c/a;


# direct methods
.method constructor <init>(Lcom/google/android/material/c/a;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/google/android/material/c/a$1;->a:Lcom/google/android/material/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/google/android/material/c/a$1;->a:Lcom/google/android/material/c/a;

    invoke-static {p1}, Lcom/google/android/material/c/a;->a(Lcom/google/android/material/c/a;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/google/android/material/c/a$1;->a:Lcom/google/android/material/c/a;

    iget-object p0, p0, Lcom/google/android/material/c/a$1;->a:Lcom/google/android/material/c/a;

    invoke-static {p0}, Lcom/google/android/material/c/a;->a(Lcom/google/android/material/c/a;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/material/c/a;->a(Lcom/google/android/material/c/a;Landroid/view/View;)V

    :cond_0
    return-void
.end method
