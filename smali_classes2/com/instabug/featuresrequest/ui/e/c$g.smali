.class Lcom/instabug/featuresrequest/ui/e/c$g;
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
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$g;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-direct {p0}, Lcom/instabug/library/util/SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c$g;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/e/c;->c(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/instabug/featuresrequest/f/a;->e()Lcom/instabug/featuresrequest/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/f/a;->d()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/instabug/featuresrequest/ui/e/c$g;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {v2}, Lcom/instabug/featuresrequest/ui/e/c;->d(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/instabug/library/core/ui/BaseContract$Presenter;

    move-result-object v2

    check-cast v2, Lcom/instabug/featuresrequest/ui/e/d;

    invoke-virtual {v2}, Lcom/instabug/featuresrequest/ui/e/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c$g;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/e/c;->H()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c$g;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/e/c;->e(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c$g;->a:Lcom/instabug/featuresrequest/ui/e/c;

    .line 8
    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/e/c;->e(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c$g;->a:Lcom/instabug/featuresrequest/ui/e/c;

    .line 9
    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/e/c;->e(Lcom/instabug/featuresrequest/ui/e/c;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c$g;->a:Lcom/instabug/featuresrequest/ui/e/c;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/instabug/featuresrequest/ui/e/c;->a(Lcom/instabug/featuresrequest/ui/e/c;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/c$g;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/instabug/featuresrequest/ui/e/c;->a(Lcom/instabug/featuresrequest/ui/e/c;Ljava/lang/Boolean;)V

    .line 17
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$g;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/c;->f(Lcom/instabug/featuresrequest/ui/e/c;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/c$g;->a:Lcom/instabug/featuresrequest/ui/e/c;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/c;->f(Lcom/instabug/featuresrequest/ui/e/c;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method
