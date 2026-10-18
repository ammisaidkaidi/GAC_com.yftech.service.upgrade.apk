.class final Landroidx/lifecycle/u$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/u;->a(Landroidx/lifecycle/LiveData;Landroidx/a/a/c/a;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/q<",
        "TX;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/lifecycle/n;

.field final synthetic b:Landroidx/a/a/c/a;


# direct methods
.method constructor <init>(Landroidx/lifecycle/n;Landroidx/a/a/c/a;)V
    .locals 0

    .line 72
    iput-object p1, p0, Landroidx/lifecycle/u$1;->a:Landroidx/lifecycle/n;

    iput-object p2, p0, Landroidx/lifecycle/u$1;->b:Landroidx/a/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Landroidx/lifecycle/u$1;->a:Landroidx/lifecycle/n;

    iget-object p0, p0, Landroidx/lifecycle/u$1;->b:Landroidx/a/a/c/a;

    invoke-interface {p0, p1}, Landroidx/a/a/c/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/n;->b(Ljava/lang/Object;)V

    return-void
.end method
