.class Lcom/google/android/material/x/b$g$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/x/b$g;->a(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/google/android/material/x/b$g;


# direct methods
.method constructor <init>(Lcom/google/android/material/x/b$g;I)V
    .locals 0

    .line 3090
    iput-object p1, p0, Lcom/google/android/material/x/b$g$2;->b:Lcom/google/android/material/x/b$g;

    iput p2, p0, Lcom/google/android/material/x/b$g$2;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 3098
    iget-object p1, p0, Lcom/google/android/material/x/b$g$2;->b:Lcom/google/android/material/x/b$g;

    iget v0, p0, Lcom/google/android/material/x/b$g$2;->a:I

    iput v0, p1, Lcom/google/android/material/x/b$g;->a:I

    .line 3099
    iget-object p0, p0, Lcom/google/android/material/x/b$g$2;->b:Lcom/google/android/material/x/b$g;

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/material/x/b$g;->b:F

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 3093
    iget-object p1, p0, Lcom/google/android/material/x/b$g$2;->b:Lcom/google/android/material/x/b$g;

    iget p0, p0, Lcom/google/android/material/x/b$g$2;->a:I

    iput p0, p1, Lcom/google/android/material/x/b$g;->a:I

    return-void
.end method
