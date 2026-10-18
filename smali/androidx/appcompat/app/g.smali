.class public abstract Landroidx/appcompat/app/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/g$a;
    }
.end annotation


# static fields
.field static final a:Z = false

.field static final b:Ljava/lang/String; = "AppCompatDelegate"

.field public static final c:I = -0x1

.field public static final d:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final e:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = -0x64

.field public static final j:I = 0x6c

.field public static final k:I = 0x6d

.field public static final l:I = 0xa

.field private static m:I = -0x64

.field private static final n:Landroidx/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/b<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/appcompat/app/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final o:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 173
    new-instance v0, Landroidx/c/b;

    invoke-direct {v0}, Landroidx/c/b;-><init>()V

    sput-object v0, Landroidx/appcompat/app/g;->n:Landroidx/c/b;

    .line 175
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/appcompat/app/g;->o:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroidx/appcompat/app/f;)Landroidx/appcompat/app/g;
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroidx/appcompat/app/f;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 230
    new-instance v0, Landroidx/appcompat/app/h;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/h;-><init>(Landroid/app/Activity;Landroidx/appcompat/app/f;)V

    return-object v0
.end method

.method public static a(Landroid/app/Dialog;Landroidx/appcompat/app/f;)Landroidx/appcompat/app/g;
    .locals 1
    .param p0    # Landroid/app/Dialog;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroidx/appcompat/app/f;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 241
    new-instance v0, Landroidx/appcompat/app/h;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/h;-><init>(Landroid/app/Dialog;Landroidx/appcompat/app/f;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/app/Activity;Landroidx/appcompat/app/f;)Landroidx/appcompat/app/g;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/app/f;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 265
    new-instance v0, Landroidx/appcompat/app/h;

    invoke-direct {v0, p0, p1, p2}, Landroidx/appcompat/app/h;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroidx/appcompat/app/f;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/f;)Landroidx/appcompat/app/g;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroid/view/Window;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/appcompat/app/f;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 253
    new-instance v0, Landroidx/appcompat/app/h;

    invoke-direct {v0, p0, p1, p2}, Landroidx/appcompat/app/h;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/f;)V

    return-object v0
.end method

.method static a(Landroidx/appcompat/app/g;)V
    .locals 3
    .param p0    # Landroidx/appcompat/app/g;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 652
    sget-object v0, Landroidx/appcompat/app/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/app/g;->c(Landroidx/appcompat/app/g;)V

    .line 657
    sget-object v1, Landroidx/appcompat/app/g;->n:Landroidx/c/b;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroidx/c/b;->add(Ljava/lang/Object;)Z

    .line 658
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static b(Landroidx/appcompat/app/g;)V
    .locals 1
    .param p0    # Landroidx/appcompat/app/g;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 662
    sget-object v0, Landroidx/appcompat/app/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 664
    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/app/g;->c(Landroidx/appcompat/app/g;)V

    .line 665
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b(Z)V
    .locals 0

    .line 638
    invoke-static {p0}, Landroidx/appcompat/widget/bf;->a(Z)V

    return-void
.end method

.method private static c(Landroidx/appcompat/app/g;)V
    .locals 3
    .param p0    # Landroidx/appcompat/app/g;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 669
    sget-object v0, Landroidx/appcompat/app/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 670
    :try_start_0
    sget-object v1, Landroidx/appcompat/app/g;->n:Landroidx/c/b;

    invoke-virtual {v1}, Landroidx/c/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 671
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 672
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/g;

    if-eq v2, p0, :cond_1

    if-nez v2, :cond_0

    .line 676
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 679
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static g(I)V
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string p0, "AppCompatDelegate"

    const-string v0, "setDefaultNightMode() called with an unknown mode"

    .line 589
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 583
    :pswitch_0
    sget v0, Landroidx/appcompat/app/g;->m:I

    if-eq v0, p0, :cond_0

    .line 584
    sput p0, Landroidx/appcompat/app/g;->m:I

    .line 585
    invoke-static {}, Landroidx/appcompat/app/g;->o()V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static m()I
    .locals 1

    .line 601
    sget v0, Landroidx/appcompat/app/g;->m:I

    return v0
.end method

.method public static n()Z
    .locals 1

    .line 648
    invoke-static {}, Landroidx/appcompat/widget/bf;->b()Z

    move-result v0

    return v0
.end method

.method private static o()V
    .locals 3

    .line 683
    sget-object v0, Landroidx/appcompat/app/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 684
    :try_start_0
    sget-object v1, Landroidx/appcompat/app/g;->n:Landroidx/c/b;

    invoke-virtual {v1}, Landroidx/c/b;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 685
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/g;

    if-eqz v2, :cond_0

    .line 690
    invoke-virtual {v2}, Landroidx/appcompat/app/g;->k()Z

    goto :goto_0

    .line 693
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public abstract a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
.end method

.method public abstract a()Landroidx/appcompat/app/a;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end method

.method public abstract a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .param p1    # Landroidx/appcompat/view/b$a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end method

.method public a(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public abstract a(Landroid/content/res/Configuration;)V
.end method

.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public abstract a(Landroid/view/View;)V
.end method

.method public abstract a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract a(Landroidx/appcompat/widget/Toolbar;)V
    .param p1    # Landroidx/appcompat/widget/Toolbar;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
.end method

.method public abstract a(Ljava/lang/CharSequence;)V
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
.end method

.method public abstract a(Z)V
.end method

.method public b(Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation build Landroidx/annotation/i;
    .end annotation

    .line 395
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/g;->a(Landroid/content/Context;)V

    return-object p1
.end method

.method public abstract b()Landroid/view/MenuInflater;
.end method

.method public abstract b(I)Landroid/view/View;
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation
.end method

.method public abstract b(Landroid/os/Bundle;)V
.end method

.method public abstract b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public abstract c()V
.end method

.method public abstract c(I)V
    .param p1    # I
        .annotation build Landroidx/annotation/ac;
        .end annotation
    .end param
.end method

.method public abstract c(Landroid/os/Bundle;)V
.end method

.method public abstract d()V
.end method

.method public abstract d(I)Z
.end method

.method public abstract e()V
.end method

.method public abstract e(I)Z
.end method

.method public abstract f()V
.end method

.method public abstract f(I)V
    .annotation build Landroidx/annotation/am;
        a = 0x11
    .end annotation
.end method

.method public abstract g()V
.end method

.method public abstract h()Landroidx/appcompat/app/b$a;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end method

.method public abstract i()V
.end method

.method public abstract j()Z
.end method

.method public abstract k()Z
.end method

.method public l()I
    .locals 0

    const/16 p0, -0x64

    return p0
.end method
