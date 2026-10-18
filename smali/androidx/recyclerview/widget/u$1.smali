.class Landroidx/recyclerview/widget/u$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/ae$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/u;->a(Landroidx/recyclerview/widget/ae$b;)Landroidx/recyclerview/widget/ae$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/ae$b<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final b:I = 0x1

.field static final c:I = 0x2

.field static final d:I = 0x3


# instance fields
.field final a:Landroidx/recyclerview/widget/u$a;

.field final synthetic e:Landroidx/recyclerview/widget/ae$b;

.field final synthetic f:Landroidx/recyclerview/widget/u;

.field private final g:Landroid/os/Handler;

.field private h:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/u;Landroidx/recyclerview/widget/ae$b;)V
    .locals 0

    .line 31
    iput-object p1, p0, Landroidx/recyclerview/widget/u$1;->f:Landroidx/recyclerview/widget/u;

    iput-object p2, p0, Landroidx/recyclerview/widget/u$1;->e:Landroidx/recyclerview/widget/ae$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance p1, Landroidx/recyclerview/widget/u$a;

    invoke-direct {p1}, Landroidx/recyclerview/widget/u$a;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/u$1;->a:Landroidx/recyclerview/widget/u$a;

    .line 33
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/u$1;->g:Landroid/os/Handler;

    .line 59
    new-instance p1, Landroidx/recyclerview/widget/u$1$1;

    invoke-direct {p1, p0}, Landroidx/recyclerview/widget/u$1$1;-><init>(Landroidx/recyclerview/widget/u$1;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/u$1;->h:Ljava/lang/Runnable;

    return-void
.end method

.method private a(Landroidx/recyclerview/widget/u$b;)V
    .locals 1

    .line 55
    iget-object v0, p0, Landroidx/recyclerview/widget/u$1;->a:Landroidx/recyclerview/widget/u$a;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/u$a;->b(Landroidx/recyclerview/widget/u$b;)V

    .line 56
    iget-object p1, p0, Landroidx/recyclerview/widget/u$1;->g:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/recyclerview/widget/u$1;->h:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    const/4 v0, 0x1

    .line 41
    invoke-static {v0, p1, p2}, Landroidx/recyclerview/widget/u$b;->a(III)Landroidx/recyclerview/widget/u$b;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/u$1;->a(Landroidx/recyclerview/widget/u$b;)V

    return-void
.end method

.method public a(ILandroidx/recyclerview/widget/af$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/recyclerview/widget/af$a<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 46
    invoke-static {v0, p1, p2}, Landroidx/recyclerview/widget/u$b;->a(IILjava/lang/Object;)Landroidx/recyclerview/widget/u$b;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/u$1;->a(Landroidx/recyclerview/widget/u$b;)V

    return-void
.end method

.method public b(II)V
    .locals 1

    const/4 v0, 0x3

    .line 51
    invoke-static {v0, p1, p2}, Landroidx/recyclerview/widget/u$b;->a(III)Landroidx/recyclerview/widget/u$b;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/u$1;->a(Landroidx/recyclerview/widget/u$b;)V

    return-void
.end method
