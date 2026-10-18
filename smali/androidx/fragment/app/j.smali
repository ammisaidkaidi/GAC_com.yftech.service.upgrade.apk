.class public abstract Landroidx/fragment/app/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/fragment/app/j$b;,
        Landroidx/fragment/app/j$c;,
        Landroidx/fragment/app/j$a;
    }
.end annotation


# static fields
.field static final a:Landroidx/fragment/app/h;

.field public static final b:I = 0x1


# instance fields
.field private c:Landroidx/fragment/app/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Landroidx/fragment/app/h;

    invoke-direct {v0}, Landroidx/fragment/app/h;-><init>()V

    sput-object v0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Landroidx/fragment/app/j;->c:Landroidx/fragment/app/h;

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 434
    sput-boolean p0, Landroidx/fragment/app/k;->c:Z

    return-void
.end method


# virtual methods
.method public abstract a(Landroidx/fragment/app/d;)Landroidx/fragment/app/d$d;
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end method

.method public abstract a(I)Landroidx/fragment/app/d;
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end method

.method public abstract a(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/d;
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)Landroidx/fragment/app/d;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end method

.method public abstract a()Landroidx/fragment/app/s;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end method

.method public abstract a(II)V
.end method

.method public abstract a(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/d;)V
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
.end method

.method public a(Landroidx/fragment/app/h;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/h;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 401
    iput-object p1, p0, Landroidx/fragment/app/j;->c:Landroidx/fragment/app/h;

    return-void
.end method

.method public abstract a(Landroidx/fragment/app/j$b;)V
    .param p1    # Landroidx/fragment/app/j$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
.end method

.method public abstract a(Landroidx/fragment/app/j$b;Z)V
    .param p1    # Landroidx/fragment/app/j$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
.end method

.method public abstract a(Landroidx/fragment/app/j$c;)V
    .param p1    # Landroidx/fragment/app/j$c;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
.end method

.method public abstract a(Ljava/lang/String;I)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
.end method

.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
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
.end method

.method public abstract b(I)Landroidx/fragment/app/j$a;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end method

.method public b()Landroidx/fragment/app/s;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 143
    invoke-virtual {p0}, Landroidx/fragment/app/j;->a()Landroidx/fragment/app/s;

    move-result-object p0

    return-object p0
.end method

.method public abstract b(Landroidx/fragment/app/j$c;)V
    .param p1    # Landroidx/fragment/app/j$c;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
.end method

.method public abstract b(II)Z
.end method

.method public abstract b(Ljava/lang/String;I)Z
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
.end method

.method public abstract c()Z
.end method

.method public abstract d()V
.end method

.method public abstract e()Z
.end method

.method public abstract f()I
.end method

.method public abstract g()Ljava/util/List;
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/d;",
            ">;"
        }
    .end annotation
.end method

.method public abstract h()Z
.end method

.method public abstract i()Landroidx/fragment/app/d;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end method

.method public j()Landroidx/fragment/app/h;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 411
    iget-object v0, p0, Landroidx/fragment/app/j;->c:Landroidx/fragment/app/h;

    if-nez v0, :cond_0

    .line 412
    sget-object v0, Landroidx/fragment/app/j;->a:Landroidx/fragment/app/h;

    iput-object v0, p0, Landroidx/fragment/app/j;->c:Landroidx/fragment/app/h;

    .line 414
    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/j;->c:Landroidx/fragment/app/h;

    return-object p0
.end method

.method public abstract k()Z
.end method
