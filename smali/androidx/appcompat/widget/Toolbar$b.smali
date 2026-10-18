.class public Landroidx/appcompat/widget/Toolbar$b;
.super Landroidx/appcompat/app/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field static final b:I = 0x0

.field static final c:I = 0x1

.field static final d:I = 0x2


# instance fields
.field e:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v0, -0x2

    const/4 v1, -0x1

    .line 2366
    invoke-direct {p0, v0, v1, p1}, Landroidx/appcompat/widget/Toolbar$b;-><init>(III)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 2356
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/a$b;-><init>(II)V

    const/4 p1, 0x0

    .line 2349
    iput p1, p0, Landroidx/appcompat/widget/Toolbar$b;->e:I

    const p1, 0x800013

    .line 2357
    iput p1, p0, Landroidx/appcompat/widget/Toolbar$b;->a:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 2361
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/a$b;-><init>(II)V

    const/4 p1, 0x0

    .line 2349
    iput p1, p0, Landroidx/appcompat/widget/Toolbar$b;->e:I

    .line 2362
    iput p3, p0, Landroidx/appcompat/widget/Toolbar$b;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 2352
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/a$b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2349
    iput p1, p0, Landroidx/appcompat/widget/Toolbar$b;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2387
    invoke-direct {p0, p1}, Landroidx/appcompat/app/a$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 2349
    iput p1, p0, Landroidx/appcompat/widget/Toolbar$b;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 2380
    invoke-direct {p0, p1}, Landroidx/appcompat/app/a$b;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    .line 2349
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$b;->e:I

    .line 2383
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/Toolbar$b;->a(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/a$b;)V
    .locals 0

    .line 2376
    invoke-direct {p0, p1}, Landroidx/appcompat/app/a$b;-><init>(Landroidx/appcompat/app/a$b;)V

    const/4 p1, 0x0

    .line 2349
    iput p1, p0, Landroidx/appcompat/widget/Toolbar$b;->e:I

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/Toolbar$b;)V
    .locals 1

    .line 2370
    invoke-direct {p0, p1}, Landroidx/appcompat/app/a$b;-><init>(Landroidx/appcompat/app/a$b;)V

    const/4 v0, 0x0

    .line 2349
    iput v0, p0, Landroidx/appcompat/widget/Toolbar$b;->e:I

    .line 2372
    iget p1, p1, Landroidx/appcompat/widget/Toolbar$b;->e:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar$b;->e:I

    return-void
.end method


# virtual methods
.method a(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 1

    .line 2391
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$b;->leftMargin:I

    .line 2392
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$b;->topMargin:I

    .line 2393
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, p0, Landroidx/appcompat/widget/Toolbar$b;->rightMargin:I

    .line 2394
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, Landroidx/appcompat/widget/Toolbar$b;->bottomMargin:I

    return-void
.end method
