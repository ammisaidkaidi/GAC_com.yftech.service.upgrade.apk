.class Landroidx/d/c/e$b;
.super Landroidx/d/c/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic g:Landroidx/d/c/e;


# direct methods
.method public constructor <init>(Landroidx/d/c/e;Landroidx/d/c/c;)V
    .locals 0

    .line 89
    iput-object p1, p0, Landroidx/d/c/e$b;->g:Landroidx/d/c/e;

    invoke-direct {p0}, Landroidx/d/c/b;-><init>()V

    .line 90
    new-instance p1, Landroidx/d/c/j;

    invoke-direct {p1, p0, p2}, Landroidx/d/c/j;-><init>(Landroidx/d/c/b;Landroidx/d/c/c;)V

    iput-object p1, p0, Landroidx/d/c/e$b;->e:Landroidx/d/c/b$a;

    return-void
.end method
