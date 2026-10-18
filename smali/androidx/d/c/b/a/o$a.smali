.class Landroidx/d/c/b/a/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/c/b/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/d/c/b/e;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field final synthetic h:Landroidx/d/c/b/a/o;


# direct methods
.method public constructor <init>(Landroidx/d/c/b/a/o;Landroidx/d/c/b/e;Landroidx/d/c/e;I)V
    .locals 0

    .line 235
    iput-object p1, p0, Landroidx/d/c/b/a/o$a;->h:Landroidx/d/c/b/a/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/d/c/b/a/o$a;->a:Ljava/lang/ref/WeakReference;

    .line 237
    iget-object p1, p2, Landroidx/d/c/b/e;->T:Landroidx/d/c/b/d;

    invoke-virtual {p3, p1}, Landroidx/d/c/e;->b(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/d/c/b/a/o$a;->b:I

    .line 238
    iget-object p1, p2, Landroidx/d/c/b/e;->U:Landroidx/d/c/b/d;

    invoke-virtual {p3, p1}, Landroidx/d/c/e;->b(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/d/c/b/a/o$a;->c:I

    .line 239
    iget-object p1, p2, Landroidx/d/c/b/e;->V:Landroidx/d/c/b/d;

    invoke-virtual {p3, p1}, Landroidx/d/c/e;->b(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/d/c/b/a/o$a;->d:I

    .line 240
    iget-object p1, p2, Landroidx/d/c/b/e;->W:Landroidx/d/c/b/d;

    invoke-virtual {p3, p1}, Landroidx/d/c/e;->b(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/d/c/b/a/o$a;->e:I

    .line 241
    iget-object p1, p2, Landroidx/d/c/b/e;->X:Landroidx/d/c/b/d;

    invoke-virtual {p3, p1}, Landroidx/d/c/e;->b(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/d/c/b/a/o$a;->f:I

    .line 242
    iput p4, p0, Landroidx/d/c/b/a/o$a;->g:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 246
    iget-object v0, p0, Landroidx/d/c/b/a/o$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/d/c/b/e;

    if-eqz v1, :cond_0

    .line 248
    iget v2, p0, Landroidx/d/c/b/a/o$a;->b:I

    iget v3, p0, Landroidx/d/c/b/a/o$a;->c:I

    iget v4, p0, Landroidx/d/c/b/a/o$a;->d:I

    iget v5, p0, Landroidx/d/c/b/a/o$a;->e:I

    iget v6, p0, Landroidx/d/c/b/a/o$a;->f:I

    iget v7, p0, Landroidx/d/c/b/a/o$a;->g:I

    invoke-virtual/range {v1 .. v7}, Landroidx/d/c/b/e;->a(IIIIII)V

    :cond_0
    return-void
.end method
