.class Landroidx/k/b/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/k/b/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "[",
        "Landroidx/core/graphics/h$b;",
        ">;"
    }
.end annotation


# instance fields
.field private a:[Landroidx/core/graphics/h$b;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>([Landroidx/core/graphics/h$b;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Landroidx/k/b/a/e$a;->a:[Landroidx/core/graphics/h$b;

    return-void
.end method


# virtual methods
.method public a(F[Landroidx/core/graphics/h$b;[Landroidx/core/graphics/h$b;)[Landroidx/core/graphics/h$b;
    .locals 4

    .line 185
    invoke-static {p2, p3}, Landroidx/core/graphics/h;->a([Landroidx/core/graphics/h$b;[Landroidx/core/graphics/h$b;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Landroidx/k/b/a/e$a;->a:[Landroidx/core/graphics/h$b;

    invoke-static {v0, p2}, Landroidx/core/graphics/h;->a([Landroidx/core/graphics/h$b;[Landroidx/core/graphics/h$b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    invoke-static {p2}, Landroidx/core/graphics/h;->a([Landroidx/core/graphics/h$b;)[Landroidx/core/graphics/h$b;

    move-result-object v0

    iput-object v0, p0, Landroidx/k/b/a/e$a;->a:[Landroidx/core/graphics/h$b;

    :cond_0
    const/4 v0, 0x0

    .line 194
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 195
    iget-object v1, p0, Landroidx/k/b/a/e$a;->a:[Landroidx/core/graphics/h$b;

    aget-object v1, v1, v0

    aget-object v2, p2, v0

    aget-object v3, p3, v0

    invoke-virtual {v1, v2, v3, p1}, Landroidx/core/graphics/h$b;->a(Landroidx/core/graphics/h$b;Landroidx/core/graphics/h$b;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 199
    :cond_1
    iget-object p0, p0, Landroidx/k/b/a/e$a;->a:[Landroidx/core/graphics/h$b;

    return-object p0

    .line 186
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t interpolate between two incompatible pathData"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 157
    check-cast p2, [Landroidx/core/graphics/h$b;

    check-cast p3, [Landroidx/core/graphics/h$b;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/k/b/a/e$a;->a(F[Landroidx/core/graphics/h$b;[Landroidx/core/graphics/h$b;)[Landroidx/core/graphics/h$b;

    move-result-object p0

    return-object p0
.end method
