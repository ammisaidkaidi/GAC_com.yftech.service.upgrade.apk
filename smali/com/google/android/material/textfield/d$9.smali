.class Lcom/google/android/material/textfield/d$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AutoCompleteTextView$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/textfield/d;->d(Landroid/widget/AutoCompleteTextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/textfield/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/d;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/google/android/material/textfield/d$9;->a:Lcom/google/android/material/textfield/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 398
    iget-object v0, p0, Lcom/google/android/material/textfield/d$9;->a:Lcom/google/android/material/textfield/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/material/textfield/d;->b(Lcom/google/android/material/textfield/d;Z)Z

    .line 399
    iget-object v0, p0, Lcom/google/android/material/textfield/d$9;->a:Lcom/google/android/material/textfield/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/material/textfield/d;->a(Lcom/google/android/material/textfield/d;J)J

    .line 400
    iget-object p0, p0, Lcom/google/android/material/textfield/d$9;->a:Lcom/google/android/material/textfield/d;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/material/textfield/d;->a(Lcom/google/android/material/textfield/d;Z)V

    return-void
.end method
