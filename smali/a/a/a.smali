.class public La/a/a;
.super La/a/e;
.source "SourceFile"


# static fields
.field private static final b:[C

.field private static final c:[B


# instance fields
.field a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x40

    .line 77
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, La/a/a;->b:[C

    const/16 v0, 0x100

    .line 89
    new-array v0, v0, [B

    sput-object v0, La/a/a;->c:[B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0xff

    if-lt v1, v2, :cond_1

    .line 95
    :goto_1
    sget-object v1, La/a/a;->b:[C

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    .line 96
    :cond_0
    sget-object v1, La/a/a;->c:[B

    sget-object v2, La/a/a;->b:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 93
    :cond_1
    sget-object v2, La/a/a;->c:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, La/a/e;-><init>()V

    const/4 v0, 0x4

    .line 99
    new-array v0, v0, [B

    iput-object v0, p0, La/a/a;->a:[B

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method protected a(Ljava/io/PushbackInputStream;Ljava/io/OutputStream;I)V
    .locals 8

    const/4 v0, 0x2

    if-lt p3, v0, :cond_5

    .line 113
    :cond_0
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    const/16 v3, 0xa

    if-eq v1, v3, :cond_0

    const/16 v3, 0xd

    if-eq v1, v3, :cond_0

    .line 118
    iget-object v3, p0, La/a/a;->a:[B

    int-to-byte v1, v1

    const/4 v4, 0x0

    aput-byte v1, v3, v4

    .line 120
    iget-object v1, p0, La/a/a;->a:[B

    add-int/lit8 v3, p3, -0x1

    const/4 v5, 0x1

    invoke-virtual {p0, p1, v1, v5, v3}, La/a/a;->a(Ljava/io/InputStream;[BII)I

    move-result p1

    if-eq p1, v2, :cond_3

    const/16 p1, 0x3d

    const/4 v1, 0x3

    if-le p3, v1, :cond_1

    .line 125
    iget-object v3, p0, La/a/a;->a:[B

    aget-byte v3, v3, v1

    if-ne v3, p1, :cond_1

    move p3, v1

    :cond_1
    if-le p3, v0, :cond_2

    .line 128
    iget-object v3, p0, La/a/a;->a:[B

    aget-byte v3, v3, v0

    if-ne v3, p1, :cond_2

    move p3, v0

    :cond_2
    packed-switch p3, :pswitch_data_0

    move p0, v2

    move p1, p0

    move v3, p1

    goto :goto_1

    .line 133
    :pswitch_0
    sget-object p1, La/a/a;->c:[B

    iget-object v2, p0, La/a/a;->a:[B

    aget-byte v2, v2, v1

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, p1, v2

    .line 136
    :pswitch_1
    sget-object p1, La/a/a;->c:[B

    iget-object v3, p0, La/a/a;->a:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    aget-byte p1, p1, v3

    move v7, v2

    move v2, p1

    move p1, v7

    goto :goto_0

    :pswitch_2
    move p1, v2

    .line 139
    :goto_0
    sget-object v3, La/a/a;->c:[B

    iget-object v6, p0, La/a/a;->a:[B

    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    aget-byte v3, v3, v5

    .line 140
    sget-object v5, La/a/a;->c:[B

    iget-object p0, p0, La/a/a;->a:[B

    aget-byte p0, p0, v4

    and-int/lit16 p0, p0, 0xff

    aget-byte p0, v5, p0

    move v7, v3

    move v3, p1

    move p1, v2

    move v2, v7

    :goto_1
    packed-switch p3, :pswitch_data_1

    goto :goto_2

    :pswitch_3
    shl-int/2addr p0, v0

    and-int/lit16 p0, p0, 0xfc

    ushr-int/lit8 p3, v2, 0x4

    and-int/2addr p3, v1

    or-int/2addr p0, p3

    int-to-byte p0, p0

    .line 153
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 p0, v2, 0x4

    and-int/lit16 p0, p0, 0xf0

    ushr-int/lit8 p3, p1, 0x2

    and-int/lit8 p3, p3, 0xf

    or-int/2addr p0, p3

    int-to-byte p0, p0

    .line 154
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 p0, p1, 0x6

    and-int/lit16 p0, p0, 0xc0

    and-int/lit8 p1, v3, 0x3f

    or-int/2addr p0, p1

    int-to-byte p0, p0

    .line 155
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2

    :pswitch_4
    shl-int/2addr p0, v0

    and-int/lit16 p0, p0, 0xfc

    ushr-int/lit8 p3, v2, 0x4

    and-int/2addr p3, v1

    or-int/2addr p0, p3

    int-to-byte p0, p0

    .line 149
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 p0, v2, 0x4

    and-int/lit16 p0, p0, 0xf0

    ushr-int/2addr p1, v0

    and-int/lit8 p1, p1, 0xf

    or-int/2addr p0, p1

    int-to-byte p0, p0

    .line 150
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_2

    :pswitch_5
    shl-int/2addr p0, v0

    and-int/lit16 p0, p0, 0xfc

    ushr-int/lit8 p1, v2, 0x4

    and-int/2addr p1, v1

    or-int/2addr p0, p1

    int-to-byte p0, p0

    .line 146
    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write(I)V

    :goto_2
    return-void

    .line 122
    :cond_3
    new-instance p0, La/a/d;

    invoke-direct {p0}, La/a/d;-><init>()V

    throw p0

    .line 115
    :cond_4
    new-instance p0, La/a/d;

    invoke-direct {p0}, La/a/d;-><init>()V

    throw p0

    .line 110
    :cond_5
    new-instance p0, La/a/c;

    const-string p1, "BASE64Decoder: Not enough bytes for an atom."

    invoke-direct {p0, p1}, La/a/c;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected b()I
    .locals 0

    const/16 p0, 0x48

    return p0
.end method
