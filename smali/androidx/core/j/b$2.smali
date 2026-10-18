.class Landroidx/core/j/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/j/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/j/b;->a(Landroid/content/Context;Landroidx/core/j/a;Landroidx/core/b/b/g$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/j/c$a<",
        "Landroidx/core/j/b$e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/b/b/g$a;

.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroidx/core/b/b/g$a;Landroid/os/Handler;)V
    .locals 0

    .line 273
    iput-object p1, p0, Landroidx/core/j/b$2;->a:Landroidx/core/b/b/g$a;

    iput-object p2, p0, Landroidx/core/j/b$2;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/core/j/b$e;)V
    .locals 1

    if-nez p1, :cond_0

    .line 277
    iget-object p1, p0, Landroidx/core/j/b$2;->a:Landroidx/core/b/b/g$a;

    const/4 v0, 0x1

    iget-object p0, p0, Landroidx/core/j/b$2;->b:Landroid/os/Handler;

    invoke-virtual {p1, v0, p0}, Landroidx/core/b/b/g$a;->a(ILandroid/os/Handler;)V

    goto :goto_0

    .line 279
    :cond_0
    iget v0, p1, Landroidx/core/j/b$e;->b:I

    if-nez v0, :cond_1

    .line 280
    iget-object v0, p0, Landroidx/core/j/b$2;->a:Landroidx/core/b/b/g$a;

    iget-object p1, p1, Landroidx/core/j/b$e;->a:Landroid/graphics/Typeface;

    iget-object p0, p0, Landroidx/core/j/b$2;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p0}, Landroidx/core/b/b/g$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Landroidx/core/j/b$2;->a:Landroidx/core/b/b/g$a;

    iget p1, p1, Landroidx/core/j/b$e;->b:I

    iget-object p0, p0, Landroidx/core/j/b$2;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1, p0}, Landroidx/core/b/b/g$a;->a(ILandroid/os/Handler;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 273
    check-cast p1, Landroidx/core/j/b$e;

    invoke-virtual {p0, p1}, Landroidx/core/j/b$2;->a(Landroidx/core/j/b$e;)V

    return-void
.end method
