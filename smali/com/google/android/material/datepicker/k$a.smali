.class final enum Lcom/google/android/material/datepicker/k$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/material/datepicker/k$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/material/datepicker/k$a;

.field public static final enum b:Lcom/google/android/material/datepicker/k$a;

.field private static final synthetic c:[Lcom/google/android/material/datepicker/k$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 63
    new-instance v0, Lcom/google/android/material/datepicker/k$a;

    const-string v1, "DAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/material/datepicker/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/datepicker/k$a;->a:Lcom/google/android/material/datepicker/k$a;

    .line 64
    new-instance v0, Lcom/google/android/material/datepicker/k$a;

    const-string v1, "YEAR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/android/material/datepicker/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/material/datepicker/k$a;->b:Lcom/google/android/material/datepicker/k$a;

    const/4 v0, 0x2

    .line 62
    new-array v0, v0, [Lcom/google/android/material/datepicker/k$a;

    sget-object v1, Lcom/google/android/material/datepicker/k$a;->a:Lcom/google/android/material/datepicker/k$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/material/datepicker/k$a;->b:Lcom/google/android/material/datepicker/k$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/android/material/datepicker/k$a;->c:[Lcom/google/android/material/datepicker/k$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/material/datepicker/k$a;
    .locals 1

    .line 62
    const-class v0, Lcom/google/android/material/datepicker/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/material/datepicker/k$a;

    return-object p0
.end method

.method public static values()[Lcom/google/android/material/datepicker/k$a;
    .locals 1

    .line 62
    sget-object v0, Lcom/google/android/material/datepicker/k$a;->c:[Lcom/google/android/material/datepicker/k$a;

    invoke-virtual {v0}, [Lcom/google/android/material/datepicker/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/material/datepicker/k$a;

    return-object v0
.end method
