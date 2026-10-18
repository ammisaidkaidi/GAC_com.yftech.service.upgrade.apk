.class public Landroidx/activity/b;
.super Landroidx/core/app/j;
.source "SourceFile"

# interfaces
.implements Landroidx/activity/d;
.implements Landroidx/lifecycle/j;
.implements Landroidx/lifecycle/y;
.implements Landroidx/savedstate/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/lifecycle/k;

.field private final b:Landroidx/savedstate/c;

.field private c:Landroidx/lifecycle/x;

.field private final d:Landroidx/activity/OnBackPressedDispatcher;

.field private e:I
    .annotation build Landroidx/annotation/ac;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 84
    invoke-direct {p0}, Landroidx/core/app/j;-><init>()V

    .line 61
    new-instance v0, Landroidx/lifecycle/k;

    invoke-direct {v0, p0}, Landroidx/lifecycle/k;-><init>(Landroidx/lifecycle/j;)V

    iput-object v0, p0, Landroidx/activity/b;->a:Landroidx/lifecycle/k;

    .line 63
    invoke-static {p0}, Landroidx/savedstate/c;->a(Landroidx/savedstate/d;)Landroidx/savedstate/c;

    move-result-object v0

    iput-object v0, p0, Landroidx/activity/b;->b:Landroidx/savedstate/c;

    .line 68
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher;

    new-instance v1, Landroidx/activity/b$1;

    invoke-direct {v1, p0}, Landroidx/activity/b$1;-><init>(Landroidx/activity/b;)V

    invoke-direct {v0, v1}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroidx/activity/b;->d:Landroidx/activity/OnBackPressedDispatcher;

    .line 85
    invoke-virtual {p0}, Landroidx/activity/b;->c()Landroidx/lifecycle/g;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 94
    invoke-virtual {p0}, Landroidx/activity/b;->c()Landroidx/lifecycle/g;

    move-result-object v0

    new-instance v2, Landroidx/activity/ComponentActivity$2;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$2;-><init>(Landroidx/activity/b;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/i;)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroidx/activity/b;->c()Landroidx/lifecycle/g;

    move-result-object v0

    new-instance v2, Landroidx/activity/ComponentActivity$3;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$3;-><init>(Landroidx/activity/b;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/i;)V

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_1

    .line 121
    invoke-virtual {p0}, Landroidx/activity/b;->c()Landroidx/lifecycle/g;

    move-result-object v0

    new-instance v1, Landroidx/activity/ImmLeaksCleaner;

    invoke-direct {v1, p0}, Landroidx/activity/ImmLeaksCleaner;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/g;->a(Landroidx/lifecycle/i;)V

    :cond_1
    return-void

    .line 88
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getLifecycle() returned null in ComponentActivity\'s constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ac;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/n;
    .end annotation

    .line 137
    invoke-direct {p0}, Landroidx/activity/b;-><init>()V

    .line 138
    iput p1, p0, Landroidx/activity/b;->e:I

    return-void
.end method

.method static synthetic a(Landroidx/activity/b;)V
    .locals 0

    .line 50
    invoke-super {p0}, Landroidx/core/app/j;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public a_()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public b()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    invoke-virtual {p0}, Landroidx/activity/b;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/activity/b$a;

    if-eqz p0, :cond_0

    .line 222
    iget-object p0, p0, Landroidx/activity/b$a;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public c()Landroidx/lifecycle/g;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 241
    iget-object p0, p0, Landroidx/activity/b;->a:Landroidx/lifecycle/k;

    return-object p0
.end method

.method public d()Landroidx/lifecycle/x;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 257
    invoke-virtual {p0}, Landroidx/activity/b;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 261
    iget-object v0, p0, Landroidx/activity/b;->c:Landroidx/lifecycle/x;

    if-nez v0, :cond_1

    .line 263
    invoke-virtual {p0}, Landroidx/activity/b;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/activity/b$a;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, v0, Landroidx/activity/b$a;->b:Landroidx/lifecycle/x;

    iput-object v0, p0, Landroidx/activity/b;->c:Landroidx/lifecycle/x;

    .line 268
    :cond_0
    iget-object v0, p0, Landroidx/activity/b;->c:Landroidx/lifecycle/x;

    if-nez v0, :cond_1

    .line 269
    new-instance v0, Landroidx/lifecycle/x;

    invoke-direct {v0}, Landroidx/lifecycle/x;-><init>()V

    iput-object v0, p0, Landroidx/activity/b;->c:Landroidx/lifecycle/x;

    .line 272
    :cond_1
    iget-object p0, p0, Landroidx/activity/b;->c:Landroidx/lifecycle/x;

    return-object p0

    .line 258
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e()Landroidx/activity/OnBackPressedDispatcher;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 297
    iget-object p0, p0, Landroidx/activity/b;->d:Landroidx/activity/OnBackPressedDispatcher;

    return-object p0
.end method

.method public final f()Landroidx/savedstate/b;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 303
    iget-object p0, p0, Landroidx/activity/b;->b:Landroidx/savedstate/c;

    invoke-virtual {p0}, Landroidx/savedstate/c;->a()Landroidx/savedstate/b;

    move-result-object p0

    return-object p0
.end method

.method public onBackPressed()V
    .locals 0
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .line 286
    iget-object p0, p0, Landroidx/activity/b;->d:Landroidx/activity/OnBackPressedDispatcher;

    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher;->b()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 149
    invoke-super {p0, p1}, Landroidx/core/app/j;->onCreate(Landroid/os/Bundle;)V

    .line 150
    iget-object v0, p0, Landroidx/activity/b;->b:Landroidx/savedstate/c;

    invoke-virtual {v0, p1}, Landroidx/savedstate/c;->a(Landroid/os/Bundle;)V

    .line 151
    invoke-static {p0}, Landroidx/lifecycle/t;->a(Landroid/app/Activity;)V

    .line 152
    iget p1, p0, Landroidx/activity/b;->e:I

    if-eqz p1, :cond_0

    .line 153
    iget p1, p0, Landroidx/activity/b;->e:I

    invoke-virtual {p0, p1}, Landroidx/activity/b;->setContentView(I)V

    :cond_0
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 176
    invoke-virtual {p0}, Landroidx/activity/b;->a_()Ljava/lang/Object;

    move-result-object v0

    .line 178
    iget-object v1, p0, Landroidx/activity/b;->c:Landroidx/lifecycle/x;

    if-nez v1, :cond_0

    .line 183
    invoke-virtual {p0}, Landroidx/activity/b;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/activity/b$a;

    if-eqz p0, :cond_0

    .line 185
    iget-object v1, p0, Landroidx/activity/b$a;->b:Landroidx/lifecycle/x;

    :cond_0
    if-nez v1, :cond_1

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 193
    :cond_1
    new-instance p0, Landroidx/activity/b$a;

    invoke-direct {p0}, Landroidx/activity/b$a;-><init>()V

    .line 194
    iput-object v0, p0, Landroidx/activity/b$a;->a:Ljava/lang/Object;

    .line 195
    iput-object v1, p0, Landroidx/activity/b$a;->b:Landroidx/lifecycle/x;

    return-object p0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/i;
    .end annotation

    .line 160
    invoke-virtual {p0}, Landroidx/activity/b;->c()Landroidx/lifecycle/g;

    move-result-object v0

    .line 161
    instance-of v1, v0, Landroidx/lifecycle/k;

    if-eqz v1, :cond_0

    .line 162
    check-cast v0, Landroidx/lifecycle/k;

    sget-object v1, Landroidx/lifecycle/g$b;->c:Landroidx/lifecycle/g$b;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/k;->b(Landroidx/lifecycle/g$b;)V

    .line 164
    :cond_0
    invoke-super {p0, p1}, Landroidx/core/app/j;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 165
    iget-object p0, p0, Landroidx/activity/b;->b:Landroidx/savedstate/c;

    invoke-virtual {p0, p1}, Landroidx/savedstate/c;->b(Landroid/os/Bundle;)V

    return-void
.end method
