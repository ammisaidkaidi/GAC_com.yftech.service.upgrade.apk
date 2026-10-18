.class Lcom/google/android/material/u/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/u/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/u/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/AttributeSet;

.field final synthetic b:I

.field final synthetic c:Lcom/google/android/material/u/c;


# direct methods
.method constructor <init>(Lcom/google/android/material/u/c;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/google/android/material/u/c$1;->c:Lcom/google/android/material/u/c;

    iput-object p2, p0, Lcom/google/android/material/u/c$1;->a:Landroid/util/AttributeSet;

    iput p3, p0, Lcom/google/android/material/u/c$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/material/y/a;
    .locals 7

    .line 329
    iget-object v0, p0, Lcom/google/android/material/u/c$1;->c:Lcom/google/android/material/u/c;

    .line 331
    invoke-virtual {v0}, Lcom/google/android/material/u/c;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/u/c$1;->a:Landroid/util/AttributeSet;

    sget-object v3, Lcom/google/android/material/a$o;->Slider:[I

    iget v4, p0, Lcom/google/android/material/u/c$1;->b:I

    invoke-static {}, Lcom/google/android/material/u/c;->f()I

    move-result v5

    const/4 v0, 0x0

    new-array v6, v0, [I

    .line 330
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/s;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 332
    iget-object p0, p0, Lcom/google/android/material/u/c$1;->c:Lcom/google/android/material/u/c;

    invoke-virtual {p0}, Lcom/google/android/material/u/c;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/android/material/u/c;->a(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/google/android/material/y/a;

    move-result-object p0

    .line 333
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p0
.end method
