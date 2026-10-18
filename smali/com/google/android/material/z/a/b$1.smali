.class final Lcom/google/android/material/z/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/z/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/z/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FFF)Lcom/google/android/material/z/a/c;
    .locals 1

    const/16 p0, 0xff

    const/4 v0, 0x0

    .line 40
    invoke-static {v0, p0, p2, p3, p1}, Lcom/google/android/material/z/a/v;->a(IIFFF)I

    move-result p1

    .line 41
    invoke-static {p0, p1}, Lcom/google/android/material/z/a/c;->b(II)Lcom/google/android/material/z/a/c;

    move-result-object p0

    return-object p0
.end method
