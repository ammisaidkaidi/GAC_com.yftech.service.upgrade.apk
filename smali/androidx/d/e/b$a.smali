.class public final enum Landroidx/d/e/b$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/d/e/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/d/e/b$a;

.field public static final enum b:Landroidx/d/e/b$a;

.field public static final enum c:Landroidx/d/e/b$a;

.field public static final enum d:Landroidx/d/e/b$a;

.field public static final enum e:Landroidx/d/e/b$a;

.field public static final enum f:Landroidx/d/e/b$a;

.field public static final enum g:Landroidx/d/e/b$a;

.field private static final synthetic h:[Landroidx/d/e/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 52
    new-instance v0, Landroidx/d/e/b$a;

    const-string v1, "INT_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/d/e/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/e/b$a;->a:Landroidx/d/e/b$a;

    .line 53
    new-instance v0, Landroidx/d/e/b$a;

    const-string v1, "FLOAT_TYPE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/d/e/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/e/b$a;->b:Landroidx/d/e/b$a;

    .line 54
    new-instance v0, Landroidx/d/e/b$a;

    const-string v1, "COLOR_TYPE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/d/e/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/e/b$a;->c:Landroidx/d/e/b$a;

    .line 55
    new-instance v0, Landroidx/d/e/b$a;

    const-string v1, "COLOR_DRAWABLE_TYPE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroidx/d/e/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/e/b$a;->d:Landroidx/d/e/b$a;

    .line 56
    new-instance v0, Landroidx/d/e/b$a;

    const-string v1, "STRING_TYPE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroidx/d/e/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/e/b$a;->e:Landroidx/d/e/b$a;

    .line 57
    new-instance v0, Landroidx/d/e/b$a;

    const-string v1, "BOOLEAN_TYPE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroidx/d/e/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/e/b$a;->f:Landroidx/d/e/b$a;

    .line 58
    new-instance v0, Landroidx/d/e/b$a;

    const-string v1, "DIMENSION_TYPE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Landroidx/d/e/b$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/e/b$a;->g:Landroidx/d/e/b$a;

    const/4 v0, 0x7

    .line 51
    new-array v0, v0, [Landroidx/d/e/b$a;

    sget-object v1, Landroidx/d/e/b$a;->a:Landroidx/d/e/b$a;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/d/e/b$a;->b:Landroidx/d/e/b$a;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/d/e/b$a;->c:Landroidx/d/e/b$a;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/d/e/b$a;->d:Landroidx/d/e/b$a;

    aput-object v1, v0, v5

    sget-object v1, Landroidx/d/e/b$a;->e:Landroidx/d/e/b$a;

    aput-object v1, v0, v6

    sget-object v1, Landroidx/d/e/b$a;->f:Landroidx/d/e/b$a;

    aput-object v1, v0, v7

    sget-object v1, Landroidx/d/e/b$a;->g:Landroidx/d/e/b$a;

    aput-object v1, v0, v8

    sput-object v0, Landroidx/d/e/b$a;->h:[Landroidx/d/e/b$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/d/e/b$a;
    .locals 1

    .line 51
    const-class v0, Landroidx/d/e/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/d/e/b$a;

    return-object p0
.end method

.method public static values()[Landroidx/d/e/b$a;
    .locals 1

    .line 51
    sget-object v0, Landroidx/d/e/b$a;->h:[Landroidx/d/e/b$a;

    invoke-virtual {v0}, [Landroidx/d/e/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/d/e/b$a;

    return-object v0
.end method
