.class Landroidx/recyclerview/widget/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/d;->a(Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/Runnable;

.field final synthetic e:Landroidx/recyclerview/widget/d;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/d;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 0

    .line 289
    iput-object p1, p0, Landroidx/recyclerview/widget/d$1;->e:Landroidx/recyclerview/widget/d;

    iput-object p2, p0, Landroidx/recyclerview/widget/d$1;->a:Ljava/util/List;

    iput-object p3, p0, Landroidx/recyclerview/widget/d$1;->b:Ljava/util/List;

    iput p4, p0, Landroidx/recyclerview/widget/d$1;->c:I

    iput-object p5, p0, Landroidx/recyclerview/widget/d$1;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 292
    new-instance v0, Landroidx/recyclerview/widget/d$1$1;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/d$1$1;-><init>(Landroidx/recyclerview/widget/d$1;)V

    invoke-static {v0}, Landroidx/recyclerview/widget/i;->a(Landroidx/recyclerview/widget/i$a;)Landroidx/recyclerview/widget/i$b;

    move-result-object v0

    .line 347
    iget-object v1, p0, Landroidx/recyclerview/widget/d$1;->e:Landroidx/recyclerview/widget/d;

    iget-object v1, v1, Landroidx/recyclerview/widget/d;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Landroidx/recyclerview/widget/d$1$2;

    invoke-direct {v2, p0, v0}, Landroidx/recyclerview/widget/d$1$2;-><init>(Landroidx/recyclerview/widget/d$1;Landroidx/recyclerview/widget/i$b;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
