.class public Landroidx/fragment/app/c;
.super Landroidx/fragment/app/d;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final a:I = 0x0

.field private static final an:Ljava/lang/String; = "android:savedDialogState"

.field private static final ao:Ljava/lang/String; = "android:style"

.field private static final ap:Ljava/lang/String; = "android:theme"

.field private static final aq:Ljava/lang/String; = "android:cancelable"

.field private static final ar:Ljava/lang/String; = "android:showsDialog"

.field private static final as:Ljava/lang/String; = "android:backStackId"

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3


# instance fields
.field private at:Landroid/os/Handler;

.field private au:Ljava/lang/Runnable;

.field e:I

.field f:I

.field g:Z

.field h:Z

.field i:I

.field j:Landroid/app/Dialog;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field k:Z

.field l:Z

.field m:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Landroidx/fragment/app/d;-><init>()V

    .line 93
    new-instance v0, Landroidx/fragment/app/c$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/c$1;-><init>(Landroidx/fragment/app/c;)V

    iput-object v0, p0, Landroidx/fragment/app/c;->au:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 101
    iput v0, p0, Landroidx/fragment/app/c;->e:I

    .line 102
    iput v0, p0, Landroidx/fragment/app/c;->f:I

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Landroidx/fragment/app/c;->g:Z

    .line 104
    iput-boolean v0, p0, Landroidx/fragment/app/c;->h:Z

    const/4 v0, -0x1

    .line 105
    iput v0, p0, Landroidx/fragment/app/c;->i:I

    return-void
.end method


# virtual methods
.method public a(Landroidx/fragment/app/s;Ljava/lang/String;)I
    .locals 2
    .param p1    # Landroidx/fragment/app/s;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 168
    iput-boolean v0, p0, Landroidx/fragment/app/c;->l:Z

    const/4 v1, 0x1

    .line 169
    iput-boolean v1, p0, Landroidx/fragment/app/c;->m:Z

    .line 170
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/d;Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 171
    iput-boolean v0, p0, Landroidx/fragment/app/c;->k:Z

    .line 172
    invoke-virtual {p1}, Landroidx/fragment/app/s;->g()I

    move-result p1

    iput p1, p0, Landroidx/fragment/app/c;->i:I

    .line 173
    iget p0, p0, Landroidx/fragment/app/c;->i:I

    return p0
.end method

.method public a(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 431
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/c;->z()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/c;->h()I

    move-result p0

    invoke-direct {p1, v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, v0, v0}, Landroidx/fragment/app/c;->a(ZZ)V

    return-void
.end method

.method public a(II)V
    .locals 1
    .param p2    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param

    .line 130
    iput p1, p0, Landroidx/fragment/app/c;->e:I

    .line 131
    iget p1, p0, Landroidx/fragment/app/c;->e:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget p1, p0, Landroidx/fragment/app/c;->e:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const p1, 0x1030059

    .line 132
    iput p1, p0, Landroidx/fragment/app/c;->f:I

    :cond_1
    if-eqz p2, :cond_2

    .line 135
    iput p2, p0, Landroidx/fragment/app/c;->f:I

    :cond_2
    return-void
.end method

.method public a(Landroid/app/Dialog;I)V
    .locals 0
    .param p1    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 397
    :pswitch_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p2, 0x18

    invoke-virtual {p0, p2}, Landroid/view/Window;->addFlags(I)V

    :pswitch_1
    const/4 p0, 0x1

    .line 403
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 337
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->a(Landroid/content/Context;)V

    .line 338
    iget-boolean p1, p0, Landroidx/fragment/app/c;->m:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 341
    iput-boolean p1, p0, Landroidx/fragment/app/c;->l:Z

    :cond_0
    return-void
.end method

.method public a(Landroidx/fragment/app/j;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/j;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 151
    iput-boolean v0, p0, Landroidx/fragment/app/c;->l:Z

    const/4 v0, 0x1

    .line 152
    iput-boolean v0, p0, Landroidx/fragment/app/c;->m:Z

    .line 153
    invoke-virtual {p1}, Landroidx/fragment/app/j;->a()Landroidx/fragment/app/s;

    move-result-object p1

    .line 154
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/d;Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 155
    invoke-virtual {p1}, Landroidx/fragment/app/s;->g()I

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 296
    iput-boolean p1, p0, Landroidx/fragment/app/c;->g:Z

    .line 297
    iget-object v0, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method a(ZZ)V
    .locals 3

    .line 216
    iget-boolean v0, p0, Landroidx/fragment/app/c;->l:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Landroidx/fragment/app/c;->l:Z

    const/4 v1, 0x0

    .line 220
    iput-boolean v1, p0, Landroidx/fragment/app/c;->m:Z

    .line 221
    iget-object v1, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    .line 225
    iget-object v1, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 226
    iget-object v1, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    if-nez p2, :cond_2

    .line 232
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    iget-object v1, p0, Landroidx/fragment/app/c;->at:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p2, v1, :cond_1

    .line 233
    iget-object p2, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    invoke-virtual {p0, p2}, Landroidx/fragment/app/c;->onDismiss(Landroid/content/DialogInterface;)V

    goto :goto_0

    .line 235
    :cond_1
    iget-object p2, p0, Landroidx/fragment/app/c;->at:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/fragment/app/c;->au:Ljava/lang/Runnable;

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 239
    :cond_2
    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/c;->k:Z

    .line 240
    iget p2, p0, Landroidx/fragment/app/c;->i:I

    if-ltz p2, :cond_3

    .line 241
    invoke-virtual {p0}, Landroidx/fragment/app/c;->G()Landroidx/fragment/app/j;

    move-result-object p1

    iget p2, p0, Landroidx/fragment/app/c;->i:I

    invoke-virtual {p1, p2, v0}, Landroidx/fragment/app/j;->a(II)V

    const/4 p1, -0x1

    .line 243
    iput p1, p0, Landroidx/fragment/app/c;->i:I

    goto :goto_1

    .line 245
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/c;->G()Landroidx/fragment/app/j;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/j;->a()Landroidx/fragment/app/s;

    move-result-object p2

    .line 246
    invoke-virtual {p2, p0}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/d;)Landroidx/fragment/app/s;

    if-eqz p1, :cond_4

    .line 248
    invoke-virtual {p2}, Landroidx/fragment/app/s;->h()I

    goto :goto_1

    .line 250
    :cond_4
    invoke-virtual {p2}, Landroidx/fragment/app/s;->g()I

    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 212
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/c;->a(ZZ)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 358
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->b(Landroid/os/Bundle;)V

    .line 360
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/c;->at:Landroid/os/Handler;

    .line 362
    iget v0, p0, Landroidx/fragment/app/c;->O:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/c;->h:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    .line 365
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/c;->e:I

    const-string v0, "android:theme"

    .line 366
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/c;->f:I

    const-string v0, "android:cancelable"

    .line 367
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/c;->g:Z

    const-string v0, "android:showsDialog"

    .line 368
    iget-boolean v1, p0, Landroidx/fragment/app/c;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/fragment/app/c;->h:Z

    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    .line 369
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Landroidx/fragment/app/c;->i:I

    :cond_1
    return-void
.end method

.method public b(Landroidx/fragment/app/j;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/j;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Landroidx/fragment/app/c;->l:Z

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Landroidx/fragment/app/c;->m:Z

    .line 190
    invoke-virtual {p1}, Landroidx/fragment/app/j;->a()Landroidx/fragment/app/s;

    move-result-object p1

    .line 191
    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/d;Ljava/lang/String;)Landroidx/fragment/app/s;

    .line 192
    invoke-virtual {p1}, Landroidx/fragment/app/s;->i()V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 325
    iput-boolean p1, p0, Landroidx/fragment/app/c;->h:Z

    return-void
.end method

.method public c(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 376
    iget-boolean v0, p0, Landroidx/fragment/app/c;->h:Z

    if-nez v0, :cond_0

    .line 377
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->c(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0

    .line 380
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/fragment/app/c;->a(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    .line 382
    iget-object p1, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    .line 383
    iget-object p1, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    iget v0, p0, Landroidx/fragment/app/c;->e:I

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/c;->a(Landroid/app/Dialog;I)V

    .line 385
    iget-object p0, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "layout_inflater"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    return-object p0

    .line 388
    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/c;->K:Landroidx/fragment/app/i;

    invoke-virtual {p0}, Landroidx/fragment/app/i;->l()Landroid/content/Context;

    move-result-object p0

    const-string p1, "layout_inflater"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    return-object p0
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 451
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->d(Landroid/os/Bundle;)V

    .line 453
    iget-boolean v0, p0, Landroidx/fragment/app/c;->h:Z

    if-nez v0, :cond_0

    return-void

    .line 457
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/c;->X()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 459
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 463
    iget-object v1, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 460
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "DialogFragment can not be attached to a container view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 465
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/c;->A()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 467
    iget-object v1, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 469
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    iget-boolean v1, p0, Landroidx/fragment/app/c;->g:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 470
    iget-object v0, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 471
    iget-object v0, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_4

    const-string v0, "android:savedDialogState"

    .line 473
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 475
    iget-object p0, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method

.method public e()Landroid/app/Dialog;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 262
    iget-object p0, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    return-object p0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 492
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->e(Landroid/os/Bundle;)V

    .line 493
    iget-object v0, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:savedDialogState"

    .line 496
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 499
    :cond_0
    iget v0, p0, Landroidx/fragment/app/c;->e:I

    if-eqz v0, :cond_1

    const-string v0, "android:style"

    .line 500
    iget v1, p0, Landroidx/fragment/app/c;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 502
    :cond_1
    iget v0, p0, Landroidx/fragment/app/c;->f:I

    if-eqz v0, :cond_2

    const-string v0, "android:theme"

    .line 503
    iget v1, p0, Landroidx/fragment/app/c;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 505
    :cond_2
    iget-boolean v0, p0, Landroidx/fragment/app/c;->g:Z

    if-nez v0, :cond_3

    const-string v0, "android:cancelable"

    .line 506
    iget-boolean v1, p0, Landroidx/fragment/app/c;->g:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 508
    :cond_3
    iget-boolean v0, p0, Landroidx/fragment/app/c;->h:Z

    if-nez v0, :cond_4

    const-string v0, "android:showsDialog"

    .line 509
    iget-boolean v1, p0, Landroidx/fragment/app/c;->h:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 511
    :cond_4
    iget v0, p0, Landroidx/fragment/app/c;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v0, "android:backStackId"

    .line 512
    iget p0, p0, Landroidx/fragment/app/c;->i:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public final g()Landroid/app/Dialog;
    .locals 3
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/c;->e()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 276
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have a Dialog."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public h()I
    .locals 0
    .annotation build Landroidx/annotation/at;
    .end annotation

    .line 283
    iget p0, p0, Landroidx/fragment/app/c;->f:I

    return p0
.end method

.method public i()Z
    .locals 0

    .line 304
    iget-boolean p0, p0, Landroidx/fragment/app/c;->g:Z

    return p0
.end method

.method public j()Z
    .locals 0

    .line 332
    iget-boolean p0, p0, Landroidx/fragment/app/c;->h:Z

    return p0
.end method

.method public k()V
    .locals 1

    .line 347
    invoke-super {p0}, Landroidx/fragment/app/d;->k()V

    .line 348
    iget-boolean v0, p0, Landroidx/fragment/app/c;->m:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/c;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Landroidx/fragment/app/c;->l:Z

    :cond_0
    return-void
.end method

.method public l()V
    .locals 1

    .line 482
    invoke-super {p0}, Landroidx/fragment/app/d;->l()V

    .line 484
    iget-object v0, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 485
    iput-boolean v0, p0, Landroidx/fragment/app/c;->k:Z

    .line 486
    iget-object p0, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 1

    .line 518
    invoke-super {p0}, Landroidx/fragment/app/d;->m()V

    .line 519
    iget-object v0, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 520
    iget-object p0, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .line 529
    invoke-super {p0}, Landroidx/fragment/app/d;->n()V

    .line 530
    iget-object v0, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 534
    iput-boolean v0, p0, Landroidx/fragment/app/c;->k:Z

    .line 538
    iget-object v0, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 539
    iget-object v0, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 540
    iget-boolean v0, p0, Landroidx/fragment/app/c;->l:Z

    if-nez v0, :cond_0

    .line 543
    iget-object v0, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/c;->onDismiss(Landroid/content/DialogInterface;)V

    .line 545
    :cond_0
    iput-object v1, p0, Landroidx/fragment/app/c;->j:Landroid/app/Dialog;

    :cond_1
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 440
    iget-boolean p1, p0, Landroidx/fragment/app/c;->k:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 445
    invoke-virtual {p0, p1, p1}, Landroidx/fragment/app/c;->a(ZZ)V

    :cond_0
    return-void
.end method
