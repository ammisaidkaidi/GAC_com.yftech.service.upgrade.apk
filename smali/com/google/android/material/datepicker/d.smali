.class public final Lcom/google/android/material/datepicker/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/datepicker/a$b;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/datepicker/d;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/List;
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/datepicker/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/google/android/material/datepicker/d$1;

    invoke-direct {v0}, Lcom/google/android/material/datepicker/d$1;-><init>()V

    sput-object v0, Lcom/google/android/material/datepicker/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/datepicker/a$b;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/android/material/datepicker/d;->a:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/android/material/datepicker/d$1;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/google/android/material/datepicker/d;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static a(Ljava/util/List;)Lcom/google/android/material/datepicker/a$b;
    .locals 1
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/material/datepicker/a$b;",
            ">;)",
            "Lcom/google/android/material/datepicker/a$b;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/google/android/material/datepicker/d;

    invoke-direct {v0, p0}, Lcom/google/android/material/datepicker/d;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public a(J)Z
    .locals 1

    .line 72
    iget-object p0, p0, Lcom/google/android/material/datepicker/d;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/a$b;

    if-nez v0, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/google/android/material/datepicker/a$b;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 99
    :cond_0
    instance-of v0, p1, Lcom/google/android/material/datepicker/d;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 103
    :cond_1
    check-cast p1, Lcom/google/android/material/datepicker/d;

    .line 105
    iget-object p0, p0, Lcom/google/android/material/datepicker/d;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/material/datepicker/d;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/google/android/material/datepicker/d;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 90
    iget-object p0, p0, Lcom/google/android/material/datepicker/d;->a:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
