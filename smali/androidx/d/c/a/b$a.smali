.class public final enum Landroidx/d/c/a/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/c/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/d/c/a/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/d/c/a/b$a;

.field public static final enum b:Landroidx/d/c/a/b$a;

.field public static final enum c:Landroidx/d/c/a/b$a;

.field public static final enum d:Landroidx/d/c/a/b$a;

.field private static final synthetic e:[Landroidx/d/c/a/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 45
    new-instance v0, Landroidx/d/c/a/b$a;

    const-string v1, "FIXED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/d/c/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/c/a/b$a;->a:Landroidx/d/c/a/b$a;

    .line 46
    new-instance v0, Landroidx/d/c/a/b$a;

    const-string v1, "WRAP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/d/c/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/c/a/b$a;->b:Landroidx/d/c/a/b$a;

    .line 47
    new-instance v0, Landroidx/d/c/a/b$a;

    const-string v1, "MATCH_PARENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/d/c/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/c/a/b$a;->c:Landroidx/d/c/a/b$a;

    .line 48
    new-instance v0, Landroidx/d/c/a/b$a;

    const-string v1, "MATCH_CONSTRAINT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroidx/d/c/a/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/c/a/b$a;->d:Landroidx/d/c/a/b$a;

    const/4 v0, 0x4

    .line 44
    new-array v0, v0, [Landroidx/d/c/a/b$a;

    sget-object v1, Landroidx/d/c/a/b$a;->a:Landroidx/d/c/a/b$a;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/d/c/a/b$a;->b:Landroidx/d/c/a/b$a;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/d/c/a/b$a;->c:Landroidx/d/c/a/b$a;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/d/c/a/b$a;->d:Landroidx/d/c/a/b$a;

    aput-object v1, v0, v5

    sput-object v0, Landroidx/d/c/a/b$a;->e:[Landroidx/d/c/a/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/d/c/a/b$a;
    .locals 1

    .line 44
    const-class v0, Landroidx/d/c/a/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/d/c/a/b$a;

    return-object p0
.end method

.method public static values()[Landroidx/d/c/a/b$a;
    .locals 1

    .line 44
    sget-object v0, Landroidx/d/c/a/b$a;->e:[Landroidx/d/c/a/b$a;

    invoke-virtual {v0}, [Landroidx/d/c/a/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/d/c/a/b$a;

    return-object v0
.end method
