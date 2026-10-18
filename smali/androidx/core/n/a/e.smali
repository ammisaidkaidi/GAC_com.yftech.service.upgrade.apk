.class public Landroidx/core/n/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/n/a/e$b;,
        Landroidx/core/n/a/e$a;
    }
.end annotation


# static fields
.field public static final a:I = -0x1


# instance fields
.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 106
    new-instance v0, Landroidx/core/n/a/e$b;

    invoke-direct {v0, p0}, Landroidx/core/n/a/e$b;-><init>(Landroidx/core/n/a/e;)V

    iput-object v0, p0, Landroidx/core/n/a/e;->b:Ljava/lang/Object;

    goto :goto_0

    .line 107
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 108
    new-instance v0, Landroidx/core/n/a/e$a;

    invoke-direct {v0, p0}, Landroidx/core/n/a/e$a;-><init>(Landroidx/core/n/a/e;)V

    iput-object v0, p0, Landroidx/core/n/a/e;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Landroidx/core/n/a/e;->b:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Landroidx/core/n/a/e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/core/n/a/d;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public a()Ljava/lang/Object;
    .locals 0

    .line 128
    iget-object p0, p0, Landroidx/core/n/a/e;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroidx/core/n/a/d;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public b(I)Landroidx/core/n/a/d;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method
