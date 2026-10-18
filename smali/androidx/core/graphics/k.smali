.class public Landroidx/core/graphics/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final a:Landroidx/core/graphics/q;

.field private static final b:Landroidx/c/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/c/g<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 49
    new-instance v0, Landroidx/core/graphics/p;

    invoke-direct {v0}, Landroidx/core/graphics/p;-><init>()V

    sput-object v0, Landroidx/core/graphics/k;->a:Landroidx/core/graphics/q;

    goto :goto_0

    .line 50
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 51
    new-instance v0, Landroidx/core/graphics/o;

    invoke-direct {v0}, Landroidx/core/graphics/o;-><init>()V

    sput-object v0, Landroidx/core/graphics/k;->a:Landroidx/core/graphics/q;

    goto :goto_0

    .line 52
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 53
    new-instance v0, Landroidx/core/graphics/n;

    invoke-direct {v0}, Landroidx/core/graphics/n;-><init>()V

    sput-object v0, Landroidx/core/graphics/k;->a:Landroidx/core/graphics/q;

    goto :goto_0

    .line 54
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    .line 55
    invoke-static {}, Landroidx/core/graphics/m;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 56
    new-instance v0, Landroidx/core/graphics/m;

    invoke-direct {v0}, Landroidx/core/graphics/m;-><init>()V

    sput-object v0, Landroidx/core/graphics/k;->a:Landroidx/core/graphics/q;

    goto :goto_0

    .line 57
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_4

    .line 58
    new-instance v0, Landroidx/core/graphics/l;

    invoke-direct {v0}, Landroidx/core/graphics/l;-><init>()V

    sput-object v0, Landroidx/core/graphics/k;->a:Landroidx/core/graphics/q;

    goto :goto_0

    .line 60
    :cond_4
    new-instance v0, Landroidx/core/graphics/q;

    invoke-direct {v0}, Landroidx/core/graphics/q;-><init>()V

    sput-object v0, Landroidx/core/graphics/k;->a:Landroidx/core/graphics/q;

    .line 67
    :goto_0
    new-instance v0, Landroidx/c/g;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/c/g;-><init>(I)V

    sput-object v0, Landroidx/core/graphics/k;->b:Landroidx/c/g;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 147
    sget-object v0, Landroidx/core/graphics/k;->a:Landroidx/core/graphics/q;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroidx/core/graphics/q;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 150
    invoke-static {p1, p2, p4}, Landroidx/core/graphics/k;->b(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p1

    .line 151
    sget-object p2, Landroidx/core/graphics/k;->b:Landroidx/c/g;

    invoke-virtual {p2, p1, p0}, Landroidx/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    if-eqz p0, :cond_1

    .line 199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 200
    invoke-static {p0, p1, p2}, Landroidx/core/graphics/k;->b(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 206
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    .line 195
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Context cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/j/b$c;I)Landroid/graphics/Typeface;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroid/os/CancellationSignal;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # [Landroidx/core/j/b$c;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 164
    sget-object v0, Landroidx/core/graphics/k;->a:Landroidx/core/graphics/q;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/core/graphics/q;->a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/j/b$c;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroidx/core/b/b/d$a;Landroid/content/res/Resources;IILandroidx/core/b/b/g$a;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 7
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p1    # Landroidx/core/b/b/d$a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p5    # Landroidx/core/b/b/g$a;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p6    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 109
    instance-of v4, p1, Landroidx/core/b/b/d$e;

    if-eqz v4, :cond_3

    .line 110
    move-object v0, p1

    check-cast v0, Landroidx/core/b/b/d$e;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p7, :cond_0

    .line 112
    invoke-virtual {v0}, Landroidx/core/b/b/d$e;->b()I

    move-result v6

    if-nez v6, :cond_1

    :goto_0
    move v4, v5

    goto :goto_1

    :cond_0
    if-nez p5, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p7, :cond_2

    .line 115
    invoke-virtual {v0}, Landroidx/core/b/b/d$e;->c()I

    move-result v1

    :goto_2
    move v5, v1

    goto :goto_3

    :cond_2
    const/4 v1, -0x1

    goto :goto_2

    .line 117
    :goto_3
    invoke-virtual {v0}, Landroidx/core/b/b/d$e;->a()Landroidx/core/j/a;

    move-result-object v1

    move-object v0, p0

    move-object v2, p5

    move-object v3, p6

    move v6, p4

    invoke-static/range {v0 .. v6}, Landroidx/core/j/b;->a(Landroid/content/Context;Landroidx/core/j/a;Landroidx/core/b/b/g$a;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_4

    .line 120
    :cond_3
    sget-object v1, Landroidx/core/graphics/k;->a:Landroidx/core/graphics/q;

    move-object v0, p1

    check-cast v0, Landroidx/core/b/b/d$c;

    invoke-virtual {v1, p0, v0, p2, p4}, Landroidx/core/graphics/q;->a(Landroid/content/Context;Landroidx/core/b/b/d$c;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz p5, :cond_5

    if-eqz v0, :cond_4

    .line 124
    invoke-virtual {p5, v0, p6}, Landroidx/core/b/b/g$a;->a(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_4

    :cond_4
    const/4 v1, -0x3

    .line 126
    invoke-virtual {p5, v1, p6}, Landroidx/core/b/b/g$a;->a(ILandroid/os/Handler;)V

    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    .line 133
    sget-object v1, Landroidx/core/graphics/k;->b:Landroidx/c/g;

    invoke-static {p2, p3, p4}, Landroidx/core/graphics/k;->b(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroidx/c/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
    .locals 1
    .param p0    # Landroid/content/res/Resources;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 80
    sget-object v0, Landroidx/core/graphics/k;->b:Landroidx/c/g;

    invoke-static {p0, p1, p2}, Landroidx/core/graphics/k;->b(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/c/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Typeface;

    return-object p0
.end method

.method private static b(Landroid/content/Context;Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 2
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 173
    sget-object v0, Landroidx/core/graphics/k;->a:Landroidx/core/graphics/q;

    invoke-virtual {v0, p1}, Landroidx/core/graphics/q;->a(Landroid/graphics/Typeface;)Landroidx/core/b/b/d$c;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 178
    :cond_0
    sget-object v0, Landroidx/core/graphics/k;->a:Landroidx/core/graphics/q;

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 178
    invoke-virtual {v0, p0, p1, v1, p2}, Landroidx/core/graphics/q;->a(Landroid/content/Context;Landroidx/core/b/b/d$c;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
