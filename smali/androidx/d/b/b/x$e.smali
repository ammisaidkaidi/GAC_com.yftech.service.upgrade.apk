.class Landroidx/d/b/b/x$e;
.super Landroidx/d/b/b/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/b/b/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field h:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 389
    invoke-direct {p0}, Landroidx/d/b/b/x;-><init>()V

    const/4 v0, 0x0

    .line 390
    iput-boolean v0, p0, Landroidx/d/b/b/x$e;->h:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;FJLandroidx/d/b/b/g;)Z
    .locals 9

    .line 394
    instance-of v0, p1, Landroidx/d/b/b/s;

    if-eqz v0, :cond_0

    .line 395
    move-object v0, p1

    check-cast v0, Landroidx/d/b/b/s;

    move-object v1, p0

    move v2, p2

    move-wide v3, p3

    move-object v5, p1

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroidx/d/b/b/x$e;->a(FJLandroid/view/View;Landroidx/d/b/b/g;)F

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/d/b/b/s;->setProgress(F)V

    goto :goto_1

    .line 397
    :cond_0
    iget-boolean v0, p0, Landroidx/d/b/b/x$e;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 402
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "setProgress"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    .line 404
    :catch_0
    iput-boolean v2, p0, Landroidx/d/b/b/x$e;->h:Z

    :goto_0
    if-eqz v0, :cond_2

    .line 408
    :try_start_1
    new-array v2, v2, [Ljava/lang/Object;

    move-object v3, p0

    move v4, p2

    move-wide v5, p3

    move-object v7, p1

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Landroidx/d/b/b/x$e;->a(FJLandroid/view/View;Landroidx/d/b/b/g;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "SplineSet"

    const-string p3, "unable to setProgress"

    .line 412
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception p1

    const-string p2, "SplineSet"

    const-string p3, "unable to setProgress"

    .line 410
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    :cond_2
    :goto_1
    iget-boolean p0, p0, Landroidx/d/b/b/x$e;->e:Z

    return p0
.end method
