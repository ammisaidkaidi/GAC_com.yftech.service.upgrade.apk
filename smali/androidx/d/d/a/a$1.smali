.class Landroidx/d/d/a/a$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/d/d/a/a;->setRoundPercent(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/d/d/a/a;


# direct methods
.method constructor <init>(Landroidx/d/d/a/a;)V
    .locals 0

    .line 278
    iput-object p1, p0, Landroidx/d/d/a/a$1;->a:Landroidx/d/d/a/a;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 281
    iget-object p1, p0, Landroidx/d/d/a/a$1;->a:Landroidx/d/d/a/a;

    invoke-virtual {p1}, Landroidx/d/d/a/a;->getWidth()I

    move-result v3

    .line 282
    iget-object p1, p0, Landroidx/d/d/a/a$1;->a:Landroidx/d/d/a/a;

    invoke-virtual {p1}, Landroidx/d/d/a/a;->getHeight()I

    move-result v4

    .line 283
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    iget-object p0, p0, Landroidx/d/d/a/a$1;->a:Landroidx/d/d/a/a;

    invoke-static {p0}, Landroidx/d/d/a/a;->a(Landroidx/d/d/a/a;)F

    move-result p0

    mul-float/2addr p1, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float v5, p1, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    .line 284
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
