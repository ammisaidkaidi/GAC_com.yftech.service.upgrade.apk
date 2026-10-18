.class public Landroidx/core/j/b$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/j/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2


# instance fields
.field private final d:I

.field private final e:[Landroidx/core/j/b$c;


# direct methods
.method public constructor <init>(I[Landroidx/core/j/b$c;)V
    .locals 0
    .param p2    # [Landroidx/core/j/b$c;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ap;
        a = {
            .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/ap$a;
        }
    .end annotation

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    iput p1, p0, Landroidx/core/j/b$b;->d:I

    .line 429
    iput-object p2, p0, Landroidx/core/j/b$b;->e:[Landroidx/core/j/b$c;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 433
    iget p0, p0, Landroidx/core/j/b$b;->d:I

    return p0
.end method

.method public b()[Landroidx/core/j/b$c;
    .locals 0

    .line 437
    iget-object p0, p0, Landroidx/core/j/b$b;->e:[Landroidx/core/j/b$c;

    return-object p0
.end method
