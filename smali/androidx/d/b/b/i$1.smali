.class Landroidx/d/b/b/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/d/b/b/i;->c(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/d/b/b/i$q;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/d/b/b/i;


# direct methods
.method constructor <init>(Landroidx/d/b/b/i;)V
    .locals 0

    .line 177
    iput-object p1, p0, Landroidx/d/b/b/i$1;->a:Landroidx/d/b/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/d/b/b/i$q;Landroidx/d/b/b/i$q;)I
    .locals 0

    .line 180
    iget p0, p1, Landroidx/d/b/b/i$q;->a:I

    iget p1, p2, Landroidx/d/b/b/i$q;->a:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 177
    check-cast p1, Landroidx/d/b/b/i$q;

    check-cast p2, Landroidx/d/b/b/i$q;

    invoke-virtual {p0, p1, p2}, Landroidx/d/b/b/i$1;->a(Landroidx/d/b/b/i$q;Landroidx/d/b/b/i$q;)I

    move-result p0

    return p0
.end method
