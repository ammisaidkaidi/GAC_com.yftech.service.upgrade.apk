.class Lcom/google/android/material/m/a$a;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/m/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/m/a;

.field private final b:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/google/android/material/m/a;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/google/android/material/m/a$a;->a:Lcom/google/android/material/m/a;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 256
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/m/a$a;->b:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    .line 260
    iget-object p1, p0, Lcom/google/android/material/m/a$a;->a:Lcom/google/android/material/m/a;

    invoke-static {p1}, Lcom/google/android/material/m/a;->a(Lcom/google/android/material/m/a;)Lcom/google/android/material/t/o;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/google/android/material/m/a$a;->a:Lcom/google/android/material/m/a;

    invoke-static {p1}, Lcom/google/android/material/m/a;->b(Lcom/google/android/material/m/a;)Landroid/graphics/RectF;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/m/a$a;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 265
    iget-object p1, p0, Lcom/google/android/material/m/a$a;->a:Lcom/google/android/material/m/a;

    invoke-static {p1}, Lcom/google/android/material/m/a;->c(Lcom/google/android/material/m/a;)Lcom/google/android/material/t/j;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/m/a$a;->b:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/google/android/material/t/j;->setBounds(Landroid/graphics/Rect;)V

    .line 266
    iget-object p0, p0, Lcom/google/android/material/m/a$a;->a:Lcom/google/android/material/m/a;

    invoke-static {p0}, Lcom/google/android/material/m/a;->c(Lcom/google/android/material/m/a;)Lcom/google/android/material/t/j;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/google/android/material/t/j;->getOutline(Landroid/graphics/Outline;)V

    return-void
.end method
