.class public Landroidx/d/c/a/a/c;
.super Landroidx/d/c/a/c;
.source "SourceFile"


# instance fields
.field private d:Landroidx/d/c/a/e$c;

.field private e:I

.field private f:Landroidx/d/c/b/a;


# direct methods
.method public constructor <init>(Landroidx/d/c/a/e;)V
    .locals 1

    .line 31
    sget-object v0, Landroidx/d/c/a/e$d;->e:Landroidx/d/c/a/e$d;

    invoke-direct {p0, p1, v0}, Landroidx/d/c/a/c;-><init>(Landroidx/d/c/a/e;Landroidx/d/c/a/e$d;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 43
    iput p1, p0, Landroidx/d/c/a/a/c;->e:I

    return-void
.end method

.method public a(Landroidx/d/c/a/e$c;)V
    .locals 0

    .line 35
    iput-object p1, p0, Landroidx/d/c/a/a/c;->d:Landroidx/d/c/a/e$c;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 39
    iget-object v0, p0, Landroidx/d/c/a/a/c;->a:Landroidx/d/c/a/e;

    invoke-virtual {v0, p1}, Landroidx/d/c/a/e;->a(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/d/c/a/a/c;->a(I)V

    return-void
.end method

.method public b()Landroidx/d/c/b/j;
    .locals 1

    .line 48
    iget-object v0, p0, Landroidx/d/c/a/a/c;->f:Landroidx/d/c/b/a;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Landroidx/d/c/b/a;

    invoke-direct {v0}, Landroidx/d/c/b/a;-><init>()V

    iput-object v0, p0, Landroidx/d/c/a/a/c;->f:Landroidx/d/c/b/a;

    .line 51
    :cond_0
    iget-object p0, p0, Landroidx/d/c/a/a/c;->f:Landroidx/d/c/b/a;

    return-object p0
.end method

.method public c()V
    .locals 2

    .line 55
    invoke-virtual {p0}, Landroidx/d/c/a/a/c;->b()Landroidx/d/c/b/j;

    .line 57
    sget-object v0, Landroidx/d/c/a/a/c$1;->a:[I

    iget-object v1, p0, Landroidx/d/c/a/a/c;->d:Landroidx/d/c/a/e$c;

    invoke-virtual {v1}, Landroidx/d/c/a/e$c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    .line 75
    :goto_0
    :pswitch_3
    iget-object v0, p0, Landroidx/d/c/a/a/c;->f:Landroidx/d/c/b/a;

    invoke-virtual {v0, v1}, Landroidx/d/c/b/a;->a(I)V

    .line 76
    iget-object v0, p0, Landroidx/d/c/a/a/c;->f:Landroidx/d/c/b/a;

    iget p0, p0, Landroidx/d/c/a/a/c;->e:I

    invoke-virtual {v0, p0}, Landroidx/d/c/b/a;->b(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
