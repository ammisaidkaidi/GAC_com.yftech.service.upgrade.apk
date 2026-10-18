.class Landroidx/appcompat/widget/ar$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/ar;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/ar;)V
    .locals 0

    .line 557
    iput-object p1, p0, Landroidx/appcompat/widget/ar$b;->a:Landroidx/appcompat/widget/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 562
    move-object v0, p1

    check-cast v0, Landroidx/appcompat/widget/ar$c;

    .line 563
    invoke-virtual {v0}, Landroidx/appcompat/widget/ar$c;->b()Landroidx/appcompat/app/a$f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/a$f;->f()V

    .line 564
    iget-object v0, p0, Landroidx/appcompat/widget/ar$b;->a:Landroidx/appcompat/widget/ar;

    iget-object v0, v0, Landroidx/appcompat/widget/ar;->b:Landroidx/appcompat/widget/aj;

    invoke-virtual {v0}, Landroidx/appcompat/widget/aj;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 566
    iget-object v3, p0, Landroidx/appcompat/widget/ar$b;->a:Landroidx/appcompat/widget/ar;

    iget-object v3, v3, Landroidx/appcompat/widget/ar;->b:Landroidx/appcompat/widget/aj;

    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/aj;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 567
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
