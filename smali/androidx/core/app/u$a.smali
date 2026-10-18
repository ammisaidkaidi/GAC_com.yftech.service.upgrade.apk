.class Landroidx/core/app/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/u$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Ljava/lang/String;

.field final d:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    iput-object p1, p0, Landroidx/core/app/u$a;->a:Ljava/lang/String;

    const/4 p1, 0x0

    .line 785
    iput p1, p0, Landroidx/core/app/u$a;->b:I

    const/4 p1, 0x0

    .line 786
    iput-object p1, p0, Landroidx/core/app/u$a;->c:Ljava/lang/String;

    const/4 p1, 0x1

    .line 787
    iput-boolean p1, p0, Landroidx/core/app/u$a;->d:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 791
    iput-object p1, p0, Landroidx/core/app/u$a;->a:Ljava/lang/String;

    .line 792
    iput p2, p0, Landroidx/core/app/u$a;->b:I

    .line 793
    iput-object p3, p0, Landroidx/core/app/u$a;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 794
    iput-boolean p1, p0, Landroidx/core/app/u$a;->d:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/a;)V
    .locals 2

    .line 799
    iget-boolean v0, p0, Landroidx/core/app/u$a;->d:Z

    if-eqz v0, :cond_0

    .line 800
    iget-object p0, p0, Landroidx/core/app/u$a;->a:Ljava/lang/String;

    invoke-interface {p1, p0}, Landroid/support/v4/app/a;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 802
    :cond_0
    iget-object v0, p0, Landroidx/core/app/u$a;->a:Ljava/lang/String;

    iget v1, p0, Landroidx/core/app/u$a;->b:I

    iget-object p0, p0, Landroidx/core/app/u$a;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p0}, Landroid/support/v4/app/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CancelTask["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "packageName:"

    .line 810
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/app/u$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id:"

    .line 811
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/core/app/u$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tag:"

    .line 812
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/core/app/u$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", all:"

    .line 813
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/core/app/u$a;->d:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 814
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 815
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
