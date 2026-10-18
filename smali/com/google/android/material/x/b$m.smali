.class public Lcom/google/android/material/x/b$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/x/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/x/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "m"
.end annotation


# instance fields
.field private final a:Landroidx/l/a/d;


# direct methods
.method public constructor <init>(Landroidx/l/a/d;)V
    .locals 0

    .line 3320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3321
    iput-object p1, p0, Lcom/google/android/material/x/b$m;->a:Landroidx/l/a/d;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/x/b$h;)V
    .locals 0
    .param p1    # Lcom/google/android/material/x/b$h;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 3326
    iget-object p0, p0, Lcom/google/android/material/x/b$m;->a:Landroidx/l/a/d;

    invoke-virtual {p1}, Lcom/google/android/material/x/b$h;->d()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/l/a/d;->setCurrentItem(I)V

    return-void
.end method

.method public b(Lcom/google/android/material/x/b$h;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/google/android/material/x/b$h;)V
    .locals 0

    return-void
.end method
