.class Lcom/google/android/material/u/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/u/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/google/android/material/u/c;


# direct methods
.method private constructor <init>(Lcom/google/android/material/u/c;)V
    .locals 0

    .line 2101
    iput-object p1, p0, Lcom/google/android/material/u/c$a;->b:Lcom/google/android/material/u/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2102
    iput p1, p0, Lcom/google/android/material/u/c$a;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/material/u/c;Lcom/google/android/material/u/c$1;)V
    .locals 0

    .line 2101
    invoke-direct {p0, p1}, Lcom/google/android/material/u/c$a;-><init>(Lcom/google/android/material/u/c;)V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    .line 2105
    iput p1, p0, Lcom/google/android/material/u/c$a;->a:I

    return-void
.end method

.method public run()V
    .locals 2

    .line 2110
    iget-object v0, p0, Lcom/google/android/material/u/c$a;->b:Lcom/google/android/material/u/c;

    invoke-static {v0}, Lcom/google/android/material/u/c;->a(Lcom/google/android/material/u/c;)Lcom/google/android/material/u/c$b;

    move-result-object v0

    iget p0, p0, Lcom/google/android/material/u/c$a;->a:I

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/google/android/material/u/c$b;->a(II)Z

    return-void
.end method
