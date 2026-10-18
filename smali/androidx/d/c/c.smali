.class public Landroidx/d/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroidx/d/c/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/d/c/g$a<",
            "Landroidx/d/c/b;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroidx/d/c/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/d/c/g$a<",
            "Landroidx/d/c/b;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroidx/d/c/g$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/d/c/g$a<",
            "Landroidx/d/c/i;",
            ">;"
        }
    .end annotation
.end field

.field d:[Landroidx/d/c/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroidx/d/c/g$b;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Landroidx/d/c/g$b;-><init>(I)V

    iput-object v0, p0, Landroidx/d/c/c;->a:Landroidx/d/c/g$a;

    .line 23
    new-instance v0, Landroidx/d/c/g$b;

    invoke-direct {v0, v1}, Landroidx/d/c/g$b;-><init>(I)V

    iput-object v0, p0, Landroidx/d/c/c;->b:Landroidx/d/c/g$a;

    .line 24
    new-instance v0, Landroidx/d/c/g$b;

    invoke-direct {v0, v1}, Landroidx/d/c/g$b;-><init>(I)V

    iput-object v0, p0, Landroidx/d/c/c;->c:Landroidx/d/c/g$a;

    const/16 v0, 0x20

    .line 25
    new-array v0, v0, [Landroidx/d/c/i;

    iput-object v0, p0, Landroidx/d/c/c;->d:[Landroidx/d/c/i;

    return-void
.end method
