.class Lcom/google/android/material/t/j$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/t/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/t/j;-><init>(Lcom/google/android/material/t/j$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/t/j;


# direct methods
.method constructor <init>(Lcom/google/android/material/t/j;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/google/android/material/t/j$1;->a:Lcom/google/android/material/t/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/t/q;Landroid/graphics/Matrix;I)V
    .locals 2
    .param p1    # Lcom/google/android/material/t/q;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 212
    iget-object v0, p0, Lcom/google/android/material/t/j$1;->a:Lcom/google/android/material/t/j;

    invoke-static {v0}, Lcom/google/android/material/t/j;->a(Lcom/google/android/material/t/j;)Ljava/util/BitSet;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/t/q;->a()Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Ljava/util/BitSet;->set(IZ)V

    .line 213
    iget-object p0, p0, Lcom/google/android/material/t/j$1;->a:Lcom/google/android/material/t/j;

    invoke-static {p0}, Lcom/google/android/material/t/j;->b(Lcom/google/android/material/t/j;)[Lcom/google/android/material/t/q$h;

    move-result-object p0

    invoke-virtual {p1, p2}, Lcom/google/android/material/t/q;->a(Landroid/graphics/Matrix;)Lcom/google/android/material/t/q$h;

    move-result-object p1

    aput-object p1, p0, p3

    return-void
.end method

.method public b(Lcom/google/android/material/t/q;Landroid/graphics/Matrix;I)V
    .locals 3
    .param p1    # Lcom/google/android/material/t/q;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 218
    iget-object v0, p0, Lcom/google/android/material/t/j$1;->a:Lcom/google/android/material/t/j;

    invoke-static {v0}, Lcom/google/android/material/t/j;->a(Lcom/google/android/material/t/j;)Ljava/util/BitSet;

    move-result-object v0

    add-int/lit8 v1, p3, 0x4

    invoke-virtual {p1}, Lcom/google/android/material/t/q;->a()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 219
    iget-object p0, p0, Lcom/google/android/material/t/j$1;->a:Lcom/google/android/material/t/j;

    invoke-static {p0}, Lcom/google/android/material/t/j;->c(Lcom/google/android/material/t/j;)[Lcom/google/android/material/t/q$h;

    move-result-object p0

    invoke-virtual {p1, p2}, Lcom/google/android/material/t/q;->a(Landroid/graphics/Matrix;)Lcom/google/android/material/t/q$h;

    move-result-object p1

    aput-object p1, p0, p3

    return-void
.end method
