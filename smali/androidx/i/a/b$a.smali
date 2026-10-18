.class public Landroidx/i/a/b$a;
.super Landroidx/lifecycle/p;
.source "SourceFile"

# interfaces
.implements Landroidx/i/b/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/i/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/lifecycle/p<",
        "TD;>;",
        "Landroidx/i/b/c$c<",
        "TD;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final g:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private final h:Landroidx/i/b/c;
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/i/b/c<",
            "TD;>;"
        }
    .end annotation
.end field

.field private i:Landroidx/lifecycle/j;

.field private j:Landroidx/i/a/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/i/a/b$b<",
            "TD;>;"
        }
    .end annotation
.end field

.field private k:Landroidx/i/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/i/b/c<",
            "TD;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILandroid/os/Bundle;Landroidx/i/b/c;Landroidx/i/b/c;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroidx/i/b/c;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p4    # Landroidx/i/b/c;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Landroidx/i/b/c<",
            "TD;>;",
            "Landroidx/i/b/c<",
            "TD;>;)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Landroidx/lifecycle/p;-><init>()V

    .line 62
    iput p1, p0, Landroidx/i/a/b$a;->a:I

    .line 63
    iput-object p2, p0, Landroidx/i/a/b$a;->g:Landroid/os/Bundle;

    .line 64
    iput-object p3, p0, Landroidx/i/a/b$a;->h:Landroidx/i/b/c;

    .line 65
    iput-object p4, p0, Landroidx/i/a/b$a;->k:Landroidx/i/b/c;

    .line 66
    iget-object p2, p0, Landroidx/i/a/b$a;->h:Landroidx/i/b/c;

    invoke-virtual {p2, p1, p0}, Landroidx/i/b/c;->a(ILandroidx/i/b/c$c;)V

    return-void
.end method


# virtual methods
.method a(Landroidx/lifecycle/j;Landroidx/i/a/a$a;)Landroidx/i/b/c;
    .locals 2
    .param p1    # Landroidx/lifecycle/j;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/i/a/a$a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/j;",
            "Landroidx/i/a/a$a<",
            "TD;>;)",
            "Landroidx/i/b/c<",
            "TD;>;"
        }
    .end annotation

    .line 98
    new-instance v0, Landroidx/i/a/b$b;

    iget-object v1, p0, Landroidx/i/a/b$a;->h:Landroidx/i/b/c;

    invoke-direct {v0, v1, p2}, Landroidx/i/a/b$b;-><init>(Landroidx/i/b/c;Landroidx/i/a/a$a;)V

    .line 100
    invoke-virtual {p0, p1, v0}, Landroidx/i/a/b$a;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/q;)V

    .line 102
    iget-object p2, p0, Landroidx/i/a/b$a;->j:Landroidx/i/a/b$b;

    if-eqz p2, :cond_0

    .line 103
    iget-object p2, p0, Landroidx/i/a/b$a;->j:Landroidx/i/a/b$b;

    invoke-virtual {p0, p2}, Landroidx/i/a/b$a;->b(Landroidx/lifecycle/q;)V

    .line 105
    :cond_0
    iput-object p1, p0, Landroidx/i/a/b$a;->i:Landroidx/lifecycle/j;

    .line 106
    iput-object v0, p0, Landroidx/i/a/b$a;->j:Landroidx/i/a/b$b;

    .line 107
    iget-object p0, p0, Landroidx/i/a/b$a;->h:Landroidx/i/b/c;

    return-object p0
.end method

.method a(Z)Landroidx/i/b/c;
    .locals 3
    .annotation build Landroidx/annotation/ae;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroidx/i/b/c<",
            "TD;>;"
        }
    .end annotation

    .line 149
    sget-boolean v0, Landroidx/i/a/b;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Destroying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    iget-object v0, p0, Landroidx/i/a/b$a;->h:Landroidx/i/b/c;

    invoke-virtual {v0}, Landroidx/i/b/c;->y()Z

    .line 152
    iget-object v0, p0, Landroidx/i/a/b$a;->h:Landroidx/i/b/c;

    invoke-virtual {v0}, Landroidx/i/b/c;->B()V

    .line 154
    iget-object v0, p0, Landroidx/i/a/b$a;->j:Landroidx/i/a/b$b;

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0, v0}, Landroidx/i/a/b$a;->b(Landroidx/lifecycle/q;)V

    if-eqz p1, :cond_1

    .line 158
    invoke-virtual {v0}, Landroidx/i/a/b$b;->b()V

    .line 162
    :cond_1
    iget-object v1, p0, Landroidx/i/a/b$a;->h:Landroidx/i/b/c;

    invoke-virtual {v1, p0}, Landroidx/i/b/c;->a(Landroidx/i/b/c$c;)V

    if-eqz v0, :cond_2

    .line 163
    invoke-virtual {v0}, Landroidx/i/a/b$b;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    .line 164
    :cond_3
    iget-object p1, p0, Landroidx/i/a/b$a;->h:Landroidx/i/b/c;

    invoke-virtual {p1}, Landroidx/i/b/c;->D()V

    .line 165
    iget-object p0, p0, Landroidx/i/a/b$a;->k:Landroidx/i/b/c;

    return-object p0

    .line 167
    :cond_4
    iget-object p0, p0, Landroidx/i/a/b$a;->h:Landroidx/i/b/c;

    return-object p0
.end method

.method protected a()V
    .locals 3

    .line 76
    sget-boolean v0, Landroidx/i/a/b;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Starting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    iget-object p0, p0, Landroidx/i/a/b$a;->h:Landroidx/i/b/c;

    invoke-virtual {p0}, Landroidx/i/b/c;->x()V

    return-void
.end method

.method public a(Landroidx/i/b/c;Ljava/lang/Object;)V
    .locals 2
    .param p1    # Landroidx/i/b/c;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/i/b/c<",
            "TD;>;TD;)V"
        }
    .end annotation

    .line 172
    sget-boolean p1, Landroidx/i/a/b;->b:Z

    if-eqz p1, :cond_0

    const-string p1, "LoaderManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadComplete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 174
    invoke-virtual {p0, p2}, Landroidx/i/a/b$a;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 179
    :cond_1
    sget-boolean p1, Landroidx/i/a/b;->b:Z

    if-eqz p1, :cond_2

    const-string p1, "LoaderManager"

    const-string v0, "onLoadComplete was incorrectly called on a background thread"

    .line 180
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_2
    invoke-virtual {p0, p2}, Landroidx/i/a/b$a;->a(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 212
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroidx/i/a/b$a;->a:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mArgs="

    .line 213
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/i/a/b$a;->g:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mLoader="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/i/a/b$a;->h:Landroidx/i/b/c;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 215
    iget-object v0, p0, Landroidx/i/a/b$a;->h:Landroidx/i/b/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroidx/i/b/c;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 216
    iget-object p2, p0, Landroidx/i/a/b$a;->j:Landroidx/i/a/b$b;

    if-eqz p2, :cond_0

    .line 217
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mCallbacks="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/i/a/b$a;->j:Landroidx/i/a/b$b;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 218
    iget-object p2, p0, Landroidx/i/a/b$a;->j:Landroidx/i/a/b$b;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, p3}, Landroidx/i/a/b$b;->a(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 220
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mData="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Landroidx/i/a/b$a;->g()Landroidx/i/b/c;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/i/a/b$a;->b()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroidx/i/b/c;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 220
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mStarted="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Landroidx/i/a/b$a;->f()Z

    move-result p0

    .line 222
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public b(Landroidx/lifecycle/q;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/q;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/q<",
            "-TD;>;)V"
        }
    .end annotation

    .line 134
    invoke-super {p0, p1}, Landroidx/lifecycle/p;->b(Landroidx/lifecycle/q;)V

    const/4 p1, 0x0

    .line 136
    iput-object p1, p0, Landroidx/i/a/b$a;->i:Landroidx/lifecycle/j;

    .line 137
    iput-object p1, p0, Landroidx/i/a/b$a;->j:Landroidx/i/a/b$b;

    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .line 189
    invoke-super {p0, p1}, Landroidx/lifecycle/p;->b(Ljava/lang/Object;)V

    .line 191
    iget-object p1, p0, Landroidx/i/a/b$a;->k:Landroidx/i/b/c;

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Landroidx/i/a/b$a;->k:Landroidx/i/b/c;

    invoke-virtual {p1}, Landroidx/i/b/c;->D()V

    const/4 p1, 0x0

    .line 193
    iput-object p1, p0, Landroidx/i/a/b$a;->k:Landroidx/i/b/c;

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 3

    .line 82
    sget-boolean v0, Landroidx/i/a/b;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Stopping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-object p0, p0, Landroidx/i/a/b$a;->h:Landroidx/i/b/c;

    invoke-virtual {p0}, Landroidx/i/b/c;->A()V

    return-void
.end method

.method g()Landroidx/i/b/c;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/i/b/c<",
            "TD;>;"
        }
    .end annotation

    .line 71
    iget-object p0, p0, Landroidx/i/a/b$a;->h:Landroidx/i/b/c;

    return-object p0
.end method

.method h()V
    .locals 2

    .line 111
    iget-object v0, p0, Landroidx/i/a/b$a;->i:Landroidx/lifecycle/j;

    .line 112
    iget-object v1, p0, Landroidx/i/a/b$a;->j:Landroidx/i/a/b$b;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 118
    invoke-super {p0, v1}, Landroidx/lifecycle/p;->b(Landroidx/lifecycle/q;)V

    .line 119
    invoke-virtual {p0, v0, v1}, Landroidx/i/a/b$a;->a(Landroidx/lifecycle/j;Landroidx/lifecycle/q;)V

    :cond_0
    return-void
.end method

.method i()Z
    .locals 2

    .line 125
    invoke-virtual {p0}, Landroidx/i/a/b$a;->f()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 129
    :cond_0
    iget-object v0, p0, Landroidx/i/a/b$a;->j:Landroidx/i/a/b$b;

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/i/a/b$a;->j:Landroidx/i/a/b$b;

    invoke-virtual {p0}, Landroidx/i/a/b$b;->a()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderInfo{"

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    .line 202
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget v1, p0, Landroidx/i/a/b$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " : "

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object p0, p0, Landroidx/i/a/b$a;->h:Landroidx/i/b/c;

    invoke-static {p0, v0}, Landroidx/core/m/c;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string p0, "}}"

    .line 206
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
