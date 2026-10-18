.class Lcom/google/android/material/z/a/l$f$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/z/a/v$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/z/a/l$f;->e(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/z/a/l$f;


# direct methods
.method constructor <init>(Lcom/google/android/material/z/a/l$f;)V
    .locals 0

    .line 1287
    iput-object p1, p0, Lcom/google/android/material/z/a/l$f$2;->a:Lcom/google/android/material/z/a/l$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1290
    iget-object p0, p0, Lcom/google/android/material/z/a/l$f$2;->a:Lcom/google/android/material/z/a/l$f;

    invoke-static {p0}, Lcom/google/android/material/z/a/l$f;->b(Lcom/google/android/material/z/a/l$f;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
