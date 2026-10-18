.class Lcom/google/android/material/button/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/button/MaterialButton$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/button/b;


# direct methods
.method private constructor <init>(Lcom/google/android/material/button/b;)V
    .locals 0

    .line 817
    iput-object p1, p0, Lcom/google/android/material/button/b$d;->a:Lcom/google/android/material/button/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/button/b;Lcom/google/android/material/button/b$1;)V
    .locals 0

    .line 817
    invoke-direct {p0, p1}, Lcom/google/android/material/button/b$d;-><init>(Lcom/google/android/material/button/b;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/button/MaterialButton;Z)V
    .locals 0
    .param p1    # Lcom/google/android/material/button/MaterialButton;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 821
    iget-object p0, p0, Lcom/google/android/material/button/b$d;->a:Lcom/google/android/material/button/b;

    invoke-virtual {p0}, Lcom/google/android/material/button/b;->invalidate()V

    return-void
.end method
