.class Lcom/google/android/material/x/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/l/a/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/x/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/x/b;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/google/android/material/x/b;)V
    .locals 0

    .line 3357
    iput-object p1, p0, Lcom/google/android/material/x/b$a;->a:Lcom/google/android/material/x/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/l/a/d;Landroidx/l/a/a;Landroidx/l/a/a;)V
    .locals 0
    .param p1    # Landroidx/l/a/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/l/a/a;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroidx/l/a/a;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 3364
    iget-object p2, p0, Lcom/google/android/material/x/b$a;->a:Lcom/google/android/material/x/b;

    iget-object p2, p2, Lcom/google/android/material/x/b;->K:Landroidx/l/a/d;

    if-ne p2, p1, :cond_0

    .line 3365
    iget-object p1, p0, Lcom/google/android/material/x/b$a;->a:Lcom/google/android/material/x/b;

    iget-boolean p0, p0, Lcom/google/android/material/x/b$a;->b:Z

    invoke-virtual {p1, p3, p0}, Lcom/google/android/material/x/b;->a(Landroidx/l/a/a;Z)V

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0

    .line 3370
    iput-boolean p1, p0, Lcom/google/android/material/x/b$a;->b:Z

    return-void
.end method
