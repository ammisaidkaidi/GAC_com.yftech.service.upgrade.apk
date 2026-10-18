.class Lcom/google/android/material/c/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/c/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/c/c;


# direct methods
.method constructor <init>(Lcom/google/android/material/c/c;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/google/android/material/c/c$1;->a:Lcom/google/android/material/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 125
    check-cast p1, Lcom/google/android/material/c/a;

    .line 126
    invoke-virtual {p1}, Lcom/google/android/material/c/a;->getItemData()Landroidx/appcompat/view/menu/j;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lcom/google/android/material/c/c$1;->a:Lcom/google/android/material/c/c;

    invoke-static {v0}, Lcom/google/android/material/c/c;->b(Lcom/google/android/material/c/c;)Landroidx/appcompat/view/menu/g;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/material/c/c$1;->a:Lcom/google/android/material/c/c;

    invoke-static {p0}, Lcom/google/android/material/c/c;->a(Lcom/google/android/material/c/c;)Lcom/google/android/material/c/d;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroidx/appcompat/view/menu/g;->a(Landroid/view/MenuItem;Landroidx/appcompat/view/menu/n;I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 128
    invoke-interface {p1, p0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
