.class public Lcom/google/android/material/g/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lcom/google/android/material/g/g$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroid/animation/TypeEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/animation/TypeEvaluator<",
            "Lcom/google/android/material/g/g$d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/android/material/g/g$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 209
    new-instance v0, Lcom/google/android/material/g/g$a;

    invoke-direct {v0}, Lcom/google/android/material/g/g$a;-><init>()V

    sput-object v0, Lcom/google/android/material/g/g$a;->a:Landroid/animation/TypeEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Lcom/google/android/material/g/g$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/material/g/g$d;-><init>(Lcom/google/android/material/g/g$1;)V

    iput-object v0, p0, Lcom/google/android/material/g/g$a;->b:Lcom/google/android/material/g/g$d;

    return-void
.end method


# virtual methods
.method public a(FLcom/google/android/material/g/g$d;Lcom/google/android/material/g/g$d;)Lcom/google/android/material/g/g$d;
    .locals 4
    .param p2    # Lcom/google/android/material/g/g$d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/material/g/g$d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/google/android/material/g/g$a;->b:Lcom/google/android/material/g/g$d;

    iget v1, p2, Lcom/google/android/material/g/g$d;->b:F

    iget v2, p3, Lcom/google/android/material/g/g$d;->b:F

    .line 217
    invoke-static {v1, v2, p1}, Lcom/google/android/material/n/a;->a(FFF)F

    move-result v1

    iget v2, p2, Lcom/google/android/material/g/g$d;->c:F

    iget v3, p3, Lcom/google/android/material/g/g$d;->c:F

    .line 218
    invoke-static {v2, v3, p1}, Lcom/google/android/material/n/a;->a(FFF)F

    move-result v2

    iget p2, p2, Lcom/google/android/material/g/g$d;->d:F

    iget p3, p3, Lcom/google/android/material/g/g$d;->d:F

    .line 219
    invoke-static {p2, p3, p1}, Lcom/google/android/material/n/a;->a(FFF)F

    move-result p1

    .line 216
    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/material/g/g$d;->a(FFF)V

    .line 220
    iget-object p0, p0, Lcom/google/android/material/g/g$a;->b:Lcom/google/android/material/g/g$d;

    return-object p0
.end method

.method public synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 207
    check-cast p2, Lcom/google/android/material/g/g$d;

    check-cast p3, Lcom/google/android/material/g/g$d;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/material/g/g$a;->a(FLcom/google/android/material/g/g$d;Lcom/google/android/material/g/g$d;)Lcom/google/android/material/g/g$d;

    move-result-object p0

    return-object p0
.end method
