.class public final enum Landroidx/d/c/a/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/c/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/d/c/a/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/d/c/a/e$a;

.field public static final enum b:Landroidx/d/c/a/e$a;

.field public static final enum c:Landroidx/d/c/a/e$a;

.field private static final synthetic d:[Landroidx/d/c/a/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 90
    new-instance v0, Landroidx/d/c/a/e$a;

    const-string v1, "SPREAD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/d/c/a/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/c/a/e$a;->a:Landroidx/d/c/a/e$a;

    .line 91
    new-instance v0, Landroidx/d/c/a/e$a;

    const-string v1, "SPREAD_INSIDE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/d/c/a/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/c/a/e$a;->b:Landroidx/d/c/a/e$a;

    .line 92
    new-instance v0, Landroidx/d/c/a/e$a;

    const-string v1, "PACKED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/d/c/a/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/c/a/e$a;->c:Landroidx/d/c/a/e$a;

    const/4 v0, 0x3

    .line 89
    new-array v0, v0, [Landroidx/d/c/a/e$a;

    sget-object v1, Landroidx/d/c/a/e$a;->a:Landroidx/d/c/a/e$a;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/d/c/a/e$a;->b:Landroidx/d/c/a/e$a;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/d/c/a/e$a;->c:Landroidx/d/c/a/e$a;

    aput-object v1, v0, v4

    sput-object v0, Landroidx/d/c/a/e$a;->d:[Landroidx/d/c/a/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/d/c/a/e$a;
    .locals 1

    .line 89
    const-class v0, Landroidx/d/c/a/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/d/c/a/e$a;

    return-object p0
.end method

.method public static values()[Landroidx/d/c/a/e$a;
    .locals 1

    .line 89
    sget-object v0, Landroidx/d/c/a/e$a;->d:[Landroidx/d/c/a/e$a;

    invoke-virtual {v0}, [Landroidx/d/c/a/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/d/c/a/e$a;

    return-object v0
.end method
