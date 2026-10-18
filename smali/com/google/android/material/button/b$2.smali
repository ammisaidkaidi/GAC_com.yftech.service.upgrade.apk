.class Lcom/google/android/material/button/b$2;
.super Landroidx/core/n/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/button/b;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/button/b;


# direct methods
.method constructor <init>(Lcom/google/android/material/button/b;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/google/android/material/button/b$2;->a:Lcom/google/android/material/button/b;

    invoke-direct {p0}, Landroidx/core/n/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/n/a/d;)V
    .locals 6
    .param p2    # Landroidx/core/n/a/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 258
    invoke-super {p0, p1, p2}, Landroidx/core/n/a;->a(Landroid/view/View;Landroidx/core/n/a/d;)V

    .line 259
    iget-object p0, p0, Lcom/google/android/material/button/b$2;->a:Lcom/google/android/material/button/b;

    .line 263
    invoke-static {p0, p1}, Lcom/google/android/material/button/b;->a(Lcom/google/android/material/button/b;Landroid/view/View;)I

    move-result v2

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 266
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    move-result v5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 260
    invoke-static/range {v0 .. v5}, Landroidx/core/n/a/d$c;->a(IIIIZZ)Landroidx/core/n/a/d$c;

    move-result-object p0

    .line 259
    invoke-virtual {p2, p0}, Landroidx/core/n/a/d;->c(Ljava/lang/Object;)V

    return-void
.end method
