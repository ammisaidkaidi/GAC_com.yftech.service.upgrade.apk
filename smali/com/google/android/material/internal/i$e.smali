.class Lcom/google/android/material/internal/i$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/i$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput p1, p0, Lcom/google/android/material/internal/i$e;->a:I

    .line 756
    iput p2, p0, Lcom/google/android/material/internal/i$e;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 760
    iget p0, p0, Lcom/google/android/material/internal/i$e;->a:I

    return p0
.end method

.method public b()I
    .locals 0

    .line 764
    iget p0, p0, Lcom/google/android/material/internal/i$e;->b:I

    return p0
.end method
