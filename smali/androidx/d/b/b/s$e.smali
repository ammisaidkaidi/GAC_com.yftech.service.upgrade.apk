.class Landroidx/d/b/b/s$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/d/b/b/s$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/b/b/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# static fields
.field private static b:Landroidx/d/b/b/s$e;


# instance fields
.field a:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1071
    new-instance v0, Landroidx/d/b/b/s$e;

    invoke-direct {v0}, Landroidx/d/b/b/s$e;-><init>()V

    sput-object v0, Landroidx/d/b/b/s$e;->b:Landroidx/d/b/b/s$e;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1069
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static e()Landroidx/d/b/b/s$e;
    .locals 2

    .line 1074
    sget-object v0, Landroidx/d/b/b/s$e;->b:Landroidx/d/b/b/s$e;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Landroidx/d/b/b/s$e;->a:Landroid/view/VelocityTracker;

    .line 1075
    sget-object v0, Landroidx/d/b/b/s$e;->b:Landroidx/d/b/b/s$e;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1080
    iget-object v0, p0, Landroidx/d/b/b/s$e;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Landroidx/d/b/b/s$e;->a:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 1082
    iput-object v0, p0, Landroidx/d/b/b/s$e;->a:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 1102
    iget-object v0, p0, Landroidx/d/b/b/s$e;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1103
    iget-object p0, p0, Landroidx/d/b/b/s$e;->a:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_0
    return-void
.end method

.method public a(IF)V
    .locals 1

    .line 1109
    iget-object v0, p0, Landroidx/d/b/b/s$e;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1110
    iget-object p0, p0, Landroidx/d/b/b/s$e;->a:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1095
    iget-object v0, p0, Landroidx/d/b/b/s$e;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1096
    iget-object p0, p0, Landroidx/d/b/b/s$e;->a:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public b(I)F
    .locals 1

    .line 1132
    iget-object v0, p0, Landroidx/d/b/b/s$e;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1133
    iget-object p0, p0, Landroidx/d/b/b/s$e;->a:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public b()V
    .locals 1

    .line 1088
    iget-object v0, p0, Landroidx/d/b/b/s$e;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1089
    iget-object p0, p0, Landroidx/d/b/b/s$e;->a:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void
.end method

.method public c()F
    .locals 1

    .line 1116
    iget-object v0, p0, Landroidx/d/b/b/s$e;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1117
    iget-object p0, p0, Landroidx/d/b/b/s$e;->a:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public c(I)F
    .locals 1

    .line 1140
    iget-object v0, p0, Landroidx/d/b/b/s$e;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1141
    invoke-virtual {p0, p1}, Landroidx/d/b/b/s$e;->c(I)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public d()F
    .locals 1

    .line 1124
    iget-object v0, p0, Landroidx/d/b/b/s$e;->a:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1125
    iget-object p0, p0, Landroidx/d/b/b/s$e;->a:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
