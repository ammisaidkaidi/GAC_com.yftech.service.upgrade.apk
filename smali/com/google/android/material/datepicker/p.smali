.class final Lcom/google/android/material/datepicker/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/material/datepicker/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/p;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:I

.field final e:J

.field private final f:Ljava/util/Calendar;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field

.field private final g:Ljava/lang/String;
    .annotation build Landroidx/annotation/ah;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 191
    new-instance v0, Lcom/google/android/material/datepicker/p$1;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/p$1;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/p;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/util/Calendar;)V
    .locals 3
    .param p1    # Ljava/util/Calendar;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x5

    .line 58
    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 59
    invoke-static {p1}, Lcom/google/android/material/datepicker/y;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/p;->f:Ljava/util/Calendar;

    .line 60
    iget-object p1, p0, Lcom/google/android/material/datepicker/p;->f:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/datepicker/p;->a:I

    .line 61
    iget-object p1, p0, Lcom/google/android/material/datepicker/p;->f:Ljava/util/Calendar;

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/datepicker/p;->b:I

    .line 62
    iget-object p1, p0, Lcom/google/android/material/datepicker/p;->f:Ljava/util/Calendar;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->getMaximum(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/datepicker/p;->c:I

    .line 63
    iget-object p1, p0, Lcom/google/android/material/datepicker/p;->f:Ljava/util/Calendar;

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/datepicker/p;->d:I

    .line 64
    invoke-static {}, Lcom/google/android/material/datepicker/y;->h()Ljava/text/SimpleDateFormat;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/material/datepicker/p;->f:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/datepicker/p;->g:Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcom/google/android/material/datepicker/p;->f:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/material/datepicker/p;->e:J

    return-void
.end method

.method static a()Lcom/google/android/material/datepicker/p;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 101
    new-instance v0, Lcom/google/android/material/datepicker/p;

    invoke-static {}, Lcom/google/android/material/datepicker/y;->b()Ljava/util/Calendar;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/material/datepicker/p;-><init>(Ljava/util/Calendar;)V

    return-object v0
.end method

.method static a(II)Lcom/google/android/material/datepicker/p;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 89
    invoke-static {}, Lcom/google/android/material/datepicker/y;->c()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 90
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/4 p0, 0x2

    .line 91
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 92
    new-instance p0, Lcom/google/android/material/datepicker/p;

    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/p;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method

.method static a(J)Lcom/google/android/material/datepicker/p;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 74
    invoke-static {}, Lcom/google/android/material/datepicker/y;->c()Ljava/util/Calendar;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 76
    new-instance p0, Lcom/google/android/material/datepicker/p;

    invoke-direct {p0, v0}, Lcom/google/android/material/datepicker/p;-><init>(Ljava/util/Calendar;)V

    return-object p0
.end method


# virtual methods
.method public a(Lcom/google/android/material/datepicker/p;)I
    .locals 0
    .param p1    # Lcom/google/android/material/datepicker/p;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 132
    iget-object p0, p0, Lcom/google/android/material/datepicker/p;->f:Ljava/util/Calendar;

    iget-object p1, p1, Lcom/google/android/material/datepicker/p;->f:Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method a(I)J
    .locals 1

    .line 166
    iget-object p0, p0, Lcom/google/android/material/datepicker/p;->f:Ljava/util/Calendar;

    invoke-static {p0}, Lcom/google/android/material/datepicker/y;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x5

    .line 167
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 168
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method b()I
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/google/android/material/datepicker/p;->f:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/material/datepicker/p;->f:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 107
    iget p0, p0, Lcom/google/android/material/datepicker/p;->c:I

    add-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method b(Lcom/google/android/material/datepicker/p;)I
    .locals 2
    .param p1    # Lcom/google/android/material/datepicker/p;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 145
    iget-object v0, p0, Lcom/google/android/material/datepicker/p;->f:Ljava/util/Calendar;

    instance-of v0, v0, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_0

    .line 146
    iget v0, p1, Lcom/google/android/material/datepicker/p;->b:I

    iget v1, p0, Lcom/google/android/material/datepicker/p;->b:I

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    iget p1, p1, Lcom/google/android/material/datepicker/p;->a:I

    iget p0, p0, Lcom/google/android/material/datepicker/p;->a:I

    sub-int/2addr p1, p0

    add-int/2addr v0, p1

    return v0

    .line 148
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only Gregorian calendars are supported."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method b(I)Lcom/google/android/material/datepicker/p;
    .locals 1
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 177
    iget-object p0, p0, Lcom/google/android/material/datepicker/p;->f:Ljava/util/Calendar;

    invoke-static {p0}, Lcom/google/android/material/datepicker/y;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    const/4 v0, 0x2

    .line 178
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->add(II)V

    .line 179
    new-instance p1, Lcom/google/android/material/datepicker/p;

    invoke-direct {p1, p0}, Lcom/google/android/material/datepicker/p;-><init>(Ljava/util/Calendar;)V

    return-object p1
.end method

.method c()J
    .locals 2

    .line 153
    iget-object p0, p0, Lcom/google/android/material/datepicker/p;->f:Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 29
    check-cast p1, Lcom/google/android/material/datepicker/p;

    invoke-virtual {p0, p1}, Lcom/google/android/material/datepicker/p;->a(Lcom/google/android/material/datepicker/p;)I

    move-result p0

    return p0
.end method

.method d()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 185
    iget-object p0, p0, Lcom/google/android/material/datepicker/p;->g:Ljava/lang/String;

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 117
    :cond_0
    instance-of v1, p1, Lcom/google/android/material/datepicker/p;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 120
    :cond_1
    check-cast p1, Lcom/google/android/material/datepicker/p;

    .line 121
    iget v1, p0, Lcom/google/android/material/datepicker/p;->a:I

    iget v3, p1, Lcom/google/android/material/datepicker/p;->a:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Lcom/google/android/material/datepicker/p;->b:I

    iget p1, p1, Lcom/google/android/material/datepicker/p;->b:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 126
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/material/datepicker/p;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/google/android/material/datepicker/p;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 127
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 215
    iget p2, p0, Lcom/google/android/material/datepicker/p;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget p0, p0, Lcom/google/android/material/datepicker/p;->a:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
