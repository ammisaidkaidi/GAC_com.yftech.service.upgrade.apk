.class Landroidx/core/n/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/n/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/n/f;


# direct methods
.method constructor <init>(Landroidx/core/n/f;)V
    .locals 0

    .line 181
    iput-object p1, p0, Landroidx/core/n/f$1;->a:Landroidx/core/n/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 184
    iget-object p0, p0, Landroidx/core/n/f$1;->a:Landroidx/core/n/f;

    invoke-virtual {p0, p1}, Landroidx/core/n/f;->a(Landroid/view/View;)Z

    move-result p0

    return p0
.end method
