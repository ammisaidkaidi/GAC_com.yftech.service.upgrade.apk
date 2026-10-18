.class Landroidx/viewpager2/adapter/a$2;
.super Landroidx/fragment/app/j$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager2/adapter/a;->a(Landroidx/fragment/app/d;Landroid/widget/FrameLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/d;

.field final synthetic b:Landroid/widget/FrameLayout;

.field final synthetic c:Landroidx/viewpager2/adapter/a;


# direct methods
.method constructor <init>(Landroidx/viewpager2/adapter/a;Landroidx/fragment/app/d;Landroid/widget/FrameLayout;)V
    .locals 0

    .line 369
    iput-object p1, p0, Landroidx/viewpager2/adapter/a$2;->c:Landroidx/viewpager2/adapter/a;

    iput-object p2, p0, Landroidx/viewpager2/adapter/a$2;->a:Landroidx/fragment/app/d;

    iput-object p3, p0, Landroidx/viewpager2/adapter/a$2;->b:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroidx/fragment/app/j$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/j;Landroidx/fragment/app/d;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/j;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 376
    iget-object p4, p0, Landroidx/viewpager2/adapter/a$2;->a:Landroidx/fragment/app/d;

    if-ne p2, p4, :cond_0

    .line 377
    invoke-virtual {p1, p0}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/j$b;)V

    .line 378
    iget-object p1, p0, Landroidx/viewpager2/adapter/a$2;->c:Landroidx/viewpager2/adapter/a;

    iget-object p0, p0, Landroidx/viewpager2/adapter/a$2;->b:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3, p0}, Landroidx/viewpager2/adapter/a;->a(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method
