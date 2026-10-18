.class public Lcom/google/android/material/g/g$b;
.super Landroid/util/Property;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/g/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/google/android/material/g/g;",
        "Lcom/google/android/material/g/g$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/google/android/material/g/g;",
            "Lcom/google/android/material/g/g$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 181
    new-instance v0, Lcom/google/android/material/g/g$b;

    const-string v1, "circularReveal"

    invoke-direct {v0, v1}, Lcom/google/android/material/g/g$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/material/g/g$b;->a:Landroid/util/Property;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 185
    const-class v0, Lcom/google/android/material/g/g$d;

    invoke-direct {p0, v0, p1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/g/g;)Lcom/google/android/material/g/g$d;
    .locals 0
    .param p1    # Lcom/google/android/material/g/g;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 191
    invoke-interface {p1}, Lcom/google/android/material/g/g;->getRevealInfo()Lcom/google/android/material/g/g$d;

    move-result-object p0

    return-object p0
.end method

.method public a(Lcom/google/android/material/g/g;Lcom/google/android/material/g/g$d;)V
    .locals 0
    .param p1    # Lcom/google/android/material/g/g;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/material/g/g$d;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 196
    invoke-interface {p1, p2}, Lcom/google/android/material/g/g;->setRevealInfo(Lcom/google/android/material/g/g$d;)V

    return-void
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 179
    check-cast p1, Lcom/google/android/material/g/g;

    invoke-virtual {p0, p1}, Lcom/google/android/material/g/g$b;->a(Lcom/google/android/material/g/g;)Lcom/google/android/material/g/g$d;

    move-result-object p0

    return-object p0
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 179
    check-cast p1, Lcom/google/android/material/g/g;

    check-cast p2, Lcom/google/android/material/g/g$d;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/g/g$b;->a(Lcom/google/android/material/g/g;Lcom/google/android/material/g/g$d;)V

    return-void
.end method
