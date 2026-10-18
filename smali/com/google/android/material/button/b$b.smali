.class Lcom/google/android/material/button/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/button/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final e:Lcom/google/android/material/t/d;


# instance fields
.field a:Lcom/google/android/material/t/d;

.field b:Lcom/google/android/material/t/d;

.field c:Lcom/google/android/material/t/d;

.field d:Lcom/google/android/material/t/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 827
    new-instance v0, Lcom/google/android/material/t/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/t/a;-><init>(F)V

    sput-object v0, Lcom/google/android/material/button/b$b;->e:Lcom/google/android/material/t/d;

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/t/d;Lcom/google/android/material/t/d;Lcom/google/android/material/t/d;Lcom/google/android/material/t/d;)V
    .locals 0

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    iput-object p1, p0, Lcom/google/android/material/button/b$b;->a:Lcom/google/android/material/t/d;

    .line 837
    iput-object p3, p0, Lcom/google/android/material/button/b$b;->b:Lcom/google/android/material/t/d;

    .line 838
    iput-object p4, p0, Lcom/google/android/material/button/b$b;->c:Lcom/google/android/material/t/d;

    .line 839
    iput-object p2, p0, Lcom/google/android/material/button/b$b;->d:Lcom/google/android/material/t/d;

    return-void
.end method

.method public static a(Lcom/google/android/material/button/b$b;)Lcom/google/android/material/button/b$b;
    .locals 4

    .line 854
    new-instance v0, Lcom/google/android/material/button/b$b;

    iget-object v1, p0, Lcom/google/android/material/button/b$b;->a:Lcom/google/android/material/t/d;

    iget-object p0, p0, Lcom/google/android/material/button/b$b;->d:Lcom/google/android/material/t/d;

    sget-object v2, Lcom/google/android/material/button/b$b;->e:Lcom/google/android/material/t/d;

    sget-object v3, Lcom/google/android/material/button/b$b;->e:Lcom/google/android/material/t/d;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/google/android/material/button/b$b;-><init>(Lcom/google/android/material/t/d;Lcom/google/android/material/t/d;Lcom/google/android/material/t/d;Lcom/google/android/material/t/d;)V

    return-object v0
.end method

.method public static a(Lcom/google/android/material/button/b$b;Landroid/view/View;)Lcom/google/android/material/button/b$b;
    .locals 0

    .line 844
    invoke-static {p1}, Lcom/google/android/material/internal/z;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/material/button/b$b;->b(Lcom/google/android/material/button/b$b;)Lcom/google/android/material/button/b$b;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/android/material/button/b$b;->a(Lcom/google/android/material/button/b$b;)Lcom/google/android/material/button/b$b;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static b(Lcom/google/android/material/button/b$b;)Lcom/google/android/material/button/b$b;
    .locals 4

    .line 859
    new-instance v0, Lcom/google/android/material/button/b$b;

    sget-object v1, Lcom/google/android/material/button/b$b;->e:Lcom/google/android/material/t/d;

    sget-object v2, Lcom/google/android/material/button/b$b;->e:Lcom/google/android/material/t/d;

    iget-object v3, p0, Lcom/google/android/material/button/b$b;->b:Lcom/google/android/material/t/d;

    iget-object p0, p0, Lcom/google/android/material/button/b$b;->c:Lcom/google/android/material/t/d;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/material/button/b$b;-><init>(Lcom/google/android/material/t/d;Lcom/google/android/material/t/d;Lcom/google/android/material/t/d;Lcom/google/android/material/t/d;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/material/button/b$b;Landroid/view/View;)Lcom/google/android/material/button/b$b;
    .locals 0

    .line 849
    invoke-static {p1}, Lcom/google/android/material/internal/z;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/material/button/b$b;->a(Lcom/google/android/material/button/b$b;)Lcom/google/android/material/button/b$b;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/google/android/material/button/b$b;->b(Lcom/google/android/material/button/b$b;)Lcom/google/android/material/button/b$b;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static c(Lcom/google/android/material/button/b$b;)Lcom/google/android/material/button/b$b;
    .locals 4

    .line 864
    new-instance v0, Lcom/google/android/material/button/b$b;

    iget-object v1, p0, Lcom/google/android/material/button/b$b;->a:Lcom/google/android/material/t/d;

    sget-object v2, Lcom/google/android/material/button/b$b;->e:Lcom/google/android/material/t/d;

    iget-object p0, p0, Lcom/google/android/material/button/b$b;->b:Lcom/google/android/material/t/d;

    sget-object v3, Lcom/google/android/material/button/b$b;->e:Lcom/google/android/material/t/d;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/google/android/material/button/b$b;-><init>(Lcom/google/android/material/t/d;Lcom/google/android/material/t/d;Lcom/google/android/material/t/d;Lcom/google/android/material/t/d;)V

    return-object v0
.end method

.method public static d(Lcom/google/android/material/button/b$b;)Lcom/google/android/material/button/b$b;
    .locals 4

    .line 869
    new-instance v0, Lcom/google/android/material/button/b$b;

    sget-object v1, Lcom/google/android/material/button/b$b;->e:Lcom/google/android/material/t/d;

    iget-object v2, p0, Lcom/google/android/material/button/b$b;->d:Lcom/google/android/material/t/d;

    sget-object v3, Lcom/google/android/material/button/b$b;->e:Lcom/google/android/material/t/d;

    iget-object p0, p0, Lcom/google/android/material/button/b$b;->c:Lcom/google/android/material/t/d;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/android/material/button/b$b;-><init>(Lcom/google/android/material/t/d;Lcom/google/android/material/t/d;Lcom/google/android/material/t/d;Lcom/google/android/material/t/d;)V

    return-object v0
.end method
