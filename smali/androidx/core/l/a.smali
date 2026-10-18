.class public final Landroidx/core/l/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/l/a$b;,
        Landroidx/core/l/a$a;
    }
.end annotation


# static fields
.field static final a:Landroidx/core/l/e;

.field static final b:Landroidx/core/l/a;

.field static final c:Landroidx/core/l/a;

.field private static final d:C = '\u202a'

.field private static final e:C = '\u202b'

.field private static final f:C = '\u202c'

.field private static final g:C = '\u200e'

.field private static final h:C = '\u200f'

.field private static final i:Ljava/lang/String;

.field private static final j:Ljava/lang/String;

.field private static final k:Ljava/lang/String; = ""

.field private static final l:I = 0x2

.field private static final m:I = 0x2

.field private static final q:I = -0x1

.field private static final r:I = 0x0

.field private static final s:I = 0x1


# instance fields
.field private final n:Z

.field private final o:I

.field private final p:Landroidx/core/l/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 85
    sget-object v0, Landroidx/core/l/f;->c:Landroidx/core/l/e;

    sput-object v0, Landroidx/core/l/a;->a:Landroidx/core/l/e;

    const/16 v0, 0x200e

    .line 115
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/l/a;->i:Ljava/lang/String;

    const/16 v0, 0x200f

    .line 120
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/core/l/a;->j:Ljava/lang/String;

    .line 217
    new-instance v0, Landroidx/core/l/a;

    sget-object v1, Landroidx/core/l/a;->a:Landroidx/core/l/e;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Landroidx/core/l/a;-><init>(ZILandroidx/core/l/e;)V

    sput-object v0, Landroidx/core/l/a;->b:Landroidx/core/l/a;

    .line 222
    new-instance v0, Landroidx/core/l/a;

    sget-object v1, Landroidx/core/l/a;->a:Landroidx/core/l/e;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2, v1}, Landroidx/core/l/a;-><init>(ZILandroidx/core/l/e;)V

    sput-object v0, Landroidx/core/l/a;->c:Landroidx/core/l/a;

    return-void
.end method

.method constructor <init>(ZILandroidx/core/l/e;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-boolean p1, p0, Landroidx/core/l/a;->n:Z

    .line 264
    iput p2, p0, Landroidx/core/l/a;->o:I

    .line 265
    iput-object p3, p0, Landroidx/core/l/a;->p:Landroidx/core/l/e;

    return-void
.end method

.method public static a()Landroidx/core/l/a;
    .locals 1

    .line 236
    new-instance v0, Landroidx/core/l/a$a;

    invoke-direct {v0}, Landroidx/core/l/a$a;-><init>()V

    invoke-virtual {v0}, Landroidx/core/l/a$a;->a()Landroidx/core/l/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/Locale;)Landroidx/core/l/a;
    .locals 1

    .line 254
    new-instance v0, Landroidx/core/l/a$a;

    invoke-direct {v0, p0}, Landroidx/core/l/a$a;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v0}, Landroidx/core/l/a$a;->a()Landroidx/core/l/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Z)Landroidx/core/l/a;
    .locals 1

    .line 245
    new-instance v0, Landroidx/core/l/a$a;

    invoke-direct {v0, p0}, Landroidx/core/l/a$a;-><init>(Z)V

    invoke-virtual {v0}, Landroidx/core/l/a$a;->a()Landroidx/core/l/a;

    move-result-object p0

    return-object p0
.end method

.method private b(Ljava/lang/CharSequence;Landroidx/core/l/e;)Ljava/lang/String;
    .locals 2

    .line 300
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Landroidx/core/l/e;->a(Ljava/lang/CharSequence;II)Z

    move-result p2

    .line 302
    iget-boolean v0, p0, Landroidx/core/l/a;->n:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    invoke-static {p1}, Landroidx/core/l/a;->c(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 303
    :cond_0
    sget-object p0, Landroidx/core/l/a;->i:Ljava/lang/String;

    return-object p0

    .line 305
    :cond_1
    iget-boolean p0, p0, Landroidx/core/l/a;->n:Z

    if-eqz p0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p1}, Landroidx/core/l/a;->c(Ljava/lang/CharSequence;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_3

    .line 306
    :cond_2
    sget-object p0, Landroidx/core/l/a;->j:Ljava/lang/String;

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method static b(Ljava/util/Locale;)Z
    .locals 1

    .line 516
    invoke-static {p0}, Landroidx/core/l/g;->a(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static c(Ljava/lang/CharSequence;)I
    .locals 2

    .line 541
    new-instance v0, Landroidx/core/l/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/core/l/a$b;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Landroidx/core/l/a$b;->b()I

    move-result p0

    return p0
.end method

.method private c(Ljava/lang/CharSequence;Landroidx/core/l/e;)Ljava/lang/String;
    .locals 2

    .line 328
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Landroidx/core/l/e;->a(Ljava/lang/CharSequence;II)Z

    move-result p2

    .line 330
    iget-boolean v0, p0, Landroidx/core/l/a;->n:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    invoke-static {p1}, Landroidx/core/l/a;->d(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 331
    :cond_0
    sget-object p0, Landroidx/core/l/a;->i:Ljava/lang/String;

    return-object p0

    .line 333
    :cond_1
    iget-boolean p0, p0, Landroidx/core/l/a;->n:Z

    if-eqz p0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p1}, Landroidx/core/l/a;->d(Ljava/lang/CharSequence;)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_3

    .line 334
    :cond_2
    sget-object p0, Landroidx/core/l/a;->j:Ljava/lang/String;

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method private static d(Ljava/lang/CharSequence;)I
    .locals 2

    .line 558
    new-instance v0, Landroidx/core/l/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/core/l/a$b;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Landroidx/core/l/a$b;->a()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Landroidx/core/l/e;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x1

    .line 456
    invoke-virtual {p0, p1, p2, v0}, Landroidx/core/l/a;->a(Ljava/lang/CharSequence;Landroidx/core/l/e;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;Landroidx/core/l/e;Z)Ljava/lang/CharSequence;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 412
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroidx/core/l/e;->a(Ljava/lang/CharSequence;II)Z

    move-result p2

    .line 413
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 414
    invoke-virtual {p0}, Landroidx/core/l/a;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    .line 416
    sget-object v1, Landroidx/core/l/f;->b:Landroidx/core/l/e;

    goto :goto_0

    :cond_1
    sget-object v1, Landroidx/core/l/f;->a:Landroidx/core/l/e;

    .line 415
    :goto_0
    invoke-direct {p0, p1, v1}, Landroidx/core/l/a;->c(Ljava/lang/CharSequence;Landroidx/core/l/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 418
    :cond_2
    iget-boolean v1, p0, Landroidx/core/l/a;->n:Z

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_3

    const/16 v1, 0x202b

    goto :goto_1

    :cond_3
    const/16 v1, 0x202a

    .line 419
    :goto_1
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 420
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v1, 0x202c

    .line 421
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 423
    :cond_4
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_2
    if-eqz p3, :cond_6

    if-eqz p2, :cond_5

    .line 427
    sget-object p2, Landroidx/core/l/f;->b:Landroidx/core/l/e;

    goto :goto_3

    :cond_5
    sget-object p2, Landroidx/core/l/f;->a:Landroidx/core/l/e;

    .line 426
    :goto_3
    invoke-direct {p0, p1, p2}, Landroidx/core/l/a;->b(Ljava/lang/CharSequence;Landroidx/core/l/e;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6
    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 1

    .line 483
    iget-object v0, p0, Landroidx/core/l/a;->p:Landroidx/core/l/e;

    invoke-virtual {p0, p1, v0, p2}, Landroidx/core/l/a;->a(Ljava/lang/CharSequence;Landroidx/core/l/e;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;Landroidx/core/l/e;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 441
    invoke-virtual {p0, p1, p2, v0}, Landroidx/core/l/a;->a(Ljava/lang/String;Landroidx/core/l/e;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;Landroidx/core/l/e;Z)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 392
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/l/a;->a(Ljava/lang/CharSequence;Landroidx/core/l/e;Z)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Landroidx/core/l/a;->p:Landroidx/core/l/e;

    invoke-virtual {p0, p1, v0, p2}, Landroidx/core/l/a;->a(Ljava/lang/String;Landroidx/core/l/e;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 358
    iget-object p0, p0, Landroidx/core/l/a;->p:Landroidx/core/l/e;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v0}, Landroidx/core/l/e;->a(Ljava/lang/CharSequence;II)Z

    move-result p0

    return p0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 347
    invoke-virtual {p0, p1}, Landroidx/core/l/a;->a(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 506
    iget-object v0, p0, Landroidx/core/l/a;->p:Landroidx/core/l/e;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/core/l/a;->a(Ljava/lang/CharSequence;Landroidx/core/l/e;Z)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 494
    iget-object v0, p0, Landroidx/core/l/a;->p:Landroidx/core/l/e;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroidx/core/l/a;->a(Ljava/lang/String;Landroidx/core/l/e;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b()Z
    .locals 0

    .line 272
    iget-boolean p0, p0, Landroidx/core/l/a;->n:Z

    return p0
.end method

.method public c()Z
    .locals 0

    .line 280
    iget p0, p0, Landroidx/core/l/a;->o:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
