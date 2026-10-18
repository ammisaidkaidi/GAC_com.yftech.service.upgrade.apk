.class Lcom/google/android/material/x/b$l$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/x/b$l;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/google/android/material/x/b$l;


# direct methods
.method constructor <init>(Lcom/google/android/material/x/b$l;Landroid/view/View;)V
    .locals 0

    .line 2610
    iput-object p1, p0, Lcom/google/android/material/x/b$l$1;->b:Lcom/google/android/material/x/b$l;

    iput-object p2, p0, Lcom/google/android/material/x/b$l$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 2622
    iget-object p1, p0, Lcom/google/android/material/x/b$l$1;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 2623
    iget-object p1, p0, Lcom/google/android/material/x/b$l$1;->b:Lcom/google/android/material/x/b$l;

    iget-object p0, p0, Lcom/google/android/material/x/b$l$1;->a:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/google/android/material/x/b$l;->a(Lcom/google/android/material/x/b$l;Landroid/view/View;)V

    :cond_0
    return-void
.end method
