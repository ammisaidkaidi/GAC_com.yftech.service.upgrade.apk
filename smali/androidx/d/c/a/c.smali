.class public Landroidx/d/c/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final a:Landroidx/d/c/a/e;

.field final b:Landroidx/d/c/a/e$d;

.field protected c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroidx/d/c/b/j;


# direct methods
.method public constructor <init>(Landroidx/d/c/a/e;Landroidx/d/c/a/e$d;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/d/c/a/c;->c:Ljava/util/ArrayList;

    .line 30
    iput-object p1, p0, Landroidx/d/c/a/c;->a:Landroidx/d/c/a/e;

    .line 31
    iput-object p2, p0, Landroidx/d/c/a/c;->b:Landroidx/d/c/a/e$d;

    return-void
.end method


# virtual methods
.method public varargs a([Ljava/lang/Object;)Landroidx/d/c/a/c;
    .locals 4

    .line 37
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 38
    iget-object v3, p0, Landroidx/d/c/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public a()Landroidx/d/c/a/e$d;
    .locals 0

    .line 34
    iget-object p0, p0, Landroidx/d/c/a/c;->b:Landroidx/d/c/a/e$d;

    return-object p0
.end method

.method public a(Landroidx/d/c/b/j;)V
    .locals 0

    .line 44
    iput-object p1, p0, Landroidx/d/c/a/c;->d:Landroidx/d/c/b/j;

    return-void
.end method

.method public b()Landroidx/d/c/b/j;
    .locals 0

    .line 47
    iget-object p0, p0, Landroidx/d/c/a/c;->d:Landroidx/d/c/b/j;

    return-object p0
.end method

.method public c()V
    .locals 0

    return-void
.end method
