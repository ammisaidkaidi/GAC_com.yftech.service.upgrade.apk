.class public abstract La/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Ljava/nio/ByteBuffer;)[B
    .locals 2

    .line 234
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 236
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 237
    array-length v0, p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ne v0, v1, :cond_0

    array-length v0, p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 240
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 251
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    new-array p0, p0, [B

    .line 256
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_1
    return-object p0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(Ljava/io/InputStream;[B)I
    .locals 2

    const/4 p0, 0x0

    .line 124
    :goto_0
    array-length v0, p2

    if-lt p0, v0, :cond_0

    .line 131
    array-length p0, p2

    return p0

    .line 126
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return p0

    :cond_1
    int-to-byte v0, v0

    .line 129
    aput-byte v0, p2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 0

    .line 285
    invoke-direct {p0, p1}, La/a/f;->c(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    .line 286
    invoke-virtual {p0, p1}, La/a/f;->a([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a([B)Ljava/lang/String;
    .locals 2

    .line 195
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 196
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 200
    :try_start_0
    invoke-virtual {p0, v1, v0}, La/a/f;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    const-string p0, "8859_1"

    .line 202
    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 206
    :catch_0
    new-instance p0, Ljava/lang/Error;

    const-string p1, "CharacterEncoder.encode internal error"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4

    .line 145
    invoke-virtual {p0}, La/a/f;->b()I

    move-result v0

    new-array v0, v0, [B

    .line 147
    invoke-virtual {p0, p2}, La/a/f;->a(Ljava/io/OutputStream;)V

    .line 151
    :goto_0
    invoke-virtual {p0, p1, v0}, La/a/f;->a(Ljava/io/InputStream;[B)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 156
    :cond_0
    invoke-virtual {p0, p2, v1}, La/a/f;->a(Ljava/io/OutputStream;I)V

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_2

    .line 168
    invoke-virtual {p0}, La/a/f;->b()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 176
    :goto_2
    invoke-virtual {p0, p2}, La/a/f;->b(Ljava/io/OutputStream;)V

    return-void

    .line 173
    :cond_1
    invoke-virtual {p0, p2}, La/a/f;->c(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 160
    :cond_2
    invoke-virtual {p0}, La/a/f;->a()I

    move-result v3

    add-int/2addr v3, v2

    if-gt v3, v1, :cond_3

    .line 162
    invoke-virtual {p0}, La/a/f;->a()I

    move-result v3

    invoke-virtual {p0, p2, v0, v2, v3}, La/a/f;->a(Ljava/io/OutputStream;[BII)V

    goto :goto_3

    :cond_3
    sub-int v3, v1, v2

    .line 165
    invoke-virtual {p0, p2, v0, v2, v3}, La/a/f;->a(Ljava/io/OutputStream;[BII)V

    .line 157
    :goto_3
    invoke-virtual {p0}, La/a/f;->a()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_1
.end method

.method protected a(Ljava/io/OutputStream;)V
    .locals 1

    .line 86
    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, La/a/f;->a:Ljava/io/PrintStream;

    return-void
.end method

.method protected a(Ljava/io/OutputStream;I)V
    .locals 0

    return-void
.end method

.method protected abstract a(Ljava/io/OutputStream;[BII)V
.end method

.method public a(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 0

    .line 272
    invoke-direct {p0, p1}, La/a/f;->c(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    .line 273
    invoke-virtual {p0, p1, p2}, La/a/f;->a([BLjava/io/OutputStream;)V

    return-void
.end method

.method public a([BLjava/io/OutputStream;)V
    .locals 1

    .line 185
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 186
    invoke-virtual {p0, v0, p2}, La/a/f;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method protected abstract b()I
.end method

.method public b(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 0

    .line 385
    invoke-direct {p0, p1}, La/a/f;->c(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    .line 386
    invoke-virtual {p0, p1}, La/a/f;->b([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b([B)Ljava/lang/String;
    .locals 2

    .line 349
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 350
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 353
    :try_start_0
    invoke-virtual {p0, v1, v0}, La/a/f;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 357
    :catch_0
    new-instance p0, Ljava/lang/Error;

    const-string p1, "CharacterEncoder.encodeBuffer internal error"

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4

    .line 301
    invoke-virtual {p0}, La/a/f;->b()I

    move-result v0

    new-array v0, v0, [B

    .line 303
    invoke-virtual {p0, p2}, La/a/f;->a(Ljava/io/OutputStream;)V

    .line 307
    :cond_0
    invoke-virtual {p0, p1, v0}, La/a/f;->a(Ljava/io/InputStream;[B)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 312
    :cond_1
    invoke-virtual {p0, p2, v1}, La/a/f;->a(Ljava/io/OutputStream;I)V

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_2

    .line 323
    invoke-virtual {p0, p2}, La/a/f;->c(Ljava/io/OutputStream;)V

    .line 324
    invoke-virtual {p0}, La/a/f;->b()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 329
    :goto_1
    invoke-virtual {p0, p2}, La/a/f;->b(Ljava/io/OutputStream;)V

    return-void

    .line 315
    :cond_2
    invoke-virtual {p0}, La/a/f;->a()I

    move-result v3

    add-int/2addr v3, v2

    if-gt v3, v1, :cond_3

    .line 317
    invoke-virtual {p0}, La/a/f;->a()I

    move-result v3

    invoke-virtual {p0, p2, v0, v2, v3}, La/a/f;->a(Ljava/io/OutputStream;[BII)V

    goto :goto_2

    :cond_3
    sub-int v3, v1, v2

    .line 320
    invoke-virtual {p0, p2, v0, v2, v3}, La/a/f;->a(Ljava/io/OutputStream;[BII)V

    .line 313
    :goto_2
    invoke-virtual {p0}, La/a/f;->a()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method protected b(Ljava/io/OutputStream;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    .locals 0

    .line 372
    invoke-direct {p0, p1}, La/a/f;->c(Ljava/nio/ByteBuffer;)[B

    move-result-object p1

    .line 373
    invoke-virtual {p0, p1, p2}, La/a/f;->b([BLjava/io/OutputStream;)V

    return-void
.end method

.method public b([BLjava/io/OutputStream;)V
    .locals 1

    .line 339
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 340
    invoke-virtual {p0, v0, p2}, La/a/f;->b(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method protected c(Ljava/io/OutputStream;)V
    .locals 0

    .line 110
    iget-object p0, p0, La/a/f;->a:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method
