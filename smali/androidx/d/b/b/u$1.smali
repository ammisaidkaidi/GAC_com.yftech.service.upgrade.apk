.class Landroidx/d/b/b/u$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/d/b/b/u;->f()Landroid/view/animation/Interpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/d/b/a/c;

.field final synthetic b:Landroidx/d/b/b/u;


# direct methods
.method constructor <init>(Landroidx/d/b/b/u;Landroidx/d/b/a/c;)V
    .locals 0

    .line 1398
    iput-object p1, p0, Landroidx/d/b/b/u$1;->b:Landroidx/d/b/b/u;

    iput-object p2, p0, Landroidx/d/b/b/u$1;->a:Landroidx/d/b/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    .line 1401
    iget-object p0, p0, Landroidx/d/b/b/u$1;->a:Landroidx/d/b/a/c;

    float-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Landroidx/d/b/a/c;->a(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method
