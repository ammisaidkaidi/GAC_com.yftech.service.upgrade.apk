.class Landroidx/e/a/a$b;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/e/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/e/a/a;


# direct methods
.method constructor <init>(Landroidx/e/a/a;)V
    .locals 0

    .line 492
    iput-object p1, p0, Landroidx/e/a/a$b;->a:Landroidx/e/a/a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 497
    iget-object v0, p0, Landroidx/e/a/a$b;->a:Landroidx/e/a/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/e/a/a;->e:Z

    .line 498
    iget-object p0, p0, Landroidx/e/a/a$b;->a:Landroidx/e/a/a;

    invoke-virtual {p0}, Landroidx/e/a/a;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 503
    iget-object v0, p0, Landroidx/e/a/a$b;->a:Landroidx/e/a/a;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/e/a/a;->e:Z

    .line 504
    iget-object p0, p0, Landroidx/e/a/a$b;->a:Landroidx/e/a/a;

    invoke-virtual {p0}, Landroidx/e/a/a;->notifyDataSetInvalidated()V

    return-void
.end method
