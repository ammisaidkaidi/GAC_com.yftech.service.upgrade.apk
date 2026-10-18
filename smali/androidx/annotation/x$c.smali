.class public final enum Landroidx/annotation/x$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/annotation/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/annotation/x$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Landroidx/annotation/x$c;

.field public static final enum b:Landroidx/annotation/x$c;

.field public static final enum c:Landroidx/annotation/x$c;

.field public static final enum d:Landroidx/annotation/x$c;

.field public static final enum e:Landroidx/annotation/x$c;

.field public static final enum f:Landroidx/annotation/x$c;

.field public static final enum g:Landroidx/annotation/x$c;

.field private static final synthetic h:[Landroidx/annotation/x$c;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 152
    new-instance v0, Landroidx/annotation/x$c;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/annotation/x$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/x$c;->a:Landroidx/annotation/x$c;

    .line 157
    new-instance v0, Landroidx/annotation/x$c;

    const-string v1, "INFERRED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroidx/annotation/x$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/x$c;->b:Landroidx/annotation/x$c;

    .line 166
    new-instance v0, Landroidx/annotation/x$c;

    const-string v1, "INT_ENUM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroidx/annotation/x$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/x$c;->c:Landroidx/annotation/x$c;

    .line 175
    new-instance v0, Landroidx/annotation/x$c;

    const-string v1, "INT_FLAG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroidx/annotation/x$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/x$c;->d:Landroidx/annotation/x$c;

    .line 182
    new-instance v0, Landroidx/annotation/x$c;

    const-string v1, "COLOR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroidx/annotation/x$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/x$c;->e:Landroidx/annotation/x$c;

    .line 189
    new-instance v0, Landroidx/annotation/x$c;

    const-string v1, "GRAVITY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroidx/annotation/x$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/x$c;->f:Landroidx/annotation/x$c;

    .line 197
    new-instance v0, Landroidx/annotation/x$c;

    const-string v1, "RESOURCE_ID"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Landroidx/annotation/x$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/annotation/x$c;->g:Landroidx/annotation/x$c;

    const/4 v0, 0x7

    .line 148
    new-array v0, v0, [Landroidx/annotation/x$c;

    sget-object v1, Landroidx/annotation/x$c;->a:Landroidx/annotation/x$c;

    aput-object v1, v0, v2

    sget-object v1, Landroidx/annotation/x$c;->b:Landroidx/annotation/x$c;

    aput-object v1, v0, v3

    sget-object v1, Landroidx/annotation/x$c;->c:Landroidx/annotation/x$c;

    aput-object v1, v0, v4

    sget-object v1, Landroidx/annotation/x$c;->d:Landroidx/annotation/x$c;

    aput-object v1, v0, v5

    sget-object v1, Landroidx/annotation/x$c;->e:Landroidx/annotation/x$c;

    aput-object v1, v0, v6

    sget-object v1, Landroidx/annotation/x$c;->f:Landroidx/annotation/x$c;

    aput-object v1, v0, v7

    sget-object v1, Landroidx/annotation/x$c;->g:Landroidx/annotation/x$c;

    aput-object v1, v0, v8

    sput-object v0, Landroidx/annotation/x$c;->h:[Landroidx/annotation/x$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/annotation/x$c;
    .locals 1

    .line 148
    const-class v0, Landroidx/annotation/x$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/annotation/x$c;

    return-object p0
.end method

.method public static values()[Landroidx/annotation/x$c;
    .locals 1

    .line 148
    sget-object v0, Landroidx/annotation/x$c;->h:[Landroidx/annotation/x$c;

    invoke-virtual {v0}, [Landroidx/annotation/x$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/annotation/x$c;

    return-object v0
.end method
