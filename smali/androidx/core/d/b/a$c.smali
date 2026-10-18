.class public Landroidx/core/d/b/a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/d/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/security/Signature;

.field private final b:Ljavax/crypto/Cipher;

.field private final c:Ljavax/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .locals 0
    .param p1    # Ljava/security/Signature;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Landroidx/core/d/b/a$c;->a:Ljava/security/Signature;

    const/4 p1, 0x0

    .line 205
    iput-object p1, p0, Landroidx/core/d/b/a$c;->b:Ljavax/crypto/Cipher;

    .line 206
    iput-object p1, p0, Landroidx/core/d/b/a$c;->c:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 0
    .param p1    # Ljavax/crypto/Cipher;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Landroidx/core/d/b/a$c;->b:Ljavax/crypto/Cipher;

    const/4 p1, 0x0

    .line 212
    iput-object p1, p0, Landroidx/core/d/b/a$c;->a:Ljava/security/Signature;

    .line 213
    iput-object p1, p0, Landroidx/core/d/b/a$c;->c:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 0
    .param p1    # Ljavax/crypto/Mac;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Landroidx/core/d/b/a$c;->c:Ljavax/crypto/Mac;

    const/4 p1, 0x0

    .line 218
    iput-object p1, p0, Landroidx/core/d/b/a$c;->b:Ljavax/crypto/Cipher;

    .line 219
    iput-object p1, p0, Landroidx/core/d/b/a$c;->a:Ljava/security/Signature;

    return-void
.end method


# virtual methods
.method public a()Ljava/security/Signature;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 227
    iget-object p0, p0, Landroidx/core/d/b/a$c;->a:Ljava/security/Signature;

    return-object p0
.end method

.method public b()Ljavax/crypto/Cipher;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 234
    iget-object p0, p0, Landroidx/core/d/b/a$c;->b:Ljavax/crypto/Cipher;

    return-object p0
.end method

.method public c()Ljavax/crypto/Mac;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 241
    iget-object p0, p0, Landroidx/core/d/b/a$c;->c:Ljavax/crypto/Mac;

    return-object p0
.end method
