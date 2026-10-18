.class public Landroidx/recyclerview/widget/af$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field d:Landroidx/recyclerview/widget/af$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/af$a<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 95
    iput-object p1, p0, Landroidx/recyclerview/widget/af$a;->a:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a(I)Z
    .locals 1

    .line 99
    iget v0, p0, Landroidx/recyclerview/widget/af$a;->b:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Landroidx/recyclerview/widget/af$a;->b:I

    iget p0, p0, Landroidx/recyclerview/widget/af$a;->c:I

    add-int/2addr v0, p0

    if-ge p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method b(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Landroidx/recyclerview/widget/af$a;->a:[Ljava/lang/Object;

    iget p0, p0, Landroidx/recyclerview/widget/af$a;->b:I

    sub-int/2addr p1, p0

    aget-object p0, v0, p1

    return-object p0
.end method
