.class Landroidx/recyclerview/widget/u$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field private static i:Landroidx/recyclerview/widget/u$b;

.field private static final j:Ljava/lang/Object;


# instance fields
.field a:Landroidx/recyclerview/widget/u$b;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 180
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/recyclerview/widget/u$b;->j:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(III)Landroidx/recyclerview/widget/u$b;
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    .line 225
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/u$b;->a(IIIIIILjava/lang/Object;)Landroidx/recyclerview/widget/u$b;

    move-result-object p0

    return-object p0
.end method

.method static a(IIIIIILjava/lang/Object;)Landroidx/recyclerview/widget/u$b;
    .locals 3

    .line 204
    sget-object v0, Landroidx/recyclerview/widget/u$b;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    sget-object v1, Landroidx/recyclerview/widget/u$b;->i:Landroidx/recyclerview/widget/u$b;

    if-nez v1, :cond_0

    .line 207
    new-instance v1, Landroidx/recyclerview/widget/u$b;

    invoke-direct {v1}, Landroidx/recyclerview/widget/u$b;-><init>()V

    goto :goto_0

    .line 209
    :cond_0
    sget-object v1, Landroidx/recyclerview/widget/u$b;->i:Landroidx/recyclerview/widget/u$b;

    .line 210
    sget-object v2, Landroidx/recyclerview/widget/u$b;->i:Landroidx/recyclerview/widget/u$b;

    iget-object v2, v2, Landroidx/recyclerview/widget/u$b;->a:Landroidx/recyclerview/widget/u$b;

    sput-object v2, Landroidx/recyclerview/widget/u$b;->i:Landroidx/recyclerview/widget/u$b;

    const/4 v2, 0x0

    .line 211
    iput-object v2, v1, Landroidx/recyclerview/widget/u$b;->a:Landroidx/recyclerview/widget/u$b;

    .line 213
    :goto_0
    iput p0, v1, Landroidx/recyclerview/widget/u$b;->b:I

    .line 214
    iput p1, v1, Landroidx/recyclerview/widget/u$b;->c:I

    .line 215
    iput p2, v1, Landroidx/recyclerview/widget/u$b;->d:I

    .line 216
    iput p3, v1, Landroidx/recyclerview/widget/u$b;->e:I

    .line 217
    iput p4, v1, Landroidx/recyclerview/widget/u$b;->f:I

    .line 218
    iput p5, v1, Landroidx/recyclerview/widget/u$b;->g:I

    .line 219
    iput-object p6, v1, Landroidx/recyclerview/widget/u$b;->h:Ljava/lang/Object;

    .line 220
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 221
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static a(IILjava/lang/Object;)Landroidx/recyclerview/widget/u$b;
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move-object v6, p2

    .line 229
    invoke-static/range {v0 .. v6}, Landroidx/recyclerview/widget/u$b;->a(IIIIIILjava/lang/Object;)Landroidx/recyclerview/widget/u$b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, 0x0

    .line 191
    iput-object v0, p0, Landroidx/recyclerview/widget/u$b;->a:Landroidx/recyclerview/widget/u$b;

    const/4 v1, 0x0

    .line 192
    iput v1, p0, Landroidx/recyclerview/widget/u$b;->g:I

    iput v1, p0, Landroidx/recyclerview/widget/u$b;->f:I

    iput v1, p0, Landroidx/recyclerview/widget/u$b;->e:I

    iput v1, p0, Landroidx/recyclerview/widget/u$b;->d:I

    iput v1, p0, Landroidx/recyclerview/widget/u$b;->c:I

    iput v1, p0, Landroidx/recyclerview/widget/u$b;->b:I

    .line 193
    iput-object v0, p0, Landroidx/recyclerview/widget/u$b;->h:Ljava/lang/Object;

    .line 194
    sget-object v0, Landroidx/recyclerview/widget/u$b;->j:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    sget-object v1, Landroidx/recyclerview/widget/u$b;->i:Landroidx/recyclerview/widget/u$b;

    if-eqz v1, :cond_0

    .line 196
    sget-object v1, Landroidx/recyclerview/widget/u$b;->i:Landroidx/recyclerview/widget/u$b;

    iput-object v1, p0, Landroidx/recyclerview/widget/u$b;->a:Landroidx/recyclerview/widget/u$b;

    .line 198
    :cond_0
    sput-object p0, Landroidx/recyclerview/widget/u$b;->i:Landroidx/recyclerview/widget/u$b;

    .line 199
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
