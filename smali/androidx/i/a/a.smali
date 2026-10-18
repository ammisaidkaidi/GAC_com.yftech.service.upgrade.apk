.class public abstract Landroidx/i/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/i/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/lifecycle/j;)Landroidx/i/a/a;
    .locals 2
    .param p0    # Landroidx/lifecycle/j;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/lifecycle/j;",
            ":",
            "Landroidx/lifecycle/y;",
            ">(TT;)",
            "Landroidx/i/a/a;"
        }
    .end annotation

    .line 128
    new-instance v0, Landroidx/i/a/b;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/y;

    invoke-interface {v1}, Landroidx/lifecycle/y;->d()Landroidx/lifecycle/x;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/i/a/b;-><init>(Landroidx/lifecycle/j;Landroidx/lifecycle/x;)V

    return-object v0
.end method

.method public static a(Z)V
    .locals 0

    .line 235
    sput-boolean p0, Landroidx/i/a/b;->b:Z

    return-void
.end method


# virtual methods
.method public abstract a(ILandroid/os/Bundle;Landroidx/i/a/a$a;)Landroidx/i/b/c;
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroidx/i/a/a$a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidx/i/a/a$a<",
            "TD;>;)",
            "Landroidx/i/b/c<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract a()V
.end method

.method public abstract a(I)V
    .annotation build Landroidx/annotation/ae;
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract b(I)Landroidx/i/b/c;
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Landroidx/i/b/c<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract b(ILandroid/os/Bundle;Landroidx/i/a/a$a;)Landroidx/i/b/c;
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroidx/i/a/a$a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidx/i/a/a$a<",
            "TD;>;)",
            "Landroidx/i/b/c<",
            "TD;>;"
        }
    .end annotation
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
