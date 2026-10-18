.class Landroidx/d/b/b/x$i;
.super Landroidx/d/b/b/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/b/b/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "i"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 273
    invoke-direct {p0}, Landroidx/d/b/b/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;FJLandroidx/d/b/b/g;)Z
    .locals 6

    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p1

    move-object v5, p5

    .line 276
    invoke-virtual/range {v0 .. v5}, Landroidx/d/b/b/x$i;->a(FJLandroid/view/View;Landroidx/d/b/b/g;)F

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setScaleX(F)V

    .line 277
    iget-boolean p0, p0, Landroidx/d/b/b/x$i;->e:Z

    return p0
.end method
