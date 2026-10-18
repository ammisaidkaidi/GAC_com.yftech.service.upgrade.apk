.class public Landroidx/appcompat/app/i;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/app/f;


# instance fields
.field private a:Landroidx/appcompat/app/g;

.field private final b:Landroidx/core/n/j$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/i;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 57
    invoke-static {p1, p2}, Landroidx/appcompat/app/i;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 45
    new-instance v0, Landroidx/appcompat/app/i$1;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/i$1;-><init>(Landroidx/appcompat/app/i;)V

    iput-object v0, p0, Landroidx/appcompat/app/i;->b:Landroidx/core/n/j$a;

    .line 59
    invoke-virtual {p0}, Landroidx/appcompat/app/i;->c()Landroidx/appcompat/app/g;

    move-result-object p0

    .line 61
    invoke-static {p1, p2}, Landroidx/appcompat/app/i;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/g;->a(I)V

    const/4 p1, 0x0

    .line 67
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/g;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 45
    new-instance p1, Landroidx/appcompat/app/i$1;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/i$1;-><init>(Landroidx/appcompat/app/i;)V

    iput-object p1, p0, Landroidx/appcompat/app/i;->b:Landroidx/core/n/j$a;

    return-void
.end method

.method private static a(Landroid/content/Context;I)I
    .locals 2

    if-nez p1, :cond_0

    .line 185
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 186
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v0, Landroidx/appcompat/a$b;->dialogTheme:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 187
    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    :cond_0
    return p1
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Landroidx/appcompat/view/b;)V
    .locals 0

    return-void
.end method

.method a(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 208
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 129
    invoke-virtual {p0}, Landroidx/appcompat/app/i;->c()Landroidx/appcompat/app/g;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/g;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public b()Landroidx/appcompat/app/a;
    .locals 0

    .line 90
    invoke-virtual {p0}, Landroidx/appcompat/app/i;->c()Landroidx/appcompat/app/g;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/g;->a()Landroidx/appcompat/app/a;

    move-result-object p0

    return-object p0
.end method

.method public b(Landroidx/appcompat/view/b;)V
    .locals 0

    return-void
.end method

.method public c()Landroidx/appcompat/app/g;
    .locals 1

    .line 176
    iget-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/app/g;

    if-nez v0, :cond_0

    .line 177
    invoke-static {p0, p0}, Landroidx/appcompat/app/g;->a(Landroid/app/Dialog;Landroidx/appcompat/app/f;)Landroidx/appcompat/app/g;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/app/g;

    .line 179
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/i;->a:Landroidx/appcompat/app/g;

    return-object p0
.end method

.method public dismiss()V
    .locals 0

    .line 140
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 142
    invoke-virtual {p0}, Landroidx/appcompat/app/i;->c()Landroidx/appcompat/app/g;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/g;->g()V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 213
    invoke-virtual {p0}, Landroidx/appcompat/app/i;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 214
    iget-object v1, p0, Landroidx/appcompat/app/i;->b:Landroidx/core/n/j$a;

    invoke-static {v1, v0, p0, p1}, Landroidx/core/n/j;->a(Landroidx/core/n/j$a;Landroid/view/View;Landroid/view/Window$Callback;Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public e(I)Z
    .locals 0

    .line 160
    invoke-virtual {p0}, Landroidx/appcompat/app/i;->c()Landroidx/appcompat/app/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/g;->d(I)Z

    move-result p0

    return p0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/w;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 112
    invoke-virtual {p0}, Landroidx/appcompat/app/i;->c()Landroidx/appcompat/app/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/g;->b(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public invalidateOptionsMenu()V
    .locals 0
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Landroidx/appcompat/app/i;->c()Landroidx/appcompat/app/g;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/g;->f()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 77
    invoke-virtual {p0}, Landroidx/appcompat/app/i;->c()Landroidx/appcompat/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/g;->i()V

    .line 78
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Landroidx/appcompat/app/i;->c()Landroidx/appcompat/app/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/g;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 134
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 135
    invoke-virtual {p0}, Landroidx/appcompat/app/i;->c()Landroidx/appcompat/app/g;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/g;->d()V

    return-void
.end method

.method public setContentView(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ac;
        .end annotation
    .end param

    .line 95
    invoke-virtual {p0}, Landroidx/appcompat/app/i;->c()Landroidx/appcompat/app/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/g;->c(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    .line 100
    invoke-virtual {p0}, Landroidx/appcompat/app/i;->c()Landroidx/appcompat/app/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/g;->a(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 105
    invoke-virtual {p0}, Landroidx/appcompat/app/i;->c()Landroidx/appcompat/app/g;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/g;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 124
    invoke-virtual {p0}, Landroidx/appcompat/app/i;->c()Landroidx/appcompat/app/g;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/i;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/g;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0}, Landroidx/appcompat/app/i;->c()Landroidx/appcompat/app/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/g;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
