.class final Landroidx/fragment/app/a;
.super Landroidx/fragment/app/s;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/j$a;
.implements Landroidx/fragment/app/k$e;


# static fields
.field static final a:Ljava/lang/String; = "FragmentManager"


# instance fields
.field final b:Landroidx/fragment/app/k;

.field c:Z

.field d:I


# direct methods
.method public constructor <init>(Landroidx/fragment/app/k;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Landroidx/fragment/app/s;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Landroidx/fragment/app/a;->d:I

    .line 141
    iput-object p1, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    return-void
.end method

.method private static b(Landroidx/fragment/app/s$a;)Z
    .locals 1

    .line 652
    iget-object p0, p0, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    if-eqz p0, :cond_0

    .line 653
    iget-boolean v0, p0, Landroidx/fragment/app/d;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->X:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/d;->R:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/d;->Q:Z

    if-nez v0, :cond_0

    .line 654
    invoke-virtual {p0}, Landroidx/fragment/app/d;->aI()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 146
    iget p0, p0, Landroidx/fragment/app/a;->d:I

    return p0
.end method

.method a(Z)I
    .locals 3

    .line 303
    iget-boolean v0, p0, Landroidx/fragment/app/a;->c:Z

    if-nez v0, :cond_2

    .line 304
    sget-boolean v0, Landroidx/fragment/app/k;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Commit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    new-instance v0, Landroidx/core/m/d;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroidx/core/m/d;-><init>(Ljava/lang/String;)V

    .line 307
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "  "

    .line 308
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 309
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_0
    const/4 v0, 0x1

    .line 311
    iput-boolean v0, p0, Landroidx/fragment/app/a;->c:Z

    .line 312
    iget-boolean v0, p0, Landroidx/fragment/app/a;->w:Z

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/a;)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/a;->d:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 315
    iput v0, p0, Landroidx/fragment/app/a;->d:I

    .line 317
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    invoke-virtual {v0, p0, p1}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/k$e;Z)V

    .line 318
    iget p0, p0, Landroidx/fragment/app/a;->d:I

    return p0

    .line 303
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "commit already called"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method a(Ljava/util/ArrayList;Landroidx/fragment/app/d;)Landroidx/fragment/app/d;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/d;",
            ">;",
            "Landroidx/fragment/app/d;",
            ")",
            "Landroidx/fragment/app/d;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p2

    move p2, v0

    .line 528
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_6

    .line 529
    iget-object v2, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/s$a;

    .line 530
    iget v3, v2, Landroidx/fragment/app/s$a;->a:I

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 585
    :pswitch_1
    iget-object v3, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    new-instance v4, Landroidx/fragment/app/s$a;

    invoke-direct {v4, v5, v1}, Landroidx/fragment/app/s$a;-><init>(ILandroidx/fragment/app/d;)V

    invoke-virtual {v3, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    .line 588
    iget-object v1, v2, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    goto/16 :goto_5

    .line 537
    :pswitch_2
    iget-object v3, v2, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 538
    iget-object v3, v2, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    if-ne v3, v1, :cond_5

    .line 539
    iget-object v1, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    new-instance v3, Landroidx/fragment/app/s$a;

    iget-object v2, v2, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    invoke-direct {v3, v5, v2}, Landroidx/fragment/app/s$a;-><init>(ILandroidx/fragment/app/d;)V

    invoke-virtual {v1, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    move-object v1, v4

    goto/16 :goto_5

    .line 546
    :pswitch_3
    iget-object v3, v2, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    .line 547
    iget v7, v3, Landroidx/fragment/app/d;->O:I

    .line 549
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    move-object v9, v1

    move v1, p2

    move p2, v0

    :goto_1
    if-ltz v8, :cond_3

    .line 550
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/d;

    .line 551
    iget v11, v10, Landroidx/fragment/app/d;->O:I

    if-ne v11, v7, :cond_2

    if-ne v10, v3, :cond_0

    move p2, v6

    goto :goto_2

    :cond_0
    if-ne v10, v9, :cond_1

    .line 558
    iget-object v9, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    new-instance v11, Landroidx/fragment/app/s$a;

    invoke-direct {v11, v5, v10}, Landroidx/fragment/app/s$a;-><init>(ILandroidx/fragment/app/d;)V

    invoke-virtual {v9, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    move-object v9, v4

    .line 562
    :cond_1
    new-instance v11, Landroidx/fragment/app/s$a;

    const/4 v12, 0x3

    invoke-direct {v11, v12, v10}, Landroidx/fragment/app/s$a;-><init>(ILandroidx/fragment/app/d;)V

    .line 563
    iget v12, v2, Landroidx/fragment/app/s$a;->c:I

    iput v12, v11, Landroidx/fragment/app/s$a;->c:I

    .line 564
    iget v12, v2, Landroidx/fragment/app/s$a;->e:I

    iput v12, v11, Landroidx/fragment/app/s$a;->e:I

    .line 565
    iget v12, v2, Landroidx/fragment/app/s$a;->d:I

    iput v12, v11, Landroidx/fragment/app/s$a;->d:I

    .line 566
    iget v12, v2, Landroidx/fragment/app/s$a;->f:I

    iput v12, v11, Landroidx/fragment/app/s$a;->f:I

    .line 567
    iget-object v12, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v12, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 568
    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/2addr v1, v6

    :cond_2
    :goto_2
    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_4

    .line 574
    iget-object p2, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :goto_3
    move p2, v1

    goto :goto_4

    .line 577
    :cond_4
    iput v6, v2, Landroidx/fragment/app/s$a;->a:I

    .line 578
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :goto_4
    move-object v1, v9

    goto :goto_5

    .line 533
    :pswitch_4
    iget-object v2, v2, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_5
    add-int/2addr p2, v6

    goto/16 :goto_0

    :cond_6
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method public a(Landroidx/fragment/app/d;)Landroidx/fragment/app/s;
    .locals 2
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 186
    iget-object v0, p1, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    iget-object v1, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p1}, Landroidx/fragment/app/d;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 191
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/d;)Landroidx/fragment/app/s;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroidx/fragment/app/d;Landroidx/lifecycle/g$b;)Landroidx/fragment/app/s;
    .locals 2
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/g$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 243
    iget-object v0, p1, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    iget-object v1, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    if-ne v0, v1, :cond_1

    .line 247
    sget-object v0, Landroidx/lifecycle/g$b;->c:Landroidx/lifecycle/g$b;

    invoke-virtual {p2, v0}, Landroidx/lifecycle/g$b;->a(Landroidx/lifecycle/g$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/d;Landroidx/lifecycle/g$b;)Landroidx/fragment/app/s;

    move-result-object p0

    return-object p0

    .line 248
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot set maximum Lifecycle below "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Landroidx/lifecycle/g$b;->c:Landroidx/lifecycle/g$b;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 244
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot setMaxLifecycle for Fragment not attached to FragmentManager "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method a(I)V
    .locals 6

    .line 255
    iget-boolean v0, p0, Landroidx/fragment/app/a;->w:Z

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    sget-boolean v0, Landroidx/fragment/app/k;->c:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bump nesting in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 262
    iget-object v2, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/s$a;

    .line 263
    iget-object v3, v2, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    if-eqz v3, :cond_2

    .line 264
    iget-object v3, v2, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    iget v4, v3, Landroidx/fragment/app/d;->I:I

    add-int/2addr v4, p1

    iput v4, v3, Landroidx/fragment/app/d;->I:I

    .line 265
    sget-boolean v3, Landroidx/fragment/app/k;->c:Z

    if-eqz v3, :cond_2

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bump nesting of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    iget v2, v2, Landroidx/fragment/app/d;->I:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method a(ILandroidx/fragment/app/d;Ljava/lang/String;I)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/fragment/app/s;->a(ILandroidx/fragment/app/d;Ljava/lang/String;I)V

    .line 180
    iget-object p0, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    iput-object p0, p2, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    return-void
.end method

.method a(Landroidx/fragment/app/d$c;)V
    .locals 3

    const/4 v0, 0x0

    .line 643
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 644
    iget-object v1, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/s$a;

    .line 645
    invoke-static {v1}, Landroidx/fragment/app/a;->b(Landroidx/fragment/app/s$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    iget-object v1, v1, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/d;->a(Landroidx/fragment/app/d$c;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/a;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 5

    if-eqz p3, :cond_8

    .line 64
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/a;->y:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    .line 65
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/a;->d:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    .line 66
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/a;->c:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 67
    iget v0, p0, Landroidx/fragment/app/a;->u:I

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    iget v0, p0, Landroidx/fragment/app/a;->u:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTransitionStyle=#"

    .line 70
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    iget v0, p0, Landroidx/fragment/app/a;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    :cond_0
    iget v0, p0, Landroidx/fragment/app/a;->q:I

    if-nez v0, :cond_1

    iget v0, p0, Landroidx/fragment/app/a;->r:I

    if-eqz v0, :cond_2

    .line 74
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    iget v0, p0, Landroidx/fragment/app/a;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    .line 76
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Landroidx/fragment/app/a;->r:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    :cond_2
    iget v0, p0, Landroidx/fragment/app/a;->s:I

    if-nez v0, :cond_3

    iget v0, p0, Landroidx/fragment/app/a;->t:I

    if-eqz v0, :cond_4

    .line 80
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    iget v0, p0, Landroidx/fragment/app/a;->s:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    .line 82
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 83
    iget v0, p0, Landroidx/fragment/app/a;->t:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    :cond_4
    iget v0, p0, Landroidx/fragment/app/a;->z:I

    if-nez v0, :cond_5

    iget-object v0, p0, Landroidx/fragment/app/a;->A:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 86
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Landroidx/fragment/app/a;->z:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    .line 88
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Landroidx/fragment/app/a;->A:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 91
    :cond_6
    iget v0, p0, Landroidx/fragment/app/a;->B:I

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/fragment/app/a;->C:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 92
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Landroidx/fragment/app/a;->B:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    .line 94
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Landroidx/fragment/app/a;->C:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 99
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 100
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_d

    .line 103
    iget-object v2, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/s$a;

    .line 105
    iget v3, v2, Landroidx/fragment/app/s$a;->a:I

    packed-switch v3, :pswitch_data_0

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroidx/fragment/app/s$a;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_0
    const-string v3, "OP_SET_MAX_LIFECYCLE"

    goto :goto_1

    :pswitch_1
    const-string v3, "UNSET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_2
    const-string v3, "SET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_3
    const-string v3, "ATTACH"

    goto :goto_1

    :pswitch_4
    const-string v3, "DETACH"

    goto :goto_1

    :pswitch_5
    const-string v3, "SHOW"

    goto :goto_1

    :pswitch_6
    const-string v3, "HIDE"

    goto :goto_1

    :pswitch_7
    const-string v3, "REMOVE"

    goto :goto_1

    :pswitch_8
    const-string v3, "REPLACE"

    goto :goto_1

    :pswitch_9
    const-string v3, "ADD"

    goto :goto_1

    :pswitch_a
    const-string v3, "NULL"

    .line 119
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    .line 120
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    .line 121
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    .line 123
    iget v3, v2, Landroidx/fragment/app/s$a;->c:I

    if-nez v3, :cond_9

    iget v3, v2, Landroidx/fragment/app/s$a;->d:I

    if-eqz v3, :cond_a

    .line 124
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    iget v3, v2, Landroidx/fragment/app/s$a;->c:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " exitAnim=#"

    .line 126
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    iget v3, v2, Landroidx/fragment/app/s$a;->d:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    :cond_a
    iget v3, v2, Landroidx/fragment/app/s$a;->e:I

    if-nez v3, :cond_b

    iget v3, v2, Landroidx/fragment/app/s$a;->f:I

    if-eqz v3, :cond_c

    .line 130
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "popEnterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    iget v3, v2, Landroidx/fragment/app/s$a;->e:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " popExitAnim=#"

    .line 132
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    iget v2, v2, Landroidx/fragment/app/s$a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method a(Ljava/util/ArrayList;II)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p2, :cond_0

    return v0

    .line 360
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, -0x1

    move v3, v2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_7

    .line 363
    iget-object v4, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/s$a;

    .line 364
    iget-object v5, v4, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    if-eqz v5, :cond_1

    iget-object v4, v4, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    iget v4, v4, Landroidx/fragment/app/d;->O:I

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    if-eqz v4, :cond_6

    if-eq v4, v3, :cond_6

    move v3, p2

    :goto_2
    if-ge v3, p3, :cond_5

    .line 368
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/a;

    .line 369
    iget-object v6, v5, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v0

    :goto_3
    if-ge v7, v6, :cond_4

    .line 371
    iget-object v8, v5, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/fragment/app/s$a;

    .line 372
    iget-object v9, v8, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    if-eqz v9, :cond_2

    iget-object v8, v8, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    iget v8, v8, Landroidx/fragment/app/d;->O:I

    goto :goto_4

    :cond_2
    move v8, v0

    :goto_4
    if-ne v8, v4, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v3, v4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 332
    sget-boolean v0, Landroidx/fragment/app/k;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Run: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 337
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-boolean p1, p0, Landroidx/fragment/app/a;->w:Z

    if-eqz p1, :cond_1

    .line 339
    iget-object p1, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/k;->b(Landroidx/fragment/app/a;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public b()I
    .locals 0

    .line 151
    iget p0, p0, Landroidx/fragment/app/a;->z:I

    return p0
.end method

.method b(Ljava/util/ArrayList;Landroidx/fragment/app/d;)Landroidx/fragment/app/d;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/d;",
            ">;",
            "Landroidx/fragment/app/d;",
            ")",
            "Landroidx/fragment/app/d;"
        }
    .end annotation

    .line 607
    iget-object v0, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 608
    iget-object v2, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/s$a;

    .line 609
    iget v3, v2, Landroidx/fragment/app/s$a;->a:I

    if-eq v3, v1, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 625
    :pswitch_0
    iget-object v3, v2, Landroidx/fragment/app/s$a;->g:Landroidx/lifecycle/g$b;

    iput-object v3, v2, Landroidx/fragment/app/s$a;->h:Landroidx/lifecycle/g$b;

    goto :goto_1

    .line 619
    :pswitch_1
    iget-object p2, v2, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    goto :goto_1

    :pswitch_2
    const/4 p2, 0x0

    goto :goto_1

    .line 616
    :cond_0
    :pswitch_3
    iget-object v2, v2, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 612
    :cond_1
    :pswitch_4
    iget-object v2, v2, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object p2

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Landroidx/fragment/app/d;)Landroidx/fragment/app/s;
    .locals 2
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 197
    iget-object v0, p1, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    iget-object v1, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 198
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot hide Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p1}, Landroidx/fragment/app/d;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 202
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/s;->b(Landroidx/fragment/app/d;)Landroidx/fragment/app/s;

    move-result-object p0

    return-object p0
.end method

.method b(Z)V
    .locals 6

    .line 451
    iget-object v0, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    .line 452
    iget-object v2, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/s$a;

    .line 453
    iget-object v3, v2, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    if-eqz v3, :cond_0

    .line 455
    iget v4, p0, Landroidx/fragment/app/a;->u:I

    invoke-static {v4}, Landroidx/fragment/app/k;->e(I)I

    move-result v4

    iget v5, p0, Landroidx/fragment/app/a;->v:I

    invoke-virtual {v3, v4, v5}, Landroidx/fragment/app/d;->b(II)V

    .line 458
    :cond_0
    iget v4, v2, Landroidx/fragment/app/s$a;->a:I

    if-eq v4, v1, :cond_1

    packed-switch v4, :pswitch_data_0

    .line 493
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown cmd: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v2, Landroidx/fragment/app/s$a;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 490
    :pswitch_0
    iget-object v4, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    iget-object v5, v2, Landroidx/fragment/app/s$a;->g:Landroidx/lifecycle/g$b;

    invoke-virtual {v4, v3, v5}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/d;Landroidx/lifecycle/g$b;)V

    goto :goto_1

    .line 487
    :pswitch_1
    iget-object v4, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/k;->u(Landroidx/fragment/app/d;)V

    goto :goto_1

    .line 484
    :pswitch_2
    iget-object v4, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroidx/fragment/app/k;->u(Landroidx/fragment/app/d;)V

    goto :goto_1

    .line 480
    :pswitch_3
    iget v4, v2, Landroidx/fragment/app/s$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/d;->c(I)V

    .line 481
    iget-object v4, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/k;->q(Landroidx/fragment/app/d;)V

    goto :goto_1

    .line 476
    :pswitch_4
    iget v4, v2, Landroidx/fragment/app/s$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/d;->c(I)V

    .line 477
    iget-object v4, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/k;->r(Landroidx/fragment/app/d;)V

    goto :goto_1

    .line 472
    :pswitch_5
    iget v4, v2, Landroidx/fragment/app/s$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/d;->c(I)V

    .line 473
    iget-object v4, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/k;->o(Landroidx/fragment/app/d;)V

    goto :goto_1

    .line 468
    :pswitch_6
    iget v4, v2, Landroidx/fragment/app/s$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/d;->c(I)V

    .line 469
    iget-object v4, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/k;->p(Landroidx/fragment/app/d;)V

    goto :goto_1

    .line 464
    :pswitch_7
    iget v4, v2, Landroidx/fragment/app/s$a;->e:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/d;->c(I)V

    .line 465
    iget-object v4, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/d;Z)V

    goto :goto_1

    .line 460
    :cond_1
    iget v4, v2, Landroidx/fragment/app/s$a;->f:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/d;->c(I)V

    .line 461
    iget-object v4, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    invoke-virtual {v4, v3}, Landroidx/fragment/app/k;->n(Landroidx/fragment/app/d;)V

    .line 495
    :goto_1
    iget-boolean v4, p0, Landroidx/fragment/app/a;->F:Z

    if-nez v4, :cond_2

    iget v2, v2, Landroidx/fragment/app/s$a;->a:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    if-eqz v3, :cond_2

    .line 496
    iget-object v2, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    invoke-virtual {v2, v3}, Landroidx/fragment/app/k;->k(Landroidx/fragment/app/d;)V

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 499
    :cond_3
    iget-boolean v0, p0, Landroidx/fragment/app/a;->F:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_4

    .line 500
    iget-object p1, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    iget-object p0, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    iget p0, p0, Landroidx/fragment/app/k;->s:I

    invoke-virtual {p1, p0, v1}, Landroidx/fragment/app/k;->a(IZ)V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method b(I)Z
    .locals 5

    .line 345
    iget-object v0, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 347
    iget-object v3, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/s$a;

    .line 348
    iget-object v4, v3, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    if-eqz v4, :cond_0

    iget-object v3, v3, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    iget v3, v3, Landroidx/fragment/app/d;->O:I

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public c()I
    .locals 0

    .line 156
    iget p0, p0, Landroidx/fragment/app/a;->B:I

    return p0
.end method

.method public c(Landroidx/fragment/app/d;)Landroidx/fragment/app/s;
    .locals 2
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 208
    iget-object v0, p1, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    iget-object v1, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot show Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p1}, Landroidx/fragment/app/d;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 213
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/s;->c(Landroidx/fragment/app/d;)Landroidx/fragment/app/s;

    move-result-object p0

    return-object p0
.end method

.method public d(Landroidx/fragment/app/d;)Landroidx/fragment/app/s;
    .locals 2
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 219
    iget-object v0, p1, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    iget-object v1, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot detach Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p1}, Landroidx/fragment/app/d;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 224
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/s;->d(Landroidx/fragment/app/d;)Landroidx/fragment/app/s;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 162
    iget v0, p0, Landroidx/fragment/app/a;->z:I

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    iget-object v0, v0, Landroidx/fragment/app/k;->t:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->l()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Landroidx/fragment/app/a;->z:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 165
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a;->A:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public e(Landroidx/fragment/app/d;)Landroidx/fragment/app/s;
    .locals 2
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    if-eqz p1, :cond_1

    .line 230
    iget-object v0, p1, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    iget-object v1, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot setPrimaryNavigation for Fragment attached to a different FragmentManager. Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p1}, Landroidx/fragment/app/d;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 236
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/fragment/app/s;->e(Landroidx/fragment/app/d;)Landroidx/fragment/app/s;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 171
    iget v0, p0, Landroidx/fragment/app/a;->B:I

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    iget-object v0, v0, Landroidx/fragment/app/k;->t:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->l()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Landroidx/fragment/app/a;->B:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 174
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/a;->C:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public f()V
    .locals 2

    .line 272
    iget-object v0, p0, Landroidx/fragment/app/a;->G:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 273
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/a;->G:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 274
    iget-object v1, p0, Landroidx/fragment/app/a;->G:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Landroidx/fragment/app/a;->G:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public g()I
    .locals 1

    const/4 v0, 0x0

    .line 282
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a;->a(Z)I

    move-result p0

    return p0
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x1

    .line 287
    invoke-virtual {p0, v0}, Landroidx/fragment/app/a;->a(Z)I

    move-result p0

    return p0
.end method

.method public i()V
    .locals 2

    .line 292
    invoke-virtual {p0}, Landroidx/fragment/app/a;->p()Landroidx/fragment/app/s;

    .line 293
    iget-object v0, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/k;->b(Landroidx/fragment/app/k$e;Z)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/a;->p()Landroidx/fragment/app/s;

    .line 299
    iget-object v0, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/k;->b(Landroidx/fragment/app/k$e;Z)V

    return-void
.end method

.method k()V
    .locals 8

    .line 389
    iget-object v0, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 391
    iget-object v4, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/s$a;

    .line 392
    iget-object v5, v4, Landroidx/fragment/app/s$a;->b:Landroidx/fragment/app/d;

    if-eqz v5, :cond_0

    .line 394
    iget v6, p0, Landroidx/fragment/app/a;->u:I

    iget v7, p0, Landroidx/fragment/app/a;->v:I

    invoke-virtual {v5, v6, v7}, Landroidx/fragment/app/d;->b(II)V

    .line 396
    :cond_0
    iget v6, v4, Landroidx/fragment/app/s$a;->a:I

    if-eq v6, v3, :cond_1

    packed-switch v6, :pswitch_data_0

    .line 431
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown cmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v4, Landroidx/fragment/app/s$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 428
    :pswitch_0
    iget-object v6, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    iget-object v7, v4, Landroidx/fragment/app/s$a;->h:Landroidx/lifecycle/g$b;

    invoke-virtual {v6, v5, v7}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/d;Landroidx/lifecycle/g$b;)V

    goto :goto_1

    .line 425
    :pswitch_1
    iget-object v6, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroidx/fragment/app/k;->u(Landroidx/fragment/app/d;)V

    goto :goto_1

    .line 422
    :pswitch_2
    iget-object v6, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/k;->u(Landroidx/fragment/app/d;)V

    goto :goto_1

    .line 418
    :pswitch_3
    iget v6, v4, Landroidx/fragment/app/s$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/d;->c(I)V

    .line 419
    iget-object v6, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/k;->r(Landroidx/fragment/app/d;)V

    goto :goto_1

    .line 414
    :pswitch_4
    iget v6, v4, Landroidx/fragment/app/s$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/d;->c(I)V

    .line 415
    iget-object v6, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/k;->q(Landroidx/fragment/app/d;)V

    goto :goto_1

    .line 410
    :pswitch_5
    iget v6, v4, Landroidx/fragment/app/s$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/d;->c(I)V

    .line 411
    iget-object v6, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/k;->p(Landroidx/fragment/app/d;)V

    goto :goto_1

    .line 406
    :pswitch_6
    iget v6, v4, Landroidx/fragment/app/s$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/d;->c(I)V

    .line 407
    iget-object v6, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/k;->o(Landroidx/fragment/app/d;)V

    goto :goto_1

    .line 402
    :pswitch_7
    iget v6, v4, Landroidx/fragment/app/s$a;->d:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/d;->c(I)V

    .line 403
    iget-object v6, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    invoke-virtual {v6, v5}, Landroidx/fragment/app/k;->n(Landroidx/fragment/app/d;)V

    goto :goto_1

    .line 398
    :cond_1
    iget v6, v4, Landroidx/fragment/app/s$a;->c:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/d;->c(I)V

    .line 399
    iget-object v6, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    invoke-virtual {v6, v5, v1}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/d;Z)V

    .line 433
    :goto_1
    iget-boolean v6, p0, Landroidx/fragment/app/a;->F:Z

    if-nez v6, :cond_2

    iget v4, v4, Landroidx/fragment/app/s$a;->a:I

    if-eq v4, v3, :cond_2

    if-eqz v5, :cond_2

    .line 434
    iget-object v3, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    invoke-virtual {v3, v5}, Landroidx/fragment/app/k;->k(Landroidx/fragment/app/d;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 437
    :cond_3
    iget-boolean v0, p0, Landroidx/fragment/app/a;->F:Z

    if-nez v0, :cond_4

    .line 439
    iget-object v0, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    iget-object p0, p0, Landroidx/fragment/app/a;->b:Landroidx/fragment/app/k;

    iget p0, p0, Landroidx/fragment/app/k;->s:I

    invoke-virtual {v0, p0, v3}, Landroidx/fragment/app/k;->a(IZ)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method l()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 633
    :goto_0
    iget-object v2, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 634
    iget-object v2, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/s$a;

    .line 635
    invoke-static {v2}, Landroidx/fragment/app/a;->b(Landroidx/fragment/app/s$a;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 660
    iget-object p0, p0, Landroidx/fragment/app/a;->y:Ljava/lang/String;

    return-object p0
.end method

.method public n()Z
    .locals 0

    .line 665
    iget-object p0, p0, Landroidx/fragment/app/a;->p:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Landroidx/fragment/app/a;->d:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v1, p0, Landroidx/fragment/app/a;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/a;->y:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object p0, p0, Landroidx/fragment/app/a;->y:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, "}"

    .line 54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
