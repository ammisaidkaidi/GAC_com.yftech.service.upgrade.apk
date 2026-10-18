.class public La/a/b;
.super La/a/f;
.source "SourceFile"


# static fields
.field private static final b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    .line 63
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 62
    sput-object v0, La/a/b;->b:[C

    return-void

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
    .locals 0

    .line 43
    invoke-direct {p0}, La/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method protected a(Ljava/io/OutputStream;[BII)V
    .locals 2

    const/16 p0, 0x3d

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    .line 86
    aget-byte p2, p2, p3

    .line 89
    sget-object p3, La/a/b;->b:[C

    ushr-int/lit8 p4, p2, 0x2

    and-int/lit8 p4, p4, 0x3f

    aget-char p3, p3, p4

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write(I)V

    .line 90
    sget-object p3, La/a/b;->b:[C

    shl-int/lit8 p2, p2, 0x4

    and-int/lit8 p2, p2, 0x30

    add-int/lit8 p2, p2, 0x0

    aget-char p2, p3, p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 91
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 92
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p4, v1, :cond_1

    .line 95
    aget-byte p4, p2, p3

    add-int/2addr p3, v0

    .line 96
    aget-byte p2, p2, p3

    .line 98
    sget-object p3, La/a/b;->b:[C

    ushr-int/lit8 v0, p4, 0x2

    and-int/lit8 v0, v0, 0x3f

    aget-char p3, p3, v0

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write(I)V

    .line 99
    sget-object p3, La/a/b;->b:[C

    shl-int/lit8 p4, p4, 0x4

    and-int/lit8 p4, p4, 0x30

    ushr-int/lit8 v0, p2, 0x4

    and-int/lit8 v0, v0, 0xf

    add-int/2addr p4, v0

    aget-char p3, p3, p4

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write(I)V

    .line 100
    sget-object p3, La/a/b;->b:[C

    shl-int/2addr p2, v1

    and-int/lit8 p2, p2, 0x3c

    add-int/lit8 p2, p2, 0x0

    aget-char p2, p3, p2

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    .line 101
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    .line 104
    :cond_1
    aget-byte p0, p2, p3

    add-int/lit8 p4, p3, 0x1

    .line 105
    aget-byte p4, p2, p4

    add-int/2addr p3, v1

    .line 106
    aget-byte p2, p2, p3

    .line 107
    sget-object p3, La/a/b;->b:[C

    ushr-int/lit8 v0, p0, 0x2

    and-int/lit8 v0, v0, 0x3f

    aget-char p3, p3, v0

    invoke-virtual {p1, p3}, Ljava/io/OutputStream;->write(I)V

    .line 108
    sget-object p3, La/a/b;->b:[C

    shl-int/lit8 p0, p0, 0x4

    and-int/lit8 p0, p0, 0x30

    ushr-int/lit8 v0, p4, 0x4

    and-int/lit8 v0, v0, 0xf

    add-int/2addr p0, v0

    aget-char p0, p3, p0

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 109
    sget-object p0, La/a/b;->b:[C

    shl-int/lit8 p3, p4, 0x2

    and-int/lit8 p3, p3, 0x3c

    ushr-int/lit8 p4, p2, 0x6

    and-int/lit8 p4, p4, 0x3

    add-int/2addr p3, p4

    aget-char p0, p0, p3

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    .line 110
    sget-object p0, La/a/b;->b:[C

    and-int/lit8 p2, p2, 0x3f

    aget-char p0, p0, p2

    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void
.end method

.method protected b()I
    .locals 0

    const/16 p0, 0x39

    return p0
.end method
