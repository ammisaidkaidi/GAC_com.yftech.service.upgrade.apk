.class Lcom/google/android/material/appbar/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/appbar/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/appbar/a;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/a;)V
    .locals 0

    .line 1279
    iput-object p1, p0, Lcom/google/android/material/appbar/a$b;->a:Lcom/google/android/material/appbar/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 7

    .line 1283
    iget-object p1, p0, Lcom/google/android/material/appbar/a$b;->a:Lcom/google/android/material/appbar/a;

    iput p2, p1, Lcom/google/android/material/appbar/a;->c:I

    .line 1285
    iget-object p1, p0, Lcom/google/android/material/appbar/a$b;->a:Lcom/google/android/material/appbar/a;

    iget-object p1, p1, Lcom/google/android/material/appbar/a;->d:Landroidx/core/n/ao;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/appbar/a$b;->a:Lcom/google/android/material/appbar/a;

    iget-object p1, p1, Lcom/google/android/material/appbar/a;->d:Landroidx/core/n/ao;

    invoke-virtual {p1}, Landroidx/core/n/ao;->b()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1287
    :goto_0
    iget-object v1, p0, Lcom/google/android/material/appbar/a$b;->a:Lcom/google/android/material/appbar/a;

    invoke-virtual {v1}, Lcom/google/android/material/appbar/a;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 1288
    iget-object v3, p0, Lcom/google/android/material/appbar/a$b;->a:Lcom/google/android/material/appbar/a;

    invoke-virtual {v3, v2}, Lcom/google/android/material/appbar/a;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1289
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/appbar/a$a;

    .line 1290
    invoke-static {v3}, Lcom/google/android/material/appbar/a;->a(Landroid/view/View;)Lcom/google/android/material/appbar/e;

    move-result-object v5

    .line 1292
    iget v6, v4, Lcom/google/android/material/appbar/a$a;->d:I

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    neg-int v3, p2

    int-to-float v3, v3

    .line 1298
    iget v4, v4, Lcom/google/android/material/appbar/a$a;->e:F

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v5, v3}, Lcom/google/android/material/appbar/e;->a(I)Z

    goto :goto_2

    :pswitch_1
    neg-int v4, p2

    .line 1294
    iget-object v6, p0, Lcom/google/android/material/appbar/a$b;->a:Lcom/google/android/material/appbar/a;

    .line 1295
    invoke-virtual {v6, v3}, Lcom/google/android/material/appbar/a;->b(Landroid/view/View;)I

    move-result v3

    invoke-static {v4, v0, v3}, Landroidx/core/g/a;->a(III)I

    move-result v3

    .line 1294
    invoke-virtual {v5, v3}, Lcom/google/android/material/appbar/e;->a(I)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1306
    :cond_1
    iget-object v0, p0, Lcom/google/android/material/appbar/a$b;->a:Lcom/google/android/material/appbar/a;

    invoke-virtual {v0}, Lcom/google/android/material/appbar/a;->c()V

    .line 1308
    iget-object v0, p0, Lcom/google/android/material/appbar/a$b;->a:Lcom/google/android/material/appbar/a;

    iget-object v0, v0, Lcom/google/android/material/appbar/a;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    if-lez p1, :cond_2

    .line 1309
    iget-object v0, p0, Lcom/google/android/material/appbar/a$b;->a:Lcom/google/android/material/appbar/a;

    invoke-static {v0}, Landroidx/core/n/af;->h(Landroid/view/View;)V

    .line 1313
    :cond_2
    iget-object v0, p0, Lcom/google/android/material/appbar/a$b;->a:Lcom/google/android/material/appbar/a;

    .line 1314
    invoke-virtual {v0}, Lcom/google/android/material/appbar/a;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/appbar/a$b;->a:Lcom/google/android/material/appbar/a;

    invoke-static {v1}, Landroidx/core/n/af;->E(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 1315
    iget-object p0, p0, Lcom/google/android/material/appbar/a$b;->a:Lcom/google/android/material/appbar/a;

    iget-object p0, p0, Lcom/google/android/material/appbar/a;->a:Lcom/google/android/material/internal/a;

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    int-to-float p2, v0

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/a;->c(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
