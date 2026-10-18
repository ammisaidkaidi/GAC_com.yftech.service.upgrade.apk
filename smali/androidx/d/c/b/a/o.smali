.class public Landroidx/d/c/b/a/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/d/c/b/a/o$a;
    }
.end annotation


# static fields
.field static b:I = 0x0

.field private static final g:Z = false


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/d/c/b/e;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:Z

.field e:I

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/d/c/b/a/o$a;",
            ">;"
        }
    .end annotation
.end field

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/d/c/b/a/o;->a:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Landroidx/d/c/b/a/o;->c:I

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Landroidx/d/c/b/a/o;->d:Z

    .line 39
    iput v1, p0, Landroidx/d/c/b/a/o;->e:I

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Landroidx/d/c/b/a/o;->f:Ljava/util/ArrayList;

    .line 41
    iput v0, p0, Landroidx/d/c/b/a/o;->h:I

    .line 44
    sget v0, Landroidx/d/c/b/a/o;->b:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroidx/d/c/b/a/o;->b:I

    iput v0, p0, Landroidx/d/c/b/a/o;->c:I

    .line 45
    iput p1, p0, Landroidx/d/c/b/a/o;->e:I

    return-void
.end method

.method private a(ILandroidx/d/c/b/e;)I
    .locals 1

    .line 103
    invoke-virtual {p2, p1}, Landroidx/d/c/b/e;->y(I)Landroidx/d/c/b/e$a;

    move-result-object p0

    .line 104
    sget-object v0, Landroidx/d/c/b/e$a;->b:Landroidx/d/c/b/e$a;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroidx/d/c/b/e$a;->d:Landroidx/d/c/b/e$a;

    if-eq p0, v0, :cond_1

    sget-object v0, Landroidx/d/c/b/e$a;->a:Landroidx/d/c/b/e$a;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 109
    invoke-virtual {p2}, Landroidx/d/c/b/e;->I()I

    move-result p0

    goto :goto_1

    .line 111
    :cond_2
    invoke-virtual {p2}, Landroidx/d/c/b/e;->L()I

    move-result p0

    :goto_1
    return p0
.end method

.method private a(Landroidx/d/c/e;Ljava/util/ArrayList;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/d/c/e;",
            "Ljava/util/ArrayList<",
            "Landroidx/d/c/b/e;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/c/b/e;

    invoke-virtual {v1}, Landroidx/d/c/b/e;->A()Landroidx/d/c/b/e;

    move-result-object v1

    check-cast v1, Landroidx/d/c/b/f;

    .line 129
    invoke-virtual {p1}, Landroidx/d/c/e;->b()V

    .line 131
    invoke-virtual {v1, p1, v0}, Landroidx/d/c/b/f;->a(Landroidx/d/c/e;Z)V

    move v2, v0

    .line 132
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 133
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/d/c/b/e;

    .line 134
    invoke-virtual {v3, p1, v0}, Landroidx/d/c/b/e;->a(Landroidx/d/c/e;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    .line 137
    iget v2, v1, Landroidx/d/c/b/f;->bd:I

    if-lez v2, :cond_1

    .line 138
    invoke-static {v1, p1, p2, v0}, Landroidx/d/c/b/b;->a(Landroidx/d/c/b/f;Landroidx/d/c/e;Ljava/util/ArrayList;I)V

    :cond_1
    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    .line 142
    iget v3, v1, Landroidx/d/c/b/f;->be:I

    if-lez v3, :cond_2

    .line 143
    invoke-static {v1, p1, p2, v2}, Landroidx/d/c/b/b;->a(Landroidx/d/c/b/f;Landroidx/d/c/e;Ljava/util/ArrayList;I)V

    .line 148
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroidx/d/c/e;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 150
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/d/c/b/a/o;->f:Ljava/util/ArrayList;

    .line 155
    :goto_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 156
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/c/b/e;

    .line 157
    new-instance v3, Landroidx/d/c/b/a/o$a;

    invoke-direct {v3, p0, v2, p1, p3}, Landroidx/d/c/b/a/o$a;-><init>(Landroidx/d/c/b/a/o;Landroidx/d/c/b/e;Landroidx/d/c/e;I)V

    .line 158
    iget-object v2, p0, Landroidx/d/c/b/a/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    if-nez p3, :cond_4

    .line 162
    iget-object p0, v1, Landroidx/d/c/b/f;->T:Landroidx/d/c/b/d;

    invoke-virtual {p1, p0}, Landroidx/d/c/e;->b(Ljava/lang/Object;)I

    move-result p0

    .line 163
    iget-object p2, v1, Landroidx/d/c/b/f;->V:Landroidx/d/c/b/d;

    invoke-virtual {p1, p2}, Landroidx/d/c/e;->b(Ljava/lang/Object;)I

    move-result p2

    .line 164
    invoke-virtual {p1}, Landroidx/d/c/e;->b()V

    sub-int/2addr p2, p0

    return p2

    .line 167
    :cond_4
    iget-object p0, v1, Landroidx/d/c/b/f;->U:Landroidx/d/c/b/d;

    invoke-virtual {p1, p0}, Landroidx/d/c/e;->b(Ljava/lang/Object;)I

    move-result p0

    .line 168
    iget-object p2, v1, Landroidx/d/c/b/f;->W:Landroidx/d/c/b/d;

    invoke-virtual {p1, p2}, Landroidx/d/c/e;->b(Ljava/lang/Object;)I

    move-result p2

    .line 169
    invoke-virtual {p1}, Landroidx/d/c/e;->b()V

    sub-int/2addr p2, p0

    return p2
.end method

.method private b(Landroidx/d/c/b/e;)Z
    .locals 0

    .line 202
    iget-object p0, p0, Landroidx/d/c/b/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private g()Ljava/lang/String;
    .locals 2

    .line 63
    iget v0, p0, Landroidx/d/c/b/a/o;->e:I

    if-nez v0, :cond_0

    const-string p0, "Horizontal"

    return-object p0

    .line 65
    :cond_0
    iget v0, p0, Landroidx/d/c/b/a/o;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string p0, "Vertical"

    return-object p0

    .line 67
    :cond_1
    iget p0, p0, Landroidx/d/c/b/a/o;->e:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "Both"

    return-object p0

    :cond_2
    const-string p0, "Unknown"

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 48
    iget p0, p0, Landroidx/d/c/b/a/o;->e:I

    return p0
.end method

.method public a(Landroidx/d/c/e;I)I
    .locals 1

    .line 119
    iget-object v0, p0, Landroidx/d/c/b/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 124
    :cond_0
    iget-object v0, p0, Landroidx/d/c/b/a/o;->a:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, p2}, Landroidx/d/c/b/a/o;->a(Landroidx/d/c/e;Ljava/util/ArrayList;I)I

    move-result p0

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 175
    iput p1, p0, Landroidx/d/c/b/a/o;->e:I

    return-void
.end method

.method public a(ILandroidx/d/c/b/a/o;)V
    .locals 3

    .line 87
    iget-object v0, p0, Landroidx/d/c/b/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/c/b/e;

    .line 88
    invoke-virtual {p2, v1}, Landroidx/d/c/b/a/o;->a(Landroidx/d/c/b/e;)Z

    if-nez p1, :cond_0

    .line 90
    invoke-virtual {p2}, Landroidx/d/c/b/a/o;->b()I

    move-result v2

    iput v2, v1, Landroidx/d/c/b/e;->aW:I

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p2}, Landroidx/d/c/b/a/o;->b()I

    move-result v2

    iput v2, v1, Landroidx/d/c/b/e;->aX:I

    goto :goto_0

    .line 95
    :cond_1
    iget p1, p2, Landroidx/d/c/b/a/o;->c:I

    iput p1, p0, Landroidx/d/c/b/a/o;->h:I

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/d/c/b/a/o;",
            ">;)V"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Landroidx/d/c/b/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 211
    iget v1, p0, Landroidx/d/c/b/a/o;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 212
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 213
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/c/b/a/o;

    .line 214
    iget v3, p0, Landroidx/d/c/b/a/o;->h:I

    iget v4, v2, Landroidx/d/c/b/a/o;->c:I

    if-ne v3, v4, :cond_0

    .line 215
    iget v3, p0, Landroidx/d/c/b/a/o;->e:I

    invoke-virtual {p0, v3, v2}, Landroidx/d/c/b/a/o;->a(ILandroidx/d/c/b/a/o;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 220
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :cond_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 59
    iput-boolean p1, p0, Landroidx/d/c/b/a/o;->d:Z

    return-void
.end method

.method public a(Landroidx/d/c/b/a/o;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 192
    :goto_0
    iget-object v2, p0, Landroidx/d/c/b/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 193
    iget-object v2, p0, Landroidx/d/c/b/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/c/b/e;

    .line 194
    invoke-direct {p1, v2}, Landroidx/d/c/b/a/o;->b(Landroidx/d/c/b/e;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public a(Landroidx/d/c/b/e;)Z
    .locals 1

    .line 52
    iget-object v0, p0, Landroidx/d/c/b/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 55
    :cond_0
    iget-object p0, p0, Landroidx/d/c/b/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public b()I
    .locals 0

    .line 49
    iget p0, p0, Landroidx/d/c/b/a/o;->c:I

    return p0
.end method

.method public c()Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Landroidx/d/c/b/a/o;->d:Z

    return p0
.end method

.method public d()V
    .locals 0

    .line 99
    iget-object p0, p0, Landroidx/d/c/b/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public e()V
    .locals 2

    .line 179
    iget-object v0, p0, Landroidx/d/c/b/a/o;->f:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 182
    :cond_0
    iget-boolean v0, p0, Landroidx/d/c/b/a/o;->d:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 185
    :goto_0
    iget-object v1, p0, Landroidx/d/c/b/a/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 186
    iget-object v1, p0, Landroidx/d/c/b/a/o;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/c/b/a/o$a;

    .line 187
    invoke-virtual {v1}, Landroidx/d/c/b/a/o$a;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public f()I
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/d/c/b/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroidx/d/c/b/a/o;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/d/c/b/a/o;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    iget-object p0, p0, Landroidx/d/c/b/a/o;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/c/b/e;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroidx/d/c/b/e;->F()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " >"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
