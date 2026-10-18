.class public Landroidx/lifecycle/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/w$a;,
        Landroidx/lifecycle/w$d;,
        Landroidx/lifecycle/w$c;,
        Landroidx/lifecycle/w$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "androidx.lifecycle.ViewModelProvider.DefaultKey"


# instance fields
.field private final b:Landroidx/lifecycle/w$b;

.field private final c:Landroidx/lifecycle/x;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/x;Landroidx/lifecycle/w$b;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/x;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/w$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p2, p0, Landroidx/lifecycle/w;->b:Landroidx/lifecycle/w$b;

    .line 107
    iput-object p1, p0, Landroidx/lifecycle/w;->c:Landroidx/lifecycle/x;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/y;Landroidx/lifecycle/w$b;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/y;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/w$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 94
    invoke-interface {p1}, Landroidx/lifecycle/y;->d()Landroidx/lifecycle/x;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroidx/lifecycle/w;-><init>(Landroidx/lifecycle/x;Landroidx/lifecycle/w$b;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/v;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/v;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 126
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroidx/lifecycle/w;->a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object p0

    return-object p0

    .line 128
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/v;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/lifecycle/v;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Landroidx/lifecycle/w;->c:Landroidx/lifecycle/x;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/x;->a(Ljava/lang/String;)Landroidx/lifecycle/v;

    move-result-object v0

    .line 152
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Landroidx/lifecycle/w;->b:Landroidx/lifecycle/w$b;

    instance-of v0, v0, Landroidx/lifecycle/w$c;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Landroidx/lifecycle/w;->b:Landroidx/lifecycle/w$b;

    check-cast v0, Landroidx/lifecycle/w$c;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/w$c;->a(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object p2

    goto :goto_0

    .line 164
    :cond_1
    iget-object v0, p0, Landroidx/lifecycle/w;->b:Landroidx/lifecycle/w$b;

    invoke-interface {v0, p2}, Landroidx/lifecycle/w$b;->a(Ljava/lang/Class;)Landroidx/lifecycle/v;

    move-result-object p2

    .line 166
    :goto_0
    iget-object p0, p0, Landroidx/lifecycle/w;->c:Landroidx/lifecycle/x;

    invoke-virtual {p0, p1, p2}, Landroidx/lifecycle/x;->a(Ljava/lang/String;Landroidx/lifecycle/v;)V

    return-object p2
.end method
