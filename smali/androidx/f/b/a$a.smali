.class Landroidx/f/b/a$a;
.super Landroidx/core/n/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/f/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Landroidx/f/b/a;


# direct methods
.method constructor <init>(Landroidx/f/b/a;)V
    .locals 0

    .line 1238
    iput-object p1, p0, Landroidx/f/b/a$a;->b:Landroidx/f/b/a;

    invoke-direct {p0}, Landroidx/core/n/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Landroidx/core/n/a/d;
    .locals 0

    .line 1245
    iget-object p0, p0, Landroidx/f/b/a$a;->b:Landroidx/f/b/a;

    .line 1246
    invoke-virtual {p0, p1}, Landroidx/f/b/a;->b(I)Landroidx/core/n/a/d;

    move-result-object p0

    .line 1247
    invoke-static {p0}, Landroidx/core/n/a/d;->a(Landroidx/core/n/a/d;)Landroidx/core/n/a/d;

    move-result-object p0

    return-object p0
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 0

    .line 1252
    iget-object p0, p0, Landroidx/f/b/a$a;->b:Landroidx/f/b/a;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/f/b/a;->a(IILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public b(I)Landroidx/core/n/a/d;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1257
    iget-object p1, p0, Landroidx/f/b/a$a;->b:Landroidx/f/b/a;

    iget p1, p1, Landroidx/f/b/a;->c:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/f/b/a$a;->b:Landroidx/f/b/a;

    iget p1, p1, Landroidx/f/b/a;->d:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 1262
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/f/b/a$a;->a(I)Landroidx/core/n/a/d;

    move-result-object p0

    return-object p0
.end method
