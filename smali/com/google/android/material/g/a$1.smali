.class final Lcom/google/android/material/g/a$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/g/a;->a(Lcom/google/android/material/g/g;)Landroid/animation/Animator$AnimatorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/g/g;


# direct methods
.method constructor <init>(Lcom/google/android/material/g/g;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/google/android/material/g/a$1;->a:Lcom/google/android/material/g/g;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/google/android/material/g/a$1;->a:Lcom/google/android/material/g/g;

    invoke-interface {p0}, Lcom/google/android/material/g/g;->g_()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/google/android/material/g/a$1;->a:Lcom/google/android/material/g/g;

    invoke-interface {p0}, Lcom/google/android/material/g/g;->a()V

    return-void
.end method
