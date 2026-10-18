.class final Landroidx/fragment/app/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/fragment/app/p;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Z

.field final d:I

.field final e:I

.field final f:Ljava/lang/String;

.field final g:Z

.field final h:Z

.field final i:Z

.field final j:Landroid/os/Bundle;

.field final k:Z

.field final l:I

.field m:Landroid/os/Bundle;

.field n:Landroidx/fragment/app/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 173
    new-instance v0, Landroidx/fragment/app/p$1;

    invoke-direct {v0}, Landroidx/fragment/app/p$1;-><init>()V

    sput-object v0, Landroidx/fragment/app/p;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/p;->a:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/p;->b:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/fragment/app/p;->c:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/p;->d:I

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/fragment/app/p;->e:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/p;->f:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroidx/fragment/app/p;->g:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroidx/fragment/app/p;->h:Z

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroidx/fragment/app/p;->i:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/p;->j:Landroid/os/Bundle;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    iput-boolean v1, p0, Landroidx/fragment/app/p;->k:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/p;->m:Landroid/os/Bundle;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroidx/fragment/app/p;->l:I

    return-void
.end method

.method constructor <init>(Landroidx/fragment/app/d;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/fragment/app/p;->a:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Landroidx/fragment/app/d;->x:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/p;->b:Ljava/lang/String;

    .line 50
    iget-boolean v0, p1, Landroidx/fragment/app/d;->E:Z

    iput-boolean v0, p0, Landroidx/fragment/app/p;->c:Z

    .line 51
    iget v0, p1, Landroidx/fragment/app/d;->N:I

    iput v0, p0, Landroidx/fragment/app/p;->d:I

    .line 52
    iget v0, p1, Landroidx/fragment/app/d;->O:I

    iput v0, p0, Landroidx/fragment/app/p;->e:I

    .line 53
    iget-object v0, p1, Landroidx/fragment/app/d;->P:Ljava/lang/String;

    iput-object v0, p0, Landroidx/fragment/app/p;->f:Ljava/lang/String;

    .line 54
    iget-boolean v0, p1, Landroidx/fragment/app/d;->S:Z

    iput-boolean v0, p0, Landroidx/fragment/app/p;->g:Z

    .line 55
    iget-boolean v0, p1, Landroidx/fragment/app/d;->D:Z

    iput-boolean v0, p0, Landroidx/fragment/app/p;->h:Z

    .line 56
    iget-boolean v0, p1, Landroidx/fragment/app/d;->R:Z

    iput-boolean v0, p0, Landroidx/fragment/app/p;->i:Z

    .line 57
    iget-object v0, p1, Landroidx/fragment/app/d;->y:Landroid/os/Bundle;

    iput-object v0, p0, Landroidx/fragment/app/p;->j:Landroid/os/Bundle;

    .line 58
    iget-boolean v0, p1, Landroidx/fragment/app/d;->Q:Z

    iput-boolean v0, p0, Landroidx/fragment/app/p;->k:Z

    .line 59
    iget-object p1, p1, Landroidx/fragment/app/d;->ai:Landroidx/lifecycle/g$b;

    invoke-virtual {p1}, Landroidx/lifecycle/g$b;->ordinal()I

    move-result p1

    iput p1, p0, Landroidx/fragment/app/p;->l:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ClassLoader;Landroidx/fragment/app/h;)Landroidx/fragment/app/d;
    .locals 1
    .param p1    # Ljava/lang/ClassLoader;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/h;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 80
    iget-object v0, p0, Landroidx/fragment/app/p;->n:Landroidx/fragment/app/d;

    if-nez v0, :cond_2

    .line 81
    iget-object v0, p0, Landroidx/fragment/app/p;->j:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Landroidx/fragment/app/p;->j:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 85
    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/p;->a:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/h;->c(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/d;

    move-result-object p2

    iput-object p2, p0, Landroidx/fragment/app/p;->n:Landroidx/fragment/app/d;

    .line 86
    iget-object p2, p0, Landroidx/fragment/app/p;->n:Landroidx/fragment/app/d;

    iget-object v0, p0, Landroidx/fragment/app/p;->j:Landroid/os/Bundle;

    invoke-virtual {p2, v0}, Landroidx/fragment/app/d;->g(Landroid/os/Bundle;)V

    .line 88
    iget-object p2, p0, Landroidx/fragment/app/p;->m:Landroid/os/Bundle;

    if-eqz p2, :cond_1

    .line 89
    iget-object p2, p0, Landroidx/fragment/app/p;->m:Landroid/os/Bundle;

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 90
    iget-object p1, p0, Landroidx/fragment/app/p;->n:Landroidx/fragment/app/d;

    iget-object p2, p0, Landroidx/fragment/app/p;->m:Landroid/os/Bundle;

    iput-object p2, p1, Landroidx/fragment/app/d;->u:Landroid/os/Bundle;

    goto :goto_0

    .line 95
    :cond_1
    iget-object p1, p0, Landroidx/fragment/app/p;->n:Landroidx/fragment/app/d;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Landroidx/fragment/app/d;->u:Landroid/os/Bundle;

    .line 97
    :goto_0
    iget-object p1, p0, Landroidx/fragment/app/p;->n:Landroidx/fragment/app/d;

    iget-object p2, p0, Landroidx/fragment/app/p;->b:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/d;->x:Ljava/lang/String;

    .line 98
    iget-object p1, p0, Landroidx/fragment/app/p;->n:Landroidx/fragment/app/d;

    iget-boolean p2, p0, Landroidx/fragment/app/p;->c:Z

    iput-boolean p2, p1, Landroidx/fragment/app/d;->E:Z

    .line 99
    iget-object p1, p0, Landroidx/fragment/app/p;->n:Landroidx/fragment/app/d;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/fragment/app/d;->G:Z

    .line 100
    iget-object p1, p0, Landroidx/fragment/app/p;->n:Landroidx/fragment/app/d;

    iget p2, p0, Landroidx/fragment/app/p;->d:I

    iput p2, p1, Landroidx/fragment/app/d;->N:I

    .line 101
    iget-object p1, p0, Landroidx/fragment/app/p;->n:Landroidx/fragment/app/d;

    iget p2, p0, Landroidx/fragment/app/p;->e:I

    iput p2, p1, Landroidx/fragment/app/d;->O:I

    .line 102
    iget-object p1, p0, Landroidx/fragment/app/p;->n:Landroidx/fragment/app/d;

    iget-object p2, p0, Landroidx/fragment/app/p;->f:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/d;->P:Ljava/lang/String;

    .line 103
    iget-object p1, p0, Landroidx/fragment/app/p;->n:Landroidx/fragment/app/d;

    iget-boolean p2, p0, Landroidx/fragment/app/p;->g:Z

    iput-boolean p2, p1, Landroidx/fragment/app/d;->S:Z

    .line 104
    iget-object p1, p0, Landroidx/fragment/app/p;->n:Landroidx/fragment/app/d;

    iget-boolean p2, p0, Landroidx/fragment/app/p;->h:Z

    iput-boolean p2, p1, Landroidx/fragment/app/d;->D:Z

    .line 105
    iget-object p1, p0, Landroidx/fragment/app/p;->n:Landroidx/fragment/app/d;

    iget-boolean p2, p0, Landroidx/fragment/app/p;->i:Z

    iput-boolean p2, p1, Landroidx/fragment/app/d;->R:Z

    .line 106
    iget-object p1, p0, Landroidx/fragment/app/p;->n:Landroidx/fragment/app/d;

    iget-boolean p2, p0, Landroidx/fragment/app/p;->k:Z

    iput-boolean p2, p1, Landroidx/fragment/app/d;->Q:Z

    .line 107
    iget-object p1, p0, Landroidx/fragment/app/p;->n:Landroidx/fragment/app/d;

    invoke-static {}, Landroidx/lifecycle/g$b;->values()[Landroidx/lifecycle/g$b;

    move-result-object p2

    iget v0, p0, Landroidx/fragment/app/p;->l:I

    aget-object p2, p2, v0

    iput-object p2, p1, Landroidx/fragment/app/d;->ai:Landroidx/lifecycle/g$b;

    .line 109
    sget-boolean p1, Landroidx/fragment/app/k;->c:Z

    if-eqz p1, :cond_2

    const-string p1, "FragmentManager"

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Instantiated fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroidx/fragment/app/p;->n:Landroidx/fragment/app/d;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_2
    iget-object p0, p0, Landroidx/fragment/app/p;->n:Landroidx/fragment/app/d;

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/ah;
    .end annotation

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentState{"

    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Landroidx/fragment/app/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Landroidx/fragment/app/p;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")}:"

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-boolean v1, p0, Landroidx/fragment/app/p;->c:Z

    if-eqz v1, :cond_0

    const-string v1, " fromLayout"

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :cond_0
    iget v1, p0, Landroidx/fragment/app/p;->e:I

    if-eqz v1, :cond_1

    const-string v1, " id=0x"

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v1, p0, Landroidx/fragment/app/p;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_1
    iget-object v1, p0, Landroidx/fragment/app/p;->f:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/fragment/app/p;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, " tag="

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v1, p0, Landroidx/fragment/app/p;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_2
    iget-boolean v1, p0, Landroidx/fragment/app/p;->g:Z

    if-eqz v1, :cond_3

    const-string v1, " retainInstance"

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_3
    iget-boolean v1, p0, Landroidx/fragment/app/p;->h:Z

    if-eqz v1, :cond_4

    const-string v1, " removing"

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    :cond_4
    iget-boolean v1, p0, Landroidx/fragment/app/p;->i:Z

    if-eqz v1, :cond_5

    const-string v1, " detached"

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :cond_5
    iget-boolean p0, p0, Landroidx/fragment/app/p;->k:Z

    if-eqz p0, :cond_6

    const-string p0, " hidden"

    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 158
    iget-object p2, p0, Landroidx/fragment/app/p;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object p2, p0, Landroidx/fragment/app/p;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-boolean p2, p0, Landroidx/fragment/app/p;->c:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget p2, p0, Landroidx/fragment/app/p;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget p2, p0, Landroidx/fragment/app/p;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object p2, p0, Landroidx/fragment/app/p;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-boolean p2, p0, Landroidx/fragment/app/p;->g:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-boolean p2, p0, Landroidx/fragment/app/p;->h:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-boolean p2, p0, Landroidx/fragment/app/p;->i:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object p2, p0, Landroidx/fragment/app/p;->j:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 168
    iget-boolean p2, p0, Landroidx/fragment/app/p;->k:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget-object p2, p0, Landroidx/fragment/app/p;->m:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 170
    iget p0, p0, Landroidx/fragment/app/p;->l:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
