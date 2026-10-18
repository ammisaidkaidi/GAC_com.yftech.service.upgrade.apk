.class Landroidx/versionedparcelable/f;
.super Landroidx/versionedparcelable/e;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY:Landroidx/annotation/ap$a;
    }
.end annotation


# static fields
.field private static final d:Z = false

.field private static final e:Ljava/lang/String; = "VersionedParcelParcel"


# instance fields
.field private final f:Landroid/util/SparseIntArray;

.field private final g:Landroid/os/Parcel;

.field private final h:I

.field private final i:I

.field private final j:Ljava/lang/String;

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .locals 8

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    const-string v4, ""

    new-instance v5, Landroidx/c/a;

    invoke-direct {v5}, Landroidx/c/a;-><init>()V

    new-instance v6, Landroidx/c/a;

    invoke-direct {v6}, Landroidx/c/a;-><init>()V

    new-instance v7, Landroidx/c/a;

    invoke-direct {v7}, Landroidx/c/a;-><init>()V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroidx/versionedparcelable/f;-><init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/c/a;Landroidx/c/a;Landroidx/c/a;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/c/a;Landroidx/c/a;Landroidx/c/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "II",
            "Ljava/lang/String;",
            "Landroidx/c/a<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/c/a<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Landroidx/c/a<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p5, p6, p7}, Landroidx/versionedparcelable/e;-><init>(Landroidx/c/a;Landroidx/c/a;Landroidx/c/a;)V

    .line 41
    new-instance p5, Landroid/util/SparseIntArray;

    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p5, p0, Landroidx/versionedparcelable/f;->f:Landroid/util/SparseIntArray;

    const/4 p5, -0x1

    .line 46
    iput p5, p0, Landroidx/versionedparcelable/f;->k:I

    const/4 p6, 0x0

    .line 47
    iput p6, p0, Landroidx/versionedparcelable/f;->l:I

    .line 48
    iput p5, p0, Landroidx/versionedparcelable/f;->m:I

    .line 61
    iput-object p1, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    .line 62
    iput p2, p0, Landroidx/versionedparcelable/f;->h:I

    .line 63
    iput p3, p0, Landroidx/versionedparcelable/f;->i:I

    .line 64
    iget p1, p0, Landroidx/versionedparcelable/f;->h:I

    iput p1, p0, Landroidx/versionedparcelable/f;->l:I

    .line 65
    iput-object p4, p0, Landroidx/versionedparcelable/f;->j:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 0

    .line 161
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method

.method public a(F)V
    .locals 0

    .line 156
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 146
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 151
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .line 191
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/os/IBinder;)V
    .locals 0

    .line 171
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method

.method public a(Landroid/os/IInterface;)V
    .locals 0

    .line 186
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 1

    .line 176
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method protected a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 196
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 166
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 181
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public a([B)V
    .locals 2

    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    array-length v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method

.method public a([BII)V
    .locals 2

    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    array-length v1, p1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Parcel;->writeByteArray([BII)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 99
    iget v0, p0, Landroidx/versionedparcelable/f;->k:I

    if-ltz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroidx/versionedparcelable/f;->f:Landroid/util/SparseIntArray;

    iget v1, p0, Landroidx/versionedparcelable/f;->k:I

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 101
    iget-object v1, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    sub-int v2, v1, v0

    .line 107
    iget-object v3, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 108
    iget-object v0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    :cond_0
    return-void
.end method

.method public b(I)Z
    .locals 4

    .line 70
    :goto_0
    iget v0, p0, Landroidx/versionedparcelable/f;->l:I

    iget v1, p0, Landroidx/versionedparcelable/f;->i:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_2

    .line 71
    iget v0, p0, Landroidx/versionedparcelable/f;->m:I

    if-ne v0, p1, :cond_0

    return v3

    .line 74
    :cond_0
    iget v0, p0, Landroidx/versionedparcelable/f;->m:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    return v2

    .line 77
    :cond_1
    iget-object v0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    iget v1, p0, Landroidx/versionedparcelable/f;->l:I

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 78
    iget-object v0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 79
    iget-object v1, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroidx/versionedparcelable/f;->m:I

    .line 82
    iget v1, p0, Landroidx/versionedparcelable/f;->l:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/versionedparcelable/f;->l:I

    goto :goto_0

    .line 84
    :cond_2
    iget p0, p0, Landroidx/versionedparcelable/f;->m:I

    if-ne p0, p1, :cond_3

    move v2, v3

    :cond_3
    return v2
.end method

.method protected c()Landroidx/versionedparcelable/e;
    .locals 9

    .line 119
    new-instance v8, Landroidx/versionedparcelable/f;

    iget-object v1, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    iget-object v0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v2

    iget v0, p0, Landroidx/versionedparcelable/f;->l:I

    iget v3, p0, Landroidx/versionedparcelable/f;->h:I

    if-ne v0, v3, :cond_0

    iget v0, p0, Landroidx/versionedparcelable/f;->i:I

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Landroidx/versionedparcelable/f;->l:I

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroidx/versionedparcelable/f;->j:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Landroidx/versionedparcelable/f;->a:Landroidx/c/a;

    iget-object v6, p0, Landroidx/versionedparcelable/f;->b:Landroidx/c/a;

    iget-object v7, p0, Landroidx/versionedparcelable/f;->c:Landroidx/c/a;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroidx/versionedparcelable/f;-><init>(Landroid/os/Parcel;IILjava/lang/String;Landroidx/c/a;Landroidx/c/a;Landroidx/c/a;)V

    return-object v8
.end method

.method public c(I)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Landroidx/versionedparcelable/f;->b()V

    .line 90
    iput p1, p0, Landroidx/versionedparcelable/f;->k:I

    .line 91
    iget-object v0, p0, Landroidx/versionedparcelable/f;->f:Landroid/util/SparseIntArray;

    iget-object v1, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/f;->a(I)V

    .line 94
    invoke-virtual {p0, p1}, Landroidx/versionedparcelable/f;->a(I)V

    return-void
.end method

.method public d()I
    .locals 0

    .line 206
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    return p0
.end method

.method public e()J
    .locals 2

    .line 211
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public f()F
    .locals 0

    .line 216
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result p0

    return p0
.end method

.method public g()D
    .locals 2

    .line 221
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 0

    .line 226
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public i()Landroid/os/IBinder;
    .locals 0

    .line 231
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public j()[B
    .locals 1

    .line 236
    iget-object v0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 240
    :cond_0
    new-array v0, v0, [B

    .line 241
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-object v0
.end method

.method protected k()Ljava/lang/CharSequence;
    .locals 1

    .line 201
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public l()Landroid/os/Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()TT;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p0

    return-object p0
.end method

.method public m()Landroid/os/Bundle;
    .locals 1

    .line 253
    iget-object v0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public n()Z
    .locals 0

    .line 258
    iget-object p0, p0, Landroidx/versionedparcelable/f;->g:Landroid/os/Parcel;

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
