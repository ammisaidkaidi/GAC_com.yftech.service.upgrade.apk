.class Landroidx/core/widget/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/widget/d;


# direct methods
.method constructor <init>(Landroidx/core/widget/d;)V
    .locals 0

    .line 45
    iput-object p1, p0, Landroidx/core/widget/d$1;->a:Landroidx/core/widget/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 49
    iget-object v0, p0, Landroidx/core/widget/d$1;->a:Landroidx/core/widget/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/core/widget/d;->b:Z

    .line 50
    iget-object v0, p0, Landroidx/core/widget/d$1;->a:Landroidx/core/widget/d;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Landroidx/core/widget/d;->a:J

    .line 51
    iget-object p0, p0, Landroidx/core/widget/d$1;->a:Landroidx/core/widget/d;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/core/widget/d;->setVisibility(I)V

    return-void
.end method
