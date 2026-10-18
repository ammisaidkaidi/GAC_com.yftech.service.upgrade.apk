.class Landroidx/j/aj$a$1;
.super Landroidx/j/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/aj$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/c/a;

.field final synthetic b:Landroidx/j/aj$a;


# direct methods
.method constructor <init>(Landroidx/j/aj$a;Landroidx/c/a;)V
    .locals 0

    .line 287
    iput-object p1, p0, Landroidx/j/aj$a$1;->b:Landroidx/j/aj$a;

    iput-object p2, p0, Landroidx/j/aj$a$1;->a:Landroidx/c/a;

    invoke-direct {p0}, Landroidx/j/ai;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/j/ag;)V
    .locals 2
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 290
    iget-object v0, p0, Landroidx/j/aj$a$1;->a:Landroidx/c/a;

    iget-object v1, p0, Landroidx/j/aj$a$1;->b:Landroidx/j/aj$a;

    iget-object v1, v1, Landroidx/j/aj$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroidx/c/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 291
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 292
    invoke-virtual {p1, p0}, Landroidx/j/ag;->b(Landroidx/j/ag$e;)Landroidx/j/ag;

    return-void
.end method
