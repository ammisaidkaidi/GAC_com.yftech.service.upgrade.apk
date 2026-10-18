.class Landroidx/d/d/a/b$2;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/d/d/a/b;->setRound(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/d/d/a/b;


# direct methods
.method constructor <init>(Landroidx/d/d/a/b;)V
    .locals 0

    .line 547
    iput-object p1, p0, Landroidx/d/d/a/b$2;->a:Landroidx/d/d/a/b;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6

    .line 550
    iget-object p1, p0, Landroidx/d/d/a/b$2;->a:Landroidx/d/d/a/b;

    invoke-virtual {p1}, Landroidx/d/d/a/b;->getWidth()I

    move-result v3

    .line 551
    iget-object p1, p0, Landroidx/d/d/a/b$2;->a:Landroidx/d/d/a/b;

    invoke-virtual {p1}, Landroidx/d/d/a/b;->getHeight()I

    move-result v4

    .line 552
    iget-object p0, p0, Landroidx/d/d/a/b$2;->a:Landroidx/d/d/a/b;

    invoke-static {p0}, Landroidx/d/d/a/b;->b(Landroidx/d/d/a/b;)F

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
