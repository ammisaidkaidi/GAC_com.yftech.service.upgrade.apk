.class Landroidx/d/c/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/d/c/h;->e(Landroidx/d/c/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/d/c/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/d/c/h;


# direct methods
.method constructor <init>(Landroidx/d/c/h;)V
    .locals 0

    .line 214
    iput-object p1, p0, Landroidx/d/c/h$1;->a:Landroidx/d/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/d/c/i;Landroidx/d/c/i;)I
    .locals 0

    .line 217
    iget p0, p1, Landroidx/d/c/i;->k:I

    iget p1, p2, Landroidx/d/c/i;->k:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 214
    check-cast p1, Landroidx/d/c/i;

    check-cast p2, Landroidx/d/c/i;

    invoke-virtual {p0, p1, p2}, Landroidx/d/c/h$1;->a(Landroidx/d/c/i;Landroidx/d/c/i;)I

    move-result p0

    return p0
.end method
