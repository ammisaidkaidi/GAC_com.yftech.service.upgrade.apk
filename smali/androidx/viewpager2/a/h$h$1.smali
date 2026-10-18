.class Landroidx/viewpager2/a/h$h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/n/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/a/h$h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager2/a/h$h;


# direct methods
.method constructor <init>(Landroidx/viewpager2/a/h$h;)V
    .locals 0

    .line 1330
    iput-object p1, p0, Landroidx/viewpager2/a/h$h$1;->a:Landroidx/viewpager2/a/h$h;

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

    .line 1334
    check-cast p1, Landroidx/viewpager2/a/h;

    .line 1335
    iget-object p0, p0, Landroidx/viewpager2/a/h$h$1;->a:Landroidx/viewpager2/a/h$h;

    invoke-virtual {p1}, Landroidx/viewpager2/a/h;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroidx/viewpager2/a/h$h;->c(I)V

    return p2
.end method
