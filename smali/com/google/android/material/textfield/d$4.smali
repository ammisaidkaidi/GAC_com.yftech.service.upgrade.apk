.class Lcom/google/android/material/textfield/d$4;
.super Lcom/google/android/material/textfield/TextInputLayout$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/textfield/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/textfield/d;


# direct methods
.method constructor <init>(Lcom/google/android/material/textfield/d;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/google/android/material/textfield/d$4;->a:Lcom/google/android/material/textfield/d;

    invoke-direct {p0, p2}, Lcom/google/android/material/textfield/TextInputLayout$a;-><init>(Lcom/google/android/material/textfield/TextInputLayout;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroidx/core/n/a/d;)V
    .locals 0
    .param p2    # Landroidx/core/n/a/d;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 111
    invoke-super {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout$a;->a(Landroid/view/View;Landroidx/core/n/a/d;)V

    .line 113
    iget-object p0, p0, Lcom/google/android/material/textfield/d$4;->a:Lcom/google/android/material/textfield/d;

    iget-object p0, p0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/EditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object p0

    if-nez p0, :cond_0

    .line 114
    const-class p0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/core/n/a/d;->b(Ljava/lang/CharSequence;)V

    .line 116
    :cond_0
    invoke-virtual {p2}, Landroidx/core/n/a/d;->ac()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 119
    invoke-virtual {p2, p0}, Landroidx/core/n/a/d;->f(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p2    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Landroidx/annotation/ah;
        .end annotation
    .end param

    .line 125
    invoke-super {p0, p1, p2}, Lcom/google/android/material/textfield/TextInputLayout$a;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 126
    iget-object p1, p0, Lcom/google/android/material/textfield/d$4;->a:Lcom/google/android/material/textfield/d;

    iget-object v0, p0, Lcom/google/android/material/textfield/d$4;->a:Lcom/google/android/material/textfield/d;

    iget-object v0, v0, Lcom/google/android/material/textfield/d;->a:Lcom/google/android/material/textfield/TextInputLayout;

    .line 127
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/material/textfield/d;->a(Lcom/google/android/material/textfield/d;Landroid/widget/EditText;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    .line 129
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/google/android/material/textfield/d$4;->a:Lcom/google/android/material/textfield/d;

    .line 130
    invoke-static {p2}, Lcom/google/android/material/textfield/d;->a(Lcom/google/android/material/textfield/d;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 131
    iget-object p0, p0, Lcom/google/android/material/textfield/d$4;->a:Lcom/google/android/material/textfield/d;

    invoke-static {p0, p1}, Lcom/google/android/material/textfield/d;->a(Lcom/google/android/material/textfield/d;Landroid/widget/AutoCompleteTextView;)V

    :cond_0
    return-void
.end method
