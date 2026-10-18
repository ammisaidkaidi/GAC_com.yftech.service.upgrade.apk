.class Landroidx/j/n$3;
.super Landroidx/j/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/j/n;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Ljava/util/ArrayList;

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Ljava/util/ArrayList;

.field final synthetic g:Landroidx/j/n;


# direct methods
.method constructor <init>(Landroidx/j/n;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .line 222
    iput-object p1, p0, Landroidx/j/n$3;->g:Landroidx/j/n;

    iput-object p2, p0, Landroidx/j/n$3;->a:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/j/n$3;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Landroidx/j/n$3;->c:Ljava/lang/Object;

    iput-object p5, p0, Landroidx/j/n$3;->d:Ljava/util/ArrayList;

    iput-object p6, p0, Landroidx/j/n$3;->e:Ljava/lang/Object;

    iput-object p7, p0, Landroidx/j/n$3;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Landroidx/j/ai;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroidx/j/ag;)V
    .locals 0
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 238
    invoke-virtual {p1, p0}, Landroidx/j/ag;->b(Landroidx/j/ag$e;)Landroidx/j/ag;

    return-void
.end method

.method public e(Landroidx/j/ag;)V
    .locals 3
    .param p1    # Landroidx/j/ag;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 225
    iget-object p1, p0, Landroidx/j/n$3;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 226
    iget-object p1, p0, Landroidx/j/n$3;->g:Landroidx/j/n;

    iget-object v1, p0, Landroidx/j/n$3;->a:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/j/n$3;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2, v0}, Landroidx/j/n;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 228
    :cond_0
    iget-object p1, p0, Landroidx/j/n$3;->c:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 229
    iget-object p1, p0, Landroidx/j/n$3;->g:Landroidx/j/n;

    iget-object v1, p0, Landroidx/j/n$3;->c:Ljava/lang/Object;

    iget-object v2, p0, Landroidx/j/n$3;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2, v0}, Landroidx/j/n;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 231
    :cond_1
    iget-object p1, p0, Landroidx/j/n$3;->e:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 232
    iget-object p1, p0, Landroidx/j/n$3;->g:Landroidx/j/n;

    iget-object v1, p0, Landroidx/j/n$3;->e:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/j/n$3;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, p0, v0}, Landroidx/j/n;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
