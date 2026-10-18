.class Landroidx/j/n$4;
.super Landroidx/j/ag$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/n;->a(Ljava/lang/Object;Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Rect;

.field final synthetic b:Landroidx/j/n;


# direct methods
.method constructor <init>(Landroidx/j/n;Landroid/graphics/Rect;)V
    .locals 0

    .line 301
    iput-object p1, p0, Landroidx/j/n$4;->b:Landroidx/j/n;

    iput-object p2, p0, Landroidx/j/n$4;->a:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroidx/j/ag$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/j/ag;)Landroid/graphics/Rect;
    .locals 0
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 304
    iget-object p1, p0, Landroidx/j/n$4;->a:Landroid/graphics/Rect;

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/j/n$4;->a:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    iget-object p0, p0, Landroidx/j/n$4;->a:Landroid/graphics/Rect;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
