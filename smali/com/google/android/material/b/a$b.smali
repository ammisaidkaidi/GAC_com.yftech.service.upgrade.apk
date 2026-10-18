.class public final Lcom/google/android/material/b/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/ap;
    a = {
        .enum Landroidx/annotation/ap$a;->LIBRARY_GROUP:Landroidx/annotation/ap$a;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/b/a$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private b:I
    .annotation build Landroidx/annotation/k;
    .end annotation
.end field

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field

.field private g:I
    .annotation build Landroidx/annotation/aj;
    .end annotation
.end field

.field private h:I
    .annotation build Landroidx/annotation/as;
    .end annotation
.end field

.field private i:I

.field private j:I
    .annotation build Landroidx/annotation/p;
        a = 0x1
    .end annotation
.end field

.field private k:I
    .annotation build Landroidx/annotation/p;
        a = 0x1
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 225
    new-instance v0, Lcom/google/android/material/b/a$b$1;

    invoke-direct {v0}, Lcom/google/android/material/b/a$b$1;-><init>()V

    sput-object v0, Lcom/google/android/material/b/a$b;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 185
    iput v0, p0, Lcom/google/android/material/b/a$b;->c:I

    const/4 v0, -0x1

    .line 186
    iput v0, p0, Lcom/google/android/material/b/a$b;->d:I

    .line 202
    new-instance v0, Lcom/google/android/material/q/d;

    sget v1, Lcom/google/android/material/a$n;->TextAppearance_MaterialComponents_Badge:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/material/q/d;-><init>(Landroid/content/Context;I)V

    .line 204
    iget-object v0, v0, Lcom/google/android/material/q/d;->b:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/b/a$b;->b:I

    .line 205
    sget v0, Lcom/google/android/material/a$m;->mtrl_badge_numberless_content_description:I

    .line 206
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/b/a$b;->f:Ljava/lang/CharSequence;

    .line 207
    sget p1, Lcom/google/android/material/a$l;->mtrl_badge_content_description:I

    iput p1, p0, Lcom/google/android/material/b/a$b;->g:I

    .line 208
    sget p1, Lcom/google/android/material/a$m;->mtrl_exceed_max_badge_number_content_description:I

    iput p1, p0, Lcom/google/android/material/b/a$b;->h:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xff

    .line 185
    iput v0, p0, Lcom/google/android/material/b/a$b;->c:I

    const/4 v0, -0x1

    .line 186
    iput v0, p0, Lcom/google/android/material/b/a$b;->d:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/b/a$b;->a:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/b/a$b;->b:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/b/a$b;->c:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/b/a$b;->d:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/b/a$b;->e:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/material/b/a$b;->f:Ljava/lang/CharSequence;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/b/a$b;->g:I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/b/a$b;->i:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/android/material/b/a$b;->j:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/android/material/b/a$b;->k:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/b/a$b;)I
    .locals 0

    .line 181
    iget p0, p0, Lcom/google/android/material/b/a$b;->e:I

    return p0
.end method

.method static synthetic a(Lcom/google/android/material/b/a$b;I)I
    .locals 0

    .line 181
    iput p1, p0, Lcom/google/android/material/b/a$b;->a:I

    return p1
.end method

.method static synthetic a(Lcom/google/android/material/b/a$b;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/google/android/material/b/a$b;->f:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/material/b/a$b;)I
    .locals 0

    .line 181
    iget p0, p0, Lcom/google/android/material/b/a$b;->d:I

    return p0
.end method

.method static synthetic b(Lcom/google/android/material/b/a$b;I)I
    .locals 0

    .line 181
    iput p1, p0, Lcom/google/android/material/b/a$b;->b:I

    return p1
.end method

.method static synthetic c(Lcom/google/android/material/b/a$b;)I
    .locals 0

    .line 181
    iget p0, p0, Lcom/google/android/material/b/a$b;->a:I

    return p0
.end method

.method static synthetic c(Lcom/google/android/material/b/a$b;I)I
    .locals 0

    .line 181
    iput p1, p0, Lcom/google/android/material/b/a$b;->d:I

    return p1
.end method

.method static synthetic d(Lcom/google/android/material/b/a$b;)I
    .locals 0

    .line 181
    iget p0, p0, Lcom/google/android/material/b/a$b;->b:I

    return p0
.end method

.method static synthetic d(Lcom/google/android/material/b/a$b;I)I
    .locals 0

    .line 181
    iput p1, p0, Lcom/google/android/material/b/a$b;->e:I

    return p1
.end method

.method static synthetic e(Lcom/google/android/material/b/a$b;)I
    .locals 0

    .line 181
    iget p0, p0, Lcom/google/android/material/b/a$b;->i:I

    return p0
.end method

.method static synthetic e(Lcom/google/android/material/b/a$b;I)I
    .locals 0

    .line 181
    iput p1, p0, Lcom/google/android/material/b/a$b;->i:I

    return p1
.end method

.method static synthetic f(Lcom/google/android/material/b/a$b;)I
    .locals 0

    .line 181
    iget p0, p0, Lcom/google/android/material/b/a$b;->j:I

    return p0
.end method

.method static synthetic f(Lcom/google/android/material/b/a$b;I)I
    .locals 0

    .line 181
    iput p1, p0, Lcom/google/android/material/b/a$b;->c:I

    return p1
.end method

.method static synthetic g(Lcom/google/android/material/b/a$b;)I
    .locals 0

    .line 181
    iget p0, p0, Lcom/google/android/material/b/a$b;->k:I

    return p0
.end method

.method static synthetic g(Lcom/google/android/material/b/a$b;I)I
    .locals 0

    .line 181
    iput p1, p0, Lcom/google/android/material/b/a$b;->g:I

    return p1
.end method

.method static synthetic h(Lcom/google/android/material/b/a$b;)I
    .locals 0

    .line 181
    iget p0, p0, Lcom/google/android/material/b/a$b;->c:I

    return p0
.end method

.method static synthetic h(Lcom/google/android/material/b/a$b;I)I
    .locals 0

    .line 181
    iput p1, p0, Lcom/google/android/material/b/a$b;->h:I

    return p1
.end method

.method static synthetic i(Lcom/google/android/material/b/a$b;)I
    .locals 0

    .line 181
    iget p0, p0, Lcom/google/android/material/b/a$b;->g:I

    return p0
.end method

.method static synthetic i(Lcom/google/android/material/b/a$b;I)I
    .locals 0

    .line 181
    iput p1, p0, Lcom/google/android/material/b/a$b;->j:I

    return p1
.end method

.method static synthetic j(Lcom/google/android/material/b/a$b;)I
    .locals 0

    .line 181
    iget p0, p0, Lcom/google/android/material/b/a$b;->h:I

    return p0
.end method

.method static synthetic j(Lcom/google/android/material/b/a$b;I)I
    .locals 0

    .line 181
    iput p1, p0, Lcom/google/android/material/b/a$b;->k:I

    return p1
.end method

.method static synthetic k(Lcom/google/android/material/b/a$b;)Ljava/lang/CharSequence;
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/google/android/material/b/a$b;->f:Ljava/lang/CharSequence;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 247
    iget p2, p0, Lcom/google/android/material/b/a$b;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget p2, p0, Lcom/google/android/material/b/a$b;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    iget p2, p0, Lcom/google/android/material/b/a$b;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 250
    iget p2, p0, Lcom/google/android/material/b/a$b;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget p2, p0, Lcom/google/android/material/b/a$b;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object p2, p0, Lcom/google/android/material/b/a$b;->f:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 253
    iget p2, p0, Lcom/google/android/material/b/a$b;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    iget p2, p0, Lcom/google/android/material/b/a$b;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    iget p2, p0, Lcom/google/android/material/b/a$b;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget p0, p0, Lcom/google/android/material/b/a$b;->k:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
