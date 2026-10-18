.class Landroidx/recyclerview/widget/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/recyclerview/widget/ag$b;,
        Landroidx/recyclerview/widget/ag$a;,
        Landroidx/recyclerview/widget/ag$c;
    }
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x4

.field static final d:I = 0x0

.field static final e:I = 0x1

.field static final f:I = 0x2

.field static final g:I = 0x4

.field static final h:I = 0x4

.field static final i:I = 0x10

.field static final j:I = 0x20

.field static final k:I = 0x40

.field static final l:I = 0x8

.field static final m:I = 0x100

.field static final n:I = 0x200

.field static final o:I = 0x400

.field static final p:I = 0xc

.field static final q:I = 0x1000

.field static final r:I = 0x2000

.field static final s:I = 0x4000

.field static final t:I = 0x7


# instance fields
.field final u:Landroidx/recyclerview/widget/ag$b;

.field v:Landroidx/recyclerview/widget/ag$a;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ag$b;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Landroidx/recyclerview/widget/ag;->u:Landroidx/recyclerview/widget/ag$b;

    .line 133
    new-instance p1, Landroidx/recyclerview/widget/ag$a;

    invoke-direct {p1}, Landroidx/recyclerview/widget/ag$a;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/ag;->v:Landroidx/recyclerview/widget/ag$a;

    return-void
.end method


# virtual methods
.method a(IIII)Landroid/view/View;
    .locals 8

    .line 213
    iget-object v0, p0, Landroidx/recyclerview/widget/ag;->u:Landroidx/recyclerview/widget/ag$b;

    invoke-interface {v0}, Landroidx/recyclerview/widget/ag$b;->a()I

    move-result v0

    .line 214
    iget-object v1, p0, Landroidx/recyclerview/widget/ag;->u:Landroidx/recyclerview/widget/ag$b;

    invoke-interface {v1}, Landroidx/recyclerview/widget/ag$b;->b()I

    move-result v1

    if-le p2, p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-eq p1, p2, :cond_3

    .line 218
    iget-object v4, p0, Landroidx/recyclerview/widget/ag;->u:Landroidx/recyclerview/widget/ag$b;

    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/ag$b;->a(I)Landroid/view/View;

    move-result-object v4

    .line 219
    iget-object v5, p0, Landroidx/recyclerview/widget/ag;->u:Landroidx/recyclerview/widget/ag$b;

    invoke-interface {v5, v4}, Landroidx/recyclerview/widget/ag$b;->a(Landroid/view/View;)I

    move-result v5

    .line 220
    iget-object v6, p0, Landroidx/recyclerview/widget/ag;->u:Landroidx/recyclerview/widget/ag$b;

    invoke-interface {v6, v4}, Landroidx/recyclerview/widget/ag$b;->b(Landroid/view/View;)I

    move-result v6

    .line 221
    iget-object v7, p0, Landroidx/recyclerview/widget/ag;->v:Landroidx/recyclerview/widget/ag$a;

    invoke-virtual {v7, v0, v1, v5, v6}, Landroidx/recyclerview/widget/ag$a;->a(IIII)V

    if-eqz p3, :cond_1

    .line 223
    iget-object v5, p0, Landroidx/recyclerview/widget/ag;->v:Landroidx/recyclerview/widget/ag$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/ag$a;->a()V

    .line 224
    iget-object v5, p0, Landroidx/recyclerview/widget/ag;->v:Landroidx/recyclerview/widget/ag$a;

    invoke-virtual {v5, p3}, Landroidx/recyclerview/widget/ag$a;->a(I)V

    .line 225
    iget-object v5, p0, Landroidx/recyclerview/widget/ag;->v:Landroidx/recyclerview/widget/ag$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/ag$a;->b()Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v4

    :cond_1
    if-eqz p4, :cond_2

    .line 231
    iget-object v5, p0, Landroidx/recyclerview/widget/ag;->v:Landroidx/recyclerview/widget/ag$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/ag$a;->a()V

    .line 232
    iget-object v5, p0, Landroidx/recyclerview/widget/ag;->v:Landroidx/recyclerview/widget/ag$a;

    invoke-virtual {v5, p4}, Landroidx/recyclerview/widget/ag$a;->a(I)V

    .line 233
    iget-object v5, p0, Landroidx/recyclerview/widget/ag;->v:Landroidx/recyclerview/widget/ag$a;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/ag$a;->b()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v4

    :cond_2
    add-int/2addr p1, v2

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method a(Landroid/view/View;I)Z
    .locals 5

    .line 248
    iget-object v0, p0, Landroidx/recyclerview/widget/ag;->v:Landroidx/recyclerview/widget/ag$a;

    iget-object v1, p0, Landroidx/recyclerview/widget/ag;->u:Landroidx/recyclerview/widget/ag$b;

    invoke-interface {v1}, Landroidx/recyclerview/widget/ag$b;->a()I

    move-result v1

    iget-object v2, p0, Landroidx/recyclerview/widget/ag;->u:Landroidx/recyclerview/widget/ag$b;

    invoke-interface {v2}, Landroidx/recyclerview/widget/ag$b;->b()I

    move-result v2

    iget-object v3, p0, Landroidx/recyclerview/widget/ag;->u:Landroidx/recyclerview/widget/ag$b;

    .line 249
    invoke-interface {v3, p1}, Landroidx/recyclerview/widget/ag$b;->a(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroidx/recyclerview/widget/ag;->u:Landroidx/recyclerview/widget/ag$b;

    invoke-interface {v4, p1}, Landroidx/recyclerview/widget/ag$b;->b(Landroid/view/View;)I

    move-result p1

    .line 248
    invoke-virtual {v0, v1, v2, v3, p1}, Landroidx/recyclerview/widget/ag$a;->a(IIII)V

    if-eqz p2, :cond_0

    .line 251
    iget-object p1, p0, Landroidx/recyclerview/widget/ag;->v:Landroidx/recyclerview/widget/ag$a;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/ag$a;->a()V

    .line 252
    iget-object p1, p0, Landroidx/recyclerview/widget/ag;->v:Landroidx/recyclerview/widget/ag$a;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/ag$a;->a(I)V

    .line 253
    iget-object p0, p0, Landroidx/recyclerview/widget/ag;->v:Landroidx/recyclerview/widget/ag$a;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/ag$a;->b()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
