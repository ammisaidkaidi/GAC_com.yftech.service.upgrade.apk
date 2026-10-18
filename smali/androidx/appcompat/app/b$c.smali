.class Landroidx/appcompat/app/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/app/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:Landroidx/appcompat/app/c$a;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput-object p1, p0, Landroidx/appcompat/app/b$c;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 525
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 526
    invoke-virtual {p0}, Landroidx/appcompat/app/b$c;->b()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x101030b

    const/4 v3, 0x0

    aput v2, v1, v3

    const v2, 0x10102ce

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 529
    invoke-virtual {p0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 530
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0

    .line 533
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/b$c;->a:Landroid/app/Activity;

    invoke-static {p0}, Landroidx/appcompat/app/c;->a(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public a(I)V
    .locals 2

    .line 570
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 571
    iget-object p0, p0, Landroidx/appcompat/app/b$c;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 573
    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    goto :goto_0

    .line 576
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/b$c;->b:Landroidx/appcompat/app/c$a;

    iget-object v1, p0, Landroidx/appcompat/app/b$c;->a:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Landroidx/appcompat/app/c;->a(Landroidx/appcompat/app/c$a;Landroid/app/Activity;I)Landroidx/appcompat/app/c$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/b$c;->b:Landroidx/appcompat/app/c$a;

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    .line 554
    iget-object v0, p0, Landroidx/appcompat/app/b$c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 556
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 557
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 558
    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 560
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 561
    iget-object v1, p0, Landroidx/appcompat/app/b$c;->a:Landroid/app/Activity;

    invoke-static {v1, p1, p2}, Landroidx/appcompat/app/c;->a(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Landroidx/appcompat/app/c$a;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/b$c;->b:Landroidx/appcompat/app/c$a;

    const/4 p0, 0x0

    .line 563
    invoke-virtual {v0, p0}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .line 538
    iget-object v0, p0, Landroidx/appcompat/app/b$c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    .line 542
    :cond_0
    iget-object p0, p0, Landroidx/appcompat/app/b$c;->a:Landroid/app/Activity;

    return-object p0
.end method

.method public c()Z
    .locals 0

    .line 547
    iget-object p0, p0, Landroidx/appcompat/app/b$c;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 549
    invoke-virtual {p0}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
