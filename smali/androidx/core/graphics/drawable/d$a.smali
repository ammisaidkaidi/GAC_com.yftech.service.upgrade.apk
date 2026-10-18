.class Landroidx/core/graphics/drawable/d$a;
.super Landroidx/core/graphics/drawable/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/graphics/drawable/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroidx/core/graphics/drawable/b;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    const/4 v5, 0x0

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 62
    invoke-static/range {v0 .. v5}, Landroidx/core/n/h;->a(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/core/graphics/drawable/d$a;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Landroidx/core/graphics/drawable/d$a;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Landroidx/core/graphics/a;->a(Landroid/graphics/Bitmap;Z)V

    .line 50
    invoke-virtual {p0}, Landroidx/core/graphics/drawable/d$a;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 56
    iget-object v0, p0, Landroidx/core/graphics/drawable/d$a;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/core/graphics/drawable/d$a;->a:Landroid/graphics/Bitmap;

    invoke-static {p0}, Landroidx/core/graphics/a;->a(Landroid/graphics/Bitmap;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
