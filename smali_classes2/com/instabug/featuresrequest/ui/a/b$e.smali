.class Lcom/instabug/featuresrequest/ui/a/b$e;
.super Ljava/lang/Object;
.source "AddCommentFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/a/b;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/ui/a/b;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-virtual {p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->g(Lcom/instabug/featuresrequest/ui/a/b;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    .line 2
    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->h(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->i(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-eqz p2, :cond_2

    .line 5
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->g(Lcom/instabug/featuresrequest/ui/a/b;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-virtual {p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->h(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->i(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 8
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->h(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    .line 9
    invoke-virtual {p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/instabug/featuresrequest/R$color;->ib_fr_add_comment_error:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 10
    invoke-static {p1, p2}, Lcom/instabug/featuresrequest/g/i;->b(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 12
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->g(Lcom/instabug/featuresrequest/ui/a/b;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-virtual {p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/instabug/featuresrequest/R$color;->ib_fr_add_comment_error:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->i(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setErrorEnabled(Z)V

    .line 15
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->h(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result p2

    invoke-static {p1, p2}, Lcom/instabug/featuresrequest/g/i;->b(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 16
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->g(Lcom/instabug/featuresrequest/ui/a/b;)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->h(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result p2

    invoke-static {p1, p2}, Lcom/instabug/featuresrequest/g/i;->b(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 20
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->g(Lcom/instabug/featuresrequest/ui/a/b;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-virtual {p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/instabug/featuresrequest/R$attr;->ib_fr_add_comment_edit_text_underline_color:I

    invoke-static {p2, v0}, Lcom/instabug/library/util/AttrResolver;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 21
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->g(Lcom/instabug/featuresrequest/ui/a/b;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-virtual {p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 23
    :goto_0
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$e;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->g(Lcom/instabug/featuresrequest/ui/a/b;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_3
    :goto_1
    return-void
.end method
