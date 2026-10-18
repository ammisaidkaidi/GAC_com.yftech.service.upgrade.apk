.class Landroidx/core/d/b/a$1;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/d/b/a;->a(Landroidx/core/d/b/a$a;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/d/b/a$a;


# direct methods
.method constructor <init>(Landroidx/core/d/b/a$a;)V
    .locals 0

    .line 169
    iput-object p1, p0, Landroidx/core/d/b/a$1;->a:Landroidx/core/d/b/a$a;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 0

    .line 172
    iget-object p0, p0, Landroidx/core/d/b/a$1;->a:Landroidx/core/d/b/a$a;

    invoke-virtual {p0, p1, p2}, Landroidx/core/d/b/a$a;->a(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 0

    .line 188
    iget-object p0, p0, Landroidx/core/d/b/a$1;->a:Landroidx/core/d/b/a$a;

    invoke-virtual {p0}, Landroidx/core/d/b/a$a;->a()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .line 177
    iget-object p0, p0, Landroidx/core/d/b/a$1;->a:Landroidx/core/d/b/a$a;

    invoke-virtual {p0, p1, p2}, Landroidx/core/d/b/a$a;->b(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 1

    .line 182
    iget-object p0, p0, Landroidx/core/d/b/a$1;->a:Landroidx/core/d/b/a$a;

    new-instance v0, Landroidx/core/d/b/a$b;

    .line 183
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getCryptoObject()Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/d/b/a;->a(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroidx/core/d/b/a$c;

    move-result-object p1

    invoke-direct {v0, p1}, Landroidx/core/d/b/a$b;-><init>(Landroidx/core/d/b/a$c;)V

    .line 182
    invoke-virtual {p0, v0}, Landroidx/core/d/b/a$a;->a(Landroidx/core/d/b/a$b;)V

    return-void
.end method
