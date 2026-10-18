.class Landroidx/lifecycle/c$1;
.super Landroidx/lifecycle/LiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/c;-><init>(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/c;


# direct methods
.method constructor <init>(Landroidx/lifecycle/c;)V
    .locals 0

    .line 67
    iput-object p1, p0, Landroidx/lifecycle/c$1;->a:Landroidx/lifecycle/c;

    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 70
    iget-object v0, p0, Landroidx/lifecycle/c$1;->a:Landroidx/lifecycle/c;

    iget-object v0, v0, Landroidx/lifecycle/c;->a:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Landroidx/lifecycle/c$1;->a:Landroidx/lifecycle/c;

    iget-object p0, p0, Landroidx/lifecycle/c;->e:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
