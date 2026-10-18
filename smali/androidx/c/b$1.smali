.class Landroidx/c/b$1;
.super Landroidx/c/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/c/b;->b()Landroidx/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/c/h<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/c/b;


# direct methods
.method constructor <init>(Landroidx/c/b;)V
    .locals 0

    .line 635
    iput-object p1, p0, Landroidx/c/b$1;->a:Landroidx/c/b;

    invoke-direct {p0}, Landroidx/c/h;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 0

    .line 638
    iget-object p0, p0, Landroidx/c/b$1;->a:Landroidx/c/b;

    iget p0, p0, Landroidx/c/b;->b:I

    return p0
.end method

.method protected a(Ljava/lang/Object;)I
    .locals 0

    .line 648
    iget-object p0, p0, Landroidx/c/b$1;->a:Landroidx/c/b;

    invoke-virtual {p0, p1}, Landroidx/c/b;->a(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected a(II)Ljava/lang/Object;
    .locals 0

    .line 643
    iget-object p0, p0, Landroidx/c/b$1;->a:Landroidx/c/b;

    iget-object p0, p0, Landroidx/c/b;->a:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method protected a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 668
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not a map"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected a(I)V
    .locals 0

    .line 673
    iget-object p0, p0, Landroidx/c/b$1;->a:Landroidx/c/b;

    invoke-virtual {p0, p1}, Landroidx/c/b;->c(I)Ljava/lang/Object;

    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    .line 663
    iget-object p0, p0, Landroidx/c/b$1;->a:Landroidx/c/b;

    invoke-virtual {p0, p1}, Landroidx/c/b;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected b(Ljava/lang/Object;)I
    .locals 0

    .line 653
    iget-object p0, p0, Landroidx/c/b$1;->a:Landroidx/c/b;

    invoke-virtual {p0, p1}, Landroidx/c/b;->a(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    .line 658
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not a map"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected c()V
    .locals 0

    .line 678
    iget-object p0, p0, Landroidx/c/b$1;->a:Landroidx/c/b;

    invoke-virtual {p0}, Landroidx/c/b;->clear()V

    return-void
.end method
