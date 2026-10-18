.class Landroidx/d/d/a/a$2;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/d/d/a/a;->setRound(F)V
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

    .line 336
    iput-object p1, p0, Landroidx/d/d/a/a$2;->a:Landroidx/d/d/a/a;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 339
    iget-object p1, p0, Landroidx/d/d/a/a$2;->a:Landroidx/d/d/a/a;

    invoke-virtual {p1}, Landroidx/d/d/a/a;->getWidth()I

    move-result v3

    .line 340
    iget-object p1, p0, Landroidx/d/d/a/a$2;->a:Landroidx/d/d/a/a;

    invoke-virtual {p1}, Landroidx/d/d/a/a;->getHeight()I

    move-result v4

    .line 341
    iget-object p0, p0, Landroidx/d/d/a/a$2;->a:Landroidx/d/d/a/a;

    invoke-static {p0}, Landroidx/d/d/a/a;->b(Landroidx/d/d/a/a;)F

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
