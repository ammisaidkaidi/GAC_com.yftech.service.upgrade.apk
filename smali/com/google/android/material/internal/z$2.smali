.class final Lcom/google/android/material/internal/z$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/z$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/z;->a(Landroid/view/View;Landroid/util/AttributeSet;IILcom/google/android/material/internal/z$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Z

.field final synthetic d:Lcom/google/android/material/internal/z$a;


# direct methods
.method constructor <init>(ZZZLcom/google/android/material/internal/z$a;)V
    .locals 0

    .line 174
    iput-boolean p1, p0, Lcom/google/android/material/internal/z$2;->a:Z

    iput-boolean p2, p0, Lcom/google/android/material/internal/z$2;->b:Z

    iput-boolean p3, p0, Lcom/google/android/material/internal/z$2;->c:Z

    iput-object p4, p0, Lcom/google/android/material/internal/z$2;->d:Lcom/google/android/material/internal/z$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/n/ao;Lcom/google/android/material/internal/z$b;)Landroidx/core/n/ao;
    .locals 3
    .param p2    # Landroidx/core/n/ao;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/internal/z$b;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 181
    iget-boolean v0, p0, Lcom/google/android/material/internal/z$2;->a:Z

    if-eqz v0, :cond_0

    .line 182
    iget v0, p3, Lcom/google/android/material/internal/z$b;->d:I

    invoke-virtual {p2}, Landroidx/core/n/ao;->d()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/material/internal/z$b;->d:I

    .line 184
    :cond_0
    invoke-static {p1}, Lcom/google/android/material/internal/z;->a(Landroid/view/View;)Z

    move-result v0

    .line 185
    iget-boolean v1, p0, Lcom/google/android/material/internal/z$2;->b:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 187
    iget v1, p3, Lcom/google/android/material/internal/z$b;->c:I

    invoke-virtual {p2}, Landroidx/core/n/ao;->a()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/material/internal/z$b;->c:I

    goto :goto_0

    .line 189
    :cond_1
    iget v1, p3, Lcom/google/android/material/internal/z$b;->a:I

    invoke-virtual {p2}, Landroidx/core/n/ao;->a()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p3, Lcom/google/android/material/internal/z$b;->a:I

    .line 192
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/material/internal/z$2;->c:Z

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 194
    iget v0, p3, Lcom/google/android/material/internal/z$b;->a:I

    invoke-virtual {p2}, Landroidx/core/n/ao;->c()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/material/internal/z$b;->a:I

    goto :goto_1

    .line 196
    :cond_3
    iget v0, p3, Lcom/google/android/material/internal/z$b;->c:I

    invoke-virtual {p2}, Landroidx/core/n/ao;->c()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p3, Lcom/google/android/material/internal/z$b;->c:I

    .line 199
    :cond_4
    :goto_1
    invoke-virtual {p3, p1}, Lcom/google/android/material/internal/z$b;->a(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/google/android/material/internal/z$2;->d:Lcom/google/android/material/internal/z$a;

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/google/android/material/internal/z$2;->d:Lcom/google/android/material/internal/z$a;

    .line 201
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/material/internal/z$a;->a(Landroid/view/View;Landroidx/core/n/ao;Lcom/google/android/material/internal/z$b;)Landroidx/core/n/ao;

    move-result-object p2

    :cond_5
    return-object p2
.end method
