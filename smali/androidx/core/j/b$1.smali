.class Landroidx/core/j/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable<",
        "Landroidx/core/j/b$e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroidx/core/j/a;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/core/j/a;ILjava/lang/String;)V
    .locals 0

    .line 254
    iput-object p1, p0, Landroidx/core/j/b$1;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/core/j/b$1;->b:Landroidx/core/j/a;

    iput p3, p0, Landroidx/core/j/b$1;->c:I

    iput-object p4, p0, Landroidx/core/j/b$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/core/j/b$e;
    .locals 3

    .line 257
    iget-object v0, p0, Landroidx/core/j/b$1;->a:Landroid/content/Context;

    iget-object v1, p0, Landroidx/core/j/b$1;->b:Landroidx/core/j/a;

    iget v2, p0, Landroidx/core/j/b$1;->c:I

    invoke-static {v0, v1, v2}, Landroidx/core/j/b;->a(Landroid/content/Context;Landroidx/core/j/a;I)Landroidx/core/j/b$e;

    move-result-object v0

    .line 258
    iget-object v1, v0, Landroidx/core/j/b$e;->a:Landroid/graphics/Typeface;

    if-eqz v1, :cond_0

    .line 259
    sget-object v1, Landroidx/core/j/b;->d:Landroidx/c/g;

    iget-object p0, p0, Landroidx/core/j/b$1;->d:Ljava/lang/String;

    iget-object v2, v0, Landroidx/core/j/b$e;->a:Landroid/graphics/Typeface;

    invoke-virtual {v1, p0, v2}, Landroidx/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 0

    .line 254
    invoke-virtual {p0}, Landroidx/core/j/b$1;->a()Landroidx/core/j/b$e;

    move-result-object p0

    return-object p0
.end method
