.class Lcom/instabug/featuresrequest/ui/a/b$g;
.super Lcom/instabug/library/util/SimpleTextWatcher;
.source "AddCommentFragment.java"


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
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$g;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-direct {p0}, Lcom/instabug/library/util/SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/instabug/library/util/SimpleTextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 2
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$g;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->k(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$g;->a:Lcom/instabug/featuresrequest/ui/a/b;

    .line 3
    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->d(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$g;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->b(Lcom/instabug/featuresrequest/ui/a/b;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$g;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->k(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$g;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->k(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$g;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->e(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/instabug/featuresrequest/ui/a/b$g;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {v3}, Lcom/instabug/featuresrequest/ui/a/b;->b(Lcom/instabug/featuresrequest/ui/a/b;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/instabug/featuresrequest/ui/a/b$g;->a:Lcom/instabug/featuresrequest/ui/a/b;

    sget v5, Lcom/instabug/featuresrequest/R$string;->feature_request_str_add_comment_comment_empty:I

    invoke-virtual {v4, v5}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v0, v2, v3, v4}, Lcom/instabug/featuresrequest/ui/a/b;->a(Lcom/instabug/featuresrequest/ui/a/b;ZLcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$g;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instabug/featuresrequest/ui/a/b;->a(Lcom/instabug/featuresrequest/ui/a/b;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$g;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->e(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputLayout;

    move-result-object v2

    iget-object v3, p0, Lcom/instabug/featuresrequest/ui/a/b$g;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {v3}, Lcom/instabug/featuresrequest/ui/a/b;->b(Lcom/instabug/featuresrequest/ui/a/b;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/instabug/featuresrequest/ui/a/b$g;->a:Lcom/instabug/featuresrequest/ui/a/b;

    sget v5, Lcom/instabug/featuresrequest/R$string;->feature_request_str_add_comment_comment_empty:I

    invoke-virtual {v4, v5}, Lcom/instabug/library/core/ui/InstabugBaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v1, v2, v3, v4}, Lcom/instabug/featuresrequest/ui/a/b;->a(Lcom/instabug/featuresrequest/ui/a/b;ZLcom/google/android/material/textfield/TextInputLayout;Landroid/view/View;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$g;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->a(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/instabug/featuresrequest/ui/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/ui/a/c;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$g;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->d(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$g;->a:Lcom/instabug/featuresrequest/ui/a/b;

    .line 14
    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/a/b;->d(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/a/b$g;->a:Lcom/instabug/featuresrequest/ui/a/b;

    .line 15
    invoke-static {v2}, Lcom/instabug/featuresrequest/ui/a/b;->d(Lcom/instabug/featuresrequest/ui/a/b;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17
    invoke-virtual {p1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 20
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$g;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instabug/featuresrequest/ui/a/b;->a(Lcom/instabug/featuresrequest/ui/a/b;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$g;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instabug/featuresrequest/ui/a/b;->a(Lcom/instabug/featuresrequest/ui/a/b;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 25
    :cond_3
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/a/b$g;->a:Lcom/instabug/featuresrequest/ui/a/b;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/instabug/featuresrequest/ui/a/b;->a(Lcom/instabug/featuresrequest/ui/a/b;Ljava/lang/Boolean;)V

    :cond_4
    :goto_0
    return-void
.end method
