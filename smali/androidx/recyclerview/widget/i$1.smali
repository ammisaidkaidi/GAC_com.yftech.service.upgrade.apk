.class final Landroidx/recyclerview/widget/i$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/recyclerview/widget/i$f;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/recyclerview/widget/i$f;Landroidx/recyclerview/widget/i$f;)I
    .locals 1

    .line 87
    iget p0, p1, Landroidx/recyclerview/widget/i$f;->a:I

    iget v0, p2, Landroidx/recyclerview/widget/i$f;->a:I

    sub-int/2addr p0, v0

    if-nez p0, :cond_0

    .line 88
    iget p0, p1, Landroidx/recyclerview/widget/i$f;->b:I

    iget p1, p2, Landroidx/recyclerview/widget/i$f;->b:I

    sub-int/2addr p0, p1

    :cond_0
    return p0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 84
    check-cast p1, Landroidx/recyclerview/widget/i$f;

    check-cast p2, Landroidx/recyclerview/widget/i$f;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/i$1;->a(Landroidx/recyclerview/widget/i$f;Landroidx/recyclerview/widget/i$f;)I

    move-result p0

    return p0
.end method
