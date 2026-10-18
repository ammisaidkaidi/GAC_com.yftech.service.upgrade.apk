.class public final Landroidx/core/n/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/n/g$c;,
        Landroidx/core/n/g$b;,
        Landroidx/core/n/g$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/core/n/g$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 506
    invoke-direct {p0, p1, p2, v0}, Landroidx/core/n/g;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 2

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-le v0, v1, :cond_0

    .line 521
    new-instance v0, Landroidx/core/n/g$c;

    invoke-direct {v0, p1, p2, p3}, Landroidx/core/n/g$c;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroidx/core/n/g;->a:Landroidx/core/n/g$a;

    goto :goto_0

    .line 523
    :cond_0
    new-instance v0, Landroidx/core/n/g$b;

    invoke-direct {v0, p1, p2, p3}, Landroidx/core/n/g$b;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroidx/core/n/g;->a:Landroidx/core/n/g$a;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0

    .line 567
    iget-object p0, p0, Landroidx/core/n/g;->a:Landroidx/core/n/g$a;

    invoke-interface {p0, p1}, Landroidx/core/n/g$a;->a(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 556
    iget-object p0, p0, Landroidx/core/n/g;->a:Landroidx/core/n/g$a;

    invoke-interface {p0, p1}, Landroidx/core/n/g$a;->a(Z)V

    return-void
.end method

.method public a()Z
    .locals 0

    .line 531
    iget-object p0, p0, Landroidx/core/n/g;->a:Landroidx/core/n/g$a;

    invoke-interface {p0}, Landroidx/core/n/g$a;->a()Z

    move-result p0

    return p0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 543
    iget-object p0, p0, Landroidx/core/n/g;->a:Landroidx/core/n/g$a;

    invoke-interface {p0, p1}, Landroidx/core/n/g$a;->a(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
