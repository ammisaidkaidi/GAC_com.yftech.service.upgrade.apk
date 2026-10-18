.class public abstract Landroidx/fragment/app/s;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/s$a;
    }
.end annotation


# static fields
.field public static final H:I = 0x1000

.field public static final I:I = 0x2000

.field public static final J:I = -0x1

.field public static final K:I = 0x0

.field public static final L:I = 0x1001

.field public static final M:I = 0x2002

.field public static final N:I = 0x1003

.field static final e:I = 0x0

.field static final f:I = 0x1

.field static final g:I = 0x2

.field static final h:I = 0x3

.field static final i:I = 0x4

.field static final j:I = 0x5

.field static final k:I = 0x6

.field static final l:I = 0x7

.field static final m:I = 0x8

.field static final n:I = 0x9

.field static final o:I = 0xa


# instance fields
.field A:Ljava/lang/CharSequence;

.field B:I

.field C:Ljava/lang/CharSequence;

.field D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field F:Z

.field G:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/s$a;",
            ">;"
        }
    .end annotation
.end field

.field q:I

.field r:I

.field s:I

.field t:I

.field u:I

.field v:I

.field w:Z

.field x:Z

.field y:Ljava/lang/String;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/s;->p:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Landroidx/fragment/app/s;->x:Z

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Landroidx/fragment/app/s;->F:Z

    return-void
.end method


# virtual methods
.method public a(II)Landroidx/fragment/app/s;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/a;
        .end annotation

        .annotation build Landroidx/annotation/b;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/a;
        .end annotation

        .annotation build Landroidx/annotation/b;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p0, p1, p2, v0, v0}, Landroidx/fragment/app/s;->a(IIII)Landroidx/fragment/app/s;

    move-result-object p0

    return-object p0
.end method

.method public a(IIII)Landroidx/fragment/app/s;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/a;
        .end annotation

        .annotation build Landroidx/annotation/b;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/a;
        .end annotation

        .annotation build Landroidx/annotation/b;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/a;
        .end annotation

        .annotation build Landroidx/annotation/b;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/a;
        .end annotation

        .annotation build Landroidx/annotation/b;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 427
    iput p1, p0, Landroidx/fragment/app/s;->q:I

    .line 428
    iput p2, p0, Landroidx/fragment/app/s;->r:I

    .line 429
    iput p3, p0, Landroidx/fragment/app/s;->s:I

    .line 430
    iput p4, p0, Landroidx/fragment/app/s;->t:I

    return-object p0
.end method

.method public a(ILandroidx/fragment/app/d;)Landroidx/fragment/app/s;
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 134
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/fragment/app/s;->a(ILandroidx/fragment/app/d;Ljava/lang/String;I)V

    return-object p0
.end method

.method public a(ILandroidx/fragment/app/d;Ljava/lang/String;)Landroidx/fragment/app/s;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x1

    .line 156
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/s;->a(ILandroidx/fragment/app/d;Ljava/lang/String;I)V

    return-object p0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)Landroidx/fragment/app/s;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 448
    invoke-static {}, Landroidx/fragment/app/t;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 449
    invoke-static {p1}, Landroidx/core/n/af;->R(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 454
    iget-object v0, p0, Landroidx/fragment/app/s;->D:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/s;->D:Ljava/util/ArrayList;

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/s;->E:Ljava/util/ArrayList;

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/s;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 460
    iget-object v0, p0, Landroidx/fragment/app/s;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/s;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object p1, p0, Landroidx/fragment/app/s;->E:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 461
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A shared element with the source name \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has already been added to the transaction."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 458
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "A shared element with the target name \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' has already been added to the transaction."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 451
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unique transitionNames are required for all sharedElements"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    return-object p0
.end method

.method public a(Landroidx/fragment/app/d;)Landroidx/fragment/app/s;
    .locals 2
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 239
    new-instance v0, Landroidx/fragment/app/s$a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/s$a;-><init>(ILandroidx/fragment/app/d;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/s$a;)V

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

    .line 350
    new-instance v0, Landroidx/fragment/app/s$a;

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1, p2}, Landroidx/fragment/app/s$a;-><init>(ILandroidx/fragment/app/d;Landroidx/lifecycle/g$b;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/s$a;)V

    return-object p0
.end method

.method public a(Landroidx/fragment/app/d;Ljava/lang/String;)Landroidx/fragment/app/s;
    .locals 2
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 125
    invoke-virtual {p0, v0, p1, p2, v1}, Landroidx/fragment/app/s;->a(ILandroidx/fragment/app/d;Ljava/lang/String;I)V

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroidx/fragment/app/s;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x0

    .line 560
    iput v0, p0, Landroidx/fragment/app/s;->z:I

    .line 561
    iput-object p1, p0, Landroidx/fragment/app/s;->A:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/Runnable;)Landroidx/fragment/app/s;
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 656
    invoke-virtual {p0}, Landroidx/fragment/app/s;->p()Landroidx/fragment/app/s;

    .line 657
    iget-object v0, p0, Landroidx/fragment/app/s;->G:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 658
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/fragment/app/s;->G:Ljava/util/ArrayList;

    .line 660
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/s;->G:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroidx/fragment/app/s;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 505
    iget-boolean v0, p0, Landroidx/fragment/app/s;->x:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 509
    iput-boolean v0, p0, Landroidx/fragment/app/s;->w:Z

    .line 510
    iput-object p1, p0, Landroidx/fragment/app/s;->y:Ljava/lang/String;

    return-object p0

    .line 506
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method a(ILandroidx/fragment/app/d;Ljava/lang/String;I)V
    .locals 3
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 161
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    .line 163
    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 164
    invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_0
    if-eqz p3, :cond_3

    .line 171
    iget-object v0, p2, Landroidx/fragment/app/d;->P:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p2, Landroidx/fragment/app/d;->P:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 172
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can\'t change tag of fragment "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ": was "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroidx/fragment/app/d;->P:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " now "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    :cond_2
    :goto_0
    iput-object p3, p2, Landroidx/fragment/app/d;->P:Ljava/lang/String;

    :cond_3
    if-eqz p1, :cond_7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    .line 184
    iget p3, p2, Landroidx/fragment/app/d;->N:I

    if-eqz p3, :cond_5

    iget p3, p2, Landroidx/fragment/app/d;->N:I

    if-ne p3, p1, :cond_4

    goto :goto_1

    .line 185
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can\'t change container ID of fragment "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ": was "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroidx/fragment/app/d;->N:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " now "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 189
    :cond_5
    :goto_1
    iput p1, p2, Landroidx/fragment/app/d;->N:I

    iput p1, p2, Landroidx/fragment/app/d;->O:I

    goto :goto_2

    .line 181
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Can\'t add fragment "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with tag "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to container view with no id"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 192
    :cond_7
    :goto_2
    new-instance p1, Landroidx/fragment/app/s$a;

    invoke-direct {p1, p4, p2}, Landroidx/fragment/app/s$a;-><init>(ILandroidx/fragment/app/d;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/s$a;)V

    return-void

    .line 165
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Fragment "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " must be a public static class to be  properly recreated from instance state."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method a(Landroidx/fragment/app/s$a;)V
    .locals 1

    .line 113
    iget-object v0, p0, Landroidx/fragment/app/s;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget v0, p0, Landroidx/fragment/app/s;->q:I

    iput v0, p1, Landroidx/fragment/app/s$a;->c:I

    .line 115
    iget v0, p0, Landroidx/fragment/app/s;->r:I

    iput v0, p1, Landroidx/fragment/app/s$a;->d:I

    .line 116
    iget v0, p0, Landroidx/fragment/app/s;->s:I

    iput v0, p1, Landroidx/fragment/app/s$a;->e:I

    .line 117
    iget p0, p0, Landroidx/fragment/app/s;->t:I

    iput p0, p1, Landroidx/fragment/app/s$a;->f:I

    return-void
.end method

.method public b(ILandroidx/fragment/app/d;)Landroidx/fragment/app/s;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x0

    .line 200
    invoke-virtual {p0, p1, p2, v0}, Landroidx/fragment/app/s;->b(ILandroidx/fragment/app/d;Ljava/lang/String;)Landroidx/fragment/app/s;

    move-result-object p0

    return-object p0
.end method

.method public b(ILandroidx/fragment/app/d;Ljava/lang/String;)Landroidx/fragment/app/s;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 225
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/fragment/app/s;->a(ILandroidx/fragment/app/d;Ljava/lang/String;I)V

    return-object p0

    .line 223
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must use non-zero containerViewId"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Landroidx/fragment/app/d;)Landroidx/fragment/app/s;
    .locals 2
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 255
    new-instance v0, Landroidx/fragment/app/s$a;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/s$a;-><init>(ILandroidx/fragment/app/d;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/s$a;)V

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroidx/fragment/app/s;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const/4 v0, 0x0

    .line 585
    iput v0, p0, Landroidx/fragment/app/s;->B:I

    .line 586
    iput-object p1, p0, Landroidx/fragment/app/s;->C:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(I)Landroidx/fragment/app/s;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 478
    iput p1, p0, Landroidx/fragment/app/s;->u:I

    return-object p0
.end method

.method public c(Landroidx/fragment/app/d;)Landroidx/fragment/app/s;
    .locals 2
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 271
    new-instance v0, Landroidx/fragment/app/s$a;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/s$a;-><init>(ILandroidx/fragment/app/d;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/s$a;)V

    return-object p0
.end method

.method public c(Z)Landroidx/fragment/app/s;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 620
    iput-boolean p1, p0, Landroidx/fragment/app/s;->F:Z

    return-object p0
.end method

.method public d(I)Landroidx/fragment/app/s;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/at;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 488
    iput p1, p0, Landroidx/fragment/app/s;->v:I

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

    .line 289
    new-instance v0, Landroidx/fragment/app/s$a;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/s$a;-><init>(ILandroidx/fragment/app/d;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/s$a;)V

    return-object p0
.end method

.method public d(Z)Landroidx/fragment/app/s;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 630
    invoke-virtual {p0, p1}, Landroidx/fragment/app/s;->c(Z)Landroidx/fragment/app/s;

    move-result-object p0

    return-object p0
.end method

.method public e(I)Landroidx/fragment/app/s;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 548
    iput p1, p0, Landroidx/fragment/app/s;->z:I

    const/4 p1, 0x0

    .line 549
    iput-object p1, p0, Landroidx/fragment/app/s;->A:Ljava/lang/CharSequence;

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

    .line 329
    new-instance v0, Landroidx/fragment/app/s$a;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/s$a;-><init>(ILandroidx/fragment/app/d;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/s$a;)V

    return-object p0
.end method

.method public f(I)Landroidx/fragment/app/s;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/as;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 573
    iput p1, p0, Landroidx/fragment/app/s;->B:I

    const/4 p1, 0x0

    .line 574
    iput-object p1, p0, Landroidx/fragment/app/s;->C:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public f(Landroidx/fragment/app/d;)Landroidx/fragment/app/s;
    .locals 2
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 306
    new-instance v0, Landroidx/fragment/app/s$a;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Landroidx/fragment/app/s$a;-><init>(ILandroidx/fragment/app/d;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/s$a;)V

    return-object p0
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public abstract i()V
.end method

.method public abstract j()V
.end method

.method public n()Z
    .locals 0

    .line 359
    iget-object p0, p0, Landroidx/fragment/app/s;->p:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public o()Z
    .locals 0

    .line 522
    iget-boolean p0, p0, Landroidx/fragment/app/s;->x:Z

    return p0
.end method

.method public p()Landroidx/fragment/app/s;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 532
    iget-boolean v0, p0, Landroidx/fragment/app/s;->w:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 536
    iput-boolean v0, p0, Landroidx/fragment/app/s;->x:Z

    return-object p0

    .line 533
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This transaction is already being added to the back stack"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
