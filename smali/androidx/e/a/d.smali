.class public Landroidx/e/a/d;
.super Landroidx/e/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/e/a/d$a;,
        Landroidx/e/a/d$b;
    }
.end annotation


# instance fields
.field protected a:[I
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation
.end field

.field protected b:[I
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
        }
    .end annotation
.end field

.field c:[Ljava/lang/String;

.field private d:I

.field private p:Landroidx/e/a/d$a;

.field private q:Landroidx/e/a/d$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroidx/e/a/c;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    const/4 p1, -0x1

    .line 53
    iput p1, p0, Landroidx/e/a/d;->d:I

    .line 70
    iput-object p5, p0, Landroidx/e/a/d;->b:[I

    .line 71
    iput-object p4, p0, Landroidx/e/a/d;->c:[Ljava/lang/String;

    .line 72
    invoke-direct {p0, p3, p4}, Landroidx/e/a/d;->a(Landroid/database/Cursor;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3, p6}, Landroidx/e/a/c;-><init>(Landroid/content/Context;ILandroid/database/Cursor;I)V

    const/4 p1, -0x1

    .line 53
    iput p1, p0, Landroidx/e/a/d;->d:I

    .line 96
    iput-object p5, p0, Landroidx/e/a/d;->b:[I

    .line 97
    iput-object p4, p0, Landroidx/e/a/d;->c:[Ljava/lang/String;

    .line 98
    invoke-direct {p0, p3, p4}, Landroidx/e/a/d;->a(Landroid/database/Cursor;[Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/database/Cursor;[Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 318
    array-length v0, p2

    .line 319
    iget-object v1, p0, Landroidx/e/a/d;->a:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/e/a/d;->a:[I

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 320
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/e/a/d;->a:[I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 323
    iget-object v2, p0, Landroidx/e/a/d;->a:[I

    aget-object v3, p2, v1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 326
    iput-object p1, p0, Landroidx/e/a/d;->a:[I

    :cond_3
    return-void
.end method


# virtual methods
.method public a()Landroidx/e/a/d$b;
    .locals 0

    .line 167
    iget-object p0, p0, Landroidx/e/a/d;->q:Landroidx/e/a/d$b;

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 251
    iput p1, p0, Landroidx/e/a/d;->d:I

    return-void
.end method

.method public a(Landroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 0

    .line 351
    iput-object p2, p0, Landroidx/e/a/d;->c:[Ljava/lang/String;

    .line 352
    iput-object p3, p0, Landroidx/e/a/d;->b:[I

    .line 356
    iget-object p2, p0, Landroidx/e/a/d;->c:[Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Landroidx/e/a/d;->a(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 357
    invoke-super {p0, p1}, Landroidx/e/a/c;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8

    .line 126
    iget-object p2, p0, Landroidx/e/a/d;->q:Landroidx/e/a/d$b;

    .line 127
    iget-object v0, p0, Landroidx/e/a/d;->b:[I

    array-length v0, v0

    .line 128
    iget-object v1, p0, Landroidx/e/a/d;->a:[I

    .line 129
    iget-object v2, p0, Landroidx/e/a/d;->b:[I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_5

    .line 132
    aget v5, v2, v4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    if-eqz p2, :cond_0

    .line 136
    aget v6, v1, v4

    invoke-interface {p2, v5, p3, v6}, Landroidx/e/a/d$b;->a(Landroid/view/View;Landroid/database/Cursor;I)Z

    move-result v6

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    if-nez v6, :cond_4

    .line 140
    aget v6, v1, v4

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, ""

    .line 145
    :cond_1
    instance-of v7, v5, Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 146
    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {p0, v5, v6}, Landroidx/e/a/d;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_2

    .line 147
    :cond_2
    instance-of v7, v5, Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    .line 148
    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v6}, Landroidx/e/a/d;->a(Landroid/widget/ImageView;Ljava/lang/String;)V

    goto :goto_2

    .line 150
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not a "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " view that can be bounds by this SimpleCursorAdapter"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public a(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .line 200
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    :goto_0
    return-void
.end method

.method public a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 218
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Landroidx/e/a/d$a;)V
    .locals 0

    .line 283
    iput-object p1, p0, Landroidx/e/a/d;->p:Landroidx/e/a/d$a;

    return-void
.end method

.method public a(Landroidx/e/a/d$b;)V
    .locals 0

    .line 180
    iput-object p1, p0, Landroidx/e/a/d;->q:Landroidx/e/a/d$b;

    return-void
.end method

.method public b()I
    .locals 0

    .line 233
    iget p0, p0, Landroidx/e/a/d;->d:I

    return p0
.end method

.method public b(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 2

    .line 299
    iget-object v0, p0, Landroidx/e/a/d;->p:Landroidx/e/a/d$a;

    if-eqz v0, :cond_0

    .line 300
    iget-object p0, p0, Landroidx/e/a/d;->p:Landroidx/e/a/d$a;

    invoke-interface {p0, p1}, Landroidx/e/a/d$a;->a(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 301
    :cond_0
    iget v0, p0, Landroidx/e/a/d;->d:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 302
    iget p0, p0, Landroidx/e/a/d;->d:I

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 305
    :cond_1
    invoke-super {p0, p1}, Landroidx/e/a/c;->b(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public c(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1

    .line 335
    iget-object v0, p0, Landroidx/e/a/d;->c:[Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Landroidx/e/a/d;->a(Landroid/database/Cursor;[Ljava/lang/String;)V

    .line 336
    invoke-super {p0, p1}, Landroidx/e/a/c;->c(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public f()Landroidx/e/a/d$a;
    .locals 0

    .line 267
    iget-object p0, p0, Landroidx/e/a/d;->p:Landroidx/e/a/d$a;

    return-object p0
.end method
