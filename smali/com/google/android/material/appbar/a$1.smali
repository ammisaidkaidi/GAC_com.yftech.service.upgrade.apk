.class Lcom/google/android/material/appbar/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/n/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/appbar/a;


# direct methods
.method constructor <init>(Lcom/google/android/material/appbar/a;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/google/android/material/appbar/a$1;->a:Lcom/google/android/material/appbar/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/n/ao;)Landroidx/core/n/ao;
    .locals 0
    .param p2    # Landroidx/core/n/ao;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 251
    iget-object p0, p0, Lcom/google/android/material/appbar/a$1;->a:Lcom/google/android/material/appbar/a;

    invoke-virtual {p0, p2}, Lcom/google/android/material/appbar/a;->a(Landroidx/core/n/ao;)Landroidx/core/n/ao;

    move-result-object p0

    return-object p0
.end method
