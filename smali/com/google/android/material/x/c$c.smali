.class Lcom/google/android/material/x/c$c;
.super Landroidx/viewpager2/a/h$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/x/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/material/x/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I


# direct methods
.method constructor <init>(Lcom/google/android/material/x/b;)V
    .locals 1

    .line 197
    invoke-direct {p0}, Landroidx/viewpager2/a/h$f;-><init>()V

    .line 198
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/x/c$c;->a:Ljava/lang/ref/WeakReference;

    .line 199
    invoke-virtual {p0}, Lcom/google/android/material/x/c$c;->a()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x0

    .line 242
    iput v0, p0, Lcom/google/android/material/x/c$c;->c:I

    iput v0, p0, Lcom/google/android/material/x/c$c;->b:I

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 204
    iget v0, p0, Lcom/google/android/material/x/c$c;->c:I

    iput v0, p0, Lcom/google/android/material/x/c$c;->b:I

    .line 205
    iput p1, p0, Lcom/google/android/material/x/c$c;->c:I

    return-void
.end method

.method public a(IFI)V
    .locals 5

    .line 210
    iget-object p3, p0, Lcom/google/android/material/x/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/x/b;

    if-eqz p3, :cond_4

    .line 214
    iget v0, p0, Lcom/google/android/material/x/c$c;->c:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/google/android/material/x/c$c;->b:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 219
    :goto_1
    iget v4, p0, Lcom/google/android/material/x/c$c;->c:I

    if-ne v4, v2, :cond_2

    iget p0, p0, Lcom/google/android/material/x/c$c;->b:I

    if-eqz p0, :cond_3

    :cond_2
    move v1, v3

    .line 221
    :cond_3
    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/google/android/material/x/b;->a(IFZZ)V

    :cond_4
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 227
    iget-object v0, p0, Lcom/google/android/material/x/c$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/x/b;

    if-eqz v0, :cond_2

    .line 229
    invoke-virtual {v0}, Lcom/google/android/material/x/b;->getSelectedTabPosition()I

    move-result v1

    if-eq v1, p1, :cond_2

    .line 230
    invoke-virtual {v0}, Lcom/google/android/material/x/b;->getTabCount()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 233
    iget v1, p0, Lcom/google/android/material/x/c$c;->c:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/material/x/c$c;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget p0, p0, Lcom/google/android/material/x/c$c;->b:I

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 237
    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/material/x/b;->a(I)Lcom/google/android/material/x/b$h;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/google/android/material/x/b;->b(Lcom/google/android/material/x/b$h;Z)V

    :cond_2
    return-void
.end method
