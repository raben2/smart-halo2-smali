.class Lcom/instabug/featuresrequest/ui/e/c$h;
.super Lcom/instabug/library/util/SimpleTextWatcher;
.source "AddNewFeatureFragment.java"


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
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$h;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-direct {p0}, Lcom/instabug/library/util/SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/util/SimpleTextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 2
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$h;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/c;->e(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$h;->a:Lcom/instabug/featuresrequest/ui/e/c;

    .line 3
    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/c;->e(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$h;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/c;->j(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/instabug/featuresrequest/ui/e/c$h;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {v3}, Lcom/instabug/featuresrequest/ui/e/c;->i(Lcom/instabug/featuresrequest/ui/e/c;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/instabug/featuresrequest/ui/e/c$h;->a:Lcom/instabug/featuresrequest/ui/e/c;

    sget v5, Lcom/instabug/featuresrequest/R$string;->feature_requests_new_err_msg_required:I

    invoke-virtual {v4, v5}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v2, v3, v4}, Lcom/instabug/featuresrequest/ui/e/c;->a(Lcom/instabug/featuresrequest/ui/e/c;ZLcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$h;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instabug/featuresrequest/ui/e/c;->a(Lcom/instabug/featuresrequest/ui/e/c;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$h;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/c;->j(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/instabug/featuresrequest/ui/e/c$h;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {v3}, Lcom/instabug/featuresrequest/ui/e/c;->i(Lcom/instabug/featuresrequest/ui/e/c;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/instabug/featuresrequest/ui/e/c$h;->a:Lcom/instabug/featuresrequest/ui/e/c;

    sget v5, Lcom/instabug/featuresrequest/R$string;->feature_requests_new_err_msg_required:I

    invoke-virtual {v4, v5}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v1, v2, v3, v4}, Lcom/instabug/featuresrequest/ui/e/c;->a(Lcom/instabug/featuresrequest/ui/e/c;ZLcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/instabug/featuresrequest/f/a;->e()Lcom/instabug/featuresrequest/f/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/f/a;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$h;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/c;->g(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$h;->a:Lcom/instabug/featuresrequest/ui/e/c;

    .line 12
    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/c;->g(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/e/c$h;->a:Lcom/instabug/featuresrequest/ui/e/c;

    .line 13
    invoke-static {v2}, Lcom/instabug/featuresrequest/ui/e/c;->g(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-virtual {p1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$h;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instabug/featuresrequest/ui/e/c;->a(Lcom/instabug/featuresrequest/ui/e/c;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$h;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instabug/featuresrequest/ui/e/c;->a(Lcom/instabug/featuresrequest/ui/e/c;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 23
    :cond_2
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$h;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instabug/featuresrequest/ui/e/c;->a(Lcom/instabug/featuresrequest/ui/e/c;Ljava/lang/Boolean;)V

    :goto_0
    return-void
.end method
