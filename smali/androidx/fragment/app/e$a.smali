.class Landroidx/fragment/app/e$a;
.super Landroidx/fragment/app/i;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/d;
.implements Landroidx/lifecycle/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/fragment/app/i<",
        "Landroidx/fragment/app/e;",
        ">;",
        "Landroidx/activity/d;",
        "Landroidx/lifecycle/y;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/e;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/e;)V
    .locals 0

    .line 871
    iput-object p1, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;

    .line 872
    invoke-direct {p0, p1}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/e;)V

    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 977
    iget-object p0, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/e;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroidx/fragment/app/d;Landroid/content/Intent;I)V
    .locals 0
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 927
    iget-object p0, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/e;->a(Landroidx/fragment/app/d;Landroid/content/Intent;I)V

    return-void
.end method

.method public a(Landroidx/fragment/app/d;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 933
    iget-object p0, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/e;->a(Landroidx/fragment/app/d;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroidx/fragment/app/d;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    move-object v0, p0

    .line 941
    iget-object v0, v0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroidx/fragment/app/e;->a(Landroidx/fragment/app/d;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroidx/fragment/app/d;[Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 948
    iget-object p0, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/fragment/app/e;->a(Landroidx/fragment/app/d;[Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
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

    .line 900
    iget-object p0, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/fragment/app/e;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 0

    .line 982
    iget-object p0, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;

    invoke-virtual {p0}, Landroidx/fragment/app/e;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 983
    invoke-virtual {p0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public a(Landroidx/fragment/app/d;)Z
    .locals 0
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 905
    iget-object p0, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;

    invoke-virtual {p0}, Landroidx/fragment/app/e;->isFinishing()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 954
    iget-object p0, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;

    invoke-static {p0, p1}, Landroidx/core/app/a;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public b()Landroid/view/LayoutInflater;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 911
    iget-object v0, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;

    invoke-virtual {v0}, Landroidx/fragment/app/e;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object p0, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroidx/fragment/app/d;)V
    .locals 0
    .param p1    # Landroidx/fragment/app/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 971
    iget-object p0, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/e;->a(Landroidx/fragment/app/d;)V

    return-void
.end method

.method public c()Landroidx/lifecycle/g;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 882
    iget-object p0, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;

    iget-object p0, p0, Landroidx/fragment/app/e;->g:Landroidx/lifecycle/k;

    return-object p0
.end method

.method public d()Landroidx/lifecycle/x;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 888
    iget-object p0, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;

    invoke-virtual {p0}, Landroidx/fragment/app/e;->d()Landroidx/lifecycle/x;

    move-result-object p0

    return-object p0
.end method

.method public e()Landroidx/activity/OnBackPressedDispatcher;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 894
    iget-object p0, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;

    invoke-virtual {p0}, Landroidx/fragment/app/e;->e()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p0

    return-object p0
.end method

.method public f()Landroidx/fragment/app/e;
    .locals 0

    .line 916
    iget-object p0, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;

    return-object p0
.end method

.method public g()V
    .locals 0

    .line 921
    iget-object p0, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;

    invoke-virtual {p0}, Landroidx/fragment/app/e;->h()V

    return-void
.end method

.method public h()Z
    .locals 0

    .line 960
    iget-object p0, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;

    invoke-virtual {p0}, Landroidx/fragment/app/e;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public i()I
    .locals 0

    .line 965
    iget-object p0, p0, Landroidx/fragment/app/e$a;->a:Landroidx/fragment/app/e;

    invoke-virtual {p0}, Landroidx/fragment/app/e;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 966
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_0
    return p0
.end method

.method public synthetic j()Ljava/lang/Object;
    .locals 0

    .line 868
    invoke-virtual {p0}, Landroidx/fragment/app/e$a;->f()Landroidx/fragment/app/e;

    move-result-object p0

    return-object p0
.end method
