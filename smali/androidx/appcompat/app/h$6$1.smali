.class Landroidx/appcompat/app/h$6$1;
.super Landroidx/core/n/al;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/h$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/h$6;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/h$6;)V
    .locals 0

    .line 1290
    iput-object p1, p0, Landroidx/appcompat/app/h$6$1;->a:Landroidx/appcompat/app/h$6;

    invoke-direct {p0}, Landroidx/core/n/al;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 0

    .line 1293
    iget-object p0, p0, Landroidx/appcompat/app/h$6$1;->a:Landroidx/appcompat/app/h$6;

    iget-object p0, p0, Landroidx/appcompat/app/h$6;->a:Landroidx/appcompat/app/h;

    iget-object p0, p0, Landroidx/appcompat/app/h;->u:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    .line 1298
    iget-object p1, p0, Landroidx/appcompat/app/h$6$1;->a:Landroidx/appcompat/app/h$6;

    iget-object p1, p1, Landroidx/appcompat/app/h$6;->a:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->u:Landroidx/appcompat/widget/ActionBarContextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1299
    iget-object p1, p0, Landroidx/appcompat/app/h$6$1;->a:Landroidx/appcompat/app/h$6;

    iget-object p1, p1, Landroidx/appcompat/app/h$6;->a:Landroidx/appcompat/app/h;

    iget-object p1, p1, Landroidx/appcompat/app/h;->x:Landroidx/core/n/aj;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/core/n/aj;->a(Landroidx/core/n/ak;)Landroidx/core/n/aj;

    .line 1300
    iget-object p0, p0, Landroidx/appcompat/app/h$6$1;->a:Landroidx/appcompat/app/h$6;

    iget-object p0, p0, Landroidx/appcompat/app/h$6;->a:Landroidx/appcompat/app/h;

    iput-object v0, p0, Landroidx/appcompat/app/h;->x:Landroidx/core/n/aj;

    return-void
.end method
