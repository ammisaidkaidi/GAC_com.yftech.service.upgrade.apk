.class Landroidx/l/a/d$h;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/l/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Landroidx/l/a/d;


# direct methods
.method constructor <init>(Landroidx/l/a/d;)V
    .locals 0

    .line 3092
    iput-object p1, p0, Landroidx/l/a/d$h;->a:Landroidx/l/a/d;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 3097
    iget-object p0, p0, Landroidx/l/a/d$h;->a:Landroidx/l/a/d;

    invoke-virtual {p0}, Landroidx/l/a/d;->c()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 3101
    iget-object p0, p0, Landroidx/l/a/d$h;->a:Landroidx/l/a/d;

    invoke-virtual {p0}, Landroidx/l/a/d;->c()V

    return-void
.end method
