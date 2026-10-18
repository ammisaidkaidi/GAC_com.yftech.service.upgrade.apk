.class Landroidx/core/app/t$a;
.super Landroid/support/v4/app/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic d:Landroidx/core/app/t;


# direct methods
.method constructor <init>(Landroidx/core/app/t;)V
    .locals 0

    .line 75
    iput-object p1, p0, Landroidx/core/app/t$a;->d:Landroidx/core/app/t;

    invoke-direct {p0}, Landroid/support/v4/app/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 103
    iget-object v0, p0, Landroidx/core/app/t$a;->d:Landroidx/core/app/t;

    invoke-static {}, Landroidx/core/app/t$a;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/core/app/t;->a(ILjava/lang/String;)V

    .line 104
    invoke-static {}, Landroidx/core/app/t$a;->clearCallingIdentity()J

    move-result-wide v0

    .line 106
    :try_start_0
    iget-object p0, p0, Landroidx/core/app/t$a;->d:Landroidx/core/app/t;

    invoke-virtual {p0, p1}, Landroidx/core/app/t;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-static {v0, v1}, Landroidx/core/app/t$a;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroidx/core/app/t$a;->restoreCallingIdentity(J)V

    .line 109
    throw p0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 92
    iget-object v0, p0, Landroidx/core/app/t$a;->d:Landroidx/core/app/t;

    invoke-static {}, Landroidx/core/app/t$a;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/core/app/t;->a(ILjava/lang/String;)V

    .line 93
    invoke-static {}, Landroidx/core/app/t$a;->clearCallingIdentity()J

    move-result-wide v0

    .line 95
    :try_start_0
    iget-object p0, p0, Landroidx/core/app/t$a;->d:Landroidx/core/app/t;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/app/t;->a(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    invoke-static {v0, v1}, Landroidx/core/app/t$a;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroidx/core/app/t$a;->restoreCallingIdentity(J)V

    .line 98
    throw p0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    .locals 2

    .line 81
    iget-object v0, p0, Landroidx/core/app/t$a;->d:Landroidx/core/app/t;

    invoke-static {}, Landroidx/core/app/t$a;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroidx/core/app/t;->a(ILjava/lang/String;)V

    .line 82
    invoke-static {}, Landroidx/core/app/t$a;->clearCallingIdentity()J

    move-result-wide v0

    .line 84
    :try_start_0
    iget-object p0, p0, Landroidx/core/app/t$a;->d:Landroidx/core/app/t;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/core/app/t;->a(Ljava/lang/String;ILjava/lang/String;Landroid/app/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-static {v0, v1}, Landroidx/core/app/t$a;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroidx/core/app/t$a;->restoreCallingIdentity(J)V

    .line 87
    throw p0
.end method
