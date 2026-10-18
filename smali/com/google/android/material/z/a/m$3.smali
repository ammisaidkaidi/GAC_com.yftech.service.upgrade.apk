.class Lcom/google/android/material/z/a/m$3;
.super Lcom/google/android/material/z/a/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/z/a/m;->a(Landroid/app/Activity;Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/Window;

.field final synthetic b:Lcom/google/android/material/z/a/m;


# direct methods
.method constructor <init>(Lcom/google/android/material/z/a/m;Landroid/view/Window;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/google/android/material/z/a/m$3;->b:Lcom/google/android/material/z/a/m;

    iput-object p2, p0, Lcom/google/android/material/z/a/m$3;->a:Landroid/view/Window;

    invoke-direct {p0}, Lcom/google/android/material/z/a/u;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/google/android/material/z/a/m$3;->a:Landroid/view/Window;

    invoke-static {p0}, Lcom/google/android/material/z/a/m;->a(Landroid/view/Window;)V

    return-void
.end method
