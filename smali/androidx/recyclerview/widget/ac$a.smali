.class public Landroidx/recyclerview/widget/ac$a;
.super Landroidx/recyclerview/widget/ac$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/ac$b<",
        "TT2;>;"
    }
.end annotation


# instance fields
.field final a:Landroidx/recyclerview/widget/ac$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/ac$b<",
            "TT2;>;"
        }
    .end annotation
.end field

.field private final b:Landroidx/recyclerview/widget/f;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/ac$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/ac$b<",
            "TT2;>;)V"
        }
    .end annotation

    .line 951
    invoke-direct {p0}, Landroidx/recyclerview/widget/ac$b;-><init>()V

    .line 952
    iput-object p1, p0, Landroidx/recyclerview/widget/ac$a;->a:Landroidx/recyclerview/widget/ac$b;

    .line 953
    new-instance p1, Landroidx/recyclerview/widget/f;

    iget-object v0, p0, Landroidx/recyclerview/widget/ac$a;->a:Landroidx/recyclerview/widget/ac$b;

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/f;-><init>(Landroidx/recyclerview/widget/t;)V

    iput-object p1, p0, Landroidx/recyclerview/widget/ac$a;->b:Landroidx/recyclerview/widget/f;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1007
    iget-object p0, p0, Landroidx/recyclerview/widget/ac$a;->b:Landroidx/recyclerview/widget/f;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/f;->a()V

    return-void
.end method

.method public a(II)V
    .locals 0

    .line 963
    iget-object p0, p0, Landroidx/recyclerview/widget/ac$a;->b:Landroidx/recyclerview/widget/f;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/f;->a(II)V

    return-void
.end method

.method public a(IILjava/lang/Object;)V
    .locals 0

    .line 983
    iget-object p0, p0, Landroidx/recyclerview/widget/ac$a;->b:Landroidx/recyclerview/widget/f;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/f;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .line 988
    iget-object p0, p0, Landroidx/recyclerview/widget/ac$a;->a:Landroidx/recyclerview/widget/ac$b;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ac$b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public b(II)V
    .locals 0

    .line 968
    iget-object p0, p0, Landroidx/recyclerview/widget/ac$a;->b:Landroidx/recyclerview/widget/f;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/f;->b(II)V

    return-void
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .line 993
    iget-object p0, p0, Landroidx/recyclerview/widget/ac$a;->a:Landroidx/recyclerview/widget/ac$b;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ac$b;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/ai;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 999
    iget-object p0, p0, Landroidx/recyclerview/widget/ac$a;->a:Landroidx/recyclerview/widget/ac$b;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ac$b;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public c(II)V
    .locals 0

    .line 973
    iget-object p0, p0, Landroidx/recyclerview/widget/ac$a;->b:Landroidx/recyclerview/widget/f;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/f;->c(II)V

    return-void
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)I"
        }
    .end annotation

    .line 958
    iget-object p0, p0, Landroidx/recyclerview/widget/ac$a;->a:Landroidx/recyclerview/widget/ac$b;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/ac$b;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public d(II)V
    .locals 1

    .line 978
    iget-object p0, p0, Landroidx/recyclerview/widget/ac$a;->b:Landroidx/recyclerview/widget/f;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/f;->a(IILjava/lang/Object;)V

    return-void
.end method
