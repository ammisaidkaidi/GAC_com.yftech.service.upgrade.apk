.class Lcom/google/android/material/t/j$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/t/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/t/j;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/google/android/material/t/j;


# direct methods
.method constructor <init>(Lcom/google/android/material/t/j;F)V
    .locals 0

    .line 1148
    iput-object p1, p0, Lcom/google/android/material/t/j$2;->b:Lcom/google/android/material/t/j;

    iput p2, p0, Lcom/google/android/material/t/j$2;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/t/d;)Lcom/google/android/material/t/d;
    .locals 1
    .param p1    # Lcom/google/android/material/t/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 1154
    instance-of v0, p1, Lcom/google/android/material/t/m;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/material/t/b;

    iget p0, p0, Lcom/google/android/material/t/j$2;->a:F

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/t/b;-><init>(FLcom/google/android/material/t/d;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
