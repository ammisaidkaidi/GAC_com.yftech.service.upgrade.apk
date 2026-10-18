.class public final enum Landroidx/i/b/d$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/i/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/i/b/d$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/i/b/d$c;

.field public static final enum b:Landroidx/i/b/d$c;

.field public static final enum c:Landroidx/i/b/d$c;

.field private static final synthetic d:[Landroidx/i/b/d$c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 103
    new-instance v0, Landroidx/i/b/d$c;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/i/b/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/i/b/d$c;->a:Landroidx/i/b/d$c;

    .line 107
    new-instance v0, Landroidx/i/b/d$c;

    const-string v1, "RUNNING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/i/b/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/i/b/d$c;->b:Landroidx/i/b/d$c;

    .line 111
    new-instance v0, Landroidx/i/b/d$c;

    const-string v1, "FINISHED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/i/b/d$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/i/b/d$c;->c:Landroidx/i/b/d$c;

    const/4 v0, 0x3

    .line 99
    new-array v0, v0, [Landroidx/i/b/d$c;

    sget-object v1, Landroidx/i/b/d$c;->a:Landroidx/i/b/d$c;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/i/b/d$c;->b:Landroidx/i/b/d$c;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/i/b/d$c;->c:Landroidx/i/b/d$c;

    aput-object v1, v0, v4

    sput-object v0, Landroidx/i/b/d$c;->d:[Landroidx/i/b/d$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/i/b/d$c;
    .locals 1

    .line 99
    const-class v0, Landroidx/i/b/d$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/i/b/d$c;

    return-object p0
.end method

.method public static values()[Landroidx/i/b/d$c;
    .locals 1

    .line 99
    sget-object v0, Landroidx/i/b/d$c;->d:[Landroidx/i/b/d$c;

    invoke-virtual {v0}, [Landroidx/i/b/d$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/i/b/d$c;

    return-object v0
.end method
