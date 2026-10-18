.class Landroidx/j/al$1;
.super Landroidx/j/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/al;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/j/ag;

.field final synthetic b:Landroidx/j/al;


# direct methods
.method constructor <init>(Landroidx/j/al;Landroidx/j/ag;)V
    .locals 0

    .line 503
    iput-object p1, p0, Landroidx/j/al$1;->b:Landroidx/j/al;

    iput-object p2, p0, Landroidx/j/al$1;->a:Landroidx/j/ag;

    invoke-direct {p0}, Landroidx/j/ai;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/j/ag;)V
    .locals 1
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 506
    iget-object v0, p0, Landroidx/j/al$1;->a:Landroidx/j/ag;

    invoke-virtual {v0}, Landroidx/j/ag;->g()V

    .line 507
    invoke-virtual {p1, p0}, Landroidx/j/ag;->b(Landroidx/j/ag$e;)Landroidx/j/ag;

    return-void
.end method
