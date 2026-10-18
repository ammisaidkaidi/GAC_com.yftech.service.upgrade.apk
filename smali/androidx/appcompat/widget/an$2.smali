.class Landroidx/appcompat/widget/an$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/an;-><init>(Landroid/content/Context;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/an;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/an;)V
    .locals 0

    .line 125
    iput-object p1, p0, Landroidx/appcompat/widget/an$2;->a:Landroidx/appcompat/widget/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 128
    iget-object v0, p0, Landroidx/appcompat/widget/an$2;->a:Landroidx/appcompat/widget/an;

    iget-object v0, v0, Landroidx/appcompat/widget/an;->c:Landroidx/appcompat/widget/an$a;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroidx/appcompat/widget/an$2;->a:Landroidx/appcompat/widget/an;

    iget-object v0, v0, Landroidx/appcompat/widget/an;->c:Landroidx/appcompat/widget/an$a;

    iget-object p0, p0, Landroidx/appcompat/widget/an$2;->a:Landroidx/appcompat/widget/an;

    invoke-interface {v0, p0}, Landroidx/appcompat/widget/an$a;->a(Landroidx/appcompat/widget/an;)V

    :cond_0
    return-void
.end method
