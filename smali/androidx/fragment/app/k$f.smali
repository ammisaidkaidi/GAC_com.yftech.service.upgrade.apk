.class Landroidx/fragment/app/k$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/k$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:I

.field final synthetic d:Landroidx/fragment/app/k;


# direct methods
.method constructor <init>(Landroidx/fragment/app/k;Ljava/lang/String;II)V
    .locals 0

    .line 3295
    iput-object p1, p0, Landroidx/fragment/app/k$f;->d:Landroidx/fragment/app/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3296
    iput-object p2, p0, Landroidx/fragment/app/k$f;->a:Ljava/lang/String;

    .line 3297
    iput p3, p0, Landroidx/fragment/app/k$f;->b:I

    .line 3298
    iput p4, p0, Landroidx/fragment/app/k$f;->c:I

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/a;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 3304
    iget-object v0, p0, Landroidx/fragment/app/k$f;->d:Landroidx/fragment/app/k;

    iget-object v0, v0, Landroidx/fragment/app/k;->w:Landroidx/fragment/app/d;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/fragment/app/k$f;->b:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/k$f;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3307
    iget-object v0, p0, Landroidx/fragment/app/k$f;->d:Landroidx/fragment/app/k;

    iget-object v0, v0, Landroidx/fragment/app/k;->w:Landroidx/fragment/app/d;

    invoke-virtual {v0}, Landroidx/fragment/app/d;->H()Landroidx/fragment/app/j;

    move-result-object v0

    .line 3308
    invoke-virtual {v0}, Landroidx/fragment/app/j;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 3314
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/k$f;->d:Landroidx/fragment/app/k;

    iget-object v3, p0, Landroidx/fragment/app/k$f;->a:Ljava/lang/String;

    iget v4, p0, Landroidx/fragment/app/k$f;->b:I

    iget v5, p0, Landroidx/fragment/app/k$f;->c:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroidx/fragment/app/k;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method
