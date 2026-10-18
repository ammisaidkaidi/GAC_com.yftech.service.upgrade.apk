.class Landroidx/core/j/b$4$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/core/j/b$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/core/j/b$4;


# direct methods
.method constructor <init>(Landroidx/core/j/b$4;)V
    .locals 0

    .line 581
    iput-object p1, p0, Landroidx/core/j/b$4$4;->a:Landroidx/core/j/b$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 584
    iget-object p0, p0, Landroidx/core/j/b$4$4;->a:Landroidx/core/j/b$4;

    iget-object p0, p0, Landroidx/core/j/b$4;->d:Landroidx/core/j/b$d;

    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroidx/core/j/b$d;->a(I)V

    return-void
.end method
