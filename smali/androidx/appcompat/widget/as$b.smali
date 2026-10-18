.class Landroidx/appcompat/widget/as$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/as;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/as;)V
    .locals 0

    .line 397
    iput-object p1, p0, Landroidx/appcompat/widget/as$b;->a:Landroidx/appcompat/widget/as;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/widget/d;Landroid/content/Intent;)Z
    .locals 0

    .line 402
    iget-object p1, p0, Landroidx/appcompat/widget/as$b;->a:Landroidx/appcompat/widget/as;

    iget-object p1, p1, Landroidx/appcompat/widget/as;->d:Landroidx/appcompat/widget/as$a;

    if-eqz p1, :cond_0

    .line 403
    iget-object p1, p0, Landroidx/appcompat/widget/as$b;->a:Landroidx/appcompat/widget/as;

    iget-object p1, p1, Landroidx/appcompat/widget/as;->d:Landroidx/appcompat/widget/as$a;

    iget-object p0, p0, Landroidx/appcompat/widget/as$b;->a:Landroidx/appcompat/widget/as;

    invoke-interface {p1, p0, p2}, Landroidx/appcompat/widget/as$a;->a(Landroidx/appcompat/widget/as;Landroid/content/Intent;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
