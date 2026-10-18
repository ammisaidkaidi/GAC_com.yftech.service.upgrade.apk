.class Landroidx/l/a/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/l/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/l/a/d;


# direct methods
.method constructor <init>(Landroidx/l/a/d;)V
    .locals 0

    .line 269
    iput-object p1, p0, Landroidx/l/a/d$3;->a:Landroidx/l/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 272
    iget-object v0, p0, Landroidx/l/a/d$3;->a:Landroidx/l/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/l/a/d;->setScrollState(I)V

    .line 273
    iget-object p0, p0, Landroidx/l/a/d$3;->a:Landroidx/l/a/d;

    invoke-virtual {p0}, Landroidx/l/a/d;->d()V

    return-void
.end method
