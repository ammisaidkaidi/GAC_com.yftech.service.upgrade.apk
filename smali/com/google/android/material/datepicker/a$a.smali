.class public final Lcom/google/android/material/datepicker/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/datepicker/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final a:J

.field static final b:J

.field private static final c:Ljava/lang/String; = "DEEP_COPY_VALIDATOR_KEY"


# instance fields
.field private d:J

.field private e:J

.field private f:Ljava/lang/Long;

.field private g:Lcom/google/android/material/datepicker/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x76c

    const/4 v1, 0x0

    .line 193
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/p;->a(II)Lcom/google/android/material/datepicker/p;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/p;->e:J

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/y;->a(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/datepicker/a$a;->a:J

    const/16 v0, 0x834

    const/16 v1, 0xb

    .line 199
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/p;->a(II)Lcom/google/android/material/datepicker/p;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/p;->e:J

    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/y;->a(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/material/datepicker/a$a;->b:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    sget-wide v0, Lcom/google/android/material/datepicker/a$a;->a:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/a$a;->d:J

    .line 204
    sget-wide v0, Lcom/google/android/material/datepicker/a$a;->b:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/a$a;->e:J

    const-wide/high16 v0, -0x8000000000000000L

    .line 206
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/i;->b(J)Lcom/google/android/material/datepicker/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/a$a;->g:Lcom/google/android/material/datepicker/a$b;

    return-void
.end method

.method constructor <init>(Lcom/google/android/material/datepicker/a;)V
    .locals 2
    .param p1    # Lcom/google/android/material/datepicker/a;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    sget-wide v0, Lcom/google/android/material/datepicker/a$a;->a:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/a$a;->d:J

    .line 204
    sget-wide v0, Lcom/google/android/material/datepicker/a$a;->b:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/a$a;->e:J

    const-wide/high16 v0, -0x8000000000000000L

    .line 206
    invoke-static {v0, v1}, Lcom/google/android/material/datepicker/i;->b(J)Lcom/google/android/material/datepicker/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/a$a;->g:Lcom/google/android/material/datepicker/a$b;

    .line 211
    invoke-static {p1}, Lcom/google/android/material/datepicker/a;->a(Lcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/p;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/p;->e:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/a$a;->d:J

    .line 212
    invoke-static {p1}, Lcom/google/android/material/datepicker/a;->b(Lcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/p;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/p;->e:J

    iput-wide v0, p0, Lcom/google/android/material/datepicker/a$a;->e:J

    .line 213
    invoke-static {p1}, Lcom/google/android/material/datepicker/a;->c(Lcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/p;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/material/datepicker/p;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/a$a;->f:Ljava/lang/Long;

    .line 214
    invoke-static {p1}, Lcom/google/android/material/datepicker/a;->d(Lcom/google/android/material/datepicker/a;)Lcom/google/android/material/datepicker/a$b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/a$a;->g:Lcom/google/android/material/datepicker/a$b;

    return-void
.end method


# virtual methods
.method public a(J)Lcom/google/android/material/datepicker/a$a;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 240
    iput-wide p1, p0, Lcom/google/android/material/datepicker/a$a;->d:J

    return-object p0
.end method

.method public a(Lcom/google/android/material/datepicker/a$b;)Lcom/google/android/material/datepicker/a$a;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/google/android/material/datepicker/a$a;->g:Lcom/google/android/material/datepicker/a$b;

    return-object p0
.end method

.method public a()Lcom/google/android/material/datepicker/a;
    .locals 9
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/google/android/material/datepicker/a$a;->f:Ljava/lang/Long;

    if-nez v0, :cond_1

    .line 312
    invoke-static {}, Lcom/google/android/material/datepicker/l;->aL()J

    move-result-wide v0

    .line 313
    iget-wide v2, p0, Lcom/google/android/material/datepicker/a$a;->d:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/material/datepicker/a$a;->e:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/material/datepicker/a$a;->d:J

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/datepicker/a$a;->f:Ljava/lang/Long;

    .line 315
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DEEP_COPY_VALIDATOR_KEY"

    .line 316
    iget-object v2, p0, Lcom/google/android/material/datepicker/a$a;->g:Lcom/google/android/material/datepicker/a$b;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 317
    new-instance v1, Lcom/google/android/material/datepicker/a;

    iget-wide v2, p0, Lcom/google/android/material/datepicker/a$a;->d:J

    .line 318
    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/p;->a(J)Lcom/google/android/material/datepicker/p;

    move-result-object v4

    iget-wide v2, p0, Lcom/google/android/material/datepicker/a$a;->e:J

    .line 319
    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/p;->a(J)Lcom/google/android/material/datepicker/p;

    move-result-object v5

    iget-object p0, p0, Lcom/google/android/material/datepicker/a$a;->f:Ljava/lang/Long;

    .line 320
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/material/datepicker/p;->a(J)Lcom/google/android/material/datepicker/p;

    move-result-object v6

    const-string p0, "DEEP_COPY_VALIDATOR_KEY"

    .line 321
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/google/android/material/datepicker/a$b;

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/material/datepicker/a;-><init>(Lcom/google/android/material/datepicker/p;Lcom/google/android/material/datepicker/p;Lcom/google/android/material/datepicker/p;Lcom/google/android/material/datepicker/a$b;Lcom/google/android/material/datepicker/a$1;)V

    return-object v1
.end method

.method public b(J)Lcom/google/android/material/datepicker/a$a;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 267
    iput-wide p1, p0, Lcom/google/android/material/datepicker/a$a;->e:J

    return-object p0
.end method

.method public c(J)Lcom/google/android/material/datepicker/a$a;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 294
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/a$a;->f:Ljava/lang/Long;

    return-object p0
.end method
