.class Landroidx/core/n/af$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/n/af;->a(Landroid/view/View;Landroidx/core/n/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/n/y;


# direct methods
.method constructor <init>(Landroidx/core/n/y;)V
    .locals 0

    .line 2469
    iput-object p1, p0, Landroidx/core/n/af$1;->a:Landroidx/core/n/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 2473
    invoke-static {p2}, Landroidx/core/n/ao;->a(Landroid/view/WindowInsets;)Landroidx/core/n/ao;

    move-result-object p2

    .line 2474
    iget-object p0, p0, Landroidx/core/n/af$1;->a:Landroidx/core/n/y;

    invoke-interface {p0, p1, p2}, Landroidx/core/n/y;->a(Landroid/view/View;Landroidx/core/n/ao;)Landroidx/core/n/ao;

    move-result-object p0

    .line 2475
    invoke-virtual {p0}, Landroidx/core/n/ao;->w()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
