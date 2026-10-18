.class final enum Landroidx/d/b/b/s$h;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/d/b/b/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/d/b/b/s$h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/d/b/b/s$h;

.field public static final enum b:Landroidx/d/b/b/s$h;

.field public static final enum c:Landroidx/d/b/b/s$h;

.field public static final enum d:Landroidx/d/b/b/s$h;

.field private static final synthetic e:[Landroidx/d/b/b/s$h;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 953
    new-instance v0, Landroidx/d/b/b/s$h;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/d/b/b/s$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/b/b/s$h;->a:Landroidx/d/b/b/s$h;

    .line 954
    new-instance v0, Landroidx/d/b/b/s$h;

    const-string v1, "SETUP"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/d/b/b/s$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/b/b/s$h;->b:Landroidx/d/b/b/s$h;

    .line 955
    new-instance v0, Landroidx/d/b/b/s$h;

    const-string v1, "MOVING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/d/b/b/s$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/b/b/s$h;->c:Landroidx/d/b/b/s$h;

    .line 956
    new-instance v0, Landroidx/d/b/b/s$h;

    const-string v1, "FINISHED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroidx/d/b/b/s$h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/d/b/b/s$h;->d:Landroidx/d/b/b/s$h;

    const/4 v0, 0x4

    .line 952
    new-array v0, v0, [Landroidx/d/b/b/s$h;

    sget-object v1, Landroidx/d/b/b/s$h;->a:Landroidx/d/b/b/s$h;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/d/b/b/s$h;->b:Landroidx/d/b/b/s$h;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/d/b/b/s$h;->c:Landroidx/d/b/b/s$h;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/d/b/b/s$h;->d:Landroidx/d/b/b/s$h;

    aput-object v1, v0, v5

    sput-object v0, Landroidx/d/b/b/s$h;->e:[Landroidx/d/b/b/s$h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 952
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/d/b/b/s$h;
    .locals 1

    .line 952
    const-class v0, Landroidx/d/b/b/s$h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/d/b/b/s$h;

    return-object p0
.end method

.method public static values()[Landroidx/d/b/b/s$h;
    .locals 1

    .line 952
    sget-object v0, Landroidx/d/b/b/s$h;->e:[Landroidx/d/b/b/s$h;

    invoke-virtual {v0}, [Landroidx/d/b/b/s$h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/d/b/b/s$h;

    return-object v0
.end method
