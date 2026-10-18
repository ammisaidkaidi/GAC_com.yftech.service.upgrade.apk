.class Landroidx/appcompat/app/h$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/ah$a;


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

    .line 960
    iput-object p1, p0, Landroidx/appcompat/app/h$4;->a:Landroidx/appcompat/app/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 1

    .line 963
    iget-object p0, p0, Landroidx/appcompat/app/h$4;->a:Landroidx/appcompat/app/h;

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/h;->a(Landroidx/core/n/ao;Landroid/graphics/Rect;)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method
