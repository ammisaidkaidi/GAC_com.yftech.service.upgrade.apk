.class public final enum Landroidx/d/c/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/c/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/d/c/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/d/c/i$a;

.field public static final enum b:Landroidx/d/c/i$a;

.field public static final enum c:Landroidx/d/c/i$a;

.field public static final enum d:Landroidx/d/c/i$a;

.field public static final enum e:Landroidx/d/c/i$a;

.field private static final synthetic f:[Landroidx/d/c/i$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 79
    new-instance v0, Landroidx/d/c/i$a;

    const-string v1, "UNRESTRICTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/d/c/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/c/i$a;->a:Landroidx/d/c/i$a;

    .line 83
    new-instance v0, Landroidx/d/c/i$a;

    const-string v1, "CONSTANT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/d/c/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/c/i$a;->b:Landroidx/d/c/i$a;

    .line 87
    new-instance v0, Landroidx/d/c/i$a;

    const-string v1, "SLACK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/d/c/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/c/i$a;->c:Landroidx/d/c/i$a;

    .line 91
    new-instance v0, Landroidx/d/c/i$a;

    const-string v1, "ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroidx/d/c/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/c/i$a;->d:Landroidx/d/c/i$a;

    .line 95
    new-instance v0, Landroidx/d/c/i$a;

    const-string v1, "UNKNOWN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroidx/d/c/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/c/i$a;->e:Landroidx/d/c/i$a;

    const/4 v0, 0x5

    .line 75
    new-array v0, v0, [Landroidx/d/c/i$a;

    sget-object v1, Landroidx/d/c/i$a;->a:Landroidx/d/c/i$a;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/d/c/i$a;->b:Landroidx/d/c/i$a;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/d/c/i$a;->c:Landroidx/d/c/i$a;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/d/c/i$a;->d:Landroidx/d/c/i$a;

    aput-object v1, v0, v5

    sget-object v1, Landroidx/d/c/i$a;->e:Landroidx/d/c/i$a;

    aput-object v1, v0, v6

    sput-object v0, Landroidx/d/c/i$a;->f:[Landroidx/d/c/i$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/d/c/i$a;
    .locals 1

    .line 75
    const-class v0, Landroidx/d/c/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/d/c/i$a;

    return-object p0
.end method

.method public static values()[Landroidx/d/c/i$a;
    .locals 1

    .line 75
    sget-object v0, Landroidx/d/c/i$a;->f:[Landroidx/d/c/i$a;

    invoke-virtual {v0}, [Landroidx/d/c/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/d/c/i$a;

    return-object v0
.end method
