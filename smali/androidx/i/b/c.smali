.class public Landroidx/i/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/i/b/c$b;,
        Landroidx/i/b/c$c;,
        Landroidx/i/b/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field p:I

.field q:Landroidx/i/b/c$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/i/b/c$c<",
            "TD;>;"
        }
    .end annotation
.end field

.field r:Landroidx/i/b/c$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/i/b/c$b<",
            "TD;>;"
        }
    .end annotation
.end field

.field s:Landroid/content/Context;

.field t:Z

.field u:Z

.field v:Z

.field w:Z

.field x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Landroidx/i/b/c;->t:Z

    .line 45
    iput-boolean v0, p0, Landroidx/i/b/c;->u:Z

    const/4 v1, 0x1

    .line 46
    iput-boolean v1, p0, Landroidx/i/b/c;->v:Z

    .line 47
    iput-boolean v0, p0, Landroidx/i/b/c;->w:Z

    .line 48
    iput-boolean v0, p0, Landroidx/i/b/c;->x:Z

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Landroidx/i/b/c;->s:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public A()V
    .locals 1
    .annotation build Landroidx/annotation/ae;
    .end annotation

    const/4 v0, 0x0

    .line 380
    iput-boolean v0, p0, Landroidx/i/b/c;->t:Z

    .line 381
    invoke-virtual {p0}, Landroidx/i/b/c;->k()V

    return-void
.end method

.method public B()V
    .locals 1
    .annotation build Landroidx/annotation/ae;
    .end annotation

    const/4 v0, 0x1

    .line 409
    iput-boolean v0, p0, Landroidx/i/b/c;->u:Z

    .line 410
    invoke-virtual {p0}, Landroidx/i/b/c;->C()V

    return-void
.end method

.method protected C()V
    .locals 0
    .annotation build Landroidx/annotation/ae;
    .end annotation

    return-void
.end method

.method public D()V
    .locals 1
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .line 447
    invoke-virtual {p0}, Landroidx/i/b/c;->l()V

    const/4 v0, 0x1

    .line 448
    iput-boolean v0, p0, Landroidx/i/b/c;->v:Z

    const/4 v0, 0x0

    .line 449
    iput-boolean v0, p0, Landroidx/i/b/c;->t:Z

    .line 450
    iput-boolean v0, p0, Landroidx/i/b/c;->u:Z

    .line 451
    iput-boolean v0, p0, Landroidx/i/b/c;->w:Z

    .line 452
    iput-boolean v0, p0, Landroidx/i/b/c;->x:Z

    return-void
.end method

.method public E()Z
    .locals 2

    .line 471
    iget-boolean v0, p0, Landroidx/i/b/c;->w:Z

    const/4 v1, 0x0

    .line 472
    iput-boolean v1, p0, Landroidx/i/b/c;->w:Z

    .line 473
    iget-boolean v1, p0, Landroidx/i/b/c;->x:Z

    or-int/2addr v1, v0

    iput-boolean v1, p0, Landroidx/i/b/c;->x:Z

    return v0
.end method

.method public F()V
    .locals 1

    const/4 v0, 0x0

    .line 485
    iput-boolean v0, p0, Landroidx/i/b/c;->x:Z

    return-void
.end method

.method public G()V
    .locals 1

    .line 496
    iget-boolean v0, p0, Landroidx/i/b/c;->x:Z

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p0}, Landroidx/i/b/c;->H()V

    :cond_0
    return-void
.end method

.method public H()V
    .locals 1
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .line 511
    iget-boolean v0, p0, Landroidx/i/b/c;->t:Z

    if-eqz v0, :cond_0

    .line 512
    invoke-virtual {p0}, Landroidx/i/b/c;->z()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 517
    iput-boolean v0, p0, Landroidx/i/b/c;->w:Z

    :goto_0
    return-void
.end method

.method protected a()V
    .locals 0
    .annotation build Landroidx/annotation/ae;
    .end annotation

    return-void
.end method

.method public a(ILandroidx/i/b/c$c;)V
    .locals 1
    .param p2    # Landroidx/i/b/c$c;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/i/b/c$c<",
            "TD;>;)V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Landroidx/i/b/c;->q:Landroidx/i/b/c$c;

    if-nez v0, :cond_0

    .line 176
    iput-object p2, p0, Landroidx/i/b/c;->q:Landroidx/i/b/c$c;

    .line 177
    iput p1, p0, Landroidx/i/b/c;->p:I

    return-void

    .line 174
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There is already a listener registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Landroidx/i/b/c$b;)V
    .locals 1
    .param p1    # Landroidx/i/b/c$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/i/b/c$b<",
            "TD;>;)V"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Landroidx/i/b/c;->r:Landroidx/i/b/c$b;

    if-nez v0, :cond_0

    .line 210
    iput-object p1, p0, Landroidx/i/b/c;->r:Landroidx/i/b/c$b;

    return-void

    .line 208
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There is already a listener registered"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Landroidx/i/b/c$c;)V
    .locals 1
    .param p1    # Landroidx/i/b/c$c;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/i/b/c$c<",
            "TD;>;)V"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Landroidx/i/b/c;->q:Landroidx/i/b/c$c;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Landroidx/i/b/c;->q:Landroidx/i/b/c$c;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Landroidx/i/b/c;->q:Landroidx/i/b/c$c;

    return-void

    .line 191
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attempting to unregister the wrong listener"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 188
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No listener register"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 555
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mId="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroidx/i/b/c;->p:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mListener="

    .line 556
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/i/b/c;->q:Landroidx/i/b/c$c;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 557
    iget-boolean p2, p0, Landroidx/i/b/c;->t:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Landroidx/i/b/c;->w:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Landroidx/i/b/c;->x:Z

    if-eqz p2, :cond_1

    .line 558
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mStarted="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/i/b/c;->t:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mContentChanged="

    .line 559
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/i/b/c;->w:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mProcessingChange="

    .line 560
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroidx/i/b/c;->x:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 562
    :cond_1
    iget-boolean p2, p0, Landroidx/i/b/c;->u:Z

    if-nez p2, :cond_2

    iget-boolean p2, p0, Landroidx/i/b/c;->v:Z

    if-eqz p2, :cond_3

    .line 563
    :cond_2
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mAbandoned="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Landroidx/i/b/c;->u:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mReset="

    .line 564
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Landroidx/i/b/c;->v:Z

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    return-void
.end method

.method public b(Landroidx/i/b/c$b;)V
    .locals 1
    .param p1    # Landroidx/i/b/c$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/i/b/c$b<",
            "TD;>;)V"
        }
    .end annotation

    .line 223
    iget-object v0, p0, Landroidx/i/b/c;->r:Landroidx/i/b/c$b;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Landroidx/i/b/c;->r:Landroidx/i/b/c$b;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 229
    iput-object p1, p0, Landroidx/i/b/c;->r:Landroidx/i/b/c$b;

    return-void

    .line 227
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attempting to unregister the wrong listener"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 224
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No listener register"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Landroidx/i/b/c;->q:Landroidx/i/b/c$c;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Landroidx/i/b/c;->q:Landroidx/i/b/c$c;

    invoke-interface {v0, p0, p1}, Landroidx/i/b/c$c;->a(Landroidx/i/b/c;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected b()Z
    .locals 0
    .annotation build Landroidx/annotation/ae;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 527
    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 528
    invoke-static {p1, p0}, Landroidx/core/m/c;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p1, "}"

    .line 529
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected j()V
    .locals 0
    .annotation build Landroidx/annotation/ae;
    .end annotation

    return-void
.end method

.method protected k()V
    .locals 0
    .annotation build Landroidx/annotation/ae;
    .end annotation

    return-void
.end method

.method protected l()V
    .locals 0
    .annotation build Landroidx/annotation/ae;
    .end annotation

    return-void
.end method

.method public r()V
    .locals 1
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .line 144
    iget-object v0, p0, Landroidx/i/b/c;->r:Landroidx/i/b/c$b;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Landroidx/i/b/c;->r:Landroidx/i/b/c$b;

    invoke-interface {v0, p0}, Landroidx/i/b/c$b;->a(Landroidx/i/b/c;)V

    :cond_0
    return-void
.end method

.method public s()Landroid/content/Context;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 154
    iget-object p0, p0, Landroidx/i/b/c;->s:Landroid/content/Context;

    return-object p0
.end method

.method public t()I
    .locals 0

    .line 161
    iget p0, p0, Landroidx/i/b/c;->p:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 536
    invoke-static {p0, v0}, Landroidx/core/m/c;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " id="

    .line 537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget p0, p0, Landroidx/i/b/c;->p:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 539
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Z
    .locals 0

    .line 238
    iget-boolean p0, p0, Landroidx/i/b/c;->t:Z

    return p0
.end method

.method public v()Z
    .locals 0

    .line 247
    iget-boolean p0, p0, Landroidx/i/b/c;->u:Z

    return p0
.end method

.method public w()Z
    .locals 0

    .line 256
    iget-boolean p0, p0, Landroidx/i/b/c;->v:Z

    return p0
.end method

.method public final x()V
    .locals 1
    .annotation build Landroidx/annotation/ae;
    .end annotation

    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Landroidx/i/b/c;->t:Z

    const/4 v0, 0x0

    .line 283
    iput-boolean v0, p0, Landroidx/i/b/c;->v:Z

    .line 284
    iput-boolean v0, p0, Landroidx/i/b/c;->u:Z

    .line 285
    invoke-virtual {p0}, Landroidx/i/b/c;->j()V

    return-void
.end method

.method public y()Z
    .locals 0
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .line 318
    invoke-virtual {p0}, Landroidx/i/b/c;->b()Z

    move-result p0

    return p0
.end method

.method public z()V
    .locals 0
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .line 347
    invoke-virtual {p0}, Landroidx/i/b/c;->a()V

    return-void
.end method
