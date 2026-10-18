.class public Landroidx/d/c/a/a/d;
.super Landroidx/d/c/a/c;
.source "SourceFile"


# instance fields
.field protected d:F

.field protected e:Landroidx/d/c/a/e$a;


# direct methods
.method public constructor <init>(Landroidx/d/c/a/e;Landroidx/d/c/a/e$d;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroidx/d/c/a/c;-><init>(Landroidx/d/c/a/e;Landroidx/d/c/a/e$d;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 24
    iput p1, p0, Landroidx/d/c/a/a/d;->d:F

    .line 25
    sget-object p1, Landroidx/d/c/a/e$a;->a:Landroidx/d/c/a/e$a;

    iput-object p1, p0, Landroidx/d/c/a/a/d;->e:Landroidx/d/c/a/e$a;

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .line 36
    iput p1, p0, Landroidx/d/c/a/a/d;->d:F

    return-void
.end method

.method public a(Landroidx/d/c/a/e$a;)V
    .locals 0

    .line 33
    iput-object p1, p0, Landroidx/d/c/a/a/d;->e:Landroidx/d/c/a/e$a;

    return-void
.end method

.method public d()Landroidx/d/c/a/e$a;
    .locals 0

    .line 31
    sget-object p0, Landroidx/d/c/a/e$a;->a:Landroidx/d/c/a/e$a;

    return-object p0
.end method

.method public e()F
    .locals 0

    .line 35
    iget p0, p0, Landroidx/d/c/a/a/d;->d:F

    return p0
.end method
