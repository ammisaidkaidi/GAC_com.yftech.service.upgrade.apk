.class Landroidx/core/l/f$e;
.super Landroidx/core/l/f$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/l/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method constructor <init>(Landroidx/core/l/f$c;Z)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Landroidx/core/l/f$d;-><init>(Landroidx/core/l/f$c;)V

    .line 157
    iput-boolean p2, p0, Landroidx/core/l/f$e;->a:Z

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 0

    .line 162
    iget-boolean p0, p0, Landroidx/core/l/f$e;->a:Z

    return p0
.end method
