.class Landroidx/core/l/d$b;
.super Ljava/util/concurrent/FutureTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/l/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/l/d$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "Landroidx/core/l/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroidx/core/l/d$a;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Landroidx/core/l/d$a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 586
    new-instance v0, Landroidx/core/l/d$b$a;

    invoke-direct {v0, p1, p2}, Landroidx/core/l/d$b$a;-><init>(Landroidx/core/l/d$a;Ljava/lang/CharSequence;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method
