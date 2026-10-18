.class Landroidx/core/widget/d$2;
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

    .line 55
    iput-object p1, p0, Landroidx/core/widget/d$2;->a:Landroidx/core/widget/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 59
    iget-object v0, p0, Landroidx/core/widget/d$2;->a:Landroidx/core/widget/d;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/core/widget/d;->c:Z

    .line 60
    iget-object v0, p0, Landroidx/core/widget/d$2;->a:Landroidx/core/widget/d;

    iget-boolean v0, v0, Landroidx/core/widget/d;->d:Z

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Landroidx/core/widget/d$2;->a:Landroidx/core/widget/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/core/widget/d;->a:J

    .line 62
    iget-object p0, p0, Landroidx/core/widget/d$2;->a:Landroidx/core/widget/d;

    invoke-virtual {p0, v1}, Landroidx/core/widget/d;->setVisibility(I)V

    :cond_0
    return-void
.end method
