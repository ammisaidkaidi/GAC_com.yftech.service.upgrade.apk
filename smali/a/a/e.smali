.class public abstract La/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(Ljava/io/InputStream;[BII)I
    .locals 2

    const/4 p0, 0x0

    :goto_0
    if-lt p0, p4, :cond_0

    return p4

    .line 146
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    if-nez p0, :cond_1

    move p0, v1

    :cond_1
    return p0

    :cond_2
    add-int v1, p0, p3

    int-to-byte v0, v0

    .line 149
    aput-byte v0, p2, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    .line 167
    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    .line 168
    invoke-virtual {p0, v0, p2}, La/a/e;->a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    .line 175
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0, p2}, La/a/e;->c(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)I

    move-result p1

    const/4 v1, 0x0

    .line 176
    :goto_1
    invoke-virtual {p0}, La/a/e;->a()I

    move-result v2

    add-int/2addr v2, v1

    if-lt v2, p1, :cond_1

    .line 181
    invoke-virtual {p0}, La/a/e;->a()I

    move-result v2

    add-int/2addr v2, v1

    if-ne v2, p1, :cond_0

    .line 183
    invoke-virtual {p0}, La/a/e;->a()I

    move-result p1

    invoke-virtual {p0, v0, p2, p1}, La/a/e;->a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    .line 184
    invoke-virtual {p0}, La/a/e;->a()I

    goto :goto_2

    :cond_0
    sub-int/2addr p1, v1

    .line 187
    invoke-virtual {p0, v0, p2, p1}, La/a/e;->a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    .line 190
    :goto_2
    invoke-virtual {p0, v0, p2}, La/a/e;->d(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p0}, La/a/e;->a()I

    move-result v2

    invoke-virtual {p0, v0, p2, v2}, La/a/e;->a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V

    .line 179
    invoke-virtual {p0}, La/a/e;->a()I

    .line 176
    invoke-virtual {p0}, La/a/e;->a()I

    move-result v2
    :try_end_0
    .catch La/a/d; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v1, v2

    goto :goto_1

    .line 196
    :catch_0
    invoke-virtual {p0, v0, p2}, La/a/e;->b(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method protected a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .locals 0

    .line 134
    new-instance p0, La/a/d;

    invoke-direct {p0}, La/a/d;-><init>()V

    throw p0
.end method

.method public a(Ljava/io/InputStream;)[B
    .locals 1

    .line 222
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 223
    invoke-virtual {p0, p1, v0}, La/a/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 224
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;)[B
    .locals 3

    .line 206
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, v0, v2}, Ljava/lang/String;->getBytes(II[BI)V

    .line 211
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 212
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 213
    invoke-virtual {p0, p1, v0}, La/a/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 214
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method protected abstract b()I
.end method

.method public b(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 242
    invoke-virtual {p0, p1}, La/a/e;->a(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 233
    invoke-virtual {p0, p1}, La/a/e;->a(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method protected b(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0

    return-void
.end method

.method protected c(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)I
    .locals 0

    .line 111
    invoke-virtual {p0}, La/a/e;->b()I

    move-result p0

    return p0
.end method

.method protected d(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .locals 0

    return-void
.end method
