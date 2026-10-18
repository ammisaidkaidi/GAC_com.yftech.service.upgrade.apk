.class Landroidx/recyclerview/widget/u$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/u$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/u$2;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/u$2;)V
    .locals 0

    .line 136
    iput-object p1, p0, Landroidx/recyclerview/widget/u$2$1;->a:Landroidx/recyclerview/widget/u$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 140
    :goto_0
    iget-object v0, p0, Landroidx/recyclerview/widget/u$2$1;->a:Landroidx/recyclerview/widget/u$2;

    iget-object v0, v0, Landroidx/recyclerview/widget/u$2;->a:Landroidx/recyclerview/widget/u$a;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u$a;->a()Landroidx/recyclerview/widget/u$b;

    move-result-object v0

    if-nez v0, :cond_0

    .line 167
    iget-object p0, p0, Landroidx/recyclerview/widget/u$2$1;->a:Landroidx/recyclerview/widget/u$2;

    iget-object p0, p0, Landroidx/recyclerview/widget/u$2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 144
    :cond_0
    iget v1, v0, Landroidx/recyclerview/widget/u$b;->b:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "ThreadUtil"

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported message, what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroidx/recyclerview/widget/u$b;->b:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :pswitch_0
    iget-object v0, v0, Landroidx/recyclerview/widget/u$b;->h:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/af$a;

    .line 161
    iget-object v1, p0, Landroidx/recyclerview/widget/u$2$1;->a:Landroidx/recyclerview/widget/u$2;

    iget-object v1, v1, Landroidx/recyclerview/widget/u$2;->g:Landroidx/recyclerview/widget/ae$a;

    invoke-interface {v1, v0}, Landroidx/recyclerview/widget/ae$a;->a(Landroidx/recyclerview/widget/af$a;)V

    goto :goto_0

    .line 156
    :pswitch_1
    iget-object v1, p0, Landroidx/recyclerview/widget/u$2$1;->a:Landroidx/recyclerview/widget/u$2;

    iget-object v1, v1, Landroidx/recyclerview/widget/u$2;->g:Landroidx/recyclerview/widget/ae$a;

    iget v2, v0, Landroidx/recyclerview/widget/u$b;->c:I

    iget v0, v0, Landroidx/recyclerview/widget/u$b;->d:I

    invoke-interface {v1, v2, v0}, Landroidx/recyclerview/widget/ae$a;->a(II)V

    goto :goto_0

    .line 150
    :pswitch_2
    iget-object v1, p0, Landroidx/recyclerview/widget/u$2$1;->a:Landroidx/recyclerview/widget/u$2;

    iget-object v1, v1, Landroidx/recyclerview/widget/u$2;->a:Landroidx/recyclerview/widget/u$a;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/u$a;->a(I)V

    .line 151
    iget-object v1, p0, Landroidx/recyclerview/widget/u$2$1;->a:Landroidx/recyclerview/widget/u$2;

    iget-object v1, v1, Landroidx/recyclerview/widget/u$2;->a:Landroidx/recyclerview/widget/u$a;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/u$a;->a(I)V

    .line 152
    iget-object v1, p0, Landroidx/recyclerview/widget/u$2$1;->a:Landroidx/recyclerview/widget/u$2;

    iget-object v2, v1, Landroidx/recyclerview/widget/u$2;->g:Landroidx/recyclerview/widget/ae$a;

    iget v3, v0, Landroidx/recyclerview/widget/u$b;->c:I

    iget v4, v0, Landroidx/recyclerview/widget/u$b;->d:I

    iget v5, v0, Landroidx/recyclerview/widget/u$b;->e:I

    iget v6, v0, Landroidx/recyclerview/widget/u$b;->f:I

    iget v7, v0, Landroidx/recyclerview/widget/u$b;->g:I

    invoke-interface/range {v2 .. v7}, Landroidx/recyclerview/widget/ae$a;->a(IIIII)V

    goto :goto_0

    .line 146
    :pswitch_3
    iget-object v1, p0, Landroidx/recyclerview/widget/u$2$1;->a:Landroidx/recyclerview/widget/u$2;

    iget-object v1, v1, Landroidx/recyclerview/widget/u$2;->a:Landroidx/recyclerview/widget/u$a;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/u$a;->a(I)V

    .line 147
    iget-object v1, p0, Landroidx/recyclerview/widget/u$2$1;->a:Landroidx/recyclerview/widget/u$2;

    iget-object v1, v1, Landroidx/recyclerview/widget/u$2;->g:Landroidx/recyclerview/widget/ae$a;

    iget v0, v0, Landroidx/recyclerview/widget/u$b;->c:I

    invoke-interface {v1, v0}, Landroidx/recyclerview/widget/ae$a;->a(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
