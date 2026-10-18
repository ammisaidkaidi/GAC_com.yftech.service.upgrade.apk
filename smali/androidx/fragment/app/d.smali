.class public Landroidx/fragment/app/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroidx/lifecycle/j;
.implements Landroidx/lifecycle/y;
.implements Landroidx/savedstate/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/d$a;,
        Landroidx/fragment/app/d$c;,
        Landroidx/fragment/app/d$b;,
        Landroidx/fragment/app/d$d;
    }
.end annotation


# static fields
.field static final n:Ljava/lang/Object;

.field static final o:I = 0x0

.field static final p:I = 0x1

.field static final q:I = 0x2

.field static final r:I = 0x3

.field static final s:I = 0x4


# instance fields
.field A:Ljava/lang/String;

.field B:I

.field C:Z

.field D:Z

.field E:Z

.field F:Z

.field G:Z

.field H:Z

.field I:I

.field J:Landroidx/fragment/app/k;

.field K:Landroidx/fragment/app/i;

.field L:Landroidx/fragment/app/k;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field M:Landroidx/fragment/app/d;

.field N:I

.field O:I

.field P:Ljava/lang/String;

.field Q:Z

.field R:Z

.field S:Z

.field T:Z

.field U:Z

.field V:Z

.field W:Landroid/view/ViewGroup;

.field X:Landroid/view/View;

.field Y:Landroid/view/View;

.field Z:Z

.field private a:Ljava/lang/Boolean;

.field aa:Z

.field ab:Landroidx/fragment/app/d$a;

.field ac:Ljava/lang/Runnable;

.field ad:Z

.field ae:Z

.field af:F

.field ag:Landroid/view/LayoutInflater;

.field ah:Z

.field ai:Landroidx/lifecycle/g$b;

.field aj:Landroidx/lifecycle/k;

.field ak:Landroidx/fragment/app/w;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field al:Landroidx/lifecycle/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/p<",
            "Landroidx/lifecycle/j;",
            ">;"
        }
    .end annotation
.end field

.field am:Landroidx/savedstate/c;

.field private b:Z

.field private c:I
    .annotation build Landroidx/annotation/ac;
    .end annotation
.end field

.field t:I

.field u:Landroid/os/Bundle;

.field v:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field w:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field x:Ljava/lang/String;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field y:Landroid/os/Bundle;

.field z:Landroidx/fragment/app/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/fragment/app/d;->n:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Landroidx/fragment/app/d;->t:I

    .line 117
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/d;->x:Ljava/lang/String;

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Landroidx/fragment/app/d;->A:Ljava/lang/String;

    .line 132
    iput-object v0, p0, Landroidx/fragment/app/d;->a:Ljava/lang/Boolean;

    .line 165
    new-instance v0, Landroidx/fragment/app/k;

    invoke-direct {v0}, Landroidx/fragment/app/k;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Landroidx/fragment/app/d;->V:Z

    .line 221
    iput-boolean v0, p0, Landroidx/fragment/app/d;->aa:Z

    .line 230
    new-instance v0, Landroidx/fragment/app/d$1;

    invoke-direct {v0, p0}, Landroidx/fragment/app/d$1;-><init>(Landroidx/fragment/app/d;)V

    iput-object v0, p0, Landroidx/fragment/app/d;->ac:Ljava/lang/Runnable;

    .line 260
    sget-object v0, Landroidx/lifecycle/g$b;->e:Landroidx/lifecycle/g$b;

    iput-object v0, p0, Landroidx/fragment/app/d;->ai:Landroidx/lifecycle/g$b;

    .line 267
    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0}, Landroidx/lifecycle/p;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/d;->al:Landroidx/lifecycle/p;

    .line 451
    invoke-direct {p0}, Landroidx/fragment/app/d;->a()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ac;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/n;
    .end annotation

    .line 463
    invoke-direct {p0}, Landroidx/fragment/app/d;-><init>()V

    .line 464
    iput p1, p0, Landroidx/fragment/app/d;->c:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/d;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 495
    invoke-static {p0, p1, v0}, Landroidx/fragment/app/d;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/d;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/d;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 522
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 521
    invoke-static {p0, p1}, Landroidx/fragment/app/h;->b(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    .line 523
    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/d;

    if-eqz p2, :cond_0

    .line 525
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 526
    invoke-virtual {p0, p2}, Landroidx/fragment/app/d;->g(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 541
    new-instance p2, Landroidx/fragment/app/d$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": calling Fragment constructor caused an exception"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/d$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p0

    .line 538
    new-instance p2, Landroidx/fragment/app/d$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": could not find Fragment constructor"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/d$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_2
    move-exception p0

    .line 534
    new-instance p2, Landroidx/fragment/app/d$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/d$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p0

    .line 530
    new-instance p2, Landroidx/fragment/app/d$b;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to instantiate fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1, p0}, Landroidx/fragment/app/d$b;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method private a()V
    .locals 2

    .line 468
    new-instance v0, Landroidx/lifecycle/k;

    invoke-direct {v0, p0}, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;)V

    iput-object v0, p0, Landroidx/fragment/app/d;->aj:Landroidx/lifecycle/k;

    .line 469
    invoke-static {p0}, Landroidx/savedstate/c;->a(Landroidx/savedstate/d;)Landroidx/savedstate/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/d;->am:Landroidx/savedstate/c;

    .line 470
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 471
    iget-object v0, p0, Landroidx/fragment/app/d;->aj:Landroidx/lifecycle/k;

    new-instance v1, Landroidx/fragment/app/Fragment$2;

    invoke-direct {v1, p0}, Landroidx/fragment/app/Fragment$2;-><init>(Landroidx/fragment/app/d;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/i;)V

    :cond_0
    return-void
.end method

.method private b()Landroidx/fragment/app/d$a;
    .locals 1

    .line 2873
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    .line 2874
    new-instance v0, Landroidx/fragment/app/d$a;

    invoke-direct {v0}, Landroidx/fragment/app/d$a;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    .line 2876
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    return-object p0
.end method


# virtual methods
.method public final A()Landroidx/fragment/app/e;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 788
    iget-object v0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    invoke-virtual {p0}, Landroidx/fragment/app/i;->k()Landroid/app/Activity;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/e;

    :goto_0
    return-object p0
.end method

.method public final B()Landroidx/fragment/app/e;
    .locals 3
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 800
    invoke-virtual {p0}, Landroidx/fragment/app/d;->A()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 802
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to an activity."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final C()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 815
    iget-object v0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    invoke-virtual {p0}, Landroidx/fragment/app/i;->j()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final D()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 826
    invoke-virtual {p0}, Landroidx/fragment/app/d;->C()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 828
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to a host."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final E()Landroid/content/res/Resources;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 838
    invoke-virtual {p0}, Landroidx/fragment/app/d;->z()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public final F()Landroidx/fragment/app/j;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 890
    iget-object p0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    return-object p0
.end method

.method public final G()Landroidx/fragment/app/j;
    .locals 3
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 908
    invoke-virtual {p0}, Landroidx/fragment/app/d;->F()Landroidx/fragment/app/j;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 910
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not associated with a fragment manager."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final H()Landroidx/fragment/app/j;
    .locals 3
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 922
    iget-object v0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    if-eqz v0, :cond_0

    .line 925
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    return-object p0

    .line 923
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " has not been attached yet."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final I()Landroidx/fragment/app/d;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 934
    iget-object p0, p0, Landroidx/fragment/app/d;->M:Landroidx/fragment/app/d;

    return-object p0
.end method

.method public final J()Landroidx/fragment/app/d;
    .locals 3
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 946
    invoke-virtual {p0}, Landroidx/fragment/app/d;->I()Landroidx/fragment/app/d;

    move-result-object v0

    if-nez v0, :cond_1

    .line 948
    invoke-virtual {p0}, Landroidx/fragment/app/d;->y()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 950
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not attached to any Fragment or host"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not a child Fragment, it is directly attached to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    invoke-virtual {p0}, Landroidx/fragment/app/d;->y()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public final K()Z
    .locals 1

    .line 964
    iget-object v0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/fragment/app/d;->C:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final L()Z
    .locals 0

    .line 973
    iget-boolean p0, p0, Landroidx/fragment/app/d;->R:Z

    return p0
.end method

.method public final M()Z
    .locals 0

    .line 982
    iget-boolean p0, p0, Landroidx/fragment/app/d;->D:Z

    return p0
.end method

.method public final N()Z
    .locals 0

    .line 993
    iget-boolean p0, p0, Landroidx/fragment/app/d;->F:Z

    return p0
.end method

.method public final O()Z
    .locals 1

    .line 1001
    iget p0, p0, Landroidx/fragment/app/d;->t:I

    const/4 v0, 0x4

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final P()Z
    .locals 1

    .line 1010
    invoke-virtual {p0}, Landroidx/fragment/app/d;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/d;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->X:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->X:Landroid/view/View;

    .line 1011
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/d;->X:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final Q()Z
    .locals 0

    .line 1022
    iget-boolean p0, p0, Landroidx/fragment/app/d;->Q:Z

    return p0
.end method

.method public final R()Z
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 1028
    iget-boolean p0, p0, Landroidx/fragment/app/d;->U:Z

    return p0
.end method

.method public final S()Z
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 1034
    iget-boolean p0, p0, Landroidx/fragment/app/d;->V:Z

    return p0
.end method

.method public final T()Z
    .locals 0

    .line 1073
    iget-boolean p0, p0, Landroidx/fragment/app/d;->S:Z

    return p0
.end method

.method public U()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1153
    iget-boolean p0, p0, Landroidx/fragment/app/d;->aa:Z

    return p0
.end method

.method public V()Landroidx/i/a/a;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1165
    invoke-static {p0}, Landroidx/i/a/a;->a(Landroidx/lifecycle/j;)Landroidx/i/a/a;

    move-result-object p0

    return-object p0
.end method

.method public final W()Landroid/view/LayoutInflater;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1396
    iget-object v0, p0, Landroidx/fragment/app/d;->ag:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1397
    invoke-virtual {p0, v0}, Landroidx/fragment/app/d;->h(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0

    .line 1399
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->ag:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method public X()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1686
    iget-object p0, p0, Landroidx/fragment/app/d;->X:Landroid/view/View;

    return-object p0
.end method

.method public final Y()Landroid/view/View;
    .locals 3
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1697
    invoke-virtual {p0}, Landroidx/fragment/app/d;->X()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1699
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not return a View from onCreateView() or this was called before onCreateView()."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public Z()V
    .locals 1
    .annotation build Landroidx/annotation/i;
    .end annotation

    const/4 v0, 0x1

    .line 1757
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 1659
    iget p3, p0, Landroidx/fragment/app/d;->c:I

    if-eqz p3, :cond_0

    .line 1660
    iget p0, p0, Landroidx/fragment/app/d;->c:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(IZI)Landroid/view/animation/Animation;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public final a(I)Ljava/lang/CharSequence;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 849
    invoke-virtual {p0}, Landroidx/fragment/app/d;->E()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 873
    invoke-virtual {p0}, Landroidx/fragment/app/d;->E()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 0
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    return-void
.end method

.method public a(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    return-void
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2409
    invoke-direct {p0}, Landroidx/fragment/app/d;->b()Landroidx/fragment/app/d$a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/fragment/app/d$a;->q:Z

    .line 2411
    iget-object v0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    if-eqz v0, :cond_0

    .line 2412
    iget-object v0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    iget-object v0, v0, Landroidx/fragment/app/k;->t:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->m()Landroid/os/Handler;

    move-result-object v0

    goto :goto_0

    .line 2414
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2416
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/d;->ac:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2417
    iget-object p0, p0, Landroidx/fragment/app/d;->ac:Ljava/lang/Runnable;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method a(Landroid/animation/Animator;)V
    .locals 0

    .line 2942
    invoke-direct {p0}, Landroidx/fragment/app/d;->b()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/d$a;->b:Landroid/animation/Animator;

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/i;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 1540
    iput-boolean p1, p0, Landroidx/fragment/app/d;->b:Z

    return-void
.end method

.method public a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/i;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x1

    .line 1502
    iput-boolean p1, p0, Landroidx/fragment/app/d;->b:Z

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/i;
    .end annotation

    const/4 p1, 0x1

    .line 1523
    iput-boolean p1, p0, Landroidx/fragment/app/d;->b:Z

    .line 1524
    iget-object p1, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    invoke-virtual {p1}, Landroidx/fragment/app/i;->k()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1526
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    .line 1527
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->a(Landroid/app/Activity;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/i;
    .end annotation

    const/4 p1, 0x1

    .line 1484
    iput-boolean p1, p0, Landroidx/fragment/app/d;->b:Z

    .line 1485
    iget-object p1, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    invoke-virtual {p1}, Landroidx/fragment/app/i;->k()Landroid/app/Activity;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1487
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    .line 1488
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/d;->a(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1173
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/d;->a(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1194
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/d;->a(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1203
    iget-object v0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/fragment/app/i;->a(Landroidx/fragment/app/d;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 1204
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fragment "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to Activity"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1182
    iget-object v0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    if-eqz v0, :cond_0

    .line 1185
    iget-object v0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    const/4 v1, -0x1

    invoke-virtual {v0, p0, p1, v1, p2}, Landroidx/fragment/app/i;->a(Landroidx/fragment/app/d;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 1183
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to Activity"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/content/IntentSender;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p7    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    move-object v1, p0

    .line 1216
    iget-object v0, v1, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, v1, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroidx/fragment/app/i;->a(Landroidx/fragment/app/d;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void

    .line 1217
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fragment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not attached to Activity"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method a(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2688
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2689
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/k;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public a(Landroid/view/Menu;)V
    .locals 0
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2013
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    return-void
.end method

.method public a(Landroidx/core/app/z;)V
    .locals 0
    .param p1    # Landroidx/core/app/z;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 2056
    invoke-direct {p0}, Landroidx/fragment/app/d;->b()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/d$a;->o:Landroidx/core/app/z;

    return-void
.end method

.method a(Landroidx/fragment/app/d$c;)V
    .locals 2

    .line 2856
    invoke-direct {p0}, Landroidx/fragment/app/d;->b()Landroidx/fragment/app/d$a;

    .line 2857
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-object v0, v0, Landroidx/fragment/app/d$a;->r:Landroidx/fragment/app/d$c;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 2860
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-object v0, v0, Landroidx/fragment/app/d$a;->r:Landroidx/fragment/app/d$c;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2861
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2864
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-boolean v0, v0, Landroidx/fragment/app/d$a;->q:Z

    if-eqz v0, :cond_3

    .line 2865
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iput-object p1, p0, Landroidx/fragment/app/d$a;->r:Landroidx/fragment/app/d$c;

    :cond_3
    if-eqz p1, :cond_4

    .line 2868
    invoke-interface {p1}, Landroidx/fragment/app/d$c;->b()V

    :cond_4
    return-void
.end method

.method public a(Landroidx/fragment/app/d$d;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/d$d;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 678
    iget-object v0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 681
    iget-object v0, p1, Landroidx/fragment/app/d$d;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroidx/fragment/app/d$d;->a:Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/d;->u:Landroid/os/Bundle;

    return-void

    .line 679
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment already added"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Landroidx/fragment/app/d;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    return-void
.end method

.method public a(Landroidx/fragment/app/d;I)V
    .locals 3
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 702
    invoke-virtual {p0}, Landroidx/fragment/app/d;->F()Landroidx/fragment/app/j;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 703
    invoke-virtual {p1}, Landroidx/fragment/app/d;->F()Landroidx/fragment/app/j;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 705
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must share the same FragmentManager to be set as a target fragment"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    move-object v0, p1

    :goto_2
    if-eqz v0, :cond_4

    if-eq v0, p0, :cond_3

    .line 710
    invoke-virtual {v0}, Landroidx/fragment/app/d;->w()Landroidx/fragment/app/d;

    move-result-object v0

    goto :goto_2

    .line 712
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as the target of "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " would create a target cycle"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    if-nez p1, :cond_5

    .line 717
    iput-object v1, p0, Landroidx/fragment/app/d;->A:Ljava/lang/String;

    .line 718
    iput-object v1, p0, Landroidx/fragment/app/d;->z:Landroidx/fragment/app/d;

    goto :goto_3

    .line 719
    :cond_5
    iget-object v0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    if-eqz v0, :cond_6

    .line 721
    iget-object p1, p1, Landroidx/fragment/app/d;->x:Ljava/lang/String;

    iput-object p1, p0, Landroidx/fragment/app/d;->A:Ljava/lang/String;

    .line 722
    iput-object v1, p0, Landroidx/fragment/app/d;->z:Landroidx/fragment/app/d;

    goto :goto_3

    .line 725
    :cond_6
    iput-object v1, p0, Landroidx/fragment/app/d;->A:Ljava/lang/String;

    .line 726
    iput-object p1, p0, Landroidx/fragment/app/d;->z:Landroidx/fragment/app/d;

    .line 728
    :goto_3
    iput p2, p0, Landroidx/fragment/app/d;->B:I

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 2084
    invoke-direct {p0}, Landroidx/fragment/app/d;->b()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/d$a;->g:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 2474
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2475
    iget v0, p0, Landroidx/fragment/app/d;->N:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mContainerId=#"

    .line 2476
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2477
    iget v0, p0, Landroidx/fragment/app/d;->O:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mTag="

    .line 2478
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->P:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2479
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/d;->t:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mWho="

    .line 2480
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->x:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBackStackNesting="

    .line 2481
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/fragment/app/d;->I:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2482
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->C:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mRemoving="

    .line 2483
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->D:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mFromLayout="

    .line 2484
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->E:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mInLayout="

    .line 2485
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->F:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2486
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->Q:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDetached="

    .line 2487
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->R:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mMenuVisible="

    .line 2488
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->V:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasMenu="

    .line 2489
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->U:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2490
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->S:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mUserVisibleHint="

    .line 2491
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroidx/fragment/app/d;->aa:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2492
    iget-object v0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    if-eqz v0, :cond_0

    .line 2493
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2494
    iget-object v0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2496
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    if-eqz v0, :cond_1

    .line 2497
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2498
    iget-object v0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2500
    :cond_1
    iget-object v0, p0, Landroidx/fragment/app/d;->M:Landroidx/fragment/app/d;

    if-eqz v0, :cond_2

    .line 2501
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2502
    iget-object v0, p0, Landroidx/fragment/app/d;->M:Landroidx/fragment/app/d;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2504
    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/d;->y:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    .line 2505
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->y:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2507
    :cond_3
    iget-object v0, p0, Landroidx/fragment/app/d;->u:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 2508
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2509
    iget-object v0, p0, Landroidx/fragment/app/d;->u:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2511
    :cond_4
    iget-object v0, p0, Landroidx/fragment/app/d;->v:Landroid/util/SparseArray;

    if-eqz v0, :cond_5

    .line 2512
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2513
    iget-object v0, p0, Landroidx/fragment/app/d;->v:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2515
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/d;->w()Landroidx/fragment/app/d;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2517
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mTarget="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " mTargetRequestCode="

    .line 2518
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2519
    iget v0, p0, Landroidx/fragment/app/d;->B:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2521
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/d;->aA()I

    move-result v0

    if-eqz v0, :cond_7

    .line 2522
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/d;->aA()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2524
    :cond_7
    iget-object v0, p0, Landroidx/fragment/app/d;->W:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    .line 2525
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->W:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2527
    :cond_8
    iget-object v0, p0, Landroidx/fragment/app/d;->X:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 2528
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->X:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2530
    :cond_9
    iget-object v0, p0, Landroidx/fragment/app/d;->Y:Landroid/view/View;

    if-eqz v0, :cond_a

    .line 2531
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/fragment/app/d;->X:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2533
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/d;->aF()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 2534
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAnimatingAway="

    .line 2535
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2536
    invoke-virtual {p0}, Landroidx/fragment/app/d;->aF()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2537
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStateAfterAnimating="

    .line 2538
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2539
    invoke-virtual {p0}, Landroidx/fragment/app/d;->aH()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2541
    :cond_b
    invoke-virtual {p0}, Landroidx/fragment/app/d;->y()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2542
    invoke-static {p0}, Landroidx/i/a/a;->a(Landroidx/lifecycle/j;)Landroidx/i/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/i/a/a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2544
    :cond_c
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2546
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/k;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final a([Ljava/lang/String;I)V
    .locals 1
    .param p1    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1314
    iget-object v0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    if-eqz v0, :cond_0

    .line 1317
    iget-object v0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/fragment/app/i;->a(Landroidx/fragment/app/d;[Ljava/lang/String;I)V

    return-void

    .line 1315
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to Activity"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 1363
    iget-object v0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    if-eqz v0, :cond_0

    .line 1364
    iget-object p0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/i;->a(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method aA()I
    .locals 1

    .line 2880
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2883
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget p0, p0, Landroidx/fragment/app/d$a;->d:I

    return p0
.end method

.method aB()I
    .locals 1

    .line 2894
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2897
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget p0, p0, Landroidx/fragment/app/d$a;->e:I

    return p0
.end method

.method aC()I
    .locals 1

    .line 2910
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2913
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget p0, p0, Landroidx/fragment/app/d$a;->f:I

    return p0
.end method

.method aD()Landroidx/core/app/z;
    .locals 1

    .line 2917
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2920
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->o:Landroidx/core/app/z;

    return-object p0
.end method

.method aE()Landroidx/core/app/z;
    .locals 1

    .line 2924
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2927
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->p:Landroidx/core/app/z;

    return-object p0
.end method

.method aF()Landroid/view/View;
    .locals 1

    .line 2931
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2934
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->a:Landroid/view/View;

    return-object p0
.end method

.method aG()Landroid/animation/Animator;
    .locals 1

    .line 2946
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2949
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->b:Landroid/animation/Animator;

    return-object p0
.end method

.method aH()I
    .locals 1

    .line 2953
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2956
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget p0, p0, Landroidx/fragment/app/d$a;->c:I

    return p0
.end method

.method aI()Z
    .locals 1

    .line 2964
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2967
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-boolean p0, p0, Landroidx/fragment/app/d$a;->q:Z

    return p0
.end method

.method aJ()Z
    .locals 1

    .line 2971
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2974
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-boolean p0, p0, Landroidx/fragment/app/d$a;->s:Z

    return p0
.end method

.method public aa()V
    .locals 1
    .annotation build Landroidx/annotation/i;
    .end annotation

    const/4 v0, 0x1

    .line 1828
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    return-void
.end method

.method public ab()V
    .locals 1
    .annotation build Landroidx/annotation/i;
    .end annotation

    const/4 v0, 0x1

    .line 1867
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    return-void
.end method

.method ac()V
    .locals 3

    .line 1877
    invoke-direct {p0}, Landroidx/fragment/app/d;->a()V

    .line 1878
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/d;->x:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1879
    iput-boolean v0, p0, Landroidx/fragment/app/d;->C:Z

    .line 1880
    iput-boolean v0, p0, Landroidx/fragment/app/d;->D:Z

    .line 1881
    iput-boolean v0, p0, Landroidx/fragment/app/d;->E:Z

    .line 1882
    iput-boolean v0, p0, Landroidx/fragment/app/d;->F:Z

    .line 1883
    iput-boolean v0, p0, Landroidx/fragment/app/d;->G:Z

    .line 1884
    iput v0, p0, Landroidx/fragment/app/d;->I:I

    const/4 v1, 0x0

    .line 1885
    iput-object v1, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    .line 1886
    new-instance v2, Landroidx/fragment/app/k;

    invoke-direct {v2}, Landroidx/fragment/app/k;-><init>()V

    iput-object v2, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    .line 1887
    iput-object v1, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    .line 1888
    iput v0, p0, Landroidx/fragment/app/d;->N:I

    .line 1889
    iput v0, p0, Landroidx/fragment/app/d;->O:I

    .line 1890
    iput-object v1, p0, Landroidx/fragment/app/d;->P:Ljava/lang/String;

    .line 1891
    iput-boolean v0, p0, Landroidx/fragment/app/d;->Q:Z

    .line 1892
    iput-boolean v0, p0, Landroidx/fragment/app/d;->R:Z

    return-void
.end method

.method public ad()V
    .locals 0

    return-void
.end method

.method public ae()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 2098
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2101
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->g:Ljava/lang/Object;

    return-object p0
.end method

.method public af()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 2137
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2140
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-object v0, v0, Landroidx/fragment/app/d$a;->h:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/d;->n:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/d;->ae()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->h:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public ag()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 2177
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2180
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public ah()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 2215
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2218
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-object v0, v0, Landroidx/fragment/app/d$a;->j:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/d;->n:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/d;->ag()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->j:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public ai()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 2248
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2251
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->k:Ljava/lang/Object;

    return-object p0
.end method

.method public aj()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 2286
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2289
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-object v0, v0, Landroidx/fragment/app/d$a;->l:Ljava/lang/Object;

    sget-object v1, Landroidx/fragment/app/d;->n:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 2290
    invoke-virtual {p0}, Landroidx/fragment/app/d;->ai()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->l:Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public ak()Z
    .locals 1

    .line 2315
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-object v0, v0, Landroidx/fragment/app/d$a;->n:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->n:Ljava/lang/Boolean;

    .line 2316
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public al()Z
    .locals 1

    .line 2340
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-object v0, v0, Landroidx/fragment/app/d$a;->m:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-object p0, p0, Landroidx/fragment/app/d$a;->m:Ljava/lang/Boolean;

    .line 2341
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public am()V
    .locals 1

    .line 2375
    invoke-direct {p0}, Landroidx/fragment/app/d;->b()Landroidx/fragment/app/d$a;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/d$a;->q:Z

    return-void
.end method

.method public an()V
    .locals 2

    .line 2431
    iget-object v0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    iget-object v0, v0, Landroidx/fragment/app/k;->t:Landroidx/fragment/app/i;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2433
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    iget-object v1, v1, Landroidx/fragment/app/k;->t:Landroidx/fragment/app/i;

    invoke-virtual {v1}, Landroidx/fragment/app/i;->m()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2434
    iget-object v0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    iget-object v0, v0, Landroidx/fragment/app/k;->t:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->m()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/fragment/app/d$2;

    invoke-direct {v1, p0}, Landroidx/fragment/app/d$2;-><init>(Landroidx/fragment/app/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2441
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/d;->ao()V

    goto :goto_1

    .line 2432
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/fragment/app/d;->b()Landroidx/fragment/app/d$a;

    move-result-object p0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/fragment/app/d$a;->q:Z

    :goto_1
    return-void
.end method

.method ao()V
    .locals 3

    .line 2451
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2454
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroidx/fragment/app/d$a;->q:Z

    .line 2455
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iget-object v0, v0, Landroidx/fragment/app/d$a;->r:Landroidx/fragment/app/d$c;

    .line 2456
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iput-object v1, p0, Landroidx/fragment/app/d$a;->r:Landroidx/fragment/app/d$c;

    :goto_0
    if-eqz v0, :cond_1

    .line 2459
    invoke-interface {v0}, Landroidx/fragment/app/d$c;->a()V

    :cond_1
    return-void
.end method

.method ap()V
    .locals 3

    .line 2558
    iget-object v0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    iget-object v1, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    new-instance v2, Landroidx/fragment/app/d$3;

    invoke-direct {v2, p0}, Landroidx/fragment/app/d$3;-><init>(Landroidx/fragment/app/d;)V

    invoke-virtual {v0, v1, v2, p0}, Landroidx/fragment/app/k;->a(Landroidx/fragment/app/i;Landroidx/fragment/app/f;Landroidx/fragment/app/d;)V

    const/4 v0, 0x0

    .line 2573
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    .line 2574
    iget-object v0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    invoke-virtual {v0}, Landroidx/fragment/app/i;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/d;->a(Landroid/content/Context;)V

    .line 2575
    iget-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2576
    :cond_0
    new-instance v0, Landroidx/fragment/app/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onAttach()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method aq()V
    .locals 3

    .line 2628
    iget-object v0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {v0}, Landroidx/fragment/app/k;->v()V

    .line 2629
    iget-object v0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {v0}, Landroidx/fragment/app/k;->q()Z

    const/4 v0, 0x3

    .line 2630
    iput v0, p0, Landroidx/fragment/app/d;->t:I

    const/4 v0, 0x0

    .line 2631
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    .line 2632
    invoke-virtual {p0}, Landroidx/fragment/app/d;->l()V

    .line 2633
    iget-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    if-eqz v0, :cond_1

    .line 2637
    iget-object v0, p0, Landroidx/fragment/app/d;->aj:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_START:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/g$a;)V

    .line 2638
    iget-object v0, p0, Landroidx/fragment/app/d;->X:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2639
    iget-object v0, p0, Landroidx/fragment/app/d;->ak:Landroidx/fragment/app/w;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_START:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/w;->a(Landroidx/lifecycle/g$a;)V

    .line 2641
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->y()V

    return-void

    .line 2634
    :cond_1
    new-instance v0, Landroidx/fragment/app/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onStart()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ar()V
    .locals 3

    .line 2645
    iget-object v0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {v0}, Landroidx/fragment/app/k;->v()V

    .line 2646
    iget-object v0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {v0}, Landroidx/fragment/app/k;->q()Z

    const/4 v0, 0x4

    .line 2647
    iput v0, p0, Landroidx/fragment/app/d;->t:I

    const/4 v0, 0x0

    .line 2648
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    .line 2649
    invoke-virtual {p0}, Landroidx/fragment/app/d;->Z()V

    .line 2650
    iget-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    if-eqz v0, :cond_1

    .line 2654
    iget-object v0, p0, Landroidx/fragment/app/d;->aj:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_RESUME:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/g$a;)V

    .line 2655
    iget-object v0, p0, Landroidx/fragment/app/d;->X:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2656
    iget-object v0, p0, Landroidx/fragment/app/d;->ak:Landroidx/fragment/app/w;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_RESUME:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/w;->a(Landroidx/lifecycle/g$a;)V

    .line 2658
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {v0}, Landroidx/fragment/app/k;->z()V

    .line 2659
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->q()Z

    return-void

    .line 2651
    :cond_1
    new-instance v0, Landroidx/fragment/app/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onResume()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method as()V
    .locals 0

    .line 2663
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->v()V

    return-void
.end method

.method at()V
    .locals 2

    .line 2667
    iget-object v0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/k;->b(Landroidx/fragment/app/d;)Z

    move-result v0

    .line 2669
    iget-object v1, p0, Landroidx/fragment/app/d;->a:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/fragment/app/d;->a:Ljava/lang/Boolean;

    .line 2670
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, v0, :cond_1

    .line 2671
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroidx/fragment/app/d;->a:Ljava/lang/Boolean;

    .line 2672
    invoke-virtual {p0, v0}, Landroidx/fragment/app/d;->j(Z)V

    .line 2673
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->F()V

    :cond_1
    return-void
.end method

.method au()V
    .locals 0

    .line 2693
    invoke-virtual {p0}, Landroidx/fragment/app/d;->onLowMemory()V

    .line 2694
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->E()V

    return-void
.end method

.method av()V
    .locals 3

    .line 2775
    iget-object v0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {v0}, Landroidx/fragment/app/k;->A()V

    .line 2776
    iget-object v0, p0, Landroidx/fragment/app/d;->X:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2777
    iget-object v0, p0, Landroidx/fragment/app/d;->ak:Landroidx/fragment/app/w;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_PAUSE:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/w;->a(Landroidx/lifecycle/g$a;)V

    .line 2779
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->aj:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_PAUSE:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/g$a;)V

    const/4 v0, 0x3

    .line 2780
    iput v0, p0, Landroidx/fragment/app/d;->t:I

    const/4 v0, 0x0

    .line 2781
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    .line 2782
    invoke-virtual {p0}, Landroidx/fragment/app/d;->aa()V

    .line 2783
    iget-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    if-eqz v0, :cond_1

    return-void

    .line 2784
    :cond_1
    new-instance v0, Landroidx/fragment/app/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onPause()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method aw()V
    .locals 3

    .line 2790
    iget-object v0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {v0}, Landroidx/fragment/app/k;->B()V

    .line 2791
    iget-object v0, p0, Landroidx/fragment/app/d;->X:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2792
    iget-object v0, p0, Landroidx/fragment/app/d;->ak:Landroidx/fragment/app/w;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_STOP:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/w;->a(Landroidx/lifecycle/g$a;)V

    .line 2794
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->aj:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_STOP:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/g$a;)V

    const/4 v0, 0x2

    .line 2795
    iput v0, p0, Landroidx/fragment/app/d;->t:I

    const/4 v0, 0x0

    .line 2796
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    .line 2797
    invoke-virtual {p0}, Landroidx/fragment/app/d;->m()V

    .line 2798
    iget-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    if-eqz v0, :cond_1

    return-void

    .line 2799
    :cond_1
    new-instance v0, Landroidx/fragment/app/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onStop()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ax()V
    .locals 3

    .line 2805
    iget-object v0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {v0}, Landroidx/fragment/app/k;->C()V

    .line 2806
    iget-object v0, p0, Landroidx/fragment/app/d;->X:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2807
    iget-object v0, p0, Landroidx/fragment/app/d;->ak:Landroidx/fragment/app/w;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_DESTROY:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/w;->a(Landroidx/lifecycle/g$a;)V

    :cond_0
    const/4 v0, 0x1

    .line 2809
    iput v0, p0, Landroidx/fragment/app/d;->t:I

    const/4 v0, 0x0

    .line 2810
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    .line 2811
    invoke-virtual {p0}, Landroidx/fragment/app/d;->n()V

    .line 2812
    iget-boolean v1, p0, Landroidx/fragment/app/d;->b:Z

    if-eqz v1, :cond_1

    .line 2820
    invoke-static {p0}, Landroidx/i/a/a;->a(Landroidx/lifecycle/j;)Landroidx/i/a/a;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/i/a/a;->a()V

    .line 2821
    iput-boolean v0, p0, Landroidx/fragment/app/d;->H:Z

    return-void

    .line 2813
    :cond_1
    new-instance v0, Landroidx/fragment/app/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ay()V
    .locals 3

    .line 2825
    iget-object v0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {v0}, Landroidx/fragment/app/k;->D()V

    .line 2826
    iget-object v0, p0, Landroidx/fragment/app/d;->aj:Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/g$a;->ON_DESTROY:Landroidx/lifecycle/g$a;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/g$a;)V

    const/4 v0, 0x0

    .line 2827
    iput v0, p0, Landroidx/fragment/app/d;->t:I

    .line 2828
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    .line 2829
    iput-boolean v0, p0, Landroidx/fragment/app/d;->ah:Z

    .line 2830
    invoke-virtual {p0}, Landroidx/fragment/app/d;->ab()V

    .line 2831
    iget-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2832
    :cond_0
    new-instance v0, Landroidx/fragment/app/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onDestroy()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method az()V
    .locals 3

    const/4 v0, 0x0

    .line 2838
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    .line 2839
    invoke-virtual {p0}, Landroidx/fragment/app/d;->k()V

    const/4 v0, 0x0

    .line 2840
    iput-object v0, p0, Landroidx/fragment/app/d;->ag:Landroid/view/LayoutInflater;

    .line 2841
    iget-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    if-eqz v0, :cond_1

    .line 2849
    iget-object v0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {v0}, Landroidx/fragment/app/k;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2850
    iget-object v0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {v0}, Landroidx/fragment/app/k;->D()V

    .line 2851
    new-instance v0, Landroidx/fragment/app/k;

    invoke-direct {v0}, Landroidx/fragment/app/k;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    :cond_0
    return-void

    .line 2842
    :cond_1
    new-instance v0, Landroidx/fragment/app/y;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onDetach()"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(IZI)Landroid/animation/Animator;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method b(Ljava/lang/String;)Landroidx/fragment/app/d;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 2551
    iget-object v0, p0, Landroidx/fragment/app/d;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2554
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/k;->b(Ljava/lang/String;)Landroidx/fragment/app/d;

    move-result-object p0

    return-object p0
.end method

.method public final b(I)Ljava/lang/String;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 860
    invoke-virtual {p0}, Landroidx/fragment/app/d;->E()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method b(II)V
    .locals 1

    .line 2901
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 2904
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/d;->b()Landroidx/fragment/app/d$a;

    .line 2905
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iput p1, v0, Landroidx/fragment/app/d$a;->e:I

    .line 2906
    iget-object p0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    iput p2, p0, Landroidx/fragment/app/d$a;->f:I

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/i;
    .end annotation

    const/4 v0, 0x1

    .line 1603
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    .line 1604
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->j(Landroid/os/Bundle;)V

    .line 1605
    iget-object p1, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/k;->c(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1606
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->w()V

    :cond_0
    return-void
.end method

.method b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 2597
    iget-object v0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {v0}, Landroidx/fragment/app/k;->v()V

    const/4 v0, 0x1

    .line 2598
    iput-boolean v0, p0, Landroidx/fragment/app/d;->H:Z

    .line 2599
    new-instance v0, Landroidx/fragment/app/w;

    invoke-direct {v0}, Landroidx/fragment/app/w;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/d;->ak:Landroidx/fragment/app/w;

    .line 2600
    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/d;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/d;->X:Landroid/view/View;

    .line 2601
    iget-object p1, p0, Landroidx/fragment/app/d;->X:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2603
    iget-object p1, p0, Landroidx/fragment/app/d;->ak:Landroidx/fragment/app/w;

    invoke-virtual {p1}, Landroidx/fragment/app/w;->a()V

    .line 2605
    iget-object p1, p0, Landroidx/fragment/app/d;->al:Landroidx/lifecycle/p;

    iget-object p0, p0, Landroidx/fragment/app/d;->ak:Landroidx/fragment/app/w;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/p;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 2607
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/d;->ak:Landroidx/fragment/app/w;

    invoke-virtual {p1}, Landroidx/fragment/app/w;->b()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 2611
    iput-object p1, p0, Landroidx/fragment/app/d;->ak:Landroidx/fragment/app/w;

    :goto_0
    return-void

    .line 2608
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Called getViewLifecycleOwner() but onCreateView() returned null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Landroid/view/Menu;)V
    .locals 0
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 p0, 0x0

    .line 2024
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public b(Landroidx/core/app/z;)V
    .locals 0
    .param p1    # Landroidx/core/app/z;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 2067
    invoke-direct {p0}, Landroidx/fragment/app/d;->b()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/d$a;->p:Landroidx/core/app/z;

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 2120
    invoke-direct {p0}, Landroidx/fragment/app/d;->b()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/d$a;->h:Ljava/lang/Object;

    return-void
.end method

.method b(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2708
    iget-boolean v0, p0, Landroidx/fragment/app/d;->Q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2709
    iget-boolean v0, p0, Landroidx/fragment/app/d;->U:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/d;->V:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2711
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/d;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2713
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/k;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p0

    or-int/2addr v1, p0

    :cond_1
    return v1
.end method

.method public b(Landroid/view/MenuItem;)Z
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public c(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1380
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->i(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public c()Landroidx/lifecycle/g;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 283
    iget-object p0, p0, Landroidx/fragment/app/d;->aj:Landroidx/lifecycle/k;

    return-object p0
.end method

.method c(I)V
    .locals 1

    .line 2887
    iget-object v0, p0, Landroidx/fragment/app/d;->ab:Landroidx/fragment/app/d$a;

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    return-void

    .line 2890
    :cond_0
    invoke-direct {p0}, Landroidx/fragment/app/d;->b()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput p1, p0, Landroidx/fragment/app/d$a;->d:I

    return-void
.end method

.method c(Landroid/view/View;)V
    .locals 0

    .line 2938
    invoke-direct {p0}, Landroidx/fragment/app/d;->b()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/d$a;->a:Landroid/view/View;

    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 2160
    invoke-direct {p0}, Landroidx/fragment/app/d;->b()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/d$a;->i:Ljava/lang/Object;

    return-void
.end method

.method public c(Z)V
    .locals 0

    return-void
.end method

.method c(Landroid/view/Menu;)Z
    .locals 2
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2720
    iget-boolean v0, p0, Landroidx/fragment/app/d;->Q:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2721
    iget-boolean v0, p0, Landroidx/fragment/app/d;->U:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/d;->V:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2723
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->a(Landroid/view/Menu;)V

    .line 2725
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/k;->a(Landroid/view/Menu;)Z

    move-result p0

    or-int/2addr v1, p0

    :cond_1
    return v1
.end method

.method c(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2731
    iget-boolean v0, p0, Landroidx/fragment/app/d;->Q:Z

    if-nez v0, :cond_1

    .line 2732
    iget-boolean v0, p0, Landroidx/fragment/app/d;->U:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/d;->V:Z

    if-eqz v0, :cond_0

    .line 2733
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->a(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2737
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/k;->a(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public d()Landroidx/lifecycle/x;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 361
    iget-object v0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/k;->c(Landroidx/fragment/app/d;)Landroidx/lifecycle/x;

    move-result-object p0

    return-object p0

    .line 362
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t access ViewModels from detached fragment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method d(I)V
    .locals 0

    .line 2960
    invoke-direct {p0}, Landroidx/fragment/app/d;->b()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput p1, p0, Landroidx/fragment/app/d$a;->c:I

    return-void
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/i;
    .end annotation

    const/4 p1, 0x1

    .line 1720
    iput-boolean p1, p0, Landroidx/fragment/app/d;->b:Z

    return-void
.end method

.method d(Landroid/view/Menu;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2757
    iget-boolean v0, p0, Landroidx/fragment/app/d;->Q:Z

    if-nez v0, :cond_1

    .line 2758
    iget-boolean v0, p0, Landroidx/fragment/app/d;->U:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/d;->V:Z

    if-eqz v0, :cond_0

    .line 2759
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->b(Landroid/view/Menu;)V

    .line 2761
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/k;->b(Landroid/view/Menu;)V

    :cond_1
    return-void
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 2199
    invoke-direct {p0}, Landroidx/fragment/app/d;->b()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/d$a;->j:Ljava/lang/Object;

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 1060
    iput-boolean p1, p0, Landroidx/fragment/app/d;->S:Z

    .line 1061
    iget-object v0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1063
    iget-object p1, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/k;->e(Landroidx/fragment/app/d;)V

    goto :goto_0

    .line 1065
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    invoke-virtual {p1, p0}, Landroidx/fragment/app/k;->f(Landroidx/fragment/app/d;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 1068
    iput-boolean p1, p0, Landroidx/fragment/app/d;->T:Z

    :goto_0
    return-void
.end method

.method d(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2745
    iget-boolean v0, p0, Landroidx/fragment/app/d;->Q:Z

    if-nez v0, :cond_1

    .line 2746
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->b(Landroid/view/MenuItem;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2749
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/k;->b(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    return-void
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 2234
    invoke-direct {p0}, Landroidx/fragment/app/d;->b()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/d$a;->k:Ljava/lang/Object;

    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 1084
    iget-boolean v0, p0, Landroidx/fragment/app/d;->U:Z

    if-eq v0, p1, :cond_0

    .line 1085
    iput-boolean p1, p0, Landroidx/fragment/app/d;->U:Z

    .line 1086
    invoke-virtual {p0}, Landroidx/fragment/app/d;->K()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/d;->Q()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1087
    iget-object p0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    invoke-virtual {p0}, Landroidx/fragment/app/i;->g()V

    :cond_0
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 570
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final f()Landroidx/savedstate/b;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 370
    iget-object p0, p0, Landroidx/fragment/app/d;->am:Landroidx/savedstate/c;

    invoke-virtual {p0}, Landroidx/savedstate/c;->a()Landroidx/savedstate/b;

    move-result-object p0

    return-object p0
.end method

.method final f(Landroid/os/Bundle;)V
    .locals 2

    .line 547
    iget-object v0, p0, Landroidx/fragment/app/d;->v:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Landroidx/fragment/app/d;->Y:Landroid/view/View;

    iget-object v1, p0, Landroidx/fragment/app/d;->v:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    const/4 v0, 0x0

    .line 549
    iput-object v0, p0, Landroidx/fragment/app/d;->v:Landroid/util/SparseArray;

    :cond_0
    const/4 v0, 0x0

    .line 551
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    .line 552
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->k(Landroid/os/Bundle;)V

    .line 553
    iget-boolean p1, p0, Landroidx/fragment/app/d;->b:Z

    if-eqz p1, :cond_2

    .line 557
    iget-object p1, p0, Landroidx/fragment/app/d;->X:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 558
    iget-object p0, p0, Landroidx/fragment/app/d;->ak:Landroidx/fragment/app/w;

    sget-object p1, Landroidx/lifecycle/g$a;->ON_CREATE:Landroidx/lifecycle/g$a;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/w;->a(Landroidx/lifecycle/g$a;)V

    :cond_1
    return-void

    .line 554
    :cond_2
    new-instance p1, Landroidx/fragment/app/y;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 2269
    invoke-direct {p0}, Landroidx/fragment/app/d;->b()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-object p1, p0, Landroidx/fragment/app/d$a;->l:Ljava/lang/Object;

    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 1102
    iget-boolean v0, p0, Landroidx/fragment/app/d;->V:Z

    if-eq v0, p1, :cond_0

    .line 1103
    iput-boolean p1, p0, Landroidx/fragment/app/d;->V:Z

    .line 1104
    iget-boolean p1, p0, Landroidx/fragment/app/d;->U:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/d;->K()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/d;->Q()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1105
    iget-object p0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    invoke-virtual {p0}, Landroidx/fragment/app/i;->g()V

    :cond_0
    return-void
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 624
    iget-object v0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/d;->v()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 625
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Fragment already added and state has been saved"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 627
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/fragment/app/d;->y:Landroid/os/Bundle;

    return-void
.end method

.method public g(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1131
    iget-boolean v0, p0, Landroidx/fragment/app/d;->aa:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Landroidx/fragment/app/d;->t:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {p0}, Landroidx/fragment/app/d;->K()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/d;->ah:Z

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/k;->g(Landroidx/fragment/app/d;)V

    .line 1135
    :cond_0
    iput-boolean p1, p0, Landroidx/fragment/app/d;->aa:Z

    .line 1136
    iget v0, p0, Landroidx/fragment/app/d;->t:I

    if-ge v0, v1, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/d;->Z:Z

    .line 1137
    iget-object v0, p0, Landroidx/fragment/app/d;->u:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 1140
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/d;->w:Ljava/lang/Boolean;

    :cond_2
    return-void
.end method

.method h(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1412
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->c(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1413
    iput-object p1, p0, Landroidx/fragment/app/d;->ag:Landroid/view/LayoutInflater;

    .line 1414
    iget-object p0, p0, Landroidx/fragment/app/d;->ag:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method public h(Z)V
    .locals 0

    return-void
.end method

.method public final hashCode()I
    .locals 0

    .line 577
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public i(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1430
    iget-object p1, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    if-eqz p1, :cond_0

    .line 1434
    iget-object p1, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    invoke-virtual {p1}, Landroidx/fragment/app/i;->b()Landroid/view/LayoutInflater;

    move-result-object p1

    .line 1435
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->H()Landroid/view/LayoutInflater$Factory2;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/core/n/k;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object p1

    .line 1431
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public i(Z)V
    .locals 0

    return-void
.end method

.method j(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "android:support:fragments"

    .line 1624
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1627
    iget-object v0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/k;->a(Landroid/os/Parcelable;)V

    .line 1628
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->w()V

    :cond_0
    return-void
.end method

.method public j(Z)V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 1
    .annotation build Landroidx/annotation/i;
    .end annotation

    const/4 v0, 0x1

    .line 1901
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    return-void
.end method

.method public k(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/i;
    .end annotation

    const/4 p1, 0x1

    .line 1736
    iput-boolean p1, p0, Landroidx/fragment/app/d;->b:Z

    return-void
.end method

.method public k(Z)V
    .locals 0

    .line 2303
    invoke-direct {p0}, Landroidx/fragment/app/d;->b()Landroidx/fragment/app/d$a;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/d$a;->n:Ljava/lang/Boolean;

    return-void
.end method

.method public l()V
    .locals 1
    .annotation build Landroidx/annotation/i;
    .end annotation

    const/4 v0, 0x1

    .line 1746
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    return-void
.end method

.method l(Landroid/os/Bundle;)V
    .locals 2

    .line 2582
    iget-object v0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {v0}, Landroidx/fragment/app/k;->v()V

    const/4 v0, 0x1

    .line 2583
    iput v0, p0, Landroidx/fragment/app/d;->t:I

    const/4 v1, 0x0

    .line 2584
    iput-boolean v1, p0, Landroidx/fragment/app/d;->b:Z

    .line 2585
    iget-object v1, p0, Landroidx/fragment/app/d;->am:Landroidx/savedstate/c;

    invoke-virtual {v1, p1}, Landroidx/savedstate/c;->a(Landroid/os/Bundle;)V

    .line 2586
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->b(Landroid/os/Bundle;)V

    .line 2587
    iput-boolean v0, p0, Landroidx/fragment/app/d;->ah:Z

    .line 2588
    iget-boolean p1, p0, Landroidx/fragment/app/d;->b:Z

    if-eqz p1, :cond_0

    .line 2592
    iget-object p0, p0, Landroidx/fragment/app/d;->aj:Landroidx/lifecycle/k;

    sget-object p1, Landroidx/lifecycle/g$a;->ON_CREATE:Landroidx/lifecycle/g$a;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/k;->a(Landroidx/lifecycle/g$a;)V

    return-void

    .line 2589
    :cond_0
    new-instance p1, Landroidx/fragment/app/y;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onCreate()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(Z)V
    .locals 0

    .line 2328
    invoke-direct {p0}, Landroidx/fragment/app/d;->b()Landroidx/fragment/app/d$a;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/d$a;->m:Ljava/lang/Boolean;

    return-void
.end method

.method public m()V
    .locals 1
    .annotation build Landroidx/annotation/i;
    .end annotation

    const/4 v0, 0x1

    .line 1838
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    return-void
.end method

.method m(Landroid/os/Bundle;)V
    .locals 2

    .line 2616
    iget-object v0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {v0}, Landroidx/fragment/app/k;->v()V

    const/4 v0, 0x2

    .line 2617
    iput v0, p0, Landroidx/fragment/app/d;->t:I

    const/4 v0, 0x0

    .line 2618
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    .line 2619
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->d(Landroid/os/Bundle;)V

    .line 2620
    iget-boolean p1, p0, Landroidx/fragment/app/d;->b:Z

    if-eqz p1, :cond_0

    .line 2624
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->x()V

    return-void

    .line 2621
    :cond_0
    new-instance p1, Landroidx/fragment/app/y;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " did not call through to super.onActivityCreated()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/fragment/app/y;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method m(Z)V
    .locals 0

    .line 2678
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->h(Z)V

    .line 2679
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/k;->b(Z)V

    return-void
.end method

.method public n()V
    .locals 1
    .annotation build Landroidx/annotation/i;
    .end annotation

    const/4 v0, 0x1

    .line 1858
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    return-void
.end method

.method n(Landroid/os/Bundle;)V
    .locals 1

    .line 2766
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->e(Landroid/os/Bundle;)V

    .line 2767
    iget-object v0, p0, Landroidx/fragment/app/d;->am:Landroidx/savedstate/c;

    invoke-virtual {v0, p1}, Landroidx/savedstate/c;->b(Landroid/os/Bundle;)V

    .line 2768
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->u()Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "android:support:fragments"

    .line 2770
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method n(Z)V
    .locals 0

    .line 2683
    invoke-virtual {p0, p1}, Landroidx/fragment/app/d;->i(Z)V

    .line 2684
    iget-object p0, p0, Landroidx/fragment/app/d;->L:Landroidx/fragment/app/k;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/k;->c(Z)V

    return-void
.end method

.method public o()Landroidx/lifecycle/j;
    .locals 1
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 324
    iget-object v0, p0, Landroidx/fragment/app/d;->ak:Landroidx/fragment/app/w;

    if-eqz v0, :cond_0

    .line 328
    iget-object p0, p0, Landroidx/fragment/app/d;->ak:Landroidx/fragment/app/w;

    return-object p0

    .line 325
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t access the Fragment View\'s LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method o(Z)V
    .locals 0

    .line 2978
    invoke-direct {p0}, Landroidx/fragment/app/d;->b()Landroidx/fragment/app/d$a;

    move-result-object p0

    iput-boolean p1, p0, Landroidx/fragment/app/d$a;->s:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/i;
    .end annotation

    const/4 p1, 0x1

    .line 1804
    iput-boolean p1, p0, Landroidx/fragment/app/d;->b:Z

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1    # Landroid/view/ContextMenu;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroid/view/ContextMenu$ContextMenuInfo;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 1999
    invoke-virtual {p0}, Landroidx/fragment/app/d;->B()Landroidx/fragment/app/e;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/e;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1
    .annotation build Landroidx/annotation/i;
    .end annotation

    const/4 v0, 0x1

    .line 1844
    iput-boolean v0, p0, Landroidx/fragment/app/d;->b:Z

    return-void
.end method

.method public p()Landroidx/lifecycle/LiveData;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Landroidx/lifecycle/j;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object p0, p0, Landroidx/fragment/app/d;->al:Landroidx/lifecycle/p;

    return-object p0
.end method

.method final q()Z
    .locals 0

    .line 563
    iget p0, p0, Landroidx/fragment/app/d;->I:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final r()I
    .locals 0

    .line 605
    iget p0, p0, Landroidx/fragment/app/d;->N:I

    return p0
.end method

.method public final s()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 613
    iget-object p0, p0, Landroidx/fragment/app/d;->P:Ljava/lang/String;

    return-object p0
.end method

.method public final t()Landroid/os/Bundle;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 636
    iget-object p0, p0, Landroidx/fragment/app/d;->y:Landroid/os/Bundle;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 583
    invoke-static {p0, v0}, Landroidx/core/m/c;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, " ("

    .line 584
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget-object v1, p0, Landroidx/fragment/app/d;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget v1, p0, Landroidx/fragment/app/d;->N:I

    if-eqz v1, :cond_0

    const-string v1, " id=0x"

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 589
    iget v1, p0, Landroidx/fragment/app/d;->N:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_0
    iget-object v1, p0, Landroidx/fragment/app/d;->P:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    .line 592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    iget-object p0, p0, Landroidx/fragment/app/d;->P:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 p0, 0x7d

    .line 595
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 647
    invoke-virtual {p0}, Landroidx/fragment/app/d;->t()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 649
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " does not have any arguments."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final v()Z
    .locals 1

    .line 663
    iget-object v0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 666
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    invoke-virtual {p0}, Landroidx/fragment/app/k;->k()Z

    move-result p0

    return p0
.end method

.method public final w()Landroidx/fragment/app/d;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 736
    iget-object v0, p0, Landroidx/fragment/app/d;->z:Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    .line 739
    iget-object p0, p0, Landroidx/fragment/app/d;->z:Landroidx/fragment/app/d;

    return-object p0

    .line 740
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/fragment/app/d;->A:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 742
    iget-object v0, p0, Landroidx/fragment/app/d;->J:Landroidx/fragment/app/k;

    iget-object v0, v0, Landroidx/fragment/app/k;->m:Ljava/util/HashMap;

    iget-object p0, p0, Landroidx/fragment/app/d;->A:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/d;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final x()I
    .locals 0

    .line 751
    iget p0, p0, Landroidx/fragment/app/d;->B:I

    return p0
.end method

.method public y()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 761
    iget-object v0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/d;->K:Landroidx/fragment/app/i;

    invoke-virtual {p0}, Landroidx/fragment/app/i;->l()Landroid/content/Context;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final z()Landroid/content/Context;
    .locals 3
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 772
    invoke-virtual {p0}, Landroidx/fragment/app/d;->y()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 774
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " not attached to a context."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
