.class final Landroidx/lifecycle/u$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/u;->b(Landroidx/lifecycle/LiveData;Landroidx/a/a/c/a;)Landroidx/lifecycle/LiveData;
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
.field a:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "TY;>;"
        }
    .end annotation
.end field

.field final synthetic b:Landroidx/a/a/c/a;

.field final synthetic c:Landroidx/lifecycle/n;


# direct methods
.method constructor <init>(Landroidx/a/a/c/a;Landroidx/lifecycle/n;)V
    .locals 0

    .line 136
    iput-object p1, p0, Landroidx/lifecycle/u$2;->b:Landroidx/a/a/c/a;

    iput-object p2, p0, Landroidx/lifecycle/u$2;->c:Landroidx/lifecycle/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TX;)V"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Landroidx/lifecycle/u$2;->b:Landroidx/a/a/c/a;

    invoke-interface {v0, p1}, Landroidx/a/a/c/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 142
    iget-object v0, p0, Landroidx/lifecycle/u$2;->a:Landroidx/lifecycle/LiveData;

    if-ne v0, p1, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/u$2;->a:Landroidx/lifecycle/LiveData;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Landroidx/lifecycle/u$2;->c:Landroidx/lifecycle/n;

    iget-object v1, p0, Landroidx/lifecycle/u$2;->a:Landroidx/lifecycle/LiveData;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/n;->a(Landroidx/lifecycle/LiveData;)V

    .line 148
    :cond_1
    iput-object p1, p0, Landroidx/lifecycle/u$2;->a:Landroidx/lifecycle/LiveData;

    .line 149
    iget-object p1, p0, Landroidx/lifecycle/u$2;->a:Landroidx/lifecycle/LiveData;

    if-eqz p1, :cond_2

    .line 150
    iget-object p1, p0, Landroidx/lifecycle/u$2;->c:Landroidx/lifecycle/n;

    iget-object v0, p0, Landroidx/lifecycle/u$2;->a:Landroidx/lifecycle/LiveData;

    new-instance v1, Landroidx/lifecycle/u$2$1;

    invoke-direct {v1, p0}, Landroidx/lifecycle/u$2$1;-><init>(Landroidx/lifecycle/u$2;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/n;->a(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/q;)V

    :cond_2
    return-void
.end method
