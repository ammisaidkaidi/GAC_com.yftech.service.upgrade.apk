.class public final enum Landroidx/annotation/ap$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/annotation/ap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/annotation/ap$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/annotation/ap$a;

.field public static final enum b:Landroidx/annotation/ap$a;

.field public static final enum c:Landroidx/annotation/ap$a;

.field public static final enum d:Landroidx/annotation/ap$a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum e:Landroidx/annotation/ap$a;

.field public static final enum f:Landroidx/annotation/ap$a;

.field private static final synthetic g:[Landroidx/annotation/ap$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 63
    new-instance v0, Landroidx/annotation/ap$a;

    const-string v1, "LIBRARY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/annotation/ap$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/ap$a;->a:Landroidx/annotation/ap$a;

    .line 69
    new-instance v0, Landroidx/annotation/ap$a;

    const-string v1, "LIBRARY_GROUP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/annotation/ap$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/ap$a;->b:Landroidx/annotation/ap$a;

    .line 83
    new-instance v0, Landroidx/annotation/ap$a;

    const-string v1, "LIBRARY_GROUP_PREFIX"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/annotation/ap$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/ap$a;->c:Landroidx/annotation/ap$a;

    .line 91
    new-instance v0, Landroidx/annotation/ap$a;

    const-string v1, "GROUP_ID"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroidx/annotation/ap$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/ap$a;->d:Landroidx/annotation/ap$a;

    .line 97
    new-instance v0, Landroidx/annotation/ap$a;

    const-string v1, "TESTS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroidx/annotation/ap$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/ap$a;->e:Landroidx/annotation/ap$a;

    .line 105
    new-instance v0, Landroidx/annotation/ap$a;

    const-string v1, "SUBCLASSES"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroidx/annotation/ap$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/ap$a;->f:Landroidx/annotation/ap$a;

    const/4 v0, 0x6

    .line 58
    new-array v0, v0, [Landroidx/annotation/ap$a;

    sget-object v1, Landroidx/annotation/ap$a;->a:Landroidx/annotation/ap$a;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/annotation/ap$a;->b:Landroidx/annotation/ap$a;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/annotation/ap$a;->c:Landroidx/annotation/ap$a;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/annotation/ap$a;->d:Landroidx/annotation/ap$a;

    aput-object v1, v0, v5

    sget-object v1, Landroidx/annotation/ap$a;->e:Landroidx/annotation/ap$a;

    aput-object v1, v0, v6

    sget-object v1, Landroidx/annotation/ap$a;->f:Landroidx/annotation/ap$a;

    aput-object v1, v0, v7

    sput-object v0, Landroidx/annotation/ap$a;->g:[Landroidx/annotation/ap$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/annotation/ap$a;
    .locals 1

    .line 58
    const-class v0, Landroidx/annotation/ap$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/annotation/ap$a;

    return-object p0
.end method

.method public static values()[Landroidx/annotation/ap$a;
    .locals 1

    .line 58
    sget-object v0, Landroidx/annotation/ap$a;->g:[Landroidx/annotation/ap$a;

    invoke-virtual {v0}, [Landroidx/annotation/ap$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/annotation/ap$a;

    return-object v0
.end method
