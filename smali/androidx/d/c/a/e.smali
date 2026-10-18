.class public Landroidx/d/c/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/d/c/a/e$a;,
        Landroidx/d/c/a/e$d;,
        Landroidx/d/c/a/e$c;,
        Landroidx/d/c/a/e$b;
    }
.end annotation


# static fields
.field static final c:I = -0x1

.field static final d:I = 0x0

.field static final e:I = 0x1

.field static final f:I = 0x2

.field public static final g:Ljava/lang/Integer;


# instance fields
.field protected a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroidx/d/c/a/d;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Landroidx/d/c/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Landroidx/d/c/a/a;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroidx/d/c/a/e;->g:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/d/c/a/e;->a:Ljava/util/HashMap;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/d/c/a/e;->b:Ljava/util/HashMap;

    .line 50
    new-instance v0, Landroidx/d/c/a/a;

    invoke-direct {v0, p0}, Landroidx/d/c/a/a;-><init>(Landroidx/d/c/a/e;)V

    iput-object v0, p0, Landroidx/d/c/a/e;->h:Landroidx/d/c/a/a;

    const/4 v0, 0x0

    .line 166
    iput v0, p0, Landroidx/d/c/a/e;->i:I

    .line 96
    iget-object v0, p0, Landroidx/d/c/a/e;->a:Ljava/util/HashMap;

    sget-object v1, Landroidx/d/c/a/e;->g:Ljava/lang/Integer;

    iget-object p0, p0, Landroidx/d/c/a/e;->h:Landroidx/d/c/a/a;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "__HELPER_KEY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/d/c/a/e;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/d/c/a/e;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "__"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 0

    .line 112
    instance-of p0, p1, Ljava/lang/Float;

    if-eqz p0, :cond_0

    .line 113
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p0

    return p0

    .line 115
    :cond_0
    instance-of p0, p1, Ljava/lang/Integer;

    if-eqz p0, :cond_1

    .line 116
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public a(Ljava/lang/Object;Landroidx/d/c/a/e$c;)Landroidx/d/c/a/a/c;
    .locals 1

    .line 223
    sget-object v0, Landroidx/d/c/a/e$d;->e:Landroidx/d/c/a/e$d;

    invoke-virtual {p0, p1, v0}, Landroidx/d/c/a/e;->a(Ljava/lang/Object;Landroidx/d/c/a/e$d;)Landroidx/d/c/a/c;

    move-result-object p0

    check-cast p0, Landroidx/d/c/a/a/c;

    .line 224
    invoke-virtual {p0, p2}, Landroidx/d/c/a/a/c;->a(Landroidx/d/c/a/e$c;)V

    return-object p0
.end method

.method public a(Ljava/lang/Object;I)Landroidx/d/c/a/a/e;
    .locals 1

    .line 211
    iget-object v0, p0, Landroidx/d/c/a/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/c/a/d;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Landroidx/d/c/a/a/e;

    invoke-direct {v0, p0}, Landroidx/d/c/a/a/e;-><init>(Landroidx/d/c/a/e;)V

    .line 214
    invoke-virtual {v0, p2}, Landroidx/d/c/a/a/e;->a(I)V

    .line 215
    invoke-virtual {v0, p1}, Landroidx/d/c/a/a/e;->a(Ljava/lang/Object;)V

    .line 216
    iget-object p0, p0, Landroidx/d/c/a/e;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_0
    check-cast v0, Landroidx/d/c/a/a/e;

    return-object v0
.end method

.method public varargs a([Ljava/lang/Object;)Landroidx/d/c/a/a/g;
    .locals 2

    .line 229
    sget-object v0, Landroidx/d/c/a/e$d;->b:Landroidx/d/c/a/e$d;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/d/c/a/e;->a(Ljava/lang/Object;Landroidx/d/c/a/e$d;)Landroidx/d/c/a/c;

    move-result-object p0

    check-cast p0, Landroidx/d/c/a/a/g;

    .line 230
    invoke-virtual {p0, p1}, Landroidx/d/c/a/a/g;->a([Ljava/lang/Object;)Landroidx/d/c/a/c;

    return-object p0
.end method

.method public a(Ljava/lang/Object;Landroidx/d/c/a/e$d;)Landroidx/d/c/a/c;
    .locals 2

    if-nez p1, :cond_0

    .line 173
    invoke-direct {p0}, Landroidx/d/c/a/e;->c()Ljava/lang/String;

    move-result-object p1

    .line 175
    :cond_0
    iget-object v0, p0, Landroidx/d/c/a/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/c/a/c;

    if-nez v0, :cond_1

    .line 177
    sget-object v0, Landroidx/d/c/a/e$1;->a:[I

    invoke-virtual {p2}, Landroidx/d/c/a/e$d;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 194
    new-instance v0, Landroidx/d/c/a/c;

    invoke-direct {v0, p0, p2}, Landroidx/d/c/a/c;-><init>(Landroidx/d/c/a/e;Landroidx/d/c/a/e$d;)V

    goto :goto_1

    .line 191
    :pswitch_0
    new-instance p2, Landroidx/d/c/a/a/c;

    invoke-direct {p2, p0}, Landroidx/d/c/a/a/c;-><init>(Landroidx/d/c/a/e;)V

    goto :goto_0

    .line 188
    :pswitch_1
    new-instance p2, Landroidx/d/c/a/a/b;

    invoke-direct {p2, p0}, Landroidx/d/c/a/a/b;-><init>(Landroidx/d/c/a/e;)V

    goto :goto_0

    .line 185
    :pswitch_2
    new-instance p2, Landroidx/d/c/a/a/a;

    invoke-direct {p2, p0}, Landroidx/d/c/a/a/a;-><init>(Landroidx/d/c/a/e;)V

    goto :goto_0

    .line 182
    :pswitch_3
    new-instance p2, Landroidx/d/c/a/a/g;

    invoke-direct {p2, p0}, Landroidx/d/c/a/a/g;-><init>(Landroidx/d/c/a/e;)V

    goto :goto_0

    .line 179
    :pswitch_4
    new-instance p2, Landroidx/d/c/a/a/f;

    invoke-direct {p2, p0}, Landroidx/d/c/a/a/f;-><init>(Landroidx/d/c/a/e;)V

    :goto_0
    move-object v0, p2

    .line 197
    :goto_1
    iget-object p0, p0, Landroidx/d/c/a/e;->b:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroidx/d/c/a/b;)Landroidx/d/c/a/e;
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Landroidx/d/c/a/e;->c(Landroidx/d/c/a/b;)Landroidx/d/c/a/e;

    move-result-object p0

    return-object p0
.end method

.method public a()V
    .locals 0

    .line 100
    iget-object p0, p0, Landroidx/d/c/a/e;->b:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public a(Landroidx/d/c/b/f;)V
    .locals 4

    .line 265
    invoke-virtual {p1}, Landroidx/d/c/b/f;->aA()V

    .line 266
    iget-object v0, p0, Landroidx/d/c/a/e;->h:Landroidx/d/c/a/a;

    invoke-virtual {v0}, Landroidx/d/c/a/a;->p()Landroidx/d/c/a/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroidx/d/c/a/b;->a(Landroidx/d/c/a/e;Landroidx/d/c/b/e;I)V

    .line 267
    iget-object v0, p0, Landroidx/d/c/a/e;->h:Landroidx/d/c/a/a;

    invoke-virtual {v0}, Landroidx/d/c/a/a;->q()Landroidx/d/c/a/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Landroidx/d/c/a/b;->a(Landroidx/d/c/a/e;Landroidx/d/c/b/e;I)V

    .line 268
    iget-object v0, p0, Landroidx/d/c/a/e;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 269
    iget-object v2, p0, Landroidx/d/c/a/e;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/c/a/c;

    .line 270
    invoke-virtual {v2}, Landroidx/d/c/a/c;->b()Landroidx/d/c/b/j;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 272
    iget-object v3, p0, Landroidx/d/c/a/e;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/d/c/a/d;

    if-nez v3, :cond_1

    .line 274
    invoke-virtual {p0, v1}, Landroidx/d/c/a/e;->d(Ljava/lang/Object;)Landroidx/d/c/a/a;

    move-result-object v3

    .line 276
    :cond_1
    invoke-interface {v3, v2}, Landroidx/d/c/a/d;->a(Landroidx/d/c/b/e;)V

    goto :goto_0

    .line 279
    :cond_2
    iget-object v0, p0, Landroidx/d/c/a/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 280
    iget-object v2, p0, Landroidx/d/c/a/e;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/d/c/a/d;

    .line 281
    iget-object v2, p0, Landroidx/d/c/a/e;->h:Landroidx/d/c/a/a;

    if-eq v1, v2, :cond_4

    .line 282
    invoke-interface {v1}, Landroidx/d/c/a/d;->c()Landroidx/d/c/b/e;

    move-result-object v2

    const/4 v3, 0x0

    .line 283
    invoke-virtual {v2, v3}, Landroidx/d/c/b/e;->a_(Landroidx/d/c/b/e;)V

    .line 284
    instance-of v3, v1, Landroidx/d/c/a/a/e;

    if-eqz v3, :cond_3

    .line 286
    invoke-interface {v1}, Landroidx/d/c/a/d;->s()V

    .line 288
    :cond_3
    invoke-virtual {p1, v2}, Landroidx/d/c/b/f;->b(Landroidx/d/c/b/e;)V

    goto :goto_1

    .line 290
    :cond_4
    invoke-interface {v1, p1}, Landroidx/d/c/a/d;->a(Landroidx/d/c/b/e;)V

    goto :goto_1

    .line 293
    :cond_5
    iget-object p1, p0, Landroidx/d/c/a/e;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 294
    iget-object v1, p0, Landroidx/d/c/a/e;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/c/a/c;

    .line 295
    invoke-virtual {v0}, Landroidx/d/c/a/c;->b()Landroidx/d/c/b/j;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 297
    iget-object v1, v0, Landroidx/d/c/a/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 298
    iget-object v3, p0, Landroidx/d/c/a/e;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/d/c/a/d;

    .line 299
    invoke-virtual {v0}, Landroidx/d/c/a/c;->b()Landroidx/d/c/b/j;

    move-result-object v3

    invoke-interface {v2}, Landroidx/d/c/a/d;->c()Landroidx/d/c/b/e;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/d/c/b/j;->a(Landroidx/d/c/b/e;)V

    goto :goto_3

    .line 301
    :cond_7
    invoke-virtual {v0}, Landroidx/d/c/a/c;->c()V

    goto :goto_2

    .line 304
    :cond_8
    iget-object p1, p0, Landroidx/d/c/a/e;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 305
    iget-object v1, p0, Landroidx/d/c/a/e;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/c/a/d;

    .line 306
    invoke-interface {v0}, Landroidx/d/c/a/d;->s()V

    goto :goto_4

    :cond_9
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 260
    invoke-virtual {p0, p1}, Landroidx/d/c/a/e;->d(Ljava/lang/Object;)Landroidx/d/c/a/a;

    move-result-object p0

    .line 261
    invoke-virtual {p0, p2}, Landroidx/d/c/a/a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public varargs b([Ljava/lang/Object;)Landroidx/d/c/a/a/f;
    .locals 2

    .line 235
    sget-object v0, Landroidx/d/c/a/e$d;->a:Landroidx/d/c/a/e$d;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/d/c/a/e;->a(Ljava/lang/Object;Landroidx/d/c/a/e$d;)Landroidx/d/c/a/c;

    move-result-object p0

    check-cast p0, Landroidx/d/c/a/a/f;

    .line 236
    invoke-virtual {p0, p1}, Landroidx/d/c/a/a/f;->a([Ljava/lang/Object;)Landroidx/d/c/a/c;

    return-object p0
.end method

.method public b(Ljava/lang/Object;)Landroidx/d/c/a/a;
    .locals 0

    .line 128
    new-instance p1, Landroidx/d/c/a/a;

    invoke-direct {p1, p0}, Landroidx/d/c/a/a;-><init>(Landroidx/d/c/a/e;)V

    return-object p1
.end method

.method public b(Landroidx/d/c/a/b;)Landroidx/d/c/a/e;
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Landroidx/d/c/a/e;->d(Landroidx/d/c/a/b;)Landroidx/d/c/a/e;

    move-result-object p0

    return-object p0
.end method

.method public b()V
    .locals 3

    .line 253
    iget-object v0, p0, Landroidx/d/c/a/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 254
    invoke-virtual {p0, v1}, Landroidx/d/c/a/e;->d(Ljava/lang/Object;)Landroidx/d/c/a/a;

    move-result-object v2

    .line 255
    invoke-virtual {v2, v1}, Landroidx/d/c/a/a;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public varargs c([Ljava/lang/Object;)Landroidx/d/c/a/a/a;
    .locals 2

    .line 241
    sget-object v0, Landroidx/d/c/a/e$d;->c:Landroidx/d/c/a/e$d;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/d/c/a/e;->a(Ljava/lang/Object;Landroidx/d/c/a/e$d;)Landroidx/d/c/a/c;

    move-result-object p0

    check-cast p0, Landroidx/d/c/a/a/a;

    .line 242
    invoke-virtual {p0, p1}, Landroidx/d/c/a/a/a;->a([Ljava/lang/Object;)Landroidx/d/c/a/c;

    return-object p0
.end method

.method c(Ljava/lang/Object;)Landroidx/d/c/a/d;
    .locals 0

    .line 150
    iget-object p0, p0, Landroidx/d/c/a/e;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/d/c/a/d;

    return-object p0
.end method

.method public c(Landroidx/d/c/a/b;)Landroidx/d/c/a/e;
    .locals 1

    .line 140
    iget-object v0, p0, Landroidx/d/c/a/e;->h:Landroidx/d/c/a/a;

    invoke-virtual {v0, p1}, Landroidx/d/c/a/a;->c(Landroidx/d/c/a/b;)Landroidx/d/c/a/a;

    return-object p0
.end method

.method public varargs d([Ljava/lang/Object;)Landroidx/d/c/a/a/b;
    .locals 2

    .line 247
    sget-object v0, Landroidx/d/c/a/e$d;->d:Landroidx/d/c/a/e$d;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/d/c/a/e;->a(Ljava/lang/Object;Landroidx/d/c/a/e$d;)Landroidx/d/c/a/c;

    move-result-object p0

    check-cast p0, Landroidx/d/c/a/a/b;

    .line 248
    invoke-virtual {p0, p1}, Landroidx/d/c/a/a/b;->a([Ljava/lang/Object;)Landroidx/d/c/a/c;

    return-object p0
.end method

.method public d(Ljava/lang/Object;)Landroidx/d/c/a/a;
    .locals 1

    .line 154
    iget-object v0, p0, Landroidx/d/c/a/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/d/c/a/d;

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {p0, p1}, Landroidx/d/c/a/e;->b(Ljava/lang/Object;)Landroidx/d/c/a/a;

    move-result-object v0

    .line 157
    iget-object p0, p0, Landroidx/d/c/a/e;->a:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-interface {v0, p1}, Landroidx/d/c/a/d;->a(Ljava/lang/Object;)V

    .line 160
    :cond_0
    instance-of p0, v0, Landroidx/d/c/a/a;

    if-eqz p0, :cond_1

    .line 161
    check-cast v0, Landroidx/d/c/a/a;

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public d(Landroidx/d/c/a/b;)Landroidx/d/c/a/e;
    .locals 1

    .line 145
    iget-object v0, p0, Landroidx/d/c/a/e;->h:Landroidx/d/c/a/a;

    invoke-virtual {v0, p1}, Landroidx/d/c/a/a;->d(Landroidx/d/c/a/b;)Landroidx/d/c/a/a;

    return-object p0
.end method

.method public e(Ljava/lang/Object;)Landroidx/d/c/a/a/e;
    .locals 1

    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, p1, v0}, Landroidx/d/c/a/e;->a(Ljava/lang/Object;I)Landroidx/d/c/a/a/e;

    move-result-object p0

    return-object p0
.end method

.method public f(Ljava/lang/Object;)Landroidx/d/c/a/a/e;
    .locals 1

    const/4 v0, 0x1

    .line 207
    invoke-virtual {p0, p1, v0}, Landroidx/d/c/a/e;->a(Ljava/lang/Object;I)Landroidx/d/c/a/a/e;

    move-result-object p0

    return-object p0
.end method
