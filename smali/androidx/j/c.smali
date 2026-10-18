.class public Landroidx/j/c;
.super Landroidx/j/al;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroidx/j/al;-><init>()V

    .line 38
    invoke-direct {p0}, Landroidx/j/c;->u()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroidx/j/al;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Landroidx/j/c;->u()V

    return-void
.end method

.method private u()V
    .locals 3

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Landroidx/j/c;->a(I)Landroidx/j/al;

    .line 48
    new-instance v1, Landroidx/j/l;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroidx/j/l;-><init>(I)V

    invoke-virtual {p0, v1}, Landroidx/j/c;->a(Landroidx/j/ag;)Landroidx/j/al;

    move-result-object p0

    new-instance v1, Landroidx/j/e;

    invoke-direct {v1}, Landroidx/j/e;-><init>()V

    .line 49
    invoke-virtual {p0, v1}, Landroidx/j/al;->a(Landroidx/j/ag;)Landroidx/j/al;

    move-result-object p0

    new-instance v1, Landroidx/j/l;

    invoke-direct {v1, v0}, Landroidx/j/l;-><init>(I)V

    .line 50
    invoke-virtual {p0, v1}, Landroidx/j/al;->a(Landroidx/j/ag;)Landroidx/j/al;

    return-void
.end method
