.class public abstract Landroidx/fragment/app/q;
.super Landroidx/l/a/a;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:I = 0x1

.field private static final e:Ljava/lang/String; = "FragmentStatePagerAdapt"

.field private static final f:Z = false


# instance fields
.field private final g:Landroidx/fragment/app/j;

.field private final h:I

.field private i:Landroidx/fragment/app/s;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/d$d;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/d;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroidx/fragment/app/d;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/j;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/j;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, v0}, Landroidx/fragment/app/q;-><init>(Landroidx/fragment/app/j;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/j;I)V
    .locals 2
    .param p1    # Landroidx/fragment/app/j;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 140
    invoke-direct {p0}, Landroidx/l/a/a;-><init>()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Landroidx/fragment/app/q;->i:Landroidx/fragment/app/s;

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/q;->j:Ljava/util/ArrayList;

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/fragment/app/q;->k:Ljava/util/ArrayList;

    .line 107
    iput-object v0, p0, Landroidx/fragment/app/q;->l:Landroidx/fragment/app/d;

    .line 141
    iput-object p1, p0, Landroidx/fragment/app/q;->g:Landroidx/fragment/app/j;

    .line 142
    iput p2, p0, Landroidx/fragment/app/q;->h:I

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Parcelable;
    .locals 5
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 273
    iget-object v0, p0, Landroidx/fragment/app/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 274
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    iget-object v1, p0, Landroidx/fragment/app/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/fragment/app/d$d;

    .line 276
    iget-object v2, p0, Landroidx/fragment/app/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v2, "states"

    .line 277
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 279
    :goto_1
    iget-object v2, p0, Landroidx/fragment/app/q;->k:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 280
    iget-object v2, p0, Landroidx/fragment/app/q;->k:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/d;

    if-eqz v2, :cond_2

    .line 281
    invoke-virtual {v2}, Landroidx/fragment/app/d;->K()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    .line 283
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 285
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 286
    iget-object v4, p0, Landroidx/fragment/app/q;->g:Landroidx/fragment/app/j;

    invoke-virtual {v4, v0, v3, v2}, Landroidx/fragment/app/j;->a(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/d;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public abstract a(I)Landroidx/fragment/app/d;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 167
    iget-object v0, p0, Landroidx/fragment/app/q;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 168
    iget-object v0, p0, Landroidx/fragment/app/q;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    return-object v0

    .line 174
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/q;->i:Landroidx/fragment/app/s;

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Landroidx/fragment/app/q;->g:Landroidx/fragment/app/j;

    invoke-virtual {v0}, Landroidx/fragment/app/j;->a()Landroidx/fragment/app/s;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/q;->i:Landroidx/fragment/app/s;

    .line 178
    :cond_1
    invoke-virtual {p0, p2}, Landroidx/fragment/app/q;->a(I)Landroidx/fragment/app/d;

    move-result-object v0

    .line 180
    iget-object v1, p0, Landroidx/fragment/app/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_2

    .line 181
    iget-object v1, p0, Landroidx/fragment/app/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/d$d;

    if-eqz v1, :cond_2

    .line 183
    invoke-virtual {v0, v1}, Landroidx/fragment/app/d;->a(Landroidx/fragment/app/d$d;)V

    .line 186
    :cond_2
    :goto_0
    iget-object v1, p0, Landroidx/fragment/app/q;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_3

    .line 187
    iget-object v1, p0, Landroidx/fragment/app/q;->k:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 189
    invoke-virtual {v0, v1}, Landroidx/fragment/app/d;->f(Z)V

    .line 190
    iget v2, p0, Landroidx/fragment/app/q;->h:I

    if-nez v2, :cond_4

    .line 191
    invoke-virtual {v0, v1}, Landroidx/fragment/app/d;->g(Z)V

    .line 194
    :cond_4
    iget-object v1, p0, Landroidx/fragment/app/q;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object p2, p0, Landroidx/fragment/app/q;->i:Landroidx/fragment/app/s;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/s;->a(ILandroidx/fragment/app/d;)Landroidx/fragment/app/s;

    .line 197
    iget p1, p0, Landroidx/fragment/app/q;->h:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    .line 198
    iget-object p0, p0, Landroidx/fragment/app/q;->i:Landroidx/fragment/app/s;

    sget-object p1, Landroidx/lifecycle/g$b;->d:Landroidx/lifecycle/g$b;

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/d;Landroidx/lifecycle/g$b;)Landroidx/fragment/app/s;

    :cond_5
    return-object v0
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 5
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Ljava/lang/ClassLoader;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    if-eqz p1, :cond_4

    .line 295
    check-cast p1, Landroid/os/Bundle;

    .line 296
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p2, "states"

    .line 297
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p2

    .line 298
    iget-object v0, p0, Landroidx/fragment/app/q;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 299
    iget-object v0, p0, Landroidx/fragment/app/q;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move v1, v0

    .line 301
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 302
    iget-object v2, p0, Landroidx/fragment/app/q;->j:Ljava/util/ArrayList;

    aget-object v3, p2, v1

    check-cast v3, Landroidx/fragment/app/d$d;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 306
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "f"

    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 309
    iget-object v3, p0, Landroidx/fragment/app/q;->g:Landroidx/fragment/app/j;

    invoke-virtual {v3, p1, v1}, Landroidx/fragment/app/j;->a(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/d;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 311
    :goto_2
    iget-object v1, p0, Landroidx/fragment/app/q;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v2, :cond_2

    .line 312
    iget-object v1, p0, Landroidx/fragment/app/q;->k:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 314
    :cond_2
    invoke-virtual {v3, v0}, Landroidx/fragment/app/d;->f(Z)V

    .line 315
    iget-object v1, p0, Landroidx/fragment/app/q;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const-string v2, "FragmentStatePagerAdapt"

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad fragment at key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 153
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 154
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager with adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " requires a view id"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 206
    check-cast p3, Landroidx/fragment/app/d;

    .line 208
    iget-object p1, p0, Landroidx/fragment/app/q;->i:Landroidx/fragment/app/s;

    if-nez p1, :cond_0

    .line 209
    iget-object p1, p0, Landroidx/fragment/app/q;->g:Landroidx/fragment/app/j;

    invoke-virtual {p1}, Landroidx/fragment/app/j;->a()Landroidx/fragment/app/s;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/q;->i:Landroidx/fragment/app/s;

    .line 213
    :cond_0
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/q;->j:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gt p1, p2, :cond_1

    .line 214
    iget-object p1, p0, Landroidx/fragment/app/q;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/q;->j:Ljava/util/ArrayList;

    invoke-virtual {p3}, Landroidx/fragment/app/d;->K()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/q;->g:Landroidx/fragment/app/j;

    .line 217
    invoke-virtual {v1, p3}, Landroidx/fragment/app/j;->a(Landroidx/fragment/app/d;)Landroidx/fragment/app/d$d;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 216
    :goto_1
    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object p1, p0, Landroidx/fragment/app/q;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object p1, p0, Landroidx/fragment/app/q;->i:Landroidx/fragment/app/s;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/d;)Landroidx/fragment/app/s;

    .line 221
    iget-object p1, p0, Landroidx/fragment/app/q;->l:Landroidx/fragment/app/d;

    if-ne p3, p1, :cond_3

    .line 222
    iput-object v0, p0, Landroidx/fragment/app/q;->l:Landroidx/fragment/app/d;

    :cond_3
    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 266
    check-cast p2, Landroidx/fragment/app/d;

    invoke-virtual {p2}, Landroidx/fragment/app/d;->X()Landroid/view/View;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 258
    iget-object p1, p0, Landroidx/fragment/app/q;->i:Landroidx/fragment/app/s;

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Landroidx/fragment/app/q;->i:Landroidx/fragment/app/s;

    invoke-virtual {p1}, Landroidx/fragment/app/s;->j()V

    const/4 p1, 0x0

    .line 260
    iput-object p1, p0, Landroidx/fragment/app/q;->i:Landroidx/fragment/app/s;

    :cond_0
    return-void
.end method

.method public b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 229
    check-cast p3, Landroidx/fragment/app/d;

    .line 230
    iget-object p1, p0, Landroidx/fragment/app/q;->l:Landroidx/fragment/app/d;

    if-eq p3, p1, :cond_5

    .line 231
    iget-object p1, p0, Landroidx/fragment/app/q;->l:Landroidx/fragment/app/d;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 232
    iget-object p1, p0, Landroidx/fragment/app/q;->l:Landroidx/fragment/app/d;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/d;->f(Z)V

    .line 233
    iget p1, p0, Landroidx/fragment/app/q;->h:I

    if-ne p1, p2, :cond_1

    .line 234
    iget-object p1, p0, Landroidx/fragment/app/q;->i:Landroidx/fragment/app/s;

    if-nez p1, :cond_0

    .line 235
    iget-object p1, p0, Landroidx/fragment/app/q;->g:Landroidx/fragment/app/j;

    invoke-virtual {p1}, Landroidx/fragment/app/j;->a()Landroidx/fragment/app/s;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/q;->i:Landroidx/fragment/app/s;

    .line 237
    :cond_0
    iget-object p1, p0, Landroidx/fragment/app/q;->i:Landroidx/fragment/app/s;

    iget-object v0, p0, Landroidx/fragment/app/q;->l:Landroidx/fragment/app/d;

    sget-object v1, Landroidx/lifecycle/g$b;->d:Landroidx/lifecycle/g$b;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/d;Landroidx/lifecycle/g$b;)Landroidx/fragment/app/s;

    goto :goto_0

    .line 239
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/q;->l:Landroidx/fragment/app/d;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/d;->g(Z)V

    .line 242
    :cond_2
    :goto_0
    invoke-virtual {p3, p2}, Landroidx/fragment/app/d;->f(Z)V

    .line 243
    iget p1, p0, Landroidx/fragment/app/q;->h:I

    if-ne p1, p2, :cond_4

    .line 244
    iget-object p1, p0, Landroidx/fragment/app/q;->i:Landroidx/fragment/app/s;

    if-nez p1, :cond_3

    .line 245
    iget-object p1, p0, Landroidx/fragment/app/q;->g:Landroidx/fragment/app/j;

    invoke-virtual {p1}, Landroidx/fragment/app/j;->a()Landroidx/fragment/app/s;

    move-result-object p1

    iput-object p1, p0, Landroidx/fragment/app/q;->i:Landroidx/fragment/app/s;

    .line 247
    :cond_3
    iget-object p1, p0, Landroidx/fragment/app/q;->i:Landroidx/fragment/app/s;

    sget-object p2, Landroidx/lifecycle/g$b;->e:Landroidx/lifecycle/g$b;

    invoke-virtual {p1, p3, p2}, Landroidx/fragment/app/s;->a(Landroidx/fragment/app/d;Landroidx/lifecycle/g$b;)Landroidx/fragment/app/s;

    goto :goto_1

    .line 249
    :cond_4
    invoke-virtual {p3, p2}, Landroidx/fragment/app/d;->g(Z)V

    .line 252
    :goto_1
    iput-object p3, p0, Landroidx/fragment/app/q;->l:Landroidx/fragment/app/d;

    :cond_5
    return-void
.end method
