.class public final Lcom/google/android/material/z/a/q;
.super Lcom/google/android/material/z/a/r;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/am;
    a = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/z/a/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/z/a/r<",
        "Lcom/google/android/material/z/a/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# instance fields
.field private final d:I

.field private final e:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 2

    .line 85
    invoke-static {p1, p2}, Lcom/google/android/material/z/a/q;->a(IZ)Lcom/google/android/material/z/a/w;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/z/a/q;->e()Lcom/google/android/material/z/a/w;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/z/a/r;-><init>(Lcom/google/android/material/z/a/w;Lcom/google/android/material/z/a/w;)V

    .line 86
    iput p1, p0, Lcom/google/android/material/z/a/q;->d:I

    .line 87
    iput-boolean p2, p0, Lcom/google/android/material/z/a/q;->e:Z

    return-void
.end method

.method private static a(IZ)Lcom/google/android/material/z/a/w;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 109
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid axis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 107
    :pswitch_0
    new-instance p0, Lcom/google/android/material/z/a/s;

    invoke-direct {p0, p1}, Lcom/google/android/material/z/a/s;-><init>(Z)V

    return-object p0

    .line 105
    :pswitch_1
    new-instance p0, Lcom/google/android/material/z/a/t;

    if-eqz p1, :cond_0

    const/16 p1, 0x50

    goto :goto_0

    :cond_0
    const/16 p1, 0x30

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/z/a/t;-><init>(I)V

    return-object p0

    .line 103
    :pswitch_2
    new-instance p0, Lcom/google/android/material/z/a/t;

    if-eqz p1, :cond_1

    const p1, 0x800005

    goto :goto_1

    :cond_1
    const p1, 0x800003

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/material/z/a/t;-><init>(I)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static e()Lcom/google/android/material/z/a/w;
    .locals 1

    .line 114
    new-instance v0, Lcom/google/android/material/z/a/e;

    invoke-direct {v0}, Lcom/google/android/material/z/a/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 92
    iget p0, p0, Lcom/google/android/material/z/a/q;->d:I

    return p0
.end method

.method public bridge synthetic a(Lcom/google/android/material/z/a/w;)V
    .locals 0
    .param p1    # Lcom/google/android/material/z/a/w;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 48
    invoke-super {p0, p1}, Lcom/google/android/material/z/a/r;->a(Lcom/google/android/material/z/a/w;)V

    return-void
.end method

.method public bridge synthetic b()Lcom/google/android/material/z/a/w;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 48
    invoke-super {p0}, Lcom/google/android/material/z/a/r;->b()Lcom/google/android/material/z/a/w;

    move-result-object p0

    return-object p0
.end method

.method public c()Z
    .locals 0

    .line 96
    iget-boolean p0, p0, Lcom/google/android/material/z/a/q;->e:Z

    return p0
.end method

.method public bridge synthetic d()Lcom/google/android/material/z/a/w;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 48
    invoke-super {p0}, Lcom/google/android/material/z/a/r;->d()Lcom/google/android/material/z/a/w;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/z/a/r;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 0

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/z/a/r;->onDisappear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method
