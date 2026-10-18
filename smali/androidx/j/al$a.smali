.class Landroidx/j/al$a;
.super Landroidx/j/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/j/al;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/j/al;


# direct methods
.method constructor <init>(Landroidx/j/al;)V
    .locals 0

    .line 433
    invoke-direct {p0}, Landroidx/j/ai;-><init>()V

    .line 434
    iput-object p1, p0, Landroidx/j/al$a;->a:Landroidx/j/al;

    return-void
.end method


# virtual methods
.method public b(Landroidx/j/ag;)V
    .locals 2
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 447
    iget-object v0, p0, Landroidx/j/al$a;->a:Landroidx/j/al;

    iget v1, v0, Landroidx/j/al;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroidx/j/al;->a:I

    .line 448
    iget-object v0, p0, Landroidx/j/al$a;->a:Landroidx/j/al;

    iget v0, v0, Landroidx/j/al;->a:I

    if-nez v0, :cond_0

    .line 450
    iget-object v0, p0, Landroidx/j/al$a;->a:Landroidx/j/al;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/j/al;->b:Z

    .line 451
    iget-object v0, p0, Landroidx/j/al$a;->a:Landroidx/j/al;

    invoke-virtual {v0}, Landroidx/j/al;->m()V

    .line 453
    :cond_0
    invoke-virtual {p1, p0}, Landroidx/j/ag;->b(Landroidx/j/ag$e;)Landroidx/j/ag;

    return-void
.end method

.method public e(Landroidx/j/ag;)V
    .locals 0
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 439
    iget-object p1, p0, Landroidx/j/al$a;->a:Landroidx/j/al;

    iget-boolean p1, p1, Landroidx/j/al;->b:Z

    if-nez p1, :cond_0

    .line 440
    iget-object p1, p0, Landroidx/j/al$a;->a:Landroidx/j/al;

    invoke-virtual {p1}, Landroidx/j/al;->l()V

    .line 441
    iget-object p0, p0, Landroidx/j/al$a;->a:Landroidx/j/al;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/j/al;->b:Z

    :cond_0
    return-void
.end method
