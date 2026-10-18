.class public Landroidx/d/b/b/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "TransitionBuilder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/d/b/b/u;IILandroidx/d/e/g;ILandroidx/d/e/g;)Landroidx/d/b/b/u$a;
    .locals 1

    .line 62
    new-instance v0, Landroidx/d/b/b/u$a;

    invoke-direct {v0, p1, p0, p2, p4}, Landroidx/d/b/b/u$a;-><init>(ILandroidx/d/b/b/u;II)V

    .line 68
    invoke-static {p0, v0, p3, p5}, Landroidx/d/b/b/aa;->a(Landroidx/d/b/b/u;Landroidx/d/b/b/u$a;Landroidx/d/e/g;Landroidx/d/e/g;)V

    return-object v0
.end method

.method public static a(Landroidx/d/b/b/s;)V
    .locals 1

    .line 35
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    if-eqz v0, :cond_2

    .line 39
    iget-object v0, p0, Landroidx/d/b/b/s;->i:Landroidx/d/b/b/u;

    .line 40
    invoke-virtual {v0, p0}, Landroidx/d/b/b/u;->a(Landroidx/d/b/b/s;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 44
    iget-object p0, v0, Landroidx/d/b/b/u;->f:Landroidx/d/b/b/u$a;

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroidx/d/b/b/u;->a()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 45
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid motion layout. Motion Scene doesn\'t have any transition."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 41
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "MotionLayout doesn\'t have the right motion scene."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Invalid motion layout. Layout missing Motion Scene."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Landroidx/d/b/b/u;Landroidx/d/b/b/u$a;Landroidx/d/e/g;Landroidx/d/e/g;)V
    .locals 1

    .line 80
    invoke-virtual {p1}, Landroidx/d/b/b/u$a;->e()I

    move-result v0

    .line 81
    invoke-virtual {p1}, Landroidx/d/b/b/u$a;->d()I

    move-result p1

    .line 83
    invoke-virtual {p0, v0, p2}, Landroidx/d/b/b/u;->a(ILandroidx/d/e/g;)V

    .line 84
    invoke-virtual {p0, p1, p3}, Landroidx/d/b/b/u;->a(ILandroidx/d/e/g;)V

    return-void
.end method
