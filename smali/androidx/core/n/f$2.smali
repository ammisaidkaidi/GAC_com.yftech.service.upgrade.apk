.class Landroidx/core/n/f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 188
    iput-object p1, p0, Landroidx/core/n/f$2;->a:Landroidx/core/n/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 191
    iget-object p0, p0, Landroidx/core/n/f$2;->a:Landroidx/core/n/f;

    invoke-virtual {p0, p1, p2}, Landroidx/core/n/f;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
