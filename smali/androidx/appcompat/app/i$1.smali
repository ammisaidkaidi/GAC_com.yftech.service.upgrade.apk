.class Landroidx/appcompat/app/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/n/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/i;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/i;)V
    .locals 0

    .line 45
    iput-object p1, p0, Landroidx/appcompat/app/i$1;->a:Landroidx/appcompat/app/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 48
    iget-object p0, p0, Landroidx/appcompat/app/i$1;->a:Landroidx/appcompat/app/i;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/i;->a(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method
