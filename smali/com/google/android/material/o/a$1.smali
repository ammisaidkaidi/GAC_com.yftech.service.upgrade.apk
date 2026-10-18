.class Lcom/google/android/material/o/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/o/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/o/a;


# direct methods
.method constructor <init>(Lcom/google/android/material/o/a;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/google/android/material/o/a$1;->a:Lcom/google/android/material/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/g;)V
    .locals 0

    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .locals 0

    .line 215
    iget-object p1, p0, Lcom/google/android/material/o/a$1;->a:Lcom/google/android/material/o/a;

    iget-object p1, p1, Lcom/google/android/material/o/a;->c:Lcom/google/android/material/o/a$a;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/material/o/a$1;->a:Lcom/google/android/material/o/a;

    iget-object p0, p0, Lcom/google/android/material/o/a;->c:Lcom/google/android/material/o/a$a;

    invoke-interface {p0, p2}, Lcom/google/android/material/o/a$a;->a(Landroid/view/MenuItem;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
