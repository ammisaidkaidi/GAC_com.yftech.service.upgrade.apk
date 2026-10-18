.class public Landroidx/core/d/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/d/b/a$a;,
        Landroidx/core/d/b/a$b;,
        Landroidx/core/d/b/a$c;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Landroidx/core/d/b/a;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroidx/core/d/b/a$a;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .locals 1
    .annotation build Landroidx/annotation/am;
        a = 0x17
    .end annotation

    .line 169
    new-instance v0, Landroidx/core/d/b/a$1;

    invoke-direct {v0, p0}, Landroidx/core/d/b/a$1;-><init>(Landroidx/core/d/b/a$a;)V

    return-object v0
.end method

.method private static a(Landroidx/core/d/b/a$c;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 2
    .annotation build Landroidx/annotation/am;
        a = 0x17
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroidx/core/d/b/a$c;->b()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 141
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Landroidx/core/d/b/a$c;->b()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 142
    :cond_1
    invoke-virtual {p0}, Landroidx/core/d/b/a$c;->a()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 143
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Landroidx/core/d/b/a$c;->a()Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 144
    :cond_2
    invoke-virtual {p0}, Landroidx/core/d/b/a$c;->c()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 145
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    invoke-virtual {p0}, Landroidx/core/d/b/a$c;->c()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Mac;)V

    return-object v0

    :cond_3
    return-object v0
.end method

.method static a(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroidx/core/d/b/a$c;
    .locals 2
    .annotation build Landroidx/annotation/am;
        a = 0x17
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 155
    :cond_0
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 156
    new-instance v0, Landroidx/core/d/b/a$c;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/d/b/a$c;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    .line 157
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 158
    new-instance v0, Landroidx/core/d/b/a$c;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/d/b/a$c;-><init>(Ljava/security/Signature;)V

    return-object v0

    .line 159
    :cond_2
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 160
    new-instance v0, Landroidx/core/d/b/a$c;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;

    move-result-object p0

    invoke-direct {v0, p0}, Landroidx/core/d/b/a$c;-><init>(Ljavax/crypto/Mac;)V

    return-object v0

    :cond_3
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Landroidx/core/d/b/a;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 52
    new-instance v0, Landroidx/core/d/b/a;

    invoke-direct {v0, p0}, Landroidx/core/d/b/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation build Landroidx/annotation/am;
        a = 0x17
    .end annotation

    .line 126
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 127
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0

    .line 128
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    .line 129
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public a(Landroidx/core/d/b/a$c;ILandroidx/core/i/b;Landroidx/core/d/b/a$a;Landroid/os/Handler;)V
    .locals 6
    .param p1    # Landroidx/core/d/b/a$c;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroidx/core/i/b;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p4    # Landroidx/core/d/b/a$a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ao;
        a = "android.permission.USE_FINGERPRINT"
    .end annotation

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 108
    iget-object p0, p0, Landroidx/core/d/b/a;->a:Landroid/content/Context;

    invoke-static {p0}, Landroidx/core/d/b/a;->b(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 111
    invoke-virtual {p3}, Landroidx/core/i/b;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/CancellationSignal;

    :goto_0
    move-object v2, p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 114
    :goto_1
    invoke-static {p1}, Landroidx/core/d/b/a;->a(Landroidx/core/d/b/a$c;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object v1

    .line 117
    invoke-static {p4}, Landroidx/core/d/b/a;->a(Landroidx/core/d/b/a$a;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v4

    move v3, p2

    move-object v5, p5

    .line 113
    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 3
    .annotation build Landroidx/annotation/ao;
        a = "android.permission.USE_FINGERPRINT"
    .end annotation

    .line 66
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 67
    iget-object p0, p0, Landroidx/core/d/b/a;->a:Landroid/content/Context;

    invoke-static {p0}, Landroidx/core/d/b/a;->b(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public b()Z
    .locals 3
    .annotation build Landroidx/annotation/ao;
        a = "android.permission.USE_FINGERPRINT"
    .end annotation

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 82
    iget-object p0, p0, Landroidx/core/d/b/a;->a:Landroid/content/Context;

    invoke-static {p0}, Landroidx/core/d/b/a;->b(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 83
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method
