.class Lcom/instabug/featuresrequest/ui/e/c$d;
.super Ljava/lang/Object;
.source "AddNewFeatureFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/e/c;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/ui/e/c;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/e/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$d;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$d;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-virtual {p1}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 3
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$d;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/c;->k(Lcom/instabug/featuresrequest/ui/e/c;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/e/c$d;->a:Lcom/instabug/featuresrequest/ui/e/c;

    .line 4
    invoke-virtual {p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$d;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/c;->l(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputLayout;->isErrorEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$d;->a:Lcom/instabug/featuresrequest/ui/e/c;

    .line 7
    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/c;->j(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/e/c$d;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-virtual {p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/instabug/featuresrequest/R$color;->ib_fr_add_comment_error:I

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    .line 8
    invoke-static {p1, p2}, Lcom/instabug/featuresrequest/g/i;->b(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 11
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$d;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/c;->k(Lcom/instabug/featuresrequest/ui/e/c;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/e/c$d;->a:Lcom/instabug/featuresrequest/ui/e/c;

    .line 12
    invoke-virtual {p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/instabug/featuresrequest/R$color;->ib_fr_add_comment_error:I

    .line 13
    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$d;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/c;->j(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    .line 17
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result p2

    .line 18
    invoke-static {p1, p2}, Lcom/instabug/featuresrequest/g/i;->b(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 20
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$d;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/c;->k(Lcom/instabug/featuresrequest/ui/e/c;)Landroid/view/View;

    move-result-object p1

    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$d;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/c;->j(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object p1

    .line 24
    invoke-static {}, Lcom/instabug/library/Instabug;->getPrimaryColor()I

    move-result p2

    .line 25
    invoke-static {p1, p2}, Lcom/instabug/featuresrequest/g/i;->b(Lcom/google/android/material/textfield/TextInputLayout;I)V

    .line 27
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$d;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/c;->k(Lcom/instabug/featuresrequest/ui/e/c;)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/e/c$d;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-virtual {p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    sget v0, Lcom/instabug/featuresrequest/R$attr;->ib_fr_add_comment_edit_text_underline_color:I

    invoke-static {p2, v0}, Lcom/instabug/library/util/AttrResolver;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 29
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$d;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/c;->k(Lcom/instabug/featuresrequest/ui/e/c;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object p2, p0, Lcom/instabug/featuresrequest/ui/e/c$d;->a:Lcom/instabug/featuresrequest/ui/e/c;

    .line 30
    invoke-virtual {p2}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, v0}, Lcom/instabug/library/view/ViewUtils;->convertDpToPx(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 32
    :goto_0
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$d;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/c;->k(Lcom/instabug/featuresrequest/ui/e/c;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    return-void
.end method
