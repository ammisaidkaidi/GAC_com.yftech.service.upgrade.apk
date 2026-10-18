.class public Landroidx/d/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/d/c/i$a;
    }
.end annotation


# static fields
.field private static final A:Z = false

.field private static final B:Z = false

.field private static C:I = 0x1

.field private static D:I = 0x1

.field private static E:I = 0x1

.field private static F:I = 0x1

.field private static G:I = 0x1

.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field public static final i:I = 0x8

.field static final p:I = 0x9


# instance fields
.field private H:Ljava/lang/String;

.field public j:Z

.field public k:I

.field l:I

.field public m:I

.field public n:F

.field public o:Z

.field q:[F

.field r:[F

.field s:Landroidx/d/c/i$a;

.field t:[Landroidx/d/c/b;

.field u:I

.field public v:I

.field w:Z

.field x:I

.field y:F

.field z:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroidx/d/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroidx/d/c/i$a;Ljava/lang/String;)V
    .locals 3

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, -0x1

    .line 53
    iput p2, p0, Landroidx/d/c/i;->k:I

    .line 54
    iput p2, p0, Landroidx/d/c/i;->l:I

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Landroidx/d/c/i;->m:I

    .line 57
    iput-boolean v0, p0, Landroidx/d/c/i;->o:Z

    const/16 v1, 0x9

    .line 60
    new-array v2, v1, [F

    iput-object v2, p0, Landroidx/d/c/i;->q:[F

    .line 61
    new-array v1, v1, [F

    iput-object v1, p0, Landroidx/d/c/i;->r:[F

    const/16 v1, 0x10

    .line 65
    new-array v1, v1, [Landroidx/d/c/b;

    iput-object v1, p0, Landroidx/d/c/i;->t:[Landroidx/d/c/b;

    .line 66
    iput v0, p0, Landroidx/d/c/i;->u:I

    .line 67
    iput v0, p0, Landroidx/d/c/i;->v:I

    .line 68
    iput-boolean v0, p0, Landroidx/d/c/i;->w:Z

    .line 69
    iput p2, p0, Landroidx/d/c/i;->x:I

    const/4 p2, 0x0

    .line 70
    iput p2, p0, Landroidx/d/c/i;->y:F

    const/4 p2, 0x0

    .line 172
    iput-object p2, p0, Landroidx/d/c/i;->z:Ljava/util/HashSet;

    .line 130
    iput-object p1, p0, Landroidx/d/c/i;->s:Landroidx/d/c/i$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/d/c/i$a;)V
    .locals 4

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Landroidx/d/c/i;->k:I

    .line 54
    iput v0, p0, Landroidx/d/c/i;->l:I

    const/4 v1, 0x0

    .line 55
    iput v1, p0, Landroidx/d/c/i;->m:I

    .line 57
    iput-boolean v1, p0, Landroidx/d/c/i;->o:Z

    const/16 v2, 0x9

    .line 60
    new-array v3, v2, [F

    iput-object v3, p0, Landroidx/d/c/i;->q:[F

    .line 61
    new-array v2, v2, [F

    iput-object v2, p0, Landroidx/d/c/i;->r:[F

    const/16 v2, 0x10

    .line 65
    new-array v2, v2, [Landroidx/d/c/b;

    iput-object v2, p0, Landroidx/d/c/i;->t:[Landroidx/d/c/b;

    .line 66
    iput v1, p0, Landroidx/d/c/i;->u:I

    .line 67
    iput v1, p0, Landroidx/d/c/i;->v:I

    .line 68
    iput-boolean v1, p0, Landroidx/d/c/i;->w:Z

    .line 69
    iput v0, p0, Landroidx/d/c/i;->x:I

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Landroidx/d/c/i;->y:F

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Landroidx/d/c/i;->z:Ljava/util/HashSet;

    .line 125
    iput-object p1, p0, Landroidx/d/c/i;->H:Ljava/lang/String;

    .line 126
    iput-object p2, p0, Landroidx/d/c/i;->s:Landroidx/d/c/i$a;

    return-void
.end method

.method static a()V
    .locals 1

    .line 99
    sget v0, Landroidx/d/c/i;->D:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/d/c/i;->D:I

    return-void
.end method

.method private static b(Landroidx/d/c/i$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 104
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroidx/d/c/i;->D:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 106
    :cond_0
    sget-object p1, Landroidx/d/c/i$1;->a:[I

    invoke-virtual {p0}, Landroidx/d/c/i$a;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    .line 116
    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {p0}, Landroidx/d/c/i$a;->name()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 114
    :pswitch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "V"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroidx/d/c/i;->G:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Landroidx/d/c/i;->G:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 111
    :pswitch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "e"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroidx/d/c/i;->D:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Landroidx/d/c/i;->D:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 109
    :pswitch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "S"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroidx/d/c/i;->C:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Landroidx/d/c/i;->C:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 108
    :pswitch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "C"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroidx/d/c/i;->F:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Landroidx/d/c/i;->F:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 107
    :pswitch_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "U"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Landroidx/d/c/i;->E:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Landroidx/d/c/i;->E:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Landroidx/d/c/b;)V
    .locals 2

    const/4 v0, 0x0

    .line 178
    :goto_0
    iget v1, p0, Landroidx/d/c/i;->u:I

    if-ge v0, v1, :cond_1

    .line 179
    iget-object v1, p0, Landroidx/d/c/i;->t:[Landroidx/d/c/b;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 183
    :cond_1
    iget v0, p0, Landroidx/d/c/i;->u:I

    iget-object v1, p0, Landroidx/d/c/i;->t:[Landroidx/d/c/b;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 184
    iget-object v0, p0, Landroidx/d/c/i;->t:[Landroidx/d/c/b;

    iget-object v1, p0, Landroidx/d/c/i;->t:[Landroidx/d/c/b;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/d/c/b;

    iput-object v0, p0, Landroidx/d/c/i;->t:[Landroidx/d/c/b;

    .line 186
    :cond_2
    iget-object v0, p0, Landroidx/d/c/i;->t:[Landroidx/d/c/b;

    iget v1, p0, Landroidx/d/c/i;->u:I

    aput-object p1, v0, v1

    .line 187
    iget p1, p0, Landroidx/d/c/i;->u:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/d/c/i;->u:I

    return-void
.end method

.method public a(Landroidx/d/c/e;F)V
    .locals 3

    .line 227
    iput p2, p0, Landroidx/d/c/i;->n:F

    const/4 p2, 0x1

    .line 228
    iput-boolean p2, p0, Landroidx/d/c/i;->o:Z

    const/4 p2, 0x0

    .line 229
    iput-boolean p2, p0, Landroidx/d/c/i;->w:Z

    const/4 v0, -0x1

    .line 230
    iput v0, p0, Landroidx/d/c/i;->x:I

    const/4 v1, 0x0

    .line 231
    iput v1, p0, Landroidx/d/c/i;->y:F

    .line 232
    iget v1, p0, Landroidx/d/c/i;->u:I

    .line 233
    iput v0, p0, Landroidx/d/c/i;->l:I

    move v0, p2

    :goto_0
    if-ge v0, v1, :cond_0

    .line 235
    iget-object v2, p0, Landroidx/d/c/i;->t:[Landroidx/d/c/b;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p0, p2}, Landroidx/d/c/b;->a(Landroidx/d/c/e;Landroidx/d/c/i;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_0
    iput p2, p0, Landroidx/d/c/i;->u:I

    return-void
.end method

.method public final a(Landroidx/d/c/e;Landroidx/d/c/b;)V
    .locals 4

    .line 215
    iget v0, p0, Landroidx/d/c/i;->u:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 217
    iget-object v3, p0, Landroidx/d/c/i;->t:[Landroidx/d/c/b;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1, p2, v1}, Landroidx/d/c/b;->a(Landroidx/d/c/e;Landroidx/d/c/b;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    :cond_0
    iput v1, p0, Landroidx/d/c/i;->u:I

    return-void
.end method

.method public a(Landroidx/d/c/e;Landroidx/d/c/i;F)V
    .locals 2

    const/4 v0, 0x1

    .line 244
    iput-boolean v0, p0, Landroidx/d/c/i;->w:Z

    .line 245
    iget p2, p2, Landroidx/d/c/i;->k:I

    iput p2, p0, Landroidx/d/c/i;->x:I

    .line 246
    iput p3, p0, Landroidx/d/c/i;->y:F

    .line 247
    iget p2, p0, Landroidx/d/c/i;->u:I

    const/4 p3, -0x1

    .line 248
    iput p3, p0, Landroidx/d/c/i;->l:I

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    if-ge v0, p2, :cond_0

    .line 250
    iget-object v1, p0, Landroidx/d/c/i;->t:[Landroidx/d/c/b;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p0, p3}, Landroidx/d/c/b;->b(Landroidx/d/c/e;Landroidx/d/c/i;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    :cond_0
    iput p3, p0, Landroidx/d/c/i;->u:I

    .line 253
    invoke-virtual {p1}, Landroidx/d/c/e;->i()V

    return-void
.end method

.method public a(Landroidx/d/c/i$a;Ljava/lang/String;)V
    .locals 0

    .line 292
    iput-object p1, p0, Landroidx/d/c/i;->s:Landroidx/d/c/i$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 290
    iput-object p1, p0, Landroidx/d/c/i;->H:Ljava/lang/String;

    return-void
.end method

.method b()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 138
    iget-object v1, p0, Landroidx/d/c/i;->q:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Landroidx/d/c/b;)V
    .locals 4

    .line 195
    iget v0, p0, Landroidx/d/c/i;->u:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 197
    iget-object v2, p0, Landroidx/d/c/i;->t:[Landroidx/d/c/b;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_1

    :goto_1
    add-int/lit8 p1, v0, -0x1

    if-ge v1, p1, :cond_0

    .line 199
    iget-object p1, p0, Landroidx/d/c/i;->t:[Landroidx/d/c/b;

    iget-object v2, p0, Landroidx/d/c/i;->t:[Landroidx/d/c/b;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    aput-object v2, p1, v1

    move v1, v3

    goto :goto_1

    .line 201
    :cond_0
    iget p1, p0, Landroidx/d/c/i;->u:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/d/c/i;->u:I

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method c()Ljava/lang/String;
    .locals 8

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v3, v0

    move v5, v1

    move v0, v2

    move v4, v0

    .line 146
    :goto_0
    iget-object v6, p0, Landroidx/d/c/i;->q:[F

    array-length v6, v6

    if-ge v0, v6, :cond_4

    .line 147
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/d/c/i;->q:[F

    aget v3, v3, v0

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 148
    iget-object v6, p0, Landroidx/d/c/i;->q:[F

    aget v6, v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    move v4, v2

    goto :goto_1

    .line 150
    :cond_0
    iget-object v6, p0, Landroidx/d/c/i;->q:[F

    aget v6, v6, v0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    move v4, v1

    .line 153
    :cond_1
    :goto_1
    iget-object v6, p0, Landroidx/d/c/i;->q:[F

    aget v6, v6, v0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_2

    move v5, v2

    .line 156
    :cond_2
    iget-object v6, p0, Landroidx/d/c/i;->q:[F

    array-length v6, v6

    sub-int/2addr v6, v1

    if-ge v0, v6, :cond_3

    .line 157
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 159
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    .line 163
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (-)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_5
    if-eqz v5, :cond_6

    .line 166
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (*)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_6
    return-object v3
.end method

.method public d()V
    .locals 6

    const/4 v0, 0x0

    .line 257
    iput-object v0, p0, Landroidx/d/c/i;->H:Ljava/lang/String;

    .line 258
    sget-object v1, Landroidx/d/c/i$a;->e:Landroidx/d/c/i$a;

    iput-object v1, p0, Landroidx/d/c/i;->s:Landroidx/d/c/i$a;

    const/4 v1, 0x0

    .line 259
    iput v1, p0, Landroidx/d/c/i;->m:I

    const/4 v2, -0x1

    .line 260
    iput v2, p0, Landroidx/d/c/i;->k:I

    .line 261
    iput v2, p0, Landroidx/d/c/i;->l:I

    const/4 v3, 0x0

    .line 262
    iput v3, p0, Landroidx/d/c/i;->n:F

    .line 263
    iput-boolean v1, p0, Landroidx/d/c/i;->o:Z

    .line 264
    iput-boolean v1, p0, Landroidx/d/c/i;->w:Z

    .line 265
    iput v2, p0, Landroidx/d/c/i;->x:I

    .line 266
    iput v3, p0, Landroidx/d/c/i;->y:F

    .line 270
    iget v2, p0, Landroidx/d/c/i;->u:I

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_0

    .line 272
    iget-object v5, p0, Landroidx/d/c/i;->t:[Landroidx/d/c/b;

    aput-object v0, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 274
    :cond_0
    iput v1, p0, Landroidx/d/c/i;->u:I

    .line 276
    iput v1, p0, Landroidx/d/c/i;->v:I

    .line 277
    iput-boolean v1, p0, Landroidx/d/c/i;->j:Z

    .line 278
    iget-object p0, p0, Landroidx/d/c/i;->r:[F

    invoke-static {p0, v3}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 0

    .line 287
    iget-object p0, p0, Landroidx/d/c/i;->H:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, ""

    .line 313
    iget-object v1, p0, Landroidx/d/c/i;->H:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/d/c/i;->H:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 316
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/d/c/i;->k:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
