.class final Landroidx/j/i$1;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/j/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroidx/j/i$b;",
        "[F>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroidx/j/i$b;[F)V
    .locals 0

    .line 78
    invoke-virtual {p1, p2}, Landroidx/j/i$b;->a([F)V

    return-void
.end method

.method public a(Landroidx/j/i$b;)[F
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, Landroidx/j/i$b;

    invoke-virtual {p0, p1}, Landroidx/j/i$1;->a(Landroidx/j/i$b;)[F

    move-result-object p0

    return-object p0
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p1, Landroidx/j/i$b;

    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Landroidx/j/i$1;->a(Landroidx/j/i$b;[F)V

    return-void
.end method
