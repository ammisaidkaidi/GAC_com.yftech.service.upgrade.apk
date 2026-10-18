.class Landroidx/i/b/d$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/i/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 497
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 503
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroidx/i/b/d$a;

    .line 504
    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 510
    :pswitch_0
    iget-object p1, p0, Landroidx/i/b/d$a;->a:Landroidx/i/b/d;

    iget-object p0, p0, Landroidx/i/b/d$a;->b:[Ljava/lang/Object;

    invoke-virtual {p1, p0}, Landroidx/i/b/d;->b([Ljava/lang/Object;)V

    goto :goto_0

    .line 507
    :pswitch_1
    iget-object p1, p0, Landroidx/i/b/d$a;->a:Landroidx/i/b/d;

    iget-object p0, p0, Landroidx/i/b/d$a;->b:[Ljava/lang/Object;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p1, p0}, Landroidx/i/b/d;->e(Ljava/lang/Object;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
