.class Landroidx/core/graphics/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/q$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "TypefaceCompatBaseImpl"

.field private static final b:I


# instance fields
.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Landroidx/core/b/b/d$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/core/graphics/q;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private a(Landroidx/core/b/b/d$c;I)Landroidx/core/b/b/d$d;
    .locals 1

    .line 153
    invoke-virtual {p1}, Landroidx/core/b/b/d$c;->a()[Landroidx/core/b/b/d$d;

    move-result-object p1

    new-instance v0, Landroidx/core/graphics/q$2;

    invoke-direct {v0, p0}, Landroidx/core/graphics/q$2;-><init>(Landroidx/core/graphics/q;)V

    invoke-static {p1, p2, v0}, Landroidx/core/graphics/q;->a([Ljava/lang/Object;ILandroidx/core/graphics/q$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/b/b/d$d;

    return-object p0
.end method

.method private static a([Ljava/lang/Object;ILandroidx/core/graphics/q$a;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I",
            "Landroidx/core/graphics/q$a<",
            "TT;>;)TT;"
        }
    .end annotation

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/16 v0, 0x190

    goto :goto_0

    :cond_0
    const/16 v0, 0x2bc

    :goto_0
    and-int/lit8 p1, p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    const/4 v3, 0x0

    const v4, 0x7fffffff

    .line 67
    array-length v5, p0

    move v6, v4

    move-object v4, v3

    move v3, v1

    :goto_2
    if-ge v3, v5, :cond_5

    aget-object v7, p0, v3

    .line 68
    invoke-interface {p2, v7}, Landroidx/core/graphics/q$a;->b(Ljava/lang/Object;)I

    move-result v8

    sub-int/2addr v8, v0

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    .line 69
    invoke-interface {p2, v7}, Landroidx/core/graphics/q$a;->a(Ljava/lang/Object;)Z

    move-result v9

    if-ne v9, p1, :cond_2

    move v9, v1

    goto :goto_3

    :cond_2
    move v9, v2

    :goto_3
    add-int/2addr v8, v9

    if-eqz v4, :cond_3

    if-le v6, v8, :cond_4

    :cond_3
    move-object v4, v7

    move v6, v8

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-object v4
.end method

.method private a(Landroid/graphics/Typeface;Landroidx/core/b/b/d$c;)V
    .locals 4

    .line 219
    invoke-static {p1}, Landroidx/core/graphics/q;->b(Landroid/graphics/Typeface;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 221
    iget-object p0, p0, Landroidx/core/graphics/q;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static b(Landroid/graphics/Typeface;)J
    .locals 4
    .param p0    # Landroid/graphics/Typeface;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    if-nez p0, :cond_0

    return-wide v0

    .line 85
    :cond_0
    :try_start_0
    const-class v2, Landroid/graphics/Typeface;

    const-string v3, "native_instance"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x1

    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 87
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    .line 88
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v2

    :catch_0
    move-exception p0

    const-string v2, "TypefaceCompatBaseImpl"

    const-string v3, "Could not retrieve font from family."

    .line 93
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v0

    :catch_1
    move-exception p0

    const-string v2, "TypefaceCompatBaseImpl"

    const-string v3, "Could not retrieve font from family."

    .line 90
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 187
    invoke-static {p1}, Landroidx/core/graphics/r;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 192
    :cond_0
    :try_start_0
    invoke-static {p0, p2, p3}, Landroidx/core/graphics/r;->a(Ljava/io/File;Landroid/content/res/Resources;I)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 202
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object p1

    .line 195
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object p2

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 203
    throw p1

    .line 202
    :catch_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object p1
.end method

.method public a(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroidx/core/j/b$c;I)Landroid/graphics/Typeface;
    .locals 2
    .param p2    # Landroid/os/CancellationSignal;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # [Landroidx/core/j/b$c;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 137
    array-length p2, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    return-object v0

    .line 140
    :cond_0
    invoke-virtual {p0, p3, p4}, Landroidx/core/graphics/q;->a([Landroidx/core/j/b$c;I)Landroidx/core/j/b$c;

    move-result-object p2

    .line 143
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p2}, Landroidx/core/j/b$c;->a()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 144
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroidx/core/graphics/q;->a(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    invoke-static {p2}, Landroidx/core/graphics/r;->a(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, p2

    goto :goto_0

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {v0}, Landroidx/core/graphics/r;->a(Ljava/io/Closeable;)V

    .line 149
    throw p0

    :catch_0
    move-object p2, v0

    .line 148
    :catch_1
    invoke-static {p2}, Landroidx/core/graphics/r;->a(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroidx/core/b/b/d$c;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
    .locals 2
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 169
    invoke-direct {p0, p2, p4}, Landroidx/core/graphics/q;->a(Landroidx/core/b/b/d$c;I)Landroidx/core/b/b/d$d;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 174
    :cond_0
    invoke-virtual {v0}, Landroidx/core/b/b/d$d;->f()I

    move-result v1

    invoke-virtual {v0}, Landroidx/core/b/b/d$d;->a()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {p1, p3, v1, v0, p4}, Landroidx/core/graphics/k;->a(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 176
    invoke-direct {p0, p1, p2}, Landroidx/core/graphics/q;->a(Landroid/graphics/Typeface;Landroidx/core/b/b/d$c;)V

    return-object p1
.end method

.method protected a(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Typeface;
    .locals 0

    .line 114
    invoke-static {p1}, Landroidx/core/graphics/r;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 119
    :cond_0
    :try_start_0
    invoke-static {p0, p2}, Landroidx/core/graphics/r;->a(Ljava/io/File;Ljava/io/InputStream;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    .line 129
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object p1

    .line 122
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object p2

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 130
    throw p1

    .line 129
    :catch_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-object p1
.end method

.method a(Landroid/graphics/Typeface;)Landroidx/core/b/b/d$c;
    .locals 4
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 211
    invoke-static {p1}, Landroidx/core/graphics/q;->b(Landroid/graphics/Typeface;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 215
    :cond_0
    iget-object p0, p0, Landroidx/core/graphics/q;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/b/b/d$c;

    return-object p0
.end method

.method protected a([Landroidx/core/j/b$c;I)Landroidx/core/j/b$c;
    .locals 1

    .line 99
    new-instance v0, Landroidx/core/graphics/q$1;

    invoke-direct {v0, p0}, Landroidx/core/graphics/q$1;-><init>(Landroidx/core/graphics/q;)V

    invoke-static {p1, p2, v0}, Landroidx/core/graphics/q;->a([Ljava/lang/Object;ILandroidx/core/graphics/q$a;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/j/b$c;

    return-object p0
.end method
