.class public abstract Landroidx/a/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Runnable;)V
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
.end method

.method public abstract b(Ljava/lang/Runnable;)V
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
.end method

.method public c(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 54
    invoke-virtual {p0}, Landroidx/a/a/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/a/a/a/c;->b(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public abstract d()Z
.end method
