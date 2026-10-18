.class public final Landroidx/i/b/c$a;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/i/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroidx/i/b/c;


# direct methods
.method public constructor <init>(Landroidx/i/b/c;)V
    .locals 0

    .line 58
    iput-object p1, p0, Landroidx/i/b/c$a;->a:Landroidx/i/b/c;

    .line 59
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onChange(Z)V
    .locals 0

    .line 69
    iget-object p0, p0, Landroidx/i/b/c$a;->a:Landroidx/i/b/c;

    invoke-virtual {p0}, Landroidx/i/b/c;->H()V

    return-void
.end method
