.class Landroidx/recyclerview/widget/d$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/i$b;

.field final synthetic b:Landroidx/recyclerview/widget/d$1;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/d$1;Landroidx/recyclerview/widget/i$b;)V
    .locals 0

    .line 347
    iput-object p1, p0, Landroidx/recyclerview/widget/d$1$2;->b:Landroidx/recyclerview/widget/d$1;

    iput-object p2, p0, Landroidx/recyclerview/widget/d$1$2;->a:Landroidx/recyclerview/widget/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 350
    iget-object v0, p0, Landroidx/recyclerview/widget/d$1$2;->b:Landroidx/recyclerview/widget/d$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/d$1;->e:Landroidx/recyclerview/widget/d;

    iget v0, v0, Landroidx/recyclerview/widget/d;->c:I

    iget-object v1, p0, Landroidx/recyclerview/widget/d$1$2;->b:Landroidx/recyclerview/widget/d$1;

    iget v1, v1, Landroidx/recyclerview/widget/d$1;->c:I

    if-ne v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Landroidx/recyclerview/widget/d$1$2;->b:Landroidx/recyclerview/widget/d$1;

    iget-object v0, v0, Landroidx/recyclerview/widget/d$1;->e:Landroidx/recyclerview/widget/d;

    iget-object v1, p0, Landroidx/recyclerview/widget/d$1$2;->b:Landroidx/recyclerview/widget/d$1;

    iget-object v1, v1, Landroidx/recyclerview/widget/d$1;->b:Ljava/util/List;

    iget-object v2, p0, Landroidx/recyclerview/widget/d$1$2;->a:Landroidx/recyclerview/widget/i$b;

    iget-object p0, p0, Landroidx/recyclerview/widget/d$1$2;->b:Landroidx/recyclerview/widget/d$1;

    iget-object p0, p0, Landroidx/recyclerview/widget/d$1;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, p0}, Landroidx/recyclerview/widget/d;->a(Ljava/util/List;Landroidx/recyclerview/widget/i$b;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
