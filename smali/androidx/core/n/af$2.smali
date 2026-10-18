.class Landroidx/core/n/af$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnUnhandledKeyEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/n/af;->a(Landroid/view/View;Landroidx/core/n/af$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/n/af$j;


# direct methods
.method constructor <init>(Landroidx/core/n/af$j;)V
    .locals 0

    .line 3792
    iput-object p1, p0, Landroidx/core/n/af$2;->a:Landroidx/core/n/af$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnhandledKeyEvent(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .locals 0

    .line 3795
    iget-object p0, p0, Landroidx/core/n/af$2;->a:Landroidx/core/n/af$j;

    invoke-interface {p0, p1, p2}, Landroidx/core/n/af$j;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
