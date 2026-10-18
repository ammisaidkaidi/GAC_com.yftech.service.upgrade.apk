.class Lcom/google/android/material/c/e$c;
.super Landroidx/f/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/material/c/e$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/ai;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 779
    new-instance v0, Lcom/google/android/material/c/e$c$1;

    invoke-direct {v0}, Lcom/google/android/material/c/e$c$1;-><init>()V

    sput-object v0, Lcom/google/android/material/c/e$c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 762
    invoke-direct {p0, p1, p2}, Landroidx/f/a/a;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    if-nez p2, :cond_0

    .line 764
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    .line 766
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/c/e$c;->a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 758
    invoke-direct {p0, p1}, Landroidx/f/a/a;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method

.method private a(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 776
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/c/e$c;->a:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1    # Landroid/os/Parcel;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 771
    invoke-super {p0, p1, p2}, Landroidx/f/a/a;->writeToParcel(Landroid/os/Parcel;I)V

    .line 772
    iget-object p0, p0, Lcom/google/android/material/c/e$c;->a:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
