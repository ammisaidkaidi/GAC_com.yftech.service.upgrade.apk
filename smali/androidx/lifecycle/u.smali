.class public Landroidx/lifecycle/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/lifecycle/LiveData;Landroidx/a/a/c/a;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p0    # Landroidx/lifecycle/LiveData;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroidx/a/a/c/a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TX;>;",
            "Landroidx/a/a/c/a<",
            "TX;TY;>;)",
            "Landroidx/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    .line 71
    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    .line 72
    new-instance v1, Landroidx/lifecycle/u$1;

    invoke-direct {v1, v0, p1}, Landroidx/lifecycle/u$1;-><init>(Landroidx/lifecycle/n;Landroidx/a/a/c/a;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/n;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/q;)V

    return-object v0
.end method

.method public static b(Landroidx/lifecycle/LiveData;Landroidx/a/a/c/a;)Landroidx/lifecycle/LiveData;
    .locals 2
    .param p0    # Landroidx/lifecycle/LiveData;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroidx/a/a/c/a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            "Y:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/LiveData<",
            "TX;>;",
            "Landroidx/a/a/c/a<",
            "TX;",
            "Landroidx/lifecycle/LiveData<",
            "TY;>;>;)",
            "Landroidx/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation

    .line 135
    new-instance v0, Landroidx/lifecycle/n;

    invoke-direct {v0}, Landroidx/lifecycle/n;-><init>()V

    .line 136
    new-instance v1, Landroidx/lifecycle/u$2;

    invoke-direct {v1, p1, v0}, Landroidx/lifecycle/u$2;-><init>(Landroidx/a/a/c/a;Landroidx/lifecycle/n;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/n;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/q;)V

    return-object v0
.end method
