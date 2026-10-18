.class Lcom/google/android/material/x/b$f;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/x/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/x/b;


# direct methods
.method constructor <init>(Lcom/google/android/material/x/b;)V
    .locals 0

    .line 3341
    iput-object p1, p0, Lcom/google/android/material/x/b$f;->a:Lcom/google/android/material/x/b;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 3345
    iget-object p0, p0, Lcom/google/android/material/x/b$f;->a:Lcom/google/android/material/x/b;

    invoke-virtual {p0}, Lcom/google/android/material/x/b;->h()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 3350
    iget-object p0, p0, Lcom/google/android/material/x/b$f;->a:Lcom/google/android/material/x/b;

    invoke-virtual {p0}, Lcom/google/android/material/x/b;->h()V

    return-void
.end method
