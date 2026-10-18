.class final Landroidx/l/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/l/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/l/a/d$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/l/a/d$b;Landroidx/l/a/d$b;)I
    .locals 0

    .line 143
    iget p0, p1, Landroidx/l/a/d$b;->b:I

    iget p1, p2, Landroidx/l/a/d$b;->b:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 140
    check-cast p1, Landroidx/l/a/d$b;

    check-cast p2, Landroidx/l/a/d$b;

    invoke-virtual {p0, p1, p2}, Landroidx/l/a/d$1;->a(Landroidx/l/a/d$b;Landroidx/l/a/d$b;)I

    move-result p0

    return p0
.end method
