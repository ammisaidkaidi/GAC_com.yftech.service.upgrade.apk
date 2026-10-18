.class Landroidx/appcompat/app/h$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/n/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/h;->C()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/h;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h;)V
    .locals 0

    .line 938
    iput-object p1, p0, Landroidx/appcompat/app/h$3;->a:Landroidx/appcompat/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/n/ao;)Landroidx/core/n/ao;
    .locals 3

    .line 942
    invoke-virtual {p2}, Landroidx/core/n/ao;->b()I

    move-result v0

    .line 943
    iget-object p0, p0, Landroidx/appcompat/app/h$3;->a:Landroidx/appcompat/app/h;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Landroidx/appcompat/app/h;->a(Landroidx/core/n/ao;Landroid/graphics/Rect;)I

    move-result p0

    if-eq v0, p0, :cond_0

    .line 947
    invoke-virtual {p2}, Landroidx/core/n/ao;->a()I

    move-result v0

    .line 949
    invoke-virtual {p2}, Landroidx/core/n/ao;->c()I

    move-result v1

    .line 950
    invoke-virtual {p2}, Landroidx/core/n/ao;->d()I

    move-result v2

    .line 946
    invoke-virtual {p2, v0, p0, v1, v2}, Landroidx/core/n/ao;->a(IIII)Landroidx/core/n/ao;

    move-result-object p2

    .line 954
    :cond_0
    invoke-static {p1, p2}, Landroidx/core/n/af;->a(Landroid/view/View;Landroidx/core/n/ao;)Landroidx/core/n/ao;

    move-result-object p0

    return-object p0
.end method
