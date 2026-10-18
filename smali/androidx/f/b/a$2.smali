.class final Landroidx/f/b/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/f/b/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/f/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/f/b/b$b<",
        "Landroidx/c/j<",
        "Landroidx/core/n/a/d;",
        ">;",
        "Landroidx/core/n/a/d;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/c/j;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/c/j<",
            "Landroidx/core/n/a/d;",
            ">;)I"
        }
    .end annotation

    .line 358
    invoke-virtual {p1}, Landroidx/c/j;->b()I

    move-result p0

    return p0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)I
    .locals 0

    .line 349
    check-cast p1, Landroidx/c/j;

    invoke-virtual {p0, p1}, Landroidx/f/b/a$2;->a(Landroidx/c/j;)I

    move-result p0

    return p0
.end method

.method public a(Landroidx/c/j;I)Landroidx/core/n/a/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/c/j<",
            "Landroidx/core/n/a/d;",
            ">;I)",
            "Landroidx/core/n/a/d;"
        }
    .end annotation

    .line 353
    invoke-virtual {p1, p2}, Landroidx/c/j;->f(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/n/a/d;

    return-object p0
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0

    .line 349
    check-cast p1, Landroidx/c/j;

    invoke-virtual {p0, p1, p2}, Landroidx/f/b/a$2;->a(Landroidx/c/j;I)Landroidx/core/n/a/d;

    move-result-object p0

    return-object p0
.end method
