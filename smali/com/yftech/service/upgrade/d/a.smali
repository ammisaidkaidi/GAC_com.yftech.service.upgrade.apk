.class public Lcom/yftech/service/upgrade/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yftech/service/upgrade/adapter/c$a;
.implements Lcom/yftech/service/upgrade/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/yftech/service/upgrade/adapter/c;

.field private c:Lcom/yftech/service/upgrade/b$a;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 26
    iput v0, p0, Lcom/yftech/service/upgrade/d/a;->d:I

    .line 27
    iput v0, p0, Lcom/yftech/service/upgrade/d/a;->e:I

    .line 30
    iput-object p1, p0, Lcom/yftech/service/upgrade/d/a;->a:Landroid/content/Context;

    .line 31
    iget-object p1, p0, Lcom/yftech/service/upgrade/d/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/yftech/service/upgrade/adapter/a;->a(Landroid/content/Context;)Lcom/yftech/service/upgrade/adapter/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/service/upgrade/adapter/a;->d()Lcom/yftech/service/upgrade/adapter/c;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/service/upgrade/d/a;->b:Lcom/yftech/service/upgrade/adapter/c;

    .line 32
    iget-object p1, p0, Lcom/yftech/service/upgrade/d/a;->b:Lcom/yftech/service/upgrade/adapter/c;

    invoke-interface {p1, p0}, Lcom/yftech/service/upgrade/adapter/c;->a(Lcom/yftech/service/upgrade/adapter/c$a;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public a(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/yftech/service/upgrade/d/a;->c:Lcom/yftech/service/upgrade/b$a;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yftech/service/upgrade/d/a;->d:I

    if-eq p1, v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/yftech/service/upgrade/d/a;->c:Lcom/yftech/service/upgrade/b$a;

    invoke-interface {v0, p0, p1}, Lcom/yftech/service/upgrade/b$a;->a(Lcom/yftech/service/upgrade/b;I)V

    .line 70
    :cond_0
    iput p1, p0, Lcom/yftech/service/upgrade/d/a;->d:I

    return-void
.end method

.method public a(Lcom/yftech/service/upgrade/b$a;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/yftech/service/upgrade/d/a;->c:Lcom/yftech/service/upgrade/b$a;

    return-void
.end method

.method public a(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    const-string p1, "OS upgrade state:"

    .line 83
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  last state: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/yftech/service/upgrade/d/a;->d:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  last progress: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/yftech/service/upgrade/d/a;->e:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "OS upgrade adapter:"

    .line 86
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    iget-object p0, p0, Lcom/yftech/service/upgrade/d/a;->b:Lcom/yftech/service/upgrade/adapter/c;

    invoke-interface {p0}, Lcom/yftech/service/upgrade/adapter/c;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public a([Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 42
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iget-object p0, p0, Lcom/yftech/service/upgrade/d/a;->b:Lcom/yftech/service/upgrade/adapter/c;

    invoke-interface {p0, p1}, Lcom/yftech/service/upgrade/adapter/c;->a([Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "checkUpgradeFile, path list is empty"

    .line 43
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public b(I)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/yftech/service/upgrade/d/a;->c:Lcom/yftech/service/upgrade/b$a;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/yftech/service/upgrade/d/a;->e:I

    if-eq p1, v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/yftech/service/upgrade/d/a;->c:Lcom/yftech/service/upgrade/b$a;

    invoke-interface {v0, p0, p1}, Lcom/yftech/service/upgrade/b$a;->b(Lcom/yftech/service/upgrade/b;I)V

    .line 78
    :cond_0
    iput p1, p0, Lcom/yftech/service/upgrade/d/a;->e:I

    return-void
.end method

.method public b([Ljava/lang/String;)Z
    .locals 1

    const v0, 0x7fffffff

    .line 51
    iput v0, p0, Lcom/yftech/service/upgrade/d/a;->e:I

    .line 52
    iput v0, p0, Lcom/yftech/service/upgrade/d/a;->d:I

    if-eqz p1, :cond_1

    .line 53
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    iget-object p0, p0, Lcom/yftech/service/upgrade/d/a;->b:Lcom/yftech/service/upgrade/adapter/c;

    invoke-interface {p0, p1}, Lcom/yftech/service/upgrade/adapter/c;->b([Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const-string p0, "startUpgrade, path list is empty"

    .line 54
    invoke-static {p0}, Lcom/yftech/service/upgrade/g/b;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
