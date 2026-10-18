.class Landroidx/viewpager2/a/h$2;
.super Landroidx/viewpager2/a/h$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/viewpager2/a/h;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/viewpager2/a/h;


# direct methods
.method constructor <init>(Landroidx/viewpager2/a/h;)V
    .locals 0

    .line 212
    iput-object p1, p0, Landroidx/viewpager2/a/h$2;->a:Landroidx/viewpager2/a/h;

    invoke-direct {p0}, Landroidx/viewpager2/a/h$f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 224
    iget-object p0, p0, Landroidx/viewpager2/a/h$2;->a:Landroidx/viewpager2/a/h;

    invoke-virtual {p0}, Landroidx/viewpager2/a/h;->a()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 215
    iget-object v0, p0, Landroidx/viewpager2/a/h$2;->a:Landroidx/viewpager2/a/h;

    iget v0, v0, Landroidx/viewpager2/a/h;->h:I

    if-eq v0, p1, :cond_0

    .line 216
    iget-object v0, p0, Landroidx/viewpager2/a/h$2;->a:Landroidx/viewpager2/a/h;

    iput p1, v0, Landroidx/viewpager2/a/h;->h:I

    .line 217
    iget-object p0, p0, Landroidx/viewpager2/a/h$2;->a:Landroidx/viewpager2/a/h;

    iget-object p0, p0, Landroidx/viewpager2/a/h;->l:Landroidx/viewpager2/a/h$a;

    invoke-virtual {p0}, Landroidx/viewpager2/a/h$a;->e()V

    :cond_0
    return-void
.end method
