.class public Landroidx/core/app/v;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/v$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String; = "name"

.field private static final h:Ljava/lang/String; = "icon"

.field private static final i:Ljava/lang/String; = "uri"

.field private static final j:Ljava/lang/String; = "key"

.field private static final k:Ljava/lang/String; = "isBot"

.field private static final l:Ljava/lang/String; = "isImportant"


# instance fields
.field a:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field b:Landroidx/core/graphics/drawable/IconCompat;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field e:Z

.field f:Z


# direct methods
.method constructor <init>(Landroidx/core/app/v$a;)V
    .locals 1

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iget-object v0, p1, Landroidx/core/app/v$a;->a:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroidx/core/app/v;->a:Ljava/lang/CharSequence;

    .line 117
    iget-object v0, p1, Landroidx/core/app/v$a;->b:Landroidx/core/graphics/drawable/IconCompat;

    iput-object v0, p0, Landroidx/core/app/v;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 118
    iget-object v0, p1, Landroidx/core/app/v$a;->c:Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/app/v;->c:Ljava/lang/String;

    .line 119
    iget-object v0, p1, Landroidx/core/app/v$a;->d:Ljava/lang/String;

    iput-object v0, p0, Landroidx/core/app/v;->d:Ljava/lang/String;

    .line 120
    iget-boolean v0, p1, Landroidx/core/app/v$a;->e:Z

    iput-boolean v0, p0, Landroidx/core/app/v;->e:Z

    .line 121
    iget-boolean p1, p1, Landroidx/core/app/v$a;->f:Z

    iput-boolean p1, p0, Landroidx/core/app/v;->f:Z

    return-void
.end method

.method public static a(Landroid/app/Person;)Landroidx/core/app/v;
    .locals 2
    .param p0    # Landroid/app/Person;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation build Landroidx/annotation/am;
        a = 0x1c
    .end annotation

    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 88
    new-instance v0, Landroidx/core/app/v$a;

    invoke-direct {v0}, Landroidx/core/app/v$a;-><init>()V

    .line 89
    invoke-virtual {p0}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/v$a;->a(Ljava/lang/CharSequence;)Landroidx/core/app/v$a;

    move-result-object v0

    .line 91
    invoke-virtual {p0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/app/Person;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v1}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 90
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/core/app/v$a;->a(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/v$a;

    move-result-object v0

    .line 94
    invoke-virtual {p0}, Landroid/app/Person;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/v$a;->a(Ljava/lang/String;)Landroidx/core/app/v$a;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Landroid/app/Person;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/v$a;->b(Ljava/lang/String;)Landroidx/core/app/v$a;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Landroid/app/Person;->isBot()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/v$a;->a(Z)Landroidx/core/app/v$a;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Landroid/app/Person;->isImportant()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/v$a;->b(Z)Landroidx/core/app/v$a;

    move-result-object p0

    .line 98
    invoke-virtual {p0}, Landroidx/core/app/v$a;->a()Landroidx/core/app/v;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/os/Bundle;)Landroidx/core/app/v;
    .locals 3
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    const-string v0, "icon"

    .line 48
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 49
    new-instance v1, Landroidx/core/app/v$a;

    invoke-direct {v1}, Landroidx/core/app/v$a;-><init>()V

    const-string v2, "name"

    .line 50
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/core/app/v$a;->a(Ljava/lang/CharSequence;)Landroidx/core/app/v$a;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 51
    invoke-static {v0}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/os/Bundle;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/core/app/v$a;->a(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/v$a;

    move-result-object v0

    const-string v1, "uri"

    .line 52
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/v$a;->a(Ljava/lang/String;)Landroidx/core/app/v$a;

    move-result-object v0

    const-string v1, "key"

    .line 53
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/v$a;->b(Ljava/lang/String;)Landroidx/core/app/v$a;

    move-result-object v0

    const-string v1, "isBot"

    .line 54
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/v$a;->a(Z)Landroidx/core/app/v$a;

    move-result-object v0

    const-string v1, "isImportant"

    .line 55
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/v$a;->b(Z)Landroidx/core/app/v$a;

    move-result-object p0

    .line 56
    invoke-virtual {p0}, Landroidx/core/app/v$a;->a()Landroidx/core/app/v;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/os/PersistableBundle;)Landroidx/core/app/v;
    .locals 2
    .param p0    # Landroid/os/PersistableBundle;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation build Landroidx/annotation/am;
        a = 0x16
    .end annotation

    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 70
    new-instance v0, Landroidx/core/app/v$a;

    invoke-direct {v0}, Landroidx/core/app/v$a;-><init>()V

    const-string v1, "name"

    .line 71
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/v$a;->a(Ljava/lang/CharSequence;)Landroidx/core/app/v$a;

    move-result-object v0

    const-string v1, "uri"

    .line 72
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/v$a;->a(Ljava/lang/String;)Landroidx/core/app/v$a;

    move-result-object v0

    const-string v1, "key"

    .line 73
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/v$a;->b(Ljava/lang/String;)Landroidx/core/app/v$a;

    move-result-object v0

    const-string v1, "isBot"

    .line 74
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/v$a;->a(Z)Landroidx/core/app/v$a;

    move-result-object v0

    const-string v1, "isImportant"

    .line 75
    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/app/v$a;->b(Z)Landroidx/core/app/v$a;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroidx/core/app/v$a;->a()Landroidx/core/app/v;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "name"

    .line 131
    iget-object v2, p0, Landroidx/core/app/v;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "icon"

    .line 132
    iget-object v2, p0, Landroidx/core/app/v;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/core/app/v;->b:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v2}, Landroidx/core/graphics/drawable/IconCompat;->g()Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v1, "uri"

    .line 133
    iget-object v2, p0, Landroidx/core/app/v;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key"

    .line 134
    iget-object v2, p0, Landroidx/core/app/v;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isBot"

    .line 135
    iget-boolean v2, p0, Landroidx/core/app/v;->e:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isImportant"

    .line 136
    iget-boolean p0, p0, Landroidx/core/app/v;->f:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public b()Landroid/os/PersistableBundle;
    .locals 3
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation build Landroidx/annotation/am;
        a = 0x16
    .end annotation

    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 151
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "name"

    .line 152
    iget-object v2, p0, Landroidx/core/app/v;->a:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroidx/core/app/v;->a:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uri"

    .line 153
    iget-object v2, p0, Landroidx/core/app/v;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key"

    .line 154
    iget-object v2, p0, Landroidx/core/app/v;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "isBot"

    .line 155
    iget-boolean v2, p0, Landroidx/core/app/v;->e:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "isImportant"

    .line 156
    iget-boolean p0, p0, Landroidx/core/app/v;->f:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public c()Landroidx/core/app/v$a;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 163
    new-instance v0, Landroidx/core/app/v$a;

    invoke-direct {v0, p0}, Landroidx/core/app/v$a;-><init>(Landroidx/core/app/v;)V

    return-object v0
.end method

.method public d()Landroid/app/Person;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation build Landroidx/annotation/am;
        a = 0x1c
    .end annotation

    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 175
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    .line 176
    invoke-virtual {p0}, Landroidx/core/app/v;->e()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Landroidx/core/app/v;->f()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroidx/core/app/v;->f()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->f()Landroid/graphics/drawable/Icon;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Landroidx/core/app/v;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 179
    invoke-virtual {p0}, Landroidx/core/app/v;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setKey(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    .line 180
    invoke-virtual {p0}, Landroidx/core/app/v;->i()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Person$Builder;->setBot(Z)Landroid/app/Person$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Landroidx/core/app/v;->j()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/Person$Builder;->setImportant(Z)Landroid/app/Person$Builder;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 191
    iget-object p0, p0, Landroidx/core/app/v;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public f()Landroidx/core/graphics/drawable/IconCompat;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 197
    iget-object p0, p0, Landroidx/core/app/v;->b:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 215
    iget-object p0, p0, Landroidx/core/app/v;->c:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 224
    iget-object p0, p0, Landroidx/core/app/v;->d:Ljava/lang/String;

    return-object p0
.end method

.method public i()Z
    .locals 0

    .line 232
    iget-boolean p0, p0, Landroidx/core/app/v;->e:Z

    return p0
.end method

.method public j()Z
    .locals 0

    .line 240
    iget-boolean p0, p0, Landroidx/core/app/v;->f:Z

    return p0
.end method
