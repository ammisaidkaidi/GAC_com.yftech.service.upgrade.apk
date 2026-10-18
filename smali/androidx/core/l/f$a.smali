.class Landroidx/core/l/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/l/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/l/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Landroidx/core/l/f$a;


# instance fields
.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 235
    new-instance v0, Landroidx/core/l/f$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/core/l/f$a;-><init>(Z)V

    sput-object v0, Landroidx/core/l/f$a;->a:Landroidx/core/l/f$a;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput-boolean p1, p0, Landroidx/core/l/f$a;->b:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;II)I
    .locals 4

    add-int/2addr p3, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge p2, p3, :cond_1

    .line 208
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v2

    invoke-static {v2}, Landroidx/core/l/f;->a(I)I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 216
    :pswitch_0
    iget-boolean v1, p0, Landroidx/core/l/f$a;->b:Z

    if-nez v1, :cond_0

    return v3

    .line 210
    :pswitch_1
    iget-boolean v1, p0, Landroidx/core/l/f$a;->b:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    move v1, v3

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 226
    iget-boolean p0, p0, Landroidx/core/l/f$a;->b:Z

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
