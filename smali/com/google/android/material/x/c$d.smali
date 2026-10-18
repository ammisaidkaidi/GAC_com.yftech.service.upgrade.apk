.class Lcom/google/android/material/x/c$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/x/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/x/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Landroidx/viewpager2/a/h;

.field private final b:Z


# direct methods
.method constructor <init>(Landroidx/viewpager2/a/h;Z)V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    iput-object p1, p0, Lcom/google/android/material/x/c$d;->a:Landroidx/viewpager2/a/h;

    .line 256
    iput-boolean p2, p0, Lcom/google/android/material/x/c$d;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/x/b$h;)V
    .locals 1
    .param p1    # Lcom/google/android/material/x/b$h;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 261
    iget-object v0, p0, Lcom/google/android/material/x/c$d;->a:Landroidx/viewpager2/a/h;

    invoke-virtual {p1}, Lcom/google/android/material/x/b$h;->d()I

    move-result p1

    iget-boolean p0, p0, Lcom/google/android/material/x/c$d;->b:Z

    invoke-virtual {v0, p1, p0}, Landroidx/viewpager2/a/h;->a(IZ)V

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
