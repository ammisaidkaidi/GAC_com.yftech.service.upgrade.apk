.class public Landroidx/core/app/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/app/p$a$c;,
        Landroidx/core/app/p$a$d;,
        Landroidx/core/app/p$a$b;,
        Landroidx/core/app/p$a$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field public static final i:I = 0x8

.field public static final j:I = 0x9

.field public static final k:I = 0xa

.field static final l:Ljava/lang/String; = "android.support.action.showsUserInterface"

.field static final m:Ljava/lang/String; = "android.support.action.semanticAction"


# instance fields
.field final n:Landroid/os/Bundle;

.field o:Z

.field public p:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public q:Ljava/lang/CharSequence;

.field public r:Landroid/app/PendingIntent;

.field private s:Landroidx/core/graphics/drawable/IconCompat;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private final t:[Landroidx/core/app/w;

.field private final u:[Landroidx/core/app/w;

.field private v:Z

.field private final w:I

.field private final x:Z


# direct methods
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 3303
    invoke-static {v0, v1, p1}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0, p2, p3}, Landroidx/core/app/p$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/w;[Landroidx/core/app/w;ZIZZ)V
    .locals 13

    move v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    move-object v3, v1

    goto :goto_1

    :cond_0
    const-string v2, ""

    .line 3320
    invoke-static {v1, v2, p1}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    goto :goto_0

    :goto_1
    move-object v2, p0

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v2 .. v12}, Landroidx/core/app/p$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/w;[Landroidx/core/app/w;ZIZZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 11
    .param p1    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 3312
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v10}, Landroidx/core/app/p$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/w;[Landroidx/core/app/w;ZIZZ)V

    return-void
.end method

.method constructor <init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/w;[Landroidx/core/app/w;ZIZZ)V
    .locals 2
    .param p1    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/ai;
        .end annotation
    .end param

    .line 3331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3280
    iput-boolean v0, p0, Landroidx/core/app/p$a;->o:Z

    .line 3332
    iput-object p1, p0, Landroidx/core/app/p$a;->s:Landroidx/core/graphics/drawable/IconCompat;

    if-eqz p1, :cond_0

    .line 3333
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3334
    invoke-virtual {p1}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    move-result p1

    iput p1, p0, Landroidx/core/app/p$a;->p:I

    .line 3336
    :cond_0
    invoke-static {p2}, Landroidx/core/app/p$f;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/app/p$a;->q:Ljava/lang/CharSequence;

    .line 3337
    iput-object p3, p0, Landroidx/core/app/p$a;->r:Landroid/app/PendingIntent;

    if-eqz p4, :cond_1

    goto :goto_0

    .line 3338
    :cond_1
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object p4, p0, Landroidx/core/app/p$a;->n:Landroid/os/Bundle;

    .line 3339
    iput-object p5, p0, Landroidx/core/app/p$a;->t:[Landroidx/core/app/w;

    .line 3340
    iput-object p6, p0, Landroidx/core/app/p$a;->u:[Landroidx/core/app/w;

    .line 3341
    iput-boolean p7, p0, Landroidx/core/app/p$a;->v:Z

    .line 3342
    iput p8, p0, Landroidx/core/app/p$a;->w:I

    .line 3343
    iput-boolean p9, p0, Landroidx/core/app/p$a;->o:Z

    .line 3344
    iput-boolean p10, p0, Landroidx/core/app/p$a;->x:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3353
    iget p0, p0, Landroidx/core/app/p$a;->p:I

    return p0
.end method

.method public b()Landroidx/core/graphics/drawable/IconCompat;
    .locals 3
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .line 3361
    iget-object v0, p0, Landroidx/core/app/p$a;->s:Landroidx/core/graphics/drawable/IconCompat;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/core/app/p$a;->p:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, ""

    .line 3362
    iget v2, p0, Landroidx/core/app/p$a;->p:I

    invoke-static {v0, v1, v2}, Landroidx/core/graphics/drawable/IconCompat;->a(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/app/p$a;->s:Landroidx/core/graphics/drawable/IconCompat;

    .line 3364
    :cond_0
    iget-object p0, p0, Landroidx/core/app/p$a;->s:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 0

    .line 3368
    iget-object p0, p0, Landroidx/core/app/p$a;->q:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public d()Landroid/app/PendingIntent;
    .locals 0

    .line 3372
    iget-object p0, p0, Landroidx/core/app/p$a;->r:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public e()Landroid/os/Bundle;
    .locals 0

    .line 3379
    iget-object p0, p0, Landroidx/core/app/p$a;->n:Landroid/os/Bundle;

    return-object p0
.end method

.method public f()Z
    .locals 0

    .line 3387
    iget-boolean p0, p0, Landroidx/core/app/p$a;->v:Z

    return p0
.end method

.method public g()[Landroidx/core/app/w;
    .locals 0

    .line 3396
    iget-object p0, p0, Landroidx/core/app/p$a;->t:[Landroidx/core/app/w;

    return-object p0
.end method

.method public h()I
    .locals 0

    .line 3407
    iget p0, p0, Landroidx/core/app/p$a;->w:I

    return p0
.end method

.method public i()Z
    .locals 0

    .line 3416
    iget-boolean p0, p0, Landroidx/core/app/p$a;->x:Z

    return p0
.end method

.method public j()[Landroidx/core/app/w;
    .locals 0

    .line 3430
    iget-object p0, p0, Landroidx/core/app/p$a;->u:[Landroidx/core/app/w;

    return-object p0
.end method

.method public k()Z
    .locals 0

    .line 3438
    iget-boolean p0, p0, Landroidx/core/app/p$a;->o:Z

    return p0
.end method
