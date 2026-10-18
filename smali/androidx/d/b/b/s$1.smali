.class Landroidx/d/b/b/s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/d/b/b/s;->a(Landroid/view/View;II[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroidx/d/b/b/s;


# direct methods
.method constructor <init>(Landroidx/d/b/b/s;Landroid/view/View;)V
    .locals 0

    .line 2497
    iput-object p1, p0, Landroidx/d/b/b/s$1;->b:Landroidx/d/b/b/s;

    iput-object p2, p0, Landroidx/d/b/b/s$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2500
    iget-object p0, p0, Landroidx/d/b/b/s$1;->a:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    return-void
.end method
