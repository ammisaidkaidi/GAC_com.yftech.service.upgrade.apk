.class final Landroidx/core/app/m$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/m$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation


# instance fields
.field final a:Landroid/content/Intent;

.field final b:I

.field final synthetic c:Landroidx/core/app/m;


# direct methods
.method constructor <init>(Landroidx/core/app/m;Landroid/content/Intent;I)V
    .locals 0

    .line 363
    iput-object p1, p0, Landroidx/core/app/m$d;->c:Landroidx/core/app/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 364
    iput-object p2, p0, Landroidx/core/app/m$d;->a:Landroid/content/Intent;

    .line 365
    iput p3, p0, Landroidx/core/app/m$d;->b:I

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 0

    .line 370
    iget-object p0, p0, Landroidx/core/app/m$d;->a:Landroid/content/Intent;

    return-object p0
.end method

.method public b()V
    .locals 1

    .line 376
    iget-object v0, p0, Landroidx/core/app/m$d;->c:Landroidx/core/app/m;

    iget p0, p0, Landroidx/core/app/m$d;->b:I

    invoke-virtual {v0, p0}, Landroidx/core/app/m;->stopSelf(I)V

    return-void
.end method
