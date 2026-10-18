.class Landroidx/fragment/app/k$6;
.super Landroidx/fragment/app/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/k;->j()Landroidx/fragment/app/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/k;


# direct methods
.method constructor <init>(Landroidx/fragment/app/k;)V
    .locals 0

    .line 2845
    iput-object p1, p0, Landroidx/fragment/app/k$6;->a:Landroidx/fragment/app/k;

    invoke-direct {p0}, Landroidx/fragment/app/h;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/d;
    .locals 1
    .param p1    # Ljava/lang/ClassLoader;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 2851
    iget-object p1, p0, Landroidx/fragment/app/k$6;->a:Landroidx/fragment/app/k;

    iget-object p1, p1, Landroidx/fragment/app/k;->t:Landroidx/fragment/app/i;

    iget-object p0, p0, Landroidx/fragment/app/k$6;->a:Landroidx/fragment/app/k;

    iget-object p0, p0, Landroidx/fragment/app/k;->t:Landroidx/fragment/app/i;

    invoke-virtual {p0}, Landroidx/fragment/app/i;->l()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroidx/fragment/app/i;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/d;

    move-result-object p0

    return-object p0
.end method
