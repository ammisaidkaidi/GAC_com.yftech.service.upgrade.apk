.class Landroidx/appcompat/widget/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroidx/appcompat/widget/x$e;


# annotations
.annotation build Landroidx/annotation/ax;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroidx/appcompat/app/d;
    .annotation build Landroidx/annotation/ax;
    .end annotation
.end field

.field final synthetic b:Landroidx/appcompat/widget/x;

.field private c:Landroid/widget/ListAdapter;

.field private d:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/x;)V
    .locals 0

    .line 858
    iput-object p1, p0, Landroidx/appcompat/widget/x$a;->b:Landroidx/appcompat/widget/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 0

    .line 889
    iget-object p0, p0, Landroidx/appcompat/widget/x$a;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    const-string p0, "AppCompatSpinner"

    const-string p1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    .line 927
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(II)V
    .locals 3

    .line 894
    iget-object v0, p0, Landroidx/appcompat/widget/x$a;->c:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    return-void

    .line 897
    :cond_0
    new-instance v0, Landroidx/appcompat/app/d$a;

    iget-object v1, p0, Landroidx/appcompat/widget/x$a;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {v1}, Landroidx/appcompat/widget/x;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/d$a;-><init>(Landroid/content/Context;)V

    .line 898
    iget-object v1, p0, Landroidx/appcompat/widget/x$a;->d:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 899
    iget-object v1, p0, Landroidx/appcompat/widget/x$a;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/d$a;->a(Ljava/lang/CharSequence;)Landroidx/appcompat/app/d$a;

    .line 901
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/x$a;->c:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroidx/appcompat/widget/x$a;->b:Landroidx/appcompat/widget/x;

    .line 902
    invoke-virtual {v2}, Landroidx/appcompat/widget/x;->getSelectedItemPosition()I

    move-result v2

    .line 901
    invoke-virtual {v0, v1, v2, p0}, Landroidx/appcompat/app/d$a;->a(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/d$a;

    move-result-object v0

    .line 902
    invoke-virtual {v0}, Landroidx/appcompat/app/d$a;->b()Landroidx/appcompat/app/d;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/widget/x$a;->a:Landroidx/appcompat/app/d;

    .line 903
    iget-object v0, p0, Landroidx/appcompat/widget/x$a;->a:Landroidx/appcompat/app/d;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->a()Landroid/widget/ListView;

    move-result-object v0

    .line 904
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    .line 905
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 906
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 908
    :cond_2
    iget-object p0, p0, Landroidx/appcompat/widget/x$a;->a:Landroidx/appcompat/app/d;

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->show()V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    const-string p0, "AppCompatSpinner"

    const-string p1, "Cannot set popup background for MODE_DIALOG, ignoring"

    .line 922
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 879
    iput-object p1, p0, Landroidx/appcompat/widget/x$a;->c:Landroid/widget/ListAdapter;

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 884
    iput-object p1, p0, Landroidx/appcompat/widget/x$a;->d:Ljava/lang/CharSequence;

    return-void
.end method

.method public b()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public b(I)V
    .locals 0

    const-string p0, "AppCompatSpinner"

    const-string p1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    .line 932
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public c(I)V
    .locals 0

    const-string p0, "AppCompatSpinner"

    const-string p1, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    .line 952
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public d()V
    .locals 1

    .line 866
    iget-object v0, p0, Landroidx/appcompat/widget/x$a;->a:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Landroidx/appcompat/widget/x$a;->a:Landroidx/appcompat/app/d;

    invoke-virtual {v0}, Landroidx/appcompat/app/d;->dismiss()V

    const/4 v0, 0x0

    .line 868
    iput-object v0, p0, Landroidx/appcompat/widget/x$a;->a:Landroidx/appcompat/app/d;

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 874
    iget-object v0, p0, Landroidx/appcompat/widget/x$a;->a:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/x$a;->a:Landroidx/appcompat/app/d;

    invoke-virtual {p0}, Landroidx/appcompat/app/d;->isShowing()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public g()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 913
    iget-object p1, p0, Landroidx/appcompat/widget/x$a;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/x;->setSelection(I)V

    .line 914
    iget-object p1, p0, Landroidx/appcompat/widget/x$a;->b:Landroidx/appcompat/widget/x;

    invoke-virtual {p1}, Landroidx/appcompat/widget/x;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 915
    iget-object p1, p0, Landroidx/appcompat/widget/x$a;->b:Landroidx/appcompat/widget/x;

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/appcompat/widget/x$a;->c:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    invoke-virtual {p1, v0, p2, v1, v2}, Landroidx/appcompat/widget/x;->performItemClick(Landroid/view/View;IJ)Z

    .line 917
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/x$a;->d()V

    return-void
.end method
