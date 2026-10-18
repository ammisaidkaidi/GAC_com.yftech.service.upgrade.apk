.class public final Landroidx/core/app/p$a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/p$a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/p$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final b:Ljava/lang/String; = "flags"

.field private static final c:Ljava/lang/String; = "inProgressLabel"

.field private static final d:Ljava/lang/String; = "confirmLabel"

.field private static final e:Ljava/lang/String; = "cancelLabel"

.field private static final f:I = 0x1

.field private static final g:I = 0x2

.field private static final h:I = 0x4

.field private static final i:I = 0x1


# instance fields
.field private j:I

.field private k:Ljava/lang/CharSequence;

.field private l:Ljava/lang/CharSequence;

.field private m:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3705
    iput v0, p0, Landroidx/core/app/p$a$d;->j:I

    return-void
.end method

.method public constructor <init>(Landroidx/core/app/p$a;)V
    .locals 2

    .line 3723
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3705
    iput v0, p0, Landroidx/core/app/p$a$d;->j:I

    .line 3724
    invoke-virtual {p1}, Landroidx/core/app/p$a;->e()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "android.wearable.EXTENSIONS"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "flags"

    .line 3726
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/core/app/p$a$d;->j:I

    const-string v0, "inProgressLabel"

    .line 3727
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/p$a$d;->k:Ljava/lang/CharSequence;

    const-string v0, "confirmLabel"

    .line 3728
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/p$a$d;->l:Ljava/lang/CharSequence;

    const-string v0, "cancelLabel"

    .line 3729
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/p$a$d;->m:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method private a(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 3792
    iget p2, p0, Landroidx/core/app/p$a$d;->j:I

    or-int/2addr p1, p2

    iput p1, p0, Landroidx/core/app/p$a$d;->j:I

    goto :goto_0

    .line 3794
    :cond_0
    iget p2, p0, Landroidx/core/app/p$a$d;->j:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroidx/core/app/p$a$d;->j:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroidx/core/app/p$a$a;)Landroidx/core/app/p$a$a;
    .locals 3

    .line 3740
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3742
    iget v1, p0, Landroidx/core/app/p$a$d;->j:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "flags"

    .line 3743
    iget v2, p0, Landroidx/core/app/p$a$d;->j:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3745
    :cond_0
    iget-object v1, p0, Landroidx/core/app/p$a$d;->k:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    const-string v1, "inProgressLabel"

    .line 3746
    iget-object v2, p0, Landroidx/core/app/p$a$d;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3748
    :cond_1
    iget-object v1, p0, Landroidx/core/app/p$a$d;->l:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    const-string v1, "confirmLabel"

    .line 3749
    iget-object v2, p0, Landroidx/core/app/p$a$d;->l:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3751
    :cond_2
    iget-object v1, p0, Landroidx/core/app/p$a$d;->m:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    const-string v1, "cancelLabel"

    .line 3752
    iget-object p0, p0, Landroidx/core/app/p$a$d;->m:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3755
    :cond_3
    invoke-virtual {p1}, Landroidx/core/app/p$a$a;->a()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "android.wearable.EXTENSIONS"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public a()Landroidx/core/app/p$a$d;
    .locals 2

    .line 3761
    new-instance v0, Landroidx/core/app/p$a$d;

    invoke-direct {v0}, Landroidx/core/app/p$a$d;-><init>()V

    .line 3762
    iget v1, p0, Landroidx/core/app/p$a$d;->j:I

    iput v1, v0, Landroidx/core/app/p$a$d;->j:I

    .line 3763
    iget-object v1, p0, Landroidx/core/app/p$a$d;->k:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/core/app/p$a$d;->k:Ljava/lang/CharSequence;

    .line 3764
    iget-object v1, p0, Landroidx/core/app/p$a$d;->l:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroidx/core/app/p$a$d;->l:Ljava/lang/CharSequence;

    .line 3765
    iget-object p0, p0, Landroidx/core/app/p$a$d;->m:Ljava/lang/CharSequence;

    iput-object p0, v0, Landroidx/core/app/p$a$d;->m:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;)Landroidx/core/app/p$a$d;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3809
    iput-object p1, p0, Landroidx/core/app/p$a$d;->k:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Z)Landroidx/core/app/p$a$d;
    .locals 1

    const/4 v0, 0x1

    .line 3776
    invoke-direct {p0, v0, p1}, Landroidx/core/app/p$a$d;->a(IZ)V

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroidx/core/app/p$a$d;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3837
    iput-object p1, p0, Landroidx/core/app/p$a$d;->l:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Z)Landroidx/core/app/p$a$d;
    .locals 1

    const/4 v0, 0x2

    .line 3891
    invoke-direct {p0, v0, p1}, Landroidx/core/app/p$a$d;->a(IZ)V

    return-object p0
.end method

.method public b()Z
    .locals 1

    .line 3787
    iget p0, p0, Landroidx/core/app/p$a$d;->j:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c(Ljava/lang/CharSequence;)Landroidx/core/app/p$a$d;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3865
    iput-object p1, p0, Landroidx/core/app/p$a$d;->m:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(Z)Landroidx/core/app/p$a$d;
    .locals 1

    const/4 v0, 0x4

    .line 3917
    invoke-direct {p0, v0, p1}, Landroidx/core/app/p$a$d;->a(IZ)V

    return-object p0
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3823
    iget-object p0, p0, Landroidx/core/app/p$a$d;->k:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 3687
    invoke-virtual {p0}, Landroidx/core/app/p$a$d;->a()Landroidx/core/app/p$a$d;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3851
    iget-object p0, p0, Landroidx/core/app/p$a$d;->l:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3879
    iget-object p0, p0, Landroidx/core/app/p$a$d;->m:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public f()Z
    .locals 0

    .line 3903
    iget p0, p0, Landroidx/core/app/p$a$d;->j:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public g()Z
    .locals 0

    .line 3930
    iget p0, p0, Landroidx/core/app/p$a$d;->j:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
