.class public final Lcom/google/android/material/z/p;
.super Lcom/google/android/material/z/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/z/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/z/q<",
        "Lcom/google/android/material/z/v;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final r:I = 0x2


# instance fields
.field private final s:I

.field private final t:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 2

    .line 80
    invoke-static {p1, p2}, Lcom/google/android/material/z/p;->c(IZ)Lcom/google/android/material/z/v;

    move-result-object v0

    invoke-static {}, Lcom/google/android/material/z/p;->x()Lcom/google/android/material/z/v;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/material/z/q;-><init>(Lcom/google/android/material/z/v;Lcom/google/android/material/z/v;)V

    .line 81
    iput p1, p0, Lcom/google/android/material/z/p;->s:I

    .line 82
    iput-boolean p2, p0, Lcom/google/android/material/z/p;->t:Z

    return-void
.end method

.method private static c(IZ)Lcom/google/android/material/z/v;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 104
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

    .line 102
    :pswitch_0
    new-instance p0, Lcom/google/android/material/z/r;

    invoke-direct {p0, p1}, Lcom/google/android/material/z/r;-><init>(Z)V

    return-object p0

    .line 100
    :pswitch_1
    new-instance p0, Lcom/google/android/material/z/s;

    if-eqz p1, :cond_0

    const/16 p1, 0x50

    goto :goto_0

    :cond_0
    const/16 p1, 0x30

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/material/z/s;-><init>(I)V

    return-object p0

    .line 98
    :pswitch_2
    new-instance p0, Lcom/google/android/material/z/s;

    if-eqz p1, :cond_1

    const p1, 0x800005

    goto :goto_1

    :cond_1
    const p1, 0x800003

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/material/z/s;-><init>(I)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static x()Lcom/google/android/material/z/v;
    .locals 1

    .line 109
    new-instance v0, Lcom/google/android/material/z/e;

    invoke-direct {v0}, Lcom/google/android/material/z/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;
    .locals 0

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/z/q;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/android/material/z/v;)V
    .locals 0
    .param p1    # Lcom/google/android/material/z/v;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 44
    invoke-super {p0, p1}, Lcom/google/android/material/z/q;->a(Lcom/google/android/material/z/v;)V

    return-void
.end method

.method public b()I
    .locals 0

    .line 87
    iget p0, p0, Lcom/google/android/material/z/p;->s:I

    return p0
.end method

.method public bridge synthetic b(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;
    .locals 0

    .line 44
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/material/z/q;->b(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/j/an;Landroidx/j/an;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic u()Lcom/google/android/material/z/v;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 44
    invoke-super {p0}, Lcom/google/android/material/z/q;->u()Lcom/google/android/material/z/v;

    move-result-object p0

    return-object p0
.end method

.method public v()Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/google/android/material/z/p;->t:Z

    return p0
.end method

.method public bridge synthetic w()Lcom/google/android/material/z/v;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 44
    invoke-super {p0}, Lcom/google/android/material/z/q;->w()Lcom/google/android/material/z/v;

    move-result-object p0

    return-object p0
.end method
