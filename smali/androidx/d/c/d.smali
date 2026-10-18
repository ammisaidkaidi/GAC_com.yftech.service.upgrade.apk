.class public Landroidx/d/c/d;
.super Landroidx/d/c/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroidx/d/c/c;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroidx/d/c/b;-><init>(Landroidx/d/c/c;)V

    return-void
.end method


# virtual methods
.method public d(Landroidx/d/c/i;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroidx/d/c/b;->d(Landroidx/d/c/i;)V

    .line 30
    iget p0, p1, Landroidx/d/c/i;->v:I

    add-int/lit8 p0, p0, -0x1

    iput p0, p1, Landroidx/d/c/i;->v:I

    return-void
.end method
