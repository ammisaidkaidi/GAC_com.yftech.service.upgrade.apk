.class Lcom/yftech/service/upgrade/adapter/a/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/RecoverySystem$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/service/upgrade/adapter/a/b/a;->a(Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yftech/service/upgrade/adapter/a/b/a;


# direct methods
.method constructor <init>(Lcom/yftech/service/upgrade/adapter/a/b/a;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/yftech/service/upgrade/adapter/a/b/a$1;->a:Lcom/yftech/service/upgrade/adapter/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/yftech/service/upgrade/adapter/a/b/a$1;->a:Lcom/yftech/service/upgrade/adapter/a/b/a;

    invoke-virtual {p0, p1}, Lcom/yftech/service/upgrade/adapter/a/b/a;->b(I)V

    return-void
.end method
